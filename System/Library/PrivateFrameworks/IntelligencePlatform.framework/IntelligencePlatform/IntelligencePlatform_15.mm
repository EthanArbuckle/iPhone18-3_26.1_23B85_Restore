uint64_t static GDEntityPredicateHelper.entityPredicate(from:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABA9AC84(a1, a2);
  v5 = 0;
  if ((v6 & 1) == 0)
  {
    sub_1ABA91D48(v2, v3, v4, v8);
    v5 = v8[16];
  }

  return v5;
}

id GDEntityPredicateHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GDEntityPredicateHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ABB8DE4C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    if (a2 <= 0x117)
    {
      *a3 = result;
      a3[1] = a2;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB8DE84@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 > 0xB5)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
    a3[1] = a2;
  }

  return result;
}

unint64_t sub_1ABB8DEF4(unint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a2)
  {
    return result;
  }

  if (-a2 <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result += a2;
  return result;
}

uint64_t sub_1ABB8DF1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = 0;
    while (1)
    {
      if (a3 - result == v3)
      {
        return 0;
      }

      if ((v3 ^ result) == 0xFFFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (a2 == ++v3)
      {
        result += v3;
        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_1ABB8DF78(unint64_t a1, unint64_t a2)
{
  v3 = a2 >= a1;
  result = a2 - a1;
  if (!v3)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!result)
  {
    return 0;
  }

  v5 = ~a1;
  v6 = ~a1 + a2;
  if (v6 >= ~a1)
  {
    v7 = ~a1;
  }

  else
  {
    v7 = ~a1 + a2;
  }

  if (v7 > 0x7FFFFFFFFFFFFFFELL)
  {
    goto LABEL_11;
  }

  if (v6 >= v5)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

const void *sub_1ABB8DFEC()
{
  v0 = sub_1ABADCFF0();
  if (sub_1ABB64758(&v2, v0 + 32, 278) != 278)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

const void *sub_1ABB8E074()
{
  v0 = sub_1ABADD004();
  sub_1ABB656C0();
  if (v1 != 181)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

void sub_1ABB8E0E8(uint64_t a1)
{
  v16 = MEMORY[0x1E69E7CD0];
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(a1 + 48) + 40 * (v9 | (v8 << 6));
    LOBYTE(v9) = *(v10 + 32);
    v11 = *(v10 + 16);
    v17 = *v10;
    v18 = v11;
    v19 = v9;
    sub_1ABAFF06C(&v17, v14);
    sub_1ABAFF06C(&v17, v14);
    sub_1ABB18C34(v14, &v17);

    v14[0] = v17;
    v14[1] = v18;
    v15 = v19;
    EntityClass.descendantClasses.getter();
    v13 = v12;
    sub_1ABA88934(&v17);
    sub_1ABB7EDC4(v13);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void EntityPredicate.AllCases.subscript.getter(unint64_t a1)
{
  if (a1 < 0x117)
  {
    if (_Records_GDEntityPredicate_records)
    {
      v1 = sub_1ABA91D48(_Records_GDEntityPredicate_records[12 * a1], *&_Records_GDEntityPredicate_records[12 * a1 + 4], *&_Records_GDEntityPredicate_records[12 * a1 + 8], v11);
      sub_1ABA8F1F8(v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t EntityPredicate.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

const char *sub_1ABB8E2FC@<X0>(const char *__s2@<X0>, uint64_t a2@<X8>)
{
  v3 = __s2;
  v4 = _Records_GDEntityPredicate_records;
  v5 = _Records_GDEntityPredicate_predicateIds;
  v6 = _Records_GDEntityPredicate_records + 4;
  v7 = 280;
  while (1)
  {
    if (!--v7)
    {
      v9 = 0;
      v8 = 0;
      v10 = 0;
      goto LABEL_9;
    }

    if (!v4)
    {
      goto LABEL_11;
    }

    v8 = *v6;
    if (*v6 >= 3481)
    {
      break;
    }

    if (!v5)
    {
      goto LABEL_12;
    }

    v6 += 12;
    __s2 = strcmp(&v5[v8], v3);
    if (!__s2)
    {
      v9 = *(v6 - 16);
      v10 = *(v6 - 2);
LABEL_9:
      *a2 = v9;
      *(a2 + 8) = v8;
      *(a2 + 16) = v10;
      *(a2 + 24) = v7 == 0;
      return __s2;
    }
  }

  __break(1u);
  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return __s2;
}

BOOL EntityPredicate.isEmpty.getter()
{
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 == 0;
}

uint64_t static EntityPredicate.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1ABF25054();
  }
}

uint64_t sub_1ABB8E4F0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  return sub_1ABAD1BAC();
}

uint64_t sub_1ABB8E55C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1ABD76F04(v5, v7) & 1;
}

uint64_t sub_1ABB8E5A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1ABD77050(v5, v7) & 1;
}

uint64_t sub_1ABB8E5F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1ABD76DC0(v5, v7) & 1;
}

uint64_t sub_1ABB8E640(uint64_t a1)
{
  v2 = sub_1ABB346DC();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1ABB8E68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABB346DC();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

unint64_t EntityPredicate.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1ABF24AB4();

  MEMORY[0x1AC5A9410](v3, v4);
  MEMORY[0x1AC5A9410](3828000, 0xE300000000000000);
  MEMORY[0x1AC5A9410](v1, v2);
  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t EntityPredicate.domains()(uint64_t a1)
{
  v6 = *v1;
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = *(v1 + 16);
  EntityPredicate.directDomains.getter(a1);
  sub_1ABB8E0E8(v2);
  v4 = v3;

  return v4;
}

void EntityPredicate.hasRelationshipIdObject.getter(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *(v1 + 16);
  v27 = *v1;
  v28 = v2;
  v29 = v3;
  v30 = v4;
  EntityPredicate.directDomains.getter(a1);
  sub_1ABB8E0E8(v5);
  v7 = v6;

  v8 = 0;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_9:
    v14 = *(v7 + 48) + 40 * (__clz(__rbit64(v11)) | (v8 << 6));
    v23 = *v14;
    v24 = *(v14 + 16);
    v25 = *(v14 + 24);
    v26 = *(v14 + 32);
    EntityClass.parentClasses.getter();
    if (!_Records_GDEntityClass_records)
    {
      goto LABEL_19;
    }

    if (*(_Records_GDEntityClass_records + 0x20) >= 1844)
    {
      goto LABEL_17;
    }

    if (*(_Records_GDEntityClass_records + 0x28) >= 3396)
    {
      goto LABEL_18;
    }

    if (!_Records_GDEntityClass_classIds[0])
    {
      goto LABEL_21;
    }

    v15 = *(_Records_GDEntityClass_records + 0x18);
    v16 = sub_1ABF23DD4();
    if (!_Records_GDEntityClass_labels)
    {
      goto LABEL_20;
    }

    v18 = v16;
    v19 = v17;
    v11 &= v11 - 1;
    v20 = sub_1ABF23DD4();
    *&v27 = v18;
    *(&v27 + 1) = v19;
    v28 = v20;
    v29 = v21;
    LOBYTE(v30) = v15;
    sub_1ABAA6788();
    LOBYTE(v18) = v22;

    sub_1ABA88934(&v27);
    if (v18)
    {
LABEL_15:

      return;
    }
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      goto LABEL_15;
    }

    v11 = *(v7 + 56 + 8 * v13);
    ++v8;
    if (v11)
    {
      v8 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

Swift::UInt __swiftcall EntityPredicate.AllCases.index(after:)(Swift::UInt after)
{
  v1 = __CFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB8EA4C@<X0>(uint64_t *a1@<X8>)
{
  result = EntityPredicate.AllCases.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_1ABB8EA74(void **a1, unint64_t *a2))(uint64_t a1)
{
  *a1 = sub_1ABAFDD10(0x22uLL);
  EntityPredicate.AllCases.subscript.getter(*a2);
  return sub_1ABB7F638;
}

unint64_t sub_1ABB8EAF0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1ABB8DEF4(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB8EB1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1ABB8DF1C(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

Swift::UInt sub_1ABB8EBA8@<X0>(Swift::UInt *a1@<X0>, Swift::UInt *a2@<X8>)
{
  result = EntityPredicate.AllCases.index(after:)(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1ABB8EBDC()
{
  result = qword_1ED870B20;
  if (!qword_1ED870B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870B20);
  }

  return result;
}

unint64_t sub_1ABB8EC34()
{
  result = qword_1ED870318;
  if (!qword_1ED870318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870318);
  }

  return result;
}

unint64_t sub_1ABB8EC8C()
{
  result = qword_1ED86DB28;
  if (!qword_1ED86DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DB28);
  }

  return result;
}

unint64_t sub_1ABB8ECE4()
{
  result = qword_1EB4D3BC8;
  if (!qword_1EB4D3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3BC8);
  }

  return result;
}

unint64_t sub_1ABB8EE08()
{
  result = qword_1EB4D3C00;
  if (!qword_1EB4D3C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3C00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityPredicate.AllCases(_BYTE *result, int a2, int a3)
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

uint64_t sub_1ABB8EF50()
{
  v0 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABB9009C(v0, qword_1EB4D3C10);
  sub_1ABA7AA24(v0, qword_1EB4D3C10);
  return sub_1ABF22CE4();
}

uint64_t sub_1ABB8EFC0()
{
  v0 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABB9009C(v0, qword_1EB4D3C28);
  sub_1ABA7AA24(v0, qword_1EB4D3C28);
  return sub_1ABF22CE4();
}

uint64_t sub_1ABB8F030@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45[0] = a2;
  v3 = sub_1ABF238C4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1ABA7BC58();
  v48 = v6 - v5;
  v47 = sub_1ABF22ED4();
  v7 = sub_1ABA7BB64(v47);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v14 = (v13 - v12);
  v46 = sub_1ABF22334();
  v15 = sub_1ABA7BB64(v46);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v45 - v23;
  v25 = sub_1ABF21CF4();
  v26 = sub_1ABA7BB64(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7BC58();
  v33 = v32 - v31;
  v50 = a1;
  v34 = [a1 viewArtifactURL];
  sub_1ABF21CA4();

  v45[1] = sub_1ABF21CC4();
  (*(v28 + 8))(v33, v25);
  sub_1ABF22324();
  sub_1ABF22314();
  *v14 = 0x4059000000000000;
  (*(v9 + 104))(v14, *MEMORY[0x1E69A00D8], v47);
  v35 = v46;
  sub_1ABF22304();
  sub_1ABF23894();
  sub_1ABF222F4();
  (*(v17 + 16))(v21, v24, v35);
  v36 = sub_1ABF223B4();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = v49;
  v40 = sub_1ABF22394();
  v41 = (v17 + 8);
  if (v39)
  {
    (*v41)(v24, v35);
    return swift_unknownObjectRelease();
  }

  else
  {
    v43 = v40;
    result = (*v41)(v24, v35);
    v44 = v45[0];
    *v45[0] = v50;
    *(v44 + 8) = v43;
  }

  return result;
}

IntelligencePlatform::GDGBDTLabeledFeatureVectors __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EntityRelevanceHistoricalFeatureView.getPFLTrainingDataForAllEvents(orderedFeatureNames:entityTypes:)(Swift::OpaquePointer orderedFeatureNames, Swift::OpaquePointer_optional entityTypes)
{
  v5 = v2;
  v6 = *(v3 + 8);
  v11 = MEMORY[0x1E69E7CC0];

  sub_1ABF223A4();
  if (v4)
  {
  }

  else
  {
    v5->_rawValue = v11;
    v5[1]._rawValue = orderedFeatureNames._rawValue;
  }

  result.featureNames._rawValue = v8;
  result.labeledVectors._rawValue = v7;
  return result;
}

uint64_t sub_1ABB8F418(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v76 = a5;
  v91 = a1;
  p_cache = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  v80 = *(p_cache - 8);
  v11 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](p_cache);
  *&v79 = &v71 - v12;
  v13 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v81 = *(v13 - 8);
  v82 = v13;
  v14 = *(v81 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v71 - v18;
  v19 = sub_1ABF22854();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a2;
  if (!*(*a2 + 16))
  {
    v75 = a4;
    *&v88 = 0;
    *(&v88 + 1) = 0xE000000000000000;
    sub_1ABF24AB4();

    *&v88 = 0xD000000000000011;
    *(&v88 + 1) = 0x80000001ABF88EB0;
    if (qword_1EB4D0278 != -1)
    {
      swift_once();
    }

    sub_1ABA7AA24(p_cache, qword_1EB4D3C28);
    v37 = sub_1ABF22CC4();
    MEMORY[0x1AC5A9410](v37);

    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    sub_1ABF22844();
    v38 = sub_1ABF229C4();
    if (v5)
    {

      (*(v20 + 8))(v23, v19);
      return sub_1ABA925A4(&v88, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    }

    v69 = v38;

    (*(v20 + 8))(v23, v19);
    sub_1ABA925A4(&v88, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    v70 = *v77;
    *v77 = v69;

    a4 = v75;
  }

  v24 = MEMORY[0x1E699FE60];
  if (!a3 || (v25 = *(a3 + 16)) == 0)
  {
    v31 = MEMORY[0x1E69A0050];
    if (qword_1EB4D0270 != -1)
    {
      goto LABEL_51;
    }

    goto LABEL_10;
  }

  v75 = a4;
  *&v88 = MEMORY[0x1E69E7CC0];
  sub_1ABADE07C();
  v26 = v88;
  v27 = (a3 + 40);
  do
  {
    v29 = *(v27 - 1);
    v28 = *v27;

    static BehaviorType.from(_:)(v29, v28, v85);

    v30 = LOBYTE(v85[0]);
    *&v88 = v26;
    v24 = *(v26 + 16);
    if (v24 >= *(v26 + 24) >> 1)
    {
      sub_1ABADE07C();
      v26 = v88;
    }

    *(v26 + 16) = v24 + 1;
    *(v26 + 8 * v24 + 32) = v30;
    v27 += 2;
    --v25;
  }

  while (v25);
  if (qword_1EB4D0270 != -1)
  {
    swift_once();
  }

  sub_1ABA7AA24(p_cache, qword_1EB4D3C10);
  sub_1ABF22CC4();
  v39 = v79;
  sub_1ABF22CE4();
  *&v83[0] = v26;
  v86 = sub_1ABF22D14();
  v87 = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v85);
  sub_1ABF22D24();
  *(&v89 + 1) = sub_1ABF22424();
  v90 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(&v88);
  sub_1ABAD219C(&qword_1EB4D1970, &qword_1ABF33B00);
  sub_1ABAB47C4(&qword_1EB4D3C50, &qword_1EB4D1970, &qword_1ABF33B00);
  sub_1ABF23EE4();
  sub_1ABA84B54(v85);

  v40 = v78;
  sub_1ABF22CA4();
  (*(v80 + 8))(v39, p_cache);
  sub_1ABA84B54(&v88);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620);
  v41 = v82;
  v35 = sub_1ABF22294();
  result = (*(v81 + 8))(v40, v41);
  if (!v6)
  {
    a4 = v75;
    do
    {
      v42 = *a4;
      *a4 = v35;

      v43 = *a4;
      result = sub_1ABAAB7C8(*a4);
      v75 = result;
      if (!result)
      {
        break;
      }

      v74 = v43 & 0xC000000000000001;
      v72 = v43 + 32;

      v44 = 0;
      p_cache = &OBJC_METACLASS____TtC20IntelligencePlatform3Add.cache;
      *&v45 = 136315138;
      v79 = v45;
      v73 = v43;
      while (1)
      {
        v31 = v74;
        sub_1ABAAB7C0(v44, v74 == 0, v43);
        if (v31)
        {
          v46 = MEMORY[0x1AC5AA170](v44, v43);
        }

        else
        {
          v47 = *(v72 + 8 * v44);
        }

        v48 = __OFADD__(v44, 1);
        v17 = v44 + 1;
        if (v48)
        {
          break;
        }

        v81 = v46;
        v78 = v17;
        v49 = MEMORY[0x1E69E7CC0];
        *&v88 = MEMORY[0x1E69E7CC0];
        v82 = *(*v77 + 16);
        v50 = 0;

        v31 = (v91 + 40);
        while (v82 != v50)
        {
          if (v50 >= *(v91 + 16))
          {
            __break(1u);
            goto LABEL_50;
          }

          v24 = *(v31 - 1);
          v51 = *v31;

          v52 = sub_1ABB371C0();
          if (v6)
          {
            goto LABEL_53;
          }

          v53 = v52;
          if (v52)
          {

            v17 = v53;
            MEMORY[0x1AC5A9710]();
            a4 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a4 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1ABF24134();
            }

            sub_1ABF24184();
          }

          else
          {
            if (*(p_cache + 2872) != -1)
            {
              swift_once();
            }

            v54 = sub_1ABF237F4();
            sub_1ABA7AA24(v54, qword_1ED871B40);

            v55 = sub_1ABF237D4();
            v56 = sub_1ABF24674();

            if (os_log_type_enabled(v55, v56))
            {
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v80 = 0;
              v59 = p_cache;
              v60 = v58;
              v85[0] = v58;
              *v57 = v79;
              v24 = sub_1ABADD6D8(v24, v51, v85);

              *(v57 + 4) = v24;
              _os_log_impl(&dword_1ABA78000, v55, v56, "Failed to match specified feature %s to the historical feature view", v57, 0xCu);
              sub_1ABA84B54(v60);
              v61 = v60;
              p_cache = v59;
              v6 = v80;
              MEMORY[0x1AC5AB8B0](v61, -1, -1);
              MEMORY[0x1AC5AB8B0](v57, -1, -1);
            }

            else
            {
            }

            sub_1ABB373C8();
            v17 = sub_1ABF24784();
            MEMORY[0x1AC5A9710]();
            a4 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a4 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1ABF24134();
            }

            sub_1ABF24184();
          }

          v49 = v88;
          v31 += 2;
          ++v50;
        }

        v62 = sub_1ABB371C0();
        if (v6)
        {
          goto LABEL_53;
        }

        v63 = v62;
        sub_1ABB33264();
        if (!v63)
        {
          __break(1u);
          while (1)
          {
LABEL_53:
            swift_unexpectedError();
            __break(1u);
          }
        }

        v65 = v64;
        v66 = v76;
        sub_1ABB4DDB8();
        a4 = *(*v66 + 16);
        sub_1ABB4E1BC(a4);

        v67 = *v66;
        *(v67 + 16) = a4 + 1;
        v68 = (v67 + 24 * a4);
        v68[4] = v49;
        v68[5] = v63;
        v68[6] = v65;
        v44 = v78;
        v43 = v73;
        if (v78 == v75)
        {
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      swift_once();
LABEL_10:
      sub_1ABA7AA24(p_cache, qword_1EB4D3C10);
      sub_1ABF22CC4();
      v32 = v79;
      sub_1ABF22CE4();
      v86 = sub_1ABF22D14();
      v87 = v31;
      sub_1ABA93DC0(v85);
      sub_1ABF22D24();
      v33 = sub_1ABF22424();
      memset(v83, 0, sizeof(v83));
      v84 = 0;
      *(&v89 + 1) = v33;
      v90 = v24;
      sub_1ABA93DC0(&v88);
      sub_1ABF22AD4();
      sub_1ABA925A4(v83, &unk_1EB4D3C40, &unk_1ABF3FCC0);
      sub_1ABA84B54(v85);
      sub_1ABF22CA4();
      (*(v80 + 8))(v32, p_cache);
      sub_1ABA84B54(&v88);
      sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620);
      v34 = v82;
      v35 = sub_1ABF22294();
      result = (*(v81 + 8))(v17, v34);
    }

    while (!v6);
  }

  return result;
}

uint64_t *sub_1ABB9009C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

double EntityRelevanceInferenceInterface.Output.score.getter()
{
  if (v0[16] == 1)
  {
    return *v0;
  }

  if (qword_1EB4CE7C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1ABF237F4();
  sub_1ABA7AA24(v2, qword_1EB4CE7C8);
  v3 = sub_1ABF237D4();
  v4 = sub_1ABF24674();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1ABA78000, v3, v4, "EntityRelevanceInferenceInterface.Output: getting score on temp_metadata", v5, 2u);
    MEMORY[0x1AC5AB8B0](v5, -1, -1);
  }

  return 0.0;
}

uint64_t sub_1ABB9021C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001ABF88F70 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABB902BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB9021C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB902E8(uint64_t a1)
{
  v2 = sub_1ABB91B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB90324(uint64_t a1)
{
  v2 = sub_1ABB91B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB90360(uint64_t a1)
{
  v2 = sub_1ABB91BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB9039C(uint64_t a1)
{
  v2 = sub_1ABB91BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityRelevanceInferenceInterface.Errors.InitError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v25 = sub_1ABAD219C(&qword_1EB4D3C68, &qword_1ABF3FCD0);
  sub_1ABA7BB64(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = sub_1ABAD219C(&qword_1EB4D3C70, &qword_1ABF3FCD8);
  sub_1ABA7BB64(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA7BCE0();
  v39 = v24[3];
  v40 = v24[4];
  sub_1ABA80908(v24);
  sub_1ABB91B70();
  sub_1ABF252E4();
  sub_1ABB91BC4();
  sub_1ABF24EC4();
  (*(v27 + 8))(v32, v25);
  v41 = *(v35 + 8);
  v42 = sub_1ABA8C53C();
  v43(v42);
  sub_1ABA7BC90();
}

uint64_t EntityRelevanceInferenceInterface.Errors.InitError.hashValue.getter()
{
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](0);
  return sub_1ABF25294();
}

void EntityRelevanceInferenceInterface.Errors.InitError.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D3C88, &qword_1ABF3FCE0);
  sub_1ABA7BB64(v3);
  v42 = v4;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D3C90, &unk_1ABF3FCE8);
  sub_1ABA7BB64(v10);
  v43 = v11;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = v2[3];
  v18 = v2[4];
  sub_1ABA80908(v2);
  sub_1ABB91B70();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_9;
  }

  v40 = v9;
  v41 = v2;
  v19 = sub_1ABF24EA4();
  v20 = sub_1ABAD4EA4(v19, 0);
  v23 = v16;
  if (v21 == v22 >> 1)
  {
    v42 = v20;
LABEL_8:
    v33 = v10;
    v34 = sub_1ABF24B44();
    swift_allocError();
    v36 = v35;
    v37 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v36 = &type metadata for EntityRelevanceInferenceInterface.Errors.InitError;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v23, v33);
    v2 = v41;
LABEL_9:
    v38 = v2;
    goto LABEL_10;
  }

  if (v21 < (v22 >> 1))
  {
    v24 = sub_1ABAD4E90(v21 + 1);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    v29 = v26 == v28 >> 1;
    v30 = v41;
    v31 = v42;
    if (v29)
    {
      sub_1ABB91BC4();
      v32 = v40;
      sub_1ABF24D94();
      swift_unknownObjectRelease();
      (*(v31 + 8))(v32, v3);
      (*(v43 + 8))(v23, v10);
      v38 = v30;
LABEL_10:
      sub_1ABA84B54(v38);
      sub_1ABA7BC90();
      return;
    }

    v42 = v24;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1ABB909B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000001ABF88F90 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001ABF88FB0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

unint64_t sub_1ABB90A88(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1ABB90AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB909B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB90B08(uint64_t a1)
{
  v2 = sub_1ABB91C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB90B44(uint64_t a1)
{
  v2 = sub_1ABB91C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB90B80(uint64_t a1)
{
  v2 = sub_1ABB91C6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB90BBC(uint64_t a1)
{
  v2 = sub_1ABB91C6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB90BF8(uint64_t a1)
{
  v2 = sub_1ABB91CC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB90C34(uint64_t a1)
{
  v2 = sub_1ABB91CC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityRelevanceInferenceInterface.Errors.RunError.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D3C98, &qword_1ABF3FCF8);
  v4 = sub_1ABA7BB64(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v30 - v9;
  v10 = sub_1ABAD219C(&qword_1EB4D3CA0, &qword_1ABF3FD00);
  v11 = sub_1ABA7BB64(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = sub_1ABAD219C(&qword_1EB4D3CA8, &qword_1ABF3FD08);
  sub_1ABA7BB64(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  v27 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABB91C18();
  sub_1ABF252E4();
  v28 = (v20 + 8);
  if (v26)
  {
    sub_1ABB91C6C();
    v29 = v32;
    sub_1ABF24EC4();
    (*(v33 + 8))(v29, v34);
  }

  else
  {
    sub_1ABB91CC0();
    sub_1ABF24EC4();
    (*(v30 + 8))(v17, v31);
  }

  (*v28)(v25, v18);
  sub_1ABA7BC90();
}

uint64_t EntityRelevanceInferenceInterface.Errors.RunError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void EntityRelevanceInferenceInterface.Errors.RunError.init(from:)()
{
  sub_1ABA7BCA8();
  v54 = v0;
  v3 = v2;
  v51 = v4;
  v53 = sub_1ABAD219C(&qword_1EB4D3CC8, &qword_1ABF3FD10);
  sub_1ABA7BB64(v53);
  v50 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v46 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D3CD0, &qword_1ABF3FD18);
  sub_1ABA7BB64(v11);
  v49 = v12;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BCE0();
  v16 = sub_1ABAD219C(&qword_1EB4D3CD8, &qword_1ABF3FD20);
  sub_1ABA7BB64(v16);
  v52 = v17;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v46 - v21;
  v24 = v3[3];
  v23 = v3[4];
  sub_1ABA80908(v3);
  sub_1ABB91C18();
  v25 = v54;
  sub_1ABF252C4();
  if (v25)
  {
    goto LABEL_10;
  }

  v47 = v11;
  v48 = v1;
  v54 = v3;
  v26 = v53;
  v27 = sub_1ABF24EA4();
  v28 = sub_1ABAD4EA4(v27, 0);
  if (v30 == v31 >> 1)
  {
    v53 = v28;
LABEL_9:
    v41 = sub_1ABF24B44();
    swift_allocError();
    v43 = v42;
    v44 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v43 = &type metadata for EntityRelevanceInferenceInterface.Errors.RunError;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v22, v16);
    v3 = v54;
LABEL_10:
    sub_1ABA84B54(v3);
LABEL_11:
    sub_1ABA7BC90();
    return;
  }

  v46[1] = 0;
  if (v30 < (v31 >> 1))
  {
    v32 = *(v29 + v30);
    v33 = sub_1ABAD4E90(v30 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    if (v35 == v37 >> 1)
    {
      if (v32)
      {
        sub_1ABB91C6C();
        v38 = v10;
        sub_1ABA7E518();
        v39 = v51;
        v40 = v52;
        swift_unknownObjectRelease();
        (*(v50 + 8))(v38, v26);
      }

      else
      {
        sub_1ABB91CC0();
        v45 = v48;
        sub_1ABA7E518();
        v39 = v51;
        v40 = v52;
        swift_unknownObjectRelease();
        (*(v49 + 8))(v45, v47);
      }

      (*(v40 + 8))(v22, v35);
      *v39 = v32;
      sub_1ABA84B54(v54);
      goto LABEL_11;
    }

    v53 = v33;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t static EntityRelevanceInferenceEvent.type.getter()
{
  swift_beginAccess();
  v0 = qword_1EB4D3C58;

  return v0;
}

uint64_t static EntityRelevanceInferenceEvent.type.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_1EB4D3C58 = a1;
  off_1EB4D3C60 = a2;
}

uint64_t sub_1ABB914FC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB4D3C60;
  *a1 = qword_1EB4D3C58;
  a1[1] = v2;
}

uint64_t sub_1ABB9154C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB4D3C58 = v2;
  off_1EB4D3C60 = v1;
}

uint64_t EntityRelevanceInferenceEvent.entityIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EntityRelevanceInferenceEvent.viewName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

IntelligencePlatform::EntityRelevanceInferenceEvent __swiftcall EntityRelevanceInferenceEvent.init(entityIdentifier:viewName:)(Swift::String entityIdentifier, Swift::String viewName)
{
  *v2 = entityIdentifier;
  v2[1] = viewName;
  result.viewName = viewName;
  result.entityIdentifier = entityIdentifier;
  return result;
}

uint64_t sub_1ABB9161C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001ABF88D50 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E77656976 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABB916EC(char a1)
{
  if (a1)
  {
    return 0x656D614E77656976;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1ABB91728(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABB9177C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB9161C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB917A4(uint64_t a1)
{
  v2 = sub_1ABB91D14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB917E0(uint64_t a1)
{
  v2 = sub_1ABB91D14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityRelevanceInferenceEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3CE0, &qword_1ABF3FD28);
  sub_1ABA7BB64(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v15[1] = v0[3];
  v15[2] = v13;
  v14 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABB91D14();
  sub_1ABF252E4();
  sub_1ABF24F34();
  if (!v1)
  {
    sub_1ABF24F34();
  }

  (*(v16 + 8))(v10, v4);
  sub_1ABA7BC90();
}

void EntityRelevanceInferenceEvent.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D3CF0, &qword_1ABF3FD30);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BCE0();
  v11 = v2[3];
  v12 = v2[4];
  sub_1ABA80908(v2);
  sub_1ABB91D14();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v13 = sub_1ABF24E14();
    v15 = v14;
    v16 = sub_1ABF24E14();
    v18 = v17;
    v19 = *(v7 + 8);
    v22 = v16;
    v20 = sub_1ABA8C53C();
    v21(v20);
    *v4 = v13;
    v4[1] = v15;
    v4[2] = v22;
    v4[3] = v18;

    sub_1ABA84B54(v2);
  }

  sub_1ABA7BC90();
}

unint64_t sub_1ABB91B70()
{
  result = qword_1EB4D3C78;
  if (!qword_1EB4D3C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3C78);
  }

  return result;
}

unint64_t sub_1ABB91BC4()
{
  result = qword_1EB4D3C80;
  if (!qword_1EB4D3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3C80);
  }

  return result;
}

unint64_t sub_1ABB91C18()
{
  result = qword_1EB4D3CB0;
  if (!qword_1EB4D3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3CB0);
  }

  return result;
}

unint64_t sub_1ABB91C6C()
{
  result = qword_1EB4D3CB8;
  if (!qword_1EB4D3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3CB8);
  }

  return result;
}

unint64_t sub_1ABB91CC0()
{
  result = qword_1EB4D3CC0;
  if (!qword_1EB4D3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3CC0);
  }

  return result;
}

unint64_t sub_1ABB91D14()
{
  result = qword_1EB4D3CE8;
  if (!qword_1EB4D3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3CE8);
  }

  return result;
}

unint64_t sub_1ABB91D6C()
{
  result = qword_1EB4D3CF8;
  if (!qword_1EB4D3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3CF8);
  }

  return result;
}

unint64_t sub_1ABB91DC4()
{
  result = qword_1EB4D3D00;
  if (!qword_1EB4D3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D00);
  }

  return result;
}

unint64_t sub_1ABB91E1C()
{
  result = qword_1EB4D3D08;
  if (!qword_1EB4D3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D08);
  }

  return result;
}

unint64_t sub_1ABB91E74()
{
  result = qword_1EB4D3D10;
  if (!qword_1EB4D3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D10);
  }

  return result;
}

unint64_t sub_1ABB91ECC()
{
  result = qword_1EB4D3D18;
  if (!qword_1EB4D3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D18);
  }

  return result;
}

unint64_t sub_1ABB91F24()
{
  result = qword_1EB4D3D20;
  if (!qword_1EB4D3D20)
  {
    type metadata accessor for InferenceInterfaceNoFeedback();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D20);
  }

  return result;
}

unint64_t sub_1ABB91F7C(uint64_t a1)
{
  *(a1 + 8) = sub_1ABB91FAC();
  result = sub_1ABB92000();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABB91FAC()
{
  result = qword_1EB4CEC48;
  if (!qword_1EB4CEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC48);
  }

  return result;
}

unint64_t sub_1ABB92000()
{
  result = qword_1EB4CEC50[0];
  if (!qword_1EB4CEC50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CEC50);
  }

  return result;
}

uint64_t sub_1ABB92060(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB920B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1ABB92104(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1ABB9211C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

_BYTE *sub_1ABB921A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABB9229C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABB9235C()
{
  result = qword_1EB4D3D28;
  if (!qword_1EB4D3D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D28);
  }

  return result;
}

unint64_t sub_1ABB923B4()
{
  result = qword_1EB4D3D30;
  if (!qword_1EB4D3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D30);
  }

  return result;
}

unint64_t sub_1ABB9240C()
{
  result = qword_1EB4D3D38;
  if (!qword_1EB4D3D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D38);
  }

  return result;
}

unint64_t sub_1ABB92464()
{
  result = qword_1EB4D3D40;
  if (!qword_1EB4D3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D40);
  }

  return result;
}

