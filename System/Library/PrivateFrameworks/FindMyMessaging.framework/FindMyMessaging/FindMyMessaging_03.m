FindMyMessaging::Destination_optional __swiftcall Destination.init(string:)(Swift::String string)
{
  v2 = v1;
  sub_24AF12470();
  v3 = sub_24AF357AC();
  v4 = sub_24AF3539C();
  v8 = v4;
  if ((v3 & 1) == 0)
  {
    v9 = IDSCopyIDForPhoneNumber();

    if (v9)
    {
      v14 = 1;
      goto LABEL_6;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = MEMORY[0x24C235E50](v4, v5, v6, v7);

  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = 0;
LABEL_6:

  v15 = sub_24AF353AC();
  v17 = v16;

  *v2 = v14;
  v2[1] = v15;
  v2[2] = v17;
LABEL_9:
  result.value.destination._object = v12;
  result.value.destination._countAndFlagsBits = v11;
  result.is_nil = v13;
  result.value.type = v10;
  return result;
}

FindMyMessaging::Destination::DestinationType_optional __swiftcall Destination.DestinationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

FindMyMessaging::Destination __swiftcall Destination.init(email:)(Swift::String email)
{
  sub_24AF123F0(MEMORY[0x277D18528], 0, v1);
  result.destination._object = v4;
  result.destination._countAndFlagsBits = v3;
  result.type = v2;
  return result;
}

FindMyMessaging::Destination __swiftcall Destination.init(phoneNumber:)(Swift::String phoneNumber)
{
  sub_24AF123F0(MEMORY[0x277D18530], 1, v1);
  result.destination._object = v4;
  result.destination._countAndFlagsBits = v3;
  result.type = v2;
  return result;
}

void sub_24AF123F0(uint64_t (*a1)(void)@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v6 = sub_24AF3539C();
  v7 = a1();

  if (v7)
  {

    v8 = sub_24AF353AC();
    v10 = v9;

    *a3 = a2;
    *(a3 + 8) = v8;
    *(a3 + 16) = v10;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_24AF12470()
{
  result = qword_27EFC0FA0;
  if (!qword_27EFC0FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0FA0);
  }

  return result;
}

uint64_t sub_24AF124C4()
{
  if (*v0)
  {
    result = 0x74616E6974736564;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_24AF12500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_24AF35C4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AF35C4C();

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

uint64_t sub_24AF125EC(uint64_t a1)
{
  v2 = sub_24AF12808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AF12628(uint64_t a1)
{
  v2 = sub_24AF12808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Destination.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0FA8, &qword_24AF39B40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF12808();
  sub_24AF35D6C();
  v16 = v9;
  v15 = 0;
  sub_24AF1285C();
  sub_24AF35BCC();
  if (!v2)
  {
    v14 = 1;
    sub_24AF35B9C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24AF12808()
{
  result = qword_2813931A0;
  if (!qword_2813931A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813931A0);
  }

  return result;
}

unint64_t sub_24AF1285C()
{
  result = qword_2813931B0[0];
  if (!qword_2813931B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813931B0);
  }

  return result;
}

uint64_t Destination.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0FB0, &qword_24AF39B48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF12808();
  sub_24AF35D5C();
  if (!v2)
  {
    v18 = 0;
    sub_24AF12A70();
    sub_24AF35B2C();
    v11 = v19;
    v17 = 1;
    v13 = sub_24AF35AFC();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_24AF12A70()
{
  result = qword_27EFC0FB8;
  if (!qword_27EFC0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0FB8);
  }

  return result;
}

uint64_t sub_24AF12AF4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Destination.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x24C235D70](*v0);

  return sub_24AF353DC();
}

uint64_t static Destination.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_24AF35C4C();
  }
}

uint64_t Destination.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  sub_24AF353DC();
  return sub_24AF35D4C();
}

uint64_t sub_24AF12C24()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  sub_24AF353DC();
  return sub_24AF35D4C();
}

uint64_t sub_24AF12C88()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x24C235D70](*v0);

  return sub_24AF353DC();
}

uint64_t sub_24AF12CDC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  sub_24AF353DC();
  return sub_24AF35D4C();
}

unint64_t sub_24AF12D40()
{
  result = qword_27EFC0FC0;
  if (!qword_27EFC0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0FC0);
  }

  return result;
}

unint64_t sub_24AF12D98()
{
  result = qword_281393180;
  if (!qword_281393180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281393180);
  }

  return result;
}

uint64_t sub_24AF12DEC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_24AF35C4C();
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AF12E48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24AF12E90(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_24AF12F04()
{
  result = qword_27EFC0FC8;
  if (!qword_27EFC0FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0FC8);
  }

  return result;
}

unint64_t sub_24AF12F5C()
{
  result = qword_281393190;
  if (!qword_281393190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281393190);
  }

  return result;
}

unint64_t sub_24AF12FB4()
{
  result = qword_281393198;
  if (!qword_281393198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281393198);
  }

  return result;
}

unint64_t sub_24AF13008()
{
  result = qword_2813931A8;
  if (!qword_2813931A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813931A8);
  }

  return result;
}

uint64_t sub_24AF13060(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_24AF1310C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07C8, &qword_24AF37BE0);
    v2 = sub_24AF3590C();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v22 = *v13;
    v23 = v13[1];

    swift_dynamicCast();
    v14 = *(v2 + 40);
    result = sub_24AF358BC();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v26;
    *v11 = v24;
    *(v11 + 16) = v25;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24AF13340(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFC0FD0, &qword_24AF3A0E0);
    v2 = sub_24AF35A7C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24AED0E50(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_24AED0F00(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_24AED0F00(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_24AED0F00(v32, v33);
    v17 = *(v2 + 40);
    result = sub_24AF358BC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_24AED0F00(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24AF13608(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFC0FD0, &qword_24AF3A0E0);
    v2 = sub_24AF35A7C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24AED0E50(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];

    swift_dynamicCast();
    sub_24AED0F00(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0918, &qword_24AF380D8);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_24AED0F00(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_24AED0F00(v32, v33);
    v17 = *(v2 + 40);
    result = sub_24AF358BC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_24AED0F00(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24AF13904()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_281392F20);
  v1 = __swift_project_value_buffer(v0, qword_281392F20);
  if (qword_281392F40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281393428);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AF139CC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  type metadata accessor for LocalMessaging();
  swift_getMetatypeMetadata();
  return sub_24AF353BC();
}

uint64_t LocalMessaging.serviceName.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_24AF13A38(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  v4 = *(v2 + 168);
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return sub_24AED56FC(v3);
}

uint64_t sub_24AF13A4C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 184);
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return sub_24AED56FC(v3);
}

uint64_t sub_24AF13A60(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 192);
  v4 = *(v2 + 200);
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return sub_24AED56FC(v3);
}

uint64_t sub_24AF13A74(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 208);
  v4 = *(v2 + 216);
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return sub_24AED56FC(v3);
}

uint64_t sub_24AF13A88(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 224);
  v4 = *(v2 + 232);
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return sub_24AED56FC(v3);
}

uint64_t sub_24AF13A9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 240);
  v4 = *(v2 + 248);
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return sub_24AED56FC(v3);
}

uint64_t sub_24AF13AB0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 256);
  v4 = *(v2 + 264);
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return sub_24AED56FC(v3);
}

uint64_t sub_24AF13AC4()
{
  sub_24AF3503C();
  if (!v30)
  {
    sub_24AEE2E10(&v28, &qword_27EFC0968, &qword_24AF381E8);
LABEL_13:
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v8 = sub_24AF3529C();
    __swift_project_value_buffer(v8, qword_281392F20);
    v9 = sub_24AF3527C();
    v10 = sub_24AF3571C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AECF000, v9, v10, "Missing com.apple.private.ids.registration entitlement!", v11, 2u);
      MEMORY[0x24C236490](v11, -1, -1);
    }

    v26 = 0;
    v25 = 75;
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0 || v27 != 1)
  {
    goto LABEL_13;
  }

  sub_24AF3503C();
  if ((swift_dynamicCast() & 1) == 0 || v27 != 1)
  {
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v12 = sub_24AF3529C();
    __swift_project_value_buffer(v12, qword_281392F20);
    v13 = sub_24AF3527C();
    v14 = sub_24AF3571C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24AECF000, v13, v14, "Missing com.apple.private.ids.remotecredentials entitlement!", v15, 2u);
      MEMORY[0x24C236490](v15, -1, -1);
    }

    v26 = 0;
    v25 = 81;
    goto LABEL_35;
  }

  sub_24AF3503C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0970, &qword_24AF381F0);
  v1 = swift_dynamicCast();
  if ((v1 & 1) == 0)
  {
    goto LABEL_24;
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v28 = v2;
  v29 = v3;
  MEMORY[0x28223BE20](v1);
  v25 = &v28;
  if ((sub_24AF13060(sub_24AF23948, v24, v27) & 1) == 0)
  {

LABEL_24:
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v16 = sub_24AF3529C();
    __swift_project_value_buffer(v16, qword_281392F20);
    v17 = sub_24AF3527C();
    v18 = sub_24AF3571C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24AECF000, v17, v18, "Missing com.apple.private.ids.messaging entitlement!", v19, 2u);
      MEMORY[0x24C236490](v19, -1, -1);
    }

    v26 = 0;
    v25 = 87;
    goto LABEL_35;
  }

  sub_24AF3503C();
  if (v30)
  {
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v27;
      v28 = v2;
      v29 = v3;
      MEMORY[0x28223BE20](v4);
      v25 = &v28;
      v6 = sub_24AF13060(sub_24AF239D4, v24, v5);

      if (v6)
      {
      }
    }
  }

  else
  {
    sub_24AEE2E10(&v28, &qword_27EFC0968, &qword_24AF381E8);
  }

  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v20 = sub_24AF3529C();
  __swift_project_value_buffer(v20, qword_281392F20);
  v21 = sub_24AF3527C();
  v22 = sub_24AF3571C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_24AECF000, v21, v22, "Missing com.apple.private.ids.messaging.urgent-priority entitlement!", v23, 2u);
    MEMORY[0x24C236490](v23, -1, -1);
  }

  v26 = 0;
  v25 = 93;
LABEL_35:
  result = sub_24AF35A3C();
  __break(1u);
  return result;
}

uint64_t LocalMessaging.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AEE1D70;

  return LocalMessaging.init(serviceName:)(a1, a2);
}

uint64_t LocalMessaging.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v3[6] = *v2;
  return MEMORY[0x2822009F8](sub_24AF14264, 0, 0);
}

uint64_t sub_24AF14264()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  swift_defaultActor_initialize();
  *(v3 + 136) = 0;
  *(v3 + 144) = sub_24AEE263C(MEMORY[0x277D84F90]);
  v5 = sub_24AF3521C();
  v0[7] = *(v1 + 80);
  v0[8] = *(v1 + 88);
  type metadata accessor for Message();
  type metadata accessor for MessageContext();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
  v6 = sub_24AF3501C();
  swift_getTupleTypeMetadata2();
  v7 = sub_24AF354CC();
  v8 = sub_24AF22C2C(&qword_281393400, MEMORY[0x277CC95F0]);
  v9 = sub_24AEF6664(v7, v5, v6, v8);

  *(v3 + 152) = v9;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 112) = v4;
  *(v3 + 120) = v2;
  v10 = objc_allocWithZone(MEMORY[0x277D18778]);

  v11 = sub_24AF3539C();
  v12 = [v10 initWithService_];

  if (v12)
  {
    v16 = v0[3];
    v17 = v0[4];

    *(v17 + 128) = v12;
    v13 = sub_24AF14468;
    v14 = v17;
    v15 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_24AF14468()
{
  v23 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[4];
  v4 = type metadata accessor for MessagingDelegateTrampoline();
  v21 = 0;
  v22 = 1;
  v5 = type metadata accessor for LocalMessaging();

  v7 = sub_24AF31908(v6, &v21, v4, v5, &off_285E3EA50);
  v8 = *(v3 + 136);
  *(v3 + 136) = v7;

  sub_24AF13AC4();
  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v9 = sub_24AF3529C();
  __swift_project_value_buffer(v9, qword_281392F20);
  v10 = sub_24AF3527C();
  v11 = sub_24AF3572C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    v15 = sub_24AF139CC();
    v17 = sub_24AEF599C(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_24AECF000, v10, v11, "%{public}s: created.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C236490](v14, -1, -1);
    MEMORY[0x24C236490](v13, -1, -1);
  }

  v18 = v0[1];
  v19 = v0[4];

  return v18(v19);
}

void sub_24AF14650()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24AF352AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D18A20]) init];
  v9 = v1[16];
  v10 = v1[17];
  sub_24AED0EAC(0, &qword_281392DC0, 0x277D85C78);
  (*(v4 + 104))(v7, *MEMORY[0x277D851C8], v3);
  v11 = v8;
  v12 = v10;
  v13 = sub_24AF3576C();
  (*(v4 + 8))(v7, v3);
  [v9 addDelegate:v12 withDelegateProperties:v11 queue:v13];

  v14 = [v9 devices];
  if (v14)
  {
    v15 = v14;
    sub_24AED0EAC(0, &qword_281392DB8, 0x277D186E0);
    v16 = sub_24AF3549C();

    v17 = v1[17];
    if (v17)
    {
      v18 = v17;
      v19 = sub_24AEE5870(v16);

      sub_24AF2A794(v9, v19);
    }
  }

  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v20 = sub_24AF3529C();
  __swift_project_value_buffer(v20, qword_281392F20);
  v21 = sub_24AF3527C();
  v22 = sub_24AF3572C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136446210;
    v25 = sub_24AF139CC();
    v27 = sub_24AEF599C(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_24AECF000, v21, v22, "%{public}s: started.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C236490](v24, -1, -1);
    MEMORY[0x24C236490](v23, -1, -1);
  }
}

void sub_24AF1499C()
{
  v1 = v0;
  v37 = *v0;
  swift_beginAccess();
  v2 = v0[18];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v0[18];

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
      sub_24AF3554C();
      sub_24AF22C2C(&qword_27EFC08F0, MEMORY[0x277D85678]);
      v12 = swift_allocError();

      sub_24AF352DC();
      v38[9] = v12;
      sub_24AF34FFC();

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  swift_beginAccess();
  v13 = v1[18];
  v1[18] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v14 = v1[19];
  sub_24AF3521C();
  v15 = *(v37 + 80);
  v16 = *(v37 + 88);
  type metadata accessor for Message();
  type metadata accessor for MessageContext();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
  sub_24AF3501C();
  sub_24AF22C2C(&qword_281393400, MEMORY[0x277CC95F0]);
  v17 = nullsub_1(v14);
  v18 = v17;
  v19 = v17 + 64;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 64);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  while (v22)
  {
    v25 = v24;
LABEL_19:
    v26 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v27 = *(*(v18 + 56) + ((v25 << 9) | (8 * v26)));
    sub_24AF3554C();
    sub_24AF22C2C(&qword_27EFC08F0, MEMORY[0x277D85678]);
    v28 = swift_allocError();

    sub_24AF352DC();
    v38[0] = v28;
    sub_24AF34FFC();
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      swift_beginAccess();
      sub_24AF3532C();
      sub_24AF3531C();
      swift_endAccess();
      [v1[16] removeDelegate_];
      if (qword_281392F18 != -1)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    v22 = *(v19 + 8 * v25);
    ++v24;
    if (v22)
    {
      v24 = v25;
      goto LABEL_19;
    }
  }

LABEL_26:
  __break(1u);
LABEL_27:
  swift_once();
LABEL_22:
  v29 = sub_24AF3529C();
  __swift_project_value_buffer(v29, qword_281392F20);
  v30 = sub_24AF3527C();
  v31 = sub_24AF3572C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v32 = 136446210;
    v34 = sub_24AF139CC();
    v36 = sub_24AEF599C(v34, v35, v38);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_24AECF000, v30, v31, "%{public}s: stopped.", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x24C236490](v33, -1, -1);
    MEMORY[0x24C236490](v32, -1, -1);
  }
}

void sub_24AF14ED0(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 128);
  v4 = sub_24AF3539C();
  v5 = [v3 deviceForFromID_];

  if (v5)
  {
    sub_24AF329AC(v5, &v26);
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v18 = v28;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v16 = v26;
    v17 = v27;
    nullsub_1(&v16);
    v10 = v23;
    a1[6] = v22;
    a1[7] = v10;
    v11 = v25;
    a1[8] = v24;
    a1[9] = v11;
    v12 = v19;
    a1[2] = v18;
    a1[3] = v12;
    v13 = v21;
    a1[4] = v20;
    a1[5] = v13;
    v14 = v16;
    v15 = v17;
  }

  else
  {
    sub_24AEF6968(&v26);
    v6 = v33;
    a1[6] = v32;
    a1[7] = v6;
    v7 = v35;
    a1[8] = v34;
    a1[9] = v7;
    v8 = v29;
    a1[2] = v28;
    a1[3] = v8;
    v9 = v31;
    a1[4] = v30;
    a1[5] = v9;
    v14 = v26;
    v15 = v27;
  }

  *a1 = v14;
  a1[1] = v15;
}

void sub_24AF14FE4(_OWORD *a1@<X8>)
{
  v2 = sub_24AF15108();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = 32;
    while (1)
    {
      v5 = *&v2[v4 + 16];
      v32 = *&v2[v4];
      v33 = v5;
      v6 = *&v2[v4 + 32];
      v7 = *&v2[v4 + 48];
      v8 = *&v2[v4 + 80];
      v36 = *&v2[v4 + 64];
      v37 = v8;
      v34 = v6;
      v35 = v7;
      v9 = *&v2[v4 + 96];
      v10 = *&v2[v4 + 112];
      v11 = *&v2[v4 + 144];
      v40 = *&v2[v4 + 128];
      v41 = v11;
      v38 = v9;
      v39 = v10;
      if (BYTE3(v40))
      {
        break;
      }

      v4 += 160;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_24AEF6984(&v32, &v22);

    v28 = v38;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v22 = v32;
    v23 = v33;
    nullsub_1(&v22);
    v18 = v29;
    a1[6] = v28;
    a1[7] = v18;
    v19 = v31;
    a1[8] = v30;
    a1[9] = v19;
    v20 = v25;
    a1[2] = v24;
    a1[3] = v20;
    v21 = v27;
    a1[4] = v26;
    a1[5] = v21;
    v16 = v22;
    v17 = v23;
  }

  else
  {
LABEL_5:

    sub_24AEF6968(&v32);
    v12 = v39;
    a1[6] = v38;
    a1[7] = v12;
    v13 = v41;
    a1[8] = v40;
    a1[9] = v13;
    v14 = v35;
    a1[2] = v34;
    a1[3] = v14;
    v15 = v37;
    a1[4] = v36;
    a1[5] = v15;
    v16 = v32;
    v17 = v33;
  }

  *a1 = v16;
  a1[1] = v17;
}

char *sub_24AF15108()
{
  v0 = sub_24AF1549C();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_27:

    v5 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);
    if (v17)
    {
LABEL_13:
      v18 = 0;
      v19 = MEMORY[0x277D84F90];
      do
      {
        v1 = v5 + 32 + 160 * v18;
        v20 = v18;
        while (1)
        {
          if (v20 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          v21 = *(v1 + 16);
          v58 = *v1;
          v59 = v21;
          v22 = *(v1 + 32);
          v23 = *(v1 + 48);
          v24 = *(v1 + 80);
          v62 = *(v1 + 64);
          v63 = v24;
          v60 = v22;
          v61 = v23;
          v25 = *(v1 + 96);
          v26 = *(v1 + 112);
          v27 = *(v1 + 144);
          v66 = *(v1 + 128);
          v67 = v27;
          v64 = v25;
          v65 = v26;
          v18 = v20 + 1;
          memmove(&__dst, v1, 0xA0uLL);
          if (sub_24AEF69E0(&__dst) != 1)
          {
            break;
          }

          v1 += 160;
          ++v20;
          if (v17 == v18)
          {
            goto LABEL_29;
          }
        }

        v54 = v64;
        v55 = v65;
        v56 = v66;
        v57 = v67;
        v50 = v60;
        v51 = v61;
        v52 = v62;
        v53 = v63;
        v48 = v58;
        v49 = v59;
        sub_24AEF6984(&v48, &v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_24AEF543C(0, *(v19 + 2) + 1, 1, v19);
        }

        v29 = *(v19 + 2);
        v28 = *(v19 + 3);
        if (v29 >= v28 >> 1)
        {
          v19 = sub_24AEF543C((v28 > 1), v29 + 1, 1, v19);
        }

        v42 = v62;
        v43 = v63;
        v40 = v60;
        v41 = v61;
        v46 = v66;
        v47 = v67;
        v44 = v64;
        v45 = v65;
        v38 = v58;
        v39 = v59;
        *(v19 + 2) = v29 + 1;
        v30 = &v19[160 * v29];
        v31 = v39;
        *(v30 + 2) = v38;
        *(v30 + 3) = v31;
        v32 = v40;
        v33 = v41;
        v34 = v43;
        *(v30 + 6) = v42;
        *(v30 + 7) = v34;
        *(v30 + 4) = v32;
        *(v30 + 5) = v33;
        v35 = v44;
        v36 = v45;
        v37 = v47;
        *(v30 + 10) = v46;
        *(v30 + 11) = v37;
        *(v30 + 8) = v35;
        *(v30 + 9) = v36;
      }

      while (v17 - 1 != v20);
      goto LABEL_29;
    }

LABEL_28:
    v19 = MEMORY[0x277D84F90];
LABEL_29:

    return v19;
  }

