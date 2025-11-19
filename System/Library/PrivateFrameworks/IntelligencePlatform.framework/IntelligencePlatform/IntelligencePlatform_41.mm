void sub_1ABD7E750(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABADBBE0);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1ABD7E824(uint64_t a1)
{
  result = sub_1ABA7DC38(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_1ABD8E17C(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void GraphNode.asEntity.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 34);
  if (v2 == 1)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 != 1;
}

uint64_t sub_1ABD7E954(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1ABD8E1F4(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1ABD7E9F0(char a1)
{
  v2 = 0xE700000000000000;
  v3 = 0x73736563637573;
  switch(a1)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x746C757365526F6ELL;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x726F727265;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x746E65746E496F6ELL;
      break;
    default:
      break;
  }

  MEMORY[0x1AC5A9410](v3, v2);
}

uint64_t sub_1ABD7EAA4(char a1)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  switch(a1)
  {
    case 1:
      v3 = 0xD000000000000010;
      v2 = 0x80000001ABF7EE20;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x7865646E496F6ELL;
      break;
    case 3:
      v4 = 0x47746E657665;
      goto LABEL_9;
    case 4:
      v2 = 0xED00007865646E49;
      v3 = 0x79676F6C6F746E6FLL;
      break;
    case 5:
      v2 = 0xEC0000007865646ELL;
      v3 = 0x49747865746E6F63;
      break;
    case 6:
      v4 = 0x476C61636F6CLL;
LABEL_9:
      v3 = v4 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      v2 = 0xEF7865646E496870;
      break;
    case 7:
      v2 = 0x80000001ABF7EE80;
      v3 = 0xD00000000000001ALL;
      break;
    case 8:
      v2 = 0x80000001ABF7EEA0;
      v3 = 0xD000000000000018;
      break;
    default:
      break;
  }

  MEMORY[0x1AC5A9410](v3, v2);
}

uint64_t sub_1ABD7EBFC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_1ABAF81A8(), (v4 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v3);
    swift_bridgeObjectRetain_n();
    sub_1ABD7E954(&v7, sub_1ABE7A20C, &type metadata for ExtendedTriple, sub_1ABD8E3F0, sub_1ABD8E2FC);

    v5 = v7;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABAD219C(&qword_1EB4D94F0, &qword_1ABF67C50);
  result = swift_allocObject();
  *(result + 16) = v5;
  return result;
}

uint64_t sub_1ABD7ECF8@<X0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  swift_retain_n();
  sub_1ABB6BA54(sub_1ABD910D8, nullsub_1, 0, sub_1ABD910BC, v3, v10);

  if (v1)
  {
  }

  v14 = *&v10[0];
  swift_beginAccess();
  v5 = *(v3 + 16);

  sub_1ABB6B738(&v14, v5, v10);

  v6 = v10[1];
  v7 = v11;
  v8 = v12;
  v9 = v13;
  *a1 = v10[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_1ABD7EE58(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC8];
  v46 = MEMORY[0x1E69E7CC8];
  v42 = *(a1 + 16);
  v4 = 32;
  v41 = xmmword_1ABF34740;
  while (1)
  {
    if (v42 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v43 = v2;
    v5 = v1;
    v6 = v4;
    memcpy(__dst, (v1 + v4), 0x70uLL);
    v7 = BYTE2(__dst[4]);
    v8 = BYTE2(__dst[4]) != 1;
    if (BYTE2(__dst[4]) == 1)
    {
      v9 = __dst[0];
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_1ABAF82A0(v9, BYTE2(__dst[4]) != 1);
    v12 = v3[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_22;
    }

    v15 = v11;
    if (v3[3] >= v14)
    {
      v24 = v10;
      sub_1ABAE441C(__dst, v44);
      if (v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1ABAE441C(__dst, v44);
      sub_1ABC040AC(v14, 1, v16, v17, v18, v19, v20, v21, v39, v40, v41, SBYTE4(v41));
      v3 = v46;
      v22 = sub_1ABAF82A0(v9, v8);
      if ((v15 & 1) != (v23 & 1))
      {
        goto LABEL_24;
      }

      v24 = v22;
      if (v15)
      {
LABEL_14:
        v31 = v3[7];
        v32 = *(v31 + 8 * v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v31 + 8 * v24) = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = *(v32 + 16);
          sub_1ABAD8BA4();
          v32 = v36;
          *(v31 + 8 * v24) = v36;
        }

        v34 = *(v32 + 16);
        if (v34 >= *(v32 + 24) >> 1)
        {
          sub_1ABAD8BA4();
          v32 = v37;
          *(v31 + 8 * v24) = v37;
        }

        v1 = v5;
        v30 = v6;
        *(v32 + 16) = v34 + 1;
        memcpy((v32 + 112 * v34 + 32), __dst, 0x70uLL);
        goto LABEL_19;
      }
    }

    sub_1ABAD219C(&qword_1EB4D17D0, &qword_1ABF33960);
    v25 = swift_allocObject();
    *(v25 + 16) = v41;
    memcpy((v25 + 32), __dst, 0x70uLL);
    v3[(v24 >> 6) + 8] |= 1 << v24;
    v26 = v3[6] + 16 * v24;
    *v26 = v9;
    *(v26 + 8) = v7 != 1;
    *(v3[7] + 8 * v24) = v25;
    v27 = v3[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_23;
    }

    v3[2] = v29;
    v1 = v5;
    v30 = v6;
LABEL_19:
    v4 = v30 + 112;
    v2 = v43 + 1;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1ABAD219C(&qword_1EB4D9500, &qword_1ABF60F18);
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t Array<A>.graphObjectContext()@<X0>(void *a1@<X8>)
{

  return CustomKnosisResultContext.init<>(knosisAnswers:)(v2, a1);
}

void *Array<A>.entityIdsWithAnswers()(void *result)
{
  v1 = 0;
  v2 = result[2];
  v3 = (result + 4);
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = &v3[112 * v1]; ; i += 112)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    result = memcpy(__dst, i, 0x70uLL);
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    if (BYTE2(__dst[4]) == 1)
    {
      v7 = __dst[0];
      sub_1ABAE441C(__dst, __src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v4 + 16);
        sub_1ABA7BEF0();
        sub_1ABADAC00();
        v4 = v12;
      }

      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1ABA9A58C(v8);
        sub_1ABADAC00();
        v4 = v13;
      }

      memcpy(__src, __dst, sizeof(__src));
      *(v4 + 16) = v9 + 1;
      v10 = v4 + 120 * v9;
      *(v10 + 32) = v7;
      result = memcpy((v10 + 40), __src, 0x70uLL);
      v1 = v6;
      goto LABEL_2;
    }

    ++v1;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1ABD7F2B4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);

  sub_1ABD7F324(a1);
}

void sub_1ABD7F324(uint64_t a1@<X8>)
{
  sub_1ABD7F3CC(v5);
  v2 = v6;
  if (HIBYTE(v6) <= 0xFEu)
  {
    if ((v6 & 0x100) != 0)
    {
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      swift_willThrowTypedImpl();
    }

    else
    {
      v3 = v5[1];
      v4 = v5[2];
      *a1 = v5[0];
      *(a1 + 16) = v3;
      *(a1 + 32) = v4;
      *(a1 + 48) = v2;
    }
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }
}

double sub_1ABD7F3CC@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v3 = (v2 + 16);
  sub_1ABC82568();
  v14 = *&v10[0];
  swift_beginAccess();
  v4 = *v3;

  sub_1ABB6B738(&v14, v4, v10);

  result = *v10;
  v6 = v10[1];
  v7 = v11;
  v8 = v12;
  v9 = v13;
  *a1 = v10[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return result;
}

double sub_1ABD7F5B0@<D0>(uint64_t a1@<X8>)
{

  sub_1ABD7ECF8(v8);
  if (!v1)
  {
    result = *v8;
    v4 = v8[1];
    v5 = v9;
    v6 = v10;
    v7 = v11;
    *a1 = v8[0];
    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_1ABD7F604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 24);
  v32 = *(a1 + 16);
  v29 = v15;
  v28 = *(a1 + 32);
  v31[4] = a6;
  v31[5] = a7;
  v31[6] = a8;
  v31[3] = swift_getAssociatedTypeWitness();
  v16 = sub_1ABA93DC0(v31);
  v17 = sub_1ABAD219C(&qword_1EB4D6150, &unk_1ABF4FF30);
  CustomKnosisResultContext.getOrInitInitializationResources<A>(for:)(a2, v17, a2, a3, v16);
  if (*(a4 + 16) && (v18 = sub_1ABAF8328(), (v19 & 1) != 0))
  {
    v20 = (*(a4 + 56) + 48 * v18);
    v22 = v20[2];
    v21 = v20[3];
    v23 = v20[5];

    v24 = sub_1ABD7D2BC(a5);
    sub_1ABAD219C(&qword_1EB4D94F0, &qword_1ABF67C50);
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    v30[0] = v25;
    v22(v30, v31);
  }

  else
  {
    sub_1ABC8229C();
    swift_allocError();
    *v26 = v13;
    *(v26 + 8) = v14;
    *(v26 + 16) = v32;
    *(v26 + 24) = v29;
    *(v26 + 32) = v28;
    swift_willThrow();
    sub_1ABAFF06C(a1, v30);
  }

  return sub_1ABA84B54(v31);
}

uint64_t sub_1ABD7F7EC@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, __int128 *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  EntityClass.init(intValue:)(SHIBYTE(a1), &v35);
  v10 = *(&v35 + 1);
  if (!*(&v35 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v16 = sub_1ABF237F4();
    sub_1ABA7AA24(v16, qword_1ED871B40);
    v17 = sub_1ABF237D4();
    v18 = sub_1ABF24674();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = a5;
      v21 = swift_slowAlloc();
      *&v35 = v21;
      *v19 = 136315138;
      *&v32 = a1;
      v22 = EntityIdentifier.stringValue.getter();
      v24 = sub_1ABADD6D8(v22, v23, &v35);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1ABA78000, v17, v18, "untypedId.entityClass for %s is nil in createDynamicGraphObject", v19, 0xCu);
      sub_1ABA84B54(v21);
      v25 = v21;
      a5 = v20;
      MEMORY[0x1AC5AB8B0](v25, -1, -1);
      MEMORY[0x1AC5AB8B0](v19, -1, -1);
    }

    sub_1ABB6DA08();
    v26 = swift_allocError();
    *v27 = 2;
    *(v27 + 8) = 0u;
    *(v27 + 24) = 0u;
    *(v27 + 33) = 0u;
    *(v27 + 49) = 2;
    goto LABEL_11;
  }

  v11 = v35;
  v12 = v36;
  v13 = v37;
  v40 = v35;
  v41 = v36;
  v42 = v37;
  sub_1ABAD51A4(&v40, a3);
  v14 = v38;
  if (v38)
  {
    v31 = a5;
    v15 = v39;

    v32 = v40;
    v33 = v41;
    LOBYTE(v34) = v42;
    a2(&v35, &v32, v14, v15);
    sub_1ABAA8FA8(v11, v10);
    v32 = v35;
    v33 = v36;
    *&v34 = v37;
    a5 = v31;
    if (*(&v36 + 1))
    {
      sub_1ABAFF5C4(&v32, &v35);
      result = sub_1ABAFF5C4(&v35, v31);
      *(v31 + 40) = 0;
      return result;
    }

    result = sub_1ABA925A4(&v32, &qword_1EB4D6358, &unk_1ABF50900);
    *(v31 + 32) = 0;
    *v31 = 0u;
    *(v31 + 16) = 0u;
    v30 = -1;
    goto LABEL_17;
  }

  if (a4)
  {
    sub_1ABC8229C();
    v26 = swift_allocError();
    *v28 = v11;
    *(v28 + 8) = v10;
    *(v28 + 16) = v12;
    *(v28 + 32) = v13;
LABEL_11:
    result = swift_willThrow();
    *a5 = v26;
    v30 = 1;
LABEL_17:
    *(a5 + 40) = v30;
    return result;
  }

  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 40) = -1;

  return sub_1ABAA8FA8(v11, v10);
}

uint64_t KnosisResult.query.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t KnosisResult.kgq.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1ABA7D000();
}

uint64_t KnosisResult.errorMessage.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_1ABA7D000();
}

uint64_t KnosisResult.Status.description.getter()
{
  result = 0x73736563637573;
  switch(*v0)
  {
    case 1:
      result = 0x746C757365526F6ELL;
      break;
    case 2:
      result = 0x726F727265;
      break;
    case 3:
      result = 0x746E65746E496F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

IntelligencePlatform::KnosisResult::Status_optional __swiftcall KnosisResult.Status.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1ABD7FDE0@<X0>(uint64_t *a1@<X8>)
{
  result = KnosisResult.Status.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t KnosisResult.queryFeatures.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1ABD8DE70(v2, v3);
}

__n128 KnosisResult.queryFeatures.setter(__int128 *a1)
{
  v11 = a1[2];
  v3 = *(a1 + 6);
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[17];
  sub_1ABD8DED4(v1[11], v1[12]);
  v9 = *a1;
  *(v1 + 13) = a1[1];
  *(v1 + 11) = v9;
  result = v11;
  *(v1 + 15) = v11;
  v1[17] = v3;
  return result;
}

uint64_t KnosisResult.debug.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1ABAFEE18(v2, v3);
}

__n128 KnosisResult.debug.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = v1[20];
  sub_1ABAFEE5C(v1[18], v1[19]);
  result = v5;
  *(v1 + 9) = v5;
  v1[20] = v2;
  return result;
}

uint64_t KnosisResult.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 40);
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000012, 0x80000001ABF8F020);
  v9 = sub_1ABAA015C();
  MEMORY[0x1AC5A9410](v9);
  MEMORY[0x1AC5A9410](0x3A74696D696C20, 0xE700000000000000);
  sub_1ABAA015C();
  v10 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v10);

  MEMORY[0x1AC5A9410](0x3A74657366666F20, 0xE800000000000000);
  sub_1ABAA015C();
  v11 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v11);

  MEMORY[0x1AC5A9410](0x3A73757461747320, 0xE800000000000000);
  sub_1ABD7E9F0(v8);
  v12 = sub_1ABA8A66C();
  MEMORY[0x1AC5A9410](v12, 0xE90000000000003ALL);
  v13 = MEMORY[0x1AC5A9750](v3, &type metadata for KnosisAnswer);
  MEMORY[0x1AC5A9410](v13);

  MEMORY[0x1AC5A9410](0x654D726F72726520, 0xEE003A6567617373);
  MEMORY[0x1AC5A9410](v4, v5);
  sub_1ABA83AA4();
  return 0;
}

uint64_t KnosisResult.answerIds.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = MEMORY[0x1E69E7CC0];
  v4 = (v1 + 32);
  do
  {
    v5 = memcpy(__dst, v4, 0x70uLL);
    v13 = __dst[0];
    v14 = __dst[1];
    switch(BYTE2(__dst[4]))
    {
      case 1:
        sub_1ABAA31F0();
        if ((v13 & 0x80000000000000) == 0)
        {
          v28 += 1272;
        }

        sub_1ABA89CD8(v20, v21, v22, v23, v24, v25, v26, v27, v13, v28, 0xE300000000000000, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, __dst[0]);
        sub_1ABA894EC();
        v29 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v29);

        v13 = v37;
        v14 = v38;
        break;
      case 2:
      case 3:
        sub_1ABA89CD8(v5, v6, v7, v8, v9, v10, v11, v12, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, __dst[0]);

        break;
      case 4:
        sub_1ABA89CD8(v5, v6, v7, v8, v9, v10, v11, v12, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, __dst[0]);
        v13 = 0;
        v14 = 0xE000000000000000;
        break;
      default:
        v15 = LOWORD(__dst[4]);
        sub_1ABA89CD8(v5, v6, v7, v8, v9, v10, v11, v12, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, __dst[0]);
        sub_1ABA954F0();
        sub_1ABAA2D68();
        sub_1ABAE4358(v16, v17, v18, v19, v15, 0);
        break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7E974();
      sub_1ABAAA4F4();
      v3 = v33;
    }

    v31 = *(v3 + 16);
    v30 = *(v3 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1ABA8E370(v30);
      sub_1ABAAA4F4();
      v3 = v34;
    }

    sub_1ABC6D404(__dst);
    *(v3 + 16) = v31 + 1;
    v32 = v3 + 16 * v31;
    *(v32 + 32) = v13;
    *(v32 + 40) = v14;
    v4 += 112;
    --v2;
  }

  while (v2);
  return v3;
}

void KnosisResult.answerFacts.getter()
{
  v3 = *(v0 + 32);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    v28 = *(v3 + 16);
    v29 = *(v0 + 32);
    v27 = v3 + 32;
    while (v5 < *(v3 + 16))
    {
      v8 = *(v6 + 112 * v5 + 80);
      v33 = *(v8 + 16);
      if (v33)
      {
        v30 = v5;
        v32 = v8 + 32;

        v10 = 0;
        v31 = v9;
LABEL_6:
        if (v10 >= *(v9 + 16))
        {
LABEL_37:
          __break(1u);
          break;
        }

        v11 = *(v32 + 112 * v10 + 72);
        v34 = v10 + 1;
        v12 = 1 << *(v11 + 32);
        if (v12 < 64)
        {
          v13 = ~(-1 << v12);
        }

        else
        {
          v13 = -1;
        }

        v14 = v13 & *(v11 + 64);
        v15 = (v12 + 63) >> 6;

        v16 = 0;
        while (v14)
        {
LABEL_16:
          v18 = *(v11 + 56);
          sub_1ABD91530(__clz(__rbit64(v14)));
          v19 = *(v7 + 16);
          if (__OFADD__(v19, v1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v19 + v1 > *(v7 + 24) >> 1)
          {
            sub_1ABA898F8();
            sub_1ABAD88DC();
            v7 = v20;
          }

          v14 &= v14 - 1;
          if (*(v2 + 16))
          {
            v21 = *(v7 + 16);
            v22 = *(v7 + 24);
            sub_1ABA84218();
            if (v23 < v1)
            {
              goto LABEL_35;
            }

            swift_arrayInitWithCopy();

            if (v1)
            {
              v24 = *(v7 + 16);
              v25 = __OFADD__(v24, v1);
              v26 = v24 + v1;
              if (v25)
              {
                goto LABEL_36;
              }

              *(v7 + 16) = v26;
            }
          }

          else
          {

            if (v1)
            {
              goto LABEL_34;
            }
          }
        }

        while (1)
        {
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            return;
          }

          if (v17 >= v15)
          {
            break;
          }

          v14 = *(v11 + 64 + 8 * v17);
          ++v16;
          if (v14)
          {
            v16 = v17;
            goto LABEL_16;
          }
        }

        v10 = v34;
        v9 = v31;
        if (v34 != v33)
        {
          goto LABEL_6;
        }

        v4 = v28;
        v3 = v29;
        v5 = v30;
        v6 = v27;
      }

      if (++v5 == v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t KnosisResult.graphObjectContext()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);

  return CustomKnosisResultContext.init<>(knosisAnswers:)(v4, a1);
}

Swift::String __swiftcall KnosisResult.finalAnswer(sortByText:)(Swift::Bool sortByText)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 112;
  if (sortByText)
  {
LABEL_2:
    v6 = v2 - 24;
    while (1)
    {
      if (!v3)
      {
        v38 = v4;

        v5 = 0;
        sub_1ABD7E954(&v38, sub_1ABE7A224, MEMORY[0x1E69E6158], sub_1ABAF206C, sub_1ABAF1FA4);

        v4 = v38;
        goto LABEL_21;
      }

      if (!*(v2 + 16))
      {
        break;
      }

      sub_1ABAA0498(v6);
      if (v1)
      {
        v8 = *v7;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7E974();
          sub_1ABAAA4F4();
          v4 = v11;
        }

        v9 = v4[2];
        if (v9 >= v4[3] >> 1)
        {
          sub_1ABA898F8();
          sub_1ABAAA4F4();
          v4 = v12;
        }

        v4[2] = v9 + 1;
        v10 = &v4[2 * v9];
        v10[4] = v8;
        v10[5] = v1;
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_11:
  v13 = v2 - 24;
  while (v3)
  {
    if (!*(v2 + 16))
    {
      goto LABEL_37;
    }

    sub_1ABAA0498(v13);
    if (v1)
    {
      v15 = *v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7E974();
        sub_1ABAAA4F4();
        v4 = v18;
      }

      v16 = v4[2];
      if (v16 >= v4[3] >> 1)
      {
        sub_1ABA898F8();
        sub_1ABAAA4F4();
        v4 = v19;
      }

      v4[2] = v16 + 1;
      v17 = &v4[2 * v16];
      v17[4] = v15;
      v17[5] = v1;
      goto LABEL_11;
    }
  }

LABEL_21:
  v20 = v4[2];
  v21 = v20 - 1;
  if (v20 == 1)
  {
    v23 = v4[4];
    v22 = v4[5];
  }

  else
  {
    if (v20)
    {
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1ABF24AB4();

      v38 = 0x7261206572656854;
      v39 = 0xEA00000000002065;
      v24 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v24);

      v25 = sub_1ABA8A66C();
      MEMORY[0x1AC5A9410](v25, 0xEA00000000000A3ALL);
      v26 = 0;
      v27 = v4 + 5;
      while (v26 < v4[2])
      {
        v5 = v26 + 1;
        v29 = *(v27 - 1);
        v28 = *v27;

        v36 = sub_1ABF24FF4();
        v37 = v30;
        MEMORY[0x1AC5A9410](8238, 0xE200000000000000);
        MEMORY[0x1AC5A9410](v29, v28);

        MEMORY[0x1AC5A9410](v36, v37);

        if (v26 >= v21)
        {
          v31 = 0;
        }

        else
        {
          v31 = 2604;
        }

        if (v26 >= v21)
        {
          v32 = 0xE000000000000000;
        }

        else
        {
          v32 = 0xE200000000000000;
        }

        MEMORY[0x1AC5A9410](v31, v32);

        v27 += 2;
        --v20;
        ++v26;
        if (!v20)
        {

          v23 = v38;
          v22 = v39;
          goto LABEL_35;
        }
      }

LABEL_38:
      __break(1u);

      __break(1u);
      goto LABEL_39;
    }

    v22 = 0xEA00000000002E72;
    v23 = 0x6577736E61206F4ELL;
  }

LABEL_35:
  v33 = v23;
  v34 = v22;
LABEL_39:
  result._object = v34;
  result._countAndFlagsBits = v33;
  return result;
}

uint64_t sub_1ABD8091C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7432043 && a2 == 0xE300000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73726577736E61 && a2 == 0xE700000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x74696D696CLL && a2 == 0xE500000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x74657366666FLL && a2 == 0xE600000000000000;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4165726F4D736168 && a2 == 0xEE0073726577736ELL;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6165467972657571 && a2 == 0xED00007365727574;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6775626564 && a2 == 0xE500000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1ABF25054();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