unint64_t sub_1ABB924BC()
{
  result = qword_1EB4D3D48;
  if (!qword_1EB4D3D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D48);
  }

  return result;
}

unint64_t sub_1ABB92514()
{
  result = qword_1EB4D3D50;
  if (!qword_1EB4D3D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D50);
  }

  return result;
}

unint64_t sub_1ABB9256C()
{
  result = qword_1EB4D3D58;
  if (!qword_1EB4D3D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D58);
  }

  return result;
}

unint64_t sub_1ABB925C4()
{
  result = qword_1EB4D3D60;
  if (!qword_1EB4D3D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D60);
  }

  return result;
}

unint64_t sub_1ABB9261C()
{
  result = qword_1EB4D3D68;
  if (!qword_1EB4D3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D68);
  }

  return result;
}

unint64_t sub_1ABB92674()
{
  result = qword_1EB4D3D70;
  if (!qword_1EB4D3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D70);
  }

  return result;
}

unint64_t sub_1ABB926CC()
{
  result = qword_1EB4D3D78;
  if (!qword_1EB4D3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D78);
  }

  return result;
}

unint64_t sub_1ABB92724()
{
  result = qword_1EB4D3D80;
  if (!qword_1EB4D3D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D80);
  }

  return result;
}

unint64_t sub_1ABB9277C()
{
  result = qword_1EB4D3D88;
  if (!qword_1EB4D3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D88);
  }

  return result;
}

unint64_t sub_1ABB927D4()
{
  result = qword_1EB4D3D90;
  if (!qword_1EB4D3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D90);
  }

  return result;
}

unint64_t sub_1ABB9282C()
{
  result = qword_1EB4D3D98;
  if (!qword_1EB4D3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3D98);
  }

  return result;
}