LABEL_26:
  v2 = sub_24AF3585C();
  if (!v2)
  {
    goto LABEL_27;
  }

LABEL_3:
  *&v38 = MEMORY[0x277D84F90];
  result = sub_24AEF6168(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v38;
    if ((v1 & 0xC000000000000001) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    for (i = MEMORY[0x24C2359A0](v4, v1); ; i = *(v1 + 8 * v4 + 32))
    {
      sub_24AF329AC(i, &v58);
      v54 = v64;
      v55 = v65;
      v56 = v66;
      v57 = v67;
      v50 = v60;
      v51 = v61;
      v52 = v62;
      v53 = v63;
      v48 = v58;
      v49 = v59;
      nullsub_1(&v48);
      v74 = v54;
      v75 = v55;
      v76 = v56;
      v77 = v57;
      v70 = v50;
      v71 = v51;
      v72 = v52;
      v73 = v53;
      __dst = v48;
      v69 = v49;
      *&v38 = v5;
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_24AEF6168((v7 > 1), v8 + 1, 1);
        v5 = v38;
      }

      *(v5 + 16) = v8 + 1;
      v9 = (v5 + 160 * v8);
      v10 = v69;
      v9[2] = __dst;
      v9[3] = v10;
      v11 = v70;
      v12 = v71;
      v13 = v73;
      v9[6] = v72;
      v9[7] = v13;
      v9[4] = v11;
      v9[5] = v12;
      v14 = v74;
      v15 = v75;
      v16 = v77;
      v9[10] = v76;
      v9[11] = v16;
      v9[8] = v14;
      v9[9] = v15;
      if (v2 - 1 == v4)
      {
        break;
      }

      ++v4;
      if ((v1 & 0xC000000000000001) != 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      ;
    }

    v17 = *(v5 + 16);
    if (v17)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

id sub_24AF1549C()
{
  if (MEMORY[0x24C235020]())
  {
    return MEMORY[0x277D84F90];
  }

  result = [*(v0 + 128) devices];
  if (result)
  {
    v2 = result;
    sub_24AED0EAC(0, &qword_281392DB8, 0x277D186E0);
    v3 = sub_24AF3549C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LocalMessaging.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 144);

  v3 = *(v0 + 152);

  v4 = *(v0 + 168);
  sub_24AED56FC(*(v0 + 160));
  v5 = *(v0 + 184);
  sub_24AED56FC(*(v0 + 176));
  v6 = *(v0 + 200);
  sub_24AED56FC(*(v0 + 192));
  v7 = *(v0 + 216);
  sub_24AED56FC(*(v0 + 208));
  v8 = *(v0 + 232);
  sub_24AED56FC(*(v0 + 224));
  v9 = *(v0 + 248);
  sub_24AED56FC(*(v0 + 240));
  v10 = *(v0 + 264);
  sub_24AED56FC(*(v0 + 256));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t LocalMessaging.__deallocating_deinit()
{
  LocalMessaging.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t LocalMessaging.send(message:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = *v3;
  v6 = type metadata accessor for MessagingOptions();
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = *(v5 + 80);
  v9 = *(v5 + 88);
  v10 = type metadata accessor for Message();
  v4[10] = v10;
  v11 = *(v10 - 8);
  v4[11] = v11;
  v12 = *(v11 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF1575C, v3, 0);
}

uint64_t sub_24AF1575C()
{
  v108 = v0;
  v1 = *(v0[4] + *(v0[7] + 20));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v106 = MEMORY[0x277D84F90];
    sub_24AEF6148(0, v2, 0);
    v3 = v106;
    v4 = *(v106 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 48);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v106 = v3;
      v9 = *(v3 + 24);

      if (v4 >= v9 >> 1)
      {
        sub_24AEF6148((v9 > 1), v4 + 1, 1);
        v3 = v106;
      }

      *(v3 + 16) = v4 + 1;
      v10 = v3 + v5;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v5 += 16;
      v6 += 3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v11 = v0[10];
  v12 = v0[3];
  v13 = sub_24AEF69F8(v3);
  v0[14] = v13;

  v14 = sub_24AF350CC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_24AF350BC();
  swift_getWitnessTable();
  v17 = sub_24AF3509C();
  v0[15] = v17;
  v0[16] = v18;
  v19 = v17;
  v20 = v18;
  v21 = v0[7];
  v22 = v0[4];

  v23 = *(v22 + *(v21 + 36));
  v24 = 0x6F707365722F7728;
  if (!*(v22 + *(v21 + 24)))
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (*(v22 + *(v21 + 24)))
  {
    v25 = 0xED0000202965736ELL;
  }

  v106 = v24;
  v107 = v25;
  if (v23)
  {
    v26 = 0xD000000000000017;
  }

  else
  {
    v26 = 0x6567617373656DLL;
  }

  if (v23)
  {
    v27 = 0x800000024AF36C70;
  }

  else
  {
    v27 = 0xE700000000000000;
  }

  MEMORY[0x24C235440](v26, v27);

  v34 = v107;
  v35 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    v36 = 0;
    if (v35 != 2)
    {
      goto LABEL_25;
    }

    v38 = *(v19 + 16);
    v37 = *(v19 + 24);
    v36 = v37 - v38;
    if (!__OFSUB__(v37, v38))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v35)
  {
    v36 = BYTE6(v20);
    goto LABEL_25;
  }

  if (__OFSUB__(HIDWORD(v19), v19))
  {
    __break(1u);
    return MEMORY[0x28215EC68](v28, v29, v30, v31, v32, v33);
  }

  v36 = HIDWORD(v19) - v19;
LABEL_25:
  if ([objc_opt_self() checkMessageSize:v36 priority:300])
  {
    v103 = v106;
    v104 = v19;
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v39 = v0[13];
    v40 = v0[10];
    v41 = v0[11];
    v42 = v0[9];
    v44 = v0[3];
    v43 = v0[4];
    v45 = sub_24AF3529C();
    __swift_project_value_buffer(v45, qword_281392F20);
    v102 = *(v41 + 16);
    v102(v39, v44, v40);
    sub_24AF226D0(v43, v42, type metadata accessor for MessagingOptions);

    v46 = sub_24AF3527C();
    v47 = sub_24AF3572C();

    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[13];
    v105 = v20;
    if (v48)
    {
      v50 = v0[11];
      log = v46;
      v51 = v0[10];
      v97 = v0[12];
      v98 = v0[9];
      v100 = v47;
      v52 = v0[6];
      v53 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v106 = v99;
      *v53 = 136316162;
      v54 = sub_24AF139CC();
      v56 = sub_24AEF599C(v54, v55, &v106);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2082;
      v57 = sub_24AEF599C(v103, v34, &v106);

      *(v53 + 14) = v57;
      *(v53 + 22) = 2082;
      v102(v97, v49, v51);
      v58 = *(v50 + 8);
      v58(v49, v51);
      v59 = Message.description.getter(v51);
      v61 = v60;
      v58(v97, v51);
      v62 = sub_24AEF599C(v59, v61, &v106);

      *(v53 + 24) = v62;
      *(v53 + 32) = 2080;
      v63 = sub_24AF3567C();
      v65 = sub_24AEF599C(v63, v64, &v106);

      *(v53 + 34) = v65;
      *(v53 + 42) = 2082;
      sub_24AF3521C();
      sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
      v66 = sub_24AF35C0C();
      v68 = v67;
      sub_24AF22BCC(v98, type metadata accessor for MessagingOptions);
      v69 = sub_24AEF599C(v66, v68, &v106);

      *(v53 + 44) = v69;
      _os_log_impl(&dword_24AECF000, log, v100, "%s: Sending %{public}s: %{public}s to %s with identifier: %{public}s", v53, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v99, -1, -1);
      MEMORY[0x24C236490](v53, -1, -1);
    }

    else
    {
      v77 = v0[9];
      (*(v0[11] + 8))(v49, v0[10]);

      sub_24AF22BCC(v77, type metadata accessor for MessagingOptions);
    }

    sub_24AF226D0(v0[4], v0[8], type metadata accessor for MessagingOptions);
    v78 = sub_24AF3527C();
    v79 = sub_24AF3572C();
    v80 = os_log_type_enabled(v78, v79);
    v81 = v0[8];
    if (v80)
    {
      v82 = v0[6];
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v106 = v84;
      *v83 = 136446466;
      v85 = sub_24AF139CC();
      v87 = sub_24AEF599C(v85, v86, &v106);

      *(v83 + 4) = v87;
      *(v83 + 12) = 2080;
      MessagingOptions.dictionaryValue.getter();
      v88 = sub_24AF3530C();
      v90 = v89;

      sub_24AF22BCC(v81, type metadata accessor for MessagingOptions);
      v91 = sub_24AEF599C(v88, v90, &v106);

      *(v83 + 14) = v91;
      _os_log_impl(&dword_24AECF000, v78, v79, "%{public}s: IDSSendMessageOptions: %s", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v84, -1, -1);
      MEMORY[0x24C236490](v83, -1, -1);
    }

    else
    {

      sub_24AF22BCC(v81, type metadata accessor for MessagingOptions);
    }

    v92 = v0[5];
    v93 = swift_task_alloc();
    v0[17] = v93;
    v94 = *(v0 + 3);
    *(v93 + 16) = v92;
    *(v93 + 24) = v94;
    *(v93 + 40) = v104;
    *(v93 + 48) = v105;
    *(v93 + 56) = v13;
    v95 = *(MEMORY[0x277D089C0] + 4);
    v96 = swift_task_alloc();
    v0[18] = v96;
    v33 = sub_24AF3521C();
    *v96 = v0;
    v96[1] = sub_24AEE8530;
    v28 = v0[2];
    v31 = sub_24AF21204;
    v29 = 0xD00000000000001DLL;
    v30 = 0x800000024AF36C50;
    v32 = v93;

    return MEMORY[0x28215EC68](v28, v29, v30, v31, v32, v33);
  }

  sub_24AED9680();
  swift_allocError();
  *v70 = 2;
  swift_willThrow();
  sub_24AED6198(v19, v20);
  v72 = v0[12];
  v71 = v0[13];
  v74 = v0[8];
  v73 = v0[9];

  v75 = v0[1];

  return v75();
}

uint64_t sub_24AF160C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v41 = a6;
  v42 = a7;
  v39 = a1;
  v40 = a5;
  v10 = *a2;
  v11 = type metadata accessor for MessagingOptions();
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v10 + 80);
  v37 = *(v10 + 88);
  v13 = type metadata accessor for Message();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v33 - v20;
  v35 = &v33 - v20;
  v22 = sub_24AF3557C();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v14 + 16))(v17, a3, v13);
  sub_24AF226D0(a4, &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v23 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v24 = (v15 + *(v36 + 80) + v23) & ~*(v36 + 80);
  v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v37;
  *(v27 + 4) = v38;
  *(v27 + 5) = v28;
  *(v27 + 6) = a2;
  (*(v14 + 32))(&v27[v23], v17, v13);
  sub_24AEF9044(v34, &v27[v24], type metadata accessor for MessagingOptions);
  v29 = &v27[v25];
  v31 = v40;
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  *&v27[v26] = v42;
  *&v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8] = v39;

  sub_24AEE5154(v31, v30);

  sub_24AF08F10(0, 0, v35, &unk_24AF3A140, v27);
}

uint64_t sub_24AF16418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_24AEF9DD0;

  return sub_24AF164F4(a5, a6, a7, a8, v16, v17);
}

uint64_t sub_24AF164F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  v7[16] = *v6;
  v8 = *v6;
  v9 = sub_24AF3521C();
  v7[17] = v9;
  v10 = *(v9 - 8);
  v7[18] = v10;
  v11 = *(v10 + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = *(v8 + 80);
  v7[21] = *(v8 + 88);
  v12 = type metadata accessor for Message();
  v7[22] = v12;
  v13 = *(v12 - 8);
  v7[23] = v13;
  v7[24] = *(v13 + 64);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v14 = type metadata accessor for MessagingOptions();
  v7[27] = v14;
  v15 = *(v14 - 8);
  v7[28] = v15;
  v7[29] = *(v15 + 64);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF166FC, v6, 0);
}

uint64_t sub_24AF166FC()
{
  v1 = *(v0 + 248);
  v20 = *(v0 + 224);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 184);
  v21 = *(v0 + 192);
  v22 = *(v0 + 232);
  v5 = *(v0 + 176);
  v6 = *(v0 + 120);
  v29 = *(v0 + 128);
  v7 = *(v0 + 112);
  v25 = *(v0 + 96);
  v26 = *(v0 + 104);
  v24 = *(v0 + 88);
  v8 = *(v0 + 80);
  v19 = *(v0 + 72);
  v23 = *(v0 + 160);
  swift_beginAccess();

  v9 = *(v6 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v6 + 144);
  *(v6 + 144) = 0x8000000000000000;
  sub_24AF031AC(v7, v8, isUniquelyReferenced_nonNull_native);
  *(v6 + 144) = v30;
  swift_endAccess();
  v11 = (v8 + *(v2 + 52));
  v28 = *v11;
  v27 = v11[1];
  sub_24AF226D0(v8, v1, type metadata accessor for MessagingOptions);
  v12 = *(v4 + 16);
  *(v0 + 256) = v12;
  *(v0 + 264) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v3, v19, v5);
  v13 = (*(v20 + 80) + 64) & ~*(v20 + 80);
  v14 = (v22 + *(v4 + 80) + v13) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v0 + 272) = v15;
  *(v15 + 16) = v23;
  *(v15 + 32) = v6;
  *(v15 + 40) = v24;
  *(v15 + 48) = v25;
  *(v15 + 56) = v26;
  sub_24AEF9044(v1, v15 + v13, type metadata accessor for MessagingOptions);
  (*(v4 + 32))(v15 + v14, v3, v5);
  *(v15 + ((v21 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;

  sub_24AEE5154(v24, v25);
  v16 = *(MEMORY[0x277D08920] + 4);

  v17 = swift_task_alloc();
  *(v0 + 280) = v17;
  *v17 = v0;
  v17[1] = sub_24AF169A8;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AF169A8()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v9 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = sub_24AF16AD0;
  }

  else
  {
    v6 = *(v2 + 272);
    v7 = *(v2 + 120);

    v5 = sub_24AEE91AC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AF16AD0()
{
  v58 = v0;
  v1 = v0[34];

  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v6 = v0[25];
  v7 = v0[22];
  v9 = v0[9];
  v8 = v0[10];
  v10 = sub_24AF3529C();
  __swift_project_value_buffer(v10, qword_281392F20);
  v4(v6, v9, v7);
  sub_24AF226D0(v8, v5, type metadata accessor for MessagingOptions);
  v11 = v2;
  v12 = sub_24AF3527C();
  v13 = sub_24AF3572C();

  if (os_log_type_enabled(v12, v13))
  {
    v54 = v0[36];
    v14 = v0[33];
    v52 = v0[30];
    v15 = v0[25];
    v16 = v0[26];
    v18 = v0[22];
    v17 = v0[23];
    v50 = v0[32];
    v51 = v0[17];
    v55 = v13;
    v19 = v0[16];
    v20 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = v56;
    *v20 = 136446978;
    v21 = sub_24AF139CC();
    v23 = sub_24AEF599C(v21, v22, &v57);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    v50(v16, v15, v18);
    v24 = *(v17 + 8);
    v24(v15, v18);
    v25 = Message.description.getter(v18);
    v27 = v26;
    v24(v16, v18);
    v28 = sub_24AEF599C(v25, v27, &v57);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v29 = sub_24AF35C0C();
    v31 = v30;
    sub_24AF22BCC(v52, type metadata accessor for MessagingOptions);
    v32 = sub_24AEF599C(v29, v31, &v57);

    *(v20 + 24) = v32;
    *(v20 + 32) = 2114;
    v33 = v54;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 34) = v34;
    *v53 = v34;
    _os_log_impl(&dword_24AECF000, v12, v55, "%{public}s: Failed to send message (resource) %{public}s. with identifier: %{public}s. Error: %{public}@.", v20, 0x2Au);
    sub_24AEE2E10(v53, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v53, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v56, -1, -1);
    MEMORY[0x24C236490](v20, -1, -1);
  }

  else
  {
    v35 = v0[30];
    (*(v0[23] + 8))(v0[25], v0[22]);

    sub_24AF22BCC(v35, type metadata accessor for MessagingOptions);
  }

  v36 = v0[36];
  v38 = v0[18];
  v37 = v0[19];
  v39 = v0[17];
  v40 = v0[14];
  v41 = v0[15];
  v42 = v0[10];
  v0[8] = v36;
  sub_24AF34FFC();
  (*(v38 + 16))(v37, v42, v39);
  swift_beginAccess();
  sub_24AF09284(0, v37);
  swift_endAccess();

  v44 = v0[30];
  v43 = v0[31];
  v46 = v0[25];
  v45 = v0[26];
  v47 = v0[19];

  v48 = v0[1];

  return v48();
}

uint64_t LocalMessaging.send(message:metadata:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  v6 = *v4;
  v7 = type metadata accessor for MessagingOptions();
  v5[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v9 = *(v6 + 80);
  v10 = *(v6 + 88);
  v11 = type metadata accessor for Message();
  v5[11] = v11;
  v12 = *(v11 - 8);
  v5[12] = v12;
  v13 = *(v12 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF170AC, v4, 0);
}

uint64_t sub_24AF170AC()
{
  v85 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v2 + v1[5]);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v83 = MEMORY[0x277D84F90];
    sub_24AEF6148(0, v4, 0);
    v5 = v83;
    v6 = *(v83 + 16);
    v7 = 16 * v6;
    v8 = (v3 + 48);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v83 = v5;
      v11 = *(v5 + 24);

      if (v6 >= v11 >> 1)
      {
        sub_24AEF6148((v11 > 1), v6 + 1, 1);
        v5 = v83;
      }

      *(v5 + 16) = v6 + 1;
      v12 = v5 + v7;
      *(v12 + 32) = v10;
      *(v12 + 40) = v9;
      v7 += 16;
      v8 += 3;
      ++v6;
      --v4;
    }

    while (v4);
    v1 = v0[8];
    v2 = v0[5];
  }

  v13 = sub_24AEF69F8(v5);
  v0[15] = v13;

  v14 = *(v2 + v1[9]);
  v15 = 0x6F707365722F7728;
  if (!*(v2 + v1[6]))
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (*(v2 + v1[6]))
  {
    v16 = 0xED0000202965736ELL;
  }

  v83 = v15;
  v84 = v16;
  if (v14)
  {
    v17 = 0xD000000000000017;
  }

  else
  {
    v17 = 0x6567617373656DLL;
  }

  if (v14)
  {
    v18 = 0x800000024AF36C70;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  MEMORY[0x24C235440](v17, v18);

  v19 = v84;
  v81 = v83;
  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[12];
  v23 = v0[10];
  v24 = v0[5];
  v25 = v0[3];
  v26 = sub_24AF3529C();
  __swift_project_value_buffer(v26, qword_281392F20);
  v80 = *(v22 + 16);
  v80(v20, v25, v21);
  sub_24AF226D0(v24, v23, type metadata accessor for MessagingOptions);

  v27 = sub_24AF3527C();
  v28 = sub_24AF3572C();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[14];
  v82 = v13;
  if (v29)
  {
    v32 = v0[12];
    v31 = v0[13];
    log = v27;
    v33 = v0[11];
    v76 = v0[10];
    v78 = v28;
    v34 = v0[7];
    v35 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v83 = v77;
    *v35 = 136316162;
    v36 = sub_24AF139CC();
    v38 = sub_24AEF599C(v36, v37, &v83);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2082;
    v39 = sub_24AEF599C(v81, v19, &v83);

    *(v35 + 14) = v39;
    *(v35 + 22) = 2082;
    v80(v31, v30, v33);
    v40 = *(v32 + 8);
    v40(v30, v33);
    v41 = Message.description.getter(v33);
    v43 = v42;
    v40(v31, v33);
    v44 = sub_24AEF599C(v41, v43, &v83);

    *(v35 + 24) = v44;
    *(v35 + 32) = 2080;
    v45 = sub_24AF3567C();
    v47 = sub_24AEF599C(v45, v46, &v83);

    *(v35 + 34) = v47;
    *(v35 + 42) = 2082;
    sub_24AF3521C();
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v48 = sub_24AF35C0C();
    v50 = v49;
    sub_24AF22BCC(v76, type metadata accessor for MessagingOptions);
    v51 = sub_24AEF599C(v48, v50, &v83);

    *(v35 + 44) = v51;
    _os_log_impl(&dword_24AECF000, log, v78, "%s: Sending (resource) %{public}s: %{public}s to %s with identifier: %{public}s", v35, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v77, -1, -1);
    MEMORY[0x24C236490](v35, -1, -1);
  }

  else
  {
    v52 = v0[10];
    (*(v0[12] + 8))(v30, v0[11]);

    sub_24AF22BCC(v52, type metadata accessor for MessagingOptions);
  }

  sub_24AF226D0(v0[5], v0[9], type metadata accessor for MessagingOptions);
  v53 = sub_24AF3527C();
  v54 = sub_24AF3572C();
  v55 = os_log_type_enabled(v53, v54);
  v56 = v0[9];
  if (v55)
  {
    v57 = v0[7];
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v83 = v59;
    *v58 = 136446466;
    v60 = sub_24AF139CC();
    v62 = sub_24AEF599C(v60, v61, &v83);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    MessagingOptions.dictionaryValue.getter();
    v63 = sub_24AF3530C();
    v65 = v64;

    sub_24AF22BCC(v56, type metadata accessor for MessagingOptions);
    v66 = sub_24AEF599C(v63, v65, &v83);

    *(v58 + 14) = v66;
    _os_log_impl(&dword_24AECF000, v53, v54, "%{public}s: IDSSendMessageOptions: %s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v59, -1, -1);
    MEMORY[0x24C236490](v58, -1, -1);
  }

  else
  {

    sub_24AF22BCC(v56, type metadata accessor for MessagingOptions);
  }

  v68 = v0[5];
  v67 = v0[6];
  v69 = swift_task_alloc();
  v0[16] = v69;
  v70 = *(v0 + 3);
  *(v69 + 16) = v67;
  *(v69 + 24) = v70;
  *(v69 + 40) = v68;
  *(v69 + 48) = v82;
  v71 = *(MEMORY[0x277D089C0] + 4);
  v72 = swift_task_alloc();
  v0[17] = v72;
  v73 = sub_24AF3521C();
  *v72 = v0;
  v72[1] = sub_24AEE9FC8;
  v74 = v0[2];

  return MEMORY[0x28215EC68](v74, 0xD000000000000026, 0x800000024AF36C90, sub_24AF21214, v69, v73);
}

uint64_t sub_24AF1785C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a1;
  v37 = a6;
  v35 = a4;
  v32 = a3;
  v8 = *a2;
  v9 = type metadata accessor for MessagingOptions();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v30 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v8 + 80);
  v33 = *(v8 + 88);
  v12 = type metadata accessor for Message();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v30 - v19;
  v31 = &v30 - v19;
  v21 = sub_24AF3557C();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v13 + 16))(v16, v32, v12);
  sub_24AF226D0(a5, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v22 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v10 + 80) + v23 + 8) & ~*(v10 + 80);
  v25 = (v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = v33;
  *(v26 + 4) = v34;
  *(v26 + 5) = v27;
  *(v26 + 6) = a2;
  (*(v13 + 32))(&v26[v22], v16, v12);
  *&v26[v23] = v35;
  sub_24AEF9044(v30, &v26[v24], type metadata accessor for MessagingOptions);
  v28 = v36;
  *&v26[v25] = v37;
  *&v26[(v25 + 15) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_24AF08F10(0, 0, v31, &unk_24AF3A118, v26);
}

uint64_t sub_24AF17BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_24AEF9DD0;

  return sub_24AF17C78(a5, a6, a7, a8, v16);
}