uint64_t sub_1ABD80C24(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 7432043;
      break;
    case 2:
      result = 0x73726577736E61;
      break;
    case 3:
      result = 0x737574617473;
      break;
    case 4:
      result = 0x73654D726F727265;
      break;
    case 5:
      result = 0x74696D696CLL;
      break;
    case 6:
      result = 0x74657366666FLL;
      break;
    case 7:
      result = 0x4165726F4D736168;
      break;
    case 8:
      result = 0x6165467972657571;
      break;
    case 9:
      result = 0x6775626564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD80D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD8091C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD80D7C(uint64_t a1)
{
  v2 = sub_1ABD8DF38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD80DB8(uint64_t a1)
{
  v2 = sub_1ABD8DF38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KnosisResult.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D9278, &qword_1ABF5FD30);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v10 = *v0;
  v11 = v0[1];
  v36 = v0[3];
  v37 = v0[2];
  v38 = *(v0 + 40);
  v34 = v0[6];
  v35 = v0[4];
  v32 = v0[8];
  v33 = v0[7];
  v31 = v0[9];
  v30 = *(v0 + 80);
  v23 = v0[11];
  v24 = v0[12];
  v28 = v0[14];
  v29 = v0[13];
  v26 = v0[16];
  v27 = v0[15];
  v25 = v0[17];
  v20 = v0[18];
  v21 = v0[19];
  v22 = v0[20];
  v12 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABD8DF38();
  sub_1ABF252E4();
  sub_1ABF24ED4();
  if (v1)
  {
    v13 = *(v6 + 8);
  }

  else
  {
    sub_1ABF24F34();
    sub_1ABAD219C(&qword_1EB4D9288, &qword_1ABF5FD38);
    sub_1ABAA3D54();
    sub_1ABD8F9F8(v16, v17, &qword_1ABF5FD38, v18);
    sub_1ABAA1A58();
    sub_1ABF24F84();
    sub_1ABD8DFE0();
    sub_1ABAA1A58();
    sub_1ABF24F84();
    sub_1ABF24F34();
    sub_1ABF24F74();
    sub_1ABF24F74();
    sub_1ABF24F44();
    sub_1ABD8DE70(v23, v24);
    sub_1ABD8E034();
    sub_1ABAA1A58();
    sub_1ABF24F14();
    sub_1ABD8DED4(v23, v24);
    sub_1ABAFEE18(v20, v21);
    sub_1ABD8E088();
    sub_1ABAA1A58();
    sub_1ABF24F14();
    sub_1ABAFEE5C(v20, v21);
    v19 = *(v6 + 8);
  }

  v14 = sub_1ABA8A40C();
  v15(v14);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

uint64_t *sub_1ABD811F4(uint64_t *result, uint64_t a2)
{
  v2 = 0;
  v3 = *result;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = v5 + 112 * v2; ; i += 112)
  {
    if (v4 == v2)
    {
      return v6;
    }

    if (v2 >= v4)
    {
      break;
    }

    sub_1ABA9538C();
    result = memcpy(v8, v9, v10);
    if (__OFADD__(v2, 1))
    {
      goto LABEL_18;
    }

    if (BYTE2(__src[4]) == 1 && v3 == __src[0])
    {
      sub_1ABAE441C(__src, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABADDD5C(0, *(v6 + 16) + 1, 1);
        v6 = v17;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1ABADDD5C((v13 > 1), v14 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v14 + 1;
      result = memcpy((v6 + 112 * v14 + 32), __src, 0x70uLL);
      ++v2;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

char *sub_1ABD81330(char *result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  v6 = (result + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_2:
    if (v3 == v4)
    {
      return v7;
    }

    if (v3 >= v4)
    {
      break;
    }

    result = memcpy(__dst, (v5 + 112 * v3), sizeof(__dst));
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_16;
    }

    if (BYTE2(__dst[4]) == 1)
    {
      v9 = *(v2 + 2);
      v10 = v6;
      while (v9)
      {
        v11 = *v10++;
        --v9;
        if (v11 == __dst[0])
        {
          sub_1ABAE441C(__dst, v15);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = v7;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1ABADDD5C(0, *(v7 + 16) + 1, 1);
            v7 = v17;
          }

          v14 = *(v7 + 16);
          v13 = *(v7 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_1ABADDD5C((v13 > 1), v14 + 1, 1);
            v7 = v17;
          }

          *(v7 + 16) = v14 + 1;
          result = memcpy((v7 + 112 * v14 + 32), __dst, 0x70uLL);
          goto LABEL_2;
        }
      }
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABD81474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v5);
  result = sub_1ABF24214();
  v9 = result;
  v10 = 0;
  v11 = *(a2 + 16);
  v12 = (result + 32);
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_2:
    if (v10 == v11)
    {

      return v13;
    }

    if (v10 >= v11)
    {
      break;
    }

    result = memcpy(__dst, (a2 + 32 + 112 * v10), sizeof(__dst));
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_16;
    }

    if (BYTE2(__dst[4]) == 1)
    {
      v15 = *(v9 + 16);
      v16 = v12;
      while (v15)
      {
        v17 = *v16++;
        --v15;
        if (v17 == __dst[0])
        {
          sub_1ABAE441C(__dst, v22);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v24 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1ABADDD5C(0, *(v13 + 16) + 1, 1);
            v13 = v24;
          }

          v20 = *(v13 + 16);
          v19 = *(v13 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_1ABADDD5C((v19 > 1), v20 + 1, 1);
            v13 = v24;
          }

          *(v13 + 16) = v20 + 1;
          result = memcpy((v13 + 112 * v20 + 32), __dst, 0x70uLL);
          goto LABEL_2;
        }
      }
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void Array<A>.triples(for:)(uint64_t *a1, uint64_t a2)
{
  v18 = *a1;
  v4 = sub_1ABD811F4(&v18, a2);
  Array<A>.triplesWithParentAnswers()(v4);
  sub_1ABA96100();

  if (v3)
  {
LABEL_17:
    sub_1ABA950A4();
  }

  else
  {
    v5 = 0;
    v6 = *(v2 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    for (i = 32; ; i += 16)
    {
      if (v6 == v5)
      {

        goto LABEL_17;
      }

      if (v5 >= *(v2 + 16))
      {
        break;
      }

      v9 = *(v2 + i);
      v10 = *(v9 + 16);
      v11 = *(v7 + 16);
      if (__OFADD__(v11, v10))
      {
        goto LABEL_19;
      }

      v12 = *(v2 + i);

      if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v7 + 24) >> 1)
      {
        sub_1ABAD89DC();
        v7 = v13;
      }

      if (*(v9 + 16))
      {
        sub_1ABA83ABC();
        if (v14 < v10)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v15 = *(v7 + 16);
          v16 = __OFADD__(v15, v10);
          v17 = v15 + v10;
          if (v16)
          {
            goto LABEL_22;
          }

          *(v7 + 16) = v17;
        }
      }

      else
      {

        if (v10)
        {
          goto LABEL_20;
        }
      }

      ++v5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1ABD81810(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1;
  sub_1ABD811F4(&v6, a2);
  v4 = a3();

  return v4;
}

uint64_t Array<A>.triplesWithParentAnswers()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1ABADDD3C(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x70uLL);
      memcpy(v14, v4, sizeof(v14));
      sub_1ABAE441C(__dst, v13);
      KnosisAnswer.extendedTriples()();
      v6 = v5;
      v7 = __dst[10];

      sub_1ABC6D404(__dst);
      v16 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = sub_1ABA7BBEC(v8);
        sub_1ABADDD3C(v11, v9 + 1, 1);
        v2 = v16;
      }

      *(v2 + 16) = v9 + 1;
      v10 = v2 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      v4 += 112;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t Array<A>.triples<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = Array<A>.triplesWithParentAnswers<A>(for:)(a1, a2, a3);
  if (!v3)
  {
    sub_1ABD7D45C(v4);
    sub_1ABAB5148();
  }

  return sub_1ABA950A4();
}

uint64_t Array<A>.triplesWithParentAnswers<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABD81474(a1, a2, a3);
  v3 = sub_1ABD81A34();

  return v3;
}

uint64_t sub_1ABD81A34()
{

  v2 = sub_1ABD7EE58(v1);
  v3 = v0;
  sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
  sub_1ABB668FC();
  v4 = sub_1ABF239C4();
  v5 = 0;
  v6 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = v12 | (v5 << 6);
    v14 = *(v2 + 48) + 16 * v13;
    if ((*(v14 + 8) & 1) == 0)
    {
      v41 = v3;
      v42 = *v14;
      v15 = *(*(v2 + 56) + 8 * v13);
      v16 = *(v15 + 16);
      v40 = v2;
      if (v16)
      {
        v39 = v4;
        v50 = MEMORY[0x1E69E7CC0];

        sub_1ABADDD3C(0, v16, 0);
        v17 = 0;
        v18 = v50;
        v43 = v16 - 1;
        v44 = v15;
        v19 = 32;
        while (v17 < *(v15 + 16))
        {
          v45 = v17;
          v20 = v18;
          memcpy(__dst, (v15 + v19), 0x70uLL);
          memcpy(v48, (v15 + v19), sizeof(v48));
          sub_1ABAE441C(__dst, v47);
          KnosisAnswer.extendedTriples()();
          v22 = v21;
          v23 = __dst[10];

          sub_1ABC6D404(__dst);
          v18 = v20;
          v50 = v20;
          v25 = *(v20 + 16);
          v24 = *(v20 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1ABADDD3C((v24 > 1), v25 + 1, 1);
            v18 = v50;
          }

          *(v18 + 16) = v25 + 1;
          v26 = v18 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v23;
          if (v43 == v45)
          {
            v46 = v18;

            v4 = v39;
            goto LABEL_19;
          }

          v19 += 112;
          v17 = v45 + 1;
          v15 = v44;
        }

        goto LABEL_30;
      }

      v46 = MEMORY[0x1E69E7CC0];
LABEL_19:
      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v4;
      v27 = sub_1ABAF81A8();
      if (__OFADD__(v4[2], (v28 & 1) == 0))
      {
        goto LABEL_31;
      }

      v29 = v27;
      v30 = v28;
      sub_1ABAD219C(&qword_1EB4D94F8, &qword_1ABF60F10);
      if (sub_1ABF24C64())
      {
        v31 = sub_1ABAF81A8();
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_33;
        }

        v29 = v31;
      }

      v4 = __dst[0];
      if (v30)
      {
        v33 = *(__dst[0] + 56);
        v34 = *(v33 + 8 * v29);
        *(v33 + 8 * v29) = v46;
      }

      else
      {
        *(__dst[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
        *(v4[6] + 8 * v29) = v42;
        *(v4[7] + 8 * v29) = v46;
        v35 = v4[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_32;
        }

        v4[2] = v37;
      }

      v2 = v40;
      v3 = v41;
    }
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

      return v4;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t Array<A>.triples()()
{
  v1 = sub_1ABD81A34();
  if (!v0)
  {
    sub_1ABD7D45C(v1);
    sub_1ABAB5148();
  }

  return sub_1ABA950A4();
}

void sub_1ABD81E0C()
{
  sub_1ABA7E2A8();
  *v1 = *v0;
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    while (1)
    {
      v6 = *v4;
      v7 = *(*v4 + 16);
      v8 = *(v5 + 16);
      if (__OFADD__(v8, v7))
      {
        break;
      }

      v9 = *v4;

      if (!swift_isUniquelyReferenced_nonNull_native() || v8 + v7 > *(v5 + 24) >> 1)
      {
        sub_1ABA898F8();
        sub_1ABAD89DC();
        v5 = v10;
      }

      if (*(v6 + 16))
      {
        v11 = *(v5 + 16);
        v12 = *(v5 + 24);
        sub_1ABA84218();
        if (v13 < v7)
        {
          goto LABEL_16;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v14 = *(v5 + 16);
          v15 = __OFADD__(v14, v7);
          v16 = v14 + v7;
          if (v15)
          {
            goto LABEL_17;
          }

          *(v5 + 16) = v16;
        }
      }

      else
      {

        if (v7)
        {
          goto LABEL_15;
        }
      }

      v4 += 2;
      if (!--v3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_13:
    sub_1ABA7BC1C();
  }
}

void KnosisAnswer.extendedTriples()()
{
  sub_1ABD7D6C8();
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  for (i = 32; ; i += 144)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    memcpy(v15, (v1 + i), sizeof(v15));
    KnosisFact.extendedTriples()();
    v7 = *(v6 + 16);
    v8 = *(v4 + 16);
    if (__OFADD__(v8, v7))
    {
      goto LABEL_17;
    }

    v9 = v6;
    if (!swift_isUniquelyReferenced_nonNull_native() || (v10 = *(v4 + 24) >> 1, v10 < v8 + v7))
    {
      sub_1ABAD89DC();
      v4 = v11;
      v10 = *(v11 + 24) >> 1;
    }

    if (*(v9 + 16))
    {
      if (v10 - *(v4 + 16) < v7)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v7)
      {
        v12 = *(v4 + 16);
        v13 = __OFADD__(v12, v7);
        v14 = v12 + v7;
        if (v13)
        {
          goto LABEL_20;
        }

        *(v4 + 16) = v14;
      }
    }

    else
    {

      if (v7)
      {
        goto LABEL_18;
      }
    }

    ++v2;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t CustomKnosisResultContext.init<>(knosisAnswers:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ObjectSynthesisDictionaryMapping.init()(&v7);
  v4 = v7;
  type metadata accessor for InitializationResourcesManager();
  sub_1ABA7D028();
  v5 = swift_allocObject();
  result = sub_1ABF239C4();
  *(v5 + 16) = result;
  *a2 = v4;
  a2[1] = a1;
  a2[2] = v5;
  return result;
}

void sub_1ABD8211C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  Array<A>.triples(for:)(a1, *v2);
  if (!v3)
  {
    *a2 = v5;
  }
}

uint64_t sub_1ABD8214C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Array<A>.triples<A>(for:)(a1, *v3, a2);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1ABD82184@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  result = Array<A>.triples()();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t CustomKnosisResultContext.init(knosisAnswers:objectMapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CustomKnosisResultContext();
  v5 = *(v4 + 40);
  type metadata accessor for InitializationResourcesManager();
  sub_1ABA7D028();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1ABF239C4();
  *(a2 + v5) = v6;
  *(a2 + *(v4 + 36)) = a1;
  sub_1ABA8AD50();
  v8 = *(v7 + 32);
  v9 = sub_1ABA8B14C();

  return v10(v9);
}

uint64_t sub_1ABD82358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v18;
  v37 = &v40;

  sub_1ABC81214(sub_1ABD914AC, v38);

  v19 = v39;
  if (HIBYTE(v39) > 0xFEu)
  {

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v21 = a4;
    v22 = 1;
    return sub_1ABA7B9B4(v21, v22, 1, TupleTypeMetadata2);
  }

  v35 = v38[0];
  if ((v39 & 0x100) == 0)
  {
    v33 = v38[2];
    v34 = v38[1];
    v31 = v38[4];
    v32 = v38[3];
    v30 = v38[5];
    (*(v9 + 16))(v12, v4, v8);
    v23 = *(a3 + 24);
    CustomKnosisResultContext.init(knosisAnswers:objectMapping:)(a2, v17);
    v24 = swift_getTupleTypeMetadata2();
    v25 = *(v24 + 48);
    v26 = v34;
    *a4 = v35;
    *(a4 + 8) = v26;
    v27 = v32;
    *(a4 + 16) = v33;
    *(a4 + 24) = v27;
    v28 = v30;
    *(a4 + 32) = v31;
    *(a4 + 40) = v28;
    *(a4 + 48) = v19;
    (*(v36 + 32))(a4 + v25, v17, a3);
    v21 = a4;
    v22 = 0;
    TupleTypeMetadata2 = v24;
    return sub_1ABA7B9B4(v21, v22, 1, TupleTypeMetadata2);
  }

  v40 = v35;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  return swift_willThrowTypedImpl();
}

uint64_t sub_1ABD8262C(uint64_t a1, uint64_t a2)
{
  sub_1ABD82740(v2, *(a2 + 16), *(a2 + 24));
  sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
  swift_getTupleTypeMetadata2();
  sub_1ABAB47C4(&qword_1EB4D92C0, &qword_1EB4D92B8, &unk_1ABF5FD40);
  v3 = sub_1ABF23F24();

  return v3;
}

uint64_t (*sub_1ABD82740(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for CustomKnosisResultContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v11, v6);
  return sub_1ABD91140;
}

void CustomKnosisResultContext.entityFromAnswers(for:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = *v3;
  v5 = CustomKnosisResultContext.tripleProvider.getter(v1);
  v6 = sub_1ABA9F504(v5);

  Array<A>.triplesWithParentAnswers()(v6);
  sub_1ABAB5148();

  if (!v0)
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    v9 = sub_1ABA8C744();
    v11 = sub_1ABD829C4(v9, v10, v8);
    MEMORY[0x1EEE9AC00](v11);
    sub_1ABA97024();
    v12 = sub_1ABA8C744();
    sub_1ABAD219C(v12, v13);
    sub_1ABA8C7C0();
    sub_1ABA7D918();
    sub_1ABAA05C0(v14);
    sub_1ABD9150C();
    sub_1ABAB5154();
    sub_1ABF23F24();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t (*sub_1ABD829C4(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for CustomKnosisResultContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v11, v6);
  return sub_1ABD91140;
}

void CustomKnosisResultContext.entitiesFromAnswers<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = CustomKnosisResultContext.tripleProvider.getter(v27);
  Array<A>.triplesWithParentAnswers<A>(for:)(v30, v31, v26);

  if (!v20)
  {
    v32 = *(v28 + 16);
    v33 = *(v28 + 24);
    v34 = sub_1ABA8A40C();
    v36 = sub_1ABD82C80(v34, v35, v26, v33, v24);
    a10 = &a9;
    MEMORY[0x1EEE9AC00](v36);
    sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
    sub_1ABA8C7C0();
    sub_1ABAA1CE0();
    sub_1ABF241F4();
    sub_1ABB668FC();
    sub_1ABF23A24();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t (*sub_1ABD82C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = type metadata accessor for CustomKnosisResultContext();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v19 - v14;
  (*(v11 + 16))(&v19 - v14, a1, v10, v13);
  v16 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  (*(v11 + 32))(&v17[v16], v15, v10);
  return sub_1ABD911E4;
}

uint64_t CustomKnosisResultContext.entitiesGroupedByEntityIdentifierFromAnswers()(uint64_t a1)
{
  CustomKnosisResultContext.tripleProvider.getter(a1);
  sub_1ABD81A34();

  if (!v2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = sub_1ABA8C744();
    v8 = sub_1ABD82F7C(v6, v7, v5);
    MEMORY[0x1EEE9AC00](v8);
    sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
    sub_1ABA8C7C0();
    sub_1ABAA1CE0();
    sub_1ABF241F4();
    sub_1ABB668FC();
    v1 = sub_1ABF23A24();
  }

  return v1;
}

uint64_t (*sub_1ABD82F7C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for CustomKnosisResultContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v11, v6);
  return sub_1ABD9116C;
}

void CustomKnosisResultContext.entitiesFromAnswers()()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = CustomKnosisResultContext.tripleProvider.getter(v1);
  Array<A>.triplesWithParentAnswers()(v3);
  sub_1ABAB5148();

  if (!v0)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    v6 = sub_1ABA8C744();
    v8 = sub_1ABD83244(v6, v7, v5);
    MEMORY[0x1EEE9AC00](v8);
    sub_1ABA97024();
    v9 = sub_1ABA8C744();
    sub_1ABAD219C(v9, v10);
    swift_getTupleTypeMetadata2();
    sub_1ABA7D918();
    sub_1ABAA05C0(v11);
    sub_1ABD9150C();
    sub_1ABF23F24();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t (*sub_1ABD83244(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for CustomKnosisResultContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v11, v6);
  return sub_1ABD91140;
}

uint64_t sub_1ABD8337C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = sub_1ABF247E4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v55 = v54 - v14;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v69 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v57 = v54 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = sub_1ABF247E4();
  v66 = *(v64 - 8);
  v22 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v67 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v63 = (v54 - v25);
  v60 = a3;
  v61 = a6;
  v26 = type metadata accessor for TypedEntityIdentifier();
  swift_getTupleTypeMetadata2();
  sub_1ABF24154();
  v54[1] = swift_getWitnessTable();
  v54[2] = v26;
  v72 = sub_1ABF239C4();
  v27 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 64);
  v31 = (v28 + 63) >> 6;
  v65 = (v15 + 16);
  v68 = (v15 + 32);
  v62 = (v66 + 32);
  v58 = a1;
  v59 = (v15 + 8);

  v33 = 0;
  v66 = TupleTypeMetadata2;
  while (v30)
  {
    v34 = v33;
LABEL_11:
    v36 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v37 = v36 | (v34 << 6);
    v38 = v57;
    v39 = *(*(v58 + 48) + 8 * v37);
    (*(v15 + 16))(v57, *(v58 + 56) + *(v15 + 72) * v37, a4);
    v41 = v66;
    v40 = v67;
    v42 = *(v66 + 48);
    *v67 = v39;
    v35 = v40;
    v43 = v38;
    TupleTypeMetadata2 = v41;
    (*(v15 + 32))(&v40[v42], v43, a4);
    v44 = 0;
LABEL_12:
    sub_1ABA7B9B4(v35, v44, 1, TupleTypeMetadata2);
    v45 = v63;
    (*v62)();
    if (sub_1ABA7E1E0(v45, 1, TupleTypeMetadata2) == 1)
    {

      return v72;
    }

    v46 = v45;
    v47 = *v45;
    (*v68)(v69, v46 + *(TupleTypeMetadata2 + 48), a4);
    v70 = v47;
    TypedEntityIdentifier.init(untyped:)(&v70, v60, v61, &v71);
    if (v7)
    {

      result = (*v59)(v69, a4);
      v7 = 0;
    }

    else
    {
      v48 = v71;
      v49 = *v65;
      v50 = v69;
      v51 = v15;
      v52 = v55;
      v56 = 0;
      v49(v55, v69, a4);
      sub_1ABA7B9B4(v52, 0, 1, a4);
      v71 = v48;
      sub_1ABF23A44();
      v15 = v51;
      sub_1ABF23A74();
      v53 = v50;
      TupleTypeMetadata2 = v66;
      result = (*v59)(v53, a4);
      v7 = v56;
    }
  }

  v35 = v67;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
      v30 = 0;
      v44 = 1;
      goto LABEL_12;
    }

    v30 = *(v27 + 8 * v34);
    ++v33;
    if (v30)
    {
      v33 = v34;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABD83874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = a6;
  v54 = a3;
  v51 = a7;
  v45 = *(a4 + 16);
  v43 = *(v45 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v13 - 8);
  v14 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v17 = sub_1ABF252B4();
  v18 = sub_1ABF247E4();
  v49 = *(v18 - 8);
  v50 = v18;
  v19 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v40 - v20;
  v22 = sub_1ABF247E4();
  v47 = *(v22 - 8);
  v48 = v22;
  v23 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v40 - v24;
  v41 = *(a5 - 8);
  v26 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v40 = &v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v29 = a2;

  sub_1ABAD219C(&qword_1EB4D93B0, &qword_1ABF5FF18);
  sub_1ABAB47C4(&qword_1EB4CE740, &qword_1EB4D93B0, &qword_1ABF5FF18);
  swift_getWitnessTable();
  v30 = v53;
  sub_1ABC80FCC(a5, v54, a5, v21);
  if (sub_1ABA7E1E0(v21, 1, v17) == 1)
  {

    (*(v49 + 8))(v21, v50);
    sub_1ABA7B9B4(v25, 1, 1, a5);
    (*(v47 + 8))(v25, v48);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return sub_1ABA7B9B4(v51, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v33 = v55;
    sub_1ABD49B3C(v17, &v56, v25);
    if (v33)
    {
    }

    else
    {
      sub_1ABA7B9B4(v25, 0, 1, a5);
      v34 = v40;
      v55 = *(v41 + 32);
      v55(v40, v25, a5);
      (*(v43 + 16))(v42, v30, v45);
      v35 = *(a4 + 24);
      v36 = v44;
      CustomKnosisResultContext.init(knosisAnswers:objectMapping:)(v29, v44);
      v37 = swift_getTupleTypeMetadata2();
      v38 = *(v37 + 48);
      v39 = v51;
      v55(v51, v34, a5);
      (*(v46 + 32))(v39 + v38, v36, a4);
      return sub_1ABA7B9B4(v39, 0, 1, v37);
    }
  }
}

uint64_t sub_1ABD83DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
  swift_getTupleTypeMetadata2();
  sub_1ABAB47C4(&qword_1EB4D92C0, &qword_1EB4D92B8, &unk_1ABF5FD40);
  return sub_1ABF23F24();
}

uint64_t sub_1ABD83EB4@<X0>(uint64_t *a1@<X0>, int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = type metadata accessor for CustomKnosisResultContext();
  return sub_1ABD83874(v9, v10, a2, v11, a3, a4, a5);
}

void CustomKnosisResultContext.graphObjectFromAnswers<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  sub_1ABA8AB38();
  v24 = *v23;
  v26 = CustomKnosisResultContext.tripleProvider.getter(v25);
  a10 = v24;
  v27 = sub_1ABD811F4(&a10, v26);

  Array<A>.triplesWithParentAnswers()(v27);
  sub_1ABAB5148();

  if (!v20)
  {
    sub_1ABA8B730();
    MEMORY[0x1EEE9AC00](v28);
    sub_1ABAB58CC();
    v29 = sub_1ABA8C744();
    sub_1ABAD219C(v29, v30);
    sub_1ABA8C7C0();
    sub_1ABA7D918();
    sub_1ABAA05C0(v31);
    sub_1ABD9150C();
    sub_1ABAB67E0();
    sub_1ABAB5154();
    sub_1ABF23F24();
    sub_1ABA96100();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

void CustomKnosisResultContext.graphObjectsFromAnswers<A, B>(for:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v20 = v0;
  v12 = CustomKnosisResultContext.tripleProvider.getter(v10);
  v13 = *(v11 + 24);
  v25 = *(v11 + 16);
  v24[2] = v25;
  v24[3] = v9;
  v22 = v9;
  v23 = v13;
  v24[4] = v7;
  v24[5] = v13;
  v21 = v5;
  v24[6] = v5;
  v24[7] = v3;
  v15 = sub_1ABB444E4(sub_1ABC7D73C, v24, v7, &type metadata for EntityIdentifier, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v14);
  sub_1ABD81330(v15, v12);

  v16 = sub_1ABD81A34();

  if (!v1)
  {
    v17 = sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
    v19[1] = sub_1ABD8337C(v16, v25, v22, v17, v23, v21);
    v19[0] = v19;

    MEMORY[0x1EEE9AC00](v18);
    sub_1ABA9F7D8();
    type metadata accessor for TypedEntityIdentifier();
    swift_getTupleTypeMetadata2();
    sub_1ABAA1CE0();
    sub_1ABF241F4();
    sub_1ABAA399C();
    swift_getWitnessTable();
    sub_1ABF239B4();
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABD84298@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for CustomKnosisResultContext();
  result = sub_1ABD83DC4(v4, 1, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void CustomKnosisResultContext.graphObjectsGroupedByEntityIdentifierFromAnswers<A>(ofType:)()
{
  sub_1ABA7BCA8();
  sub_1ABA8AB38();
  v3 = v2;
  CustomKnosisResultContext.tripleProvider.getter(v2);
  sub_1ABD81A34();

  if (!v0)
  {
    v4 = *(v3 + 16);
    v5 = sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
    v6 = *(v3 + 24);
    sub_1ABA9F7D8();
    sub_1ABD8337C(v7, v8, v9, v5, v6, v1);
    v11[1] = v11;

    MEMORY[0x1EEE9AC00](v10);
    type metadata accessor for TypedEntityIdentifier();
    swift_getTupleTypeMetadata2();
    sub_1ABAA1CE0();
    sub_1ABF241F4();
    sub_1ABAA399C();
    swift_getWitnessTable();
    sub_1ABF239B4();
    sub_1ABA96100();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABD84498@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for CustomKnosisResultContext();
  result = sub_1ABD83DC4(v4, 0, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void CustomKnosisResultContext.graphObjectsFromAnswers<A>(ofType:)()
{
  sub_1ABA7BCA8();
  sub_1ABA8AB38();
  v2 = CustomKnosisResultContext.tripleProvider.getter(v1);
  Array<A>.triplesWithParentAnswers()(v2);
  sub_1ABAB5148();

  if (!v0)
  {
    sub_1ABA8B730();
    MEMORY[0x1EEE9AC00](v3);
    sub_1ABAB58CC();
    v4 = sub_1ABA8C744();
    sub_1ABAD219C(v4, v5);
    sub_1ABA8C7C0();
    sub_1ABA7D918();
    sub_1ABAA05C0(v6);
    sub_1ABD9150C();
    sub_1ABAB67E0();
    sub_1ABAB5154();
    sub_1ABF23F24();
    sub_1ABA96100();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABD8460C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  sub_1ABA8ADB8(a1);
  v13 = type metadata accessor for CustomKnosisResultContext();
  return sub_1ABD83874(v8, v9, a7, v13, a4, a6, v7);
}

uint64_t sub_1ABD84688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  if (*(v12 + 16))
  {
    v37 = v21;
    v38 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v20;
    v40 = v19;
    v41 = v18;
    v42 = a3;
    v43 = v4;
    v44 = v13;
    v50 = *(v12 + 32);
    v45 = v12;
    v22 = v15;
    v23 = v14;
    v24 = v16;

    sub_1ABAD219C(&qword_1EB4D93B0, &qword_1ABF5FF18);
    v25 = sub_1ABAB47C4(&qword_1EB4CE740, &qword_1EB4D93B0, &qword_1ABF5FF18);
    swift_getWitnessTable();
    sub_1ABC80E28(&v50, v23 & 1, v22, v46, a2, v25, &protocol witness table for ExtendedTriple, v24);
    if (v47 == 255)
    {

      sub_1ABA925A4(v46, qword_1EB4D3948, &qword_1ABF508F0);
      sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v30 = v42;
      v31 = 1;
    }

    else
    {
      v26 = v44;
      if (v47)
      {

        v50 = *&v46[0];
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        return swift_willThrowTypedImpl();
      }

      sub_1ABAFF5C4(v46, v48);
      sub_1ABAFF5C4(v48, v49);
      (*(v40 + 16))(v37, v5, v39);
      v32 = *(a2 + 24);
      v33 = v38;
      CustomKnosisResultContext.init(knosisAnswers:objectMapping:)(v26, v38);
      sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
      v34 = swift_getTupleTypeMetadata2();
      v35 = *(v34 + 48);
      v36 = v42;
      sub_1ABAFF5C4(v49, v42);
      (*(v41 + 32))(v36 + v35, v33, a2);
      v30 = v36;
      v31 = 0;
      TupleTypeMetadata2 = v34;
    }

    return sub_1ABA7B9B4(v30, v31, 1, TupleTypeMetadata2);
  }

  else
  {
    sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
    v28 = swift_getTupleTypeMetadata2();
    return sub_1ABA7B9B4(a3, 1, 1, v28);
  }
}

uint64_t sub_1ABD84AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(a4 + 24);
  sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
  sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
  swift_getTupleTypeMetadata2();
  sub_1ABAB47C4(&qword_1EB4D92C0, &qword_1EB4D92B8, &unk_1ABF5FD40);
  return sub_1ABF23F24();
}

uint64_t sub_1ABD84BA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = type metadata accessor for CustomKnosisResultContext();
  return sub_1ABD84688(v3, v5, a2);
}

void CustomKnosisResultContext.graphObjectFromAnswers<A>(forUntyped:mapping:)()
{
  sub_1ABA7BCA8();
  v2 = *v1;
  v4 = CustomKnosisResultContext.tripleProvider.getter(v3);
  v5 = sub_1ABA9F504(v4);

  Array<A>.triplesWithParentAnswers()(v5);
  sub_1ABAB5148();

  if (!v0)
  {
    sub_1ABA8B730();
    MEMORY[0x1EEE9AC00](v6);
    sub_1ABAA13B0();
    v7 = sub_1ABA8C744();
    sub_1ABAD219C(v7, v8);
    sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
    sub_1ABA8C7C0();
    sub_1ABA7D918();
    sub_1ABAA05C0(v9);
    sub_1ABD9150C();
    sub_1ABAB5154();
    sub_1ABF23F24();
    sub_1ABA96100();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

void CustomKnosisResultContext.graphObjectsFromAnswers<A, B>(forUntyped:mapping:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  CustomKnosisResultContext.tripleProvider.getter(v3);
  v5 = sub_1ABAA015C();
  Array<A>.triplesWithParentAnswers<A>(for:)(v5, v6, v2);

  if (!v0)
  {
    v10[1] = v10;
    MEMORY[0x1EEE9AC00](v7);
    v8 = *(v4 + 16);
    v9 = *(v4 + 24);
    sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
    sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
    swift_getTupleTypeMetadata2();
    sub_1ABAA1CE0();
    sub_1ABF241F4();
    sub_1ABB668FC();
    sub_1ABF239B4();
    sub_1ABA96100();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABD84EDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = type metadata accessor for CustomKnosisResultContext();
  result = sub_1ABD84AA8(v6, a2, 1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void CustomKnosisResultContext.graphObjectsGroupedByEntityIdentifierFromAnswers<A>(mapping:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  CustomKnosisResultContext.tripleProvider.getter(v1);
  sub_1ABD81A34();

  if (!v0)
  {
    MEMORY[0x1EEE9AC00](v3);
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
    sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
    swift_getTupleTypeMetadata2();
    sub_1ABAA1CE0();
    sub_1ABF241F4();
    sub_1ABB668FC();
    sub_1ABA9F7D8();
    sub_1ABF239B4();
    sub_1ABA96100();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABD850A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = type metadata accessor for CustomKnosisResultContext();
  result = sub_1ABD84AA8(v6, a2, 1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1ABD85134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v10[2] = a4;
  v11 = a1;
  v10[0] = a2;
  v10[1] = a3;

  v6 = Array<A>.triplesWithParentAnswers()(v5);

  if (!v4)
  {
    MEMORY[0x1EEE9AC00](v7);
    v9[2] = v10;
    v9[3] = &v11;
    v5 = sub_1ABE0F6E0(sub_1ABD91038, v9, v6);
  }

  return v5;
}

void CustomKnosisResultContext.graphObjectsFromAnswers<A>(mapping:)()
{
  sub_1ABA7BCA8();
  sub_1ABA8AB38();
  v2 = CustomKnosisResultContext.tripleProvider.getter(v1);
  Array<A>.triplesWithParentAnswers()(v2);
  sub_1ABAB5148();

  if (!v0)
  {
    sub_1ABA8B730();
    MEMORY[0x1EEE9AC00](v3);
    sub_1ABAA13B0();
    v4 = sub_1ABA8C744();
    sub_1ABAD219C(v4, v5);
    sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
    sub_1ABA8C7C0();
    sub_1ABA7D918();
    sub_1ABAA05C0(v6);
    sub_1ABD9150C();
    sub_1ABAB5154();
    sub_1ABF23F24();
    sub_1ABA96100();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABD85314@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  if (!*(result + 16))
  {
    goto LABEL_6;
  }

  v9 = *(result + 32);
  MEMORY[0x1EEE9AC00](result);

  sub_1ABD7F7EC(v9, sub_1ABD9109C, a4, 1, v11);

  if (v12 == 255)
  {

    result = sub_1ABA925A4(v11, qword_1EB4D3948, &qword_1ABF508F0);
LABEL_6:
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  if (v12)
  {

    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    return swift_willThrowTypedImpl();
  }

  else
  {
    sub_1ABAFF5C4(v11, v13);
    sub_1ABAFF5C4(v13, v14);
    type metadata accessor for InitializationResourcesManager();
    v10 = swift_allocObject();

    *(v10 + 16) = sub_1ABF239C4();
    result = sub_1ABAFF5C4(v14, a5);
    *(a5 + 40) = a3;
    *(a5 + 48) = a2;
    *(a5 + 56) = v10;
  }

  return result;
}

uint64_t sub_1ABD854F4(uint64_t *a1)
{
  sub_1ABA8ADB8(a1);
  type metadata accessor for CustomKnosisResultContext();
  sub_1ABA9F7D8();
  return sub_1ABD84688(v1, v2, v3);
}

void CustomKnosisResultContext.graphObjectFromAnswers(forUntyped:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  CustomKnosisResultContext.graphObjectFromAnswers<A>(forUntyped:mapping:)();
}

void CustomKnosisResultContext.graphObjectsFromAnswers<A>(forUntyped:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  CustomKnosisResultContext.graphObjectsFromAnswers<A, B>(forUntyped:mapping:)();
}

void CustomKnosisResultContext.graphObjectsGroupedByEntityIdentifierFromAnswers()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  CustomKnosisResultContext.graphObjectsGroupedByEntityIdentifierFromAnswers<A>(mapping:)();
}

void CustomKnosisResultContext.graphObjectsFromAnswers()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  CustomKnosisResultContext.graphObjectsFromAnswers<A>(mapping:)();
}

void (*sub_1ABD85624(void *a1))(void *a1)
{
  v2 = sub_1ABAFDD10(0x28uLL);
  *a1 = v2;
  v2[4] = CustomKnosisResultContext.objectMapping.modify();
  return sub_1ABC80470;
}

uint64_t sub_1ABD85680@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = CustomKnosisResultContext.tripleProvider.getter(a1);
  *a2 = result;
  return result;
}

uint64_t KnosisAnswer.answerId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1ABAA6150(v2, v3, v4, v5, v6, *(v1 + 34), a1);
}

__n128 KnosisAnswer.answerId.setter(uint64_t a1)
{
  sub_1ABA96494(a1);
  sub_1ABC6D458(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 34));
  result = *v1;
  v6 = *(v1 + 16);
  *v2 = *v1;
  *(v2 + 16) = v6;
  *(v2 + 32) = v3;
  *(v2 + 34) = v4;
  return result;
}

uint64_t KnosisAnswer.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_1ABA7D000();
}

uint64_t KnosisAnswer.name.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t KnosisAnswer.textualization.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return sub_1ABA7D000();
}

uint64_t KnosisAnswer.textualization.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t KnosisAnswer.facts.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t KnosisAnswer.parent.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t KnosisAnswer.requestIds.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

void KnosisAnswer.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 34);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 72);
  v37 = *(v0 + 80);
  v38 = *(v0 + 96);
  v7 = 0xE000000000000000;
  sub_1ABF24AB4();

  sub_1ABA8071C();
  v8 = 0;
  switch(v3)
  {
    case 1:
      v8 = EntityIdentifier.stringValue.getter();
      v7 = v9;
      break;
    case 4:
      break;
    default:

      v8 = v1;
      v7 = v2;
      break;
  }

  MEMORY[0x1AC5A9410](v8, v7);

  MEMORY[0x1AC5A9410](10, 0xE100000000000000);
  if (v5)
  {
    v10 = sub_1ABA894EC();
    MEMORY[0x1AC5A9410](v10);
    MEMORY[0x1AC5A9410](2599, 0xE200000000000000);
    MEMORY[0x1AC5A9410](0x273A656D616E20, 0xE700000000000000);
  }

  v11 = *(v6 + 64);
  v12 = *(v6 + 32);
  sub_1ABA7D32C();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v15)
      {
        while (1)
        {
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v20 >= v17)
          {
            goto LABEL_23;
          }

          v15 = *(v6 + 64 + 8 * v20);
          ++v18;
          if (v15)
          {
            v18 = v20;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

LABEL_12:
      v21 = *(v6 + 56);
      sub_1ABD91530(__clz(__rbit64(v15)));
      v22 = *(v19 + 16);
      if (__OFADD__(v22, v5))
      {
        goto LABEL_33;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v22 + v5 > *(v19 + 24) >> 1)
      {
        sub_1ABA9ECC4();
        sub_1ABAD88DC();
        v19 = v23;
      }

      v15 &= v15 - 1;
      if (!*(v2 + 16))
      {
        break;
      }

      v24 = *(v19 + 16);
      v25 = *(v19 + 24);
      sub_1ABA84218();
      if (v27 < v5)
      {
        goto LABEL_34;
      }

      sub_1ABAA1FF8(v26);
      swift_arrayInitWithCopy();

      if (v5)
      {
        v28 = *(v19 + 16);
        v29 = __OFADD__(v28, v5);
        v30 = v28 + v5;
        if (v29)
        {
          goto LABEL_35;
        }

        *(v19 + 16) = v30;
      }
    }
  }

  while (!v5);
  __break(1u);
LABEL_23:

  MEMORY[0x1AC5A9750](v19, &type metadata for KnosisFact);

  v31 = sub_1ABA7E79C();
  MEMORY[0x1AC5A9410](v31);

  MEMORY[0x1AC5A9410](10, 0xE100000000000000);
  MEMORY[0x1AC5A9410](0x3A737463616620, 0xE700000000000000);

  v32 = MEMORY[0x1AC5A9750](v37, &type metadata for KnosisAnswer);
  MEMORY[0x1AC5A9410](v32);

  MEMORY[0x1AC5A9410](10, 0xE100000000000000);
  MEMORY[0x1AC5A9410](0x73746E6572617020, 0xE90000000000003ALL);

  v33 = 0xE900000000000065;
  v34 = 0x7461636964657270;
  if (v38 != 1)
  {
    v34 = 0x7463656A626FLL;
    v33 = 0xE600000000000000;
  }

  if (v38)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0x7463656A627573;
  }

  if (v38)
  {
    v36 = v33;
  }

  else
  {
    v36 = 0xE700000000000000;
  }

  MEMORY[0x1AC5A9410](v35, v36);

  MEMORY[0x1AC5A9410](0x756F724767726120, 0xEA00000000003A70);
}

void KnosisFact.extendedTriples()()
{
  sub_1ABA7E2A8();
  v3 = *(v0 + 16);
  v4 = *(v0 + 50);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  v15 = *(v0 + 130);
  v16 = *(v0 + 136);
  v145 = MEMORY[0x1E69E7CC0];
  v116 = v5;
  v132 = v15;
  if (v4 != 1)
  {
    v144[0] = *v0;
    *&v144[1] = v3;
    *(&v144[1] + 8) = *(v0 + 24);
    *(&v144[2] + 2) = *(v0 + 34);
    BYTE2(v144[3]) = v4;
    *(&v144[3] + 3) = *(v0 + 51);
    BYTE7(v144[3]) = *(v0 + 55);
    *(&v144[3] + 1) = v5;
    *&v144[4] = v6;
    *(&v144[4] + 1) = v8;
    *&v144[5] = v7;
    WORD4(v144[5]) = v9;
    v65 = *(v0 + 90);
    HIWORD(v144[5]) = *(v0 + 94);
    *(&v144[5] + 10) = v65;
    *&v144[6] = v10;
    *(&v144[6] + 1) = v11;
    v66 = v12;
    *&v144[7] = v12;
    *(&v144[7] + 1) = v13;
    v67 = v13;
    v130 = v14;
    LOWORD(v144[8]) = v14;
    BYTE2(v144[8]) = v15;
    BYTE7(v144[8]) = *(v0 + 135);
    *(&v144[8] + 3) = *(v0 + 131);
    *(&v144[8] + 1) = v16;
    KnosisFact.splitSubentityIdentifier()(&v136);
    v15 = v137;
    if (!v137)
    {
      goto LABEL_58;
    }

    v121 = v6;
    v109 = v8;
    v127 = v136;
    v8 = v141;
    v26 = v139;
    v126 = v138;
    LOWORD(v124) = v140;
    WORD2(v110) = v9;
    switch(v132)
    {
      case 1:
        *&v144[0] = v10;

        sub_1ABA89A38();
        v10 = EntityIdentifier.stringValue.getter();
        v11 = v80;
        break;
      case 2:
      case 3:

        sub_1ABA89A38();

        break;
      case 4:

        sub_1ABA89A38();
        v10 = 0;
        v11 = 0xE000000000000000;
        break;
      default:

        sub_1ABA89A38();
        v78 = sub_1ABA894EC();
        sub_1ABAE4358(v78, v79, v66, v67, v130, 0);
        break;
    }

    v1 = v126;
    sub_1ABAD89DC();
    v82 = v81;
    v2 = *(v81 + 16);
    v25 = *(v81 + 24);
    v18 = v2 + 1;
    if (v2 < v25 >> 1)
    {
      goto LABEL_51;
    }

    goto LABEL_61;
  }

  v101 = v3;
  HIDWORD(v110) = v9;
  v109 = v8;
  v121 = v6;
  if (*(v16 + 16))
  {
    LODWORD(v129) = v14;
    v125 = v13;
    *&v127 = v12;
    v115 = v7;
    v18 = v16 + 64;
    v17 = *(v16 + 64);
    v19 = *(v16 + 32);
    sub_1ABA7D32C();
    v22 = v21 & v20;
    v9 = (v23 + 63) >> 6;
    v100 = v24;

    v25 = 0;
    v118 = 32;
    v96 = v9;
    v98 = v18;
    if (v22)
    {
      while (2)
      {
        v26 = v25;
        v27 = v100;
LABEL_9:
        v28 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v29 = v28 | (v26 << 6);
        v30 = *(v27 + 48) + 40 * v29;
        v108 = *v30;
        v18 = *(v30 + 24);
        v106 = *(v30 + 16);
        HIDWORD(v104) = *(v30 + 32);
        v2 = *(*(v27 + 56) + 8 * v29);
        v1 = *(v2 + 16);
        v123 = *(v30 + 8);

        v122 = v18;

        v9 = 0;
        v124 = MEMORY[0x1E69E7CC0];
LABEL_10:
        v8 = v118 + 144 * v9;
        while (v1 != v9)
        {
          v25 = *(v2 + 16);
          if (v9 >= v25)
          {
            __break(1u);
            goto LABEL_60;
          }

          v31 = memcpy(v144, (v2 + v8), sizeof(v144));
          switch(v15)
          {
            case 1uLL:
              sub_1ABAA31F0();
              if ((v10 & 0x80000000000000) == 0)
              {
                v51 += 1272;
              }

              sub_1ABA9F1BC(v43, v44, v45, v46, v47, v48, v49, v50, v96, v98, v100, v101, v102, v104, v106, v108, v109, v110, v112, v115, v116, v118, v119, v121, v122, v123, v124, v125, v127, *(&v127 + 1), v128, v129, v132, v10, v51, 0xE300000000000000, v136);
              v52 = sub_1ABF24FF4();
              v18 = &v134;
              MEMORY[0x1AC5A9410](v52);

              v39 = v134;
              v40 = v135;
              v15 = v132;
              break;
            case 2uLL:
            case 3uLL:
              sub_1ABA9F1BC(v31, v32, v33, v34, v35, v36, v37, v38, v96, v98, v100, v101, v102, v104, v106, v108, v109, v110, v112, v115, v116, v118, v119, v121, v122, v123, v124, v125, v127, *(&v127 + 1), v128, v129, v132, v133, v134, v135, v136);

              goto LABEL_17;
            case 4uLL:
              sub_1ABA9F1BC(v31, v32, v33, v34, v35, v36, v37, v38, v96, v98, v100, v101, v102, v104, v106, v108, v109, v110, v112, v115, v116, v118, v119, v121, v122, v123, v124, v125, v127, *(&v127 + 1), v128, v129, v132, v133, v134, v135, v136);
              v39 = 0;
              v40 = 0xE000000000000000;
              break;
            default:
              sub_1ABA9F1BC(v31, v32, v33, v34, v35, v36, v37, v38, v96, v98, v100, v101, v102, v104, v106, v108, v109, v110, v112, v115, v116, v118, v119, v121, v122, v123, v124, v125, v127, *(&v127 + 1), v128, v129, v132, v133, v134, v135, v136);
              v41 = sub_1ABA894EC();
              sub_1ABAE4358(v41, v42, v127, v125, v129, 0);
LABEL_17:
              v39 = sub_1ABA894EC();
              break;
          }

          RelationshipIdentifier.init(_:)(v39, v40, &v142);
          if ((v143 & 1) == 0)
          {
            v120 = *(&v144[6] + 1);
            v53 = v144[7];
            v54 = LOWORD(v144[8]);
            ++v9;
            v103 = v142;
            switch(BYTE2(v144[8]))
            {
              case 1:
                sub_1ABAA31F0();
                if ((v57 & 0x80000000000000) == 0)
                {
                  v56 += 1272;
                }

                *&v136 = v56;
                *(&v136 + 1) = 0xE300000000000000;
                v134 = v57;

                v58 = sub_1ABF24FF4();
                MEMORY[0x1AC5A9410](v58);

                sub_1ABAE4304(v144);
                v55 = *(&v136 + 1);
                v113 = v136;
                goto LABEL_31;
              case 2:
              case 3:
                v113 = *&v144[6];

                goto LABEL_27;
              case 4:

                sub_1ABAE4304(v144);
                v113 = 0;
                v55 = 0xE000000000000000;
LABEL_31:
                v120 = v55;
                goto LABEL_32;
              default:
                v113 = *&v144[6];

                sub_1ABAE4358(v113, v120, v53, *(&v53 + 1), v54, 0);
LABEL_27:
                sub_1ABAE4304(v144);
LABEL_32:
                v15 = v132;
                LODWORD(v142) = v136;
                WORD2(v142) = WORD2(v136);
                LODWORD(v133) = v134;
                WORD2(v133) = WORD2(v134);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v62 = *(v124 + 16);
                  sub_1ABA7BEF0();
                  sub_1ABAD89DC();
                  v124 = v63;
                }

                v18 = *(v124 + 16);
                v59 = *(v124 + 24);
                if (v18 >= v59 >> 1)
                {
                  sub_1ABA8E370(v59);
                  sub_1ABAD89DC();
                  v124 = v64;
                }

                *(v124 + 16) = v18 + 1;
                sub_1ABA8B53C((v124 + 112 * v18), v96, v98, v100, v101, v103, v104, v106, v108, v109, v110, v113, v115, v116, v118, v120, v121);
                *(v60 + 64) = v115;
                *(v60 + 72) = WORD2(v110);
                v61 = WORD2(v142);
                *(v60 + 74) = v142;
                *(v60 + 78) = v61;
                *(v60 + 80) = v102;
                *(v60 + 88) = v108;
                *(v60 + 96) = v123;
                *(v60 + 104) = v106;
                *(v60 + 112) = v122;
                *(v60 + 120) = WORD2(v104);
                *(v60 + 126) = WORD2(v133);
                *(v60 + 122) = v133;
                *(v60 + 128) = v112;
                *(v60 + 136) = v119;
                break;
            }

            goto LABEL_10;
          }

          sub_1ABAE4304(v144);
          v8 += 144;
          ++v9;
        }

        sub_1ABD7DB90(v124);
        v25 = v26;
        v9 = v96;
        v18 = v98;
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v27 = v100;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v9)
      {

        v68 = v145;
        goto LABEL_56;
      }

      v22 = *(v18 + 8 * v26);
      ++v25;
      if (v22)
      {
        goto LABEL_9;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    sub_1ABA7BBEC(v25);
    sub_1ABA898F8();
    sub_1ABAD89DC();
    v82 = v93;
LABEL_51:
    *(v82 + 16) = v18;
    v83 = v82 + 112 * v2;
    *(v83 + 32) = v127;
    *(v83 + 48) = v15;
    *(v83 + 56) = v1;
    *(v83 + 64) = v26;
    *(v83 + 72) = v124;
    *(v83 + 80) = v8;
    *(v83 + 88) = v116;
    *(v83 + 96) = v121;
    *(v83 + 104) = v109;
    *(v83 + 112) = v9;
    *(v83 + 120) = WORD2(v110);
    *(v83 + 128) = v10;
    *(v83 + 136) = v11;
    *&v144[0] = v82;

    sub_1ABAA35DC();
    sub_1ABD7E954(v144, v84, v85, sub_1ABD8E3F0, sub_1ABD8E2FC);
LABEL_57:

LABEL_58:
    sub_1ABA7BC1C();
    return;
  }

  if (_Records_GDEntityPredicate_records)
  {
    v69 = v7;
    v70 = *(_Records_GDEntityPredicate_records + 1);
    v71 = *(_Records_GDEntityPredicate_records + 2);
    v72 = *_Records_GDEntityPredicate_records;

    sub_1ABA91D48(v72, v70, v71, v144);
    v73 = *(&v144[0] + 1);
    v131 = *&v144[0];
    v74 = v144[1];
    v75 = 0xE000000000000000;
    v76 = v144[2];
    v77 = 0;
    switch(v132)
    {
      case 1:
        *&v144[0] = v10;
        v77 = EntityIdentifier.stringValue.getter();
        v75 = v86;
        break;
      case 4:
        break;
      default:

        v77 = v10;
        v75 = v11;
        break;
    }

    sub_1ABAD89DC();
    v68 = v87;
    v89 = *(v87 + 16);
    v88 = *(v87 + 24);
    if (v89 >= v88 >> 1)
    {
      sub_1ABA9A58C(v88);
      sub_1ABAD89DC();
      v68 = v94;
    }

    *(v68 + 16) = v89 + 1;
    sub_1ABA8B53C((v68 + 112 * v89), v95, v97, v99, v101, v102, v104, v105, v107, v109, v110, v112, v114, v116, v117, v119, v6);
    *(v90 + 64) = v69;
    *(v90 + 72) = v111;
    *(v90 + 80) = 0;
    *(v90 + 88) = v131;
    *(v90 + 96) = v73;
    *(v90 + 104) = v74;
    *(v90 + 120) = v76;
    *(v90 + 128) = v77;
    *(v90 + 136) = v75;
    v145 = v68;
LABEL_56:
    *&v144[0] = v68;

    sub_1ABAA35DC();
    sub_1ABD7E954(v144, v91, v92, sub_1ABD8E3F0, sub_1ABD8E2FC);
    goto LABEL_57;
  }

  __break(1u);

  __break(1u);
}

void sub_1ABD866BC()
{
  sub_1ABA7E2A8();
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_50:
    sub_1ABA7BC1C();
    return;
  }

  v3 = 0;
  v4 = *(v0 + 96);
  v79 = v1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = *(v1 + 16);
  v77 = v6;
  v78 = *(v0 + 80);
  HIDWORD(v81) = v4;
  while (1)
  {
    if (v3 >= v6)
    {
      goto LABEL_52;
    }

    v80 = v3;
    memcpy(v107, (v79 + 112 * v3), 0x70uLL);
    sub_1ABD7D6C8();
    v8 = *(v7 + 16);
    if (v8)
    {
      break;
    }

LABEL_48:
    v3 = v80 + 1;
    if (v80 + 1 == v2)
    {
      goto LABEL_50;
    }

    v6 = *(v1 + 16);
  }

  v9 = 0;
  v83 = *(v7 + 16);
  v84 = v7 + 32;
  v10 = v83;
  v11 = v7;
  v82 = v7;
  while (v9 < v10)
  {
    v12 = memcpy(v107, (v84 + 144 * v9), 0x90uLL);
    if (!v4)
    {
      if (*(v107[17] + 16))
      {
        memcpy(__dst, (v84 + 144 * v9), sizeof(__dst));
        KnosisFact.allQualifiers.getter();
        v24 = v23;
        v25 = *(v23 + 16);
        if (v25)
        {
          v26 = v25 - 1;
          for (i = 32; ; i += 144)
          {
            v28 = memcpy(__dst, (v24 + i), sizeof(__dst));
            v36 = __dst[12];
            v37 = __dst[13];
            switch(BYTE2(__dst[16]))
            {
              case 1:
                sub_1ABAA31F0();
                if ((v36 & 0x80000000000000) == 0)
                {
                  v51 += 1272;
                }

                sub_1ABA89DF4(v43, v44, v45, v46, v47, v48, v49, v50, v77, v78, v79, v80, v81, v82, v83, v84, v36, v51, 0xE300000000000000, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, __dst[0]);
                v52 = sub_1ABF24FF4();
                MEMORY[0x1AC5A9410](v52);

                v36 = v86;
                v37 = v87;
                break;
              case 2:
              case 3:
                sub_1ABA89DF4(v28, v29, v30, v31, v32, v33, v34, v35, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, __dst[0]);

                break;
              case 4:
                sub_1ABA89DF4(v28, v29, v30, v31, v32, v33, v34, v35, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, __dst[0]);
                v36 = 0;
                v37 = 0xE000000000000000;
                break;
              default:
                v39 = __dst[14];
                v38 = __dst[15];
                v40 = LOWORD(__dst[16]);
                sub_1ABA89DF4(v28, v29, v30, v31, v32, v33, v34, v35, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, __dst[0]);
                v41 = sub_1ABA8C744();
                sub_1ABAE4358(v41, v42, v39, v38, v40, 0);
                break;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7E974();
              sub_1ABAAA4F4();
              v5 = v56;
            }

            v54 = *(v5 + 16);
            v53 = *(v5 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_1ABA7BBEC(v53);
              sub_1ABA898F8();
              sub_1ABAAA4F4();
              v5 = v57;
            }

            sub_1ABAE4304(__dst);
            *(v5 + 16) = v54 + 1;
            v55 = v5 + 16 * v54;
            *(v55 + 32) = v36;
            *(v55 + 40) = v37;
            if (!v26)
            {
              break;
            }

            --v26;
          }

          v4 = HIDWORD(v81);
          goto LABEL_42;
        }
      }

      else
      {
        v20 = v107[12];
        v21 = v107[13];
        switch(BYTE2(v107[16]))
        {
          case 1:
LABEL_30:
            sub_1ABAA31F0();
            if ((v20 & 0x80000000000000) == 0)
            {
              v66 += 1272;
            }

            sub_1ABA9F398(v58, v59, v60, v61, v62, v63, v64, v65, v77, v78, v79, v80, v81, v82, v83, v84, v85, v20, v87, v66, 0xE300000000000000, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, __dst[0]);
            v67 = sub_1ABF24FF4();
            MEMORY[0x1AC5A9410](v67);

            v20 = v88;
            v21 = v89;
            break;
          case 2:
          case 3:
LABEL_29:
            sub_1ABA9F398(v12, v13, v14, v15, v16, v17, v18, v19, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, __dst[0]);

            break;
          case 4:
LABEL_33:
            sub_1ABA9F398(v12, v13, v14, v15, v16, v17, v18, v19, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, __dst[0]);
            v20 = 0;
            v21 = 0xE000000000000000;
            break;
          default:
            v22 = LOWORD(v107[16]);
LABEL_36:
            sub_1ABA9F398(v12, v13, v14, v15, v16, v17, v18, v19, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, __dst[0]);
            sub_1ABA954F0();
            sub_1ABAA2D68();
            sub_1ABAE4358(v68, v69, v70, v71, v22, 0);
            break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7E974();
          sub_1ABAAA4F4();
          v5 = v75;
        }

        v73 = *(v5 + 16);
        v72 = *(v5 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_1ABA8E370(v72);
          sub_1ABAAA4F4();
          v5 = v76;
        }

        sub_1ABAE4304(v107);
        *(v5 + 16) = v73 + 1;
        v74 = v5 + 16 * v73;
        *(v74 + 32) = v20;
        *(v74 + 40) = v21;
LABEL_42:
        v11 = v82;
      }

      v8 = v83;
      goto LABEL_44;
    }

    if (v4 != 1)
    {
      v20 = v107[2];
      v21 = v107[3];
      switch(BYTE2(v107[6]))
      {
        case 1:
          goto LABEL_30;
        case 2:
        case 3:
          goto LABEL_29;
        case 4:
          goto LABEL_33;
        default:
          v22 = LOWORD(v107[6]);
          goto LABEL_36;
      }
    }

LABEL_44:
    if (++v9 == v8)
    {

      v2 = v77;
      v1 = v78;
      goto LABEL_48;
    }

    v10 = *(v11 + 16);
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_1ABD86AC4()
{
  sub_1ABA7E2A8();
  v1 = 0;
  v2 = *(v0 + 80);
  v89 = MEMORY[0x1E69E7CC0];
  v75 = v2;
  v76 = *(v2 + 16);
LABEL_2:
  if (v1 != v76)
  {
    if (v1 < *(v75 + 16))
    {
      sub_1ABA9F0E0(v88);
      v74 = v1 + 1;
      sub_1ABA9F0E0(v87);
      sub_1ABAE441C(v88, __dst);
      sub_1ABD7D6C8();
      v4 = v3;
      v5 = 0;
      v78 = *(v3 + 16);
      v77 = MEMORY[0x1E69E7CC0];
LABEL_5:
      for (i = 144 * v5 + 32; ; i += 144)
      {
        if (v78 == v5)
        {
          sub_1ABC6D404(v88);

          sub_1ABD7DEE8(v77);
          v1 = v74;
          goto LABEL_2;
        }

        if (v5 >= *(v4 + 16))
        {
          break;
        }

        memcpy(__dst, (v4 + i), sizeof(__dst));
        KnosisFact.splitSubentityIdentifier()(&v80);
        v8 = v80;
        v7 = v81;
        v9 = v82;
        v10 = v83;
        v12 = v84;
        v11 = v85;
        v13 = v86;
        if (v82)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = *(v77 + 16);
            sub_1ABA7BEF0();
            sub_1ABAD8E08();
            v77 = v19;
          }

          v15 = *(v77 + 16);
          v14 = *(v77 + 24);
          v16 = v15 + 1;
          if (v15 >= v14 >> 1)
          {
            sub_1ABA7BBEC(v14);
            v73 = v20;
            sub_1ABAD8E08();
            v16 = v73;
            v77 = v21;
          }

          ++v5;
          *(v77 + 16) = v16;
          v17 = v77 + 56 * v15;
          *(v17 + 32) = v8;
          *(v17 + 40) = v7;
          *(v17 + 48) = v9;
          *(v17 + 56) = v10;
          *(v17 + 64) = v12;
          *(v17 + 72) = v11;
          *(v17 + 80) = v13;
          goto LABEL_5;
        }

        sub_1ABD0DCB0(v80, v81, 0);
        ++v5;
      }

      __break(1u);
LABEL_55:
      sub_1ABD7DAF4(v80);
      sub_1ABD7DAF4(v4);
      sub_1ABE8AC38(v78);
      sub_1ABA7BC1C();
      return;
    }

    goto LABEL_58;
  }

  v22 = 0;
  v23 = v89;
  v24 = *(v89 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v25 = 32;
  while (v24 != v22)
  {
    if (v22 >= *(v23 + 16))
    {
      goto LABEL_59;
    }

    v26 = *(v23 + v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7E974();
      sub_1ABAD89C8();
      v4 = v28;
    }

    v27 = *(v4 + 16);
    if (v27 >= *(v4 + 24) >> 1)
    {
      sub_1ABA898F8();
      sub_1ABAD89C8();
      v4 = v29;
    }

    *(v4 + 16) = v27 + 1;
    *(v4 + 8 * v27 + 32) = v26;
    v25 += 56;
    ++v22;
  }

  v30 = 0;
  v80 = MEMORY[0x1E69E7CC0];
LABEL_25:
  if (v30 == v76)
  {
    v52 = 0;
    v78 = v80;
    v80 = MEMORY[0x1E69E7CC0];
    while (v52 != v76)
    {
      if (v52 >= *(v75 + 16))
      {
        goto LABEL_61;
      }

      sub_1ABA9538C();
      memcpy(v53, v54, v55);
      ++v52;
      sub_1ABA9538C();
      memcpy(v56, v57, v58);
      sub_1ABAE441C(__dst, v87);
      sub_1ABD7D6C8();
      v60 = v59;
      v61 = 0;
      v62 = *(v59 + 16);
      v63 = v59 - 16;
      v64 = MEMORY[0x1E69E7CC0];
LABEL_43:
      v65 = v63 + 144 * v61;
      while (v62 != v61)
      {
        if (v61 >= *(v60 + 16))
        {
          goto LABEL_57;
        }

        ++v61;
        sub_1ABA82B0C(v65);
        if (v45)
        {
          v67 = *v66;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = *(v64 + 16);
            sub_1ABA7BEF0();
            sub_1ABAD89C8();
            v64 = v71;
          }

          v69 = *(v64 + 16);
          v68 = *(v64 + 24);
          if (v69 >= v68 >> 1)
          {
            sub_1ABA9A58C(v68);
            sub_1ABAD89C8();
            v64 = v72;
          }

          *(v64 + 16) = v69 + 1;
          *(v64 + 8 * v69 + 32) = v67;
          goto LABEL_43;
        }
      }

      sub_1ABC6D404(__dst);

      sub_1ABD7DAF4(v64);
    }

    goto LABEL_55;
  }

  if (v30 < *(v75 + 16))
  {
    sub_1ABA9538C();
    memcpy(v31, v32, v33);
    ++v30;
    sub_1ABA9538C();
    memcpy(v34, v35, v36);
    sub_1ABAE441C(__dst, v87);
    sub_1ABD7D6C8();
    v38 = v37;
    v39 = 0;
    v40 = *(v37 + 16);
    v41 = v37 - 96;
    v42 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v43 = v41 + 144 * v39;
    while (1)
    {
      if (v40 == v39)
      {
        sub_1ABC6D404(__dst);

        sub_1ABD7DAF4(v42);
        goto LABEL_25;
      }

      if (v39 >= *(v38 + 16))
      {
        break;
      }

      ++v39;
      sub_1ABA82B0C(v43);
      if (v45)
      {
        v46 = *v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = *(v42 + 16);
          sub_1ABA7BEF0();
          sub_1ABAD89C8();
          v42 = v50;
        }

        v48 = *(v42 + 16);
        v47 = *(v42 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1ABA9A58C(v47);
          sub_1ABAD89C8();
          v42 = v51;
        }

        *(v42 + 16) = v48 + 1;
        *(v42 + 8 * v48 + 32) = v46;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

void KnosisFact.splitSubentityIdentifier()(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = 0xE000000000000000;
  v6 = 0;
  switch(*(v1 + 50))
  {
    case 1:
      v55 = *(v1 + 16);
      v6 = EntityIdentifier.stringValue.getter();
      v4 = v8;
      break;
    case 4:
      break;
    default:

      v6 = v3;
      v4 = v7;
      break;
  }

  v55 = v6;
  v56 = v4;
  sub_1ABAE28EC();
  sub_1ABAA0F58();
  v9 = sub_1ABF248E4();

  if (*(v9 + 16) <= 2uLL)
  {
    goto LABEL_15;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABD8EF48(v9);
    v9 = v50;
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 32 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    *(v9 + 16) = v10 - 1;
    if (v10 != 1)
    {
      v16 = (v9 + 32 + 32 * (v10 - 2));
      v17 = *v16;
      v18 = v16[1];
      v20 = v16[2];
      v19 = v16[3];
      *(v9 + 16) = v10 - 2;
      if (v10 == 2)
      {
      }

      else
      {
        v53 = v12;
        v54 = v17;
        v51 = v14;
        v52 = v13;
        v21 = v10 - 3;
        v22 = (v9 + 32 + 32 * v21);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        *(v9 + 16) = v21;

        v27 = sub_1ABA894EC();
        MEMORY[0x1AC5A9330](v27);

        v28 = sub_1ABA7E79C();
        EntityIdentifier.init(_:)(v28, v29, v30);
        if (v56)
        {

LABEL_15:

          *(a1 + 48) = 0;
          *(a1 + 16) = 0u;
          *(a1 + 32) = 0u;
          *a1 = 0u;
          return;
        }

        v31 = v55;
        MEMORY[0x1AC5A9330](v54, v18, v20, v19);

        v32 = sub_1ABA7E79C();
        v34 = sub_1ABA9AC84(v32, v33);
        v36 = v35;
        v38 = v37;
        v40 = v39;

        if (v40)
        {
          goto LABEL_15;
        }

        sub_1ABA91D48(v34, v36, v38, &v55);
        v42 = v55;
        v41 = v56;
        v44 = v57;
        v43 = v58;
        v45 = v59;
        MEMORY[0x1AC5A9330](v53, v52, v51, v15);

        v46 = sub_1ABA894EC();
        RelationshipIdentifier.init(_:)(v46, v47, v48);
        if ((v56 & 1) == 0)
        {
          v49 = v55;
          *a1 = v31;
          *(a1 + 8) = v42;
          *(a1 + 16) = v41;
          *(a1 + 24) = v44;
          *(a1 + 32) = v43;
          *(a1 + 40) = v45;
          *(a1 + 48) = v49;
          return;
        }
      }
    }

    goto LABEL_15;
  }

  __break(1u);
}

void sub_1ABD8728C()
{
  sub_1ABA7BCA8();
  v197 = v5;
  v6 = *v4;
  v7 = v4[1];
  v8 = *v0;
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  switch(*(v0 + 34))
  {
    case 1:
      v190 = v4[1];
      v191 = v6;
      v201 = v1;
      v189 = v3;
      sub_1ABAD509C(v8, v3);
      sub_1ABA8071C();
      v16 = 0xD000000000000018;
      if (v14)
      {
        v16 = v13;
        v15 = v14;
      }

      v192 = v16;
      v193 = v15;
      v17 = v0;
      if (*(v0 + 96))
      {
        v2 = sub_1ABF25054();

        if ((v2 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }

      v100 = *(v0 + 64);

      v101 = v193;
      *(v0 + 56) = v192;
      *(v0 + 64) = v101;
      goto LABEL_87;
    case 2:
    case 3:
      v11 = *(v0 + 64);
      v12 = *(v0 + 24);

      *(v0 + 56) = v9;
      *(v0 + 64) = v10;
      goto LABEL_87;
    case 4:
      goto LABEL_87;
    default:
      v190 = v4[1];
      v191 = v6;
      v189 = v3;
      v192 = v8;
      v201 = v1;
      v193 = *(v0 + 8);

      v17 = v0;
LABEL_9:
      v18 = 0;
      v211 = MEMORY[0x1E69E7CC0];
      v188 = v17;
      v19 = *(v17 + 80);
      v204[0] = MEMORY[0x1E69E7CC0];
      v196 = *(v19 + 16);
      v199 = v19;
      v198 = v19 + 32;
      break;
  }

LABEL_10:
  if (v18 == v196)
  {
    v48 = 0;
    v49 = MEMORY[0x1E69E7CC0];
    v200 = v204[0];
    v202 = *(v204[0] + 16);
    v50 = 32;
    v194 = 32;
LABEL_44:
    v51 = v50 + 112 * v48;
    while (v202 != v48)
    {
      v52 = v200;
      sub_1ABC43DF0(v48, 1, v200);
      memcpy(v210, (v52 + v51), sizeof(v210));
      if (__OFADD__(v48, 1))
      {
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      v53 = memcpy(v209, v210, sizeof(v209));
      MEMORY[0x1EEE9AC00](v53);
      v180[2] = v209;
      sub_1ABB345D8(v210, v204);
      v54 = v201;
      v55 = sub_1ABB2F8A4(sub_1ABD91454, v180, v197);
      v201 = v54;
      if (!v55)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v207 = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = *(v49 + 16);
          sub_1ABA8A0AC();
          v49 = v207;
        }

        v59 = *(v49 + 16);
        v58 = *(v49 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1ABA7BBEC(v58);
          sub_1ABA8BB08();
          sub_1ABADDC8C();
          v49 = v207;
        }

        *(v49 + 16) = v59 + 1;
        memcpy((v49 + 112 * v59 + 32), v210, 0x70uLL);
        ++v48;
        v50 = v194;
        goto LABEL_44;
      }

      sub_1ABB34634(v210);
      ++v48;
      v51 += 112;
    }

    v210[0] = v197;

    sub_1ABD7DB90(v49);
    v60 = v201;
    v61 = sub_1ABE43280(v210[0]);
    v201 = v60;
    sub_1ABAD219C(&qword_1EB4D9510, &unk_1ABF60F20);
    swift_allocObject();
    v187 = sub_1ABAE6998(v61);
    v62 = 0;
    sub_1ABAA034C(MEMORY[0x1E69E7CC0]);
LABEL_55:
    if (v62 == v195)
    {
LABEL_89:
      v102 = 0;
      v186 = v204[0];
      sub_1ABAA034C(MEMORY[0x1E69E7CC0]);
      while (v102 != v195)
      {
        sub_1ABAA0790();
        sub_1ABAB1170();
        v103 = v102 + 1;
        v104 = sub_1ABAB2B8C();
        v196 = v103;
        v197 = v105;
        sub_1ABA99594(v104);
        v108 = v107 & v106;
        swift_bridgeObjectRetain_n();
        v109 = sub_1ABA8B348();
        sub_1ABAE441C(v109, v110);
        v111 = 0;
        v112 = (v103 + 63) >> 6;
        v113 = MEMORY[0x1E69E7CC0];
        while (v108)
        {
LABEL_97:
          sub_1ABA9739C();
          v117 = (v111 << 9) | (8 * v116);
          v118 = *(v115 + v117);
          v119 = *(v118 + 16);
          v120 = *(v113 + 16);
          if (__OFADD__(v120, v119))
          {
            goto LABEL_176;
          }

          v121 = *(v115 + v117);

          if (!swift_isUniquelyReferenced_nonNull_native() || v120 + v119 > *(v113 + 24) >> 1)
          {
            sub_1ABAD88DC();
            v113 = v122;
          }

          v108 &= v108 - 1;
          if (*(v118 + 16))
          {
            v123 = *(v113 + 16);
            v124 = *(v113 + 24);
            sub_1ABA84218();
            if (v125 < v119)
            {
              goto LABEL_179;
            }

            swift_arrayInitWithCopy();

            if (v119)
            {
              v126 = *(v113 + 16);
              v37 = __OFADD__(v126, v119);
              v127 = v126 + v119;
              if (v37)
              {
                goto LABEL_183;
              }

              *(v113 + 16) = v127;
            }
          }

          else
          {

            if (v119)
            {
              goto LABEL_177;
            }
          }
        }

        while (1)
        {
          v114 = v111 + 1;
          if (__OFADD__(v111, 1))
          {
            __break(1u);
LABEL_164:
            __break(1u);
            goto LABEL_165;
          }

          if (v114 >= v112)
          {
            break;
          }

          v108 = *(v197 + 8 * v114);
          ++v111;
          if (v108)
          {
            v111 = v114;
            goto LABEL_97;
          }
        }

        v128 = 0;
        v129 = *(v113 + 16);
        v130 = MEMORY[0x1E69E7CC0];
LABEL_109:
        v131 = v194 + 144 * v128;
        while (v129 != v128)
        {
          if (v128 >= *(v113 + 16))
          {
            goto LABEL_164;
          }

          memcpy(v203, (v113 + v131), sizeof(v203));
          KnosisFact.splitSubentityIdentifier()(v209);
          if (*&v209[1])
          {
            v132 = *&v209[0];
            sub_1ABD0DCB0(*&v209[0], *(&v209[0] + 1), *&v209[1]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v135 = *(v130 + 16);
              sub_1ABA7BEF0();
              sub_1ABAD89C8();
              v130 = v136;
            }

            v134 = *(v130 + 16);
            v133 = *(v130 + 24);
            if (v134 >= v133 >> 1)
            {
              sub_1ABA7BBEC(v133);
              sub_1ABA8BB08();
              sub_1ABAD89C8();
              v130 = v137;
            }

            ++v128;
            *(v130 + 16) = v134 + 1;
            *(v130 + 8 * v134 + 32) = v132;
            goto LABEL_109;
          }

          v131 += 144;
          ++v128;
        }

        sub_1ABC6D404(v210);
        sub_1ABD7DAF4(v130);
        v102 = v196;
      }

      goto LABEL_125;
    }

    sub_1ABAA0790();
    sub_1ABAB1170();
    v63 = v62 + 1;
    v64 = sub_1ABAB2B8C();
    v196 = v63;
    v197 = v65;
    sub_1ABA99594(v64);
    v68 = v67 & v66;
    swift_bridgeObjectRetain_n();
    v69 = sub_1ABA8B348();
    sub_1ABAE441C(v69, v70);
    v71 = 0;
    v72 = (v63 + 63) >> 6;
    v73 = MEMORY[0x1E69E7CC0];
    while (v68)
    {
LABEL_62:
      sub_1ABA9739C();
      v77 = (v71 << 9) | (8 * v76);
      v78 = *(v75 + v77);
      v79 = *(v78 + 16);
      v80 = *(v73 + 16);
      if (__OFADD__(v80, v79))
      {
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:

LABEL_87:
        sub_1ABA7BC90();
        return;
      }

      v81 = *(v75 + v77);

      if (!swift_isUniquelyReferenced_nonNull_native() || v80 + v79 > *(v73 + 24) >> 1)
      {
        sub_1ABA9ECC4();
        sub_1ABAD88DC();
        v73 = v82;
      }

      v68 &= v68 - 1;
      if (*(v78 + 16))
      {
        v83 = *(v73 + 16);
        v84 = *(v73 + 24);
        sub_1ABA84218();
        if (v86 < v79)
        {
          __break(1u);
          goto LABEL_175;
        }

        sub_1ABAA1FF8(v85);
        swift_arrayInitWithCopy();

        if (v79)
        {
          v87 = *(v73 + 16);
          v37 = __OFADD__(v87, v79);
          v88 = v87 + v79;
          if (v37)
          {
            goto LABEL_178;
          }

          *(v73 + 16) = v88;
        }
      }

      else
      {

        if (v79)
        {
          goto LABEL_171;
        }
      }
    }

    while (1)
    {
      v74 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      if (v74 >= v72)
      {

        v89 = 0;
        v90 = *(v73 + 16);
        v91 = MEMORY[0x1E69E7CC0];
LABEL_74:
        v92 = v73 - 96 + 144 * v89;
        while (1)
        {
          if (v90 == v89)
          {

            sub_1ABC6D404(v210);
            sub_1ABD7DAF4(v91);
            v62 = v196;
            goto LABEL_55;
          }

          if (v89 >= *(v73 + 16))
          {
            break;
          }

          ++v89;
          sub_1ABA82B0C(v92);
          if (v164)
          {
            v94 = *v93;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v97 = *(v91 + 16);
              sub_1ABA7BEF0();
              sub_1ABAD89C8();
              v91 = v98;
            }

            v96 = *(v91 + 16);
            v95 = *(v91 + 24);
            if (v96 >= v95 >> 1)
            {
              sub_1ABA7BBEC(v95);
              sub_1ABAD89C8();
              v91 = v99;
            }

            *(v91 + 16) = v96 + 1;
            *(v91 + 8 * v96 + 32) = v94;
            goto LABEL_74;
          }
        }

        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:

        v172 = v211;
        if (v211[2] == 1)
        {

          if (v172[2] == 1)
          {
            sub_1ABC43DF0(0, 1, v172);
            v173 = v172[4];
            v174 = v172[5];

            v175 = v188;
            v176 = *(v188 + 64);

            *(v175 + 56) = v173;
            *(v175 + 64) = v174;
          }

          else
          {
LABEL_168:
          }
        }

        else
        {
LABEL_165:

          v177 = v188;
          v178 = *(v188 + 64);

          v179 = v193;
          *(v177 + 56) = v192;
          *(v177 + 64) = v179;
        }

        goto LABEL_87;
      }

      v68 = *(v197 + 8 * v74);
      ++v71;
      if (v68)
      {
        v71 = v74;
        goto LABEL_62;
      }
    }
  }

  else
  {
    sub_1ABAA0790();
    sub_1ABAB1170();
    v200 = v18 + 1;
    v20 = sub_1ABAB2B8C();
    v202 = v21;
    sub_1ABA99594(v20);
    v24 = v23 & v22;
    swift_bridgeObjectRetain_n();
    v25 = sub_1ABA8B348();
    sub_1ABAE441C(v25, v26);
    v27 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    while (v24)
    {
LABEL_17:
      sub_1ABA9739C();
      sub_1ABD91530(v30);
      v31 = *(v28 + 16);
      if (__OFADD__(v31, v2))
      {
        __break(1u);
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v31 + v2 > *(v28 + 24) >> 1)
      {
        sub_1ABAD88DC();
        v28 = v32;
      }

      v24 &= v24 - 1;
      if (*(v10 + 16))
      {
        v33 = *(v28 + 16);
        v34 = *(v28 + 24);
        sub_1ABA84218();
        if (v35 < v2)
        {
          __break(1u);
          goto LABEL_170;
        }

        swift_arrayInitWithCopy();

        if (v2)
        {
          v36 = *(v28 + 16);
          v37 = __OFADD__(v36, v2);
          v38 = v36 + v2;
          if (v37)
          {
            goto LABEL_172;
          }

          *(v28 + 16) = v38;
        }
      }

      else
      {

        if (v2)
        {
          goto LABEL_167;
        }
      }
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_89;
      }

      if (v29 >= ((v18 + 64) >> 6))
      {
        break;
      }

      v24 = *(v202 + 8 * v29);
      ++v27;
      if (v24)
      {
        v27 = v29;
        goto LABEL_17;
      }
    }

    v39 = 0;
    v212 = *(v28 + 16);
    v40 = 32;
    v2 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v212 == v39)
      {

        sub_1ABC6D404(v210);
        sub_1ABD7DB90(v2);
        v18 = v200;
        goto LABEL_10;
      }

      if (v39 >= *(v28 + 16))
      {
        break;
      }

      memcpy(v208, (v28 + v40), sizeof(v208));
      KnosisFact.extendedTriples()();
      v42 = *(v41 + 16);
      v43 = *(v2 + 16);
      if (__OFADD__(v43, v42))
      {
        goto LABEL_121;
      }

      v10 = v41;
      if (!swift_isUniquelyReferenced_nonNull_native() || (v44 = *(v2 + 24) >> 1, v44 < v43 + v42))
      {
        sub_1ABAD89DC();
        v2 = v45;
        v44 = *(v45 + 24) >> 1;
      }

      if (*(v10 + 16))
      {
        if (v44 - *(v2 + 16) < v42)
        {
          goto LABEL_123;
        }

        swift_arrayInitWithCopy();

        if (v42)
        {
          v46 = *(v2 + 16);
          v37 = __OFADD__(v46, v42);
          v47 = v46 + v42;
          if (v37)
          {
            goto LABEL_159;
          }

          *(v2 + 16) = v47;
        }
      }

      else
      {

        if (v42)
        {
          goto LABEL_122;
        }
      }

      v40 += 144;
      ++v39;
    }

    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
  }

  __break(1u);
LABEL_125:
  v210[0] = v186;
  sub_1ABD7DAF4(v204[0]);
  v138 = sub_1ABE8AC38(v210[0]);
  v139 = 0;
  v141 = v138 + 56;
  v140 = *(v138 + 56);
  v142 = *(v138 + 32);
  sub_1ABA7D32C();
  v145 = v144 & v143;
  v147 = (v146 + 63) >> 6;
  v198 = 4281;
  v199 = 3481;
  v148 = v201;
  v196 = v200 + 32;
  v182 = v138 + 56;
  v183 = v149;
  v181 = v147;
  while (v145)
  {
LABEL_131:
    v151 = *(*(v138 + 48) + ((v139 << 9) | (8 * __clz(__rbit64(v145)))));
    sub_1ABD7F2B4(v210);
    if (v148)
    {
      goto LABEL_173;
    }

    v145 &= v145 - 1;
    if (v210[1])
    {
      v194 = v145;
      v195 = v139;
      v201 = 0;
      v209[0] = v191;
      v209[1] = v190;
      sub_1ABD62C00(v210, v209, v204);
      sub_1ABAA2D68();
      sub_1ABD5B81C(v152, v153);
      v185 = v206;
      v186 = v205;
      v184 = sub_1ABA93E20(v204, v205);
      v154 = 0;
      v197 = MEMORY[0x1E69E7CC0];
LABEL_134:
      v155 = (v196 + 112 * v154);
      while (v202 != v154)
      {
        if (v154 >= *(v200 + 16))
        {
          goto LABEL_180;
        }

        memcpy(v210, v155, sizeof(v210));
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_185;
        }

        if (*(_Records_GDEntityPredicate_records + 4) >= v199)
        {
          goto LABEL_181;
        }

        if (*(_Records_GDEntityPredicate_records + 5) >= v198)
        {
          goto LABEL_182;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_186;
        }

        v157 = v210[1];
        v156 = v210[2];
        v158 = sub_1ABA8B348();
        sub_1ABB345D8(v158, v159);

        v160 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_187;
        }

        v162 = v160;
        v163 = v161;
        sub_1ABF23DD4();
        v164 = v157 == v162 && v156 == v163;
        if (v164)
        {
        }

        else
        {
          v165 = sub_1ABF25054();

          if ((v165 & 1) == 0)
          {
            v166 = v197;
            v167 = swift_isUniquelyReferenced_nonNull_native();
            v207 = v166;
            if ((v167 & 1) == 0)
            {
              v168 = *(v166 + 16);
              sub_1ABA8A0AC();
              v166 = v207;
            }

            v170 = *(v166 + 16);
            v169 = *(v166 + 24);
            if (v170 >= v169 >> 1)
            {
              sub_1ABA7BBEC(v169);
              sub_1ABA8BB08();
              sub_1ABADDC8C();
              v166 = v207;
            }

            ++v154;
            *(v166 + 16) = v170 + 1;
            v197 = v166;
            memcpy((v166 + 112 * v170 + 32), v210, 0x70uLL);
            goto LABEL_134;
          }
        }

        sub_1ABB34634(v210);
        v155 += 112;
        ++v154;
      }

      v210[3] = sub_1ABAD219C(&qword_1EB4D93B0, &qword_1ABF5FF18);
      sub_1ABA7D918();
      v210[4] = sub_1ABAB47C4(&qword_1EB4CE740, &qword_1EB4D93B0, &qword_1ABF5FF18);
      v210[0] = v197;
      v171 = (*(v185 + 24))(v210, v186);
      if (v210[3])
      {
        sub_1ABA84B54(v210);
      }

      sub_1ABD7DA50(v171);
      sub_1ABA84B54(v204);
      v148 = v201;
      v141 = v182;
      v138 = v183;
      v145 = v194;
      v139 = v195;
      v147 = v181;
    }
  }

  while (1)
  {
    v150 = v139 + 1;
    if (__OFADD__(v139, 1))
    {
      break;
    }

    if (v150 >= v147)
    {
      goto LABEL_160;
    }

    v145 = *(v141 + 8 * v150);
    ++v139;
    if (v145)
    {
      v139 = v150;
      goto LABEL_131;
    }
  }

LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
}

void sub_1ABD88238()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v2 = 279;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_67;
  }

  v3 = v1[6];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), __dst);
  v142[0] = __dst[0];
  v142[1] = __dst[1];
  v143 = __dst[2];
  v4 = v1[9];
  v5 = sub_1ABAD50DC(v142, v4);
  sub_1ABAE4478(v142);
  if (v5)
  {
    if (*(v5 + 16))
    {
      v6 = memcpy(__dst, (v5 + 32), sizeof(__dst));
      v8 = *(&__dst[6] + 1);
      v7 = *&__dst[6];
      v9 = BYTE2(__dst[8]);
      sub_1ABD91518(v6, v10, v11, v12, v13, v14, v15, v16, v100, v101, v102, v105, v107, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v134, v136, __dst[0]);

      switch(v9)
      {
        case 1:
          v7 = EntityIdentifier.stringValue.getter();
          v8 = v99;
          goto LABEL_63;
        case 4:
          sub_1ABAE4304(__dst);

          v7 = 0;
          v8 = 0xE000000000000000;
          break;
        default:

LABEL_63:
          sub_1ABAE4304(__dst);

          break;
      }

      v1[5] = v7;
      goto LABEL_65;
    }
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_68;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[732], *(_Records_GDEntityPredicate_records + 184), *(_Records_GDEntityPredicate_records + 185), __dst);
  v140[0] = __dst[0];
  v140[1] = __dst[1];
  v141 = __dst[2];
  v17 = sub_1ABAD50DC(v140, v4);
  sub_1ABAE4478(v140);
  v106 = v4;
  v108 = v3;
  if (!v17)
  {
    goto LABEL_32;
  }

  v18 = *(v17 + 16);
  if (!v18)
  {

LABEL_32:
    v32 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_33;
  }

  v101 = 279;
  v103 = v1;
  v19 = 0;
  v20 = v18 - 1;
  v21 = 32;
  v8 = 0xE000000000000000;
  while (1)
  {
    v22 = memcpy(__dst, (v17 + v21), sizeof(__dst));
    v30 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v30 = v19 & 0xFFFFFFFFFFFFLL;
    }

    v31 = *(&__dst[6] + 1);
    v32 = *&__dst[6];
    v33 = BYTE2(__dst[8]);
    if (v30)
    {
      v34 = __dst[7];
      v35 = LOWORD(__dst[8]);
      v138 = 0;
      v139 = 0xE000000000000000;
      sub_1ABA9F95C();
      v135 = v44;
      switch(v33)
      {
        case 1:
          sub_1ABAA31F0();
          if ((v32 & 0x80000000000000) == 0)
          {
            v53 += 1272;
          }

          sub_1ABD91518(v45, v46, v47, v48, v49, v50, v51, v52, v100, v101, v103, v106, v108, v20, v110, v32, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v53, 0xE300000000000000, v135, 0xEC000000203A6564, __dst[0]);
          v54 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v54);

          v32 = v131;
          v31 = v133;
          break;
        case 2:
        case 3:
          sub_1ABD91518(v36, v37, v38, v39, v40, v41, v42, v43, v100, v101, v103, v106, v108, v20, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v44, 0xEC000000203A6564, __dst[0]);

          break;
        case 4:
          sub_1ABD91518(v36, v37, v38, v39, v40, v41, v42, v43, v100, v101, v103, v106, v108, v20, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v44, 0xEC000000203A6564, __dst[0]);
          v32 = 0;
          v31 = 0xE000000000000000;
          break;
        default:
          sub_1ABD91518(v36, v37, v38, v39, v40, v41, v42, v43, v100, v101, v103, v106, v108, v20, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v44, 0xEC000000203A6564, __dst[0]);
          sub_1ABAE4358(v32, v31, v34, *(&v34 + 1), v35, 0);
          break;
      }

      MEMORY[0x1AC5A9410](v32, v31);

      sub_1ABA83AA4();
      MEMORY[0x1AC5A9410](v134, v136);
      sub_1ABAE4304(__dst);

      MEMORY[0x1AC5A9410](32, 0xE100000000000000);
      MEMORY[0x1AC5A9410](v19, v8);

      v32 = v138;
      v8 = v139;
      v20 = v109;
    }

    else
    {
      sub_1ABD91518(v22, v23, v24, v25, v26, v27, v28, v29, v100, v101, v103, v106, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v134, v136, __dst[0]);

      switch(v33)
      {
        case 1:
          sub_1ABAA31F0();
          if ((v32 & 0x80000000000000) == 0)
          {
            v55 += 1272;
          }

          v113 = v55;
          v114 = 0xE300000000000000;
          v138 = v32;
          v56 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v56);

          sub_1ABAE4304(__dst);
          v32 = v113;
          v8 = 0xE300000000000000;
          break;
        case 4:
          sub_1ABAE4304(__dst);
          v32 = 0;
          v8 = 0xE000000000000000;
          break;
        default:

          sub_1ABAE4304(__dst);
          v8 = v31;
          break;
      }
    }

    if (!v20)
    {
      break;
    }

    --v20;
    v21 += 144;
    v19 = v32;
  }

  v2 = v101;
  v1 = v103;