BOOL sub_1ABB92888(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_1ABF25054()) && *(a1 + 16) == *(a2 + 16) && (*(a1 + 24) == *(a2 + 24) ? (v5 = *(a1 + 32) == *(a2 + 32)) : (v5 = 0), v5 || (sub_1ABF25054()))
  {
    return *(a1 + 40) == *(a2 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB92918(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628589 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636E6176656C6572 && a2 == 0xEE0065726F635365;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001ABF88FF0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
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

unint64_t sub_1ABB92A84(char a1)
{
  result = 1684628589;
  switch(a1)
  {
    case 1:
      result = 0x636E6176656C6572;
      break;
    case 2:
      result = 0x74616E616C707865;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB92B18(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4D3DF8, &qword_1ABF408C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB93D90();
  sub_1ABF252E4();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_1ABF24F34();
  if (!v2)
  {
    v13 = v3[2];
    v18[14] = 1;
    sub_1ABF24F54();
    v14 = v3[3];
    v15 = v3[4];
    v18[13] = 2;
    sub_1ABF24F34();
    v16 = v3[5];
    v18[12] = 3;
    sub_1ABF24FA4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1ABB92CCC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1ABF23D34();
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1AC5AA8D0](*&v3);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  sub_1ABF23D34();
  return MEMORY[0x1AC5AA8D0](*(v0 + 5));
}

uint64_t sub_1ABB92D24()
{
  sub_1ABF25234();
  sub_1ABB92CCC();
  return sub_1ABF25294();
}

uint64_t sub_1ABB92D64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D3DE8, &qword_1ABF408B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB93D90();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  v26 = 0;
  v11 = sub_1ABF24E14();
  v13 = v12;
  v25 = 1;
  sub_1ABF24E34();
  v15 = v14;
  v24 = 2;
  v21 = sub_1ABF24E14();
  v22 = v16;
  v23 = 3;
  v17 = sub_1ABF24E84();
  (*(v6 + 8))(v9, v5);
  result = sub_1ABA84B54(a1);
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v15;
  v19 = v22;
  a2[3] = v21;
  a2[4] = v19;
  a2[5] = v17;
  return result;
}

uint64_t sub_1ABB92FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB92918(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB93008(uint64_t a1)
{
  v2 = sub_1ABB93D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB93044(uint64_t a1)
{
  v2 = sub_1ABB93D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABB93080@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1ABB92D64(a1, v6);
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

uint64_t sub_1ABB930C4(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_1ABB92B18(a1);
}

uint64_t sub_1ABB93100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABB93D3C();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABB93168()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1ABB92D24();
}

uint64_t sub_1ABB931A4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1ABB92CCC();
}

uint64_t sub_1ABB931E0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_1ABF25234();
  sub_1ABB92CCC();
  return sub_1ABF25294();
}

BOOL sub_1ABB93230(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1ABB92888(v7, v8);
}

void sub_1ABB93278(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v62 = a1;
  LODWORD(v61) = a4;
  v56 = a5;
  v57 = a3;
  v6 = sub_1ABF22D14();
  v7 = sub_1ABA7BB64(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1ABAD219C(&qword_1EB4D3DA8, &qword_1ABF406C8);
  v15 = sub_1ABA7BB64(v14);
  v64 = v16;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v55 - v22;
  v24 = sub_1ABAD219C(&qword_1EB4D3DB0, qword_1ABF406D0);
  sub_1ABA7BB64(v24);
  v59 = v25;
  v27 = *(v26 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v55 - v29;
  v31 = *(a2 + 24);
  v32 = *(a2 + 32);

  sub_1ABF22D04();
  sub_1ABAD219C(&qword_1EB4D12D0, &unk_1ABF347E0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1ABF34740;
  sub_1ABF22D24();
  v34 = sub_1ABF22174();
  v35 = MEMORY[0x1E699FDA8];
  *(v33 + 56) = v34;
  *(v33 + 64) = v35;
  sub_1ABA93DC0((v33 + 32));
  sub_1ABF22974();
  (*(v9 + 8))(v13, v6);
  v60 = v24;
  v58 = v30;
  sub_1ABF22C64();

  if ((v61 & 1) == 0)
  {
    sub_1ABB93C74(&qword_1EB4D3DD0);
    sub_1ABF22754();
    v36 = v64;
    (*(v64 + 8))(v23, v14);
    (*(v36 + 32))(v23, v21, v14);
  }

  sub_1ABA7D498(&qword_1EB4D3DB8);
  sub_1ABB93BCC();
  v37 = v63;
  v38 = sub_1ABF22234();
  v63 = v37;
  if (v37)
  {
    (*(v64 + 8))(v23, v14);
    (*(v59 + 8))(v58, v60);
  }

  else
  {
    v39 = v38;
    v61 = v14;
    v40 = 0;
    v41 = *(v38 + 16);
    v62 = MEMORY[0x1E69E7CC0];
LABEL_6:
    for (i = 48 * v40; ; i += 48)
    {
      if (v41 == v40)
      {

        (*(v64 + 8))(v23, v61);
        (*(v59 + 8))(v58, v60);
        *v56 = v62;
        return;
      }

      if (v40 >= *(v39 + 16))
      {
        break;
      }

      v43 = *(v39 + i + 48);
      v44 = *(v39 + i + 56);
      v45 = *(v39 + i + 64);
      v46 = *(v39 + i + 72);
      v48 = *(v39 + i + 32);
      v47 = *(v39 + i + 40);

      EntityIdentifier.init(_:)(v48, v47, &v65);
      if (v66 != 1)
      {
        v57 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = *(v62 + 16);
          sub_1ABADA0F4();
          v62 = v53;
        }

        v49 = *(v62 + 16);
        if (v49 >= *(v62 + 24) >> 1)
        {
          sub_1ABADA0F4();
          v62 = v54;
        }

        v50 = v62;
        *(v62 + 16) = v49 + 1;
        v51 = (v50 + 40 * v49);
        v51[4] = v57;
        ++v40;
        v51[5] = v43;
        v51[6] = v44;
        v51[7] = v45;
        v51[8] = v46;
        goto LABEL_6;
      }

      ++v40;
    }

    __break(1u);
  }
}

uint64_t sub_1ABB9378C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v51 = a3;
  v48 = a4;
  v49 = a1;
  v5 = sub_1ABF223D4();
  v6 = sub_1ABA7BB64(v5);
  v46 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_1ABAD219C(&qword_1EB4D3DA0, &qword_1ABF406C0) - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = sub_1ABAD219C(&qword_1EB4D3DA8, &qword_1ABF406C8);
  sub_1ABA7BB64(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v23 = sub_1ABAD219C(&qword_1EB4D3DB0, qword_1ABF406D0);
  sub_1ABA7BB64(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v46 - v29;
  v32 = *(a2 + 24);
  v31 = *(a2 + 32);

  sub_1ABF22D04();
  MEMORY[0x1AC5AA830](v51);
  sub_1ABA7B9B4(v14, 0, 1, v5);
  sub_1ABF22C84();
  sub_1ABB93B64(v14);
  sub_1ABA7D498(&qword_1EB4D3DB8);
  sub_1ABB93BCC();
  v33 = v50;
  sub_1ABF22244();
  (*(v17 + 8))(v22, v15);
  if (v33)
  {
    return (*(v25 + 8))(v30, v23);
  }

  v35 = v47;
  v36 = v48;
  v37 = v51;
  if (!v53)
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1ABF24AB4();

    v52 = 0xD000000000000010;
    v53 = 0x80000001ABF88FD0;
    MEMORY[0x1AC5AA830](v37);
    sub_1ABB8087C();
    v42 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v42);

    (*(v46 + 8))(v35, v5);
    v43 = v52;
    v44 = v53;
    sub_1ABB93C20();
    swift_allocError();
    *v45 = v43;
    *(v45 + 8) = v44;
    *(v45 + 16) = 1;
    swift_willThrow();
    return (*(v25 + 8))(v30, v23);
  }

  v38 = v54;
  v39 = v55;
  v40 = v56;
  v41 = v57;
  (*(v25 + 8))(v30, v23);
  *v36 = v38;
  v36[1] = v39;
  v36[2] = v40;

  v36[3] = v41;
  return result;
}

uint64_t sub_1ABB93B64(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D3DA0, &qword_1ABF406C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABB93BCC()
{
  result = qword_1EB4D3DC0;
  if (!qword_1EB4D3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3DC0);
  }

  return result;
}

unint64_t sub_1ABB93C20()
{
  result = qword_1EB4CE7A0;
  if (!qword_1EB4CE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE7A0);
  }

  return result;
}

uint64_t sub_1ABB93C74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D3DA8, &qword_1ABF406C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABB93CE8()
{
  result = qword_1EB4D3DD8;
  if (!qword_1EB4D3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3DD8);
  }

  return result;
}

unint64_t sub_1ABB93D3C()
{
  result = qword_1EB4D3DE0;
  if (!qword_1EB4D3DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3DE0);
  }

  return result;
}

unint64_t sub_1ABB93D90()
{
  result = qword_1EB4D3DF0;
  if (!qword_1EB4D3DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3DF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RankedEntitiesViewRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABB93EC4()
{
  result = qword_1EB4D3E00;
  if (!qword_1EB4D3E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3E00);
  }

  return result;
}

unint64_t sub_1ABB93F1C()
{
  result = qword_1EB4D3E08;
  if (!qword_1EB4D3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3E08);
  }

  return result;
}

unint64_t sub_1ABB93F74()
{
  result = qword_1EB4D3E10[0];
  if (!qword_1EB4D3E10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D3E10);
  }

  return result;
}

unint64_t sub_1ABB93FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1;
    v66 = MEMORY[0x1E69E7CC0];
    sub_1ABADE0AC(0, v5, 0);
    v7 = v66;
    result = sub_1ABAB0E08(v6);
    v11 = 0;
    v12 = v6 + 64;
    v36 = v9;
    v37 = v5;
    v35 = v6 + 72;
    v38 = v6 + 64;
    v39 = a2;
    v40 = v6;
    if ((result & 0x8000000000000000) == 0)
    {
      while (result < 1 << *(v6 + 32))
      {
        if ((*(v12 + 8 * (result >> 6)) & (1 << result)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v6 + 36) != v9)
        {
          goto LABEL_26;
        }

        v46 = 1 << result;
        v47 = result >> 6;
        v44 = v11;
        v45 = v9;
        v43 = v10;
        v13 = *(v6 + 48) + 40 * result;
        v14 = *v13;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        v17 = *(v13 + 24);
        v18 = *(v13 + 32);
        v19 = *(v13 + 33);
        v48 = v19;
        v20 = (*(v6 + 56) + 16 * result);
        v50 = v7;
        v21 = *v20;
        v22 = v20[1];
        v54[0] = v14;
        v54[1] = v15;
        v54[2] = v16;
        v54[3] = v17;
        v55 = v18;
        v56 = v19;
        v57 = v21;
        v58 = v22;
        v49 = result;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_1ABA925A4(v54, &qword_1EB4D3E58, qword_1ABF40A68);
        v51 = v16;
        v59[0] = v14;
        v59[1] = v15;
        v59[2] = v16;
        v59[3] = v17;
        v60 = v18;
        v61 = v48;
        v52 = v21;
        v62 = v21;
        v63 = v22;
        v7 = v50;
        sub_1ABB97288(v59, v53);

        sub_1ABB97288(v59, v53);

        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_1ABA925A4(v59, &qword_1EB4D3E58, qword_1ABF40A68);
        v66 = v50;
        v24 = *(v50 + 16);
        v23 = *(v50 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1ABADE0AC((v23 > 1), v24 + 1, 1);
          v7 = v66;
        }

        *(v7 + 16) = v24 + 1;
        v25 = v7 + 80 * v24;
        *(v25 + 32) = v14;
        *(v25 + 40) = v15;
        *(v25 + 48) = v51;
        *(v25 + 56) = v17;
        *(v25 + 64) = v18;
        *(v25 + 65) = v48;
        v26 = v65;
        *(v25 + 66) = v64;
        *(v25 + 70) = v26;
        *(v25 + 72) = v39;
        *(v25 + 80) = a3;
        v6 = v40;
        *(v25 + 88) = a4;
        *(v25 + 96) = v52;
        *(v25 + 104) = v22;
        v27 = 1 << *(v40 + 32);
        result = v49;
        if (v49 >= v27)
        {
          goto LABEL_27;
        }

        v12 = v38;
        v28 = *(v38 + 8 * v47);
        if ((v28 & v46) == 0)
        {
          goto LABEL_28;
        }

        if (*(v40 + 36) != v45)
        {
          goto LABEL_29;
        }

        v29 = v28 & (-2 << (v49 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v49 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v30 = v47 << 6;
          v31 = v47 + 1;
          v32 = (v35 + 8 * v47);
          while (v31 < (v27 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              sub_1ABAC933C(v49, v45, v43 & 1);
              v27 = __clz(__rbit64(v33)) + v30;
              goto LABEL_18;
            }
          }

          sub_1ABAC933C(v49, v45, v43 & 1);
        }

LABEL_18:
        v11 = v44 + 1;
        if (v44 + 1 == v37)
        {
          swift_unknownObjectRelease();
          goto LABEL_23;
        }

        v10 = 0;
        result = v27;
        v9 = v36;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x1E69E7CC0];
LABEL_23:
    swift_unknownObjectRelease();
    return v7;
  }

  return result;
}

uint64_t sub_1ABB94384(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1ABAB4CF4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1ABB95F10(v6);
  return sub_1ABF24BA4();
}

uint64_t sub_1ABB94400(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A254(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABB95FF0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1ABB9446C()
{
  if (_Records_GDEntityClass_records)
  {
    v7 = v0;
    v8 = v1;
    result = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x468), *(_Records_GDEntityClass_records + 0x470), *(_Records_GDEntityClass_records + 0x478), &v3);
    xmmword_1ED87C430 = v3;
    qword_1ED87C440 = v4;
    unk_1ED87C448 = v5;
    byte_1ED87C450 = v6;
    byte_1ED87C451 = 2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB944F0()
{
  if (_Records_GDEntityClass_records)
  {
    v7 = v0;
    v8 = v1;
    result = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), &v3);
    xmmword_1ED87C458 = v3;
    qword_1ED87C468 = v4;
    unk_1ED87C470 = v5;
    byte_1ED87C478 = v6;
    byte_1ED87C479 = 2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB94574()
{
  if (_Records_GDEntityClass_records)
  {
    v7 = v0;
    v8 = v1;
    result = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA8), *(_Records_GDEntityClass_records + 0xB0), *(_Records_GDEntityClass_records + 0xB0 + 8), &v3);
    xmmword_1ED87C480 = v3;
    qword_1ED87C490 = v4;
    unk_1ED87C498 = v5;
    byte_1ED87C4A0 = v6;
    byte_1ED87C4A1 = 2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB945F4()
{
  if (_Records_GDEntityClass_records)
  {
    v7 = v0;
    v8 = v1;
    result = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), &v3);
    xmmword_1ED87C4D0 = v3;
    qword_1ED87C4E0 = v4;
    unk_1ED87C4E8 = v5;
    byte_1ED87C4F0 = v6;
    byte_1ED87C4F1 = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB94674()
{
  if (_Records_GDEntityClass_records)
  {
    v7 = v0;
    v8 = v1;
    result = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), &v3);
    xmmword_1ED87C4A8 = v3;
    qword_1ED87C4B8 = v4;
    unk_1ED87C4C0 = v5;
    LOBYTE(word_1ED87C4C8) = v6;
    HIBYTE(word_1ED87C4C8) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB946F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 33);
  v3 = *(a2 + 33);
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (v5 = sub_1ABF25054(), result = 0, (v5 & 1) != 0))
  {
    if (v2 == 2)
    {
      if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1ABB94780()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 33);
  sub_1ABF23D34();
  if (v3 == 2)
  {
    return sub_1ABF25254();
  }

  sub_1ABF25254();
  return MEMORY[0x1AC5AA8A0](v3 & 1);
}

uint64_t sub_1ABB947E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 33);
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF25254();
  if (v3 != 2)
  {
    MEMORY[0x1AC5AA8A0](v3 & 1);
  }

  return sub_1ABF25294();
}

uint64_t sub_1ABB9486C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 16);
  sub_1ABF25234();
  sub_1ABB94780();
  return sub_1ABF25294();
}

uint64_t sub_1ABB948C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAD219C(&unk_1EB4D3E48, &qword_1ABF40A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF3EB10;
  if (qword_1ED8707C0 != -1)
  {
    swift_once();
  }

  v8 = sub_1ABA8F214(&xmmword_1ED87C430);
  *(inited + 32) = v9;
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  *(inited + 56) = v3;
  *(inited + 64) = v11;
  sub_1ABA8071C();
  *(inited + 72) = 0xD000000000000014;
  *(inited + 80) = v12;
  v13 = qword_1ED8707C8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_1ABA8F214(&xmmword_1ED87C458);
  *(inited + 88) = v15;
  *(inited + 96) = v14;
  *(inited + 104) = v16;
  *(inited + 112) = v3;
  *(inited + 120) = v17;
  sub_1ABA8071C();
  *(inited + 128) = 0xD000000000000017;
  *(inited + 136) = v18;
  v19 = qword_1ED8707D0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1ABA8F214(&xmmword_1ED87C480);
  *(inited + 144) = v21;
  *(inited + 152) = v20;
  *(inited + 160) = v22;
  *(inited + 168) = v3;
  *(inited + 176) = v23;
  sub_1ABA8071C();
  *(inited + 184) = 0xD000000000000014;
  *(inited + 192) = v24;
  v25 = qword_1ED8707E8;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_1ABA8F214(&xmmword_1ED87C4D0);
  *(inited + 200) = v27;
  *(inited + 208) = v26;
  *(inited + 216) = v28;
  *(inited + 224) = v3;
  *(inited + 232) = v29;
  sub_1ABA8071C();
  *(inited + 240) = 0xD00000000000001FLL;
  *(inited + 248) = v30;
  v31 = qword_1ED8707E0;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = *(&xmmword_1ED87C4A8 + 1);
  v33 = qword_1ED87C4B8;
  v34 = unk_1ED87C4C0;
  v35 = word_1ED87C4C8;
  *(inited + 256) = xmmword_1ED87C4A8;
  *(inited + 264) = v32;
  *(inited + 272) = v33;
  *(inited + 280) = v34;
  *(inited + 288) = v35;
  *(inited + 296) = 0xD000000000000016;
  *(inited + 304) = 0x80000001ABF890E0;
  sub_1ABB97234();

  v36 = sub_1ABF239C4();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v37 = sub_1ABB93FD4(v36, a1, a2, a3);
  if (v3)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    a3 = sub_1ABBFA4E4(v37);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return a3;
}

uint64_t sub_1ABB94BF8(void *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  EntityClass.init(intValue:)(HIBYTE(*a1), &v25);
  v6 = v26;
  if (!v26)
  {
    sub_1ABA7F024();
    sub_1ABF24AB4();

    v25 = 0x20797469746E45;
    v26 = 0xE700000000000000;
    v13 = EntityIdentifier.description.getter();
    MEMORY[0x1AC5A9410](v13);

    MEMORY[0x1AC5A9410](0xD000000000000024, 0x80000001ABF89010);
    v14 = v25;
    v15 = v26;
    sub_1ABB97174();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    return swift_willThrow();
  }

  v7 = v25;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v40[0] = v25;
  v40[1] = v26;
  v40[2] = v27;
  v40[3] = v28;
  v41 = v29;
  v42 = v5;

  sub_1ABAD54F0(v40, a3);
  sub_1ABB971C8(v40);
  if (!v31)
  {
    sub_1ABA7F024();
    sub_1ABF24AB4();

    sub_1ABA7D4BC();
    v23 = v17;
    v24 = v18;
    v25 = v7;
    v26 = v6;
    v27 = v8;
    v28 = v9;
    v29 = v10;
    v19 = EntityClass.description.getter();
    v21 = v20;
    sub_1ABA80924();
    MEMORY[0x1AC5A9410](v19, v21);

    MEMORY[0x1AC5A9410](0xD000000000000018, 0x80000001ABF89040);
    sub_1ABB97174();
    swift_allocError();
    *v22 = v23;
    *(v22 + 8) = v24;
    *(v22 + 16) = 2;
    return swift_willThrow();
  }

  v34 = v30;
  v35 = v31;
  *v36 = v32;
  *&v36[16] = v33;
  sub_1ABA80924();
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  sub_1ABAD219C(&qword_1EB4D3E30, &unk_1ABF40A40);
  sub_1ABF22464();
  if (v3)
  {
    v43 = v34;
    sub_1ABA925A4(&v43, &unk_1EB4D3E38, &unk_1ABF40A50);
    swift_unknownObjectRelease();
    v39 = *&v36[8];
    return sub_1ABAFEEA0(&v39);
  }

  else
  {
    v37 = v34;
    sub_1ABA925A4(&v37, &unk_1EB4D3E38, &unk_1ABF40A50);
    swift_unknownObjectRelease();
    v38 = *&v36[8];
    sub_1ABAFEEA0(&v38);
    return v26;
  }
}