uint64_t sub_24AF17C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v6[15] = *v5;
  v7 = *v5;
  v6[16] = *(*v5 + 80);
  v6[17] = *(v7 + 88);
  v8 = type metadata accessor for Message();
  v6[18] = v8;
  v9 = *(v8 - 8);
  v6[19] = v9;
  v6[20] = *(v9 + 64);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v10 = type metadata accessor for MessagingOptions();
  v6[23] = v10;
  v11 = *(v10 - 8);
  v6[24] = v11;
  v6[25] = *(v11 + 64);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v12 = sub_24AF3521C();
  v6[28] = v12;
  v13 = *(v12 - 8);
  v6[29] = v13;
  v14 = *(v13 + 64) + 15;
  v6[30] = swift_task_alloc();
  v15 = sub_24AF3513C();
  v6[31] = v15;
  v16 = *(v15 - 8);
  v6[32] = v16;
  v6[33] = *(v16 + 64);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF17EEC, v5, 0);
}

uint64_t sub_24AF17EEC()
{
  v55 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  v3 = sub_24AF350CC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_24AF350BC();
  swift_getWitnessTable();
  *(v0 + 288) = sub_24AF3509C();
  *(v0 + 296) = v6;
  v7 = *(v0 + 272);
  v8 = *(v0 + 256);
  v49 = *(v0 + 280);
  v51 = *(v0 + 248);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v46 = *(v0 + 224);

  v11 = NSTemporaryDirectory();
  sub_24AF353AC();

  sub_24AF350FC();

  sub_24AF3520C();
  sub_24AF351EC();
  (*(v9 + 8))(v10, v46);
  sub_24AF3511C();

  v12 = *(v8 + 8);
  *(v0 + 304) = v12;
  *(v0 + 312) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v7, v51);
  sub_24AF3518C();
  v13 = *(v0 + 272);
  v14 = *(v0 + 256);
  v39 = *(v0 + 264);
  v15 = *(v0 + 248);
  v33 = v13;
  v16 = *(v0 + 216);
  v34 = v16;
  v41 = *(v0 + 200);
  v37 = *(v0 + 280);
  v38 = *(v0 + 192);
  v47 = *(v0 + 184);
  v53 = *(v0 + 176);
  v40 = *(v0 + 160);
  v52 = *(v0 + 152);
  v17 = *(v0 + 144);
  v35 = v17;
  v18 = *(v0 + 112);
  v50 = *(v0 + 120);
  v19 = *(v0 + 104);
  v20 = *(v0 + 88);
  v43 = *(v0 + 80);
  v44 = *(v0 + 96);
  v36 = *(v0 + 72);
  v42 = *(v0 + 128);
  swift_beginAccess();

  v21 = *(v18 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *(v18 + 144);
  *(v18 + 144) = 0x8000000000000000;
  sub_24AF031AC(v19, v20, isUniquelyReferenced_nonNull_native);
  *(v18 + 144) = v54;
  swift_endAccess();
  v23 = (v20 + *(v47 + 52));
  v45 = v23[1];
  v48 = *v23;
  (*(v14 + 16))(v13, v37, v15);
  sub_24AF226D0(v20, v16, type metadata accessor for MessagingOptions);
  (*(v52 + 16))(v53, v36, v17);
  v24 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v25 = (v39 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v38 + 80) + v26 + 8) & ~*(v38 + 80);
  v28 = (v41 + *(v52 + 80) + v27) & ~*(v52 + 80);
  v29 = swift_allocObject();
  *(v0 + 320) = v29;
  *(v29 + 16) = v42;
  *(v29 + 32) = v18;
  (*(v14 + 32))(v29 + v24, v33, v15);
  *(v29 + v25) = v43;
  *(v29 + v26) = v44;
  sub_24AEF9044(v34, v29 + v27, type metadata accessor for MessagingOptions);
  (*(v52 + 32))(v29 + v28, v53, v35);
  *(v29 + ((v40 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v50;
  v30 = *(MEMORY[0x277D08920] + 4);

  v31 = swift_task_alloc();
  *(v0 + 328) = v31;
  *v31 = v0;
  v31[1] = sub_24AF187E4;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AF187E4()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 320);
  v6 = *(v2 + 112);

  if (v0)
  {
    v7 = sub_24AF189F8;
  }

  else
  {
    v7 = sub_24AF1892C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AF1892C()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[35];
  v4 = v0[31];
  sub_24AED6198(v0[36], v0[37]);
  v2(v3, v4);
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[30];
  v9 = v0[26];
  v8 = v0[27];
  v11 = v0[21];
  v10 = v0[22];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24AF189F8()
{
  v62 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[35];
  v4 = v0[31];
  sub_24AED6198(v0[36], v0[37]);
  v2(v3, v4);
  v5 = v0[42];
  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v6 = v0[26];
  v7 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[11];
  v11 = v0[9];
  v12 = sub_24AF3529C();
  __swift_project_value_buffer(v12, qword_281392F20);
  v13 = *(v8 + 16);
  v13(v7, v11, v9);
  sub_24AF226D0(v10, v6, type metadata accessor for MessagingOptions);
  v14 = v5;
  v15 = sub_24AF3527C();
  v16 = sub_24AF3572C();

  if (os_log_type_enabled(v15, v16))
  {
    v55 = v0[26];
    v56 = v0[28];
    v54 = v13;
    v17 = v0[21];
    v18 = v0[22];
    v60 = v5;
    v20 = v0[18];
    v19 = v0[19];
    v58 = v16;
    v21 = v0[15];
    v22 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61 = v59;
    *v22 = 136446978;
    v23 = sub_24AF139CC();
    v25 = sub_24AEF599C(v23, v24, &v61);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    v54(v18, v17, v20);
    v26 = *(v19 + 8);
    v26(v17, v20);
    v27 = Message.description.getter(v20);
    v29 = v28;
    v30 = v20;
    v5 = v60;
    v26(v18, v30);
    v31 = sub_24AEF599C(v27, v29, &v61);

    *(v22 + 14) = v31;
    *(v22 + 22) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v32 = sub_24AF35C0C();
    v34 = v33;
    sub_24AF22BCC(v55, type metadata accessor for MessagingOptions);
    v35 = sub_24AEF599C(v32, v34, &v61);

    *(v22 + 24) = v35;
    *(v22 + 32) = 2114;
    v36 = v60;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 34) = v37;
    *v57 = v37;
    _os_log_impl(&dword_24AECF000, v15, v58, "%{public}s: Failed to send message (resource) %{public}s. with identifier: %{public}s. Error: %{public}@.", v22, 0x2Au);
    sub_24AEE2E10(v57, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v57, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v59, -1, -1);
    MEMORY[0x24C236490](v22, -1, -1);
  }

  else
  {
    v38 = v0[26];
    (*(v0[19] + 8))(v0[21], v0[18]);

    sub_24AF22BCC(v38, type metadata accessor for MessagingOptions);
  }

  v39 = v0[29];
  v40 = v0[30];
  v41 = v0[28];
  v42 = v0[13];
  v43 = v0[14];
  v44 = v0[11];
  v0[8] = v5;
  sub_24AF34FFC();
  (*(v39 + 16))(v40, v44, v41);
  swift_beginAccess();
  sub_24AF09284(0, v40);
  swift_endAccess();

  v46 = v0[34];
  v45 = v0[35];
  v47 = v0[30];
  v49 = v0[26];
  v48 = v0[27];
  v51 = v0[21];
  v50 = v0[22];

  v52 = v0[1];

  return v52();
}

uint64_t LocalMessaging.sendWithResponse(message:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v5[7] = type metadata accessor for Message();
  type metadata accessor for MessageContext();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5[8] = TupleTypeMetadata2;
  v9 = *(*(TupleTypeMetadata2 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = type metadata accessor for MessagingOptions();
  v5[10] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF18FC8, v4, 0);
}

uint64_t sub_24AF18FC8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  sub_24AF226D0(v0[5], v2, type metadata accessor for MessagingOptions);
  *(v2 + *(v3 + 24)) = 1;
  sub_24AF226D0(v2, v1, type metadata accessor for MessagingOptions);
  v4 = *(v1 + *(v3 + 20));
  if (*(v4 + 16) == 1 && *(v4 + 32) - 2 <= 2)
  {
    v5 = v0[11];
    v6 = v0[6];
    v7 = v0[4];
    v8 = swift_task_alloc();
    v0[13] = v8;
    v8[2] = v6;
    v8[3] = v7;
    v8[4] = v5;
    v9 = *(MEMORY[0x277D089C0] + 4);
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_24AF191E0;
    v12 = v0[8];
    v11 = v0[9];

    return MEMORY[0x28215EC68](v11, 0xD000000000000029, 0x800000024AF36CC0, sub_24AF21224, v8, v12);
  }

  else
  {
    sub_24AED9680();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    v14 = v0[11];
    v15 = v0[9];
    sub_24AF22BCC(v0[12], type metadata accessor for MessagingOptions);
    sub_24AF22BCC(v14, type metadata accessor for MessagingOptions);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_24AF191E0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 120) = v0;

  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_24AF19448;
  }

  else
  {
    v7 = sub_24AF19328;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AF19328()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v6 = v0[2];
  v5 = v0[3];
  sub_24AF22BCC(v0[12], type metadata accessor for MessagingOptions);
  v7 = *(v3 + 48);
  (*(*(v4 - 8) + 32))(v6, v2, v4);
  sub_24AEF9044(v2 + v7, v5, type metadata accessor for MessageContext);
  sub_24AF22BCC(v1, type metadata accessor for MessagingOptions);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AF19448()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[9];
  sub_24AF22BCC(v0[12], type metadata accessor for MessagingOptions);
  sub_24AF22BCC(v2, type metadata accessor for MessagingOptions);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AF19500(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v28 = a1;
  v6 = *a2;
  v7 = type metadata accessor for MessagingOptions();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v27 = *(v6 + 80);
  v26 = *(v6 + 88);
  v10 = type metadata accessor for Message();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - v17;
  v19 = sub_24AF3557C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v11 + 16))(v14, v25, v10);
  sub_24AF226D0(a4, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v20 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v21 = (v12 + *(v8 + 80) + v20) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v26;
  *(v22 + 4) = v27;
  *(v22 + 5) = v23;
  *(v22 + 6) = a2;
  (*(v11 + 32))(&v22[v20], v14, v10);
  sub_24AEF9044(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), &v22[v21], type metadata accessor for MessagingOptions);
  *&v22[(v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_24AF08F10(0, 0, v18, &unk_24AF3A0F0, v22);
}

uint64_t sub_24AF19810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_24AEE555C;

  return sub_24AF198C4(a5, a6, a7);
}

uint64_t sub_24AF198C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[15] = *v3;
  v5 = *v3;
  v6 = type metadata accessor for MessagingOptions();
  v4[16] = v6;
  v7 = *(v6 - 8);
  v4[17] = v7;
  v4[18] = *(v7 + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = *(v5 + 80);
  v4[22] = *(v5 + 88);
  v8 = type metadata accessor for Message();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v4[25] = *(v9 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v10 = sub_24AF3521C();
  v4[28] = v10;
  v11 = *(v10 - 8);
  v4[29] = v11;
  v12 = *(v11 + 64) + 15;
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF19ACC, v3, 0);
}

uint64_t sub_24AF19ACC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 192);
  v5 = *(v0 + 184);
  v22 = *(v0 + 216);
  v23 = *(v0 + 160);
  v26 = *(v0 + 144);
  v27 = *(v0 + 200);
  v24 = *(v0 + 136);
  v19 = *(v0 + 128);
  v28 = *(v0 + 120);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v1 + 16);
  v9 = *(v0 + 96);
  v21 = *(v0 + 88);
  *(v0 + 248) = v8;
  *(v0 + 256) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25 = *(v0 + 168);
  v8(v2, v9, v3);
  *(v0 + 64) = v7;
  swift_beginAccess();
  type metadata accessor for MessageContext();

  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
  sub_24AF3501C();
  sub_24AF22C2C(&qword_281393400, MEMORY[0x277CC95F0]);
  *(v0 + 264) = sub_24AF3532C();
  sub_24AF3534C();
  swift_endAccess();
  v10 = (v9 + *(v19 + 52));
  v18 = v10[1];
  v20 = *v10;
  v11 = *(v4 + 16);
  *(v0 + 272) = v11;
  *(v0 + 280) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v22, v21, v5);
  sub_24AF226D0(v9, v23, type metadata accessor for MessagingOptions);
  v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v13 = (v27 + *(v24 + 80) + v12) & ~*(v24 + 80);
  v14 = swift_allocObject();
  *(v0 + 288) = v14;
  *(v14 + 16) = v25;
  *(v14 + 32) = v6;
  (*(v4 + 32))(v14 + v12, v22, v5);
  sub_24AEF9044(v23, v14 + v13, type metadata accessor for MessagingOptions);
  *(v14 + ((v26 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v15 = *(MEMORY[0x277D08920] + 4);

  v16 = swift_task_alloc();
  *(v0 + 296) = v16;
  *v16 = v0;
  v16[1] = sub_24AF19E08;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AF19E08()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v9 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = sub_24AF19F30;
  }

  else
  {
    v6 = *(v2 + 288);
    v7 = *(v2 + 112);

    v5 = sub_24AEECB70;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AF19F30()
{
  v60 = v0;
  v1 = v0[36];

  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[19];
  v9 = v0[11];
  v8 = v0[12];
  v10 = sub_24AF3529C();
  __swift_project_value_buffer(v10, qword_281392F20);
  v4(v5, v9, v6);
  sub_24AF226D0(v8, v7, type metadata accessor for MessagingOptions);
  v11 = v2;
  v12 = sub_24AF3527C();
  v13 = sub_24AF3572C();

  if (os_log_type_enabled(v12, v13))
  {
    v56 = v0[38];
    v14 = v0[35];
    v15 = v0[27];
    v54 = v0[28];
    v16 = v0[26];
    v18 = v0[23];
    v17 = v0[24];
    v52 = v0[34];
    v53 = v0[19];
    v57 = v13;
    v19 = v0[15];
    v20 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = v58;
    *v20 = 136446978;
    v21 = sub_24AF139CC();
    v23 = sub_24AEF599C(v21, v22, &v59);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    v52(v15, v16, v18);
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = Message.description.getter(v18);
    v27 = v26;
    v24(v15, v18);
    v28 = sub_24AEF599C(v25, v27, &v59);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v29 = sub_24AF35C0C();
    v31 = v30;
    sub_24AF22BCC(v53, type metadata accessor for MessagingOptions);
    v32 = sub_24AEF599C(v29, v31, &v59);

    *(v20 + 24) = v32;
    *(v20 + 32) = 2114;
    v33 = v56;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 34) = v34;
    *v55 = v34;
    _os_log_impl(&dword_24AECF000, v12, v57, "%{public}s: Failed to send message (with response) %{public}s. with identifier: %{public}s. Error: %{public}@.", v20, 0x2Au);
    sub_24AEE2E10(v55, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v55, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v58, -1, -1);
    MEMORY[0x24C236490](v20, -1, -1);
  }

  else
  {
    v35 = v0[19];
    (*(v0[24] + 8))(v0[26], v0[23]);

    sub_24AF22BCC(v35, type metadata accessor for MessagingOptions);
  }

  v36 = v0[38];
  v38 = v0[32];
  v37 = v0[33];
  v39 = v0[30];
  v40 = v0[31];
  v41 = v0[28];
  v42 = v0[13];
  v43 = v0[14];
  v44 = v0[12];
  v0[9] = v36;
  sub_24AF34FFC();
  v40(v39, v44, v41);
  v0[10] = 0;
  swift_beginAccess();
  sub_24AF3534C();
  swift_endAccess();

  v45 = v0[30];
  v46 = v0[26];
  v47 = v0[27];
  v49 = v0[19];
  v48 = v0[20];

  v50 = v0[1];

  return v50();
}

uint64_t LocalMessaging.send(dictionary:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = type metadata accessor for MessagingOptions();
  v4[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF1A470, v3, 0);
}

uint64_t sub_24AF1A470()
{
  v55 = v0;
  v1 = *(*(v0 + 32) + *(*(v0 + 56) + 20));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v54 = MEMORY[0x277D84F90];
    sub_24AEF6148(0, v2, 0);
    v3 = v54;
    v4 = *(v54 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 48);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v54 = v3;
      v9 = *(v3 + 24);

      if (v4 >= v9 >> 1)
      {
        sub_24AEF6148((v9 > 1), v4 + 1, 1);
        v3 = v54;
      }

      *(v3 + 16) = v4 + 1;
      v10 = v3 + v5;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v5 += 16;
      v6 += 3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v11 = sub_24AEF69F8(v3);
  *(v0 + 80) = v11;

  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 32);
  v14 = sub_24AF3529C();
  __swift_project_value_buffer(v14, qword_281392F20);
  sub_24AF226D0(v13, v12, type metadata accessor for MessagingOptions);

  v15 = sub_24AF3527C();
  v16 = sub_24AF3572C();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 72);
  if (v17)
  {
    v19 = *(v0 + 48);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = v21;
    *v20 = 136315650;
    v22 = sub_24AF139CC();
    v24 = sub_24AEF599C(v22, v23, &v54);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = sub_24AF3567C();
    v27 = sub_24AEF599C(v25, v26, &v54);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    sub_24AF3521C();
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v28 = sub_24AF35C0C();
    v30 = v29;
    sub_24AF22BCC(v18, type metadata accessor for MessagingOptions);
    v31 = sub_24AEF599C(v28, v30, &v54);

    *(v20 + 24) = v31;
    _os_log_impl(&dword_24AECF000, v15, v16, "%s: Sending raw dictionary to %s with identifier: %{public}s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v21, -1, -1);
    MEMORY[0x24C236490](v20, -1, -1);
  }

  else
  {

    sub_24AF22BCC(v18, type metadata accessor for MessagingOptions);
  }

  sub_24AF226D0(*(v0 + 32), *(v0 + 64), type metadata accessor for MessagingOptions);
  v32 = sub_24AF3527C();
  v33 = sub_24AF3572C();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 64);
  if (v34)
  {
    v36 = *(v0 + 48);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v38;
    *v37 = 136446466;
    v39 = sub_24AF139CC();
    v41 = sub_24AEF599C(v39, v40, &v54);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    MessagingOptions.dictionaryValue.getter();
    v42 = sub_24AF3530C();
    v44 = v43;

    sub_24AF22BCC(v35, type metadata accessor for MessagingOptions);
    v45 = sub_24AEF599C(v42, v44, &v54);

    *(v37 + 14) = v45;
    _os_log_impl(&dword_24AECF000, v32, v33, "%{public}s: IDSSendMessageOptions: %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v38, -1, -1);
    MEMORY[0x24C236490](v37, -1, -1);
  }

  else
  {

    sub_24AF22BCC(v35, type metadata accessor for MessagingOptions);
  }

  v46 = *(v0 + 40);
  v47 = swift_task_alloc();
  *(v0 + 88) = v47;
  v48 = *(v0 + 24);
  *(v47 + 16) = v46;
  *(v47 + 24) = v11;
  *(v47 + 32) = v48;
  v49 = *(MEMORY[0x277D089C0] + 4);
  v50 = swift_task_alloc();
  *(v0 + 96) = v50;
  v51 = sub_24AF3521C();
  *v50 = v0;
  v50[1] = sub_24AEED710;
  v52 = *(v0 + 16);

  return MEMORY[0x28215EC68](v52, 0xD000000000000020, 0x800000024AF36CF0, sub_24AF21230, v47, v51);
}

uint64_t sub_24AF1AA40(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = type metadata accessor for MessagingOptions();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v22 - v16;
  v18 = sub_24AF3557C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_24AF226D0(a5, &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v19 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = *(v10 + 80);
  v20[5] = *(v10 + 88);
  v20[6] = a2;
  v20[7] = a3;
  v20[8] = a4;
  sub_24AEF9044(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for MessagingOptions);
  *(v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  sub_24AF08F10(0, 0, v17, &unk_24AF3A0C0, v20);
}

uint64_t sub_24AF1AC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_24AEF9DD0;

  return sub_24AF1AD50(a5, a6, a7, a8);
}

uint64_t sub_24AF1AD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v5[14] = *v4;
  v5[15] = *v4;
  v6 = sub_24AF3521C();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = type metadata accessor for MessagingOptions();
  v5[19] = v9;
  v10 = *(v9 - 8);
  v5[20] = v10;
  v5[21] = *(v10 + 64);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF1AED8, v4, 0);
}