LABEL_33:
  if (v2 < 0x40)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (_Records_GDEntityPredicate_records)
  {
    sub_1ABA91D48(_Records_GDEntityPredicate_records[756], *(_Records_GDEntityPredicate_records + 190), *(_Records_GDEntityPredicate_records + 191), &v138);
    v57 = sub_1ABAD50DC(&v138, v106);
    sub_1ABAE4478(&v138);
    if (v57)
    {
      v58 = *(v57 + 16);
      if (v58)
      {
        v104 = v1;
        v59 = v58 - 1;
        for (i = 32; ; i += 144)
        {
          v61 = memcpy(__dst, (v57 + i), sizeof(__dst));
          v69 = HIBYTE(v8) & 0xF;
          if ((v8 & 0x2000000000000000) == 0)
          {
            v69 = v32 & 0xFFFFFFFFFFFFLL;
          }

          v71 = *(&__dst[6] + 1);
          v70 = *&__dst[6];
          v72 = BYTE2(__dst[8]);
          if (v69)
          {
            v73 = __dst[7];
            v74 = LOWORD(__dst[8]);
            sub_1ABA9F95C();
            v132 = v83;
            switch(v72)
            {
              case 1:
                sub_1ABAA31F0();
                if ((v70 & 0x80000000000000) == 0)
                {
                  v94 += 1272;
                }

                sub_1ABD91518(v86, v87, v88, v89, v90, v91, v92, v93, v100, v101, v104, v106, v108, i, v70, v94, 0xE300000000000000, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v132, 0xEC000000203A6564, 0, 0xE000000000000000, __dst[0]);
                v95 = sub_1ABF24FF4();
                MEMORY[0x1AC5A9410](v95);

                break;
              case 2:
              case 3:
                sub_1ABD91518(v75, v76, v77, v78, v79, v80, v81, v82, v100, v101, v104, v106, v108, i, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v83, 0xEC000000203A6564, 0, 0xE000000000000000, __dst[0]);

                break;
              case 4:
                sub_1ABD91518(v75, v76, v77, v78, v79, v80, v81, v82, v100, v101, v104, v106, v108, i, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v83, 0xEC000000203A6564, 0, 0xE000000000000000, __dst[0]);
                break;
              default:
                sub_1ABD91518(v75, v76, v77, v78, v79, v80, v81, v82, v100, v101, v104, v106, v108, i, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v83, 0xEC000000203A6564, 0, 0xE000000000000000, __dst[0]);
                v84 = sub_1ABA82ED0();
                sub_1ABAE4358(v84, v85, v73, *(&v73 + 1), v74, 0);
                break;
            }

            i = v109;
            v96 = sub_1ABA82ED0();
            MEMORY[0x1AC5A9410](v96);

            sub_1ABA83AA4();
            MEMORY[0x1AC5A9410](v131, v133);
            sub_1ABAE4304(__dst);

            MEMORY[0x1AC5A9410](32, 0xE100000000000000);
            MEMORY[0x1AC5A9410](v32, v8);

            v70 = v134;
            v8 = v136;
          }

          else
          {
            sub_1ABD91518(v61, v62, v63, v64, v65, v66, v67, v68, v100, v101, v104, v106, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v134, v136, __dst[0]);

            switch(v72)
            {
              case 1:
                sub_1ABAA31F0();
                if ((v70 & 0x80000000000000) == 0)
                {
                  v97 += 1272;
                }

                v113 = v97;
                v114 = 0xE300000000000000;
                v134 = v70;
                v98 = sub_1ABF24FF4();
                MEMORY[0x1AC5A9410](v98);

                sub_1ABAE4304(__dst);
                v70 = v113;
                v8 = 0xE300000000000000;
                break;
              case 4:
                sub_1ABAE4304(__dst);
                v70 = 0;
                v8 = 0xE000000000000000;
                break;
              default:

                sub_1ABAE4304(__dst);
                v8 = v71;
                break;
            }
          }

          if (!v59)
          {
            break;
          }

          --v59;
          v32 = v70;
        }

        v32 = v70;
        v1 = v104;
        goto LABEL_60;
      }
    }

LABEL_60:
    v1[5] = v32;
LABEL_65:
    v1[6] = v8;
    sub_1ABA7BC1C();
    return;
  }