uint64_t sub_1ABB94F98(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5)
{
  v7 = *a4;
  if (!a1)
  {
    LOBYTE(v41) = *a4;
    v20 = a3 & 1;
    return sub_1ABB953F8(a1, a2, v20, &v41, a5);
  }

  if (*(a1 + 16) != 1)
  {
    LOBYTE(v41) = *a4;
    v20 = a3 & 1;
    return sub_1ABB953F8(a1, a2, v20, &v41, a5);
  }

  v9 = sub_1ABBD2A34(a1);
  v11 = v10;
  v13 = v12;
  sub_1ABBC7DF8(v9, v10, a1, &v41);
  sub_1ABAC933C(v9, v11, v13 & 1);
  v14 = v42;
  v16 = v43;
  v15 = v44;
  v17 = v45;
  v38 = v41;
  v59[0] = v41;
  v59[1] = v42;
  v59[2] = v43;
  v59[3] = v44;
  v60 = v45;
  v61 = v7;

  sub_1ABAD54F0(v59, a5);
  sub_1ABB971C8(v59);
  if (v47)
  {
    v50 = v46;
    v51 = v47;
    *v52 = v48;
    *&v52[16] = v49;

    ObjectType = swift_getObjectType();
    MEMORY[0x1EEE9AC00](ObjectType);
    sub_1ABAD219C(&qword_1EB4D19E0, &qword_1ABF33B70);
    sub_1ABF22464();
    if (v5)
    {
      v53 = v50;
      sub_1ABA925A4(&v53, &unk_1EB4D3E38, &unk_1ABF40A50);
      swift_unknownObjectRelease();
      v54 = *&v52[8];
      return sub_1ABAFEEA0(&v54);
    }

    else
    {
      v28 = v41;
      v29 = *(v41 + 16);
      if (v29)
      {
        v41 = MEMORY[0x1E69E7CC0];
        result = sub_1ABF24BC4();
        v30 = 0;
        v31 = (v28 + 64);
        while (v30 < *(v28 + 16))
        {
          ++v30;
          v32 = *(v31 - 4);
          v33 = *(v31 - 3);
          v34 = *(v31 - 2);
          v35 = *(v31 - 1);
          v36 = *v31;
          v31 += 5;
          v39 = v32;
          type metadata accessor for EntityResolutionRankingService.RankedEntities.ScoredEntity();
          swift_allocObject();
          EntityResolutionRankingService.RankedEntities.ScoredEntity.init(id:score:explanation:inferenceEventId:)(&v39, v34, v35, v36, v33);

          sub_1ABF24B94();
          v37 = *(v41 + 16);
          sub_1ABF24BD4();
          sub_1ABF24BE4();
          result = sub_1ABF24BA4();
          if (v29 == v30)
          {

            v57 = v50;
            sub_1ABA925A4(&v57, &unk_1EB4D3E38, &unk_1ABF40A50);
            swift_unknownObjectRelease();
            v58 = *&v52[8];
            sub_1ABAFEEA0(&v58);
            return v41;
          }
        }

        __break(1u);
      }

      else
      {

        v55 = v50;
        sub_1ABA925A4(&v55, &unk_1EB4D3E38, &unk_1ABF40A50);
        swift_unknownObjectRelease();
        v56 = *&v52[8];
        sub_1ABAFEEA0(&v56);
        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  else
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1ABF24AB4();

    sub_1ABA7D4BC();
    v39 = v21;
    v40 = v22;
    v41 = v38;
    v42 = v14;
    v43 = v16;
    v44 = v15;
    v45 = v17;
    v23 = EntityClass.description.getter();
    v25 = v24;

    MEMORY[0x1AC5A9410](v23, v25);

    MEMORY[0x1AC5A9410](0xD000000000000018, 0x80000001ABF89040);
    v26 = v40;
    sub_1ABB97174();
    swift_allocError();
    *v27 = v39;
    *(v27 + 8) = v26;
    *(v27 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1ABB953F8(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v90 = a5 + 64;
  v9 = *a4;
  v10 = 1 << *(a5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a5 + 64);
  v13 = (v10 + 63) >> 6;
  v98 = a1 + 56;

  v14 = 0;
  v100 = MEMORY[0x1E69E7CC0];
  v89 = v9;
  v88 = v7;
  v87 = v13;
  while (v12)
  {
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = 5 * (v16 | (v14 << 6));
    v18 = *(v7 + 48) + 40 * (v16 | (v14 << 6));
    v19 = *(v18 + 24);
    v20 = *(v18 + 33);
    v21 = *(v7 + 56) + 8 * v17;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 24);
    v25 = *(v21 + 32);
    v96 = *(v18 + 8);
    if (a1)
    {
      if (*(a1 + 16))
      {
        v92 = *(v18 + 33);
        v91 = *(v21 + 24);
        v26 = *(v18 + 16);
        v27 = *(a1 + 40);
        v28 = *v21;
        v97 = *(v21 + 8);
        sub_1ABF25234();
        v93 = v28;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v94 = v25;

        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_1ABF23D34();
        v29 = sub_1ABF25294();
        v30 = ~(-1 << *(a1 + 32));
        while (1)
        {
          v31 = v29 & v30;
          if (((*(v98 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
          {
            break;
          }

          v32 = *(a1 + 48) + 40 * v31;
          if (*(v32 + 16) != v26 || *(v32 + 24) != v19)
          {
            v34 = sub_1ABF25054();
            v29 = v31 + 1;
            if ((v34 & 1) == 0)
            {
              continue;
            }
          }

          v7 = v88;
          v9 = v89;
          v13 = v87;
          goto LABEL_21;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();
        v7 = v88;
        v9 = v89;
        v13 = v87;
LABEL_27:
      }
    }

    else
    {
      v92 = *(v18 + 33);
      v91 = *(v21 + 24);
      v93 = *v21;
      v97 = *(v21 + 8);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v94 = v25;

LABEL_21:

      if (v92 == 2)
      {
        v35 = v94;
        if (v9 != 2)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v35 = v94;
        if (v9 == 2 || ((v92 ^ v9) & 1) != 0)
        {
LABEL_26:

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_27;
        }
      }

      v95 = v35;

      v36 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = v100[2];
        sub_1ABAD99F8();
        v100 = v43;
      }

      v37 = v93;
      v38 = v95;
      v39 = v97;
      v40 = v100[2];
      if (v40 >= v100[3] >> 1)
      {
        sub_1ABAD99F8();
        v39 = v97;
        v37 = v93;
        v38 = v95;
        v100 = v44;
      }

      v100[2] = v40 + 1;
      v41 = &v100[5 * v40];
      v41[4] = v37;
      *(v41 + 5) = v39;
      v41[7] = v91;
      v41[8] = v38;
      v9 = v89;
      v13 = v36;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_68;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v90 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  v45 = v100;
  v46 = v100[2];
  if (v46)
  {
    v102[0] = MEMORY[0x1E69E7CC0];
    sub_1ABADDF6C();
    v47 = 0;
    v48 = v102[0];
    v49 = v100 + 8;
    v99 = v46;
    while (v47 < v45[2])
    {
      v50 = *(v49 - 3);
      v52 = *(v49 - 2);
      v51 = *(v49 - 1);
      v53 = *v49;
      v102[1] = *(v49 - 4);
      v102[2] = v50;
      v102[3] = v52;
      v102[4] = v51;
      v102[5] = v53;
      ObjectType = swift_getObjectType();
      MEMORY[0x1EEE9AC00](ObjectType);
      sub_1ABAD219C(&qword_1EB4D19E0, &qword_1ABF33B70);
      sub_1ABF22464();
      if (v6)
      {
        if (qword_1EB4CE7C0 != -1)
        {
          swift_once();
        }

        v55 = sub_1ABF237F4();
        sub_1ABA7AA24(v55, qword_1EB4CE7C8);
        v56 = v6;
        v57 = sub_1ABF237D4();
        v58 = sub_1ABF24644();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *v59 = 138412290;
          v61 = v6;
          v62 = _swift_stdlib_bridgeErrorToNSError();
          *(v59 + 4) = v62;
          *v60 = v62;
          _os_log_impl(&dword_1ABA78000, v57, v58, "Failed to query inferences from inferences view, ignoring this view. Error: %@", v59, 0xCu);
          sub_1ABA925A4(v60, &unk_1EB4D57F0, &qword_1ABF390C0);
          MEMORY[0x1AC5AB8B0](v60, -1, -1);
          MEMORY[0x1AC5AB8B0](v59, -1, -1);
        }

        v6 = 0;
        v63 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v63 = v101;
      }

      v102[0] = v48;
      v64 = *(v48 + 16);
      if (v64 >= *(v48 + 24) >> 1)
      {
        sub_1ABADDF6C();
        v48 = v102[0];
      }

      ++v47;
      *(v48 + 16) = v64 + 1;
      *(v48 + 8 * v64 + 32) = v63;
      v49 += 5;
      v45 = v100;
      if (v99 == v47)
      {

        goto LABEL_49;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_49:
  sub_1ABE7B598(v48);
  v102[0] = v65;
  sub_1ABB94400(v102);
  if (!v6)
  {

    v66 = v102[0];
    v67 = *(v102[0] + 16);
    if (v67)
    {
      v102[0] = MEMORY[0x1E69E7CC0];
      sub_1ABF24BC4();
      v68 = 0;
      v69 = (v66 + 64);
      while (v68 < *(v66 + 16))
      {
        ++v68;
        v70 = *(v69 - 4);
        v71 = *(v69 - 3);
        v72 = *(v69 - 2);
        v73 = *(v69 - 1);
        v74 = *v69;
        v69 += 5;
        v101 = v70;
        type metadata accessor for EntityResolutionRankingService.RankedEntities.ScoredEntity();
        swift_allocObject();
        EntityResolutionRankingService.RankedEntities.ScoredEntity.init(id:score:explanation:inferenceEventId:)(&v101, v72, v73, v74, v71);

        sub_1ABF24B94();
        v75 = *(v102[0] + 16);
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        if (v67 == v68)
        {

          v76 = v102[0];
          goto LABEL_56;
        }
      }

      goto LABEL_69;
    }

    v76 = MEMORY[0x1E69E7CC0];
LABEL_56:
    if ((a3 & 1) == 0)
    {
      sub_1ABD52A64(a2, v76);
      v78 = v77;
      v80 = v79;
      if ((v79 & 1) == 0)
      {
        goto LABEL_58;
      }

      sub_1ABF25094();
      swift_unknownObjectRetain_n();
      v82 = swift_dynamicCastClass();
      if (!v82)
      {
        swift_unknownObjectRelease();
        v82 = MEMORY[0x1E69E7CC0];
      }

      v83 = *(v82 + 16);

      if (__OFSUB__(v80 >> 1, v78))
      {
        goto LABEL_70;
      }

      if (v83 == (v80 >> 1) - v78)
      {
        v76 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v76)
        {
          v76 = MEMORY[0x1E69E7CC0];
          goto LABEL_65;
        }
      }

      else
      {
LABEL_71:
        swift_unknownObjectRelease();
LABEL_58:
        sub_1ABB62D8C();
        v76 = v81;
LABEL_65:
        swift_unknownObjectRelease();
      }
    }

    return v76;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB95CC8(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_9:

    v25 = sub_1ABC1E704(v22);
    sub_1ABB94384(&v25);
    if (v4)
    {

      __break(1u);
    }

    else
    {

      return v25;
    }

    return result;
  }

  v8 = *a2;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1ABF24BC4();
  v9 = (a1 + 32);
  while (1)
  {
    v11 = *v9++;
    v10 = v11;
    v25 = v11;
    LOBYTE(v27) = v8;
    v12 = sub_1ABB94BF8(&v25, &v27, a3);
    if (!v4)
    {
      v17 = v15;
      v18 = v12;
      v19 = v13;
      v20 = v14;
      v25 = v10;
      type metadata accessor for EntityResolutionRankingService.RankedEntities.ScoredEntity();
      swift_allocObject();
      EntityResolutionRankingService.RankedEntities.ScoredEntity.init(id:score:explanation:inferenceEventId:)(&v25, v18, v19, v20, v17);
      goto LABEL_8;
    }

    v27 = v4;
    v16 = v4;
    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_12;
    }

    if (v26 != 1)
    {
      break;
    }

    sub_1ABB95F08();

    v24 = v10;
    type metadata accessor for EntityResolutionRankingService.RankedEntities.ScoredEntity();
    swift_allocObject();
    EntityResolutionRankingService.RankedEntities.ScoredEntity.init(id:score:explanation:inferenceEventId:)(&v24, 0, 0, 0, 0.0);

    v4 = 0;
LABEL_8:
    sub_1ABF24B94();
    v21 = *(v28 + 16);
    sub_1ABF24BD4();
    sub_1ABF24BE4();
    sub_1ABF24BA4();
    if (!--v5)
    {
      goto LABEL_9;
    }
  }

  sub_1ABB95F08();
LABEL_12:
}

void sub_1ABB95F10(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1ABF24FE4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1ABAE8C1C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1ABB961E8(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1ABB960F4(0, v3, 1, a1);
  }
}

uint64_t sub_1ABB95FF0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D19D0, &qword_1ABF33B60);
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABB966A8(v7, v8, a1, v4);
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
    return sub_1ABB96158(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABB960F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (*(*v9 + 24) >= *(v7 + 24))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1ABB96158(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 40;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 40 * a3 + 8);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 + 8) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 16);
        v12 = *(v9 + 32);
        v11 = *(v9 + 40);
        *(v9 + 40) = *v9;
        v13 = *(v9 + 56);
        v14 = *(v9 + 72);
        *(v9 + 56) = v10;
        *(v9 + 72) = v12;
        *v9 = v11;
        *(v9 + 8) = v7;
        *(v9 + 16) = v13;
        *(v9 + 32) = v14;
        v9 -= 40;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 40;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABB961E8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v75 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*(*a3 + 8 * v8) + 24);
        v10 = *(*(*a3 + 8 * v6) + 24);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v10 < v9) ^ (v12 >= *(*(*a3 + 8 * v11++) + 24));
          v12 = *(*(*a3 + 8 * v13) + 24);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v10 < v9)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (*(*v26 + 24) >= *(v24 + 24))
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v77 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = v7[2];
        sub_1ABAD8820();
        v7 = v73;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1ABAD8820();
        v7 = v74;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v78 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = *(v67 + 1);
          sub_1ABB96E48((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v78);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          sub_1ABE7A0CC(v67 + 16, v70 - 1 - v33, &v31[2 * v33]);
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v77;
      a4 = v75;
      if (v77 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1ABB96BE4(&v80, *a1, a3);
LABEL_89:
}

void sub_1ABB966A8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v90 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 40 * v9 + 8);
        v11 = *a3 + 40 * v7;
        v12 = *(v11 + 8);
        v13 = (v11 + 88);
        v14 = v7 + 2;
        v15 = v10;
        while (1)
        {
          v16 = v14;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = *v13;
          v13 += 5;
          v18 = (v12 < v10) ^ (v15 >= v17);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v12 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v19 = 40 * v6 - 16;
            v20 = 40 * v7 + 32;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v20);
                v25 = *(v23 + v20 - 32);
                v26 = v23 + v19;
                v27 = *(v24 - 3);
                v28 = *(v24 - 1);
                v29 = *v24;
                v30 = *(v26 + 8);
                v31 = *(v26 - 8);
                *(v24 - 2) = *(v26 - 24);
                *(v24 - 1) = v31;
                *v24 = v30;
                *(v26 - 24) = v25;
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
                *(v26 + 8) = v29;
              }

              ++v22;
              v19 -= 40;
              v20 += 40;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v32 = *a3;
            v33 = *a3 + 40 * v9 - 40;
            v34 = v7 - v9;
            do
            {
              v35 = *(v32 + 40 * v9 + 8);
              v36 = v34;
              v37 = v33;
              do
              {
                if (*(v37 + 8) >= v35)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_111;
                }

                v38 = *(v37 + 16);
                v40 = *(v37 + 32);
                v39 = *(v37 + 40);
                *(v37 + 40) = *v37;
                v41 = *(v37 + 56);
                v42 = *(v37 + 72);
                *(v37 + 56) = v38;
                *(v37 + 72) = v40;
                *v37 = v39;
                *(v37 + 8) = v35;
                *(v37 + 16) = v41;
                *(v37 + 32) = v42;
                v37 -= 40;
              }

              while (!__CFADD__(v36++, 1));
              ++v9;
              v33 += 40;
              --v34;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v92 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = v8[2];
        sub_1ABAD8820();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1ABAD8820();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v7;
      v47[1] = v92;
      v93 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_56:
            if (v54)
            {
              goto LABEL_96;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_99;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_104;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v45 < 2)
          {
            goto LABEL_98;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_71:
          if (v69)
          {
            goto LABEL_101;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_103;
          }

          if (v76 < v68)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_1ABB96FCC((*a3 + 40 * *v80), (*a3 + 40 * *v82), *a3 + 40 * v83, v93);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v83 < v81)
          {
            goto LABEL_91;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_92;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_93;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_85;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_94;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_95;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_97;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_100;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_105;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v92;
      a4 = v90;
      if (v92 >= v6)
      {
        v95 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1ABB96D10(&v95, *a1, a3);
LABEL_89:
}

uint64_t sub_1ABB96BE4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1ABB96E48((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1ABB96D10(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1ABB96FCC((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1ABB96E48(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1ABAE304C(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*(*v4 + 24) >= *(*v6 + 24))
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1ABAE304C(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (*(*v14 + 24) < *(v16 + 24))
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_1ABB96FCC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1ABADD470(a1, (a2 - a1) / 40, a4);
    v10 = &v4[5 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[1] >= v6[1])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 5;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 5;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 5;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    v7[4] = v12[4];
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_13;
  }

  sub_1ABADD470(a2, (a3 - a2) / 40, a4);
  v10 = &v4[5 * v9];
LABEL_15:
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    if (*(v6 - 4) < *(v10 - 4))
    {
      v19 = v6 - 5;
      v13 = v5 + 40 == v6;
      v6 -= 5;
      if (!v13)
      {
        v20 = *v19;
        v21 = *(v19 + 1);
        *(v5 + 32) = v19[4];
        *v5 = v20;
        *(v5 + 16) = v21;
        v6 = v19;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 40))
    {
      v17 = *(v10 - 5);
      v18 = *(v10 - 3);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v17;
      *(v5 + 16) = v18;
    }

    v10 -= 5;
  }

LABEL_28:
  v22 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[5 * v22])
  {
    memmove(v6, v4, 40 * v22);
  }

  return 1;
}

unint64_t sub_1ABB97174()
{
  result = qword_1EB4D3E28;
  if (!qword_1EB4D3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3E28);
  }

  return result;
}

unint64_t sub_1ABB97234()
{
  result = qword_1ED8707B0;
  if (!qword_1ED8707B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8707B0);
  }

  return result;
}

uint64_t sub_1ABB97288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3E58, qword_1ABF40A68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABB97320()
{
  result = qword_1ED8707A0;
  if (!qword_1ED8707A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8707A0);
  }

  return result;
}

uint64_t sub_1ABB973A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001ABF89240 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001ABF89260 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

unint64_t sub_1ABB97480(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1ABB974B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  v7 = sub_1ABAD219C(&qword_1EB4D3EB0, &qword_1ABF40F98);
  sub_1ABA7BB64(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - v13;
  v15 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB9A2C0();
  sub_1ABF252E4();
  v19 = 0;
  sub_1ABF24F34();
  if (!v5)
  {
    v18 = 1;
    sub_1ABF24F34();
  }

  return (*(v9 + 8))(v14, v7);
}

uint64_t sub_1ABB9761C(uint64_t *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D3EA8, &qword_1ABF40F90);
  sub_1ABA7BB64(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v7 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB9A2C0();
  sub_1ABF252C4();
  if (!v1)
  {
    v7 = sub_1ABF24E14();
    sub_1ABF24E14();
    v9 = sub_1ABA7BCF0();
    v10(v9);
  }

  sub_1ABA84B54(a1);
  return v7;
}

uint64_t sub_1ABB977E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB973A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB97808(uint64_t a1)
{
  v2 = sub_1ABB9A2C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB97844(uint64_t a1)
{
  v2 = sub_1ABB9A2C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB97880@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABB9761C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1ABB978D0()
{
  sub_1ABA906D0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v1[4] = v10;
  v1[5] = v0;
  v1[2] = v6;
  v1[3] = v2;
  v1[6] = *v0;
  swift_defaultActor_initialize();
  v11 = swift_task_alloc();
  v1[7] = v11;
  *v11 = v1;
  v11[1] = sub_1ABB979E4;

  return (sub_1ABC20104)(v5, v3, v9, v7, 0);
}

uint64_t sub_1ABB979E4()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D4E0();
  *v4 = v3;
  v6 = *(v5 + 56);
  *v4 = *v1;
  v3[8] = v7;
  v3[9] = v0;

  if (v0)
  {
    v8 = sub_1ABB97C58;
  }

  else
  {
    v9 = v3[2];
    v10 = v3[3];

    v8 = sub_1ABB97AFC;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1ABB97AFC()
{
  v1 = v0[8];
  if (!v1)
  {
    sub_1ABB91E1C();
    sub_1ABA7BD00();
    swift_willThrow();
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    swift_defaultActor_destroy();

    sub_1ABA837B4();
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[5];
  *(v2 + 128) = v1;
  *(v2 + 112) = 0;
  *(v2 + 120) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1ABB97BF4);
}

uint64_t sub_1ABB97BF4()
{
  sub_1ABA7BBF8();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[5];

  return v2(v3);
}

uint64_t sub_1ABB97C58()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  swift_defaultActor_destroy();

  sub_1ABA837B4();
  sub_1ABA7BBE0();

  return v7();
}

uint64_t sub_1ABB97CE4(uint64_t a1, void *a2, uint64_t a3)
{
  v4[89] = a3;
  v4[90] = v3;
  v4[88] = a1;
  v4[91] = *v3;
  v4[92] = *a2;
  return sub_1ABA8F224(sub_1ABB97D38, v3);
}

uint64_t sub_1ABB97D38()
{
  sub_1ABA906D0();
  v1 = [*(*(v0[90] + 128) + 16) modelDescription];
  v2 = [v1 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_1ABB9A1B0(&qword_1ED86B968, 255, type metadata accessor for MLModelMetadataKey);
  v3 = sub_1ABF23974();

  sub_1ABAD56C8(*MEMORY[0x1E695FDD0], v3);

  if (v0[5])
  {
    v4 = swift_dynamicCast();
    v5 = v0[82];
    if (v4)
    {
      v6 = v0[82];
    }

    else
    {
      v6 = 0;
    }

    if (v4)
    {
      v7 = v0[83];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_1ABA925A4((v0 + 2), &qword_1EB4D3000, &unk_1ABF3AA60);
    v6 = 0;
    v7 = 0;
  }

  v0[94] = v7;
  v0[93] = v6;
  v8 = v0[92];
  if (!v8)
  {
    v14 = v0[88];

    v15 = sub_1ABF239C4();
    *v14 = v6;
    *(v14 + 8) = v7;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v15;
    *(v14 + 40) = v6;
    *(v14 + 48) = v7;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    sub_1ABA7BBE0();
    sub_1ABA8E16C();

    __asm { BRAA            X1, X16 }
  }

  v9 = v0[91];
  v10 = v0[90];
  v11 = v0[89];
  v12 = swift_allocObject();
  v0[95] = v12;
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = v11;
  v12[5] = v6;
  v12[6] = v7;
  v12[7] = v9;

  swift_unknownObjectRetain_n();

  swift_asyncLet_begin();
  sub_1ABA80948();
  sub_1ABA8E16C();

  return MEMORY[0x1EEE6DEC0]();
}

uint64_t sub_1ABB97FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA7BBF8();
  v15[96] = v14;
  if (v14)
  {
    v16 = v15[94];

    v17 = sub_1ABA80948();

    return MEMORY[0x1EEE6DEB0](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v25 = v15[90];

    return MEMORY[0x1EEE6DFA0](sub_1ABB98074, v25, 0);
  }
}

uint64_t sub_1ABB98074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  v15 = v14[92];
  v48 = v14[87];
  v49 = v14;
  swift_getObjectType();
  v16 = MLFeatureProvider.dictionary.getter();
  sub_1ABAD219C(&qword_1EB4D3E98, &qword_1ABF40F70);
  v17 = sub_1ABF24D24();
  v25 = v17;
  v26 = 0;
  v27 = 1 << *(v16 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v16 + 64);
  v30 = (v27 + 63) >> 6;
  v50 = (v17 + 8);
  if (v29)
  {
    while (1)
    {
      v31 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
LABEL_10:
      v34 = v31 | (v26 << 6);
      v35 = (*(v16 + 48) + 16 * v34);
      v37 = *v35;
      v36 = v35[1];
      v38 = *(*(v16 + 56) + 8 * v34);

      v17 = [v38 doubleValue];
      *&v50[(v34 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v34;
      v39 = (v25[6] + 16 * v34);
      *v39 = v37;
      v39[1] = v36;
      *(v25[7] + 8 * v34) = v40;
      v41 = v25[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        break;
      }

      v25[2] = v43;
      if (!v29)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v32 = v26;
    while (1)
    {
      v26 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v26 >= v30)
      {
        break;
      }

      v33 = *(v16 + 64 + 8 * v26);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v29 = (v33 - 1) & v33;
        goto LABEL_10;
      }
    }

    v44 = v49[94];
    v45 = v49[93];
    v46 = v49[88];

    *v46 = v48;
    *(v46 + 8) = 0;
    *(v46 + 16) = 1;
    *(v46 + 24) = v48;
    *(v46 + 32) = v25;
    *(v46 + 40) = v45;
    *(v46 + 48) = v44;
    *(v46 + 56) = 0;
    *(v46 + 64) = 1;
    sub_1ABA80948();
    sub_1ABA8BF40();
  }

  return MEMORY[0x1EEE6DEB0](v17, v18, v19, v20, v21, v22, v23, v24, v48, v49, v50, a12, a13, a14);
}

uint64_t sub_1ABB98268()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 760);
  v2 = *(v0 + 736);
  swift_unknownObjectRelease();

  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABB982E8()
{
  sub_1ABA7BBF8();
  v1 = v0[95];
  v2 = v0[92];
  swift_unknownObjectRelease();

  sub_1ABA7BBE0();
  v4 = v0[96];

  return v3();
}

uint64_t sub_1ABB98350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = sub_1ABB98420;

  return sub_1ABB9858C(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1ABB98420(double a1)
{
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v2;
  sub_1ABA7BBC0();
  *v10 = v9;

  if (v1)
  {
    v11 = *(v9 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1ABB9855C, 0, 0);
}

uint64_t sub_1ABB9855C()
{
  **(v0 + 16) = *(v0 + 32);
  sub_1ABA7BBE0();
  return v1();
}

uint64_t sub_1ABB9858C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a2;
  v6[10] = a4;
  v6[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1ABB985B4, 0, 0);
}

uint64_t sub_1ABB985B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  v15 = v14[12];
  v16 = v14[8];
  sub_1ABB98D34();
  v14[13] = v17;
  v18 = *(v14[9] + 128);
  v19 = swift_task_alloc();
  v14[14] = v19;
  *v19 = v14;
  v19[1] = sub_1ABB98858;
  sub_1ABA8BF40();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, sub_1ABDF7E7C, a10, a11, a12, a13, a14);
}

uint64_t sub_1ABB98858()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 112);
  *v3 = *v1;
  *(v2 + 120) = v6;
  *(v2 + 128) = v0;

  if (v0)
  {
    v7 = sub_1ABB98B2C;
  }

  else
  {
    v7 = sub_1ABB98960;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1ABB98960()
{
  v1 = v0[15];
  v2 = v0[13];
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v3 = sub_1ABF23BD4();
  v4 = [v1 featureValueForName_];
  swift_unknownObjectRelease();

  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = [v4 dictionaryValue];

  sub_1ABB373C8();
  v6 = sub_1ABF23974();

  v0[7] = 1;
  sub_1ABF249F4();
  v7 = sub_1ABAD5744((v0 + 2), v6);

  sub_1ABAFDC60((v0 + 2));
  if (v7)
  {
    v8 = v0[15];
    [v7 doubleValue];
    v10 = v9;
    swift_unknownObjectRelease();

    sub_1ABA7BBE0();
    v12.n128_u64[0] = v10;
  }

  else
  {
LABEL_4:
    v13 = v0[15];
    sub_1ABB91E74();
    sub_1ABA7BD00();
    *v14 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1ABA7BBE0();
  }

  return v11(v12);
}

uint64_t sub_1ABB98B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA88600();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[13];
  swift_unknownObjectRelease();
  v26 = v22[16];
  if (qword_1EB4CE7C0 != -1)
  {
    sub_1ABA7BFD0();
  }

  v27 = v22[11];
  v28 = sub_1ABF237F4();
  sub_1ABA7AA24(v28, qword_1EB4CE7C8);

  v29 = v26;
  v30 = sub_1ABF237D4();
  v31 = sub_1ABF24664();

  if (os_log_type_enabled(v30, v31))
  {
    v33 = v22[10];
    v32 = v22[11];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    a10 = v36;
    *v34 = 136315394;
    v37 = v32 == 0;
    if (v32)
    {
      v38 = v33;
    }

    else
    {
      v38 = 0x20746C7561666564;
    }

    if (v37)
    {
      v39 = 0xED00006C65646F6DLL;
    }

    else
    {
      v39 = v27;
    }

    sub_1ABADD6D8(v38, v39, &a10);

    sub_1ABA97A84();
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v40;
    *v35 = v40;
    sub_1ABA84004(&dword_1ABA78000, v41, v42, "[ERInferenceService] Failed to generate predictions for %s: %@");
    sub_1ABA925A4(v35, &unk_1EB4D57F0, &qword_1ABF390C0);
    sub_1ABA7BC34();
    sub_1ABA84B54(v36);
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  sub_1ABB91E74();
  sub_1ABA7BD00();
  *v43 = 0;
  swift_willThrow();

  sub_1ABA7BBE0();
  sub_1ABA8BF40();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

void sub_1ABB98D34()
{
  swift_getObjectType();
  v0 = MLFeatureProvider.dictionary.getter();
  sub_1ABAD219C(&qword_1EB4D3EA0, &qword_1ABF40F88);
  v1 = sub_1ABF24D24();
  v2 = v1;
  v3 = 0;
  v5 = v0 + 64;
  v4 = *(v0 + 64);
  v27 = v0;
  v6 = 1 << *(v0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  v26 = v1 + 64;
  if ((v7 & v4) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v3 << 6);
      v14 = (*(v27 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(v27 + 56) + 8 * v13);

      v18 = v17;
      if ([v18 type] == 2)
      {
        [v18 doubleValue];
        if ((~v19 & 0x7FF0000000000000) == 0 && (v19 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v25 = [objc_opt_self() featureValueWithDouble_];

          v18 = v25;
        }
      }

      *(v26 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v20 = (v2[6] + 16 * v13);
      *v20 = v16;
      v20[1] = v15;
      *(v2[7] + 8 * v13) = v18;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v2[2] = v23;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v3 >= v9)
      {

        sub_1ABDF8098(v2);

        v24 = objc_allocWithZone(MEMORY[0x1E695FE48]);
        sub_1ABDF9974();
        return;
      }

      v12 = *(v5 + 8 * v3);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABB98F58()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1ABB98FB4(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 120);
  *a1 = *(*v1 + 112);
  *(a1 + 8) = v2;
}

uint64_t sub_1ABB98FCC(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1ABA7FDA0;

  return sub_1ABB97CE4(a1, a2, a3);
}

uint64_t sub_1ABB99080()
{
  sub_1ABA906D0();
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  type metadata accessor for EntityRelevanceMLModelInferenceServiceDefinition.Runner();
  swift_allocObject();

  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_1ABB9916C;
  sub_1ABA8E16C();

  return sub_1ABB978D0();
}

uint64_t sub_1ABB9916C()
{
  sub_1ABA7BBF8();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1ABB9927C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1ABB9931C;

  return sub_1ABB99080();
}

uint64_t sub_1ABB9931C(uint64_t a1)
{
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v2;
  sub_1ABA7BBC0();
  *v10 = v9;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t EntityRelevanceMLModelInferenceServiceRunEvent.modelVersionString.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1ABB99478(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365727574616566 && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001ABF891D0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABB9958C(char a1)
{
  if (!a1)
  {
    return 0x65726F6373;
  }

  if (a1 == 1)
  {
    return 0x7365727574616566;
  }

  return 0xD000000000000012;
}

uint64_t sub_1ABB995EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB99478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB99614(uint64_t a1)
{
  v2 = sub_1ABB99880();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB99650(uint64_t a1)
{
  v2 = sub_1ABB99880();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityRelevanceMLModelInferenceServiceRunEvent.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3E60, &qword_1ABF40BF0);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v12 = *v1;
  v13 = v1[1];
  v17[1] = v1[2];
  v18 = v13;
  v14 = v1[3];
  v15 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB99880();
  sub_1ABF252E4();
  v22 = 0;
  sub_1ABF24F54();
  if (!v2)
  {
    v21 = v18;
    v20 = 1;
    sub_1ABAD219C(&qword_1EB4D3E68, &qword_1ABF40BF8);
    sub_1ABB99B30(&qword_1EB4D3E70);
    sub_1ABF24F84();
    v19 = 2;
    sub_1ABF24ED4();
  }

  return (*(v6 + 8))(v11, v4);
}

unint64_t sub_1ABB99880()
{
  result = qword_1EB4CEA10;
  if (!qword_1EB4CEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA10);
  }

  return result;
}

uint64_t EntityRelevanceMLModelInferenceServiceRunEvent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D3E78, &qword_1ABF40C00);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB99880();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  sub_1ABF24E34();
  v11 = v10;
  sub_1ABAD219C(&qword_1EB4D3E68, &qword_1ABF40BF8);
  sub_1ABB99B30(&qword_1EB4D3E80);
  sub_1ABF24E64();
  v12 = sub_1ABF24DB4();
  v14 = v13;
  v15 = sub_1ABA7BFF0();
  v16(v15);
  *a2 = v11;
  a2[1] = v18;
  a2[2] = v12;
  a2[3] = v14;

  sub_1ABA84B54(a1);
}

uint64_t sub_1ABB99B30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D3E68, &qword_1ABF40BF8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABB99BF0()
{
  result = qword_1EB4CE9F0;
  if (!qword_1EB4CE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9F0);
  }

  return result;
}

unint64_t sub_1ABB99C44()
{
  result = qword_1EB4CE9F8;
  if (!qword_1EB4CE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityRelevanceMLModelInferenceServiceRunEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABB99DE4()
{
  result = qword_1EB4D3E88;
  if (!qword_1EB4D3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3E88);
  }

  return result;
}

unint64_t sub_1ABB99E3C()
{
  result = qword_1EB4CE960;
  if (!qword_1EB4CE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE960);
  }

  return result;
}

unint64_t sub_1ABB99E94()
{
  result = qword_1EB4CEB50;
  if (!qword_1EB4CEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEB50);
  }

  return result;
}

uint64_t sub_1ABB99F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABB99F98()
{
  result = qword_1EB4CE968;
  if (!qword_1EB4CE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE968);
  }

  return result;
}

unint64_t sub_1ABB99FEC()
{
  result = qword_1EB4CE970;
  if (!qword_1EB4CE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE970);
  }

  return result;
}

unint64_t sub_1ABB9A044()
{
  result = qword_1EB4CE998;
  if (!qword_1EB4CE998)
  {
    sub_1ABAE2850(&qword_1EB4D3E90, &unk_1ABF40E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE998);
  }

  return result;
}

uint64_t sub_1ABB9A0A8(uint64_t a1, uint64_t a2)
{
  result = sub_1ABB9A1B0(&qword_1EB4CE958, a2, type metadata accessor for EntityRelevanceMLModelInferenceServiceDefinition.Runner);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB9A104()
{
  result = qword_1EB4CEA00;
  if (!qword_1EB4CEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA00);
  }

  return result;
}

unint64_t sub_1ABB9A15C()
{
  result = qword_1EB4CEA08;
  if (!qword_1EB4CEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA08);
  }

  return result;
}

uint64_t sub_1ABB9A1B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABB9A1F8()
{
  sub_1ABA906D0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1ABA7FDA0;
  sub_1ABA8E16C();

  return sub_1ABB98350(v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1ABB9A2C0()
{
  result = qword_1EB4CE988;
  if (!qword_1EB4CE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE988);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityRelevanceMLModelInferenceServiceDefinition.ConfigParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABB9A400()
{
  result = qword_1EB4D3EB8;
  if (!qword_1EB4D3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3EB8);
  }

  return result;
}

unint64_t sub_1ABB9A458()
{
  result = qword_1EB4CE978;
  if (!qword_1EB4CE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE978);
  }

  return result;
}

unint64_t sub_1ABB9A4B0()
{
  result = qword_1EB4CE980;
  if (!qword_1EB4CE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE980);
  }

  return result;
}

uint64_t sub_1ABB9A510@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v27 = *(a1 + 48);
  v28 = *(a1 + 40);
  v25 = *(a1 + 64);
  v26 = *(a1 + 56);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v24 = *(a1 + 96);
  v10 = *(a1 + 104);
  v29 = *(a1 + 112);
  v30 = *(a1 + 120);
  v31 = *(a1 + 128);
  memcpy(__dst, (a1 + 136), sizeof(__dst));
  v11 = sub_1ABBA1DE0(a2, v6);
  v12 = objc_autoreleasePoolPush();
  sub_1ABBA45E0(v11, &v33);

  objc_autoreleasePoolPop(v12);
  memcpy(v32, __src, 0x3C8uLL);
  sub_1ABB9AEA4(v32);
  memcpy(v35, v32, sizeof(v35));
  if (!v8)
  {
    memcpy(v32, (a1 + 136), 0xB8uLL);
    v23 = sub_1ABB9AE48(v32);
    v22 = *&v32[21];
    if (v23 == 1)
    {
      v22 = 0.0;
    }

    *a3 = v6;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    goto LABEL_9;
  }

  v13 = sub_1ABF23C84();
  v15 = v14;
  v16 = sub_1ABF23C84();
  v18 = sub_1ABB9A7AC(v13, v15, v16, v17);

  if (!__OFADD__(v18, 1))
  {
    v20 = 1.0 / (v18 + 1);
    memcpy(v32, __dst, 0xB8uLL);
    v21 = sub_1ABB9AE48(v32);
    v22 = *&v32[21];
    *a3 = v6;
    if (v21 == 1)
    {
      v22 = 0.0;
    }

    *(a3 + 8) = v20;
    *(a3 + 16) = v20;
    *(a3 + 24) = 0;
LABEL_9:
    *(a3 + 32) = v22;
    *(a3 + 40) = v28;
    *(a3 + 48) = v27;
    *(a3 + 56) = v26;
    *(a3 + 64) = v25;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0;
    memcpy((a3 + 112), v35, 0x3C9uLL);
    *(a3 + 1152) = 0;
    *(a3 + 1088) = 0;
    *(a3 + 1096) = 1;
    *(a3 + 1104) = v9;
    *(a3 + 1112) = v24;
    *(a3 + 1120) = v10;
    *(a3 + 1128) = v29;
    *(a3 + 1136) = v30;
    *(a3 + 1144) = v31;
    sub_1ABB9AE60(v28, v27);
  }

  __break(1u);
  return result;
}

unint64_t sub_1ABB9A7AC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = sub_1ABF23D44();
  v62 = sub_1ABF23D44();
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_54;
  }

  v12 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
LABEL_54:
    if (v62 <= v10)
    {
      return v10;
    }

    else
    {
      return v62;
    }
  }

  if (__OFADD__(v62, 1))
  {
    goto LABEL_84;
  }

  v13 = sub_1ABB9ACDC(0, v62 + 1);
  if (__OFADD__(v10, 1))
  {
    goto LABEL_85;
  }

  v14 = sub_1ABB9AD80(v13, v10 + 1);
  if (v10 < 1)
  {
    goto LABEL_86;
  }

  v5 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_87;
  }

  while (1)
  {
    if (v5[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      a2 = v5[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5[5] = a2;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_13;
      }
    }

    sub_1ABD8EF00(a2);
    a2 = v58;
    v5[5] = v58;
LABEL_13:
    if (!*(a2 + 16))
    {
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    *(a2 + 32) = 1;
    v16 = v10 - 1;
    if (v10 != 1)
    {
      v4 = v5 + 6;
      v51 = 2;
      while (v51 < v5[2])
      {
        a2 = *v4;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        *v4 = a2;
        if ((v52 & 1) == 0)
        {
          sub_1ABD8EF00(a2);
          a2 = v53;
          *v4 = v53;
        }

        if (!*(a2 + 16))
        {
          goto LABEL_81;
        }

        *(a2 + 32) = v51++;
        ++v4;
        if (!--v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

LABEL_15:
    if (v62 < 1)
    {
      goto LABEL_91;
    }

    if (v5[2])
    {
      v4 = v5 + 4;
      a2 = v5[4];
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v5[4] = a2;
      if (v17)
      {
        goto LABEL_18;
      }

      goto LABEL_93;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    sub_1ABD8EF00(a2);
    a2 = v59;
LABEL_18:
    if (*(a2 + 16) < 2uLL)
    {
      break;
    }

    *(a2 + 40) = 1;
    *v4 = a2;
    v18 = v62 - 1;
    if (v62 == 1)
    {
LABEL_20:
      v60 = v10;
      v61 = v5;
      v19 = 1;
LABEL_21:
      v20 = 0;
      v21 = v19 - 1;
      while (1)
      {
        sub_1ABF23D84();
        v22 = sub_1ABF23E94();
        v24 = v23;
        sub_1ABF23D84();
        v26 = v22 == sub_1ABF23E94() && v24 == v25;
        if (v26)
        {

          v27 = 0;
        }

        else
        {
          v22 = sub_1ABF25054();

          v27 = (v22 & 1) == 0;
        }

        v28 = *(v61 + 16);
        if (v21 >= v28)
        {
          break;
        }

        v22 = v20 + 1;
        v29 = v4[v21];
        if (v20 + 1 >= *(v29 + 16))
        {
          goto LABEL_72;
        }

        v30 = v29 + 8 * v20;
        v31 = *(v30 + 40);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_73;
        }

        if (v19 >= v28)
        {
          goto LABEL_74;
        }

        v34 = v4[v19];
        if (v20 >= *(v34 + 16))
        {
          goto LABEL_75;
        }

        v35 = *(v34 + 8 * v20 + 32);
        v32 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v32)
        {
          goto LABEL_76;
        }

        v37 = *(v30 + 32);
        v32 = __OFADD__(v37, v27);
        v38 = v37 + v27;
        if (v32)
        {
          goto LABEL_77;
        }

        if (v36 < v33)
        {
          v33 = v36;
        }

        if (v38 >= v33)
        {
          v39 = v33;
        }

        else
        {
          v39 = v38;
        }

        v40 = v4[v19];
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v4[v19] = v34;
        if ((v41 & 1) == 0)
        {
          sub_1ABD8EF00(v34);
          v34 = v42;
          v4[v19] = v42;
        }

        if (v22 >= *(v34 + 16))
        {
          goto LABEL_78;
        }

        *(v34 + 8 * v20++ + 40) = v39;
        if (v62 == v20)
        {
          v10 = v60;
          v26 = v19++ == v60;
          if (!v26)
          {
            goto LABEL_21;
          }

          v43 = sub_1ABB310C0(v61);
          if (!v43 || (v22 = sub_1ABB310F4(v43), v45 = v44, , (v45 & 1) != 0))
          {
            if (qword_1ED871B18 != -1)
            {
              goto LABEL_95;
            }

            goto LABEL_49;
          }

LABEL_79:

          return v22;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v54 = 6;
    while (v5[2])
    {
      a2 = *v4;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      *v4 = a2;
      if ((v55 & 1) == 0)
      {
        sub_1ABD8EF00(a2);
        a2 = v56;
        *v4 = v56;
      }

      if ((v54 - 4) >= *(a2 + 16))
      {
        goto LABEL_83;
      }

      *(a2 + 8 * v54) = v54 - 4;
      ++v54;
      if (!--v18)
      {
        goto LABEL_20;
      }
    }

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
    sub_1ABD8EF18(v5);
    v5 = v57;
  }

  __break(1u);
LABEL_95:
  swift_once();
LABEL_49:
  v46 = sub_1ABF237F4();
  sub_1ABA7AA24(v46, qword_1ED871B20);
  v47 = sub_1ABF237D4();
  v48 = sub_1ABF24664();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1ABA78000, v47, v48, "Edit distance error. Empty output matrix.", v49, 2u);
    MEMORY[0x1AC5AB8B0](v49, -1, -1);
  }

  if (v62 <= v10)
  {
    return v10;
  }

  else
  {
    return v62;
  }
}

uint64_t sub_1ABB9ACDC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_1ABF24164();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1ABF34750)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1ABB9AD80(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      sub_1ABAD219C(&qword_1EB4D1970, &qword_1ABF33B00);
      v4 = sub_1ABF24164();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

uint64_t sub_1ABB9AE48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABB9AE60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABB9AEAC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABB9AEC4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1ABB9AF18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1ABB9AF7C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1ABF23EC4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB9AFC8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1ABAB4CF4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1ABBA04D4(v6);
  return sub_1ABF24BA4();
}

char *sub_1ABB9B044(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A2B4(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABBA05B4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1ABB9B0B0()
{
  v0 = sub_1ABF24D84();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1ABB9B0FC(char a1)
{
  result = 0x7974706D65;
  switch(a1)
  {
    case 1:
      result = 0x636E6176656C6572;
      break;
    case 2:
      result = 0x75747865746E6F63;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6553726F74636576;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB9B1D0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1ABACFBFC();
}

uint64_t sub_1ABB9B1F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABB9B0B0();
  *a2 = result;
  return result;
}

unint64_t sub_1ABB9B224@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1ABB9B0FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABB9B300(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  LOBYTE(v7) = a2;
  v8 = a1;
  LOBYTE(v9) = *v4;
  v10 = *(v4 + 8);
  i = *(v4 + 16);
  v12 = *(v4 + 24);
  v35 = v10;
  if ((a2 & 1) == 0)
  {
    sub_1ABBA043C();
    sub_1ABBA0480();
    v13 = sub_1ABF239C4();
    goto LABEL_5;
  }

  LOBYTE(__src[0]) = *v4;
  __src[1] = v10;
  __src[2] = i;
  __src[3] = v12;
  v13 = sub_1ABB9B6D8(a1);
  if (!v5)
  {
LABEL_5:
    v14 = v13;
    goto LABEL_6;
  }

  sub_1ABBA043C();
  sub_1ABBA0480();
  v14 = sub_1ABF239C4();
  v6 = 0;
LABEL_6:

  if (qword_1ED871B18 != -1)
  {
LABEL_34:
    sub_1ABA7D4EC();
    swift_once();
  }

  v15 = sub_1ABF237F4();
  sub_1ABA7AA24(v15, qword_1ED871B20);

  v16 = sub_1ABF237D4();
  v17 = sub_1ABF24654();
  v18 = sub_1ABA84024();
  v20 = os_log_type_enabled(v18, v19);
  v36 = v9;
  v33 = v12;
  v34 = i;
  v46 = v14;
  if (v20)
  {
    v9 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    __src[0] = v39;
    *v9 = 136315394;
    if (v7)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v7)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    v23 = v14;
    v24 = sub_1ABADD6D8(v21, v22, __src);

    *(v9 + 4) = v24;
    *(v9 + 12) = 2048;
    v25 = *(v23 + 16);

    *(v9 + 14) = v25;

    _os_log_impl(&dword_1ABA78000, v16, v17, "ECR reranker: includeFeatures: %s. Fetched features count: %ld", v9, 0x16u);
    sub_1ABA84B54(v39);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v26 = sub_1ABAAB7C8(v8);
  v14 = 0;
  v40 = v8 & 0xC000000000000001;
  v12 = v8 & 0xFFFFFFFFFFFFFF8;
  v7 = MEMORY[0x1E69E7CC0];
  for (i = v8; ; v8 = i)
  {
    if (v26 == v14)
    {

      return v7;
    }

    if (v40)
    {
      v9 = MEMORY[0x1AC5AA170](v14, v8);
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_33;
      }

      v9 = *(v8 + 8 * v14 + 32);
    }

    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    __dst[88] = v36;
    v42 = v35;
    v43 = v34;
    v44 = v33;
    sub_1ABB9BB20(__src, v9, a3, a4, v46);
    if (v6)
    {
      break;
    }

    memcpy(__dst, __src, 0x58uLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = *(v7 + 16);
      sub_1ABA7BEF0();
      sub_1ABADA44C();
      v7 = v30;
    }

    v28 = *(v7 + 16);
    v27 = *(v7 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1ABA7BBEC(v27);
      sub_1ABADA44C();
      v7 = v31;
    }

    *(v7 + 16) = v28 + 1;
    memcpy((v7 + 88 * v28 + 32), __dst, 0x58uLL);
    ++v14;
  }

  return v7;
}

uint64_t sub_1ABB9B6D8(uint64_t a1)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = v1[1];
    v4 = v1[3];
    v5 = a1;
    v37 = a1 & 0xC000000000000001;
    v38 = sub_1ABAAB7C8(a1);
    v31 = v5;
    v32 = v3;
    v35 = v5 + 32;
    v36 = v5 & 0xFFFFFFFFFFFFFF8;
    swift_unknownObjectRetain();
    v33 = v2;
    swift_unknownObjectRetain();
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (v6 != v38)
    {
      if (v37)
      {
        v8 = MEMORY[0x1AC5AA170](v6, v31);
      }

      else
      {
        if (v6 >= *(v36 + 16))
        {
          goto LABEL_40;
        }

        v8 = *(v35 + 8 * v6);
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
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
        goto LABEL_45;
      }

      swift_beginAccess();
      v10 = *(v8 + 16);
      v11 = *(v10 + 16);
      if (v11)
      {
        v39 = v7;
        v40 = v6;
        v46 = MEMORY[0x1E69E7CC0];

        sub_1ABADDBD4();
        v12 = v46;
        v13 = v11 - 1;
        for (i = 32; ; i += 328)
        {
          memcpy(__dst, (v10 + i), 0x145uLL);
          if ((__dst[0] & 0x80000000000000) != 0)
          {
            v15 = 3826797;
          }

          else
          {
            v15 = 3828069;
          }

          v42 = __dst[0];
          v43 = v15;
          v44 = 0xE300000000000000;
          sub_1ABBA193C(__dst, v41);
          v16 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v16);

          sub_1ABBA1998(__dst);
          v17 = v43;
          v18 = v44;
          v46 = v12;
          v19 = *(v12 + 16);
          if (v19 >= *(v12 + 24) >> 1)
          {
            sub_1ABADDBD4();
            v12 = v46;
          }

          *(v12 + 16) = v19 + 1;
          v20 = v12 + 16 * v19;
          *(v20 + 32) = v17;
          *(v20 + 40) = v18;
          if (!v13)
          {
            break;
          }

          --v13;
        }

        v7 = v39;
        v6 = v40;
      }

      else
      {

        v12 = MEMORY[0x1E69E7CC0];
      }

      v21 = *(v12 + 16);
      v5 = *(v7 + 16);
      if (__OFADD__(v5, v21))
      {
        goto LABEL_41;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v5 + v21 > *(v7 + 24) >> 1)
      {
        sub_1ABAAA4F4();
        v7 = v22;
      }

      if (*(v12 + 16))
      {
        if ((*(v7 + 24) >> 1) - *(v7 + 16) < v21)
        {
          goto LABEL_43;
        }

        swift_arrayInitWithCopy();

        if (v21)
        {
          v23 = *(v7 + 16);
          v9 = __OFADD__(v23, v21);
          v24 = v23 + v21;
          if (v9)
          {
            goto LABEL_44;
          }

          *(v7 + 16) = v24;
        }
      }

      else
      {

        if (v21)
        {
          goto LABEL_42;
        }
      }
    }

    sub_1ABC3FAA4();
    if (!v34)
    {
      v5 = v25;
    }

    sub_1ABBA19EC(v32, v33);
    return v5;
  }

  else
  {
    if (qword_1ED871B18 != -1)
    {
LABEL_45:
      swift_once();
    }

    v26 = sub_1ABF237F4();
    sub_1ABA7AA24(v26, qword_1ED871B20);
    v27 = sub_1ABF237D4();
    v28 = sub_1ABF24664();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1ABA78000, v27, v28, "Unable to access kv feature store. Returning default feature values for request.", v29, 2u);
      MEMORY[0x1AC5AB8B0](v29, -1, -1);
    }

    sub_1ABBA043C();
    sub_1ABBA0480();
    return sub_1ABF239C4();
  }
}

void sub_1ABB9C9C0(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v238 = v3;
  v249 = v5;
  v250 = v4;
  v254 = v6;
  v256 = v7;
  v9 = v8;
  v283 = v2;
  v290 = sub_1ABF21944();
  v10 = sub_1ABA7BB64(v290);
  v276 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v287 = v15 - v14;
  v274 = *v9;
  v16 = *(v9 + 24);
  v367 = *(v9 + 8);
  v368 = v16;
  v251 = *(v9 + 40);
  v252 = *(v9 + 48);
  v258 = *(v9 + 56);
  v259 = *(v9 + 64);
  v366 = *(v9 + 72);
  v17 = *(v9 + 88);
  v365 = *(v9 + 96);
  v364[0] = *(v9 + 97);
  *(v364 + 3) = *(v9 + 100);
  v267 = *(v9 + 104);
  v253 = *(v9 + 120);
  v248 = *(v9 + 128);
  v18 = *(v9 + 152);
  v361 = *(v9 + 136);
  v362 = v18;
  v19 = *(v9 + 176);
  v363 = *(v9 + 168);
  v20 = *(v9 + 192);
  v21 = *(v9 + 208);
  v261 = *(v9 + 200);
  v22 = *(v9 + 216);
  v268 = *(v9 + 184);
  v269 = *(v9 + 224);
  v23 = *(v9 + 232);
  v24 = *(v9 + 240);
  v271 = *(v9 + 256);
  v272 = *(v9 + 248);
  v270 = *(v9 + 264);
  v25 = *(v9 + 288);
  v360 = *(v9 + 304);
  v26 = *(v9 + 272);
  v359 = v25;
  v358 = v26;
  v357 = *(v9 + 324);
  v356 = *(v9 + 320);
  HIDWORD(v244) = *v1;
  v242 = v1[2];
  v243 = v1[1];
  v241 = v1[3];
  sub_1ABAD219C(&qword_1EB4D3EC0, &qword_1ABF41168);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1ABF39090;
  v28 = *(v9 + 152);
  v369 = *(v9 + 136);
  v370 = v28;
  v29 = *(v9 + 288);
  v384 = *(v9 + 272);
  v371 = *(v9 + 168);
  v265 = v23;
  v266 = v19;
  v372 = v19;
  v30 = v261;
  v373 = v268;
  v374 = v20;
  v375 = v261;
  v262 = v22;
  v263 = v21;
  v376 = v21;
  v377 = v22;
  v378 = v269;
  v379 = v23;
  v264 = v24;
  v380 = v24;
  v31 = v272;
  v381 = v272;
  v382 = v271;
  v383 = v270;
  v385 = v29;
  v386 = *(v9 + 304);
  v260 = v20;
  if (sub_1ABB9AE48(&v369) == 1)
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v34 = 0;
    v35 = 0;
    *(v27 + 96) = 0;
    *(v27 + 64) = 0u;
    *(v27 + 80) = 0u;
    *(v27 + 32) = 0u;
    *(v27 + 48) = 0u;
  }

  else
  {
    v36 = v371;
    *(v27 + 32) = *(&v370 + 1);
    *(v27 + 40) = v36;
    *(v27 + 48) = v266;
    *(v27 + 56) = v268;
    *(v27 + 64) = v20;
    *(v27 + 72) = v261;
    *(v27 + 80) = v21;
    *(v27 + 88) = v22;
    *(v27 + 96) = v269;

    v32 = v265;

    v33 = v24;
    v34 = v271;
    v35 = v270;
  }

  v37 = v27;
  *(v27 + 104) = v32;
  *(v27 + 112) = v33;
  *(v27 + 120) = v31;
  *(v27 + 128) = v34;
  *(v27 + 136) = v35;
  v240 = *(&v267 + 1);
  v38 = v258;
  v40 = v254;
  v39 = v256;
  v294 = v27;
  if (!*(v283 + 32))
  {
    v44 = 0;
    v45 = MEMORY[0x1E69E7CC0];
    v46 = v269;
LABEL_7:
    v47 = 16 * v44 + 40;
    while (v44 != 7)
    {
      if (v44 > 6)
      {
LABEL_97:
        __break(1u);
        sub_1ABA7D4EC();
        swift_once();
        v213 = sub_1ABF237F4();
        sub_1ABA7AA24(v213, qword_1ED871B20);
        v214 = sub_1ABF237D4();
        v215 = sub_1ABF24664();
        v216 = sub_1ABA84024();
        if (os_log_type_enabled(v216, v217))
        {
          v218 = sub_1ABA88598();
          *v218 = 0;
          _os_log_impl(&dword_1ABA78000, v214, v215, "Decoding error while collating features. Returning empty entity", v218, 2u);
          sub_1ABA7BDD8();
          MEMORY[0x1AC5AB8B0]();
        }

        v219 = sub_1ABA81694();
        if (v221)
        {
          v222 = v220;
        }

        else
        {
          v222 = v219;
        }

        sub_1ABB9AE18(v301);
        v223 = v365;
        *v249 = v274;
        *(v249 + 8) = 0;
        *(v249 + 16) = 0;
        *(v249 + 24) = 0;
        *(v249 + 32) = v222;
        *(v249 + 40) = v251;
        *(v249 + 48) = v252;
        *(v249 + 56) = v38;
        *(v249 + 64) = v40;
        *(v249 + 72) = 0u;
        *(v249 + 88) = 0u;
        *(v249 + 104) = 0;
        memcpy((v249 + 112), v301, 0x3C9uLL);
        *(v249 + 1152) = 0;
        *(v249 + 1088) = 0;
        *(v249 + 1096) = 1;
        *(v249 + 1104) = v17;
        *(v249 + 1112) = v223;
        *(v249 + 1136) = vdupq_n_s64(v253);
        *(v249 + 1120) = v267;
        swift_bridgeObjectRetain_n();
        sub_1ABB9AE60(v251, v252);

        return;
      }

      ++v44;
      v48 = v47 + 16;
      v30 = *(v37 + v47);
      v47 += 16;
      if (v30)
      {
        v49 = *(v37 + v48 - 24);

        v38 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = *(v45 + 16);
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v45 = v54;
        }

        v51 = *(v45 + 16);
        v50 = *(v45 + 24);
        v37 = v294;
        if (v51 >= v50 >> 1)
        {
          sub_1ABA7BBEC(v50);
          sub_1ABAAA4F4();
          v45 = v55;
          v37 = v294;
        }

        *(v45 + 16) = v51 + 1;
        v52 = v45 + 16 * v51;
        *(v52 + 32) = v49;
        *(v52 + 40) = v30;
        v40 = v254;
        v39 = v256;
        v46 = v38;
        goto LABEL_7;
      }
    }

    sub_1ABB9ED18();

    v42 = *&v301[8];
    if (*&v301[8])
    {
      v41 = *v301;
      v43 = *&v301[16];
      v38 = v258;
      goto LABEL_18;
    }

    swift_setDeallocating();
    sub_1ABB4DB98();
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7D4EC();
      swift_once();
    }

    v186 = sub_1ABF237F4();
    sub_1ABA7AA24(v186, qword_1ED871B20);
    v187 = sub_1ABF237D4();
    v188 = sub_1ABF24644();
    v189 = sub_1ABA84024();
    if (os_log_type_enabled(v189, v190))
    {
      v191 = sub_1ABA88598();
      *v191 = 0;
      _os_log_impl(&dword_1ABA78000, v187, v188, "Nil span passed to contextualModel. Falling back to relevance ranking.", v191, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    sub_1ABA7D500();
    *&v301[56] = v258;
    *&v301[64] = v259;
    goto LABEL_73;
  }

  v245 = *(v283 + 40);
  v41 = *(v283 + 24);

  v43 = v245;
LABEL_18:
  v56 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v56 = v40 & 0xFFFFFFFFFFFFLL;
  }

  v57 = *(&v43 + 1);
  if ((4 * v56) < *(&v43 + 1) >> 14)
  {

    swift_setDeallocating();
    sub_1ABB4DB98();
    sub_1ABA7D500();
    *&v301[56] = v38;
    *&v301[64] = v259;
LABEL_73:
    sub_1ABA9A34C();
    v301[96] = *(v192 + 208);
    *(v193 + 97) = v364[0];
    *&v301[100] = *(v192 + 203);
    sub_1ABA837D4();
    sub_1ABA7E53C(v260);
    sub_1ABB9E620(v301, v250, v249);
    return;
  }

  v234 = v41;
  v236 = v42;
  v246 = v43;
  v58 = sub_1ABF23EC4();
  v59 = MEMORY[0x1AC5A9330](v58);
  v60 = v40;
  v62 = v61;

  *v301 = v59;
  *&v301[8] = v62;
  v63 = sub_1ABA8E7B8();
  MEMORY[0x1AC5A9410](v63);
  v64 = sub_1ABB9AF7C(v57, v60, v39);
  v65 = MEMORY[0x1AC5A9330](v64);
  v67 = v66;

  MEMORY[0x1AC5A9410](v65, v67);

  sub_1ABE85170();

  sub_1ABF23C84();

  sub_1ABBE6A60();
  v70 = sub_1ABA8E794(v68, v69);
  v72 = v71;

  v232 = sub_1ABE84B8C(v70, v72);
  v233 = v73;

  v74 = sub_1ABF23EC4();
  MEMORY[0x1AC5A9330](v74);

  sub_1ABE85170();

  sub_1ABF23C84();

  sub_1ABBE6A60();
  v77 = sub_1ABA8E794(v75, v76);
  v79 = v78;

  v280 = sub_1ABE84B8C(v77, v79);
  v284 = v80;

  v351 = MEMORY[0x1E69E7CC0];
  sub_1ABADE0CC(0, 7, 0);
  v81 = 0;
  v82 = v351;
  v277 = v276 + 1;
  v83 = v294;
  do
  {
    if (*(v83 + v81 + 40))
    {
      v84 = *(v83 + v81 + 32);

      sub_1ABE85170();
      sub_1ABF23C84();

      sub_1ABBE6A60();
      v87 = sub_1ABA8E794(v85, v86);
      v89 = v88;

      v90 = objc_autoreleasePoolPush();
      *v301 = v87;
      *&v301[8] = v89;
      sub_1ABF21924();
      sub_1ABAE28EC();
      sub_1ABAA5264();
      v91 = sub_1ABF24874();
      (*v277)(v287, v290);

      *v301 = v91;
      sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
      sub_1ABAAA5C0();
      sub_1ABA8E7B8();
      v92 = sub_1ABF23B54();
      v94 = v93;

      objc_autoreleasePoolPop(v90);
      v95 = objc_autoreleasePoolPush();
      sub_1ABBA0194(v92, v94, v280, v284, v301);

      objc_autoreleasePoolPop(v95);

      v96 = *v301;
      v83 = v294;
    }

    else
    {
      v96 = 0;
    }

    v351 = v82;
    v98 = *(v82 + 16);
    v97 = *(v82 + 24);
    if (v98 >= v97 >> 1)
    {
      v99 = sub_1ABA7BBEC(v97);
      sub_1ABADE0CC(v99, v98 + 1, 1);
      v83 = v294;
      v82 = v351;
    }

    *(v82 + 16) = v98 + 1;
    *(v82 + 4 * v98 + 32) = v96;
    v81 += 16;
  }

  while (v81 != 112);
  v281 = v82;
  swift_setDeallocating();
  sub_1ABB4DB98();

  sub_1ABBA1A30();
  v100 = sub_1ABF239C4();
  v333[0] = v361;
  v333[1] = v362;
  sub_1ABA8FF50(v360);
  v334 = v363;
  v335 = v266;
  v336 = v268;
  v337 = v260;
  v338 = v261;
  v339 = v263;
  v340 = v262;
  v341 = v269;
  v342 = v265;
  v343 = v264;
  v344 = v272;
  v345 = v271;
  v346 = v270;
  *(v101 + 136) = v102;
  if (sub_1ABB9AE48(v333) != 1)
  {

    v100 = sub_1ABB9F3D8(v347, v348, v349, v350, v232, v233);
  }

  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_1ABF34740;
  v319[0] = v361;
  v319[1] = v362;
  sub_1ABA8FF50(v360);
  v320 = v363;
  v321 = v266;
  v322 = v268;
  v323 = v260;
  v324 = v261;
  v325 = v263;
  v326 = v262;
  v327 = v269;
  v328 = v265;
  v329 = v264;
  v330 = v272;
  v331 = v271;
  v332 = v270;
  *(v104 + 136) = v105;
  if (sub_1ABB9AE48(v319) == 1)
  {
    v106 = 0;
    v107 = 0;
  }

  else
  {
    v106 = v331;
  }

  *(v103 + 32) = v106;
  *(v103 + 40) = v107;
  v30 = v236;
  *v301 = v234;
  *&v301[8] = v236;
  *&v301[16] = v246;
  sub_1ABB9F674();
  v109 = v108;
  swift_setDeallocating();
  sub_1ABB4DB98();

  v110 = sub_1ABBA043C();
  v235 = sub_1ABBA0480();
  v237 = v110;
  v111 = sub_1ABF239C4();
  v38 = v100 + 64;
  v112 = 1 << *(v100 + 32);
  v113 = -1;
  if (v112 < 64)
  {
    v113 = ~(-1 << v112);
  }

  v114 = v113 & *(v100 + 64);
  v40 = (v112 + 63) >> 6;
  sub_1ABA8071C();
  v278 = v115;
  sub_1ABA8071C();
  v255 = v116;
  v257 = v117;
  sub_1ABA8071C();
  *&v246 = v118;
  sub_1ABA8071C();
  v239 = v119;
  sub_1ABA8071C();
  v285 = v120;
  sub_1ABA8071C();
  v295 = v121;

  v122 = 0;
  v288 = v100;
LABEL_37:
  v291 = v111;
  while (v114)
  {
LABEL_43:
    v124 = __clz(__rbit64(v114));
    v114 &= v114 - 1;
    v125 = v124 | (v122 << 6);
    v126 = *(*(v100 + 48) + v125);
    v127 = *(*(v100 + 56) + 4 * v125);
    v128 = 0xEA00000000006572;
    v129 = 0x6F63536369706F74;
    v130 = v274;
    switch(v126)
    {
      case 1:
        sub_1ABA97AA4();
        v129 = v132 + 9;
        v128 = v239;
        break;
      case 2:
        sub_1ABA97AA4();
        v129 = v133 + 8;
        v128 = v246;
        break;
      case 3:
        sub_1ABA97AA4();
        v129 = v131 + 4;
        v128 = v255;
        break;
      case 4:
        sub_1ABA97AA4();
        v129 = v134 + 9;
        v128 = v257;
        break;
      case 5:
        sub_1ABA97AA4();
        v129 = v135 + 5;
        v128 = v278;
        break;
      case 6:
        break;
      default:
        v129 = 0xD000000000000012;
        v128 = v285;
        break;
    }

    v136 = 3826797;
    if ((v130 & 0x80000000000000) == 0)
    {
      v136 = 3828069;
    }

    *v301 = v136;
    *&v301[8] = 0xE300000000000000;
    v297[0] = v130;
    v137 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v137);

    *&v352 = 0xD000000000000014;
    *(&v352 + 1) = v295;
    *&v353 = v129;
    *(&v353 + 1) = v128;
    v354 = *v301;
    v138 = [objc_opt_self() featureValueWithDouble_];
    if (v138)
    {
      v30 = v138;
      LODWORD(v233) = swift_isUniquelyReferenced_nonNull_native();
      *v301 = v291;
      v147 = sub_1ABA8E184();
      v232 = sub_1ABAFF5BC(v147);
      v100 = v288;
      if (__OFADD__(v291[2], (v148 & 1) == 0))
      {
        __break(1u);
      }

      else
      {
        v149 = v148;
        sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
        sub_1ABAA5264();
        if (sub_1ABF24C64())
        {
          v150 = sub_1ABA8E184();
          v151 = sub_1ABAFF5BC(v150);
          if ((v149 & 1) != (v152 & 1))
          {
            goto LABEL_100;
          }
        }

        else
        {
          v151 = v232;
        }

        v153 = v149;
        v111 = *v301;
        if (v153)
        {
          v154 = *(*v301 + 56);
          v155 = *(v154 + 8 * v151);
          *(v154 + 8 * v151) = v30;

          v156 = sub_1ABA8E184();
          sub_1ABBA1A84(v156);
          goto LABEL_37;
        }

        *(*v301 + 8 * (v151 >> 6) + 64) |= 1 << v151;
        v157 = (v111[6] + 48 * v151);
        v158 = v352;
        v159 = v354;
        v157[1] = v353;
        v157[2] = v159;
        *v157 = v158;
        *(v111[7] + 8 * v151) = v30;
        v160 = v111[2];
        v161 = __OFADD__(v160, 1);
        v162 = v160 + 1;
        if (!v161)
        {
          v111[2] = v162;
          goto LABEL_37;
        }
      }

      __break(1u);
      objc_autoreleasePoolPop(v40);
      __break(1u);
LABEL_100:
      sub_1ABF25104();
      __break(1u);
      return;
    }

    v139 = sub_1ABA8E184();
    v111 = v291;
    v30 = sub_1ABAFF5BC(v139);
    v141 = v140;
    v142 = sub_1ABA8E184();
    sub_1ABBA1A84(v142);
    v100 = v288;
    if (v141)
    {
      LODWORD(v233) = swift_isUniquelyReferenced_nonNull_native();
      *v301 = v291;
      v143 = v291[3];
      sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
      sub_1ABAA5264();
      sub_1ABF24C64();
      v111 = *v301;
      v144 = (*(*v301 + 48) + 48 * v30);
      v292 = v144[1];
      v145 = v144[3];
      v146 = v144[5];

      sub_1ABF24C84();
      goto LABEL_37;
    }
  }

  while (1)
  {
    v123 = v122 + 1;
    if (__OFADD__(v122, 1))
    {
      __break(1u);
      goto LABEL_97;
    }

    if (v123 >= v40)
    {
      break;
    }

    v114 = *(v38 + 8 * v123);
    ++v122;
    if (v114)
    {
      v122 = v123;
      goto LABEL_43;
    }
  }

  *v301 = v274;
  v163 = EntityIdentifier.stringValue.getter();
  v355[0] = 0xD000000000000014;
  v355[1] = v295;
  v355[2] = 0xD000000000000012;
  v355[3] = v285;
  v355[4] = v163;
  v355[5] = v164;
  v165 = [objc_opt_self() featureValueWithDouble_];
  if (v165)
  {
    v166 = v165;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v301 = v111;
    sub_1ABAFB3A0(v166, v355, isUniquelyReferenced_nonNull_native, v168, v169, v170, v171, v172, v231, v232, v233, v235, v237, v238, v239, *(&v267 + 1), v241, v242, v243, v244, v246, *(&v246 + 1), v247, v248);
    v173 = sub_1ABAA4494();
    sub_1ABBA1A84(v173);
    v174 = *v301;
  }

  else
  {
    v175 = sub_1ABAA4494();
    v176 = sub_1ABAFF5BC(v175);
    if (v177)
    {
      v178 = v176;
      swift_isUniquelyReferenced_nonNull_native();
      *v301 = v111;
      v179 = v111[3];
      sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
      sub_1ABAA5264();
      sub_1ABF24C64();
      v174 = *v301;
      v180 = (*(*v301 + 48) + 48 * v178);
      v181 = v180[1];
      v182 = v180[3];
      v183 = v180[5];

      v184 = *(*(v174 + 56) + 8 * v178);
      sub_1ABF24C84();
      v185 = sub_1ABAA4494();
      sub_1ABBA1A84(v185);
    }

    else
    {
      v194 = sub_1ABAA4494();
      sub_1ABBA1A84(v194);
      v174 = v111;
    }
  }

  sub_1ABAD219C(&qword_1EB4D1360, &unk_1ABF41170);
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_1ABF3BFB0;
  v196 = sub_1ABAD578C(1, v100);
  if ((v196 & 0x100000000) != 0)
  {
    v197 = 0;
  }

  else
  {
    v197 = v196;
  }

  *(v195 + 32) = v197;
  v198 = sub_1ABAD578C(3, v100);
  if ((v198 & 0x100000000) != 0)
  {
    v199 = 0;
  }

  else
  {
    v199 = v198;
  }

  *(v195 + 36) = v199;
  v200 = sub_1ABAD578C(5, v100);
  if ((v200 & 0x100000000) != 0)
  {
    v201 = 0;
  }

  else
  {
    v201 = v200;
  }

  *(v195 + 40) = v201;
  v202 = sub_1ABAD578C(2, v100);

  if ((v202 & 0x100000000) != 0)
  {
    v203 = 0;
  }

  else
  {
    v203 = v202;
  }

  *(v195 + 44) = v203;

  v204 = sub_1ABB9FBC4(v174, v250);
  v205 = sub_1ABBA1DE0(v204, v274);
  v206 = objc_autoreleasePoolPush();
  sub_1ABBA45E0(v205, &v317);

  objc_autoreleasePoolPop(v206);

  memcpy(v298, v318, sizeof(v298));
  v300 = v274;
  v207 = swift_allocObject();
  *(v207 + 16) = xmmword_1ABF34060;
  *(v207 + 32) = 0;
  *(v207 + 36) = v109;
  v299 = v281;
  sub_1ABD7E24C(v207);
  sub_1ABD7E24C(v195);
  v302[0] = v361;
  v302[1] = v362;
  sub_1ABA8FF50(v360);
  v208 = v299;
  v303 = v363;
  v304 = v266;
  v305 = v268;
  v306 = v260;
  v307 = v261;
  v308 = v263;
  v309 = v262;
  v310 = v269;
  v311 = v265;
  v312 = v264;
  v313 = v272;
  v314 = v271;
  v315 = v270;
  *(v209 + 136) = v210;
  v211 = sub_1ABB9AE48(v302);
  v212 = v316;
  if (v211 == 1)
  {
    v212 = 0.0;
  }

  sub_1ABBA2F10(v298, &v300, v208, v365, v267, v240, v253, v248, v301, v212, v17);

  memcpy(v297, v301, 0x488uLL);
  v224 = v297[9];
  v225 = v297[10];
  v226 = v297[11];
  v227 = v297[12];
  v228 = v297[144];
  v229 = v297[138];
  v296 = v297[139];
  v289 = v297[140];
  v293 = v297[0];
  v230 = v297[141];
  v273 = v297[142];
  v275 = v297[143];
  v282 = *&v297[3];
  v286 = *&v297[1];
  v279 = v297[13];
  sub_1ABB9AE60(v251, v252);
  sub_1ABBA1F34(v224, v225);

  sub_1ABB4F2B0(v297);
  *v249 = v293;
  *(v249 + 24) = v282;
  *(v249 + 8) = v286;
  *(v249 + 40) = v251;
  *(v249 + 48) = v252;
  *(v249 + 56) = v258;
  *(v249 + 64) = v259;
  *(v249 + 72) = v224;
  *(v249 + 80) = v225;
  *(v249 + 88) = v226;
  *(v249 + 96) = v227;
  *(v249 + 104) = v279;
  memcpy((v249 + 112), &v297[14], 0x3C9uLL);
  *(v249 + 1152) = v228;
  *(v249 + 1088) = 0;
  *(v249 + 1096) = 1;
  *(v249 + 1104) = v229;
  *(v249 + 1112) = v296;
  *(v249 + 1120) = v289;
  *(v249 + 1128) = v230;
  *(v249 + 1136) = v273;
  *(v249 + 1144) = v275;
}