uint64_t sub_24AF1AED8()
{
  v1 = v0[23];
  v18 = v0[20];
  v19 = v0[21];
  v2 = v0[19];
  v3 = v0[15];
  v21 = v0[14];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[9];
  swift_beginAccess();

  v9 = *(v4 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v4 + 144);
  *(v4 + 144) = 0x8000000000000000;
  sub_24AF031AC(v5, v7, isUniquelyReferenced_nonNull_native);
  *(v4 + 144) = v22;
  swift_endAccess();
  v11 = (v7 + *(v2 + 52));
  v12 = v11[1];
  v20 = *v11;
  sub_24AF226D0(v7, v1, type metadata accessor for MessagingOptions);
  v13 = (*(v18 + 80) + 56) & ~*(v18 + 80);
  v14 = swift_allocObject();
  v0[24] = v14;
  v14[2] = *(v3 + 80);
  v14[3] = *(v3 + 88);
  v14[4] = v4;
  v14[5] = v6;
  v14[6] = v8;
  sub_24AEF9044(v1, v14 + v13, type metadata accessor for MessagingOptions);
  *(v14 + ((v19 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v15 = *(MEMORY[0x277D08920] + 4);

  v16 = swift_task_alloc();
  v0[25] = v16;
  *v16 = v0;
  v16[1] = sub_24AF1B0F4;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AF1B0F4()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = sub_24AF1B21C;
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 104);

    v5 = sub_24AEEE0DC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AF1B21C()
{
  v39 = v0;
  v1 = v0[24];

  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[11];
  v5 = sub_24AF3529C();
  __swift_project_value_buffer(v5, qword_281392F20);
  sub_24AF226D0(v4, v3, type metadata accessor for MessagingOptions);
  v6 = v2;
  v7 = sub_24AF3527C();
  v8 = sub_24AF3572C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[26];
    v10 = v0[22];
    v37 = v0[16];
    v11 = v0[14];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v12 = 136446722;
    v15 = sub_24AF139CC();
    v17 = sub_24AEF599C(v15, v16, &v38);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v18 = sub_24AF35C0C();
    v20 = v19;
    sub_24AF22BCC(v10, type metadata accessor for MessagingOptions);
    v21 = sub_24AEF599C(v18, v20, &v38);

    *(v12 + 14) = v21;
    *(v12 + 22) = 2114;
    v22 = v9;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v23;
    *v13 = v23;
    _os_log_impl(&dword_24AECF000, v7, v8, "%{public}s: Failed to send raw dictionary with identifier: %{public}s. Error: %{public}@.", v12, 0x20u);
    sub_24AEE2E10(v13, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v14, -1, -1);
    MEMORY[0x24C236490](v12, -1, -1);
  }

  else
  {
    v24 = v0[22];

    sub_24AF22BCC(v24, type metadata accessor for MessagingOptions);
  }

  v25 = v0[26];
  v27 = v0[17];
  v26 = v0[18];
  v28 = v0[16];
  v29 = v0[12];
  v30 = v0[13];
  v31 = v0[11];
  v0[8] = v25;
  sub_24AF34FFC();
  (*(v27 + 16))(v26, v31, v28);
  swift_beginAccess();
  sub_24AF09284(0, v26);
  swift_endAccess();

  v33 = v0[22];
  v32 = v0[23];
  v34 = v0[18];

  v35 = v0[1];

  return v35();
}

uint64_t sub_24AF1B5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x277D85DE8];
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[4] = a2;
  v9 = *(*a2 + 80);
  v10 = *(*a2 + 88);
  v11 = type metadata accessor for Message();
  v8[11] = v11;
  v12 = *(v11 - 8);
  v8[12] = v12;
  v13 = *(v12 + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0) - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v15 = sub_24AF3521C();
  v8[16] = v15;
  v16 = *(v15 - 8);
  v8[17] = v16;
  v17 = *(v16 + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v18 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24AF1B778, 0, 0);
}

uint64_t sub_24AF1B778()
{
  v81 = v0;
  v80[1] = *MEMORY[0x277D85DE8];
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0[4] + 128);
  v6 = sub_24AF3516C();
  sub_24AF1310C(v2);
  v7 = sub_24AF3565C();

  v8 = MessagingOptions.dictionaryValue.getter();
  sub_24AF13340(v8);

  v9 = sub_24AF352EC();

  v0[2] = 0;
  v0[3] = 0;
  LODWORD(v5) = [v5 sendData:v6 toDestinations:v7 priority:300 options:v9 identifier:v0 + 2 error:v0 + 3];

  v10 = v0[3];
  v11 = v0[2];
  if (!v5)
  {
    v18 = v10;
    v19 = v11;
    sub_24AF350DC();

LABEL_8:
    swift_willThrow();
    v23 = v0[18];
    v22 = v0[19];
    v25 = v0[14];
    v24 = v0[15];
    v26 = v0[13];

    v27 = v0[1];
    v28 = *MEMORY[0x277D85DE8];
    goto LABEL_9;
  }

  if (!v11)
  {
    v20 = v10;
    goto LABEL_7;
  }

  v12 = v0[16];
  v13 = v0[17];
  v14 = v0[15];
  v15 = v0[2];
  sub_24AF353AC();
  v16 = v10;
  v17 = v11;
  sub_24AF351DC();

  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    sub_24AEE2E10(v0[15], &qword_27EFC11C0, &qword_24AF38DC0);
LABEL_7:
    sub_24AED9680();
    swift_allocError();
    *v21 = 0;
    goto LABEL_8;
  }

  v79 = v17;
  (*(v0[17] + 32))(v0[19], v0[15], v0[16]);
  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v30 = v0[18];
  v31 = v0[19];
  v32 = v0[16];
  v33 = v0[17];
  v34 = v0[14];
  v35 = v0[11];
  v36 = v0[12];
  v37 = v0[9];
  v38 = sub_24AF3529C();
  __swift_project_value_buffer(v38, qword_281392F20);
  v78 = *(v36 + 16);
  v78(v34, v37, v35);
  (*(v33 + 16))(v30, v31, v32);
  v39 = sub_24AF3527C();
  v40 = sub_24AF3572C();
  v41 = os_log_type_enabled(v39, v40);
  v43 = v0[18];
  v42 = v0[19];
  v45 = v0[16];
  v44 = v0[17];
  v46 = v0[14];
  if (v41)
  {
    log = v39;
    v77 = v0[19];
    v74 = v0[16];
    v48 = v0[12];
    v47 = v0[13];
    v49 = v0[10];
    v50 = v0[11];
    v72 = v0[18];
    v51 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v80[0] = v75;
    *v51 = 136446722;
    v52 = sub_24AF139CC();
    v73 = v40;
    v54 = sub_24AEF599C(v52, v53, v80);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2082;
    v78(v47, v46, v50);
    v55 = *(v48 + 8);
    v55(v46, v50);
    v56 = Message.description.getter(v50);
    v58 = v57;
    v55(v47, v50);
    v59 = sub_24AEF599C(v56, v58, v80);

    *(v51 + 14) = v59;
    *(v51 + 22) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v60 = sub_24AF35C0C();
    v62 = v61;
    v63 = *(v44 + 8);
    v63(v72, v74);
    v64 = sub_24AEF599C(v60, v62, v80);

    *(v51 + 24) = v64;
    _os_log_impl(&dword_24AECF000, log, v73, "%{public}s: Sent message %{public}s with identifier: %{public}s", v51, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v75, -1, -1);
    MEMORY[0x24C236490](v51, -1, -1);

    v63(v77, v74);
  }

  else
  {
    (*(v0[12] + 8))(v0[14], v0[11]);

    v65 = *(v44 + 8);
    v65(v43, v45);
    v65(v42, v45);
  }

  v67 = v0[18];
  v66 = v0[19];
  v69 = v0[14];
  v68 = v0[15];
  v70 = v0[13];

  v27 = v0[1];
  v71 = *MEMORY[0x277D85DE8];
LABEL_9:

  return v27();
}

uint64_t sub_24AF1BD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x277D85DE8];
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[5] = a2;
  v9 = *(*a2 + 80);
  v10 = *(*a2 + 88);
  v11 = type metadata accessor for Message();
  v8[12] = v11;
  v12 = *(v11 - 8);
  v8[13] = v12;
  v13 = *(v12 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0) - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v15 = sub_24AF3521C();
  v8[17] = v15;
  v16 = *(v15 - 8);
  v8[18] = v16;
  v17 = *(v16 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v18 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24AF1BF6C, 0, 0);
}

uint64_t sub_24AF1BF6C()
{
  v90 = v0;
  v89[1] = *MEMORY[0x277D85DE8];
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(v0[5] + 128);
  v6 = sub_24AF3510C();
  sub_24AF13608(v4);
  v7 = sub_24AF352EC();

  sub_24AF1310C(v2);
  v8 = sub_24AF3565C();

  v9 = MessagingOptions.dictionaryValue.getter();
  sub_24AF13340(v9);

  v10 = sub_24AF352EC();

  v0[2] = 0;
  v0[3] = 0;
  LODWORD(v5) = [v5 sendResourceAtURL:v6 metadata:v7 toDestinations:v8 priority:300 options:v10 identifier:v0 + 2 error:v0 + 3];

  v11 = v0[3];
  v12 = v0[2];
  if (!v5)
  {
    v19 = v11;
    v12 = v12;
    sub_24AF350DC();

LABEL_8:
    swift_willThrow();
LABEL_9:

    v23 = v0[19];
    v22 = v0[20];
    v25 = v0[15];
    v24 = v0[16];
    v26 = v0[14];

    v27 = v0[1];
    v28 = *MEMORY[0x277D85DE8];
    goto LABEL_10;
  }

  if (!v12)
  {
    v20 = v11;
    goto LABEL_7;
  }

  v13 = v0[17];
  v14 = v0[18];
  v15 = v0[16];
  v16 = v0[2];
  sub_24AF353AC();
  v17 = v11;
  v18 = v12;
  sub_24AF351DC();

  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_24AEE2E10(v0[16], &qword_27EFC11C0, &qword_24AF38DC0);
LABEL_7:
    sub_24AED9680();
    swift_allocError();
    *v21 = 0;
    goto LABEL_8;
  }

  v88 = v18;
  (*(v0[18] + 32))(v0[20], v0[16], v0[17]);
  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v30 = v0[19];
  log = v0[20];
  v31 = v0[17];
  v32 = v0[18];
  v33 = v0[15];
  v35 = v0[12];
  v34 = v0[13];
  v36 = v0[10];
  v37 = sub_24AF3529C();
  __swift_project_value_buffer(v37, qword_281392F20);
  v85 = *(v34 + 16);
  v85(v33, v36, v35);
  (*(v32 + 16))(v30, log, v31);
  v38 = sub_24AF3527C();
  v39 = sub_24AF3572C();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[18];
  v42 = v0[19];
  v43 = v0[17];
  v44 = v0[15];
  if (v40)
  {
    v45 = v0[13];
    v46 = v0[14];
    v84 = v39;
    loga = v38;
    v47 = v0[11];
    v48 = v0[12];
    v82 = v0[19];
    v49 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v89[0] = v83;
    *v49 = 136446722;
    v50 = sub_24AF139CC();
    v81 = v43;
    v52 = sub_24AEF599C(v50, v51, v89);

    *(v49 + 4) = v52;
    *(v49 + 12) = 2082;
    v53 = v46;
    v85(v46, v44, v48);
    v54 = *(v45 + 8);
    v54(v44, v48);
    v55 = Message.description.getter(v48);
    v57 = v56;
    v54(v53, v48);
    v58 = sub_24AEF599C(v55, v57, v89);

    *(v49 + 14) = v58;
    *(v49 + 22) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v59 = sub_24AF35C0C();
    v61 = v60;
    v62 = *(v41 + 8);
    v62(v82, v81);
    v63 = sub_24AEF599C(v59, v61, v89);

    *(v49 + 24) = v63;
    _os_log_impl(&dword_24AECF000, loga, v84, "%{public}s: Sent message (resource) %{public}s with identifier: %{public}s", v49, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v83, -1, -1);
    MEMORY[0x24C236490](v49, -1, -1);
  }

  else
  {
    (*(v0[13] + 8))(v0[15], v0[12]);

    v62 = *(v41 + 8);
    v62(v42, v43);
  }

  v64 = v0[6];
  v65 = [objc_opt_self() defaultManager];
  v66 = sub_24AF3510C();
  v0[4] = 0;
  v67 = [v65 removeItemAtURL:v66 error:v0 + 4];

  v68 = v0[4];
  v69 = v0[20];
  if (!v67)
  {
    v78 = v0[17];
    v79 = v0[18];
    v80 = v68;
    sub_24AF350DC();

    swift_willThrow();
    v62(v69, v78);
    v12 = v88;
    goto LABEL_9;
  }

  v70 = v0[19];
  v72 = v0[16];
  v71 = v0[17];
  v74 = v0[14];
  v73 = v0[15];
  v75 = v0[18] + 8;
  v76 = v68;
  v62(v69, v71);

  v27 = v0[1];
  v77 = *MEMORY[0x277D85DE8];
LABEL_10:

  return v27();
}

uint64_t sub_24AF1C66C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v8 = *a2;
  v9 = *(*(type metadata accessor for MessagingOptions() - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v10 = *(v8 + 80);
  v11 = *(v8 + 88);
  v12 = type metadata accessor for Message();
  v5[6] = v12;
  v13 = *(v12 - 8);
  v5[7] = v13;
  v14 = *(v13 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v15 = sub_24AF3521C();
  v5[10] = v15;
  v16 = *(v15 - 8);
  v5[11] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v5[12] = v18;
  v19 = swift_task_alloc();
  v5[13] = v19;
  *v19 = v5;
  v19[1] = sub_24AF1C848;

  return LocalMessaging.send(message:messageOptions:)(v18, a3, a4);
}

uint64_t sub_24AF1C848()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_24AEEFB80;
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v4 = sub_24AF1C974;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AF1C974()
{
  v42 = v0;
  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_24AF3529C();
  __swift_project_value_buffer(v7, qword_281392F20);
  v8 = *(v3 + 16);
  v8(v1, v6, v2);
  sub_24AF226D0(v5, v4, type metadata accessor for MessagingOptions);
  v9 = sub_24AF3527C();
  v10 = sub_24AF3572C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[9];
    v36 = v8;
    v12 = v0[7];
    v13 = v0[8];
    v14 = v0[6];
    v37 = v0[5];
    v38 = v0[10];
    v40 = v10;
    v15 = v0[4];
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v16 = 136446722;
    v17 = sub_24AF139CC();
    v19 = sub_24AEF599C(v17, v18, &v41);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    v36(v13, v11, v14);
    v20 = *(v12 + 8);
    v20(v11, v14);
    v21 = Message.description.getter(v14);
    v23 = v22;
    v20(v13, v14);
    v24 = sub_24AEF599C(v21, v23, &v41);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v25 = sub_24AF35C0C();
    v27 = v26;
    sub_24AF22BCC(v37, type metadata accessor for MessagingOptions);
    v28 = sub_24AEF599C(v25, v27, &v41);

    *(v16 + 24) = v28;
    _os_log_impl(&dword_24AECF000, v9, v40, "%{public}s: Sent message (with response) %{public}s with identifier: %{public}s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v39, -1, -1);
    MEMORY[0x24C236490](v16, -1, -1);
  }

  else
  {
    v29 = v0[5];
    (*(v0[7] + 8))(v0[9], v0[6]);

    sub_24AF22BCC(v29, type metadata accessor for MessagingOptions);
  }

  v30 = v0[12];
  v31 = v0[8];
  v32 = v0[9];
  v33 = v0[5];

  v34 = v0[1];

  return v34();
}

uint64_t sub_24AF1CCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[4] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v8 = sub_24AF3521C();
  v6[10] = v8;
  v9 = *(v8 - 8);
  v6[11] = v9;
  v10 = *(v9 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24AF1CE30, 0, 0);
}

uint64_t sub_24AF1CE30()
{
  v58 = v0;
  v57[1] = *MEMORY[0x277D85DE8];
  v2 = v0[6];
  v1 = v0[7];
  v3 = *(v0[4] + 128);
  sub_24AF13608(v0[5]);
  v4 = sub_24AF352EC();

  sub_24AF1310C(v2);
  v5 = sub_24AF3565C();

  v6 = MessagingOptions.dictionaryValue.getter();
  sub_24AF13340(v6);

  v7 = sub_24AF352EC();

  v0[2] = 0;
  v0[3] = 0;
  LODWORD(v3) = [v3 sendMessage:v4 toDestinations:v5 priority:300 options:v7 identifier:v0 + 2 error:v0 + 3];

  v8 = v0[3];
  v9 = v0[2];
  if (!v3)
  {
    v16 = v8;
    v17 = v9;
    sub_24AF350DC();

LABEL_8:
    swift_willThrow();
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[9];

    v23 = v0[1];
    v24 = *MEMORY[0x277D85DE8];
    goto LABEL_9;
  }

  if (!v9)
  {
    v18 = v8;
    goto LABEL_7;
  }

  v10 = v0[10];
  v11 = v0[11];
  v12 = v0[9];
  v13 = v0[2];
  sub_24AF353AC();
  v14 = v8;
  v15 = v9;
  sub_24AF351DC();

  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_24AEE2E10(v0[9], &qword_27EFC11C0, &qword_24AF38DC0);
LABEL_7:
    sub_24AED9680();
    swift_allocError();
    *v19 = 0;
    goto LABEL_8;
  }

  v56 = v15;
  (*(v0[11] + 32))(v0[13], v0[9], v0[10]);
  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v27 = v0[12];
  v26 = v0[13];
  v29 = v0[10];
  v28 = v0[11];
  v30 = sub_24AF3529C();
  __swift_project_value_buffer(v30, qword_281392F20);
  (*(v28 + 16))(v27, v26, v29);
  v31 = sub_24AF3527C();
  v32 = sub_24AF3572C();
  v33 = os_log_type_enabled(v31, v32);
  v35 = v0[12];
  v34 = v0[13];
  v37 = v0[10];
  v36 = v0[11];
  if (v33)
  {
    v53 = v32;
    v38 = v0[8];
    v39 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v57[0] = v54;
    *v39 = 136446466;
    v40 = sub_24AF139CC();
    v55 = v34;
    v42 = sub_24AEF599C(v40, v41, v57);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v43 = sub_24AF35C0C();
    v45 = v44;
    v46 = *(v36 + 8);
    v46(v35, v37);
    v47 = sub_24AEF599C(v43, v45, v57);

    *(v39 + 14) = v47;
    _os_log_impl(&dword_24AECF000, v31, v53, "%{public}s: Sent raw dictionary to with identifier: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v54, -1, -1);
    MEMORY[0x24C236490](v39, -1, -1);

    v46(v55, v37);
  }

  else
  {

    v48 = *(v36 + 8);
    v48(v35, v37);
    v48(v34, v37);
  }

  v50 = v0[12];
  v49 = v0[13];
  v51 = v0[9];

  v23 = v0[1];
  v52 = *MEMORY[0x277D85DE8];
LABEL_9:

  return v23();
}

uint64_t sub_24AF1D358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = v7;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  *(v8 + 120) = a1;
  *(v8 + 128) = a2;
  *(v8 + 168) = *v7;
  v11 = *v7;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30) - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = *(v11 + 80);
  *(v8 + 192) = *(v11 + 88);
  v13 = type metadata accessor for Message();
  *(v8 + 200) = v13;
  v14 = type metadata accessor for MessageContext();
  *(v8 + 208) = v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v8 + 216) = TupleTypeMetadata2;
  v16 = *(TupleTypeMetadata2 - 8);
  *(v8 + 224) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  v18 = sub_24AF3521C();
  *(v8 + 240) = v18;
  v19 = *(v18 - 8);
  *(v8 + 248) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0) - 8) + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  v22 = type metadata accessor for MessagingOptions();
  *(v8 + 304) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v24 = *(v14 - 8);
  *(v8 + 320) = v24;
  *(v8 + 328) = *(v24 + 64);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v25 = *(v13 - 8);
  *(v8 + 360) = v25;
  *(v8 + 368) = *(v25 + 64);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  v26 = swift_task_alloc();
  v27 = *a3;
  v28 = a3[1];
  *(v8 + 424) = v26;
  *(v8 + 432) = v27;
  *(v8 + 536) = *a6;
  v29 = *(a6 + 8);
  v30 = *(a6 + 16);
  *(v8 + 440) = v28;
  *(v8 + 448) = v29;
  *(v8 + 456) = v30;

  return MEMORY[0x2822009F8](sub_24AF1D718, v7, 0);
}