LABEL_69:
  __break(1u);
}

uint64_t sub_1ABD88954(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = 0;
    for (i = (result + 32); ; i += 144)
    {
      memcpy(__dst, i, sizeof(__dst));
      v33 = *&__dst[7];
      v34 = *&__dst[9];
      v35 = __dst[11];
      sub_1ABAE42A8(__dst, v31);

      sub_1ABAC9398(v4);
      v6 = *(v3 + 72);
      swift_isUniquelyReferenced_nonNull_native();
      v31[0] = *(v3 + 72);
      v7 = v31[0];
      v8 = sub_1ABAF8208();
      if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
      {
        break;
      }

      v10 = v8;
      v11 = v9;
      sub_1ABAD219C(&qword_1EB4D1FB0, &qword_1ABF351A0);
      v12 = sub_1ABF24C64();
      v13 = v31[0];
      if (v12)
      {
        v14 = sub_1ABAF8208();
        if ((v11 & 1) != (v15 & 1))
        {
          goto LABEL_19;
        }

        v10 = v14;
      }

      *(v3 + 72) = v13;
      if (v11)
      {
      }

      else
      {
        sub_1ABAA0BEC(v13 + 8 * (v10 >> 6));
        v18 = v16 + v10 * v17;
        v19 = v34;
        *v18 = v33;
        *(v18 + 16) = v19;
        *(v18 + 32) = v35;
        *(*(v13 + 56) + 8 * v10) = MEMORY[0x1E69E7CC0];
        v20 = *(v13 + 16);
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_18;
        }

        *(v13 + 16) = v22;
      }

      v23 = *(v13 + 56);
      v24 = *(v23 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 8 * v10) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = *(v24 + 16);
        sub_1ABA7BEF0();
        sub_1ABAD88DC();
        v24 = v29;
        *(v23 + 8 * v10) = v29;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1ABA8E370(v26);
        sub_1ABAD88DC();
        v24 = v30;
        *(v23 + 8 * v10) = v30;
      }

      *(v24 + 16) = v27 + 1;
      result = memcpy((v24 + 144 * v27 + 32), __dst, 0x90uLL);
      v4 = sub_1ABB4F3FC;
      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