uint64_t sub_1ABB9E354()
{
  v1 = sub_1ABAD219C(&qword_1EB4D3EC8, &unk_1ABF41180);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for MorphunTokenizer(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1ABA7BC58();
  v9 = (v8 - v7);
  v10 = sub_1ABF21F54();
  sub_1ABA7B9B4(v4, 1, 1, v10);
  result = MorphunTokenizer.init(locale:overrideConfigOptions:)(v4, 0);
  if (!v0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *v9;
    v14 = sub_1ABF22F34();
    MEMORY[0x1EEE9AC00](v14);
    sub_1ABAA491C();
    sub_1ABAAA034();
    v16 = v15;

    objc_autoreleasePoolPop(v12);
    v17 = sub_1ABE8AE5C(v16);
    v18 = objc_autoreleasePoolPush();
    v19 = sub_1ABF22F34();
    MEMORY[0x1EEE9AC00](v19);
    sub_1ABAA491C();
    sub_1ABAAA034();
    v21 = v20;

    objc_autoreleasePoolPop(v18);
    v22 = sub_1ABE8AE5C(v21);

    sub_1ABD91F24(v23, v17);
    v25 = *(v24 + 16);

    if (v25)
    {
      v26 = sub_1ABBA22D8(v22, v17);

      v27 = *(v26 + 16);

      return sub_1ABBA294C(v9);
    }

    else
    {
      sub_1ABBA294C(v9);
    }
  }

  return result;
}

void sub_1ABB9E620(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v16 = *(a1 + 48);
  v17 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 88);
  v15 = *(a1 + 96);
  v18 = *(a1 + 104);
  v10 = *(a1 + 120);
  v11 = sub_1ABBA1DE0(a2, *a1);
  v12 = objc_autoreleasePoolPush();
  sub_1ABBA45E0(v11, &v23);
  if (v3)
  {

    objc_autoreleasePoolPop(v12);
  }

  else
  {

    objc_autoreleasePoolPop(v12);
    memcpy(__dst, (a1 + 136), sizeof(__dst));
    if (sub_1ABB9AE48(__dst) == 1)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = __dst[21];
    }

    memcpy(v20, (a1 + 136), sizeof(v20));
    if (sub_1ABB9AE48(v20) == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v20[22];
    }

    memcpy(v19, __src, 0x3C8uLL);
    sub_1ABB9AEA4(v19);
    *a3 = v6;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = v13;
    *(a3 + 40) = v17;
    *(a3 + 48) = v16;
    *(a3 + 56) = v7;
    *(a3 + 64) = v8;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0;
    memcpy((a3 + 112), v19, 0x3C9uLL);
    *(a3 + 1152) = 0;
    *(a3 + 1088) = v14;
    *(a3 + 1096) = 0;
    *(a3 + 1104) = v9;
    *(a3 + 1112) = v15;
    *(a3 + 1136) = vdupq_n_s64(v10);
    *(a3 + 1120) = v18;
    swift_bridgeObjectRetain_n();
    sub_1ABB9AE60(v17, v16);
  }
}