uint64_t sub_24AF1D718()
{
  v280 = v0;
  v1 = v0[20];
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  if (v2 != v0[15] || v3 != v0[16])
  {
    v5 = *(v1 + 112);
    v6 = *(v1 + 120);
    if ((sub_24AF35C4C() & 1) == 0)
    {
      if (qword_281392F18 != -1)
      {
        swift_once();
      }

      v54 = v0[20];
      v55 = v0[16];
      v56 = sub_24AF3529C();
      __swift_project_value_buffer(v56, qword_281392F20);

      v57 = sub_24AF3527C();
      v58 = sub_24AF3570C();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = v0[21];
        v60 = v0[15];
        v275 = v0[16];
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v279[0] = v62;
        *v61 = 136446722;
        v63 = sub_24AF139CC();
        v65 = sub_24AEF599C(v63, v64, v279);

        *(v61 + 4) = v65;
        *(v61 + 12) = 2082;
        *(v61 + 14) = sub_24AEF599C(v2, v3, v279);
        *(v61 + 22) = 2082;
        *(v61 + 24) = sub_24AEF599C(v60, v275, v279);
        _os_log_impl(&dword_24AECF000, v57, v58, "%{public}s: Ignoring delegate callback from wrong IDS service! Expected %{public}s, received: %{public}s", v61, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C236490](v62, -1, -1);
        MEMORY[0x24C236490](v61, -1, -1);
      }

      goto LABEL_48;
    }
  }

  v7 = v0[52];
  v8 = v0[25];
  v10 = v0[17];
  v9 = v0[18];
  v11 = sub_24AF3508C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_24AF3507C();
  swift_getWitnessTable();
  sub_24AF3505C();
  v15 = v0[52];
  v14 = v0[53];
  v16 = v0[45];
  v17 = v0[25];
  v18 = v0[26];
  v19 = v0[19];

  v20 = *(v16 + 32);
  v20(v14, v15, v17);
  if (*(v19 + *(v18 + 36)) == 1)
  {
    v21 = v0[20];
    v22 = *(v21 + 256);
    v0[58] = v22;
    v0[59] = *(v21 + 264);
    if (v22)
    {
      v270 = v22;
      sub_24AED1164(v22);
      if (qword_281392F18 != -1)
      {
        swift_once();
      }

      v23 = v0[57];
      v24 = v0[53];
      v25 = v0[51];
      v27 = v0[44];
      v26 = v0[45];
      v28 = v0[25];
      v29 = v0[19];
      v30 = v0[16];
      v31 = sub_24AF3529C();
      v0[60] = __swift_project_value_buffer(v31, qword_281392F20);
      sub_24AF226D0(v29, v27, type metadata accessor for MessageContext);
      v32 = *(v26 + 16);
      v32(v25, v24, v28);

      v33 = sub_24AF3527C();
      v34 = sub_24AF3572C();

      if (os_log_type_enabled(v33, v34))
      {
        v237 = v0[56];
        v243 = v0[57];
        v260 = v0[51];
        v250 = v0[50];
        v35 = v0[44];
        v36 = v0[45];
        v225 = v0[30];
        v38 = v0[25];
        v37 = v0[26];
        v39 = v0[21];
        v229 = v0[15];
        v232 = v0[16];
        v40 = swift_slowAlloc();
        v264 = swift_slowAlloc();
        v279[0] = v264;
        *v40 = 136316162;
        v41 = sub_24AF139CC();
        log = v33;
        v43 = sub_24AEF599C(v41, v42, v279);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2080;
        v44 = *(v37 + 20);
        sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
        v45 = sub_24AF35C0C();
        v47 = v46;
        sub_24AF22BCC(v35, type metadata accessor for MessageContext);
        v48 = sub_24AEF599C(v45, v47, v279);

        *(v40 + 14) = v48;
        *(v40 + 22) = 2080;
        *(v40 + 24) = sub_24AEF599C(v229, v232, v279);
        *(v40 + 32) = 2080;
        *(v40 + 34) = sub_24AEF599C(v237, v243, v279);
        *(v40 + 42) = 2080;
        v32(v250, v260, v38);
        v49 = *(v36 + 8);
        v49(v260, v38);
        v50 = Message.description.getter(v38);
        v52 = v51;
        v49(v250, v38);
        v53 = sub_24AEF599C(v50, v52, v279);

        *(v40 + 44) = v53;
        _os_log_impl(&dword_24AECF000, log, v34, "%s: Received message %s on %s from %s: %s expecting response", v40, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C236490](v264, -1, -1);
        MEMORY[0x24C236490](v40, -1, -1);
      }

      else
      {
        v127 = v0[44];
        v49 = *(v0[45] + 8);
        v49(v0[51], v0[25]);

        sub_24AF22BCC(v127, type metadata accessor for MessageContext);
      }

      v0[61] = v49;
      v128 = *(v0 + 28);
      v129 = v0[55];
      v0[11] = v0[54];
      v130 = *(v0 + 536);
      v0[12] = v129;
      *(v0 + 64) = v130;
      *(v0 + 9) = v128;
      v131 = sub_24AEE2954(MEMORY[0x277D84F90]);
      v0[62] = v131;
      v267 = (v270 + *v270);
      v132 = v270[1];
      v133 = swift_task_alloc();
      v0[63] = v133;
      *v133 = v0;
      v133[1] = sub_24AF1EF40;
      v134 = v0[53];
      v135 = v0[49];
      v136 = v0[19];

      return (v267)(v135, v0 + 11, v0 + 8, v134, v131, v136);
    }

    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v114 = sub_24AF3529C();
    __swift_project_value_buffer(v114, qword_281392F20);
    v115 = sub_24AF3527C();
    v116 = sub_24AF3570C();
    v117 = os_log_type_enabled(v115, v116);
    v118 = v0[53];
    v119 = v0[45];
    v120 = v0[25];
    if (v117)
    {
      v121 = v0[21];
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v279[0] = v123;
      *v122 = 136446210;
      v124 = sub_24AF139CC();
      v126 = sub_24AEF599C(v124, v125, v279);

      *(v122 + 4) = v126;
      _os_log_impl(&dword_24AECF000, v115, v116, "%{public}s: No replyCallback!", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v123);
      MEMORY[0x24C236490](v123, -1, -1);
      MEMORY[0x24C236490](v122, -1, -1);
    }

    (*(v119 + 8))(v118, v120);
  }

  else
  {
    v66 = v0[36];
    v67 = v0[30];
    v68 = v0[31];
    sub_24AEF8C60(v0[19], v66);
    v69 = (*(v68 + 48))(v66, 1, v67);
    v70 = v0[36];
    if (v69 == 1)
    {
      sub_24AEE2E10(v0[36], &qword_27EFC11C0, &qword_24AF38DC0);
    }

    else
    {
      v71 = v0[27];
      v72 = v0[20];
      (*(v0[31] + 32))(v0[34], v0[36], v0[30]);
      swift_beginAccess();
      v73 = *(v72 + 152);

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
      sub_24AF3501C();
      sub_24AF22C2C(&qword_281393400, MEMORY[0x277CC95F0]);
      sub_24AF3533C();

      if (v0[13])
      {
        v265 = v0[13];
        if (qword_281392F18 != -1)
        {
          swift_once();
        }

        v244 = v0[57];
        v276 = v0[53];
        v74 = v0[48];
        v75 = v0[45];
        v76 = v0[43];
        v251 = v0[33];
        loga = v0[34];
        v77 = v0[31];
        v238 = v0[30];
        v78 = v0[25];
        v79 = v0[19];
        v80 = v0[16];
        v81 = sub_24AF3529C();
        v82 = v0;
        __swift_project_value_buffer(v81, qword_281392F20);
        sub_24AF226D0(v79, v76, type metadata accessor for MessageContext);
        v83 = v276;
        v277 = *(v75 + 16);
        v277(v74, v83, v78);
        v84 = v251;
        v252 = *(v77 + 16);
        v252(v84, loga, v238);

        v85 = sub_24AF3527C();
        v86 = sub_24AF3572C();

        if (os_log_type_enabled(v85, v86))
        {
          v239 = v0[57];
          v245 = v0[50];
          v230 = v0[48];
          v87 = v0[45];
          v88 = v82[43];
          v233 = v82[33];
          v226 = v85;
          v89 = v82[30];
          v90 = v82[31];
          v91 = v82[25];
          v92 = v82[26];
          v223 = v86;
          v93 = v82[21];
          v218 = v82[16];
          v220 = v82[56];
          v216 = v89;
          v217 = v82[15];
          v94 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          v279[0] = v222;
          *v94 = 136316418;
          v95 = sub_24AF139CC();
          v97 = sub_24AEF599C(v95, v96, v279);

          *(v94 + 4) = v97;
          *(v94 + 12) = 2080;
          v98 = *(v92 + 20);
          sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
          v99 = sub_24AF35C0C();
          v101 = v100;
          sub_24AF22BCC(v88, type metadata accessor for MessageContext);
          v102 = sub_24AEF599C(v99, v101, v279);

          *(v94 + 14) = v102;
          *(v94 + 22) = 2080;
          *(v94 + 24) = sub_24AEF599C(v217, v218, v279);
          *(v94 + 32) = 2080;
          *(v94 + 34) = sub_24AEF599C(v220, v239, v279);
          *(v94 + 42) = 2080;
          v277(v245, v230, v91);
          v103 = *(v87 + 8);
          v103(v230, v91);
          v104 = v245;
          v105 = Message.description.getter(v91);
          v107 = v106;
          v246 = v103;
          v103(v104, v91);
          v108 = sub_24AEF599C(v105, v107, v279);

          *(v94 + 44) = v108;
          *(v94 + 52) = 2080;
          v109 = v233;
          v110 = sub_24AF35C0C();
          v112 = v111;
          v234 = *(v90 + 8);
          v234(v109, v216);
          v113 = sub_24AEF599C(v110, v112, v279);

          *(v94 + 54) = v113;
          _os_log_impl(&dword_24AECF000, v226, v223, "%s: Received message %s on %s from %s: %s in response to %s", v94, 0x3Eu);
          swift_arrayDestroy();
          MEMORY[0x24C236490](v222, -1, -1);
          MEMORY[0x24C236490](v94, -1, -1);
        }

        else
        {
          v152 = v0[43];
          v153 = v0[33];
          v154 = v0[30];
          v155 = v0[31];
          v246 = *(v82[45] + 8);
          v246(v82[48], v82[25]);

          v234 = *(v155 + 8);
          v234(v153, v154);
          sub_24AF22BCC(v152, type metadata accessor for MessageContext);
        }

        v0 = v82;
        v227 = v82[53];
        v156 = v82[34];
        v157 = v82[32];
        v158 = v82[29];
        v159 = v82[30];
        v161 = v82[27];
        v160 = v82[28];
        v162 = v82[25];
        v163 = v82[19];
        v164 = *(v161 + 48);
        (v277)(v0[29]);
        sub_24AF226D0(v163, v158 + v164, type metadata accessor for MessageContext);
        sub_24AF3500C();
        (*(v160 + 8))(v158, v161);
        v252(v157, v156, v159);
        v0[14] = 0;
        swift_beginAccess();
        sub_24AF3532C();
        sub_24AF3534C();
        swift_endAccess();

        v234(v156, v159);
        v246(v227, v162);
        goto LABEL_48;
      }

      if (qword_281392F18 != -1)
      {
        swift_once();
      }

      v138 = sub_24AF3529C();
      __swift_project_value_buffer(v138, qword_281392F20);
      v139 = sub_24AF3527C();
      v140 = sub_24AF3570C();
      v141 = os_log_type_enabled(v139, v140);
      v142 = v0[34];
      v143 = v0[30];
      v144 = v0[31];
      if (v141)
      {
        v271 = v0[34];
        v145 = v0[21];
        v146 = swift_slowAlloc();
        v279[0] = swift_slowAlloc();
        v147 = v279[0];
        *v146 = 136315138;
        v148 = sub_24AF139CC();
        v150 = v20;
        v151 = sub_24AEF599C(v148, v149, v279);

        *(v146 + 4) = v151;
        v20 = v150;
        _os_log_impl(&dword_24AECF000, v139, v140, "%s: Got unexpected response!", v146, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v147);
        MEMORY[0x24C236490](v147, -1, -1);
        MEMORY[0x24C236490](v146, -1, -1);

        (*(v144 + 8))(v271, v143);
      }

      else
      {

        (*(v144 + 8))(v142, v143);
      }
    }

    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v165 = v0[57];
    v166 = v0[53];
    v167 = v0[47];
    v168 = v0[45];
    v169 = v0[25];
    v170 = v0[16];
    v171 = sub_24AF3529C();
    __swift_project_value_buffer(v171, qword_281392F20);
    v172 = v169;
    v173 = *(v168 + 16);
    v173(v167, v166, v172);

    v174 = sub_24AF3527C();
    v175 = sub_24AF3572C();

    v268 = v20;
    if (os_log_type_enabled(v174, v175))
    {
      v247 = v0[56];
      v253 = v0[57];
      v176 = v0[50];
      logb = v0[47];
      v177 = v0[45];
      v178 = v0[25];
      v272 = v175;
      v179 = v0[21];
      v235 = v0[15];
      v240 = v0[16];
      v180 = swift_slowAlloc();
      v261 = swift_slowAlloc();
      v279[0] = v261;
      *v180 = 136316163;
      v181 = sub_24AF139CC();
      v183 = sub_24AEF599C(v181, v182, v279);

      *(v180 + 4) = v183;
      *(v180 + 12) = 2082;
      *(v180 + 14) = sub_24AEF599C(v235, v240, v279);
      *(v180 + 22) = 2160;
      *(v180 + 24) = 1752392040;
      *(v180 + 32) = 2081;
      *(v180 + 34) = sub_24AEF599C(v247, v253, v279);
      *(v180 + 42) = 2082;
      v173(v176, logb, v178);
      v184 = *(v177 + 8);
      v184(logb, v178);
      v185 = Message.description.getter(v178);
      v187 = v186;
      v184(v176, v178);
      v188 = sub_24AEF599C(v185, v187, v279);

      *(v180 + 44) = v188;
      _os_log_impl(&dword_24AECF000, v174, v272, "%s: Received message on %{public}s from %{private,mask.hash}s: %{public}s", v180, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v261, -1, -1);
      MEMORY[0x24C236490](v180, -1, -1);
    }

    else
    {
      v184 = *(v0[45] + 8);
      v184(v0[47], v0[25]);
    }

    v189 = v173;
    v190 = v0[20];
    v191 = *(v190 + 176);
    if (v191)
    {
      v236 = *(v0 + 536);
      v241 = v0[56];
      v248 = v0[57];
      v228 = v0[54];
      v231 = v0[55];
      v192 = v0[53];
      v262 = v184;
      v193 = v0[50];
      v194 = v189;
      v224 = v0[46];
      v273 = v0[45];
      v195 = v0[42];
      v219 = v0[40];
      v196 = v0[25];
      v197 = v0[22];
      v254 = v197;
      v198 = v0[19];
      v199 = *(v190 + 184);
      v200 = sub_24AF3557C();
      v221 = *(v0 + 23);
      (*(*(v200 - 8) + 56))(v197, 1, 1, v200);
      v194(v193, v192, v196);
      sub_24AF226D0(v198, v195, type metadata accessor for MessageContext);
      v201 = (*(v273 + 80) + 104) & ~*(v273 + 80);
      v202 = (v224 + *(v219 + 80) + v201) & ~*(v219 + 80);
      v203 = swift_allocObject();
      *(v203 + 16) = 0;
      *(v203 + 24) = 0;
      *(v203 + 32) = v221;
      *(v203 + 48) = v191;
      *(v203 + 56) = v199;
      *(v203 + 64) = v228;
      *(v203 + 72) = v231;
      *(v203 + 80) = v236;
      *(v203 + 88) = v241;
      *(v203 + 96) = v248;
      v268(v203 + v201, v193, v196);
      sub_24AEF9044(v195, v203 + v202, type metadata accessor for MessageContext);
      sub_24AED1164(v191);

      sub_24AED1164(v191);

      sub_24AF08F10(0, 0, v254, &unk_24AF3A0A8, v203);

      sub_24AED56FC(v191);
      v262(v192, v196);
    }

    else
    {
      v204 = v0[45] + 8;
      v184(v0[53], v0[25]);
    }
  }

LABEL_48:
  v206 = v0[52];
  v205 = v0[53];
  v208 = v0[50];
  v207 = v0[51];
  v210 = v0[48];
  v209 = v0[49];
  v211 = v0[47];
  v213 = v0[43];
  v212 = v0[44];
  v214 = v0[42];
  v242 = v0[39];
  v249 = v0[37];
  v255 = v0[36];
  logc = v0[35];
  v263 = v0[34];
  v266 = v0[33];
  v269 = v0[32];
  v274 = v0[29];
  v278 = v0[22];

  v215 = v0[1];

  return v215();
}

uint64_t sub_24AF1EF40()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v9 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = sub_24AF1F56C;
  }

  else
  {
    v6 = *(v2 + 496);
    v7 = *(v2 + 160);

    v5 = sub_24AF1F068;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AF1F068()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 536);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 296);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  v8 = *(v0 + 208);
  v22 = *(v0 + 152);
  v23 = *(v0 + 448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24AF37AB0;
  *(v9 + 32) = v2;
  *(v9 + 40) = v23;
  *(v9 + 48) = v1;
  (*(v7 + 16))(v5, v22 + *(v8 + 20), v6);
  v10 = *(v7 + 56);
  v10(v5, 0, 1, v6);

  v11 = MEMORY[0x277D84F90];
  v24 = sub_24AEF6B54(MEMORY[0x277D84F90]);
  v12 = sub_24AEF6B54(v11);
  v13 = v4[7];
  v10(v3 + v13, 1, 1, v6);
  sub_24AF3520C();
  *(v3 + v4[5]) = v9;
  *(v3 + v4[6]) = 0;
  sub_24AEF8E70(v5, v3 + v13);
  v14 = v3 + v4[8];
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v3 + v4[9]) = 0;
  *(v3 + v4[10]) = v24;
  *(v3 + v4[11]) = v12;
  v15 = (v3 + v4[12]);
  *v15 = 0;
  v15[1] = 0;
  *(v3 + v4[13]) = xmmword_24AF37E10;
  v16 = swift_task_alloc();
  *(v0 + 520) = v16;
  *v16 = v0;
  v16[1] = sub_24AF1F280;
  v17 = *(v0 + 392);
  v18 = *(v0 + 312);
  v19 = *(v0 + 280);
  v20 = *(v0 + 160);

  return LocalMessaging.send(message:messageOptions:)(v19, v17, v18);
}

uint64_t sub_24AF1F280()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v8 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = v2[20];
    v5 = sub_24AF1F878;
  }

  else
  {
    v6 = v2[20];
    (*(v2[31] + 8))(v2[35], v2[30]);
    v5 = sub_24AF1F3B8;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AF1F3B8()
{
  v1 = v0[59];
  v2 = v0[53];
  v3 = v0[49];
  v4 = v0[45];
  v5 = v0[39];
  v6 = v0[25];
  sub_24AED56FC(v0[58]);
  v7 = *(v4 + 8);
  v7(v3, v6);
  v7(v2, v6);
  sub_24AF22BCC(v5, type metadata accessor for MessagingOptions);
  v9 = v0[52];
  v8 = v0[53];
  v11 = v0[50];
  v10 = v0[51];
  v12 = v0[48];
  v13 = v0[49];
  v14 = v0[47];
  v16 = v0[43];
  v15 = v0[44];
  v17 = v0[42];
  v20 = v0[39];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[34];
  v25 = v0[33];
  v26 = v0[32];
  v27 = v0[29];
  v28 = v0[22];

  v18 = v0[1];

  return v18();
}

uint64_t sub_24AF1F56C()
{
  v48 = v0;
  v1 = v0[62];

  v2 = v0[64];
  v3 = v0[60];
  v4 = v0[61];
  v5 = v2;
  v6 = sub_24AF3527C();
  v7 = sub_24AF3570C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[58];
  v10 = v0[53];
  v11 = v0[45];
  v12 = v0[25];
  if (v8)
  {
    v45 = v0[53];
    v13 = v0[21];
    v41 = v0[59];
    v14 = swift_slowAlloc();
    v43 = v12;
    v15 = swift_slowAlloc();
    v39 = v4;
    v16 = swift_slowAlloc();
    v47 = v16;
    *v14 = 136446466;
    v17 = sub_24AF139CC();
    v19 = sub_24AEF599C(v17, v18, &v47);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2114;
    v20 = v2;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_24AECF000, v6, v7, "%{public}s: Error sending response: %{public}@", v14, 0x16u);
    sub_24AEE2E10(v15, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C236490](v16, -1, -1);
    MEMORY[0x24C236490](v14, -1, -1);
    sub_24AED56FC(v9);

    v39(v45, v43);
  }

  else
  {
    sub_24AED56FC(v0[58]);

    v4(v10, v12);
  }

  v23 = v0[52];
  v22 = v0[53];
  v25 = v0[50];
  v24 = v0[51];
  v26 = v0[48];
  v27 = v0[49];
  v28 = v0[47];
  v30 = v0[43];
  v29 = v0[44];
  v31 = v0[42];
  v34 = v0[39];
  v35 = v0[37];
  v36 = v0[36];
  v37 = v0[35];
  v38 = v0[34];
  v40 = v0[33];
  v42 = v0[32];
  v44 = v0[29];
  v46 = v0[22];

  v32 = v0[1];

  return v32();
}