void sub_1ABD88B98()
{
  sub_1ABA7E2A8();
  v83 = v3;
  sub_1ABA7FC9C();
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v95 = *(v1 + 24);
  v92 = *(v1 + 32);
  v7 = *(v1 + 34);
  v117 = *(v1 + 35);
  v118 = *(v1 + 39);
  v8 = *(v1 + 40);
  v104 = *(v1 + 56);
  v106 = *(v1 + 48);
  v103 = *(v1 + 64);
  v84 = *(v1 + 72);
  v108 = *(v1 + 80);
  v116 = *(v1 + 88);
  v100 = *(v1 + 104);
  v102 = v8;
  sub_1ABAD219C(&qword_1EB4D94E8, &unk_1ABF60F00);
  v9 = swift_allocObject();
  v98 = 4;
  *(v9 + 16) = xmmword_1ABF34060;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 32) = v2;
  *(v9 + 40) = v0;

  v11 = sub_1ABF23E84();
  *(v9 + 88) = v10;
  *(v9 + 64) = v11;
  *(v9 + 72) = v12;
  sub_1ABA90A20();

  v13 = swift_allocObject();
  v14 = sub_1ABA9FDD8(v13, xmmword_1ABF3BFB0);
  v14[5].n128_u64[1] = v10;
  v14[3].n128_u64[1] = v10;
  v14[4].n128_u64[0] = 0x4920524557534E41;
  v14[4].n128_u64[1] = 0xEA00000000003A44;
  v15 = v14;
  v88 = v5;
  v90 = v4;
  v86 = v6;
  switch(v7)
  {
    case 1:
      __dst[0] = v4;

      v4 = EntityIdentifier.stringValue.getter();
      v5 = v16;
      break;
    case 2:
    case 3:

      break;
    case 4:

      v4 = 0;
      v5 = 0xE000000000000000;
      break;
    default:

      sub_1ABAE4358(v4, v5, v6, v95, v92, 0);
      break;
  }

  v15[7].n128_u64[1] = v10;
  v15[6].n128_u64[0] = v4;
  v15[6].n128_u64[1] = v5;
  if (v106)
  {
    v17 = v102;
  }

  else
  {
    v17 = 0;
  }

  if (v106)
  {
    v18 = v106;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  __dst[0] = 40;
  __dst[1] = 0xE100000000000000;

  MEMORY[0x1AC5A9410](v17, v18);

  MEMORY[0x1AC5A9410](41, 0xE100000000000000);
  v15[9].n128_u64[1] = v10;
  v15[8].n128_u64[0] = 40;
  v15[8].n128_u64[1] = 0xE100000000000000;
  sub_1ABA90A20();

  v19 = swift_allocObject();
  v20 = sub_1ABA9FDD8(v19, xmmword_1ABF3BFC0);
  v20[3].n128_u64[1] = v10;
  v20[4].n128_u64[0] = 0x696C617574786554;
  v20[4].n128_u64[1] = 0xEF3A6E6F6974617ALL;
  v20[7].n128_u64[1] = v10;
  sub_1ABA8071C();
  v23 = 0xD000000000000011;
  if (v103)
  {
    v23 = v104;
    v22 = v103;
  }

  v21[11] = v10;
  v21[12] = v23;
  v21[13] = v22;

  sub_1ABA90A20();

  if (*(v100 + 16))
  {
    v24 = swift_allocObject();
    v25 = sub_1ABA9FDD8(v24, xmmword_1ABF3BFC0);
    v25[5].n128_u64[1] = v10;
    v25[3].n128_u64[1] = v10;
    strcpy(&v25[4], "REQUEST IDs:");
    v25[4].n128_u8[13] = 0;
    v25[4].n128_u16[7] = -5120;
    __dst[0] = v100;

    v26 = sub_1ABA954F0();
    sub_1ABAD219C(v26, v27);
    sub_1ABAB47C4(&qword_1ED870668, &unk_1EB4D33D0, &unk_1ABF3A8C0);
    v28 = sub_1ABF23B54();
    v30 = v29;

    v24[7].n128_u64[1] = v10;
    v24[6].n128_u64[0] = v28;
    v24[6].n128_u64[1] = v30;
    sub_1ABA90A20();
  }

  v31 = *(v108 + 16);
  if (v31 && v83 >= 1)
  {
    v32 = swift_allocObject();
    v33 = sub_1ABA9FDD8(v32, xmmword_1ABF34060);
    v34 = MEMORY[0x1E69E6158];
    v33[5].n128_u64[1] = MEMORY[0x1E69E6158];
    v33[3].n128_u64[1] = v34;
    v33[4].n128_u64[0] = 0x4620544E45524150;
    sub_1ABD91540(v33);
    sub_1ABA90A20();

    v35 = (v108 + 32);
    do
    {
      memcpy(__dst, v35, 0x70uLL);
      memcpy(v114, v35, 0x70uLL);
      v112 = 9;
      v113 = 0xE100000000000000;
      sub_1ABAE441C(__dst, &v110);
      MEMORY[0x1AC5A9410](v2, v0);
      sub_1ABD88B98(v112, v113, v83 - 1);

      sub_1ABC6D404(__dst);
      v35 += 112;
      --v31;
    }

    while (v31);
  }

  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1ABF34060;
  v97 = v2;
  *(v36 + 32) = v2;
  *(v36 + 40) = v0;
  v37 = MEMORY[0x1E69E6158];
  *(v36 + 88) = MEMORY[0x1E69E6158];
  *(v36 + 56) = v37;
  *(v36 + 64) = 0x4620595449544E45;
  sub_1ABD91540(v36);
  sub_1ABA90A20();

  __dst[0] = v90;
  __dst[1] = v88;
  __dst[2] = v86;
  __dst[3] = v95;
  LOWORD(__dst[4]) = v92;
  BYTE2(__dst[4]) = v7;
  *(&__dst[4] + 3) = v117;
  HIBYTE(__dst[4]) = v118;
  __dst[5] = v102;
  __dst[6] = v106;
  __dst[7] = v104;
  __dst[8] = v103;
  __dst[9] = v84;
  __dst[10] = v108;
  *&__dst[11] = v116;
  __dst[13] = v100;
  sub_1ABD7D6C8();
  v101 = v0;
  if (*(v38 + 16))
  {
    v39 = 0;
    v87 = v38 + 32;
    v85 = xmmword_1ABF3BF90;
    v96 = xmmword_1ABF39090;
    v40 = *(v38 + 16);
    v89 = v40;
    for (i = v38; ; v40 = *(i + 16))
    {
      if (v39 >= v40)
      {
        __break(1u);
LABEL_39:
        JUMPOUT(0);
      }

      memcpy(__dst, (v87 + 144 * v39), sizeof(__dst));
      v41 = __dst[12];
      v42 = __dst[13];
      v93 = v39 + 1;
      v43 = __dst[10];
      v44 = __dst[9];
      v45 = __dst[8];
      v46 = __dst[7];
      v47 = BYTE2(__dst[16]);
      v48 = swift_allocObject();
      v48[2].n128_u64[1] = sub_1ABA8AFA4(v48, v85, v49, v50, v51, v52, v53, v54, v55, v83, v84, v85.n128_i64[0], v85.n128_i64[1], v87, v89, i, v93, v96.n128_i64[0], v96.n128_i64[1], v97, v98, v99, v101);
      v48[3].n128_u64[1] = v37;
      v48[4].n128_u64[0] = 11565;
      v48[4].n128_u64[1] = 0xE200000000000000;
      v48[7].n128_u64[1] = v37;
      v48[5].n128_u64[1] = v37;
      v48[6].n128_u64[0] = v46;
      v48[6].n128_u64[1] = v45;
      v110 = 40;
      v111 = 0xE100000000000000;

      sub_1ABAE42A8(__dst, v114);
      MEMORY[0x1AC5A9410](v44, v43);
      MEMORY[0x1AC5A9410](41, 0xE100000000000000);
      v56 = v111;
      v48[8].n128_u64[0] = v110;
      v48[8].n128_u64[1] = v56;
      v48[11].n128_u64[1] = v37;
      v48[9].n128_u64[1] = v37;
      v48[10].n128_u64[0] = 9;
      v48[10].n128_u64[1] = 0xE100000000000000;
      v57 = 0xE000000000000000;
      v58 = 0;
      switch(v47)
      {
        case 1:
          v114[0] = v41;
          v58 = EntityIdentifier.stringValue.getter();
          break;
        case 4:
          break;
        default:

          v58 = v41;
          v57 = v42;
          break;
      }

      v48[13].n128_u64[1] = v37;
      v48[12].n128_u64[0] = v58;
      v48[12].n128_u64[1] = v57;
      sub_1ABA90A20();

      memcpy(v114, __dst, sizeof(v114));
      KnosisFact.allQualifiers.getter();
      v60 = v59;
      sub_1ABAE4304(__dst);
      v61 = *(v60 + 16);
      if (v61)
      {
        v109 = v61 - 1;
        v62 = 32;
        while (1)
        {
          v107 = v62;
          memcpy(v114, (v60 + v62), sizeof(v114));
          v105 = v114[12];
          v63 = BYTE2(v114[16]);
          v65 = v114[7];
          v64 = v114[8];
          v67 = v114[9];
          v66 = v114[10];
          v68 = swift_allocObject();
          v68[2].n128_u64[1] = sub_1ABA8AFA4(v68, v96, v69, v70, v71, v72, v73, v74, v75, v83, v84, v85.n128_i64[0], v85.n128_i64[1], v87, v89, i, v94, v96.n128_i64[0], v96.n128_i64[1], v97, v98, v99, v101);
          v37 = MEMORY[0x1E69E6158];
          v68[3].n128_u64[1] = MEMORY[0x1E69E6158];
          v68[4].n128_u64[0] = 9;
          v68[4].n128_u64[1] = 0xE100000000000000;
          v68[5].n128_u64[1] = v37;
          v68[6].n128_u64[0] = 11565;
          v68[6].n128_u64[1] = 0xE200000000000000;
          v68[9].n128_u64[1] = v37;
          v68[7].n128_u64[1] = v37;
          v68[8].n128_u64[0] = v65;
          v68[8].n128_u64[1] = v64;
          v112 = 40;
          v113 = 0xE100000000000000;

          sub_1ABAE42A8(v114, &v110);
          MEMORY[0x1AC5A9410](v67, v66);
          MEMORY[0x1AC5A9410](41, 0xE100000000000000);
          v76 = v113;
          v68[10].n128_u64[0] = v112;
          v68[10].n128_u64[1] = v76;
          v68[13].n128_u64[1] = v37;
          v68[11].n128_u64[1] = v37;
          v68[12].n128_u64[0] = 9;
          v68[12].n128_u64[1] = 0xE100000000000000;
          v77 = 0xE000000000000000;
          v78 = 0;
          switch(v63)
          {
            case 0:
            case 2:
            case 3:

              v78 = v105;
              v77 = v79;
              goto LABEL_33;
            case 1:
              sub_1ABAA31F0();
              if ((v105 & 0x80000000000000) == 0)
              {
                v80 += 1272;
              }

              v110 = v80;
              v111 = 0xE300000000000000;
              v112 = v81;
              v82 = sub_1ABF24FF4();
              MEMORY[0x1AC5A9410](v82);

              v78 = v110;
              v77 = v111;
              goto LABEL_33;
            case 4:
LABEL_33:
              v68[15].n128_u64[1] = v37;
              v68[14].n128_u64[0] = v78;
              v68[14].n128_u64[1] = v77;
              sub_1ABAE4304(v114);
              sub_1ABA90A20();

              if (!v109)
              {
                goto LABEL_35;
              }

              --v109;
              v62 = v107 + 144;
              break;
            default:
              goto LABEL_39;
          }
        }
      }

LABEL_35:

      v39 = v94;
      if (v94 == v89)
      {
        break;
      }
    }
  }

  sub_1ABA7BC1C();
}