uint64_t sub_1ABB9E7FC(uint64_t a1)
{
  __dst[0] = a1;

  sub_1ABB9B044(__dst);
  result = __dst[0];
  v2 = *(__dst[0] + 16);
  if (v2)
  {
    v3 = *(__dst[0] + 40);
    v4 = v2 - 1;
    v5 = __dst[0] + 144;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      memcpy(__dst, (v5 - 112), 0x488uLL);
      v7 = *&__dst[1];
      if (*&__dst[1] == v3)
      {
        v42 = v4;
        v8 = __dst[144];
        v9 = __dst[143];
        v10 = __dst[142];
        v11 = __dst[141];
        v12 = v5;
        v13 = __dst[140];
        v38 = __dst[139];
        v14 = __dst[138];
        v15 = __dst[7];
        v16 = __dst[8];
        v17 = *&__dst[4];
        v18 = __dst[3];
        v19 = __dst[2];
        v34 = __dst[0];
        v36 = v12;
        memcpy(&__src[7], v12, 0x3C9uLL);
        memcpy(v47, __src, 0x3D0uLL);
        v35 = __dst[5];
        v37 = __dst[6];
        sub_1ABB9AE60(__dst[5], __dst[6]);
        v41 = v8;

        v39 = v13;

        v40 = v9;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = *(v6 + 16);
          sub_1ABA7BEF0();
          sub_1ABADA37C();
          v6 = v29;
        }

        v21 = *(v6 + 16);
        v20 = *(v6 + 24);
        v5 = v36;
        if (v21 >= v20 >> 1)
        {
          sub_1ABA7BBEC(v20);
          sub_1ABADA37C();
          v6 = v30;
        }

        *(v6 + 16) = v21 + 1;
        v22 = v6 + 1160 * v21;
        *(v22 + 32) = v34;
        *(v22 + 40) = v7 + v17;
        *(v22 + 48) = v19;
        *(v22 + 56) = v18;
        *(v22 + 64) = v17;
        *(v22 + 72) = v35;
        *(v22 + 80) = v37;
        *(v22 + 88) = v15;
        *(v22 + 96) = v16;
        *(v22 + 104) = 0u;
        *(v22 + 120) = 0u;
        *(v22 + 136) = 0;
        memcpy((v22 + 137), v47, 0x3D0uLL);
        v23 = *&v46[3];
        *(v22 + 1113) = *v46;
        *(v22 + 1116) = v23;
        *(v22 + 1120) = 0;
        *(v22 + 1128) = 1;
        v24 = *&v45[3];
        *(v22 + 1129) = *v45;
        *(v22 + 1132) = v24;
        *(v22 + 1136) = v14;
        *(v22 + 1144) = v38;
        v25 = *&v44[3];
        *(v22 + 1145) = *v44;
        *(v22 + 1148) = v25;
        *(v22 + 1152) = v39;
        *(v22 + 1160) = v11;
        *(v22 + 1168) = v10;
        *(v22 + 1176) = v40;
        v4 = v42;
        *(v22 + 1184) = v41;
        if (!v42)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_1ABB4F254(__dst, v47);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = *(v6 + 16);
          sub_1ABA7BEF0();
          sub_1ABADA37C();
          v6 = v32;
        }

        v27 = *(v6 + 16);
        v26 = *(v6 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1ABA7BBEC(v26);
          sub_1ABADA37C();
          v6 = v33;
        }

        *(v6 + 16) = v27 + 1;
        memcpy((v6 + 1160 * v27 + 32), __dst, 0x488uLL);
        if (!v4)
        {
LABEL_16:

          v47[0] = v6;

          sub_1ABB9B044(v47);

          return v47[0];
        }
      }

      --v4;
      v5 += 1160;
    }
  }

  return result;
}