uint64_t sub_24AF1F878()
{
  v48 = v0;
  v1 = v0[39];
  v2 = *(v0[45] + 8);
  v2(v0[49], v0[25]);
  sub_24AF22BCC(v1, type metadata accessor for MessagingOptions);
  v3 = v0[66];
  v4 = v0[60];
  v5 = v3;
  v6 = sub_24AF3527C();
  v7 = sub_24AF3570C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[58];
  v10 = v0[53];
  v11 = v0[45];
  v12 = v0[25];
  if (v8)
  {
    v45 = v0[53];
    v13 = v0[21];
    v41 = v0[59];
    v14 = swift_slowAlloc();
    v43 = v12;
    v15 = swift_slowAlloc();
    v39 = v2;
    v16 = swift_slowAlloc();
    v47 = v16;
    *v14 = 136446466;
    v17 = sub_24AF139CC();
    v19 = sub_24AEF599C(v17, v18, &v47);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2114;
    v20 = v3;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_24AECF000, v6, v7, "%{public}s: Error sending response: %{public}@", v14, 0x16u);
    sub_24AEE2E10(v15, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C236490](v16, -1, -1);
    MEMORY[0x24C236490](v14, -1, -1);
    sub_24AED56FC(v9);

    v39(v45, v43);
  }

  else
  {
    sub_24AED56FC(v0[58]);

    v2(v10, v12);
  }

  v23 = v0[52];
  v22 = v0[53];
  v25 = v0[50];
  v24 = v0[51];
  v26 = v0[48];
  v27 = v0[49];
  v28 = v0[47];
  v30 = v0[43];
  v29 = v0[44];
  v31 = v0[42];
  v34 = v0[39];
  v35 = v0[37];
  v36 = v0[36];
  v37 = v0[35];
  v38 = v0[34];
  v40 = v0[33];
  v42 = v0[32];
  v44 = v0[29];
  v46 = v0[22];

  v32 = v0[1];

  return v32();
}

void sub_24AF1FBB8(void (*a1)(char *, uint64_t), unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7)
{
  v102 = a7;
  v109 = a5;
  v111 = *v7;
  v12 = v111;
  v13 = type metadata accessor for MessageContext();
  v100 = *(v13 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v101 = v15;
  v107 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v108 = &v86 - v18;
  v19 = *(v12 + 80);
  v98 = *(v12 + 88);
  v99 = v19;
  v20 = type metadata accessor for Message();
  v110 = *(v20 - 8);
  isa = v110[8].isa;
  v22 = MEMORY[0x28223BE20](v20);
  v106 = &v86 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v103 = &v86 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v86 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v86 - v28;
  v30 = a3[1];
  v96 = *a3;
  v97 = v30;
  v95 = *a6;
  v31 = *(a6 + 1);
  v104 = *(a6 + 2);
  v105 = v31;
  v33 = v7[14];
  v32 = v7[15];
  v112 = a1;
  if (v33 == a1 && v32 == a2 || (sub_24AF35C4C() & 1) != 0)
  {
    v34 = sub_24AF3514C();
    v36 = v35;
    v94 = v7;
    v37 = sub_24AF3508C();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_24AF3507C();
    swift_getWitnessTable();
    sub_24AF3505C();
    sub_24AED6198(v34, v36);

    v48 = v110;
    v49 = v110[4].isa;
    v91 = v110 + 4;
    v90 = v49;
    (v49)(v29, v27, v20);
    v50 = v20;
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v51 = sub_24AF3529C();
    __swift_project_value_buffer(v51, qword_281392F20);
    v52 = v48[2].isa;
    v53 = v103;
    v93 = v29;
    v92 = v48 + 2;
    v52(v103, v29, v20);
    v54 = a2;

    v55 = v104;

    v56 = sub_24AF3527C();
    v57 = sub_24AF3572C();

    v88 = v57;
    v58 = os_log_type_enabled(v56, v57);
    v89 = v52;
    if (v58)
    {
      v59 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v113[0] = v87;
      *v59 = 136316419;
      v86 = v56;
      v60 = sub_24AF139CC();
      v62 = sub_24AEF599C(v60, v61, v113);

      *(v59 + 4) = v62;
      *(v59 + 12) = 2082;
      *(v59 + 14) = sub_24AEF599C(v112, v54, v113);
      *(v59 + 22) = 2160;
      *(v59 + 24) = 1752392040;
      *(v59 + 32) = 2081;
      *(v59 + 34) = sub_24AEF599C(v105, v55, v113);
      *(v59 + 42) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0918, &qword_24AF380D8);
      v63 = sub_24AF3530C();
      v65 = sub_24AEF599C(v63, v64, v113);

      *(v59 + 44) = v65;
      v50 = v20;
      *(v59 + 52) = 2082;
      v66 = v106;
      v52(v106, v53, v50);
      v67 = v110[1].isa;
      (v67)(v53, v50);
      v68 = Message.description.getter(v50);
      v70 = v69;
      (v67)(v66, v50);
      v71 = sub_24AEF599C(v68, v70, v113);

      *(v59 + 54) = v71;
      v72 = v86;
      _os_log_impl(&dword_24AECF000, v86, v88, "%s: Received (resource) message on %{public}s from %{private,mask.hash}s: metadata: %s'; message: %{public}s", v59, 0x3Eu);
      v73 = v87;
      swift_arrayDestroy();
      MEMORY[0x24C236490](v73, -1, -1);
      MEMORY[0x24C236490](v59, -1, -1);

      v74 = v94;
      v48 = v110;
      v75 = v94[22];
      if (v75)
      {
LABEL_16:
        v111 = v74[23];
        v76 = sub_24AF3557C();
        (*(*(v76 - 8) + 56))(v108, 1, 1, v76);
        v112 = v67;
        v77 = v55;
        v78 = v106;
        v89(v106, v93, v50);
        sub_24AF226D0(v102, v107, type metadata accessor for MessageContext);
        v79 = (LOBYTE(v48[10].isa) + 104) & ~LOBYTE(v48[10].isa);
        v80 = (isa + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
        v81 = (*(v100 + 80) + v80 + 8) & ~*(v100 + 80);
        v82 = swift_allocObject();
        *(v82 + 16) = 0;
        *(v82 + 24) = 0;
        v83 = v98;
        *(v82 + 32) = v99;
        *(v82 + 40) = v83;
        v84 = v111;
        *(v82 + 48) = v75;
        *(v82 + 56) = v84;
        v85 = v97;
        *(v82 + 64) = v96;
        *(v82 + 72) = v85;
        *(v82 + 80) = v95;
        *(v82 + 88) = v105;
        *(v82 + 96) = v77;
        v90(v82 + v79, v78, v50);
        *(v82 + v80) = v109;
        sub_24AEF9044(v107, v82 + v81, type metadata accessor for MessageContext);
        sub_24AED1164(v75);

        sub_24AED1164(v75);

        sub_24AF08F10(0, 0, v108, &unk_24AF3A090, v82);

        sub_24AED56FC(v75);
        v112(v93, v50);
        return;
      }
    }

    else
    {
      v67 = v48[1].isa;
      (v67)(v53, v20);

      v74 = v94;
      v75 = v94[22];
      if (v75)
      {
        goto LABEL_16;
      }
    }

    (v67)(v93, v50);
  }

  else
  {
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v40 = sub_24AF3529C();
    __swift_project_value_buffer(v40, qword_281392F20);

    v110 = sub_24AF3527C();
    v41 = sub_24AF3570C();

    if (os_log_type_enabled(v110, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v113[0] = v43;
      *v42 = 136446722;
      v44 = sub_24AF139CC();
      v46 = sub_24AEF599C(v44, v45, v113);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      *(v42 + 14) = sub_24AEF599C(v33, v32, v113);
      *(v42 + 22) = 2082;
      *(v42 + 24) = sub_24AEF599C(v112, a2, v113);
      _os_log_impl(&dword_24AECF000, v110, v41, "%{public}s: Ignoring delegate callback from wrong IDS service! Expected %{public}s, received: %{public}s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v43, -1, -1);
      MEMORY[0x24C236490](v42, -1, -1);
    }

    else
    {
      v47 = v110;
    }
  }
}

uint64_t sub_24AF207D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = v6;
  *(v7 + 48) = a5;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24AF20800, v6, 0);
}

uint64_t sub_24AF20800()
{
  v1 = *(v0 + 40);
  sub_24AF215DC(*(v0 + 16), *(v0 + 24), *(v0 + 48), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AF20868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_24AEF9DD0;

  return (sub_24AF21A70)(a3, a4, a5);
}

uint64_t sub_24AF2092C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_24AEF9DD0;

  return sub_24AF1D358(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_24AF20A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_24AF20A3C, v7, 0);
}

uint64_t sub_24AF20A3C()
{
  v1 = *(v0 + 72);
  sub_24AF1FBB8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AF20AA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_24AEF9DD0;

  return sub_24AF21C24(a1, a2, a3, a4, a6, a7);
}

uint64_t sub_24AF20B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AEF9DD0;

  return (sub_24AF22298)(a3);
}

uint64_t sub_24AF20C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AEF9DD0;

  return (sub_24AF22400)(a3);
}

uint64_t sub_24AF20CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AEF9DD0;

  return (sub_24AF22568)(a3);
}

uint64_t sub_24AF20D9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  v4 = *(v2 + 168);
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;

  return sub_24AED56FC(v3);
}

uint64_t sub_24AF20DEC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 184);
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;

  return sub_24AED56FC(v3);
}

uint64_t sub_24AF20E3C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 192);
  v4 = *(v2 + 200);
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;

  return sub_24AED56FC(v3);
}

uint64_t sub_24AF20E8C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 208);
  v4 = *(v2 + 216);
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;

  return sub_24AED56FC(v3);
}

uint64_t sub_24AF20EDC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 224);
  v4 = *(v2 + 232);
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;

  return sub_24AED56FC(v3);
}

uint64_t sub_24AF20F2C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 240);
  v4 = *(v2 + 248);
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;

  return sub_24AED56FC(v3);
}

uint64_t LocalMessaging.setReplyCallback(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 256);
  v4 = *(v2 + 264);
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;

  return sub_24AED56FC(v3);
}

uint64_t LocalMessaging.description.getter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for LocalMessaging();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_24AF35BEC();
  MEMORY[0x24C235440](v5);

  MEMORY[0x24C235440](32, 0xE100000000000000);
  v6 = MEMORY[0x24C235C50](v3, WitnessTable);
  MEMORY[0x24C235440](v6);

  MEMORY[0x24C235440](32, 0xE100000000000000);
  MEMORY[0x24C235440](v0[14], v0[15]);
  MEMORY[0x24C235440](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AF21110()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_281393428);
  __swift_project_value_buffer(v0, qword_281393428);
  return sub_24AF3528C();
}

uint64_t sub_24AF21194(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AF35C4C() & 1;
  }
}

uint64_t dispatch thunk of LocalMessaging.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(v2 + 496) + **(v2 + 496));
  v6 = *(*(v2 + 496) + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AEE1D70;

  return v9(a1, a2);
}

void sub_24AF215DC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = *v4;
  v9 = sub_24AF3521C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v37 - v15;
  swift_beginAccess();
  v17 = v4[18];
  if (*(v17 + 16))
  {

    v18 = sub_24AEDA254(a2);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      if (a3)
      {
        sub_24AF3500C();
      }

      else
      {
        if (a4)
        {
          v33 = a4;
        }

        else
        {
          v34 = sub_24AF34FEC();
          sub_24AF22C2C(&qword_27EFC07F8, MEMORY[0x277D08938]);
          v33 = swift_allocError();
          *v35 = 0xD00000000000001CLL;
          v35[1] = 0x800000024AF36E80;
          (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D08930], v34);
        }

        v37[0] = v33;
        v36 = a4;
        sub_24AF34FFC();
      }

      (*(v10 + 16))(v16, a2, v9);
      swift_beginAccess();
      sub_24AF09284(0, v16);
      swift_endAccess();

      return;
    }
  }

  if (qword_281392F18 != -1)
  {
    swift_once();
  }

  v21 = sub_24AF3529C();
  __swift_project_value_buffer(v21, qword_281392F20);
  (*(v10 + 16))(v14, a2, v9);
  v22 = sub_24AF3527C();
  v23 = sub_24AF3570C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37[0] = v25;
    *v24 = 136446466;
    v26 = sub_24AF139CC();
    v28 = sub_24AEF599C(v26, v27, v37);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    sub_24AF22C2C(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v29 = sub_24AF35C0C();
    v31 = v30;
    (*(v10 + 8))(v14, v9);
    v32 = sub_24AEF599C(v29, v31, v37);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_24AECF000, v22, v23, "%{public}s: Got didSend callback for unsent message! %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v25, -1, -1);
    MEMORY[0x24C236490](v24, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }
}

uint64_t sub_24AF21A70(void *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  v5 = a1[1];
  *(v4 + 72) = *a1;
  *(v4 + 80) = v5;
  *(v4 + 128) = *a3;
  v6 = *(a3 + 16);
  *(v4 + 88) = *(a3 + 8);
  *(v4 + 96) = v6;
  return MEMORY[0x2822009F8](sub_24AF21AA8, v3, 0);
}

uint64_t sub_24AF21AA8()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 160);
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 128);
    v5 = *(v0 + 80);
    v6 = *(v1 + 168);
    *(v0 + 40) = *(v0 + 72);
    *(v0 + 112) = v6;
    *(v0 + 48) = v5;
    *(v0 + 16) = v4;
    *(v0 + 24) = v3;

    v12 = (v2 + *v2);
    v7 = v2[1];
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_24AEF7C38;
    v9 = *(v0 + 56);

    return v12(v0 + 40, v9, v0 + 16);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24AF21C24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 16) = a1;
  *(v7 + 56) = *v6;
  v10 = *(type metadata accessor for MessageContext() - 8);
  *(v7 + 64) = v10;
  *(v7 + 72) = *(v10 + 64);
  *(v7 + 80) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a3;
  v14 = a3[1];
  *(v7 + 88) = v12;
  *(v7 + 96) = v13;
  *(v7 + 128) = *a5;
  v15 = *(a5 + 8);
  v16 = *(a5 + 16);
  *(v7 + 104) = v14;
  *(v7 + 112) = v15;
  *(v7 + 120) = v16;

  return MEMORY[0x2822009F8](sub_24AF21D78, v6, 0);
}

uint64_t sub_24AF21D78()
{
  v57 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = v2 == *(v0 + 16) && v3 == *(v0 + 24);
  if (v4 || (v5 = *(v1 + 112), v6 = *(v1 + 120), (sub_24AF35C4C() & 1) != 0))
  {
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 120);
    v8 = *(v0 + 24);
    v9 = sub_24AF3529C();
    __swift_project_value_buffer(v9, qword_281392F20);

    v10 = sub_24AF3527C();
    v11 = sub_24AF3572C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 112);
      v54 = *(v0 + 120);
      v13 = *(v0 + 56);
      v15 = *(v0 + 16);
      v14 = *(v0 + 24);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v56 = v17;
      *v16 = 136315907;
      v18 = sub_24AF139CC();
      v20 = sub_24AEF599C(v18, v19, &v56);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_24AEF599C(v15, v14, &v56);
      *(v16 + 22) = 2160;
      *(v16 + 24) = 1752392040;
      *(v16 + 32) = 2081;
      *(v16 + 34) = sub_24AEF599C(v12, v54, &v56);
      _os_log_impl(&dword_24AECF000, v10, v11, "%s: Received raw dictionary on %{public}s from %{private,mask.hash}s", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v17, -1, -1);
      MEMORY[0x24C236490](v16, -1, -1);
    }

    v21 = *(v0 + 48);
    v22 = *(v21 + 192);
    if (v22)
    {
      v23 = *(v0 + 120);
      v52 = *(v0 + 128);
      v50 = *(v0 + 96);
      v51 = *(v0 + 104);
      v25 = *(v0 + 80);
      v24 = *(v0 + 88);
      v53 = *(v0 + 112);
      v26 = *(v0 + 64);
      v27 = *(v0 + 72);
      v28 = *(v0 + 32);
      v29 = *(v0 + 40);
      v30 = *(v21 + 200);
      v31 = sub_24AF3557C();
      (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
      sub_24AF226D0(v29, v25, type metadata accessor for MessageContext);
      v32 = (*(v26 + 80) + 96) & ~*(v26 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      *(v33 + 32) = v22;
      *(v33 + 40) = v30;
      *(v33 + 48) = v50;
      *(v33 + 56) = v51;
      *(v33 + 64) = v52;
      *(v33 + 72) = v53;
      *(v33 + 80) = v23;
      *(v33 + 88) = v28;
      sub_24AEF9044(v25, v33 + v32, type metadata accessor for MessageContext);

      sub_24AED1164(v22);

      sub_24AF08F10(0, 0, v24, &unk_24AF3A080, v33);
    }
  }

  else
  {
    if (qword_281392F18 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 48);
    v35 = *(v0 + 24);
    v36 = sub_24AF3529C();
    __swift_project_value_buffer(v36, qword_281392F20);

    v37 = sub_24AF3527C();
    v38 = sub_24AF3570C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 56);
      v40 = *(v0 + 16);
      v55 = *(v0 + 24);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56 = v42;
      *v41 = 136446722;
      v43 = sub_24AF139CC();
      v45 = sub_24AEF599C(v43, v44, &v56);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      *(v41 + 14) = sub_24AEF599C(v2, v3, &v56);
      *(v41 + 22) = 2082;
      *(v41 + 24) = sub_24AEF599C(v40, v55, &v56);
      _os_log_impl(&dword_24AECF000, v37, v38, "%{public}s: Ignoring delegate callback from wrong IDS service! Expected %{public}s, received: %{public}s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v42, -1, -1);
      MEMORY[0x24C236490](v41, -1, -1);
    }
  }

  v47 = *(v0 + 80);
  v46 = *(v0 + 88);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_24AF22298(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AF222B8, v1, 0);
}