uint64_t sub_1ABD894B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449726577736E61 && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696C617574786574 && a2 == 0xEE006E6F6974617ALL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7374636166 && a2 == 0xE500000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746E65726170 && a2 == 0xE600000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x70756F7247677261 && a2 == 0xE800000000000000;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x4974736575716572 && a2 == 0xEA00000000007364)
              {

                return 7;
              }

              else
              {
                v13 = sub_1ABF25054();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABD8973C(char a1)
{
  result = 0x6449726577736E61;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x696C617574786574;
      break;
    case 3:
      result = 0x7374636166;
      break;
    case 4:
      result = 0x746E65726170;
      break;
    case 5:
      result = 0x65726F6373;
      break;
    case 6:
      result = 0x70756F7247677261;
      break;
    case 7:
      result = 0x4974736575716572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD89820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD894B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD89848@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABD89734();
  *a1 = result;
  return result;
}

uint64_t sub_1ABD89870(uint64_t a1)
{
  v2 = sub_1ABD8EF5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD898AC(uint64_t a1)
{
  v2 = sub_1ABD8EF5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KnosisAnswer.encode(to:)(void *a1)
{
  v32 = sub_1ABAD219C(&qword_1EB4D92C8, &qword_1ABF5FD50);
  sub_1ABA7BB64(v32);
  v34 = v3;
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *v1;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v29 = *(v1 + 40);
  v30 = *(v1 + 8);
  v27 = *(v1 + 56);
  v28 = *(v1 + 48);
  v25 = *(v1 + 72);
  v26 = *(v1 + 64);
  v24 = *(v1 + 80);
  v10 = *(v1 + 88);
  v23 = *(v1 + 96);
  v22 = *(v1 + 104);
  v31 = a1[4];
  v11 = *(v1 + 34);
  v12 = *(v1 + 32);
  sub_1ABA88DCC(a1, a1[3]);
  sub_1ABAE4358(v7, v30, v8, v9, v12, v11);
  sub_1ABD8EF5C();
  sub_1ABF252E4();
  sub_1ABD8EFB0();
  sub_1ABAA541C();
  sub_1ABF24F84();
  if (v33)
  {
    sub_1ABA89F48();
    v13 = *(v34 + 8);
    v14 = sub_1ABA8C744();
    v15(v14);
  }

  else
  {
    sub_1ABA89F48();
    sub_1ABF24ED4();
    sub_1ABF24ED4();
    sub_1ABAD219C(&qword_1EB4D92E0, &qword_1ABF5FD58);
    sub_1ABD8F004();
    sub_1ABAA541C();
    sub_1ABF24F84();
    sub_1ABAD219C(&qword_1EB4D9288, &qword_1ABF5FD38);
    sub_1ABAA3D54();
    sub_1ABD8F9F8(v16, v17, &qword_1ABF5FD38, v18);
    sub_1ABAA541C();
    sub_1ABF24F84();
    sub_1ABF24F54();
    sub_1ABD8F110();
    sub_1ABAA541C();
    sub_1ABF24F84();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80D40(&qword_1EB4D4308);
    sub_1ABAA541C();
    sub_1ABF24F84();
    v19 = *(v34 + 8);
    v20 = sub_1ABA8C744();
    v21(v20);
  }

  sub_1ABA7FC10();
}

uint64_t KnosisAnswer.toEntity()@<X0>(uint64_t a1@<X8>)
{
  KnosisAnswer.extendedTriples()();
  v9 = v2;
  sub_1ABC81214(sub_1ABD8F810, v7);

  v4 = v8;
  if (HIBYTE(v8) <= 0xFEu)
  {
    if ((v8 & 0x100) != 0)
    {
      v9 = *&v7[0];
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      return swift_willThrowTypedImpl();
    }

    else
    {
      v5 = v7[1];
      v6 = v7[2];
      *a1 = v7[0];
      *(a1 + 16) = v5;
      *(a1 + 32) = v6;
      *(a1 + 48) = v4;
    }
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

double KnosisAnswer.toGraphObject()@<D0>(uint64_t a1@<X8>)
{
  v3 = v1;
  sub_1ABA9538C();
  memcpy(v5, v6, v7);
  sub_1ABAD219C(&qword_1EB4D17D0, &qword_1ABF33960);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1ABF34740;
  memcpy((v8 + 32), v3, 0x70uLL);
  sub_1ABAE441C(v15, &v13);
  ObjectSynthesisDictionaryMapping.init()(&v13);
  v9 = v13;
  type metadata accessor for InitializationResourcesManager();
  sub_1ABA7D028();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1ABF239C4();
  v11 = sub_1ABD85134(v9, v9, v8, v10);
  if (v2)
  {
  }

  else
  {
    sub_1ABB2BBAC(v11, &v13);

    if (v14)
    {

      sub_1ABAFF5C4(&v13, a1);
    }

    else
    {
      sub_1ABA925A4(&v13, &qword_1EB4D9310, &unk_1ABF5FD70);
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  return result;
}

void KnosisAnswer.toGraphObject<A>(ofType:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v35 = v3;
  sub_1ABAE2850(&qword_1EB4D6150, &unk_1ABF4FF30);
  swift_getTupleTypeMetadata2();
  sub_1ABAA1CE0();
  v36 = v4;
  v5 = sub_1ABF247E4();
  sub_1ABA7BB64(v5);
  v34 = v6;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  sub_1ABA9538C();
  memcpy(v12, v13, v14);
  sub_1ABAD219C(&qword_1EB4D17D0, &qword_1ABF33960);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1ABF34740;
  sub_1ABA9538C();
  memcpy(v16, v17, v18);
  sub_1ABAE441C(&v38, v37);
  ObjectSynthesisDictionaryMapping.init()(v37);
  v19 = v37[0];
  type metadata accessor for InitializationResourcesManager();
  sub_1ABA7D028();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1ABF239C4();
  v37[0] = v19;
  v37[1] = v15;
  v37[2] = v20;
  CustomKnosisResultContext.graphObjectsFromAnswers<A>(ofType:)();
  if (v0)
  {
  }

  else
  {
    v33 = v5;
    v39 = v2;
    v37[0] = v21;
    v22 = v36;
    sub_1ABF241F4();
    swift_getWitnessTable();
    sub_1ABF24544();

    if (sub_1ABA7E1E0(v11, 1, v22) == 1)
    {
      (*(v34 + 8))(v11, v33);
      v23 = v35;
      v24 = 1;
      v25 = 1;
      v26 = v2;
    }

    else
    {
      v27 = &v11[*(v36 + 48)];
      v28 = *v27;
      v29 = *(v27 + 1);
      v30 = *(v27 + 2);

      sub_1ABA8AD50();
      (*(v31 + 32))(v35, v11, v39);
      sub_1ABA898F8();
    }

    sub_1ABA7B9B4(v23, v24, v25, v26);
  }

  sub_1ABA7BC90();
}

uint64_t Array<A>.prettyPrint()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      sub_1ABA9F0E0(v5);
      sub_1ABA9F0E0(v4);
      sub_1ABAE441C(v5, &v3);
      sub_1ABD88B98();
      result = sub_1ABC6D404(v5);
      v2 += 112;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t GraphNode.asString.getter()
{
  if (*(v0 + 34))
  {
    return 0;
  }

  v3 = v0;
  v1 = *v0;
  v2 = v3[1];

  return v1;
}

uint64_t GraphNode.asPredicate.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 34) == 2)
  {
    v3 = *(v1 + 16);
    v5 = v1[2];
    v4 = v1[3];
    v8 = v1;
    v6 = *v1;
    v7 = v8[1];
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  return result;
}

uint64_t GraphNode.asType.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 34) == 3)
  {
    v4 = v1[2];
    v3 = v1[3];
    v6 = *v1;
    v5 = v1[1];
    v7 = *(v1 + 32);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
    v7 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v7;
  return result;
}

uint64_t GraphNode.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 34);
  v4 = 0xE000000000000000;
  strcpy(v8, "<GraphNode: ");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  v5 = 0;
  switch(v3)
  {
    case 1:
      v5 = EntityIdentifier.stringValue.getter();
      v4 = v6;
      break;
    case 4:
      break;
    default:

      v5 = sub_1ABA950A4();
      break;
  }

  MEMORY[0x1AC5A9410](v5, v4);

  sub_1ABA83AA4();
  return v8[0];
}

uint64_t GraphNode.init(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((sub_1ABF23E64() & 1) != 0 && (, v6 = sub_1ABA8B14C(), EntityIdentifier.init(_:)(v6, v7, v8), v32 != 1))
  {
    a1 = v31;

    a2 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1;
  }

  else
  {
    v9 = sub_1ABA8B14C();
    v11 = sub_1ABA9AC84(v9, v10);
    if (v14)
    {
      v15 = sub_1ABA8B14C();
      result = sub_1ABB7F054(v15, v16);
      if (v20)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
      }

      else
      {
        v28 = result;
        v29 = v18;
        v30 = v19;

        result = sub_1ABA8882C(v28, v29, v30, &v31);
        a1 = v31;
        a2 = v32;
        v21 = v33;
        v22 = v34;
        v24 = 3;
        v23 = v35;
      }
    }

    else
    {
      v25 = v11;
      v26 = v12;
      v27 = v13;

      result = sub_1ABA91D48(v25, v26, v27, &v31);
      a1 = v31;
      a2 = v32;
      v21 = v33;
      v22 = v34;
      v24 = 2;
      v23 = v35;
    }
  }

  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v21;
  *(a3 + 24) = v22;
  *(a3 + 32) = v23;
  *(a3 + 34) = v24;
  return result;
}