void sub_1ABB9EB88()
{
  sub_1ABA7E2A8();
  v18 = MEMORY[0x1E69E7CD0];
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = v0 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      memcpy(__dst, (v3 + 1160 * v2), sizeof(__dst));
      v5 = __dst[0];
      v6 = v18;
      if (*(v18 + 16))
      {
        v7 = *(v18 + 40);
        sub_1ABF25234();
        MEMORY[0x1AC5AA8D0](v5);
        v8 = sub_1ABF25294();
        v9 = ~(-1 << *(v6 + 32));
        while (1)
        {
          v10 = v8 & v9;
          if (((*(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
          {
            break;
          }

          v8 = v10 + 1;
          if (*(*(v6 + 48) + 8 * v10) == v5)
          {
            goto LABEL_13;
          }
        }
      }

      sub_1ABB4F254(__dst, v16);
      sub_1ABB180F8(v16, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v4 + 16);
        sub_1ABA7BEF0();
        sub_1ABADA37C();
        v4 = v14;
      }

      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1ABA7BBEC(v11);
        sub_1ABADA37C();
        v4 = v15;
      }

      *(v4 + 16) = v12 + 1;
      memcpy((v4 + 1160 * v12 + 32), __dst, 0x488uLL);
LABEL_13:
      ++v2;
    }

    while (v2 != v1);
  }

  sub_1ABA7BC1C();
}