uint64_t sub_24AF222B8()
{
  v1 = v0[3];
  v2 = *(v1 + 208);
  v0[4] = v2;
  if (v2)
  {
    v0[5] = *(v1 + 216);

    v8 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_24AEF8584;
    v5 = v0[2];

    return v8(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24AF22400(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AF22420, v1, 0);
}

uint64_t sub_24AF22420()
{
  v1 = v0[3];
  v2 = *(v1 + 224);
  v0[4] = v2;
  if (v2)
  {
    v0[5] = *(v1 + 232);

    v8 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_24AEF87FC;
    v5 = v0[2];

    return v8(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24AF22568(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AF22588, v1, 0);
}

uint64_t sub_24AF22588()
{
  v1 = v0[3];
  v2 = *(v1 + 240);
  v0[4] = v2;
  if (v2)
  {
    v0[5] = *(v1 + 248);

    v8 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_24AEF8584;
    v5 = v0[2];

    return v8(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24AF226D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AF22738(uint64_t a1)
{
  v3 = *(type metadata accessor for MessageContext() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v15 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = v1 + ((*(v3 + 80) + 96) & ~*(v3 + 80));
  v12 = *(v1 + 64);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_24AEF9DD0;

  return sub_24AEF419C(a1, v4, v5, v6, v7, v8, v9, v12);
}

uint64_t sub_24AF22874(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(type metadata accessor for Message() - 8);
  v7 = (*(v6 + 64) + ((*(v6 + 80) + 104) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for MessageContext() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v20 = *(v1 + 24);
  v21 = *(v1 + 16);
  v18 = *(v1 + 56);
  v19 = *(v1 + 48);
  v10 = *(v1 + 64);
  v17 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = *(v1 + 96);
  v13 = *(v1 + v7);
  v14 = *(v1 + 80);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_24AEF9DD0;

  return sub_24AEF4064(a1, v21, v20, v19, v18, v10, v17, v14);
}

uint64_t sub_24AF22A2C(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(type metadata accessor for Message() - 8);
  v7 = (*(v6 + 80) + 104) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessageContext() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v20 = *(v1 + 24);
  v21 = *(v1 + 16);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v18 = *(v1 + 72);
  v19 = *(v1 + 48);
  v13 = *(v1 + 88);
  v14 = *(v1 + 96);
  v15 = *(v1 + 80);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_24AEF9DD0;

  return sub_24AEF31B4(a1, v21, v20, v19, v11, v12, v18, v15);
}

uint64_t sub_24AF22BCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24AF22C2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AF22C74(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessagingOptions() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AEF9DD0;

  return sub_24AF1AC8C(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_24AF22DBC(uint64_t a1)
{
  v4 = *(type metadata accessor for MessagingOptions() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AEF9DD0;

  return sub_24AF1CCF8(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_24AF22EEC(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for Message() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for MessagingOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[6];
  v15 = *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_24AEE555C;

  return sub_24AF19810(a1, v12, v13, v14, v1 + v8, v1 + v11, v15);
}

uint64_t sub_24AF23080(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(type metadata accessor for Message() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for MessagingOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[4];
  v13 = *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24AEE555C;

  return sub_24AF1C66C(a1, v12, v1 + v8, v1 + v11, v13);
}

uint64_t sub_24AF23200(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for Message() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for MessagingOptions() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[6];
  v15 = *(v1 + v8);
  v16 = *(v1 + v11);
  v17 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_24AEF9DD0;

  return sub_24AF17BA8(a1, v12, v13, v14, v1 + v7, v15, v1 + v10, v16);
}

uint64_t sub_24AF233C4(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(sub_24AF3513C() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for MessagingOptions() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for Message() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = v1[4];
  v17 = *(v1 + v9);
  v18 = *(v1 + v10);
  v19 = *(v1 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_24AEF9DD0;

  return sub_24AF1BD98(a1, v16, v1 + v8, v17, v18, v1 + v12, v1 + v15, v19);
}

uint64_t sub_24AF235DC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for Message() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessagingOptions() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v22 = v1[2];
  v14 = v1[6];
  v15 = (v1 + v11);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v1 + v12);
  v19 = *(v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_24AEF9DD0;

  return sub_24AF16418(a1, v22, v13, v14, v1 + v7, v1 + v10, v16, v17);
}

uint64_t sub_24AF237A0(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(type metadata accessor for MessagingOptions() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(type metadata accessor for Message() - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = v1[7];
  v16 = *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_24AEF9DD0;

  return sub_24AF1B5A4(a1, v12, v13, v14, v15, v1 + v8, v1 + v11, v16);
}

uint64_t sub_24AF23964(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AF35C4C() & 1;
  }
}

uint64_t sub_24AF239F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1058, &qword_24AF3A438);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_24AF35A2C();
  __swift_allocate_value_buffer(v4, qword_281392DA0);
  v5 = __swift_project_value_buffer(v4, qword_281392DA0);
  sub_24AF35A1C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.messagingCoder.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281392D98 != -1)
  {
    swift_once();
  }

  v2 = sub_24AF35A2C();
  v3 = __swift_project_value_buffer(v2, qword_281392DA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24AF23BD0()
{
  v0 = sub_24AF35A9C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24AF23C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24AF23CAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_24AF23D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24AF23D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24AF23DF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24AF23BD0();
  *a2 = result;
  return result;
}

uint64_t sub_24AF23E28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AF23C20(*v1);
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_24AF23E78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24AF23C1C();
  *a1 = result;
  return result;
}

uint64_t sub_24AF23EA0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_24AF254AC();
  *a2 = result;
  return result;
}

uint64_t sub_24AF23ECC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24AF23F20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Message.MessageError.hashValue.getter()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t sub_24AF2400C()
{
  sub_24AF35D0C();
  Message.MessageError.hash(into:)();
  return sub_24AF35D4C();
}

uint64_t Message.payloadLength.getter(uint64_t result)
{
  v2 = (v1 + *(result + 40));
  v3 = *v2;
  v4 = v2[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v5)
    {
      return BYTE6(v4);
    }

    v9 = __OFSUB__(HIDWORD(v3), v3);
    v10 = HIDWORD(v3) - v3;
    if (!v9)
    {
      return v10;
    }

    goto LABEL_11;
  }

  if (v5 != 2)
  {
    return 0;
  }

  v8 = v3 + 16;
  v6 = *(v3 + 16);
  v7 = *(v8 + 8);
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t Message.init<A>(type:version:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v43 = a6;
  v45 = a3;
  v12 = sub_24AF35A2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(a4 - 8);
  v47 = a1;
  v17 = a1;
  v18 = a4;
  (*(v46 + 16))(a7, v17, a4);
  v42 = type metadata accessor for Message();
  v19 = *(v42 + 36);
  v48 = a7;
  *(a7 + v19) = a2;
  v20 = sub_24AF350CC();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_24AF350BC();
  if (qword_281392D98 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v12, qword_281392DA0);
  (*(v13 + 16))(v16, v23, v12);
  v50[3] = MEMORY[0x277D839B0];
  LOBYTE(v50[0]) = 1;
  v24 = sub_24AF350AC();
  sub_24AF09444(v50, v16);
  v24(v49, 0);
  v25 = sub_24AF10020(a5, a5);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = *(a5 - 8);
  v29 = *(v28 + 72);
  v30 = *(v28 + 80);
  swift_allocObject();
  v31 = sub_24AF354BC();
  v32 = v45;
  (*(v28 + 16))(v33, v45, a5);
  v50[0] = sub_24AF09258(v31);
  sub_24AF3550C();
  v50[5] = v43;
  swift_getWitnessTable();
  v34 = v44;
  v35 = sub_24AF3509C();
  v37 = v36;

  (*(v28 + 8))(v32, a5);
  if (v34)
  {
    v38 = *(v46 + 8);
    v38(v47, v18);

    return (v38)(v48, v18);
  }

  else
  {
    (*(v46 + 8))(v47, v18);

    v40 = (v48 + *(v42 + 40));
    *v40 = v35;
    v40[1] = v37;
  }

  return result;
}

uint64_t Message.extract<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v33 = a4;
  v7 = sub_24AF3579C();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = sub_24AF35A2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24AF3508C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_24AF3507C();
  if (qword_281392D98 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v11, qword_281392DA0);
  (*(v12 + 16))(v15, v19, v11);
  v37[3] = MEMORY[0x277D839B0];
  LOBYTE(v37[0]) = 1;
  v20 = sub_24AF3506C();
  sub_24AF09444(v37, v15);
  v20(v36, 0);
  sub_24AF3550C();
  v21 = (v4 + *(a1 + 40));
  v22 = *v21;
  v23 = v21[1];
  v37[5] = v34;
  swift_getWitnessTable();
  v24 = v35;
  sub_24AF3505C();
  if (v24)
  {
  }

  swift_getWitnessTable();
  sub_24AF356CC();
  v25 = *(a2 - 8);
  if ((*(v25 + 48))(v10, 1, a2) == 1)
  {
    (*(v31 + 8))(v10, v32);

    v26 = *(a1 + 16);
    v27 = *(a1 + 24);
    type metadata accessor for Message.MessageError();
    swift_getWitnessTable();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
  }

  (*(v25 + 32))(v33, v10, a2);
}

uint64_t Message.encode(to:)(void *a1, uint64_t a2)
{
  v19[0] = a2;
  v3 = *(a2 + 24);
  v19[2] = *(a2 + 16);
  type metadata accessor for Message.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_24AF35BDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v19[1];
  v11 = v4;
  sub_24AF35D6C();
  LOBYTE(v20) = 0;
  v12 = *(v3 + 16);
  v13 = v19[3];
  sub_24AF35BCC();
  if (!v13)
  {
    v14 = v19[0];
    v15 = *(v10 + *(v19[0] + 36));
    LOBYTE(v20) = 1;
    sub_24AF35BBC();
    v16 = (v10 + *(v14 + 40));
    v17 = v16[1];
    v20 = *v16;
    v21 = v17;
    v22 = 2;
    sub_24AEE5154(v20, v17);
    sub_24AF108C4();
    sub_24AF35BCC();
    sub_24AED6198(v20, v21);
  }

  return (*(v5 + 8))(v8, v11);
}

uint64_t Message.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v29 = *(a2 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](a1);
  v31 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Message.CodingKeys();
  swift_getWitnessTable();
  v9 = sub_24AF35B4C();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v30 = a3;
  v13 = type metadata accessor for Message();
  v27 = *(v13 - 8);
  v14 = *(v27 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = v12;
  v18 = v35;
  sub_24AF35D5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v29;
  LOBYTE(v36) = 0;
  v20 = *(v30 + 8);
  v22 = v31;
  v21 = v32;
  v23 = v34;
  sub_24AF35B2C();
  (*(v19 + 32))(v16, v22, a2);
  LOBYTE(v36) = 1;
  *&v16[*(v13 + 36)] = sub_24AF35B1C();
  v37 = 2;
  sub_24AF10918();
  sub_24AF35B2C();
  (*(v33 + 8))(v21, v23);
  *&v16[*(v13 + 40)] = v36;
  v24 = v27;
  (*(v27 + 16))(v28, v16, v13);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return (*(v24 + 8))(v16, v13);
}

uint64_t Message.description.getter(uint64_t a1)
{
  sub_24AF3592C();
  swift_getWitnessTable();
  v3 = sub_24AF35BEC();
  MEMORY[0x24C235440](v3);

  MEMORY[0x24C235440](0x203A6570797428, 0xE700000000000000);
  v4 = *(a1 + 16);
  sub_24AF35C3C();
  MEMORY[0x24C235440](0x6F6973726576203BLL, 0xEB00000000203A6ELL);
  v12 = *(v1 + *(a1 + 36));
  v5 = sub_24AF35C0C();
  MEMORY[0x24C235440](v5);

  result = MEMORY[0x24C235440](0xD000000000000010, 0x800000024AF37650);
  v7 = (v1 + *(a1 + 40));
  v8 = *v7;
  v9 = v7[1] >> 62;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_9;
    }

    v10 = v8 + 16;
    v8 = *(v8 + 16);
    if (!__OFSUB__(*(v10 + 8), v8))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v9)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v8), v8))
  {
LABEL_9:
    v11 = sub_24AF35C0C();
    MEMORY[0x24C235440](v11);

    MEMORY[0x24C235440](41, 0xE100000000000000);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AF25098(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24AF25120(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xC)
  {
    v7 = 12;
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
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xC)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
    if (((4 * v17) & 0xC) != 0)
    {
      return 16 - ((4 * v17) & 0xC | (v17 >> 2));
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_24AF25278(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xC)
  {
    v7 = 12;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xC)
      {
        v19 = ((((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0xC)
        {
          *v19 = a2 - 13;
          v19[1] = 0;
        }

        else
        {
          *v19 = 0;
          v19[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_24AF254C8()
{
  result = qword_27EFC1060;
  if (!qword_27EFC1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC1060);
  }

  return result;
}

unint64_t sub_24AF2551C()
{
  v1 = 0x6772614C6F6F742ELL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000017;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000026;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24AF255AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v23 - v9;
  sub_24AF11D88(a3, v23 - v9);
  v11 = sub_24AF3557C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24AF27840(v10);
  }

  else
  {
    sub_24AF3556C();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24AF3551C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24AF353CC() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_24AF27840(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AF27840(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t Heartbeater.__allocating_init(configuration:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Heartbeater.init(configuration:)(a1);
  return v5;
}

uint64_t Heartbeater.events.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyMessaging11Heartbeater_stream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F88, &qword_24AF39AA0);
  a1[3] = v4;
  a1[4] = sub_24AF260C0();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_0, v1 + v3, v4);
}

uint64_t HeartbeatConfiguration.init(durationBeforeFirstHeartbeat:durationBetweenHeartbeats:numberOfHeartbeatsBeforeFailing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t HeartbeatConfiguration.durationBeforeFirstHeartbeat.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t HeartbeatConfiguration.durationBetweenHeartbeats.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t static HeartbeatConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  if (sub_24AF35D9C())
  {
    return sub_24AF35D9C() & (v6 == v11);
  }

  else
  {
    return 0;
  }
}

uint64_t HeartbeatConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24AF35DAC();
  sub_24AF35DAC();
  return MEMORY[0x24C235D70](v5);
}

uint64_t HeartbeatConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24AF35D0C();
  sub_24AF35DAC();
  sub_24AF35DAC();
  MEMORY[0x24C235D70](v5);
  return sub_24AF35D4C();
}

uint64_t sub_24AF25A68()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24AF35D0C();
  sub_24AF35DAC();
  sub_24AF35DAC();
  MEMORY[0x24C235D70](v5);
  return sub_24AF35D4C();
}

uint64_t sub_24AF25AE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24AF35DAC();
  sub_24AF35DAC();
  return MEMORY[0x24C235D70](v5);
}

uint64_t sub_24AF25B3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24AF35D0C();
  sub_24AF35DAC();
  sub_24AF35DAC();
  MEMORY[0x24C235D70](v5);
  return sub_24AF35D4C();
}

uint64_t sub_24AF25BB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  if (sub_24AF35D9C())
  {
    return sub_24AF35D9C() & (v6 == v11);
  }

  else
  {
    return 0;
  }
}

uint64_t Heartbeater.Event.hashValue.getter()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t Heartbeater.init(configuration:)(__int128 *a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v29 = &v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1070, &qword_24AF3A540);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v13 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F88, &qword_24AF39AA0);
  v30 = *(v16 - 8);
  v31 = v16;
  v17 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  v20 = a1[1];
  v33 = *a1;
  v34 = v20;
  v35 = *(a1 + 4);
  (*(v5 + 104))(v8, *MEMORY[0x277D85778], v4);
  sub_24AF3558C();
  (*(v5 + 8))(v8, v4);
  v21 = sub_24AF3557C();
  v22 = v29;
  (*(*(v21 - 8) + 56))(v29, 1, 1, v21);
  (*(v10 + 16))(v13, v15, v9);
  v23 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = v34;
  *(v24 + 32) = v33;
  *(v24 + 48) = v25;
  *(v24 + 64) = v35;
  (*(v10 + 32))(v24 + v23, v13, v9);
  v26 = sub_24AF255AC(0, 0, v22, &unk_24AF3A558, v24);

  sub_24AF355AC();
  (*(v10 + 8))(v15, v9);
  v27 = v32;
  (*(v30 + 32))(v32 + OBJC_IVAR____TtC15FindMyMessaging11Heartbeater_stream, v19, v31);
  *(v27 + 16) = v26;
  return v27;
}

unint64_t sub_24AF260C0()
{
  result = qword_27EFC0F90;
  if (!qword_27EFC0F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0F88, &qword_24AF39AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0F90);
  }

  return result;
}

uint64_t sub_24AF26124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_24AF3554C();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = sub_24AF359DC();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC10B0, &qword_24AF3A6B8);
  v5[19] = v12;
  v13 = *(v12 - 8);
  v5[20] = v13;
  v14 = *(v13 + 64) + 15;
  v5[21] = swift_task_alloc();
  v15 = sub_24AF359EC();
  v5[22] = v15;
  v16 = *(v15 - 8);
  v5[23] = v16;
  v17 = *(v16 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF2631C, 0, 0);
}

uint64_t sub_24AF2631C()
{
  v1 = v0[25];
  v2 = v0[10];
  v4 = *v2;
  v3 = v2[1];
  v0[7] = 10;
  v0[26] = sub_24AF27D60();
  v5 = sub_24AF35D7C();
  v7 = v6;
  if (sub_24AF35D8C())
  {
    v5 = 1000000000000000000;
    v7 = 0;
  }

  sub_24AF35CBC();
  v8 = swift_task_alloc();
  v0[27] = v8;
  *v8 = v0;
  v8[1] = sub_24AF26464;
  v9 = v0[25];

  return sub_24AF278A8(v4, v3, v5, v7, 0);
}

uint64_t sub_24AF26464()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 184);
  v6 = *(*v1 + 176);
  v10 = *v1;
  v2[28] = v0;

  v7 = *(v5 + 8);
  v2[29] = v7;
  v2[30] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  if (v0)
  {
    v8 = sub_24AF26960;
  }

  else
  {
    v8 = sub_24AF265E8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_24AF265E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 80);
  v6 = v5[4];
  *(v4 + 248) = v6;
  if (v6 < 0)
  {
    __break(1u);
    return MEMORY[0x2822008C8](a1, a2, a3, a4);
  }

  if (v6)
  {
    v7 = v5[2];
    *(v4 + 256) = v7;
    v8 = v5[3];
    *(v4 + 264) = v8;
    *(v4 + 272) = 0;
    v9 = *(v4 + 208);
    v10 = *(v4 + 168);
    v12 = *(v4 + 152);
    v11 = *(v4 + 160);
    v40 = *(v4 + 144);
    v36 = *(v4 + 192);
    v37 = *(v4 + 136);
    v13 = *(v4 + 128);
    v38 = *(v4 + 176);
    v39 = *(v4 + 120);
    v14 = *(v4 + 88);
    *(v4 + 33) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
    sub_24AF355CC();
    (*(v11 + 8))(v10, v12);
    *(v4 + 72) = 10;
    v15 = sub_24AF35D7C();
    v17 = v16;
    if (sub_24AF35D8C())
    {
      v15 = 1000000000000000000;
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    sub_24AF35CBC();
    *(v4 + 40) = v7;
    *(v4 + 48) = v8;
    *(v4 + 16) = v15;
    *(v4 + 24) = v18;
    *(v4 + 32) = 0;
    v19 = sub_24AF27DB4(&qword_27EFC10C0, MEMORY[0x277D85928]);
    sub_24AF35C9C();
    sub_24AF27DB4(&qword_27EFC10C8, MEMORY[0x277D858F8]);
    sub_24AF359FC();
    v20 = *(v13 + 8);
    *(v4 + 280) = v20;
    *(v4 + 288) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v37, v39);
    v21 = *(MEMORY[0x277D85A58] + 4);
    v22 = swift_task_alloc();
    *(v4 + 296) = v22;
    *v22 = v4;
    v22[1] = sub_24AF26AFC;
    v23 = *(v4 + 192);
    a3 = *(v4 + 176);
    a1 = *(v4 + 144);
    a2 = v4 + 16;
    a4 = v19;

    return MEMORY[0x2822008C8](a1, a2, a3, a4);
  }

  v25 = *(v4 + 160);
  v24 = *(v4 + 168);
  v26 = *(v4 + 152);
  v27 = *(v4 + 88);
  *(v4 + 34) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
  sub_24AF355CC();
  (*(v25 + 8))(v24, v26);
  sub_24AF355DC();
  v29 = *(v4 + 192);
  v28 = *(v4 + 200);
  v30 = *(v4 + 168);
  v32 = *(v4 + 136);
  v31 = *(v4 + 144);
  v33 = *(v4 + 112);

  v34 = *(v4 + 8);

  return v34();
}

uint64_t sub_24AF26960()
{
  v1 = *(v0 + 224);
  *(v0 + 64) = v1;
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
    sub_24AF355DC();
    (*(v6 + 8))(v5, v8);

    v10 = *(v0 + 192);
    v9 = *(v0 + 200);
    v11 = *(v0 + 168);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 112);
  }

  else
  {
    v16 = *(v0 + 192);
    v17 = *(v0 + 200);
    v18 = *(v0 + 168);
    v20 = *(v0 + 136);
    v19 = *(v0 + 144);
    v21 = *(v0 + 112);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24AF26AFC()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v11 = *v1;
  *(*v1 + 304) = v0;

  v4 = *(v2 + 288);
  if (v0)
  {
    (*(v2 + 280))(*(v2 + 144), *(v2 + 120));
    v5 = sub_24AF26FC4;
  }

  else
  {
    v7 = *(v2 + 232);
    v6 = *(v2 + 240);
    v8 = *(v2 + 192);
    v9 = *(v2 + 176);
    (*(v2 + 280))(*(v2 + 144), *(v2 + 120));
    v7(v8, v9);
    v5 = sub_24AF26C58;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AF26C58()
{
  v1 = *(v0 + 272) + 1;
  if (v1 == *(v0 + 248))
  {
    v3 = *(v0 + 160);
    v2 = *(v0 + 168);
    v4 = *(v0 + 152);
    v5 = *(v0 + 88);
    *(v0 + 34) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
    sub_24AF355CC();
    (*(v3 + 8))(v2, v4);
    sub_24AF355DC();
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 168);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 112);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    *(v0 + 272) = v1;
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v16 = *(v0 + 208);
    v17 = *(v0 + 168);
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    v37 = *(v0 + 144);
    v33 = *(v0 + 192);
    v34 = *(v0 + 136);
    v20 = *(v0 + 128);
    v35 = *(v0 + 176);
    v36 = *(v0 + 120);
    v21 = *(v0 + 88);
    *(v0 + 33) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
    sub_24AF355CC();
    (*(v18 + 8))(v17, v19);
    *(v0 + 72) = 10;
    v22 = sub_24AF35D7C();
    v24 = v23;
    if (sub_24AF35D8C())
    {
      v22 = 1000000000000000000;
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    sub_24AF35CBC();
    *(v0 + 40) = v15;
    *(v0 + 48) = v14;
    *(v0 + 16) = v22;
    *(v0 + 24) = v25;
    *(v0 + 32) = 0;
    v26 = sub_24AF27DB4(&qword_27EFC10C0, MEMORY[0x277D85928]);
    sub_24AF35C9C();
    sub_24AF27DB4(&qword_27EFC10C8, MEMORY[0x277D858F8]);
    sub_24AF359FC();
    v27 = *(v20 + 8);
    *(v0 + 280) = v27;
    *(v0 + 288) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v34, v36);
    v28 = *(MEMORY[0x277D85A58] + 4);
    v29 = swift_task_alloc();
    *(v0 + 296) = v29;
    *v29 = v0;
    v29[1] = sub_24AF26AFC;
    v30 = *(v0 + 192);
    v31 = *(v0 + 176);
    v32 = *(v0 + 144);

    return MEMORY[0x2822008C8](v32, v0 + 16, v31, v26);
  }
}

uint64_t sub_24AF26FC4()
{
  v1 = *(v0 + 240);
  (*(v0 + 232))(*(v0 + 192), *(v0 + 176));
  v2 = *(v0 + 304);
  *(v0 + 64) = v2;
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
    sub_24AF355DC();
    (*(v7 + 8))(v6, v9);

    v11 = *(v0 + 192);
    v10 = *(v0 + 200);
    v12 = *(v0 + 168);
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v15 = *(v0 + 112);
  }

  else
  {
    v17 = *(v0 + 192);
    v18 = *(v0 + 200);
    v19 = *(v0 + 168);
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);
    v22 = *(v0 + 112);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24AF27170(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AEE555C;

  return sub_24AF26124(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_24AF27270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC10A8, &qword_24AF3A6B0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2);
  result = (*(v3 + 88))(v6, v2);
  if (result != *MEMORY[0x277D85738])
  {
    if (result == *MEMORY[0x277D85740])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
      return sub_24AF3562C();
    }

    else
    {
      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t Heartbeater.deinit()
{
  v1 = *(v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
  sub_24AF3562C();

  v2 = *(v0 + 16);

  v3 = OBJC_IVAR____TtC15FindMyMessaging11Heartbeater_stream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F88, &qword_24AF39AA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t Heartbeater.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
  sub_24AF3562C();

  v2 = *(v0 + 2);

  v3 = OBJC_IVAR____TtC15FindMyMessaging11Heartbeater_stream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F88, &qword_24AF39AA0);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

unint64_t sub_24AF2759C()
{
  result = qword_27EFC1080;
  if (!qword_27EFC1080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC1080);
  }

  return result;
}

unint64_t sub_24AF275F4()
{
  result = qword_27EFC1088;
  if (!qword_27EFC1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC1088);
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

uint64_t sub_24AF2765C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AF2767C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

uint64_t type metadata accessor for Heartbeater()
{
  result = qword_27EFC1090;
  if (!qword_27EFC1090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AF27714()
{
  sub_24AF277E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24AF277E0()
{
  if (!qword_27EFC10A0)
  {
    v0 = sub_24AF3561C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC10A0);
    }
  }
}

uint64_t sub_24AF27840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AF278A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24AF359DC();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24AF279A8, 0, 0);
}

uint64_t sub_24AF279A8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_24AF359EC();
  v7 = sub_24AF27DB4(&qword_27EFC10C0, MEMORY[0x277D85928]);
  sub_24AF35C9C();
  sub_24AF27DB4(&qword_27EFC10C8, MEMORY[0x277D858F8]);
  sub_24AF359FC();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_24AF27B38;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_24AF27B38()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AF27CF4, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_24AF27CF4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_24AF27D60()
{
  result = qword_27EFC10B8;
  if (!qword_27EFC10B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC10B8);
  }

  return result;
}

uint64_t sub_24AF27DB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MessageContext.outgoingResponseIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageContext() + 20);
  v4 = sub_24AF3521C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MessageContext()
{
  result = qword_281393170;
  if (!qword_281393170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageContext.fromID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessageContext() + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t MessageContext.toID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessageContext() + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t MessageContext.serviceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageContext() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MessageContext.serverReceivedTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageContext() + 44);
  v4 = sub_24AF351BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MessageContext.senderCorrelationIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageContext() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_24AF28A28(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x44496D6F7266;
    if (a1 != 2)
    {
      v5 = 1145663348;
    }

    if (a1 <= 1u)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0xD00000000000001BLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24AF28B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AF2A0D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AF28B80(uint64_t a1)
{
  v2 = sub_24AF28FBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AF28BBC(uint64_t a1)
{
  v2 = sub_24AF28FBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC10D0, &qword_24AF3A6C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF28FBC();
  sub_24AF35D6C();
  v30 = 0;
  sub_24AF3521C();
  sub_24AF29AAC(&qword_27EFC0B50, MEMORY[0x277CC95F0]);
  sub_24AF35B8C();
  if (!v2)
  {
    v11 = type metadata accessor for MessageContext();
    v12 = v11[5];
    v30 = 1;
    sub_24AF35BCC();
    v13 = v3 + v11[6];
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v30 = *v13;
    v31 = v14;
    v32 = v15;
    v33 = 2;
    sub_24AF036CC();

    sub_24AF35BCC();

    v16 = v3 + v11[7];
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
    v30 = *v16;
    v31 = v18;
    v32 = v17;
    v33 = 3;

    sub_24AF35BCC();

    v20 = (v3 + v11[8]);
    v21 = *v20;
    v22 = v20[1];
    v30 = 4;
    sub_24AF35B9C();
    v23 = *(v3 + v11[9]);
    v30 = 5;
    sub_24AF35BAC();
    v24 = *(v3 + v11[10]);
    v30 = 6;
    sub_24AF35BAC();
    v25 = v11[11];
    v30 = 7;
    sub_24AF351BC();
    sub_24AF29AAC(&qword_27EFC10E0, MEMORY[0x277CC9578]);
    sub_24AF35BCC();
    v26 = (v3 + v11[12]);
    v27 = *v26;
    v28 = v26[1];
    v30 = 8;
    sub_24AF35B9C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24AF28FBC()
{
  result = qword_27EFC10D8;
  if (!qword_27EFC10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC10D8);
  }

  return result;
}

uint64_t MessageContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_24AF351BC();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24AF3521C();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC10E8, &qword_24AF3A6D0);
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for MessageContext();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF28FBC();
  v50 = v16;
  v22 = v51;
  sub_24AF35D5C();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v51 = a1;
  v52 = 0;
  sub_24AF29AAC(&qword_27EFC0B80, MEMORY[0x277CC95F0]);
  v23 = v47;
  sub_24AF35AEC();
  sub_24AF297EC(v23, v20);
  v52 = 1;
  sub_24AF35B2C();
  v41 = v6;
  (*(v46 + 32))(&v20[v17[5]], v9, v6);
  v55 = 2;
  sub_24AF038A8();
  v47 = 0;
  sub_24AF35B2C();
  v24 = v53;
  v25 = v54;
  v26 = &v20[v17[6]];
  *v26 = v52;
  *(v26 + 1) = v24;
  *(v26 + 2) = v25;
  v55 = 3;
  sub_24AF35B2C();
  v27 = v53;
  v28 = v54;
  v29 = &v20[v17[7]];
  *v29 = v52;
  *(v29 + 1) = v27;
  *(v29 + 2) = v28;
  v52 = 4;
  v30 = sub_24AF35AFC();
  v31 = v51;
  v32 = &v20[v17[8]];
  *v32 = v30;
  v32[1] = v33;
  v52 = 5;
  v20[v17[9]] = sub_24AF35B0C() & 1;
  v52 = 6;
  v20[v17[10]] = sub_24AF35B0C() & 1;
  v52 = 7;
  sub_24AF29AAC(&qword_27EFC10F0, MEMORY[0x277CC9578]);
  v34 = v43;
  v35 = v45;
  sub_24AF35B2C();
  (*(v44 + 32))(&v20[v17[11]], v34, v35);
  v52 = 8;
  v36 = sub_24AF35AFC();
  v38 = v37;
  (*(v48 + 8))(v50, v49);
  v39 = &v20[v17[12]];
  *v39 = v36;
  v39[1] = v38;
  sub_24AF2985C(v20, v42);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return sub_24AF298C0(v20);
}

uint64_t sub_24AF297EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AF2985C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AF298C0(uint64_t a1)
{
  v2 = type metadata accessor for MessageContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MessageContext.description.getter()
{
  v1 = v0;
  sub_24AF3592C();

  v2 = type metadata accessor for MessageContext();
  sub_24AF29AAC(&qword_27EFC10F8, type metadata accessor for MessageContext);
  v3 = sub_24AF35BEC();
  MEMORY[0x24C235440](v3);

  MEMORY[0x24C235440](0x3A44496D6F726620, 0xE800000000000000);
  MEMORY[0x24C235440](*(v1 + v2[6] + 8), *(v1 + v2[6] + 16));
  MEMORY[0x24C235440](0x3A44496F7420, 0xE600000000000000);
  MEMORY[0x24C235440](*(v1 + v2[7] + 8), *(v1 + v2[7] + 16));
  MEMORY[0x24C235440](0x6563697672657320, 0xE90000000000003ALL);
  MEMORY[0x24C235440](*(v1 + v2[8]), *(v1 + v2[8] + 8));
  MEMORY[0x24C235440](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AF29AAC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24AF29B20()
{
  sub_24AF03B34();
  if (v0 <= 0x3F)
  {
    sub_24AF3521C();
    if (v1 <= 0x3F)
    {
      sub_24AF351BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MessageContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AF29D34()
{
  result = qword_27EFC1100;
  if (!qword_27EFC1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC1100);
  }

  return result;
}

unint64_t sub_24AF29D8C()
{
  result = qword_27EFC1108;
  if (!qword_27EFC1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC1108);
  }

  return result;
}

unint64_t sub_24AF29DE4()
{
  result = qword_27EFC1110;
  if (!qword_27EFC1110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC1110);
  }

  return result;
}

uint64_t sub_24AF29E38(void *a1)
{
  v2 = [a1 fromID];
  if (!v2)
  {
    if (qword_27EFC0728 != -1)
    {
      swift_once();
    }

    v5 = sub_24AF3529C();
    __swift_project_value_buffer(v5, qword_27EFC4C00);
    v6 = a1;
    v7 = sub_24AF3527C();
    v8 = sub_24AF3570C();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_15;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    v12 = "Ignoring IDSMessageContext without a fromID: %@";
    goto LABEL_14;
  }

  v3 = v2;
  sub_24AF353AC();

  LOBYTE(v3) = sub_24AF3540C();

  if ((v3 & 1) == 0)
  {
    v13 = [a1 senderCorrelationIdentifier];
    if (v13)
    {
      v7 = v13;
      v4 = 1;
LABEL_16:

      return v4;
    }

    if (qword_27EFC0728 != -1)
    {
      swift_once();
    }

    v14 = sub_24AF3529C();
    __swift_project_value_buffer(v14, qword_27EFC4C00);
    v15 = a1;
    v7 = sub_24AF3527C();
    v8 = sub_24AF3570C();

    if (!os_log_type_enabled(v7, v8))
    {
LABEL_15:
      v4 = 0;
      goto LABEL_16;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v15;
    *v10 = v15;
    v16 = v15;
    v12 = "Ignoring IDSMessageContext without a correlationIdentifier: %@";
LABEL_14:
    _os_log_impl(&dword_24AECF000, v7, v8, v12, v9, 0xCu);
    sub_24AEE2E10(v10, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v10, -1, -1);
    MEMORY[0x24C236490](v9, -1, -1);
    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_24AF2A0D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x800000024AF37710 == a2;
  if (v3 || (sub_24AF35C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024AF37730 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D6F7266 && a2 == 0xE600000000000000 || (sub_24AF35C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1145663348 && a2 == 0xE400000000000000 || (sub_24AF35C4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024AF37750 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024AF37230 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024AF37770 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024AF37790 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024AF377B0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_24AF35C4C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24AF2A3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24AF2A410(uint64_t a1)
{
  v1 = a1;
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_24AF3585C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v45 = MEMORY[0x277D84F90];
    sub_24AEF6188(0, v2 & ~(v2 >> 63), 0);
    v40 = v45;
    if (v38)
    {
      v3 = sub_24AF3580C();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_24AF357DC();
      v4 = *(v1 + 36);
    }

    v42 = v3;
    v43 = v4;
    v44 = v38 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v36 = v1 + 56;
      v35 = v1 + 64;
      v37 = v2;
      while (v6 < v2)
      {
        v8 = __OFADD__(v6, 1);
        v9 = v6 + 1;
        if (v8)
        {
          goto LABEL_36;
        }

        v39 = v9;
        v11 = v42;
        v10 = v43;
        v12 = v44;
        v13 = v1;
        sub_24AF319B4(v42, v43, v44, v1);
        v15 = v14;
        v16 = [v14 uniqueID];
        if (!v16)
        {
          goto LABEL_41;
        }

        v17 = v16;
        v18 = sub_24AF353AC();
        v20 = v19;

        v21 = v40;
        v45 = v40;
        v23 = *(v40 + 16);
        v22 = *(v40 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_24AEF6188((v22 > 1), v23 + 1, 1);
          v21 = v45;
        }

        *(v21 + 16) = v23 + 1;
        v24 = v21 + 16 * v23;
        *(v24 + 32) = v18;
        *(v24 + 40) = v20;
        v40 = v21;
        if (v38)
        {
          if (!v12)
          {
            goto LABEL_42;
          }

          v1 = v13;
          if (sub_24AF3582C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v37;
          v6 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC11A0, &qword_24AF3A928);
          v7 = sub_24AF3569C();
          sub_24AF3588C();
          v7(v41, 0);
          if (v39 == v37)
          {
LABEL_33:
            sub_24AF04640(v42, v43, v44);
            return;
          }
        }

        else
        {
          if (v12)
          {
            goto LABEL_43;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v1 = v13;
          v25 = 1 << *(v13 + 32);
          if (v11 >= v25)
          {
            goto LABEL_37;
          }

          v26 = v11 >> 6;
          v27 = *(v36 + 8 * (v11 >> 6));
          if (((v27 >> v11) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(v13 + 36) != v10)
          {
            goto LABEL_39;
          }

          v28 = v27 & (-2 << (v11 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v11 & 0x7FFFFFFFFFFFFFC0;
            v2 = v37;
            v6 = v39;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v35 + 8 * v26);
            v2 = v37;
            v6 = v39;
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                sub_24AF04640(v11, v10, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_32;
              }
            }

            sub_24AF04640(v11, v10, 0);
          }

LABEL_32:
          v34 = *(v1 + 36);
          v42 = v25;
          v43 = v34;
          v44 = 0;
          if (v6 == v2)
          {
            goto LABEL_33;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_24AF2A7B4()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC4BE8);
  v1 = __swift_project_value_buffer(v0, qword_27EFC4BE8);
  if (qword_27EFC0728 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFC4C00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_24AF2A87C(NSObject *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v106 = a7;
  v107 = a3;
  v108 = a4;
  v109 = a1;
  v110 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v101 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C8, &qword_24AF3A958);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v101 - v16;
  v18 = type metadata accessor for MessageContext();
  v105 = *(v18 - 8);
  v19 = *(v105 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v101 - v22;
  v111 = v7;
  v24 = v7 + OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!v109)
    {
      if (qword_27EFC0720 != -1)
      {
        swift_once();
      }

      v43 = sub_24AF3529C();
      __swift_project_value_buffer(v43, qword_27EFC4BE8);
      v44 = v111;
      v45 = sub_24AF3527C();
      v46 = sub_24AF3570C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        *(v47 + 4) = v44;
        *v48 = v44;
        v49 = v44;
        _os_log_impl(&dword_24AECF000, v45, v46, "MessagingDelegateTrampoline: No service for %@", v47, 0xCu);
        sub_24AEE2E10(v48, &qword_27EFC0D70, &qword_24AF37D20);
        MEMORY[0x24C236490](v48, -1, -1);
        MEMORY[0x24C236490](v47, -1, -1);
      }

      goto LABEL_28;
    }

    if (!v110)
    {
      v50 = qword_27EFC0720;
      v51 = v109;
      if (v50 != -1)
      {
        swift_once();
      }

      v52 = sub_24AF3529C();
      __swift_project_value_buffer(v52, qword_27EFC4BE8);
      v53 = v111;
      v54 = sub_24AF3527C();
      v55 = sub_24AF3570C();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        *(v56 + 4) = v53;
        *v57 = v53;
        v58 = v53;
        _os_log_impl(&dword_24AECF000, v54, v55, "MessagingDelegateTrampoline: No account for %@", v56, 0xCu);
        sub_24AEE2E10(v57, &qword_27EFC0D70, &qword_24AF37D20);
        MEMORY[0x24C236490](v57, -1, -1);
        MEMORY[0x24C236490](v56, -1, -1);
      }

      goto LABEL_28;
    }

    if (v108 >> 60 == 15)
    {
      v26 = qword_27EFC0720;
      v27 = v109;
      v28 = v110;
      if (v26 != -1)
      {
        swift_once();
      }

      v29 = sub_24AF3529C();
      __swift_project_value_buffer(v29, qword_27EFC4BE8);
      v30 = v111;
      v31 = sub_24AF3527C();
      v32 = sub_24AF3570C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        *(v33 + 4) = v30;
        *v34 = v30;
        v35 = v30;
        _os_log_impl(&dword_24AECF000, v31, v32, "MessagingDelegateTrampoline: No data for %@", v33, 0xCu);
        sub_24AEE2E10(v34, &qword_27EFC0D70, &qword_24AF37D20);
        MEMORY[0x24C236490](v34, -1, -1);
        MEMORY[0x24C236490](v33, -1, -1);
      }

LABEL_28:

      swift_unknownObjectRelease();
      return;
    }

    v104 = Strong;
    if (a6)
    {
      v59 = *(v24 + 1);
      v103 = v109;
      v102 = v110;
      sub_24AF11EC4(v107, v108);

      v60._countAndFlagsBits = a5;
      v60._object = a6;
      Destination.init(stringRepresentation:)(v60);
      v61 = v114;
      if (v114)
      {
        if (v106)
        {
          v110 = v113;
          LODWORD(v109) = v112;
          v62 = v106;
          v63 = [v103 serviceIdentifier];
          if (v63)
          {
            v64 = v63;
            v111 = v61;
            v101 = sub_24AF353AC();
            v106 = v65;

            v66 = v62;
            sub_24AF280B4();
            v67 = v105;
            if ((*(v105 + 48))(v17, 1, v18) == 1)
            {

              swift_unknownObjectRelease();
              sub_24AF11EB0(v107, v108);

              sub_24AEE2E10(v17, &qword_27EFC11C8, &qword_24AF3A958);
            }

            else
            {
              sub_24AF2A3AC(v17, v23);
              v90 = sub_24AF3557C();
              (*(*(v90 - 8) + 56))(v13, 1, 1, v90);
              sub_24AF2985C(v23, v21);
              v91 = *(v67 + 80);
              v92 = v66;
              v93 = (v91 + 112) & ~v91;
              v94 = swift_allocObject();
              *(v94 + 16) = 0;
              *(v94 + 24) = 0;
              *(v94 + 32) = v104;
              *(v94 + 40) = v59;
              v95 = v102;
              v96 = v106;
              v97 = v107;
              *(v94 + 48) = v101;
              *(v94 + 56) = v96;
              *(v94 + 64) = v95;
              *(v94 + 72) = v97;
              v98 = v108;
              *(v94 + 80) = v108;
              *(v94 + 88) = v109;
              v99 = v111;
              *(v94 + 96) = v110;
              *(v94 + 104) = v99;
              sub_24AF2A3AC(v21, v94 + v93);
              v100 = v95;
              sub_24AF11EC4(v97, v98);
              swift_unknownObjectRetain();
              sub_24AF08F10(0, 0, v13, &unk_24AF3A990, v94);

              sub_24AF11EB0(v97, v98);
              swift_unknownObjectRelease();

              sub_24AF298C0(v23);
            }

            return;
          }

          if (qword_27EFC0720 != -1)
          {
            swift_once();
          }

          v84 = sub_24AF3529C();
          __swift_project_value_buffer(v84, qword_27EFC4BE8);
          v85 = v111;
          v79 = sub_24AF3527C();
          v86 = sub_24AF3570C();

          if (os_log_type_enabled(v79, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            *v87 = 138412290;
            *(v87 + 4) = v85;
            *v88 = v85;
            v89 = v85;
            _os_log_impl(&dword_24AECF000, v79, v86, "MessagingDelegateTrampoline: serviceIdentifier for %@", v87, 0xCu);
            sub_24AEE2E10(v88, &qword_27EFC0D70, &qword_24AF37D20);
            MEMORY[0x24C236490](v88, -1, -1);
            MEMORY[0x24C236490](v87, -1, -1);
          }

          swift_unknownObjectRelease();
        }

        else
        {

          if (qword_27EFC0720 != -1)
          {
            swift_once();
          }

          v77 = sub_24AF3529C();
          __swift_project_value_buffer(v77, qword_27EFC4BE8);
          v78 = v111;
          v79 = sub_24AF3527C();
          v80 = sub_24AF3570C();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            *v81 = 138412290;
            *(v81 + 4) = v78;
            *v82 = v78;
            v83 = v78;
            _os_log_impl(&dword_24AECF000, v79, v80, "MessagingDelegateTrampoline: No context for %@", v81, 0xCu);
            sub_24AEE2E10(v82, &qword_27EFC0D70, &qword_24AF37D20);
            MEMORY[0x24C236490](v82, -1, -1);
            MEMORY[0x24C236490](v81, -1, -1);
          }

          swift_unknownObjectRelease();
        }

        sub_24AF11EB0(v107, v108);

        v42 = v103;
        goto LABEL_15;
      }
    }

    else
    {
      v68 = v109;
      v69 = v110;
      sub_24AF11EC4(v107, v108);
    }

    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v70 = sub_24AF3529C();
    __swift_project_value_buffer(v70, qword_27EFC4BE8);
    v71 = v111;
    v72 = sub_24AF3527C();
    v73 = sub_24AF3570C();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      *(v74 + 4) = v71;
      *v75 = v71;
      v76 = v71;
      _os_log_impl(&dword_24AECF000, v72, v73, "MessagingDelegateTrampoline: No fromID for %@", v74, 0xCu);
      sub_24AEE2E10(v75, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v75, -1, -1);
      MEMORY[0x24C236490](v74, -1, -1);
    }

    swift_unknownObjectRelease();
    sub_24AF11EB0(v107, v108);

    v42 = v109;
  }

  else
  {
    if (qword_27EFC0720 != -1)
    {
      swift_once();
    }

    v36 = sub_24AF3529C();
    __swift_project_value_buffer(v36, qword_27EFC4BE8);
    v37 = v111;
    v111 = sub_24AF3527C();
    v38 = sub_24AF3570C();

    if (os_log_type_enabled(v111, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v37;
      *v40 = v37;
      v41 = v37;
      _os_log_impl(&dword_24AECF000, v111, v38, "MessagingDelegateTrampoline: No delegate for %@", v39, 0xCu);
      sub_24AEE2E10(v40, &qword_27EFC0D70, &qword_24AF37D20);
      MEMORY[0x24C236490](v40, -1, -1);
      MEMORY[0x24C236490](v39, -1, -1);
    }

    v42 = v111;
  }

LABEL_15:
}