uint64_t GraphNode.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 34);
  v5 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABF252D4();
  sub_1ABAD219C(&qword_1EB4D9318, &unk_1ABF5FD80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  v7 = inited;
  switch(v4)
  {
    case 1:
      *(inited + 32) = 0x797469746E65;
      *(inited + 40) = 0xE600000000000000;
      v13 = v2;
      v2 = EntityIdentifier.stringValue.getter();
      v3 = v10;
      goto LABEL_8;
    case 2:
      v8 = 0x7461636964657270;
      v9 = 0xE900000000000065;
      goto LABEL_6;
    case 3:
      v8 = 0x6C43797469746E65;
      v9 = 0xEB00000000737361;
      goto LABEL_6;
    case 4:
      v2 = 0;
      *(inited + 32) = 1701736302;
      *(inited + 40) = 0xE400000000000000;
      v3 = 0xE000000000000000;
      goto LABEL_8;
    default:
      v8 = 0x676E69727473;
      v9 = 0xE600000000000000;
LABEL_6:
      *(inited + 32) = v8;
      *(inited + 40) = v9;

LABEL_8:
      *(v7 + 48) = v2;
      *(v7 + 56) = v3;
      v13 = sub_1ABF239C4();
      sub_1ABA94E50(v12, v12[3]);
      sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
      sub_1ABD8F82C();
      sub_1ABF25074();

      return sub_1ABA84B54(v12);
  }
}

BOOL static GraphNode.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 16);
  v7 = *(a1 + 34);
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = *(a2 + 16);
  v13 = *(a2 + 34);
  v61[0] = *a1;
  v61[1] = v3;
  v61[2] = v5;
  v61[3] = v4;
  v62 = v6;
  v63 = v7;
  v64 = v8;
  v65 = v9;
  v66 = v11;
  v67 = v10;
  v68 = v12;
  v69 = v13;
  switch(v7)
  {
    case 1:
      if (v13 != 1)
      {
        goto LABEL_29;
      }

      sub_1ABA925A4(v61, &qword_1EB4D9320, &unk_1ABF5FD90);
      return v2 == v8;
    case 2:
      if (v13 != 2)
      {
        goto LABEL_25;
      }

      if (v2 != v8 || v3 != v9)
      {
        v60 = sub_1ABF25054();
        v27 = sub_1ABA902A8();
        sub_1ABAE4358(v27, v28, v29, v30, v31, 2u);
        v20 = sub_1ABA7E9C8();
        v25 = 2;
        goto LABEL_24;
      }

      sub_1ABAA2D68();
      sub_1ABAE4358(v44, v45, v46, v47, v12, 2u);
      v48 = sub_1ABA7E9C8();
      v53 = 2;
      goto LABEL_33;
    case 3:
      if (v13 != 3)
      {
LABEL_25:

LABEL_26:

LABEL_29:
        v39 = sub_1ABA902A8();
        sub_1ABAE4358(v39, v40, v41, v42, v43, v13);
        sub_1ABA925A4(v61, &qword_1EB4D9320, &unk_1ABF5FD90);
        return 0;
      }

      if (v5 != v11 || v4 != v10)
      {
        sub_1ABAA2D68();
        v60 = sub_1ABF25054();
        v33 = sub_1ABA902A8();
        sub_1ABAE4358(v33, v34, v35, v36, v37, 3u);
        v20 = sub_1ABA7E9C8();
        v25 = 3;
        goto LABEL_24;
      }

      v54 = sub_1ABA82ED0();
      sub_1ABAE4358(v54, v55, v5, v4, v12, 3u);
      v48 = sub_1ABA7E9C8();
      v53 = 3;
      goto LABEL_33;
    case 4:
      if (v13 != 4 || v9 | v8 | v11 | v10 || v12)
      {
        goto LABEL_29;
      }

      goto LABEL_34;
    default:
      if (v13)
      {
        goto LABEL_26;
      }

      if (v2 == v8 && v3 == v9)
      {
        sub_1ABAA2D68();
        sub_1ABAE4358(v56, v57, v58, v59, v12, 0);
        v48 = sub_1ABA7E9C8();
        v53 = 0;
LABEL_33:
        sub_1ABAE4358(v48, v49, v50, v51, v52, v53);
LABEL_34:
        sub_1ABA925A4(v61, &qword_1EB4D9320, &unk_1ABF5FD90);
        return 1;
      }

      else
      {
        v60 = sub_1ABF25054();
        v15 = sub_1ABA902A8();
        sub_1ABAE4358(v15, v16, v17, v18, v19, 0);
        v20 = sub_1ABA7E9C8();
        v25 = 0;
LABEL_24:
        sub_1ABAE4358(v20, v21, v22, v23, v24, v25);
        sub_1ABA925A4(v61, &qword_1EB4D9320, &unk_1ABF5FD90);
        return v60 & 1;
      }
  }
}

uint64_t GraphNode.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  switch(*(v0 + 34))
  {
    case 1:
      MEMORY[0x1AC5AA8A0](1);
      return MEMORY[0x1AC5AA8D0](v1);
    case 2:
      v3 = 2;
      goto LABEL_5;
    case 3:
      v6 = v0[2];
      v5 = v0[3];
      MEMORY[0x1AC5AA8A0](3);
      goto LABEL_7;
    case 4:
      return MEMORY[0x1AC5AA8A0](4);
    default:
      v3 = 0;
LABEL_5:
      MEMORY[0x1AC5AA8A0](v3);
      sub_1ABA7D0EC();
LABEL_7:

      return sub_1ABF23D34();
  }
}

uint64_t GraphNode.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 34);
  sub_1ABF25234();
  switch(v5)
  {
    case 1:
      MEMORY[0x1AC5AA8A0](1);
      MEMORY[0x1AC5AA8D0](v1);
      return sub_1ABF25294();
    case 2:
      v6 = 2;
      goto LABEL_5;
    case 3:
      MEMORY[0x1AC5AA8A0](3);
      goto LABEL_7;
    case 4:
      MEMORY[0x1AC5AA8A0](4);
      return sub_1ABF25294();
    default:
      v6 = 0;
LABEL_5:
      MEMORY[0x1AC5AA8A0](v6);
LABEL_7:
      sub_1ABF23D34();
      return sub_1ABF25294();
  }
}

uint64_t sub_1ABD8AC74()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = *(v0 + 34);
  sub_1ABF25234();
  GraphNode.hash(into:)();
  return sub_1ABF25294();
}

uint64_t KnosisFact.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t KnosisFact.id.setter()
{
  sub_1ABA7FC9C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t KnosisFact.subject.getter@<X0>(uint64_t a1@<X8>)
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
  return sub_1ABAA6150(v2, v3, v4, v5, v6, *(v1 + 50), a1);
}

__n128 KnosisFact.subject.setter(uint64_t a1)
{
  sub_1ABA96494(a1);
  sub_1ABC6D458(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 50));
  result = *v1;
  v6 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = v3;
  *(v2 + 50) = v4;
  return result;
}

uint64_t KnosisFact.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 KnosisFact.predicate.setter(__n128 *a1)
{
  v8 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u16[0];
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);

  result = v8;
  *(v1 + 56) = v8;
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return result;
}

uint64_t KnosisFact.object.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 128);
  *(a1 + 32) = v6;
  return sub_1ABAA6150(v2, v3, v4, v5, v6, *(v1 + 130), a1);
}

__n128 KnosisFact.object.setter(uint64_t a1)
{
  sub_1ABA96494(a1);
  sub_1ABC6D458(*(v2 + 96), *(v2 + 104), *(v2 + 112), *(v2 + 120), *(v2 + 128), *(v2 + 130));
  result = *v1;
  v6 = *(v1 + 16);
  *(v2 + 96) = *v1;
  *(v2 + 112) = v6;
  *(v2 + 128) = v3;
  *(v2 + 130) = v4;
  return result;
}

uint64_t KnosisFact.qualifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

uint64_t KnosisFact.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[12];
  v5 = v0[13];
  v7 = *(v0 + 130);
  v8 = 0xE000000000000000;
  sub_1ABF24AB4();

  MEMORY[0x1AC5A9410](v1, v2);
  MEMORY[0x1AC5A9410](0x616369646572702CLL, 0xEB000000003A6574);
  MEMORY[0x1AC5A9410](v3, v4);
  MEMORY[0x1AC5A9410](0x5D7463656A626F2CLL, 0xE90000000000003ALL);
  v9 = 0;
  switch(v7)
  {
    case 1:
      v9 = EntityIdentifier.stringValue.getter();
      v8 = v10;
      break;
    case 4:
      break;
    default:

      v9 = v6;
      v8 = v5;
      break;
  }

  MEMORY[0x1AC5A9410](v9, v8);

  return 979659099;
}

__n128 KnosisFact.init(subject:predicate:object:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = *(a1 + 16);
  v37 = *a1;
  v35 = *(a1 + 32);
  v4 = *(a1 + 34);
  v5 = *a2;
  v6 = a2[1];
  sub_1ABA8B920(a1, a2);
  v31 = *(v7 + 16);
  v38 = *v7;
  HIDWORD(v29) = *(v7 + 32);
  v8 = *(v7 + 34);
  sub_1ABAD219C(&qword_1EB4D92F8, &unk_1ABF5FD60);
  sub_1ABAE4254();
  *(a3 + 136) = sub_1ABF239C4();
  v9 = 0xE000000000000000;
  v10 = 0;
  switch(v4)
  {
    case 1:
      v10 = EntityIdentifier.stringValue.getter();
      v9 = v11;
      break;
    case 4:
      break;
    default:
      v9 = *(&v37 + 1);

      v10 = v37;
      break;
  }

  v39 = v10;

  v12 = sub_1ABAA0F58();
  MEMORY[0x1AC5A9410](v12);

  v13 = sub_1ABA894EC();
  MEMORY[0x1AC5A9410](v13);

  v14 = sub_1ABAA0F58();
  MEMORY[0x1AC5A9410](v14);

  v15 = 0xE000000000000000;
  v16 = 0;
  switch(v8)
  {
    case 1:
      v16 = EntityIdentifier.stringValue.getter();
      v15 = v17;
      break;
    case 4:
      break;
    default:
      v15 = v38.n128_u64[1];

      v16 = v38.n128_u64[0];
      break;
  }

  MEMORY[0x1AC5A9410](v16, v15);

  *a3 = v39;
  *(a3 + 8) = v9;
  *(a3 + 16) = v37;
  *(a3 + 32) = v36;
  *(a3 + 48) = v35;
  *(a3 + 50) = v4;
  *(a3 + 56) = v5;
  *(a3 + 64) = v6;
  sub_1ABAB663C(v18, v19, v20, v21, v22, v23, v24, v25, v28, v29, v31, *(&v31 + 1), *v32, *&v32[4], v33, v34);
  result = v38;
  *(a3 + 96) = v38;
  *(a3 + 112) = v27;
  *(a3 + 128) = v30;
  *(a3 + 130) = v8;
  return result;
}

uint64_t KnosisFact.init(subject:predicate:object:relationshipId:relationshipPredicate:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v68 = *(a1 + 16);
  HIDWORD(v67) = *(a1 + 32);
  v5 = *(a1 + 34);
  v6 = *a2;
  v7 = a2[1];
  sub_1ABA8B920(a1, a2);
  v73 = v8[1];
  v74 = v9;
  HIDWORD(v72) = *(v8 + 16);
  v71 = *(v8 + 34);
  v58 = v10[1];
  v75 = *v10;
  v76 = *v8;
  HIDWORD(v55) = *(v10 + 16);
  v11 = *(v10 + 34);
  v13 = v12[1];
  v79 = *v12;
  v80 = v13;
  v81 = *(v12 + 16);
  v14 = sub_1ABAD219C(&qword_1EB4D92F8, &unk_1ABF5FD60);
  v69 = sub_1ABAE4254();
  v70 = v14;
  v53 = sub_1ABF239C4();
  v15 = 0xE000000000000000;
  v16 = 0;
  switch(v5)
  {
    case 1:
      v77 = v74;
      v16 = EntityIdentifier.stringValue.getter();
      v15 = v17;
      break;
    case 4:
      break;
    default:
      v15 = *(&v74 + 1);

      v16 = v74;
      break;
  }

  v77 = v16;
  v78 = v15;

  v18 = sub_1ABAA0F58();
  MEMORY[0x1AC5A9410](v18);

  MEMORY[0x1AC5A9410](v6, v7);

  v19 = sub_1ABAA0F58();
  MEMORY[0x1AC5A9410](v19);

  v20 = v77;
  v21 = 0xE000000000000000;
  v22 = 0;
  switch(v11)
  {
    case 1:
      v77 = v75;
      v22 = EntityIdentifier.stringValue.getter();
      v21 = v23;
      break;
    case 4:
      break;
    default:
      v21 = *(&v75 + 1);

      v22 = v75;
      break;
  }

  v77 = v20;
  v78 = v15;

  MEMORY[0x1AC5A9410](v22, v21);

  *a3 = v20;
  *(a3 + 8) = v15;
  *(a3 + 16) = v74;
  *(a3 + 32) = v68;
  *(a3 + 48) = WORD2(v67);
  *(a3 + 50) = v5;
  *(a3 + 56) = v6;
  *(a3 + 64) = v7;
  sub_1ABAB663C(v24, v25, v26, v27, v28, v29, v30, v31, v53, v55, v58, *(&v58 + 1), *v61, *&v61[4], v63, v65);
  *(a3 + 96) = v75;
  *(a3 + 112) = v32;
  *(a3 + 128) = v57;
  *(a3 + 130) = v11;
  *(a3 + 136) = v54;
  sub_1ABAD219C(&qword_1EB4D1A58, &qword_1ABF33BE8);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1ABF34740;

  sub_1ABAFF1DC(&v79, &v77);
  *(v33 + 168) = sub_1ABF239C4();
  v77 = v20;
  v78 = v15;
  swift_bridgeObjectRetain_n();
  v34 = sub_1ABAA0F58();
  MEMORY[0x1AC5A9410](v34);

  v36 = *(&v79 + 1);
  v35 = v79;

  MEMORY[0x1AC5A9410](v35, v36);

  v37 = sub_1ABAA0F58();
  MEMORY[0x1AC5A9410](v37);

  v39 = v77;
  v38 = v78;
  v40 = 0xE000000000000000;
  v41 = 0;
  switch(v71)
  {
    case 1:
      v77 = v76;
      v41 = EntityIdentifier.stringValue.getter();
      v40 = v42;
      break;
    case 4:
      break;
    default:
      v40 = *(&v76 + 1);

      v41 = v76;
      break;
  }

  v77 = v39;
  v78 = v38;

  MEMORY[0x1AC5A9410](v41, v40);

  v43 = v80;
  *(v33 + 88) = v79;
  v44 = v78;
  *(v33 + 32) = v77;
  *(v33 + 40) = v44;
  *(v33 + 48) = v20;
  *(v33 + 56) = v15;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 79) = 0;
  *(v33 + 104) = v43;
  *(v33 + 120) = v81;
  *(v33 + 128) = v76;
  *(v33 + 144) = v73;
  *(v33 + 160) = WORD2(v72);
  *(v33 + 162) = v71;
  v45 = *(a3 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v45;
  sub_1ABAFC060(v33, &v79, isUniquelyReferenced_nonNull_native, v47, v48, v49, v50, v51, v54, v56, v59, v60, v62, v64, v66, v67, v68, *(&v68 + 1), v69, v70, v71, v72, v73, *(&v73 + 1));
  result = sub_1ABAE4478(&v79);
  *(a3 + 136) = v77;
  return result;
}

void sub_1ABD8B724()
{
  sub_1ABA7BCA8();
  v72 = v1;
  memcpy(v106, v2, 0x58uLL);
  sub_1ABAD219C(&qword_1EB4D92F8, &unk_1ABF5FD60);
  sub_1ABAE4254();
  v3 = sub_1ABF239C4();
  v71 = v106[0];
  v73 = v106[1];

  v4 = sub_1ABA7E79C();
  GraphNode.init(id:)(v4, v5, v6);
  v74 = v92;
  v75 = v93;
  v76 = v94;
  v77 = BYTE2(v94);
  v7 = v106[6];
  v8 = v106[7];
  if (!v106[7])
  {
    goto LABEL_3;
  }

  v9 = sub_1ABAA015C();
  v11 = sub_1ABA9AC84(v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v0;

  if (v17)
  {
LABEL_3:
    v19 = 0xE000000000000000;
    sub_1ABF24AB4();

    sub_1ABA8071C();
    *&v92 = 0xD00000000000001BLL;
    *(&v92 + 1) = v20;
    if (v8)
    {

      v19 = v8;
    }

    else
    {
      v7 = 0;
    }

    sub_1ABB24250(v106);
    MEMORY[0x1AC5A9410](v7, v19);

    v55 = *(&v92 + 1);
    sub_1ABD91400();
    swift_allocError();
    *v56 = v92;
    *(v56 + 8) = v55;
    *(v56 + 16) = 0;
    swift_willThrow();

    v24 = 0;
    v57 = 0;
    v58 = 0;
LABEL_25:
    sub_1ABC6D458(v74, *(&v74 + 1), v75, *(&v75 + 1), v76, v77);
    if (v57)
    {
    }

    if (v58)
    {
      sub_1ABC6D458(v68, v67, v66, v65, v64, v63);
    }

    sub_1ABAC9398(v24);
LABEL_30:
    sub_1ABA7BC90();
    return;
  }

  sub_1ABA91D48(v11, v13, v15, &v92);
  v69 = *(&v93 + 1);
  v70 = *(&v92 + 1);
  v21 = v106[9];
  if (!v106[9])
  {
    sub_1ABB24250(v106);
    sub_1ABD91400();
    swift_allocError();
    *v59 = 0xD000000000000018;
    *(v59 + 8) = 0x80000001ABF8F0D0;
    *(v59 + 16) = 0;
    swift_willThrow();

    v24 = 0;
    v58 = 0;
    v57 = 1;
    goto LABEL_25;
  }

  v60 = v92;
  v61 = v93;
  v62 = v94;
  v22 = v106[8];

  GraphNode.init(id:)(v22, v21, &v92);
  v67 = *(&v92 + 1);
  v68 = v92;
  v65 = *(&v93 + 1);
  v66 = v93;
  v63 = BYTE2(v94);
  v64 = v94;
  v23 = v106[10];

  sub_1ABB24250(v106);
  v24 = 0;
  v25 = 0;
  v78 = v23;
  v79 = *(v23 + 16);
  v26 = 32;
  while (1)
  {
    if (v79 == v25)
    {

      sub_1ABAC9398(v24);
      *v72 = v71;
      *(v72 + 8) = v73;
      *(v72 + 16) = v74;
      *(v72 + 32) = v75;
      *(v72 + 48) = v76;
      *(v72 + 50) = v77;
      *(v72 + 56) = v60;
      *(v72 + 64) = v70;
      *(v72 + 72) = v61;
      *(v72 + 80) = v69;
      *(v72 + 88) = v62;
      *(v72 + 96) = v68;
      *(v72 + 104) = v67;
      *(v72 + 112) = v66;
      *(v72 + 120) = v65;
      *(v72 + 128) = v64;
      *(v72 + 130) = v63;
      *(v72 + 136) = v3;
      goto LABEL_30;
    }

    if (v25 >= *(v23 + 16))
    {
      break;
    }

    memcpy(__dst, (v23 + v26), sizeof(__dst));
    memcpy(v91, (v23 + v26), sizeof(v91));
    sub_1ABB242A4(__dst, &v87);
    sub_1ABD8B724(&v92, v91);
    if (v18)
    {

      v57 = 1;
      v58 = 1;
      goto LABEL_25;
    }

    v87 = v92;
    v88 = v93;
    v89 = v94;
    v90 = v95;
    v27 = *(&v96 + 1);
    v28 = *(&v97 + 1);
    v29 = v98;
    *&v86[14] = *&v101[14];
    v85 = v100;
    *v86 = *v101;
    v84 = v99;
    v81 = v97;
    v82 = v96;
    v103 = v96;
    v104 = v97;
    v105 = v98;

    sub_1ABAC9398(v24);
    swift_isUniquelyReferenced_nonNull_native();
    v83 = v3;
    v30 = sub_1ABAF8208();
    if (__OFADD__(*(v3 + 16), (v31 & 1) == 0))
    {
      goto LABEL_35;
    }

    v32 = v30;
    v33 = v31;
    sub_1ABAD219C(&qword_1EB4D1FB0, &qword_1ABF351A0);
    if (sub_1ABF24C64())
    {
      v34 = sub_1ABAF8208();
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_37;
      }

      v32 = v34;
    }

    v80 = v25;
    if (v33)
    {
    }

    else
    {
      sub_1ABAA0BEC(v3 + 8 * (v32 >> 6));
      v38 = v36 + v32 * v37;
      v39 = v104;
      *v38 = v103;
      *(v38 + 16) = v39;
      *(v38 + 32) = v105;
      *(*(v3 + 56) + 8 * v32) = MEMORY[0x1E69E7CC0];
      v40 = *(v3 + 16);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_36;
      }

      *(v3 + 16) = v42;
    }

    v43 = *(v3 + 56);
    v44 = *(v43 + 8 * v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v43 + 8 * v32) = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v52 = *(v44 + 16);
      sub_1ABA7BEF0();
      sub_1ABAD88DC();
      v44 = v53;
      *(v43 + 8 * v32) = v53;
    }

    v47 = *(v44 + 16);
    v46 = *(v44 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_1ABA7BBEC(v46);
      sub_1ABA8BB08();
      sub_1ABAD88DC();
      v44 = v54;
      *(v43 + 8 * v32) = v54;
    }

    v18 = 0;
    *(v44 + 16) = v47 + 1;
    v48 = v44 + 144 * v47;
    v49 = v90;
    v50 = v87;
    v51 = v89;
    *(v48 + 48) = v88;
    *(v48 + 64) = v51;
    *(v48 + 32) = v50;
    *(v48 + 80) = v49;
    *(v48 + 88) = v82;
    *(v48 + 96) = v27;
    *(v48 + 104) = v81;
    *(v48 + 112) = v28;
    *(v48 + 120) = v29;
    *(v48 + 168) = *&v86[14];
    *(v48 + 154) = *v86;
    *(v48 + 138) = v85;
    *(v48 + 122) = v84;
    v26 += 88;
    v25 = v80 + 1;
    v24 = sub_1ABB4F3FC;
    v3 = v83;
    v23 = v78;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1ABF25104();
  __break(1u);
}

uint64_t static KnosisFact.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054();
  }
}