void sub_1ABB9ED18()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v71 = v6;
  v7 = sub_1ABAD219C(&qword_1EB4D3EC8, &unk_1ABF41180);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = &v67 - v9;
  v68 = v5;
  v69 = v3;
  v10 = sub_1ABF23C84();
  v12 = v11;
  v13 = *(v1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v83 = MEMORY[0x1E69E7CC0];
    sub_1ABADDBD4();
    v14 = v83;
    v15 = (v1 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v18 = sub_1ABF23C84();
      v20 = v19;
      v83 = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_1ABA7BBEC(v21);
        sub_1ABADDBD4();
        v14 = v83;
      }

      *(v14 + 16) = v23;
      v24 = v14 + 16 * v22;
      *(v24 + 32) = v18;
      *(v24 + 40) = v20;
      v15 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {
    v23 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v23)
    {
LABEL_63:

LABEL_64:

      v64 = v71;
      v63 = 0uLL;
LABEL_65:
      *v64 = v63;
      v64[1] = v63;
      goto LABEL_66;
    }
  }

  v25 = 0;
  v79 = 0;
  v81 = 0;
  v77 = v14 + 32;
  v74 = v10;
  v75 = v12;
  v72 = v14;
  v73 = v23;
  do
  {
    if (v25 >= *(v14 + 16))
    {
      __break(1u);
LABEL_68:
      sub_1ABA7D4EC();
      swift_once();
LABEL_57:
      v59 = sub_1ABF237F4();
      sub_1ABA7AA24(v59, qword_1ED871B20);
      v60 = sub_1ABF237D4();
      v61 = sub_1ABF24654();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = sub_1ABA88598();
        *v62 = 0;
        _os_log_impl(&dword_1ABA78000, v60, v61, "Invalid mapping of mention found. Returning nil for mention span", v62, 2u);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      v63 = 0uLL;
      v64 = v71;
      goto LABEL_65;
    }

    v26 = (v77 + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    v83 = v10;
    v84 = v12;
    v85 = v28;
    v86 = v27;
    v29 = sub_1ABAE28EC();

    v78 = v29;
    if (sub_1ABF248D4())
    {
      v30 = sub_1ABF23D44();
      if (v81)
      {
        if (sub_1ABF23D44() < v30)
        {

LABEL_15:
          v79 = v28;
          v81 = v27;
          goto LABEL_53;
        }
      }

      else if (v30 > 0)
      {
        goto LABEL_15;
      }
    }

    v31 = objc_autoreleasePoolPush();
    v83 = v10;
    v84 = v12;
    v85 = 32;
    v86 = 0xE100000000000000;
    v32 = sub_1ABF24884();
    objc_autoreleasePoolPop(v31);
    v33 = objc_autoreleasePoolPush();
    v83 = v28;
    v84 = v27;
    v85 = 32;
    v86 = 0xE100000000000000;
    v34 = sub_1ABF24884();

    objc_autoreleasePoolPop(v33);
    v35 = sub_1ABE8AE5C(v34);
    v82 = *(v32 + 16);
    if (!v82)
    {

      v23 = v73;
      v10 = v74;
      v12 = v75;
      goto LABEL_53;
    }

    v76 = v25;
    sub_1ABAA3478();
    v36 = 0;
    v80 = v32 + 32;
    do
    {
      if (v36 >= *(v32 + 16))
      {
        __break(1u);
        goto LABEL_63;
      }

      v37 = v14;
      v38 = v27;
      if (*(v35 + 16))
      {
        v39 = (v80 + 16 * v36);
        v27 = *v39;
        v14 = v39[1];
        v40 = *(v35 + 40);
        sub_1ABF25234();

        sub_1ABF23D34();
        v41 = sub_1ABF25294();
        v42 = ~(-1 << *(v35 + 32));
        do
        {
          v43 = v41 & v42;
          if (((*(v35 + 56 + (((v41 & v42) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v41 & v42)) & 1) == 0)
          {

            goto LABEL_30;
          }

          v44 = (*(v35 + 48) + 16 * v43);
          if (*v44 == v27 && v44[1] == v14)
          {
            break;
          }

          v46 = sub_1ABF25054();
          v41 = v43 + 1;
        }

        while ((v46 & 1) == 0);
        if (v37)
        {
          v83 = v38;
          v84 = v37;
          v47 = sub_1ABA8E7B8();
          MEMORY[0x1AC5A9410](v47);
          MEMORY[0x1AC5A9410](v27, v14);

          v27 = v83;
          v14 = v84;
        }
      }

      else
      {
LABEL_30:
        if (!v37)
        {
          goto LABEL_37;
        }

        v48 = sub_1ABF23D44();
        v27 = v48;
        if (v81)
        {
          if (sub_1ABF23D44() < v48)
          {

LABEL_35:
            sub_1ABAA3478();
            v79 = v38;
            v81 = v37;
            goto LABEL_38;
          }

LABEL_37:
          sub_1ABAA3478();
          goto LABEL_38;
        }

        if (v48 > 0)
        {
          goto LABEL_35;
        }

        sub_1ABAA3478();
        v81 = 0;
      }

LABEL_38:
      ++v36;
    }

    while (v36 != v82);

    v23 = v73;
    if (!v14)
    {
      v10 = v74;
      v12 = v75;
LABEL_50:
      v14 = v72;
      v25 = v76;
      goto LABEL_53;
    }

    v49 = sub_1ABF23D44();
    v50 = v49;
    v10 = v74;
    if (v81)
    {
      v51 = sub_1ABF23D44();
      v12 = v75;
      if (v51 >= v50)
      {
      }

      else
      {

        v79 = v27;
        v81 = v14;
      }

      goto LABEL_50;
    }

    v12 = v75;
    v25 = v76;
    if (v49 <= 0)
    {

      v81 = 0;
    }

    else
    {
      v79 = v27;
      v81 = v14;
    }

    v14 = v72;
LABEL_53:
    ++v25;
  }

  while (v25 != v23);

  if (!v81)
  {
    goto LABEL_64;
  }

  v83 = v10;
  v84 = v12;
  v85 = v79;
  v86 = v81;
  v52 = sub_1ABF21F54();
  v53 = v70;
  sub_1ABA7B9B4(v70, 1, 1, v52);
  v54 = sub_1ABF248C4();
  v56 = v55;
  v58 = v57;
  sub_1ABBA28E4(v53);

  if (v58)
  {
    if (qword_1ED871B18 == -1)
    {
      goto LABEL_57;
    }

    goto LABEL_68;
  }

  v65 = v71;
  v66 = v69;
  *v71 = v68;
  v65[1] = v66;
  v65[2] = v54;
  v65[3] = v56;

LABEL_66:
  sub_1ABA7BC1C();
}