uint64_t sub_1ABD8BDEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656966696C617571 && a2 == 0xEA00000000007372)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1ABD8BF90(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7463656A627573;
      break;
    case 2:
      result = 0x7461636964657270;
      break;
    case 3:
      result = 0x7463656A626FLL;
      break;
    case 4:
      result = 0x656966696C617571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD8C02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD8BDEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD8C054(uint64_t a1)
{
  v2 = sub_1ABD8F8A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD8C090(uint64_t a1)
{
  v2 = sub_1ABD8F8A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KnosisFact.encode(to:)()
{
  sub_1ABA7BCA8();
  v47 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D9328, &qword_1ABF5FDA0);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v13 = *v0;
  v12 = v0[1];
  v14 = v0[2];
  v45 = v0[3];
  v46 = v14;
  v15 = v0[4];
  v43 = v0[5];
  v44 = v15;
  v54[0] = *(v0 + 24);
  HIDWORD(v42) = *(v0 + 50);
  v16 = v0[7];
  v40 = v0[8];
  v41 = v16;
  v17 = v0[9];
  v38 = v0[10];
  v39 = v17;
  v37 = *(v0 + 44);
  v18 = v0[13];
  v31 = v0[12];
  v19 = v0[15];
  v35 = v0[14];
  v36 = v18;
  v34 = v19;
  LODWORD(v17) = *(v0 + 64);
  v32 = *(v0 + 130);
  v33 = v17;
  v20 = v0[17];
  v21 = v3[3];
  v22 = v3[4];
  v23 = v3;
  v25 = v24;
  sub_1ABA88DCC(v23, v21);
  sub_1ABD8F8A8();
  sub_1ABF252E4();
  LOBYTE(v48) = 0;
  v26 = v47;
  sub_1ABF24F34();
  if (!v26)
  {
    v27 = v39;
    v28 = v40;
    v29 = v41;
    v47 = v20;
    v48 = v46;
    v49 = v45;
    v50 = v44;
    v51 = v43;
    v52 = v54[0];
    v53 = BYTE4(v42);
    sub_1ABAE4358(v46, v45, v44, v43, v54[0], BYTE4(v42));
    sub_1ABD8EFB0();
    sub_1ABA96D94();
    sub_1ABA9F29C();
    sub_1ABA90D68();
    v48 = v29;
    v49 = v28;
    v50 = v27;
    v51 = v38;
    v52 = v37;
    v30 = sub_1ABAA68CC();

    sub_1ABA96D94();
    sub_1ABA9F29C();

    if (!v30)
    {
      v48 = v31;
      v49 = v36;
      v50 = v35;
      v51 = v34;
      v52 = v33;
      v53 = v32;
      sub_1ABAE4358(v31, v36, v35, v34, v33, v32);
      sub_1ABA96D94();
      sub_1ABA9F29C();
      sub_1ABA90D68();
      v48 = v47;
      sub_1ABAD219C(&qword_1EB4D92E0, &qword_1ABF5FD58);
      sub_1ABD8F004();
      sub_1ABA96D94();
      sub_1ABA9F29C();
    }
  }

  (*(v6 + 8))(v11, v25);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void KnosisFact.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = *(v0 + 50);
  v8 = v0[8];
  v16 = v0[12];
  v17 = v0[7];
  v14 = v0[14];
  v15 = v0[13];
  v13 = v0[15];
  v9 = *(v0 + 130);
  v10 = v0[17];
  sub_1ABF23D34();
  switch(v7)
  {
    case 1:
      MEMORY[0x1AC5AA8A0](1);
      MEMORY[0x1AC5AA8D0](v4);
      goto LABEL_9;
    case 2:
      v11 = 2;
      goto LABEL_5;
    case 3:
      MEMORY[0x1AC5AA8A0](3);
      goto LABEL_7;
    case 4:
      MEMORY[0x1AC5AA8A0](4);
      goto LABEL_9;
    default:
      v11 = 0;
LABEL_5:
      MEMORY[0x1AC5AA8A0](v11);
LABEL_7:
      sub_1ABF23D34();
LABEL_9:
      sub_1ABF23D34();
      switch(v9)
      {
        case 1:
          MEMORY[0x1AC5AA8A0](1);
          MEMORY[0x1AC5AA8D0](v16);
          goto LABEL_17;
        case 2:
          v12 = 2;
          goto LABEL_13;
        case 3:
          MEMORY[0x1AC5AA8A0](3);
          goto LABEL_15;
        case 4:
          MEMORY[0x1AC5AA8A0](4);
          goto LABEL_17;
        default:
          v12 = 0;
LABEL_13:
          MEMORY[0x1AC5AA8A0](v12);
LABEL_15:
          sub_1ABF23D34();
LABEL_17:

          sub_1ABD8F210();
          return;
      }
  }
}

uint64_t KnosisFact.hashValue.getter()
{
  sub_1ABF25234();
  KnosisFact.hash(into:)();
  return sub_1ABF25294();
}

uint64_t sub_1ABD8C5E4()
{
  sub_1ABF25234();
  KnosisFact.hash(into:)();
  return sub_1ABF25294();
}

uint64_t QueryFeatures.intentArgInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 QueryFeatures.intentArgInfo.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 6);
  v6 = *(v1 + 8);
  v5 = *(v1 + 16);

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 8) = result;
  *(v1 + 24) = v4;
  return result;
}

uint64_t QueryFeatures.routeName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1ABA7D000();
}

uint64_t QueryFeatures.routeName.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t QueryFeatures.routeFlags.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1ABD8C7B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7241746E65746E69 && a2 == 0xED00006F666E4967;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D614E6574756F72 && a2 == 0xE900000000000065;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x616C466574756F72 && a2 == 0xEA00000000007367)
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

uint64_t sub_1ABD8C8DC(char a1)
{
  if (!a1)
  {
    return 0x7241746E65746E69;
  }

  if (a1 == 1)
  {
    return 0x6D614E6574756F72;
  }

  return 0x616C466574756F72;
}

uint64_t sub_1ABD8C950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD8C7B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD8C978(uint64_t a1)
{
  v2 = sub_1ABD8F8FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD8C9B4(uint64_t a1)
{
  v2 = sub_1ABD8F8FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void QueryFeatures.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D9338, &qword_1ABF5FDA8);
  sub_1ABA7BB64(v4);
  v18 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7E338();
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = *(v1 + 6);
  v15 = v1[5];
  v16 = v1[4];
  v14 = v1[6];
  v13 = a1[4];
  sub_1ABA88DCC(a1, a1[3]);
  sub_1ABD8F8FC();

  sub_1ABF252E4();
  sub_1ABD8F950();
  sub_1ABF24F84();

  if (!v17)
  {
    sub_1ABA7BF34();
    sub_1ABF24F34();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80D40(&qword_1EB4D4308);
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  (*(v18 + 8))(v2, v4);
  sub_1ABA7FC10();
}

uint64_t Debug.messages.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Debug.execSteps.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

Swift::Void __swiftcall Debug.append(contentOf:)(IntelligencePlatform::Debug contentOf)
{
  if (__OFADD__(*v1, *contentOf.indexCallCount))
  {
    __break(1u);
  }

  else
  {
    v3 = *(contentOf.indexCallCount + 8);
    v2 = *(contentOf.indexCallCount + 16);
    *v1 += *contentOf.indexCallCount;

    sub_1ABD7DA50(v3);
    sub_1ABD7DFB4(v2);
  }
}

Swift::Void __swiftcall Debug.addExecStep(_:)(IntelligencePlatform::ExecStep *a1)
{
  countAndFlagsBits = a1->queryNode._countAndFlagsBits;
  object = a1->queryNode._object;
  v5 = a1->indexQuery._countAndFlagsBits;
  v4 = a1->indexQuery._object;
  rawValue = a1->messages._rawValue;

  sub_1ABB4DCC8();
  v7 = *(*(v1 + 16) + 16);
  sub_1ABB4E0B4(v7);
  v8 = *(v1 + 16);
  *(v8 + 16) = v7 + 1;
  v9 = (v8 + 40 * v7);
  v9[4] = countAndFlagsBits;
  v9[5] = object;
  v9[6] = v5;
  v9[7] = v4;
  v9[8] = rawValue;
  *(v1 + 16) = v8;
}

uint64_t sub_1ABD8CE10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61437865646E69 && a2 == 0xEE00746E756F436CLL;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736567617373656DLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7065745363657865 && a2 == 0xE900000000000073)
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

uint64_t sub_1ABD8CF30(char a1)
{
  if (!a1)
  {
    return 0x6C61437865646E69;
  }

  if (a1 == 1)
  {
    return 0x736567617373656DLL;
  }

  return 0x7065745363657865;
}

uint64_t sub_1ABD8CFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD8CE10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD8CFC8(uint64_t a1)
{
  v2 = sub_1ABD8F9A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD8D004(uint64_t a1)
{
  v2 = sub_1ABD8F9A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Debug.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D9350, &qword_1ABF5FDB0);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E338();
  v10 = *v0;
  v17 = v0[2];
  v18 = v0[1];
  v11 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABD8F9A4();
  sub_1ABF252E4();
  sub_1ABA7BF34();
  sub_1ABF24F74();
  if (!v1)
  {
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80D40(&qword_1EB4D4308);
    sub_1ABA9F8A4();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    v12 = sub_1ABA954F0();
    sub_1ABAD219C(v12, v13);
    sub_1ABD8F9F8(&qword_1EB4D9368, &qword_1EB4D9360, &qword_1ABF5FDB8, sub_1ABD8FA74);
    sub_1ABA9F8A4();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  v14 = *(v6 + 8);
  v15 = sub_1ABA7D0EC();
  v16(v15);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void Debug.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v12 = v11;
  v14 = v13;
  v15 = sub_1ABAD219C(&qword_1EB4D9378, &qword_1ABF5FDC0);
  sub_1ABA7BB64(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v25 - v21;
  v23 = v12[4];
  sub_1ABA88DCC(v12, v12[3]);
  sub_1ABD8F9A4();
  sub_1ABF252C4();
  if (!v10)
  {
    LOBYTE(a10) = 0;
    v24 = sub_1ABF24E54();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    v26 = 1;
    sub_1ABA7C41C(&qword_1ED870660);
    sub_1ABA88700();
    sub_1ABAD219C(&qword_1EB4D9360, &qword_1ABF5FDB8);
    v26 = 2;
    sub_1ABD8FAC8();
    sub_1ABA88700();
    (*(v17 + 8))(v22, v15);
    *v14 = v24;
    v14[1] = a10;
    v14[2] = a10;
  }

  sub_1ABA84B54(v12);

  sub_1ABA7BC90();
}

uint64_t ExecStep.queryNode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t ExecStep.queryNode.setter()
{
  sub_1ABA7FC9C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ExecStep.indexQuery.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1ABA7D000();
}

uint64_t ExecStep.indexQuery.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ExecStep.messages.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ExecStep.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1ABF24AB4();

  strcpy(v9, "[queryNode: ");
  v6 = sub_1ABA7E79C();
  MEMORY[0x1AC5A9410](v6);
  MEMORY[0x1AC5A9410](0x517865646E69202CLL, 0xEE00203A79726575);
  MEMORY[0x1AC5A9410](v3, v4);
  MEMORY[0x1AC5A9410](0x67617373656D202CLL, 0xEC000000203A7365);
  v7 = MEMORY[0x1AC5A9750](v5, MEMORY[0x1E69E6158]);
  MEMORY[0x1AC5A9410](v7);

  MEMORY[0x1AC5A9410](93, 0xE100000000000000);
  return v9[0];
}

uint64_t static ExecStep.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v5 || v4 != v6)
  {
    sub_1ABA7E79C();
    if ((sub_1ABF25054() & 1) == 0)
    {
      return 0;
    }
  }

  v10 = sub_1ABA7D000();

  return sub_1ABB48494(v10, v11);
}

uint64_t sub_1ABD8D75C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F4E7972657571 && a2 == 0xE900000000000065;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6575517865646E69 && a2 == 0xEA00000000007972;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_1ABD8D87C(char a1)
{
  if (!a1)
  {
    return 0x646F4E7972657571;
  }

  if (a1 == 1)
  {
    return 0x6575517865646E69;
  }

  return 0x736567617373656DLL;
}

uint64_t sub_1ABD8D8DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABD8D930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD8D75C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD8D958(uint64_t a1)
{
  v2 = sub_1ABD8FBA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD8D994(uint64_t a1)
{
  v2 = sub_1ABD8FBA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ExecStep.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D9390, &qword_1ABF5FDC8);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E338();
  v11 = *v0;
  v12 = v0[1];
  v15 = v0[3];
  v16 = v0[2];
  v14 = v0[4];
  v13 = v4[4];
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABD8FBA0();
  sub_1ABF252E4();
  sub_1ABA82ED0();
  sub_1ABF24F34();
  if (!v1)
  {
    sub_1ABA7BF34();
    sub_1ABF24F34();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80D40(&qword_1EB4D4308);
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  (*(v7 + 8))(v2, v5);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void ExecStep.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D93A0, &qword_1ABF5FDD0);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABD8FBA0();
  sub_1ABF252C4();
  if (!v0)
  {
    v10 = sub_1ABF24E14();
    v12 = v11;
    v19 = v10;
    v13 = sub_1ABF24E14();
    v15 = v14;
    v18 = v13;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA7C41C(&qword_1ED870660);
    sub_1ABF24E64();
    v16 = sub_1ABA7ABFC();
    v17(v16);
    *v4 = v19;
    v4[1] = v12;
    v4[2] = v18;
    v4[3] = v15;
    v4[4] = v20;
  }

  sub_1ABA84B54(v2);

  sub_1ABA7BC90();
}

uint64_t sub_1ABD8DE10(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1ABD7EBFC(a4, a3);
  sub_1ABE51564(v5, a1);
}

uint64_t sub_1ABD8DE70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABD8DED4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1ABD8DF38()
{
  result = qword_1EB4D9280;
  if (!qword_1EB4D9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9280);
  }

  return result;
}

unint64_t sub_1ABD8DF8C()
{
  result = qword_1EB4D9298;
  if (!qword_1EB4D9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9298);
  }

  return result;
}

unint64_t sub_1ABD8DFE0()
{
  result = qword_1EB4D92A0;
  if (!qword_1EB4D92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D92A0);
  }

  return result;
}

unint64_t sub_1ABD8E034()
{
  result = qword_1EB4D92A8;
  if (!qword_1EB4D92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D92A8);
  }

  return result;
}

unint64_t sub_1ABD8E088()
{
  result = qword_1EB4D92B0;
  if (!qword_1EB4D92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D92B0);
  }

  return result;
}

uint64_t sub_1ABD8E0DC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1ABF24CA4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1ABF24B24();
  *v1 = result;
  return result;
}

uint64_t sub_1ABD8E17C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1ABD8E1F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1ABF24FE4();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = v7 / 2;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1ABF24164();
        *(v10 + 16) = v9;
      }

      sub_1ABAB5154();
      a3(v11, v12);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

char *sub_1ABD8E2FC(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 112 * a3;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v11 = *(v10 - 14);
        if (*v10 >= v11)
        {
          v12 = *v10 != v11 || v10[6] >= *(v10 - 8);
          if (v12)
          {
            break;
          }
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(v13, v10, sizeof(v13));
        memcpy(v10, v10 - 14, 0x70uLL);
        result = memcpy(v10 - 14, v13, 0x70uLL);
        v10 -= 14;
        v12 = __CFADD__(v9++, 1);
      }

      while (!v12);
      ++v4;
      v7 += 112;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABD8E3F0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 >= v5)
      {
        goto LABEL_35;
      }

      v9 = (*a3 + 112 * v6);
      v10 = *v9;
      v11 = (*a3 + 112 * v8);
      v12 = *v11;
      if (*v9 >= *v11)
      {
        v14 = v11[6];
        v15 = v9[6];
        v16 = v10 != v12 || v15 >= v14;
        v13 = !v16;
      }

      else
      {
        v13 = 1;
      }

      v17 = v8 + 2;
      if (v5 <= v8 + 2)
      {
        v6 = v8 + 2;
      }

      else
      {
        v6 = v5;
      }

      v18 = 112 * v8;
      for (i = (*a3 + 112 * v8 + 272); ; i += 14)
      {
        if (v17 >= v5)
        {
          goto LABEL_26;
        }

        v20 = *(i - 6);
        if (v20 >= v10)
        {
          break;
        }

        if ((v13 & 1) == 0)
        {
          v6 = v17;
          goto LABEL_35;
        }

LABEL_24:
        ++v17;
        v10 = v20;
      }

      if (v20 != v10)
      {
        if (v13)
        {
          v6 = v17;
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      if ((v13 ^ (*i >= *(i - 14))))
      {
        goto LABEL_24;
      }

      v6 = v17;
LABEL_26:
      if (v13)
      {
LABEL_27:
        if (v6 >= v8)
        {
          if (v8 < v6)
          {
            v21 = 112 * v6 - 112;
            v22 = v6;
            v23 = v8;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_134;
                }

                memcpy(__dst, (v24 + v18), sizeof(__dst));
                memmove((v24 + v18), (v24 + v21), 0x70uLL);
                memcpy((v24 + v21), __dst, 0x70uLL);
              }

              ++v23;
              v21 -= 112;
              v18 += 112;
            }

            while (v23 < v22);
            v5 = a3[1];
          }

          goto LABEL_35;
        }

LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
        break;
      }

LABEL_35:
      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_128;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_129;
          }

          if (v8 + a4 >= v5)
          {
            v25 = v5;
          }

          else
          {
            v25 = v8 + a4;
          }

          if (v25 < v8)
          {
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (v6 != v25)
          {
            v80 = v7;
            v26 = *a3;
            v27 = *a3 + 112 * v6;
            v28 = v8 - v6;
            do
            {
              v29 = v28;
              v30 = v27;
              do
              {
                v31 = *(v30 - 14);
                if (*v30 >= v31 && (*v30 != v31 || v30[6] >= *(v30 - 8)))
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_132;
                }

                memcpy(__dst, v30, sizeof(__dst));
                memcpy(v30, v30 - 14, 0x70uLL);
                memcpy(v30 - 14, __dst, 0x70uLL);
                v30 -= 14;
                v16 = __CFADD__(v29++, 1);
              }

              while (!v16);
              ++v6;
              v27 += 112;
              --v28;
            }

            while (v6 != v25);
            v6 = v25;
            v7 = v80;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_127;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = v7[2];
        sub_1ABAD8820();
        v7 = v76;
      }

      v33 = v7[2];
      v34 = v33 + 1;
      if (v33 >= v7[3] >> 1)
      {
        sub_1ABAD8820();
        v7 = v77;
      }

      v7[2] = v34;
      v35 = v7 + 4;
      v36 = &v7[2 * v33 + 4];
      *v36 = v8;
      v36[1] = v6;
      v81 = *a1;
      if (!*a1)
      {
        break;
      }

      if (v33)
      {
        while (1)
        {
          v37 = v34 - 1;
          v38 = &v35[2 * v34 - 2];
          v39 = &v7[2 * v34];
          if (v34 >= 4)
          {
            break;
          }

          if (v34 == 3)
          {
            v40 = v7[4];
            v41 = v7[5];
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_76:
            if (v43)
            {
              goto LABEL_117;
            }

            v55 = *v39;
            v54 = v39[1];
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_120;
            }

            v59 = v38[1];
            v60 = v59 - *v38;
            if (__OFSUB__(v59, *v38))
            {
              goto LABEL_123;
            }

            if (__OFADD__(v57, v60))
            {
              goto LABEL_125;
            }

            if (v57 + v60 >= v42)
            {
              if (v42 < v60)
              {
                v37 = v34 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          if (v34 < 2)
          {
            goto LABEL_119;
          }

          v62 = *v39;
          v61 = v39[1];
          v50 = __OFSUB__(v61, v62);
          v57 = v61 - v62;
          v58 = v50;
LABEL_91:
          if (v58)
          {
            goto LABEL_122;
          }

          v64 = *v38;
          v63 = v38[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_124;
          }

          if (v65 < v57)
          {
            goto LABEL_105;
          }

LABEL_98:
          if (v37 - 1 >= v34)
          {
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
            goto LABEL_130;
          }

          if (!*a3)
          {
            goto LABEL_133;
          }

          v69 = v7;
          v70 = &v35[2 * v37 - 2];
          v71 = *v70;
          v72 = &v35[2 * v37];
          v73 = v72[1];
          sub_1ABD8EAA0((*a3 + 112 * *v70), (*a3 + 112 * *v72), (*a3 + 112 * v73), v81);
          if (v4)
          {
            goto LABEL_110;
          }

          if (v73 < v71)
          {
            goto LABEL_112;
          }

          v74 = v69[2];
          if (v37 > v74)
          {
            goto LABEL_113;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v37 >= v74)
          {
            goto LABEL_114;
          }

          v34 = v74 - 1;
          memmove(&v35[2 * v37], v72 + 2, 16 * (v74 - 1 - v37));
          v7 = v69;
          v69[2] = v74 - 1;
          if (v74 <= 2)
          {
            goto LABEL_105;
          }
        }

        v44 = &v35[2 * v34];
        v45 = *(v44 - 8);
        v46 = *(v44 - 7);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_115;
        }

        v49 = *(v44 - 6);
        v48 = *(v44 - 5);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_116;
        }

        v51 = v39[1];
        v52 = v51 - *v39;
        if (__OFSUB__(v51, *v39))
        {
          goto LABEL_118;
        }

        v50 = __OFADD__(v42, v52);
        v53 = v42 + v52;
        if (v50)
        {
          goto LABEL_121;
        }

        if (v53 >= v47)
        {
          v67 = *v38;
          v66 = v38[1];
          v50 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v50)
          {
            goto LABEL_126;
          }

          if (v42 < v68)
          {
            v37 = v34 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_76;
      }

LABEL_105:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v84 = v7;
        goto LABEL_108;
      }
    }

    __break(1u);
    goto LABEL_136;
  }

LABEL_108:
  if (!*a1)
  {
LABEL_136:
    __break(1u);
    return;
  }

  sub_1ABD8E968(&v84, *a1, a3);
LABEL_110:
}

uint64_t sub_1ABD8E968(uint64_t *a1, char *a2, void *a3)
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
    sub_1ABD8EAA0((*a3 + 112 * *v4), (*a3 + 112 * *v9), (*a3 + 112 * v10), a2);
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

uint64_t sub_1ABD8EAA0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 112;
  v9 = (a3 - a2) / 112;
  if (v8 < v9)
  {
    sub_1ABADD3D0(a1, (a2 - a1) / 112, a4);
    v10 = &v4[112 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v15 = v7;
        goto LABEL_38;
      }

      if (*v6 < *v4)
      {
        break;
      }

      if (*v6 == *v4 && *(v6 + 6) < *(v4 + 6))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 112;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 112;
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 112;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    memmove(v7, v13, 0x70uLL);
    goto LABEL_18;
  }

  sub_1ABADD3D0(a2, (a3 - a2) / 112, a4);
  v10 = &v4[112 * v9];
LABEL_20:
  v15 = v6;
  v6 -= 112;
  for (v5 -= 112; v10 > v4 && v15 > v7; v5 -= 112)
  {
    v17 = *(v10 - 14);
    if (v17 < *v6 || (v17 == *v6 ? (v18 = *(v10 - 8) >= *(v15 - 8)) : (v18 = 1), !v18))
    {
      if (v5 + 112 != v15)
      {
        memmove(v5, v6, 0x70uLL);
      }

      goto LABEL_20;
    }

    if (v10 != v5 + 112)
    {
      memmove(v5, v10 - 112, 0x70uLL);
    }

    v10 -= 112;
  }

LABEL_38:
  v19 = (v10 - v4) / 112;
  if (v15 != v4 || v15 >= &v4[112 * v19])
  {
    memmove(v15, v4, 112 * v19);
  }

  return 1;
}