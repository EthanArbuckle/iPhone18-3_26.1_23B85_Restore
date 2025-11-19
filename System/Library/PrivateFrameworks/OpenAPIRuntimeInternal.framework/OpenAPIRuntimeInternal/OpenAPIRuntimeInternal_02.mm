uint64_t sub_25DD18028()
{
  v0 = sub_25DD96CA4();
  v4 = sub_25DD180A8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_25DD180A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25DD96B84();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_25DD96F34();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_25DD00E5C(v9, 0);
  v12 = sub_25DD18200(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_25DD96B84();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_25DD971D4();
LABEL_4:

  return sub_25DD96B84();
}

unint64_t sub_25DD18200(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_25DD18420(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25DD96C44();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_25DD971D4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_25DD18420(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_25DD96C14();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_25DD18420(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25DD96C54();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F8A3240](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_25DD1849C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

double sub_25DD185F4@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = a1[1];
  *a3 = *a1;
  *(a3 + 8) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2310, "\ny");
  sub_25DD11258();
  sub_25DD97304();
  if (v4)
  {

    *a2 = v4;
  }

  else
  {
    result = *&v10;
    *(a3 + 16) = v10;
    *(a3 + 32) = v11;
  }

  return result;
}

uint64_t sub_25DD186B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = v2[3];
  v7 = v2[5];
  v6 = v2[6];
  v9 = *a1;
  v8 = a1[1];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 + 48);
  *a2 = v9;
  a2[1] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2310, "\ny");
  sub_25DD97304();
  if (v3)
  {
  }

  else
  {
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a2, 0, 1, TupleTypeMetadata2);
  }
}

uint64_t sub_25DD187C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_25DD18808()
{
  result = qword_27FCC4980[0];
  if (!qword_27FCC4980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCC4980);
  }

  return result;
}

uint64_t sub_25DD1885C(uint64_t a1, int a2)
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

uint64_t sub_25DD188A4(uint64_t result, int a2, int a3)
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

unint64_t sub_25DD188F0()
{
  result = qword_27FCC4B10[0];
  if (!qword_27FCC4B10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCC4B10);
  }

  return result;
}

unint64_t sub_25DD1894C()
{
  result = qword_27FCC4C20;
  if (!qword_27FCC4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC4C20);
  }

  return result;
}

unint64_t sub_25DD189A4()
{
  result = qword_27FCC4C28[0];
  if (!qword_27FCC4C28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCC4C28);
  }

  return result;
}

uint64_t sub_25DD18A0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25DD18AA4();
  result = MEMORY[0x25F8A3490](v2, &type metadata for StringKey, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_25DD15E34(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_25DD18AA4()
{
  result = qword_27FCC4CB0[0];
  if (!qword_27FCC4CB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCC4CB0);
  }

  return result;
}

void __swiftcall ISO8601DateTranscoder.init(options:)(OpenAPIRuntimeInternal::ISO8601DateTranscoder *__return_ptr retstr, NSISO8601DateFormatOptions_optional options)
{
  is_nil = options.is_nil;
  value = options.value;
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v6 = v5;
  if (!is_nil)
  {
    [(objc_class *)v5 setFormatOptions:value];
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v8 = sub_25DD96B14();
  [v7 setName_];

  retstr->lock.super.isa = v7;
  retstr->locked_formatter.super.super.isa = v6;
}

uint64_t ISO8601DateTranscoder.encode(_:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  [*v0 lock];
  v3 = sub_25DD96794();
  v4 = [v2 stringFromDate_];

  v5 = sub_25DD96B24();
  [v1 unlock];
  return v5;
}

id ISO8601DateTranscoder.decode(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25DD967C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = *(v1 + 8);
  [v9 lock];
  v10 = sub_25DD96B14();
  v11 = [v8 dateFromString_];

  if (v11)
  {
    sub_25DD967B4();

    (*(v4 + 32))(a1, v7, v3);
  }

  else
  {
    v12 = sub_25DD97194();
    swift_allocError();
    v14 = v13;
    sub_25DD97174();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84168], v12);
    swift_willThrow();
  }

  return [v9 unlock];
}

uint64_t sub_25DD18E5C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  [*v0 lock];
  v3 = sub_25DD96794();
  v4 = [v2 stringFromDate_];

  v5 = sub_25DD96B24();
  [v1 unlock];
  return v5;
}

void static DateTranscoder<>.iso8601.getter(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v4 = sub_25DD96B14();
  [v3 setName_];

  *a1 = v3;
  a1[1] = v2;
}

void static DateTranscoder<>.iso8601WithFractionalSeconds.getter(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v2 setFormatOptions_];
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v4 = sub_25DD96B14();
  [v3 setName_];

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25DD1906C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_25DD1913C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unsigned int *a3@<X3>, uint64_t (*a4)(void)@<X4>, void *a5@<X8>)
{
  sub_25DD08A7C(a1, v13);
  v9 = swift_allocObject();
  sub_25DCFE2FC(v13, v9 + 16);
  *a5 = a2;
  a5[1] = v9;
  v10 = *a3;
  v11 = a4(0);
  return (*(*(v11 - 8) + 104))(a5, v10, v11);
}

BOOL sub_25DD1929C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_25DD192CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25DD192F8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_25DD193E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t Configuration.dateTranscoder.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_25DCFE2FC(a1, v1);
}

uint64_t Configuration.multipartBoundaryGenerator.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));

  return sub_25DCFE2FC(a1, v1 + 48);
}

double sub_25DD19550@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_25DD19594(void *a1@<X8>)
{
  a1[3] = &type metadata for ISO8601DateTranscoder;
  a1[4] = &protocol witness table for ISO8601DateTranscoder;
  static DateTranscoder<>.iso8601.getter(a1);
}

void *sub_25DD195B8@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for RandomMultipartBoundaryGenerator;
  a1[4] = &protocol witness table for RandomMultipartBoundaryGenerator;
  v2 = swift_allocObject();
  *a1 = v2;
  return static MultipartBoundaryGenerator<>.random.getter((v2 + 16));
}

uint64_t Configuration.init(dateTranscoder:jsonEncodingOptions:multipartBoundaryGenerator:xmlCoder:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0;
  *(a5 + 88) = 0u;
  v9 = a5 + 88;
  sub_25DCFE2FC(a1, a5);
  *(a5 + 40) = v8;
  sub_25DCFE2FC(a3, a5 + 48);

  return sub_25DD198F0(a4, v9);
}

uint64_t sub_25DD1968C(uint64_t a1, void *a2)
{
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  result = (*(v7 + 8))(a1, v6, v7);
  if (!v3)
  {
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_25DD979D4();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_25DD97674();

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

uint64_t sub_25DD1977C(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_25DD979B4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v6 = sub_25DD975E4();
    v8 = v7;
    v9 = *(v1 + 40);
    v10 = *(v1 + 48);
    v11 = v6;
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    (*(v10 + 16))(v11, v8, v9, v10);

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

uint64_t sub_25DD19880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2358, &qword_25DD996F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD198F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2358, &qword_25DD996F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25DD19964()
{
  result = qword_27FCC2360;
  if (!qword_27FCC2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2360);
  }

  return result;
}

unint64_t sub_25DD199BC()
{
  result = qword_28155E9B8;
  if (!qword_28155E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155E9B8);
  }

  return result;
}

unint64_t sub_25DD19A14()
{
  result = qword_28155E9C0[0];
  if (!qword_28155E9C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28155E9C0);
  }

  return result;
}

unint64_t sub_25DD19A6C()
{
  result = qword_28155E9B0;
  if (!qword_28155E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155E9B0);
  }

  return result;
}

uint64_t sub_25DD19B10(uint64_t *a1, int a2)
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

uint64_t sub_25DD19B58(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for JSONEncodingOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JSONEncodingOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal11CustomCoder_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_25DD19C88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25DD19CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25DD19DB8(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

uint64_t sub_25DD19E0C(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

uint64_t sub_25DD19E60(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t Converter.init(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_25DD964B4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_25DD96554();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_25DD96534();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD19D54(a1, a2);
  v16 = sub_25DD96594();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  a2[16] = sub_25DD96584();
  v29 = *(a1 + 40);

  sub_25DD1A1D4(&v29, v15);
  sub_25DD96544();
  sub_25DD190C4(a1, v10);
  sub_25DD96564();

  v19 = *(v16 + 48);
  v20 = *(v16 + 52);
  swift_allocObject();
  a2[18] = sub_25DD96584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2368, &unk_25DD999E0);
  v21 = *(v12 + 72);
  v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25DD999D0;

  sub_25DD96504();
  sub_25DD96524();
  v29 = v23;
  sub_25DD1A614(&qword_28155EA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2370, &unk_25DD9A900);
  sub_25DD1A55C();
  sub_25DD970A4();
  sub_25DD96544();
  sub_25DD190C4(a1, v10);
  sub_25DD96564();

  v24 = sub_25DD964F4();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  a2[17] = sub_25DD964E4();

  sub_25DD19100(a1, v28);
  sub_25DD964C4();

  return sub_25DD1A5C0(a1);
}

uint64_t sub_25DD1A1D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25DD96534();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v21 = 0;
  sub_25DD1A614(&qword_28155EA58);
  sub_25DD97A44();
  v10 = *sub_25DD19204();
  v20 = v9;
  v21 = v10;
  sub_25DD199BC();
  v11 = sub_25DD97084();
  v18 = v9;
  if (v11)
  {
    sub_25DD96514();
    sub_25DD1A614(&qword_28155EA68);
    sub_25DD96D04();
    v12 = *(v5 + 8);
    v12(a2, v4);
    sub_25DD96D04();
    v21 = v19 | v20;
    sub_25DD97A44();
    v12(v8, v4);
    v9 = v18;
  }

  v13 = *sub_25DD1921C();
  v20 = v9;
  v21 = v13;
  if (sub_25DD97084())
  {
    sub_25DD96504();
    sub_25DD1A614(&qword_28155EA68);
    sub_25DD96D04();
    v14 = *(v5 + 8);
    v14(a2, v4);
    sub_25DD96D04();
    v21 = v19 | v20;
    sub_25DD97A44();
    v14(v8, v4);
    v9 = v18;
  }

  v15 = *sub_25DD19234();
  v20 = v9;
  v21 = v15;
  result = sub_25DD97084();
  if (result)
  {
    sub_25DD96524();
    sub_25DD1A614(&qword_28155EA68);
    sub_25DD96D04();
    v17 = *(v5 + 8);
    v17(a2, v4);
    sub_25DD96D04();
    v21 = v19 | v20;
    sub_25DD97A44();
    return (v17)(v8, v4);
  }

  return result;
}

unint64_t sub_25DD1A55C()
{
  result = qword_28155E9A8;
  if (!qword_28155E9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2370, &unk_25DD9A900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155E9A8);
  }

  return result;
}

uint64_t sub_25DD1A614(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25DD96534();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_25DD1A68C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25DD1A6D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Converter.setAcceptHeader<A>(in:contentTypes:)()
{
  v0 = sub_25DD969E4();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x25F8A2FF0](v2);
  KeyPath = swift_getKeyPath();
  type metadata accessor for AcceptHeaderContentType();
  v4 = sub_25DD96D84();
  WitnessTable = swift_getWitnessTable();
  sub_25DCFEA90(sub_25DD1A914, KeyPath, v4, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
  sub_25DD0CFAC();
  sub_25DD96AD4();

  return sub_25DD96834();
}

uint64_t sub_25DD1A8D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for AcceptHeaderContentType();
  result = AcceptHeaderContentType.rawValue.getter(v7);
  *a3 = result;
  a3[1] = v9;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Converter.renderedPath(template:parameters:)(Swift::String a1, Swift::OpaquePointer parameters)
{
  v4 = v3;
  v5 = v2;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2378, &qword_25DD99AB8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v30 - v10;
  sub_25DD08A7C(v5, v40);

  sub_25DD6FC30(0, 0, 0, v40, &v41);
  v11 = sub_25DD83CF4(&v41, v43);
  v13 = *(parameters._rawValue + 2);
  if (v13)
  {
    v14 = 0;
    v15 = parameters._rawValue + 32;
    v33 = *(parameters._rawValue + 2);
    v31 = parameters._rawValue + 32;
    while (2)
    {
      v35 = object;
      v16 = &v15[40 * v14];
      while (1)
      {
        if (v14 >= v13)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        if (__OFADD__(v14, 1))
        {
          goto LABEL_17;
        }

        v17 = *(v16 + 3);
        v18 = *(v16 + 4);
        v19 = __swift_project_boxed_opaque_existential_1(v16, v17);
        v20 = v43;
        v21 = sub_25DD83D3C(v19, 0, 0xE000000000000000, v17, v18);
        if (v4)
        {

          sub_25DD1ACC8(v43);
          goto LABEL_15;
        }

        v23 = v22;
        v32 = v21;
        v37 = v14 + 1;
        v44 = 0;
        v41 = countAndFlagsBits;
        v42 = v35;
        *&v40[0] = 32123;
        *(&v40[0] + 1) = 0xE200000000000000;
        v24 = sub_25DD967D4();
        v25 = v34;
        (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
        sub_25DD07E24();

        sub_25DD96FE4();
        v27 = v26;
        sub_25DD114CC(v25, &qword_27FCC2378, &qword_25DD99AB8);

        if ((v27 & 1) == 0)
        {
          break;
        }

        ++v14;
        v16 += 40;
        v13 = v33;
        v4 = v44;
        if (v37 == v33)
        {
          v20 = v35;
          goto LABEL_14;
        }
      }

      v41 = countAndFlagsBits;
      v42 = v35;
      v39 = v23;
      *&v40[0] = 32123;
      *(&v40[0] + 1) = 0xE200000000000000;
      v38 = v32;
      countAndFlagsBits = sub_25DD96FA4();
      v20 = v28;

      v14 = v37;
      object = v20;
      v13 = v33;
      v4 = v44;
      v15 = v31;
      if (v37 != v33)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = object;
  }

LABEL_14:
  sub_25DD1ACC8(v43);
LABEL_15:
  v11 = countAndFlagsBits;
  v12 = v20;
LABEL_18:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

unint64_t Converter.setQueryItemAsURI<A>(in:style:explode:name:value:)(uint64_t a1, unsigned __int8 *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a2;
  v10 = a7;
  v11 = a8;
  v12 = a4;
  v13 = a5;
  return sub_25DD23C44(a1, &v14, a3, a4, a5, a6, sub_25DD1AD70, v9, a7);
}

uint64_t sub_25DD1AD70(uint64_t a1, char *a2, char a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v7 = v3[4];
  v6 = v3[5];
  v8 = v3[6];
  v10 = *a2;
  return sub_25DD20C98(&v10, a3, 0, v6, v8, a1, v4, v5);
}

uint64_t Converter.setOptionalRequestBodyAsBinary(_:headerFields:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v7 = type metadata accessor for HTTPBody();
  return sub_25DD24A94(&v9, a2, a3, a4, sub_25DD1AF74, 0, v7);
}

uint64_t Converter.setRequiredRequestBodyAsBinary(_:headerFields:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  type metadata accessor for HTTPBody();
  return sub_25DD2496C(&v8, a2, a3, a4, sub_25DD1C6DC);
}

uint64_t Converter.setOptionalRequestBodyAsURLEncodedForm<A>(_:headerFields:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a3;
  v25 = a4;
  v11 = sub_25DD96F04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = *(a5 - 8);
  (*(v16 + 16))(&v24 - v14, a1, a5);
  (*(v16 + 56))(v15, 0, 1, a5);
  sub_25DD1C360(v6, v26);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = v26[7];
  *(v17 + 128) = v26[6];
  *(v17 + 144) = v18;
  *(v17 + 160) = v26[8];
  *(v17 + 176) = v27;
  v19 = v26[3];
  *(v17 + 64) = v26[2];
  *(v17 + 80) = v19;
  v20 = v26[5];
  *(v17 + 96) = v26[4];
  *(v17 + 112) = v20;
  v21 = v26[1];
  *(v17 + 32) = v26[0];
  *(v17 + 48) = v21;
  v22 = sub_25DD24A94(v15, a2, v24, v25, sub_25DD1C5AC, v17, a5);
  (*(v12 + 8))(v15, v11);

  return v22;
}

uint64_t sub_25DD1B250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_25DD1C360(v9, v24);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = v24[7];
  *(v16 + 128) = v24[6];
  *(v16 + 144) = v17;
  *(v16 + 160) = v24[8];
  *(v16 + 176) = v25;
  v18 = v24[3];
  *(v16 + 64) = v24[2];
  *(v16 + 80) = v18;
  v19 = v24[5];
  *(v16 + 96) = v24[4];
  *(v16 + 112) = v19;
  v20 = v24[1];
  *(v16 + 32) = v24[0];
  *(v16 + 48) = v20;
  v21 = a9(a1, a2, a3, a4, a8, v16, a5);

  return v21;
}

uint64_t Converter.setRequiredRequestBodyAsMultipart<A>(_:headerFields:contentType:allowsUnknownParts:requiredExactlyOncePartNames:requiredAtLeastOncePartNames:atMostOncePartNames:zeroOrMoreTimesPartNames:encoding:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = v4[9];
  v10 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v9);
  (*(v10 + 8))(v9, v10);
  MEMORY[0x25F8A3200]();
  v15[1] = a4;

  MEMORY[0x25F8A3200](0x61646E756F62203BLL, 0xEB000000003D7972);

  v15[0] = a1;
  v14 = *(v8 + 80);
  type metadata accessor for MultipartBody();
  v11 = sub_25DD2496C(v15, a2, a3, a4, sub_25DD1B504);

  return v11;
}

uint64_t sub_25DD1B504(uint64_t *a1)
{
  v14 = *(v1 + 24);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);
  v11 = *a1;

  sub_25DD6BA30(v2, v3, v4, v5, v6, v15);
  v12 = sub_25DD21DA0(v11, v15, v7, v8, v9, v10);
  v19 = v15[1];
  sub_25DD114CC(&v19, &qword_27FCC2380, &qword_25DD9E8F0);
  v18 = v15[2];
  sub_25DD114CC(&v18, &qword_27FCC2380, &qword_25DD9E8F0);
  v17 = v15[3];
  sub_25DD114CC(&v17, &qword_27FCC2380, &qword_25DD9E8F0);
  v16 = v15[4];
  sub_25DD114CC(&v16, &qword_27FCC2380, &qword_25DD9E8F0);
  return v12;
}

uint64_t Converter.getResponseBodyAsJSON<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1B670, 0, 0);
}

uint64_t sub_25DD1B670()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 224);
    v18 = *(v0 + 208);
    sub_25DD1C360(*(v0 + 232), v0 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = v18;
    v4 = *(v0 + 128);
    *(v3 + 136) = *(v0 + 112);
    *(v3 + 152) = v4;
    *(v3 + 168) = *(v0 + 144);
    v5 = *(v0 + 64);
    *(v3 + 72) = *(v0 + 48);
    *(v3 + 88) = v5;
    v6 = *(v0 + 96);
    *(v3 + 104) = *(v0 + 80);
    *(v3 + 120) = v6;
    v7 = *(v0 + 32);
    *(v3 + 40) = *(v0 + 16);
    *(v0 + 240) = v3;
    *(v3 + 32) = v2;
    *(v3 + 184) = *(v0 + 160);
    *(v3 + 56) = v7;

    v8 = swift_task_alloc();
    *(v0 + 248) = v8;
    *v8 = v0;
    v8[1] = sub_25DD1B858;
    v9 = *(v0 + 232);
    v10 = *(v0 + 208);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    v13 = *(v0 + 168);
    v14 = *(v0 + 176);
    v20 = *(v0 + 216);

    return sub_25DD25940(v13, v14, v1, v11, v12, &unk_25DD99AE8, v3, v10);
  }

  else
  {
    sub_25DD01034();
    swift_allocError();
    *v16 = 3;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0;
    *(v16 + 48) = 20;
    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_25DD1B858()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_25DD1C6F4;
  }

  else
  {
    v5 = *(v2 + 240);

    v4 = sub_25DD1C6D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DD1B974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_25DD1C68C;

  return sub_25DD20E68(a1, a2, a4, a6);
}

uint64_t Converter.getResponseBodyAsXML<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1BA70, 0, 0);
}

uint64_t sub_25DD1BA70()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 224);
    v18 = *(v0 + 208);
    sub_25DD1C360(*(v0 + 232), v0 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = v18;
    v4 = *(v0 + 128);
    *(v3 + 136) = *(v0 + 112);
    *(v3 + 152) = v4;
    *(v3 + 168) = *(v0 + 144);
    v5 = *(v0 + 64);
    *(v3 + 72) = *(v0 + 48);
    *(v3 + 88) = v5;
    v6 = *(v0 + 96);
    *(v3 + 104) = *(v0 + 80);
    *(v3 + 120) = v6;
    v7 = *(v0 + 32);
    *(v3 + 40) = *(v0 + 16);
    *(v0 + 240) = v3;
    *(v3 + 32) = v2;
    *(v3 + 184) = *(v0 + 160);
    *(v3 + 56) = v7;

    v8 = swift_task_alloc();
    *(v0 + 248) = v8;
    *v8 = v0;
    v8[1] = sub_25DD1BC58;
    v9 = *(v0 + 232);
    v10 = *(v0 + 208);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    v13 = *(v0 + 168);
    v14 = *(v0 + 176);
    v20 = *(v0 + 216);

    return sub_25DD25940(v13, v14, v1, v11, v12, dword_25DD99AD8, v3, v10);
  }

  else
  {
    sub_25DD01034();
    swift_allocError();
    *v16 = 3;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0;
    *(v16 + 48) = 20;
    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_25DD1BC58()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_25DD1BDD8;
  }

  else
  {
    v5 = *(v2 + 240);

    v4 = sub_25DD1BD74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DD1BD74()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25DD1BDD8()
{
  v1 = v0[30];
  v2 = v0[23];

  v3 = v0[32];
  v4 = v0[1];

  return v4();
}

uint64_t sub_25DD1BE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_25DD1BF14;

  return sub_25DD2117C(a1, a2, a4, a6);
}

uint64_t sub_25DD1BF14()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t Converter.getResponseBodyAsBinary<A>(_:from:transforming:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x28223BE20](a1);
    v10[2] = v5;
    v10[3] = v4;
    v10[4] = v6;
    v7 = type metadata accessor for HTTPBody();

    sub_25DD25CBC(a1, a2, sub_25DD1C144, v10, sub_25DD1C170, 0, v7);
  }

  else
  {
    sub_25DD01034();
    swift_allocError();
    *v9 = 3;
    *(v9 + 8) = 0u;
    *(v9 + 24) = 0u;
    *(v9 + 40) = 0;
    *(v9 + 48) = 20;
    return swift_willThrow();
  }
}

uint64_t sub_25DD1C144(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return v2(*a1);
}

uint64_t Converter.getResponseBodyAsMultipart<A, B>(_:from:transforming:boundary:allowsUnknownParts:requiredExactlyOncePartNames:requiredAtLeastOncePartNames:atMostOncePartNames:zeroOrMoreTimesPartNames:decoding:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {

    sub_25DD6BA30(a7 & 1, a8, a9, a10, a11, v23);
    v19 = sub_25DD2267C(a2, a5, a6, v23, a12, a13, *(a1 + 80));
    v27 = v23[1];
    sub_25DD114CC(&v27, &qword_27FCC2380, &qword_25DD9E8F0);
    v26 = v23[2];
    sub_25DD114CC(&v26, &qword_27FCC2380, &qword_25DD9E8F0);
    v25 = v23[3];
    sub_25DD114CC(&v25, &qword_27FCC2380, &qword_25DD9E8F0);
    v24 = v23[4];
    sub_25DD114CC(&v24, &qword_27FCC2380, &qword_25DD9E8F0);
    a3(v19);
  }

  else
  {
    sub_25DD01034();
    swift_allocError();
    *v21 = 3;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0;
    *(v21 + 48) = 20;
    return swift_willThrow();
  }
}

uint64_t sub_25DD1C3BC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1BF14;

  return sub_25DD1BE48(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t objectdestroyTm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  if (v0[19])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  v1 = v0[21];

  v2 = v0[22];

  v3 = v0[23];

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_25DD1C4E8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1C68C;

  return sub_25DD1B974(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t objectdestroy_15Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  if (v0[18])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  }

  v1 = v0[20];

  v2 = v0[21];

  v3 = v0[22];

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_25DD1C664()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25DD21120();
}

double Converter.extractContentTypeIfPresent(in:)@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_25DD969E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25F8A2FC0](v5);
  v8 = MEMORY[0x25F8A2E40](v7);
  v10 = v9;
  (*(v3 + 8))(v7, v2);
  if (v10)
  {
    OpenAPIMIMEType.init(_:)(v8, v10, a1);
  }

  else
  {
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t *Converter.bestContentType(received:options:)(uint64_t *result, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v3 = result[5];
    if (v3)
    {
      v4 = result[4] == 1;
    }

    else
    {
      v4 = 0;
    }

    if (!v4)
    {
      v2 = a2[4];
      v5 = a2[5];

      return v2;
    }

    v49 = result[4];
    v7 = *result;
    v6 = result[1];
    v9 = result[2];
    v8 = result[3];
    v53 = result[5];
    sub_25DD1CC84(*result, v6, v9, v8, v49, v3);
    v51 = v7;
    v52 = v9;
    v54 = v6;
    v55 = v8;
    sub_25DD0C654(v7, v6, v9, v8, 1);
    v72 = MEMORY[0x277D84F90];
    sub_25DD1D600(0, v2, 0);
    v11 = v72;
    v12 = a2 + 5;
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      swift_bridgeObjectRetain_n();
      OpenAPIMIMEType.init(_:)(v13, v14, &v66);
      v15 = v71;
      if (!v71)
      {

        sub_25DD01034();
        swift_allocError();
        *v29 = v13;
        *(v29 + 8) = v14;
        *(v29 + 48) = 2;
        swift_willThrow();
        sub_25DCFFC50(v51, v54, v52, v55, v49, v53);

        return v2;
      }

      v62 = v13;
      v64 = v2;
      v16 = v69;
      v17 = v70;
      v19 = v67;
      v18 = v68;
      v20 = v11;
      v21 = v66;
      v22 = sub_25DD0A7F8(v51, v54, v52, v55, v53, &v66);
      v58 = v23;
      v60 = v22;
      v56 = v24;
      v25 = v21;
      v11 = v20;
      sub_25DCFFC50(v25, v19, v18, v16, v17, v15);
      v72 = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_25DD1D600((v26 > 1), v27 + 1, 1);
        v11 = v72;
      }

      *(v11 + 16) = v27 + 1;
      v28 = v11 + 40 * v27;
      *(v28 + 32) = v62;
      *(v28 + 40) = v14;
      *(v28 + 48) = v60;
      *(v28 + 56) = v58;
      *(v28 + 64) = v56;
      v12 += 2;
      v2 = v64 - 1;
    }

    while (v64 != 1);
    v2 = *(v11 + 32);
    v30 = *(v11 + 40);
    v32 = *(v11 + 48);
    v31 = *(v11 + 56);
    v33 = *(v11 + 64);

    sub_25DD1D620(v32, v31, v33);

    if (!v27)
    {
LABEL_24:

      if (v33)
      {
        sub_25DD1D630(v32, v31, v33);
        sub_25DCFFC50(v51, v54, v52, v55, v49, v53);
      }

      else
      {
        sub_25DD1D630(v32, v31, 0);
        sub_25DD01034();
        swift_allocError();
        v40 = v30;
        v42 = v41;
        v66 = v51;
        v67 = v54;
        v68 = v52;
        v69 = v55;
        LOBYTE(v70) = 1;
        v71 = v53;
        sub_25DD0D160();
        v43 = sub_25DD97374();
        v45 = v44;
        sub_25DCFFC90(v66, v67, v68, v69, v70);

        *v42 = v2;
        *(v42 + 8) = v40;
        *(v42 + 16) = v43;
        *(v42 + 24) = v45;
        *(v42 + 48) = 10;
        swift_willThrow();
      }

      return v2;
    }

    v47 = v27;
    v48 = v2;
    v61 = v32;
    v63 = v31;
    v65 = v33;
    v34 = v11 + 64;
    v57 = v30;
    v59 = v27 + 1;
    v35 = 1;
    v46 = v11 + 64;
    v50 = v11;
LABEL_16:
    v36 = (v34 + 40 * v35);
    while (v35 < *(v11 + 16))
    {
      v2 = *(v36 - 4);
      v37 = *(v36 - 3);
      v32 = *(v36 - 2);
      v31 = *(v36 - 1);
      v38 = v35 + 1;
      v33 = *v36;

      sub_25DD1D620(v32, v31, v33);
      v39 = sub_25DD0A47C(v61, v63, v65);
      if (v39 < sub_25DD0A47C(v32, v31, v33))
      {

        result = sub_25DD1D630(v61, v63, v65);
        v65 = v33;
        v61 = v32;
        v63 = v31;
        v57 = v37;
        v48 = v2;
        v34 = v46;
        v4 = v47 == v35++;
        v11 = v50;
        v30 = v37;
        if (v4)
        {
          goto LABEL_24;
        }

        goto LABEL_16;
      }

      result = sub_25DD1D630(v32, v31, v33);
      v36 += 40;
      ++v35;
      v4 = v59 == v38;
      v11 = v50;
      if (v4)
      {
        v2 = v48;
        v30 = v57;
        v32 = v61;
        v31 = v63;
        v33 = v65;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD1CC84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_25DD0C654(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t Converter.verifyContentTypeIfPresent(in:matches:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25DD969E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25F8A2FC0](v9);
  v12 = MEMORY[0x25F8A2E40](v11);
  v14 = v13;
  result = (*(v7 + 8))(v11, v6);
  if (v14)
  {
    OpenAPIMIMEType.init(_:)(v12, v14, &v30);
    v16 = v30;
    v17 = v31;
    v18 = v32;
    v19 = v35;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v27 = v33;
    v36 = v33;
    v23 = v34;
    v28 = v34;
    v29 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2190, &unk_25DD98830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DD98100;
    *(inited + 32) = a2;
    v21 = inited + 32;
    *(inited + 40) = a3;

    Converter.bestContentType(received:options:)(&v24, inited);
    if (v3)
    {
      sub_25DCFFC50(v16, v17, v18, v36, v23, v19);
      swift_setDeallocating();
      return sub_25DD1D640(v21);
    }

    else
    {

      swift_setDeallocating();
      sub_25DD1D640(v21);
      return sub_25DCFFC50(v24, v25, v26, v27, v28, v29);
    }
  }

  return result;
}

uint64_t Converter.extractContentDispositionNameAndFilename(in:)()
{
  v0 = sub_25DD969E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25F8A2FE0](v3);
  v6 = MEMORY[0x25F8A2E40](v5);
  v8 = v7;
  (*(v1 + 8))(v5, v0);
  if (!v8)
  {
    return 0;
  }

  v9 = sub_25DD04144(v6, v8);
  if (!v11)
  {
    return 0;
  }

  v12 = v9;
  v13 = v10;
  v14 = v11;
  v15 = sub_25DD03BDC(v9, v10, v11);
  sub_25DD03DA4(v12, v13, v14);

  return v15;
}

uint64_t Converter.setHeaderFieldAsURI<A>(in:name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v9 = sub_25DD96F04();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  v18 = *(a5 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v17, a4, v9);
  if ((*(v18 + 48))(v17, 1, a5) == 1)
  {
    return (*(v10 + 8))(v17, v9);
  }

  (*(v18 + 32))(v21, v17, a5);
  (*(v18 + 16))(v14, v21, a5);
  v23 = (*(v18 + 56))(v14, 0, 1, a5);
  MEMORY[0x28223BE20](v23);
  v25 = v26;
  v24 = v27;
  *(&v26 - 4) = a5;
  *(&v26 - 3) = v25;
  *(&v26 - 2) = v6;
  sub_25DD23308(v24, v28, v29, v14, sub_25DD1D694, (&v26 - 6), a5);
  (*(v10 + 8))(v14, v9);
  return (*(v18 + 8))(v21, a5);
}

uint64_t Converter.setHeaderFieldAsJSON<A>(in:name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_25DD1C360(v6, v19);
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v14 = v19[7];
  *(v13 + 128) = v19[6];
  *(v13 + 144) = v14;
  *(v13 + 160) = v19[8];
  *(v13 + 176) = v20;
  v15 = v19[3];
  *(v13 + 64) = v19[2];
  *(v13 + 80) = v15;
  v16 = v19[5];
  *(v13 + 96) = v19[4];
  *(v13 + 112) = v16;
  v17 = v19[1];
  *(v13 + 32) = v19[0];
  *(v13 + 48) = v17;
  sub_25DD23308(a1, a2, a3, a4, sub_25DD1D77C, v13, a5);
}

uint64_t sub_25DD1D4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_25DD1C360(v9, v23);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = v23[7];
  *(v16 + 128) = v23[6];
  *(v16 + 144) = v17;
  *(v16 + 160) = v23[8];
  *(v16 + 176) = v24;
  v18 = v23[3];
  *(v16 + 64) = v23[2];
  *(v16 + 80) = v18;
  v19 = v23[5];
  *(v16 + 96) = v23[4];
  *(v16 + 112) = v19;
  v20 = v23[1];
  *(v16 + 32) = v23[0];
  *(v16 + 48) = v20;
  a9(a1, a2, a3, a4, a8, v16, a5);
}

void *sub_25DD1D600(void *a1, int64_t a2, char a3)
{
  result = sub_25DD1D7A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25DD1D620(uint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    return sub_25DD03828(a1, a2);
  }

  return a1;
}

uint64_t sub_25DD1D630(uint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    return sub_25DD07C8C(a1, a2);
  }

  return a1;
}

uint64_t sub_25DD1D694(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v6 = 1;
  return sub_25DD20C98(&v6, 0, 0, 0, 0xE000000000000000, a1, v2, v3);
}

uint64_t sub_25DD1D6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v9 = 1;
  return sub_25DD20D80(&v9, 0, 0, 0, 0xE000000000000000, a1, a2, a3, a4, v5, v6);
}

uint64_t sub_25DD1D754(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  return sub_25DD22D04(a1, a2, a3, a4);
}

uint64_t sub_25DD1D77C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25DD22B2C();
}

void *sub_25DD1D7A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2388, &qword_25DD99AF0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2390, &qword_25DD99AF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t Converter.extractAcceptHeaderIfPresent<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25DD969E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25F8A2FF0](v9);
  v12 = MEMORY[0x25F8A2E40](v11);
  v14 = v13;
  v15 = (*(v7 + 8))(v11, v6);
  if (!v14)
  {
    return static AcceptHeaderContentType.defaultValues.getter(a2, a3);
  }

  v56 = a2;
  v58[0] = 44;
  v58[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v15);
  *(&v54 - 2) = v58;
  v16 = sub_25DD04D30(0x7FFFFFFFFFFFFFFFLL, 1, sub_25DD07CA0, (&v54 - 4), v12, v14, &v54);
  v54 = v3;
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  v55 = a3;
  if (v17)
  {
    v58[0] = MEMORY[0x277D84F90];
    v19 = v16;
    sub_25DD055C4(0, v17, 0);
    result = v19;
    v21 = 0;
    v22 = v58[0];
    v23 = (v19 + 56);
    v57 = v19;
    do
    {
      if (v21 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v25 = *(v23 - 3);
      v24 = *(v23 - 2);
      v27 = *(v23 - 1);
      v26 = *v23;

      v28 = MEMORY[0x25F8A3180](v25, v24, v27, v26);
      v30 = v29;

      v58[0] = v22;
      v32 = *(v22 + 16);
      v31 = *(v22 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_25DD055C4((v31 > 1), v32 + 1, 1);
        v22 = v58[0];
      }

      ++v21;
      *(v22 + 16) = v32 + 1;
      v33 = v22 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v23 += 4;
      result = v57;
    }

    while (v17 != v21);

    a3 = v55;
    v34 = v56;
    v18 = MEMORY[0x277D84F90];
    v35 = *(v22 + 16);
    if (!v35)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v22 = MEMORY[0x277D84F90];
  v34 = v56;
  v35 = *(MEMORY[0x277D84F90] + 16);
  if (v35)
  {
LABEL_9:
    v58[0] = v18;
    sub_25DD055C4(0, v35, 0);
    v34 = v56;
    v36 = v58[0];
    v37 = (v22 + 40);
    do
    {
      v39 = *(v37 - 1);
      v38 = *v37;

      v40 = sub_25DD279B4(v39, v38);
      v42 = v41;

      v58[0] = v36;
      v44 = *(v36 + 16);
      v43 = *(v36 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_25DD055C4((v43 > 1), v44 + 1, 1);
        v34 = v56;
        v36 = v58[0];
      }

      *(v36 + 16) = v44 + 1;
      v45 = v36 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v42;
      v37 += 2;
      --v35;
    }

    while (v35);

    a3 = v55;
    goto LABEL_17;
  }

LABEL_16:

  v36 = MEMORY[0x277D84F90];
LABEL_17:
  v58[0] = v36;
  MEMORY[0x28223BE20](v46);
  *(&v54 - 2) = v34;
  *(&v54 - 1) = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
  v48 = type metadata accessor for AcceptHeaderContentType();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v50 = sub_25DD1FFCC();
  v51 = v54;
  v52 = sub_25DCFEA90(sub_25DD1FFAC, (&v54 - 4), v47, v48, v49, v50, MEMORY[0x277D84950], &v59);
  if (v51)
  {
  }

  v53 = v52;

  return v53;
}

uint64_t sub_25DD1DD50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a4;
  v21 = a5;
  v8 = type metadata accessor for AcceptHeaderContentType();
  v9 = sub_25DD96F04();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v15 = *a1;
  v14 = a1[1];

  AcceptHeaderContentType.init(rawValue:)(v15, v14, a2, a3, v13);
  v16 = *(v8 - 8);
  if ((*(v16 + 48))(v13, 1, v8) != 1)
  {
    return (*(v16 + 32))(v21, v13, v8);
  }

  (*(v10 + 8))(v13, v9);
  sub_25DD01034();
  v17 = swift_allocError();
  *v18 = v15;
  *(v18 + 8) = v14;
  *(v18 + 48) = 12;
  swift_willThrow();
  *v22 = v17;
}

unint64_t Converter.validateAcceptIfPresent(_:in:)(uint64_t a1, unint64_t a2)
{
  v108 = a2;
  v109 = a1;
  v116 = sub_25DD965E4();
  v3 = *(v116 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v116);
  v115 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25DD969E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25F8A2FF0](v9);
  v12 = MEMORY[0x25F8A2E40](v11);
  v14 = v13;
  result = (*(v7 + 8))(v11, v6);
  if (!v14)
  {
    v107 = v2;
    return result;
  }

  *&v121 = 44;
  *(&v121 + 1) = 0xE100000000000000;
  MEMORY[0x28223BE20](result);
  *(&v106 - 2) = &v121;

  v106 = v14;
  v16 = sub_25DD04D30(0x7FFFFFFFFFFFFFFFLL, 1, sub_25DD07E7C, (&v106 - 4), v12, v14, &v127);
  v107 = v2;
  v17 = *(v16 + 16);
  v117 = v12;
  if (v17)
  {
    v126 = MEMORY[0x277D84F90];
    v18 = v16;
    sub_25DD055C4(0, v17, 0);
    result = v18;
    v19 = 0;
    v20 = v126;
    *(&v113 + 1) = v18;
    v114 = v18 + 32;
    v112 = (v3 + 8);
    *&v113 = v17;
    while (1)
    {
      if (v19 >= *(result + 16))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        return result;
      }

      v118 = v19;
      v119 = v20;
      v21 = (v114 + 32 * v19);
      v22 = *v21;
      v24 = v21[2];
      v23 = v21[3];
      v25 = *v21 >> 14;
      v26 = v21[1] >> 14;

      v27 = MEMORY[0x277D84F90];
      if (v25 == v26)
      {
        goto LABEL_31;
      }

      *v120 = MEMORY[0x277D84F90];
      v28 = v22;
      while (1)
      {
        *&v120[8] = v28;
LABEL_10:
        if (sub_25DD96F44() != 59 || v32 != 0xE100000000000000)
        {
          break;
        }

LABEL_16:
        result = *&v120[8];
        if (*&v120[8] >> 14 != v25)
        {
          if (v25 < *&v120[8] >> 14)
          {
            goto LABEL_81;
          }

          v34 = sub_25DD96F64();
          v36 = v35;
          v110 = v38;
          v111 = v37;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v120[8] = v36;
          if (isUniquelyReferenced_nonNull_native)
          {
            v40 = *v120;
          }

          else
          {
            v40 = sub_25DD05434(0, *(*v120 + 16) + 1, 1, *v120);
          }

          v42 = *(v40 + 2);
          v41 = *(v40 + 3);
          if (v42 >= v41 >> 1)
          {
            v40 = sub_25DD05434((v41 > 1), v42 + 1, 1, v40);
          }

          *(v40 + 2) = v42 + 1;
          *v120 = v40;
          v29 = &v40[32 * v42];
          v30 = *&v120[8];
          *(v29 + 4) = v34;
          *(v29 + 5) = v30;
          v31 = v110;
          *(v29 + 6) = v111;
          *(v29 + 7) = v31;
        }

        result = sub_25DD96F24();
        v28 = result;
        v25 = result >> 14;
        if (result >> 14 == v26)
        {
          goto LABEL_23;
        }
      }

      v33 = sub_25DD975D4();

      if (v33)
      {
        goto LABEL_16;
      }

      result = sub_25DD96F24();
      v25 = result >> 14;
      if (result >> 14 != v26)
      {
        goto LABEL_10;
      }

      v28 = *&v120[8];
LABEL_23:
      if (v28 >> 14 == v26)
      {

        v27 = *v120;
        goto LABEL_31;
      }

      if (v26 < v28 >> 14)
      {
        goto LABEL_82;
      }

      v43 = sub_25DD96F64();
      v45 = v44;
      v47 = v46;
      v49 = v48;

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v27 = *v120;
      }

      else
      {
        result = sub_25DD05434(0, *(*v120 + 16) + 1, 1, *v120);
        v27 = result;
      }

      v51 = *(v27 + 16);
      v50 = *(v27 + 24);
      if (v51 >= v50 >> 1)
      {
        result = sub_25DD05434((v50 > 1), v51 + 1, 1, v27);
        v27 = result;
      }

      *(v27 + 16) = v51 + 1;
      v52 = (v27 + 32 * v51);
      v52[4] = v43;
      v52[5] = v45;
      v52[6] = v47;
      v52[7] = v49;
LABEL_31:
      if (!*(v27 + 16))
      {
        goto LABEL_80;
      }

      *&v120[8] = *(v27 + 32);
      v54 = *(v27 + 48);
      v53 = *(v27 + 56);

      v121 = *&v120[8];
      v122 = v54;
      v123 = v53;
      v55 = v115;
      sub_25DD965C4();
      sub_25DD07CBC();
      sub_25DD96F94();
      (*v112)(v55, v116);

      v56 = sub_25DD96B54();
      v58 = v57;

      v20 = v119;
      v126 = v119;
      v60 = *(v119 + 16);
      v59 = *(v119 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_25DD055C4((v59 > 1), v60 + 1, 1);
        v20 = v126;
      }

      v12 = v117;
      v19 = v118 + 1;
      *(v20 + 16) = v60 + 1;
      v61 = v20 + 16 * v60;
      *(v61 + 32) = v56;
      *(v61 + 40) = v58;
      result = *(&v113 + 1);
      if (v19 == v113)
      {

        goto LABEL_39;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_39:
  v62 = v108;
  v118 = *(v20 + 16);
  if (!v118)
  {
  }

  v63 = v109;
  result = OpenAPIMIMEType.init(_:)(v109, v62, &v121);
  if (!v125)
  {

    sub_25DD01034();
    swift_allocError();
    *v67 = v63;
    *(v67 + 8) = v62;
    *(v67 + 48) = 3;

    return swift_willThrow();
  }

  v110 = v125;
  v64 = 0;
  v113 = v121;
  v114 = v123;
  v65 = (v20 + 40);
  v66 = v124;
  v119 = v20;
  v111 = v122;
  v112 = v124;
  while (1)
  {
    if (v64 >= *(v20 + 16))
    {
      goto LABEL_83;
    }

    v69 = *(v65 - 1);
    v70 = *v65;
    v71 = v69 == v109 && v70 == v108;
    if (v71 || (v72 = *(v65 - 1), v73 = *v65, (sub_25DD975D4() & 1) != 0))
    {

      sub_25DCFFC50(v113, *(&v113 + 1), v111, v114, v66, v110);
    }

    swift_bridgeObjectRetain_n();
    OpenAPIMIMEType.init(_:)(v69, v70, &v121);
    v74 = v125;
    if (!v125)
    {

      sub_25DCFFC50(v113, *(&v113 + 1), v111, v114, v66, v110);
      sub_25DD01034();
      swift_allocError();
      *v98 = v69;
      *(v98 + 8) = v70;
      v99 = 2;
LABEL_73:
      *(v98 + 48) = v99;
      return swift_willThrow();
    }

    *v120 = v121;
    v68 = v122;
    v75 = v123;
    v76 = v124;

    if (v76)
    {
      if (v76 != 1)
      {
        v101 = v113;
        v102 = v68;
        v103 = v75;
        v104 = v111;
        v105 = v114;
        sub_25DD0C654(v113, *(&v113 + 1), v111, v114, v66);

        sub_25DCFFC90(v101, *(&v101 + 1), v104, v105, v66);
        sub_25DCFFC50(v101, *(&v101 + 1), v104, v105, v66, v110);
        return sub_25DCFFC50(*v120, *&v120[8], v102, v103, v76, v74);
      }

      if (v66 == 1)
      {
        v116 = v68;
        v77 = sub_25DD96B54();
        v79 = v78;
        v80 = sub_25DD96B54();
        v82 = v81;

        if (v77 == v80 && v79 == v82)
        {

LABEL_66:
          v115 = v75;
          v91 = sub_25DD96B54();
          v93 = v92;
          v94 = sub_25DD96B54();
          v96 = v95;

          if (v91 == v94 && v93 == v96)
          {
            goto LABEL_76;
          }

          v97 = sub_25DD975D4();

          result = sub_25DCFFC50(*v120, *&v120[8], v116, v115, v76, v74);
          v12 = v117;
          v66 = v112;
          if (v97)
          {
            goto LABEL_77;
          }

          goto LABEL_46;
        }

        v90 = sub_25DD975D4();

        if (v90)
        {
          goto LABEL_66;
        }

        v68 = v116;
        v12 = v117;
      }

      goto LABEL_45;
    }

    if (v66 < 2u)
    {
      break;
    }

LABEL_45:
    result = sub_25DCFFC50(*v120, *&v120[8], v68, v75, v76, v74);
LABEL_46:
    ++v64;
    v65 += 2;
    v20 = v119;
    if (v118 == v64)
    {

      sub_25DCFFC50(v113, *(&v113 + 1), v111, v114, v66, v110);
      sub_25DD01034();
      swift_allocError();
      v100 = v106;
      *v98 = v12;
      *(v98 + 8) = v100;
      v99 = 11;
      goto LABEL_73;
    }
  }

  v115 = v75;
  v116 = v68;

  v83 = sub_25DD96B54();
  v85 = v84;
  v86 = sub_25DD96B54();
  v88 = v87;

  if (v83 != v86 || v85 != v88)
  {
    v89 = sub_25DD975D4();

    result = sub_25DCFFC50(*v120, *&v120[8], v116, v115, v76, v74);
    v12 = v117;
    v66 = v112;
    if (v89)
    {
      goto LABEL_77;
    }

    goto LABEL_46;
  }

LABEL_76:
  v66 = v112;

  sub_25DCFFC50(*v120, *&v120[8], v116, v115, v76, v74);
LABEL_77:

  sub_25DCFFC50(v113, *(&v113 + 1), v111, v114, v66, v110);
}

uint64_t Converter.getOptionalRequestBodyAsJSON<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1EBF8, 0, 0);
}

uint64_t sub_25DD1EBF8()
{
  v1 = *(v0 + 224);
  v16 = *(v0 + 208);
  sub_25DD1C360(*(v0 + 232), v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v16;
  v3 = *(v0 + 128);
  *(v2 + 136) = *(v0 + 112);
  *(v2 + 152) = v3;
  *(v2 + 168) = *(v0 + 144);
  v4 = *(v0 + 64);
  *(v2 + 72) = *(v0 + 48);
  *(v2 + 88) = v4;
  v5 = *(v0 + 96);
  *(v2 + 104) = *(v0 + 80);
  *(v2 + 120) = v5;
  v6 = *(v0 + 32);
  *(v2 + 40) = *(v0 + 16);
  *(v0 + 240) = v2;
  *(v2 + 32) = v1;
  *(v2 + 184) = *(v0 + 160);
  *(v2 + 56) = v6;
  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_25DD1ED44;
  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  v10 = *(v0 + 192);
  v11 = *(v0 + 200);
  v12 = *(v0 + 176);
  v13 = *(v0 + 184);
  v14 = *(v0 + 168);
  v18 = *(v0 + 216);

  return sub_25DD24CAC(v14, v12, v13, v10, v11, &unk_25DD99B88, v2, v9);
}

uint64_t sub_25DD1ED44()
{
  v2 = *(*v1 + 248);
  v3 = *v1;
  v3[32] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD208CC, 0, 0);
  }

  else
  {
    v4 = v3[30];

    v5 = v3[1];

    return v5();
  }
}

uint64_t Converter.getRequiredRequestBodyAsJSON<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1EEB0, 0, 0);
}

uint64_t sub_25DD1EEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 224);
  v25 = *(v9 + 208);
  sub_25DD1C360(*(v9 + 232), v9 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v25;
  v12 = *(v9 + 128);
  *(v11 + 136) = *(v9 + 112);
  *(v11 + 152) = v12;
  *(v11 + 168) = *(v9 + 144);
  v13 = *(v9 + 64);
  *(v11 + 72) = *(v9 + 48);
  *(v11 + 88) = v13;
  v14 = *(v9 + 96);
  *(v11 + 104) = *(v9 + 80);
  *(v11 + 120) = v14;
  v15 = *(v9 + 32);
  *(v11 + 40) = *(v9 + 16);
  *(v9 + 240) = v11;
  *(v11 + 32) = v10;
  *(v11 + 184) = *(v9 + 160);
  *(v11 + 56) = v15;
  v16 = swift_task_alloc();
  *(v9 + 248) = v16;
  *v16 = v9;
  v16[1] = sub_25DD1ED44;
  v17 = *(v9 + 232);
  v18 = *(v9 + 208);
  v19 = *(v9 + 192);
  v20 = *(v9 + 200);
  v21 = *(v9 + 176);
  v22 = *(v9 + 184);
  v23 = *(v9 + 168);
  v27 = *(v9 + 216);

  return sub_25DD25170(v23, v21, v22, v19, v20, &unk_25DD99B78, v11, v18, a9);
}

uint64_t Converter.getOptionalRequestBodyAsXML<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1F02C, 0, 0);
}

uint64_t sub_25DD1F02C()
{
  v1 = *(v0 + 224);
  v16 = *(v0 + 208);
  sub_25DD1C360(*(v0 + 232), v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v16;
  v3 = *(v0 + 128);
  *(v2 + 136) = *(v0 + 112);
  *(v2 + 152) = v3;
  *(v2 + 168) = *(v0 + 144);
  v4 = *(v0 + 64);
  *(v2 + 72) = *(v0 + 48);
  *(v2 + 88) = v4;
  v5 = *(v0 + 96);
  *(v2 + 104) = *(v0 + 80);
  *(v2 + 120) = v5;
  v6 = *(v0 + 32);
  *(v2 + 40) = *(v0 + 16);
  *(v0 + 240) = v2;
  *(v2 + 32) = v1;
  *(v2 + 184) = *(v0 + 160);
  *(v2 + 56) = v6;
  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_25DD1F178;
  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  v10 = *(v0 + 192);
  v11 = *(v0 + 200);
  v12 = *(v0 + 176);
  v13 = *(v0 + 184);
  v14 = *(v0 + 168);
  v18 = *(v0 + 216);

  return sub_25DD24CAC(v14, v12, v13, v10, v11, &unk_25DD99B68, v2, v9);
}

uint64_t sub_25DD1F178()
{
  v2 = *(*v1 + 248);
  v3 = *v1;
  v3[32] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD1F2B4, 0, 0);
  }

  else
  {
    v4 = v3[30];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_25DD1F2B4()
{
  v1 = v0[30];

  v2 = v0[1];
  v3 = v0[32];

  return v2();
}

uint64_t Converter.getRequiredRequestBodyAsXML<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1F348, 0, 0);
}

uint64_t sub_25DD1F348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 224);
  v25 = *(v9 + 208);
  sub_25DD1C360(*(v9 + 232), v9 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v25;
  v12 = *(v9 + 128);
  *(v11 + 136) = *(v9 + 112);
  *(v11 + 152) = v12;
  *(v11 + 168) = *(v9 + 144);
  v13 = *(v9 + 64);
  *(v11 + 72) = *(v9 + 48);
  *(v11 + 88) = v13;
  v14 = *(v9 + 96);
  *(v11 + 104) = *(v9 + 80);
  *(v11 + 120) = v14;
  v15 = *(v9 + 32);
  *(v11 + 40) = *(v9 + 16);
  *(v9 + 240) = v11;
  *(v11 + 32) = v10;
  *(v11 + 184) = *(v9 + 160);
  *(v11 + 56) = v15;
  v16 = swift_task_alloc();
  *(v9 + 248) = v16;
  *v16 = v9;
  v16[1] = sub_25DD1ED44;
  v17 = *(v9 + 232);
  v18 = *(v9 + 208);
  v19 = *(v9 + 192);
  v20 = *(v9 + 200);
  v21 = *(v9 + 176);
  v22 = *(v9 + 184);
  v23 = *(v9 + 168);
  v27 = *(v9 + 216);

  return sub_25DD25170(v23, v21, v22, v19, v20, &unk_25DD99B58, v11, v18, a9);
}

uint64_t sub_25DD1F494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_25DD1C68C;

  return sub_25DD2117C(a1, a2, a4, a6);
}

uint64_t sub_25DD1F608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, void *, uint64_t, void, uint64_t, uint64_t))
{
  v16[2] = a5;
  v16[3] = a3;
  v16[4] = a4;
  v14 = type metadata accessor for HTTPBody();
  return a8(a1, a2, a6, v16, a7, 0, v14, a5);
}

uint64_t Converter.getOptionalRequestBodyAsURLEncodedForm<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1F6D4, 0, 0);
}

uint64_t sub_25DD1F6D4()
{
  v1 = *(v0 + 224);
  v16 = *(v0 + 208);
  sub_25DD1C360(*(v0 + 232), v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v16;
  v3 = *(v0 + 128);
  *(v2 + 136) = *(v0 + 112);
  *(v2 + 152) = v3;
  *(v2 + 168) = *(v0 + 144);
  v4 = *(v0 + 64);
  *(v2 + 72) = *(v0 + 48);
  *(v2 + 88) = v4;
  v5 = *(v0 + 96);
  *(v2 + 104) = *(v0 + 80);
  *(v2 + 120) = v5;
  v6 = *(v0 + 32);
  *(v2 + 40) = *(v0 + 16);
  *(v0 + 240) = v2;
  *(v2 + 32) = v1;
  *(v2 + 184) = *(v0 + 160);
  *(v2 + 56) = v6;
  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_25DD1ED44;
  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  v10 = *(v0 + 192);
  v11 = *(v0 + 200);
  v12 = *(v0 + 176);
  v13 = *(v0 + 184);
  v14 = *(v0 + 168);
  v18 = *(v0 + 216);

  return sub_25DD24CAC(v14, v12, v13, v10, v11, &unk_25DD99B48, v2, v9);
}

uint64_t sub_25DD1F820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_25DD1C68C;

  return sub_25DD21728(a1, a2, a4, a6);
}

uint64_t Converter.getRequiredRequestBodyAsURLEncodedForm<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1F91C, 0, 0);
}

uint64_t sub_25DD1F91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 224);
  v25 = *(v9 + 208);
  sub_25DD1C360(*(v9 + 232), v9 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v25;
  v12 = *(v9 + 128);
  *(v11 + 136) = *(v9 + 112);
  *(v11 + 152) = v12;
  *(v11 + 168) = *(v9 + 144);
  v13 = *(v9 + 64);
  *(v11 + 72) = *(v9 + 48);
  *(v11 + 88) = v13;
  v14 = *(v9 + 96);
  *(v11 + 104) = *(v9 + 80);
  *(v11 + 120) = v14;
  v15 = *(v9 + 32);
  *(v11 + 40) = *(v9 + 16);
  *(v9 + 240) = v11;
  *(v11 + 32) = v10;
  *(v11 + 184) = *(v9 + 160);
  *(v11 + 56) = v15;
  v16 = swift_task_alloc();
  *(v9 + 248) = v16;
  *v16 = v9;
  v16[1] = sub_25DD1ED44;
  v17 = *(v9 + 232);
  v18 = *(v9 + 208);
  v19 = *(v9 + 192);
  v20 = *(v9 + 200);
  v21 = *(v9 + 176);
  v22 = *(v9 + 184);
  v23 = *(v9 + 168);
  v27 = *(v9 + 216);

  return sub_25DD25170(v23, v21, v22, v19, v20, &unk_25DD99B38, v11, v18, a9);
}

uint64_t Converter.getRequiredRequestBodyAsMultipart<A, B>(_:from:transforming:boundary:allowsUnknownParts:requiredExactlyOncePartNames:requiredAtLeastOncePartNames:atMostOncePartNames:zeroOrMoreTimesPartNames:decoding:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {

    sub_25DD6BA30(a7 & 1, a8, a9, a10, a11, v23);
    v19 = sub_25DD2267C(a2, a5, a6, v23, a12, a13, *(a1 + 80));
    v27 = v23[1];
    sub_25DD20250(&v27);
    v26 = v23[2];
    sub_25DD20250(&v26);
    v25 = v23[3];
    sub_25DD20250(&v25);
    v24 = v23[4];
    sub_25DD20250(&v24);
    a3(v19);
  }

  else
  {
    sub_25DD01034();
    swift_allocError();
    *v21 = 2;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0;
    *(v21 + 48) = 20;
    return swift_willThrow();
  }
}

uint64_t sub_25DD1FC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  sub_25DD1C360(v8, v23);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = v23[7];
  *(v16 + 128) = v23[6];
  *(v16 + 144) = v17;
  *(v16 + 160) = v23[8];
  *(v16 + 176) = v24;
  v18 = v23[3];
  *(v16 + 64) = v23[2];
  *(v16 + 80) = v18;
  v19 = v23[5];
  *(v16 + 96) = v23[4];
  *(v16 + 112) = v19;
  v20 = v23[1];
  *(v16 + 32) = v23[0];
  *(v16 + 48) = v20;
  v21 = sub_25DD2496C(a1, a2, a3, a4, a8);

  return v21;
}

uint64_t Converter.setResponseBodyAsBinary(_:headerFields:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  type metadata accessor for HTTPBody();
  return sub_25DD2496C(&v8, a2, a3, a4, sub_25DD1AF74);
}

uint64_t Converter.setResponseBodyAsMultipart<A>(_:headerFields:contentType:allowsUnknownParts:requiredExactlyOncePartNames:requiredAtLeastOncePartNames:atMostOncePartNames:zeroOrMoreTimesPartNames:encoding:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = v4[9];
  v10 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v9);
  (*(v10 + 8))(v9, v10);
  MEMORY[0x25F8A3200]();
  v15[1] = a4;

  MEMORY[0x25F8A3200](0x61646E756F62203BLL, 0xEB000000003D7972);

  v15[0] = a1;
  v14 = *(v8 + 80);
  type metadata accessor for MultipartBody();
  v11 = sub_25DD2496C(v15, a2, a3, a4, sub_25DD202B8);

  return v11;
}

unint64_t sub_25DD1FFCC()
{
  result = qword_27FCC2398;
  if (!qword_27FCC2398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC21A8, &qword_25DD98A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2398);
  }

  return result;
}

uint64_t sub_25DD20030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v8 = v4[3];
  v10 = v4[5];
  v11 = v4[6];
  sub_25DD08A7C(v4[4], v15);
  sub_25DD6FC30(0, 0, 0, v15, v14);
  sub_25DD73978(v14, v15);
  sub_25DD73998(v9, v10, v11, a1, a2, a3, a4, v9, v8);
  return sub_25DD2085C(v15);
}

uint64_t sub_25DD20160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, char a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128, uint64_t))
{
  v23 = a7;
  v11 = v7[2];
  v10 = v7[3];
  v12 = v7[4];
  v13 = v7[5];
  v14 = v7[6];
  LOBYTE(v22[0]) = *a5;
  v15 = sub_25DD27C60(v22);
  sub_25DD08A7C(v12, v22);
  sub_25DD6FC30(v15, a6, 0, v22, v21);
  v16 = sub_25DD73978(v21, v22);
  v23(v11, v13, v14, a1, a2, a3, a4, v11, v16, v10);
  return sub_25DD2085C(v22);
}

uint64_t sub_25DD20250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2380, &qword_25DD9E8F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD202B8(uint64_t *a1)
{
  v14 = *(v1 + 24);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);
  v11 = *a1;

  sub_25DD6BA30(v2, v3, v4, v5, v6, v15);
  v12 = sub_25DD21DA0(v11, v15, v7, v8, v9, v10);
  v19 = v15[1];
  sub_25DD20250(&v19);
  v18 = v15[2];
  sub_25DD20250(&v18);
  v17 = v15[3];
  sub_25DD20250(&v17);
  v16 = v15[4];
  sub_25DD20250(&v16);
  return v12;
}

uint64_t sub_25DD203C4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1C68C;

  return sub_25DD1F820(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t sub_25DD20488(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1C68C;

  return sub_25DD1F820(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t sub_25DD2054C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1C68C;

  return sub_25DD1F494(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t sub_25DD20610(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1BF14;

  return sub_25DD1BE48(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t sub_25DD206D4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1C68C;

  return sub_25DD1B974(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t sub_25DD20798(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1C68C;

  return sub_25DD1B974(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t sub_25DD208D0(_BYTE *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char a5)
{
  v9 = *a4;
  if (v9 == 3)
  {
    v9 = *sub_25DD27C18();
  }

  if (a5 == 2)
  {
    v12 = v9;
    a5 = sub_25DD27C50(&v12);
  }

  if (v9 == 1)
  {
    sub_25DD01034();
    swift_allocError();
    *v10 = a2;
    *(v10 + 8) = a3;
    *(v10 + 16) = 1;
    *(v10 + 17) = a5 & 1;
    *(v10 + 48) = 8;
    swift_willThrow();
  }

  else
  {
    *a1 = v9;
  }

  return a5 & 1;
}

uint64_t sub_25DD209AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23A0, &qword_25DD99BB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;

  sub_25DD969F4();
  v10 = sub_25DD969E4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_25DD114CC(v9, &qword_27FCC23A0, &qword_25DD99BB0);
    sub_25DD01034();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 48) = 4;
    return swift_willThrow();
  }

  else
  {

    return (*(v11 + 32))(a3, v9, v10);
  }
}

uint64_t sub_25DD20B2C()
{
  MEMORY[0x25F8A2E70]();
  if (v1)
  {
    v0 = sub_25DD96CA4();
  }

  else
  {
    sub_25DD01034();
    swift_allocError();
    *v2 = 1;
    *(v2 + 8) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 40) = 0;
    *(v2 + 48) = 20;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_25DD20C20@<X0>(_BYTE *a1@<X0>, char a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  LOBYTE(v10[0]) = *a1;
  v8 = sub_25DD27C60(v10);
  sub_25DD08A7C(v4, v10);
  return sub_25DD6FC30(v8, a2, a3 & 1, v10, a4);
}

uint64_t sub_25DD20C98(_BYTE *a1, char a2, char a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LOBYTE(v20[0]) = *a1;
  v16 = sub_25DD27C60(v20);
  sub_25DD08A7C(v8, v20);
  sub_25DD6FC30(v16, a2, a3 & 1, v20, v19);
  sub_25DD83CF4(v19, v20);
  v17 = sub_25DD83D3C(a6, a4, a5, a7, a8);
  sub_25DD1ACC8(v20);
  return v17;
}

uint64_t sub_25DD20D80(_BYTE *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LOBYTE(v22[0]) = *a1;
  v15 = sub_25DD27C60(v22);
  sub_25DD08A7C(v11, v22);
  sub_25DD6FC30(v15, a2, a3 & 1, v22, v21);
  sub_25DD73978(v21, v22);
  sub_25DD73998(a10, a4, a5, a6, a7, a8, a9, a10, a11);
  return sub_25DD2085C(v22);
}

uint64_t sub_25DD20E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;

  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_25DD20F18;

  return Data.init(collecting:upTo:)(a2, 0x7FFFFFFFFFFFFFFFLL);
}

uint64_t sub_25DD20F18(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;

    return MEMORY[0x2822009F8](sub_25DD21078, 0, 0);
  }
}

uint64_t sub_25DD21078()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  v6 = v0[2];
  v5 = v0[3];
  v7 = *(v0[5] + 136);
  sub_25DD964D4();
  sub_25DD01088(v1, v2);
  v8 = v0[1];

  return v8();
}

uint64_t sub_25DD21120()
{
  v2 = *(v0 + 128);
  result = sub_25DD96574();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    type metadata accessor for HTTPBody();
    return HTTPBody.__allocating_init(_:)(v5, v6);
  }

  return result;
}

uint64_t sub_25DD2117C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return MEMORY[0x2822009F8](sub_25DD211A4, 0, 0);
}

uint64_t sub_25DD211A4()
{
  sub_25DD12B90(*(v0 + 128) + 88, v0 + 56, &qword_27FCC2358, &qword_25DD996F8);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 104);
    sub_25DCFE2FC((v0 + 56), v0 + 16);

    v2 = swift_task_alloc();
    *(v0 + 136) = v2;
    *v2 = v0;
    v2[1] = sub_25DD21338;
    v3 = *(v0 + 104);

    return Data.init(collecting:upTo:)(v3, 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    sub_25DD114CC(v0 + 56, &qword_27FCC2358, &qword_25DD996F8);
    sub_25DD01034();
    swift_allocError();
    v6 = v5;
    v7 = sub_25DD0923C();
    v10 = *v7;
    v11 = v7[1];
    v12 = *(v7 + 32);
    v13 = *(v7 + 5);
    *v6 = OpenAPIMIMEType.description.getter();
    *(v6 + 8) = v8;
    *(v6 + 48) = 7;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_25DD21338(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 136);
  v8 = *v3;
  v4[18] = a1;
  v4[19] = a2;
  v4[20] = v2;

  if (v2)
  {
    v6 = sub_25DD21544;
  }

  else
  {
    v6 = sub_25DD21450;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25DD21450()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  (*(v8 + 16))(v5, v3, v1, v5, v4, v7, v8);
  sub_25DD01088(v0[18], v0[19]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v9 = v0[1];

  return v9();
}

uint64_t sub_25DD21544()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[20];
  v2 = v0[1];

  return v2();
}

_OWORD *sub_25DD215A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25DD12B90(v3 + 88, &v27, &qword_27FCC2358, &qword_25DD996F8);
  if (v28)
  {
    sub_25DCFE2FC(&v27, &v23);
    v8 = *(&v24 + 1);
    v9 = v25;
    v10 = __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    v11 = (*(v9 + 8))(a1, a2, a3, v8, v9);
    if (!v4)
    {
      v20 = v11;
      v21 = v12;
      type metadata accessor for HTTPBody();
      v10 = HTTPBody.__allocating_init(_:)(v20, v21);
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  else
  {
    sub_25DD114CC(&v27, &qword_27FCC2358, &qword_25DD996F8);
    sub_25DD01034();
    swift_allocError();
    v14 = v13;
    v15 = sub_25DD0923C();
    v16 = *(v15 + 32);
    v17 = *(v15 + 5);
    v18 = v15[1];
    v23 = *v15;
    v24 = v18;
    LOBYTE(v25) = v16;
    v26 = v17;
    v10 = &v23;
    *v14 = OpenAPIMIMEType.description.getter();
    *(v14 + 8) = v19;
    *(v14 + 48) = 7;
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_25DD21728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  return MEMORY[0x2822009F8](sub_25DD21750, 0, 0);
}

uint64_t sub_25DD21750()
{
  v6 = v0;
  v1 = *(v0 + 112);
  sub_25DD08A7C(*(v0 + 136), v0 + 64);
  sub_25DD6FC30(1, 1, 1, (v0 + 64), v5);
  sub_25DD73978(v5, v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_25DD21834;
  v3 = *(v0 + 112);

  return Data.init(collecting:upTo:)(v3, 0x7FFFFFFFFFFFFFFFLL);
}

uint64_t sub_25DD21834(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 144);
  v8 = *v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = v2;

  if (v2)
  {
    v6 = sub_25DD21A80;
  }

  else
  {
    v6 = sub_25DD2194C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25DD2194C()
{
  v1 = v0[20];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  sub_25DD21C5C(v2, v1);
  v6 = sub_25DD21AE4(v2, v1);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_25DD7398C();
  sub_25DD73998(v4, v13, v14, v6, v8, v10, v12, v4, v3);
  v15 = v0[19];
  v16 = v0[20];
  sub_25DD2085C((v0 + 2));

  sub_25DD01088(v15, v16);
  v17 = v0[1];

  return v17();
}

uint64_t sub_25DD21A80()
{
  sub_25DD2085C(v0 + 16);
  v1 = *(v0 + 168);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25DD21AE4(uint64_t a1, unint64_t a2)
{
  sub_25DD26524(a1, a2);
  if (v4)
  {
    goto LABEL_8;
  }

  v8 = a1;
  v9 = a2;
  sub_25DD21C5C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23E0, &unk_25DD9BEC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_25DD114CC(v6, &qword_27FCC23E8, &qword_25DD99BF8);
LABEL_7:
    sub_25DD25EB0(a1, a2);
LABEL_8:
    sub_25DD01088(a1, a2);
    return sub_25DD96F54();
  }

  sub_25DCFE2FC(v6, v10);
  __swift_project_boxed_opaque_existential_1(v10, v11);
  if ((sub_25DD972E4() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    goto LABEL_7;
  }

  sub_25DD01088(a1, a2);
  __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_25DD972D4();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return sub_25DD96F54();
}

uint64_t sub_25DD21C5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

_BYTE *sub_25DD21CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25DD08A7C(v3, v14);
  sub_25DD6FC30(1, 1, 1, v14, v15);
  sub_25DD83CF4(v15, v16);
  v8 = v16;
  v9 = sub_25DD83D3C(a1, 0, 0xE000000000000000, a2, a3);
  if (!v4)
  {
    v11 = v9;
    v12 = v10;
    type metadata accessor for HTTPBody();
    v15[0] = v11;
    v15[1] = v12;
    sub_25DD07E24();
    v8 = HTTPBody.__allocating_init<A>(_:)(v15, MEMORY[0x277D837D0]);
  }

  sub_25DD1ACC8(v16);
  return v8;
}

uint64_t sub_25DD21DA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a6;
  v66 = a5;
  v74 = a4;
  v75 = a3;
  v7 = *(*a1 + 80);
  v64 = type metadata accessor for MultipartBody();
  v63 = type metadata accessor for MultipartRawPart();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_25DD97384();
  v70 = swift_getWitnessTable();
  v10 = type metadata accessor for MultipartValidationSequence();
  v68 = swift_getWitnessTable();
  v77 = v10;
  v11 = type metadata accessor for MultipartRawPartsToFramesSequence();
  v72 = swift_getWitnessTable();
  v73 = type metadata accessor for MultipartFramesToBytesSequence();
  v71 = *(v73 - 8);
  v12 = *(v71 + 64);
  v13 = MEMORY[0x28223BE20](v73);
  v69 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v67 = &v55 - v16;
  v65 = *(v11 - 8);
  v17 = *(v65 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v60 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v59 = &v55 - v21;
  v78 = *(v10 - 8);
  v22 = *(v78 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v76 = &v55 - v27;
  v58 = *(v9 - 8);
  v28 = v58;
  v29 = *(v58 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v32 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v55 - v33;
  v57 = &v55 - v33;
  v56 = a1;
  v80 = a1;
  v35 = swift_allocObject();
  v36 = v66;
  v35[2] = v7;
  v35[3] = v36;
  v35[4] = v61;

  sub_25DD96E14();

  (*(v28 + 16))(v32, v34, v9);
  v37 = a2[1];
  v84 = a2[2];
  v85 = v37;
  v38 = a2[3];
  v82 = a2[4];
  v83 = v38;
  sub_25DD12B90(&v85, &v80, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v84, &v80, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v83, &v80, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v82, &v80, &qword_27FCC2380, &qword_25DD9E8F0);
  v39 = v76;
  v40 = v9;
  v41 = sub_25DD6BD44(v32, a2, v9, v76);
  v42 = v77;
  (*(v78 + 16))(v25, v39, v77, v41);
  v43 = v59;
  sub_25DD3D184(v25, v42, v59);
  v44 = v65;
  v45 = v60;
  v46 = v11;
  (*(v65 + 16))(v60, v43, v11);
  v47 = v74;

  v48 = v67;
  sub_25DD594A0(v45, v75, v47, v11, v67);
  type metadata accessor for HTTPBody();
  v49 = v71;
  v50 = v69;
  v51 = v73;
  (*(v71 + 16))(v69, v48, v73);
  v80 = 0;
  v81 = 1;
  v79 = *(v56 + 16);
  v52 = swift_getWitnessTable();
  v53 = HTTPBody.__allocating_init<A>(_:length:iterationBehavior:)(v50, &v80, &v79, v51, v52);
  (*(v49 + 8))(v48, v51);
  (*(v44 + 8))(v43, v46);
  (*(v78 + 8))(v76, v77);
  (*(v58 + 8))(v57, v40);
  return v53;
}

uint64_t sub_25DD22444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(*(sub_25DD969E4() - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD224D8, 0, 0);
}

uint64_t sub_25DD224D8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  (*(v0 + 40))(*(v0 + 32));
  v3 = *(v0 + 24);
  v4 = *(v3 + *(type metadata accessor for MultipartRawPart() + 20));
  if ((*(v4 + 32) & 1) == 0)
  {
    v5 = *(v4 + 24);
    v6 = *(v0 + 56);
    MEMORY[0x25F8A2FD0]();
    *(v0 + 16) = v5;
    sub_25DD97374();
    sub_25DD96834();
  }

  v7 = *(v0 + 56);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25DD225C8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 24);
  v6 = *(v2 + 32);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25DD1BF14;

  return sub_25DD22444(a1, a2, v7, v6);
}

uint64_t sub_25DD2267C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a7;
  v36 = a6;
  v35 = a5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC23A8, &qword_25DD99BE0);
  v32 = sub_25DD187C0(&qword_27FCC23B0, &qword_27FCC23A8, &qword_25DD99BE0);
  v11 = sub_25DD97384();
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v30 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v28 = a1;
  *&v38 = a1;
  v17 = type metadata accessor for HTTPBody();
  sub_25DD266D0(&qword_27FCC23B8, type metadata accessor for HTTPBody);

  sub_25DD52308(&v38, a2, a3, v17, &v46);
  v29 = v46;
  v38 = v46;
  *&v39 = v47;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23C0, &qword_25DD99BE8);
  sub_25DD187C0(&qword_27FCC23C8, &qword_27FCC23C0, &qword_25DD99BE8);
  sub_25DD3D184(&v38, v18, &v46);
  v38 = v46;
  *&v39 = v47;
  v19 = a4[1];
  v44 = a4[2];
  v45 = v19;
  v20 = a4[3];
  v42 = a4[4];
  v43 = v20;

  sub_25DD12B90(&v45, &v46, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v44, &v46, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v43, &v46, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v42, &v46, &qword_27FCC2380, &qword_25DD9E8F0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23D0, &qword_25DD99BF0);
  sub_25DD187C0(&qword_27FCC23D8, &qword_27FCC23D0, &qword_25DD99BF0);
  sub_25DD6BD44(&v38, a4, v21, &v46);
  v38 = v46;
  v39 = v47;
  v40 = v48;
  v41 = v49;
  sub_25DD12B90(&v46, v37, &qword_27FCC23A8, &qword_25DD99BE0);
  sub_25DD96E14();
  type metadata accessor for MultipartBody();
  v22 = v34;
  v23 = v30;
  (*(v34 + 16))(v30, v16, v11);
  LOBYTE(v38) = *(v28 + 16);
  WitnessTable = swift_getWitnessTable();
  v25 = MultipartBody.__allocating_init<A>(_:iterationBehavior:)(v23, &v38, v11, WitnessTable);
  sub_25DD114CC(&v46, &qword_27FCC23A8, &qword_25DD99BE0);

  (*(v22 + 8))(v16, v11);
  return v25;
}

uint64_t sub_25DD22B2C()
{
  v2 = *(v0 + 144);
  v3 = sub_25DD96574();
  if (!v1)
  {
    v5 = v3;
    v6 = v4;
    sub_25DD21C5C(v3, v4);
    v7 = sub_25DD26524(v5, v6);
    if (v8)
    {
      v2 = v7;
      sub_25DD01088(v5, v6);
LABEL_10:
      sub_25DD01088(v5, v6);
      return v2;
    }

    v13 = v5;
    v14 = v6;
    sub_25DD21C5C(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23E0, &unk_25DD9BEC0);
    if (swift_dynamicCast())
    {
      sub_25DCFE2FC(v11, v15);
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v9 = sub_25DD972E4();
      sub_25DD01088(v5, v6);
      if (v9)
      {
        __swift_project_boxed_opaque_existential_1(v15, v16);
        sub_25DD972D4();
        sub_25DD01088(v5, v6);
        v2 = *&v11[0];
        __swift_destroy_boxed_opaque_existential_1(v15);
        return v2;
      }

      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      sub_25DD01088(v5, v6);
      v12 = 0;
      memset(v11, 0, sizeof(v11));
      sub_25DD114CC(v11, &qword_27FCC23E8, &qword_25DD99BF8);
    }

    v2 = sub_25DD25EB0(v5, v6);
    goto LABEL_10;
  }

  return v2;
}

uint64_t sub_25DD22D04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{

  v9 = sub_25DD22DB4(a1, a2, a3, a4);
  v11 = v10;
  v12 = *(v4 + 136);
  sub_25DD964D4();
  return sub_25DD01088(v9, v11);
}

uint64_t sub_25DD22DB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  *&v46 = a1;
  *(&v46 + 1) = a2;
  v47 = a3;
  v48 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2408, &qword_25DD99C18);
  if (!swift_dynamicCast())
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_25DD114CC(v44, &qword_27FCC2410, &unk_25DD9BBC0);
    sub_25DD26798(a1, a2, a3, a4, &v39);
    v8 = *(&v39 + 1);
    v9 = v39;
    if (*(&v39 + 1) >> 60 != 15)
    {
      v44[0] = v39;
      goto LABEL_54;
    }

    v10 = sub_25DD96F34();
    *&v44[0] = sub_25DD26B4C(v10);
    *(&v44[0] + 1) = v11;
    MEMORY[0x28223BE20](*&v44[0]);
    sub_25DD26020(sub_25DD26BEC, &v39);
    v13 = v40;
    v12 = v41;
    v14 = v42;
    v15 = *(&v44[0] + 1) >> 62;
    if ((*(&v44[0] + 1) >> 62) > 1)
    {
      if (v15 == 2)
      {
        v17 = *(*&v44[0] + 16);
        v16 = *(*&v44[0] + 24);
        v18 = __OFSUB__(v16, v17);
        v19 = v16 - v17;
        if (v18)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
        }

        if (v43 == v19)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      if (v43)
      {
        v20 = 0;
LABEL_51:
        if (v20 >= v43)
        {
          sub_25DD96754();
LABEL_53:

          goto LABEL_54;
        }

LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    else
    {
      if (!v15)
      {
        if (v43 == BYTE14(v44[0]))
        {
          goto LABEL_20;
        }

LABEL_15:
        if (v15 == 2)
        {
          v20 = *(*&v44[0] + 24);
        }

        else if (v15 == 1)
        {
          v20 = *&v44[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v44[0]);
        }

        goto LABEL_51;
      }

      if (__OFSUB__(DWORD1(v44[0]), v44[0]))
      {
        goto LABEL_61;
      }

      if (v43 != DWORD1(v44[0]) - LODWORD(v44[0]))
      {
        goto LABEL_15;
      }
    }

LABEL_20:
    v21 = *(&v39 + 1) >> 14;
    *(&v46 + 7) = 0;
    *&v46 = 0;
    if (*(&v39 + 1) >> 14 == v42 >> 14)
    {

      sub_25DD26C08(v9, v8);
      goto LABEL_54;
    }

    v34 = v9;
    v35 = v8;
    LOBYTE(v8) = 0;
    v22 = v39 >> 14;
    v23 = (v40 >> 59) & 1;
    if ((v41 & 0x1000000000000000) == 0)
    {
      LOBYTE(v23) = 1;
    }

    v24 = 4 << v23;
    v37 = v41 & 0xFFFFFFFFFFFFFFLL;
    v36 = (v41 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v25 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v25 = v40 & 0xFFFFFFFFFFFFLL;
    }

    v38 = v25;
    while (1)
    {
      v26 = v14 & 0xC;
      v27 = v14;
      if (v26 == v24)
      {
        v27 = sub_25DD18420(v14, v13, v12);
      }

      if (v27 >> 14 < v22 || v27 >> 14 >= v21)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v30 = sub_25DD96C44();
        if (v26 != v24)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v28 = v27 >> 16;
        if ((v12 & 0x2000000000000000) != 0)
        {
          *&v39 = v13;
          *(&v39 + 1) = v37;
          v30 = *(&v39 + v28);
          if (v26 != v24)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v29 = v36;
          if ((v13 & 0x1000000000000000) == 0)
          {
            v29 = sub_25DD971D4();
          }

          v30 = *(v29 + v28);
          if (v26 != v24)
          {
LABEL_39:
            if ((v12 & 0x1000000000000000) != 0)
            {
              goto LABEL_43;
            }

            goto LABEL_40;
          }
        }
      }

      v14 = sub_25DD18420(v14, v13, v12);
      if ((v12 & 0x1000000000000000) != 0)
      {
LABEL_43:
        if (v38 <= v14 >> 16)
        {
          goto LABEL_58;
        }

        v14 = sub_25DD96C14();
        goto LABEL_45;
      }

LABEL_40:
      v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_45:
      *(&v46 + v8) = v30;
      LOWORD(v8) = v8 + 1;
      if ((v8 & 0x100) != 0)
      {
        goto LABEL_57;
      }

      if (v8 == 14)
      {
        *&v39 = v46;
        *(&v39 + 6) = *(&v46 + 6);
        sub_25DD96764();
        LOBYTE(v8) = 0;
        if (v21 == v14 >> 14)
        {

          sub_25DD26C08(v34, v35);
          goto LABEL_54;
        }
      }

      else if (v21 == v14 >> 14)
      {
        *&v39 = v46;
        *(&v39 + 6) = *(&v46 + 6);
        sub_25DD96764();
        sub_25DD26C08(v34, v35);
        goto LABEL_53;
      }
    }
  }

  sub_25DCFE2FC(v44, &v39);
  __swift_project_boxed_opaque_existential_1(&v39, v41);
  sub_25DD966D4();
  v44[0] = v46;
  __swift_destroy_boxed_opaque_existential_1(&v39);
LABEL_54:
  v31 = v44[0];
  sub_25DD21C5C(*&v44[0], *(&v44[0] + 1));

  sub_25DD01088(v31, *(&v31 + 1));
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t sub_25DD23308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7)
{
  v43 = a3;
  v39 = a6;
  v40 = a5;
  v42 = a2;
  v37[2] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23A0, &qword_25DD99BB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v37 - v11;
  v13 = sub_25DD969E4();
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v38 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25DD96A34();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v37[1] = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25DD96F04();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v37 - v23;
  v25 = *(a7 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v28 = v37 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v24, a4, v19);
  if ((*(v25 + 48))(v24, 1, a7) == 1)
  {
    return (*(v20 + 8))(v24, v19);
  }

  (*(v25 + 32))(v28, v24, a7);
  v30 = v43;

  v31 = v42;
  sub_25DD969F4();
  v32 = v41;
  if ((*(v41 + 48))(v12, 1, v13) == 1)
  {
    sub_25DD114CC(v12, &qword_27FCC23A0, &qword_25DD99BB0);
    sub_25DD01034();
    swift_allocError();
    *v33 = v31;
    *(v33 + 8) = v30;
    *(v33 + 48) = 4;
    swift_willThrow();
  }

  else
  {
    v34 = v38;
    (*(v32 + 32))(v38, v12, v13);
    v35 = v44;
    v40(v28);
    if (v35)
    {
      (*(v32 + 8))(v34, v13);
    }

    else
    {
      sub_25DD96A04();
      sub_25DD96814();
      v36 = MEMORY[0x277D0F9A8];
      sub_25DD266D0(&qword_27FCC23F0, MEMORY[0x277D0F9A8]);
      sub_25DD96EA4();
      sub_25DD266D0(&qword_27FCC23F8, v36);
      sub_25DD96EE4();
    }
  }

  return (*(v25 + 8))(v28, a7);
}

uint64_t sub_25DD237AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23A0, &qword_25DD99BB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_25DD969E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_25DD969F4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_25DD114CC(v8, &qword_27FCC23A0, &qword_25DD99BB0);
    sub_25DD01034();
    swift_allocError();
    *v14 = a2;
    *(v14 + 8) = a3;
    *(v14 + 48) = 4;
    swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    a3 = MEMORY[0x25F8A2E40](v13);
    (*(v10 + 8))(v13, v9);
  }

  return a3;
}

uint64_t sub_25DD239A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  result = sub_25DD237AC(a1, a2, a3);
  if (!v6)
  {
    if (v11)
    {
      v12 = sub_25DD96CA4();
      v14 = v13;
      v16 = v15;
      v18 = v17;

      a4(v12, v14, v16, v18);

      return (*(*(a5 - 8) + 56))(a6, 0, 1, a5);
    }

    else
    {
      return (*(*(a5 - 8) + 56))(a6, 1, 1, a5);
    }
  }

  return result;
}

uint64_t sub_25DD23B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_25DD237AC(a1, a2, a3);
  if (!v5)
  {
    if (v10)
    {
      v11 = sub_25DD96CA4();
      v13 = v12;
      v15 = v14;
      v17 = v16;

      a5(v11, v13, v15, v17);
    }

    else
    {
      sub_25DD01034();
      swift_allocError();
      *v18 = a2;
      *(v18 + 8) = a3;
      *(v18 + 48) = 9;
      swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_25DD23C44(uint64_t a1, unsigned __int8 *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *, uint64_t *, void), unint64_t a8, uint64_t a9)
{
  v96 = a8;
  v97 = a7;
  v105 = a5;
  v98 = a4;
  v95 = a1;
  v13 = sub_25DD96F04();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v82 - v17;
  v19 = *(*(a9 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a2;
  v23 = a6;
  v25 = v24;
  (*(v14 + 16))(v18, v23, v13);
  if ((*(v25 + 48))(v18, 1, a9) == 1)
  {
    return (*(v14 + 8))(v18, v13);
  }

  (*(v25 + 32))(v21, v18, a9);
  v27 = v21;
  if (v22 == 3)
  {
    v22 = *sub_25DD27C18();
  }

  if (a3 == 2)
  {
    LOBYTE(v99) = v22;
    a3 = sub_25DD27C50(&v99);
  }

  if (v22 == 1)
  {
    sub_25DD01034();
    swift_allocError();
    v28 = v105;
    *v29 = v98;
    *(v29 + 8) = v28;
    *(v29 + 16) = 1;
    *(v29 + 17) = a3 & 1;
    *(v29 + 48) = 8;
    swift_willThrow();
    v30 = *(v25 + 8);

    return v30(v27, a9);
  }

  LOBYTE(v99) = v22;
  v31 = v97(v21, &v99, a3 & 1);
  if (v9)
  {
    return (*(v25 + 8))(v21, a9);
  }

  v97 = v31;
  v98 = v32;
  MEMORY[0x25F8A2E70]();
  if (!v33)
  {

    sub_25DD01034();
    swift_allocError();
    *v46 = 1;
    *(v46 + 8) = 0u;
    *(v46 + 24) = 0u;
    *(v46 + 40) = 0;
    *(v46 + 48) = 20;
    swift_willThrow();
    return (*(v25 + 8))(v21, a9);
  }

  v92 = v21;
  v94 = a9;
  v34 = sub_25DD96CA4();
  v36 = v35;
  v38 = v37;

  v39 = v36 >> 14;
  v96 = v34 >> 14;
  v93 = v25;
  if (v34 >> 14 == v36 >> 14)
  {
    result = sub_25DD96F64();
    v88 = result;
    v89 = v40;
    v90 = v41;
    v91 = v42;
    v43 = 1;
    v87 = v36 >> 14;
    v44 = v36;
    v45 = v94;
  }

  else
  {
    v86 = 0;
    v47 = v34;
    v105 = v38;
    while (sub_25DD96F44() != 35 || v48 != 0xE100000000000000)
    {
      v49 = sub_25DD975D4();

      if (v49)
      {
        goto LABEL_22;
      }

      result = sub_25DD96F24();
      v47 = result;
      if (v39 == result >> 14)
      {
        v47 = v36;
        goto LABEL_22;
      }
    }

LABEL_22:
    if (v39 < v47 >> 14)
    {
      goto LABEL_42;
    }

    v87 = v47 >> 14;
    result = sub_25DD96F64();
    v88 = result;
    v89 = v50;
    v90 = v51;
    v91 = v52;
    if (v96 != v39)
    {
      v53 = v34;
      while (sub_25DD96F44() != 63 || v54 != 0xE100000000000000)
      {
        v55 = sub_25DD975D4();

        if (v55)
        {
          result = v53;
          goto LABEL_34;
        }

        v53 = sub_25DD96F24();
        if (v39 == v53 >> 14)
        {
          result = 0;
          v53 = v47;
LABEL_34:
          v43 = v55 ^ 1;
          v44 = v53;
          v45 = v94;
          goto LABEL_35;
        }
      }

      if (v96 > v53 >> 14)
      {
        goto LABEL_40;
      }

      v56 = sub_25DD96F64();
      goto LABEL_38;
    }

    v43 = 1;
    v44 = v47;
    v45 = v94;
  }

LABEL_35:
  if (v96 <= v44 >> 14)
  {
    v56 = sub_25DD96F64();
    if (v43)
    {
      v60 = v56;
      v61 = v59;
      v62 = v58;
      v63 = v57;

      v99 = 63;
      v100 = 0xE100000000000000;
      MEMORY[0x25F8A3200](v97, v98);

      v64 = MEMORY[0x25F8A3180](v88, v89, v90, v91);
      v66 = v65;

      MEMORY[0x25F8A3200](v64, v66);

      v103 = v99;
      v104 = v100;
      v99 = v60;
      v100 = v63;
      v101 = v62;
      v102 = v61;
      sub_25DD26718();
      v99 = sub_25DD96C94();
      v100 = v67;
      sub_25DD96BD4();

      MEMORY[0x25F8A2E80](v99, v100);
      return (*(v93 + 8))(v92, v45);
    }

LABEL_38:
    v83 = v56;
    v84 = v57;
    v85 = v58;
    v96 = v59;
    result = sub_25DD96F24();
    if (v87 >= result >> 14)
    {
      v68 = sub_25DD96F64();
      v70 = v69;
      v72 = v71;
      v74 = v73;

      v99 = 63;
      v100 = 0xE100000000000000;
      v75 = MEMORY[0x25F8A3180](v68, v70, v72, v74);
      v77 = v76;

      MEMORY[0x25F8A3200](v75, v77);

      MEMORY[0x25F8A3200](38, 0xE100000000000000);
      MEMORY[0x25F8A3200](v97, v98);

      v78 = MEMORY[0x25F8A3180](v88, v89, v90, v91);
      v80 = v79;

      MEMORY[0x25F8A3200](v78, v80);

      v103 = v99;
      v104 = v100;
      v99 = v83;
      v100 = v84;
      v101 = v85;
      v102 = v96;
      sub_25DD26718();
      v99 = sub_25DD96C94();
      v100 = v81;
      sub_25DD96BD4();

      MEMORY[0x25F8A2E80](v99, v100);
      return (*(v93 + 8))(v92, v94);
    }

    goto LABEL_41;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_25DD244BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(unint64_t, uint64_t, uint64_t, uint64_t, char *, void), uint64_t a12, uint64_t a13)
{
  if (!a4 || (a2 ^ a1) < 0x4000)
  {
    return (*(*(a13 - 8) + 56))(a9, 1, 1);
  }

  v20 = *a5;
  if (v20 == 3)
  {
    v21 = a6;
    v22 = sub_25DD27C18();
    a6 = v21;
    v20 = *v22;
  }

  if (a6 == 2)
  {
    v26 = v20;
    a6 = sub_25DD27C50(&v26);
  }

  if (v20 == 1)
  {
    v23 = a6;
    sub_25DD01034();
    swift_allocError();
    *v24 = a7;
    *(v24 + 8) = a8;
    *(v24 + 16) = 1;
    *(v24 + 17) = v23 & 1;
    *(v24 + 48) = 8;
    swift_willThrow();
  }

  else
  {
    v25 = v20;
    return a11(a1, a2, a3, a4, &v25, a6 & 1);
  }
}

uint64_t sub_25DD24630@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v36 = a7;
  v42 = a6;
  v34 = a3;
  v35 = a4;
  v33 = a9;
  v17 = sub_25DD96F04();
  v32 = *(v17 - 8);
  v18 = *(v32 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - v19;
  LOBYTE(v19) = *a5;
  v21 = a8;
  v43 = v19;
  v39 = a13;
  v40 = a11;
  v41 = a12;
  v22 = a1;
  v23 = v36;
  v24 = v37;
  result = sub_25DD244BC(v22, a2, v34, v35, &v43, v42, v36, a8, v20, v31, sub_25DD2676C, v38, a13);
  if (!v24)
  {
    v27 = v32;
    v26 = v33;
    v28 = v17;
    v29 = *(a13 - 8);
    if ((*(v29 + 48))(v20, 1, a13) == 1)
    {
      (*(v27 + 8))(v20, v28);
      sub_25DD01034();
      swift_allocError();
      *v30 = v23;
      *(v30 + 8) = v21;
      *(v30 + 48) = 14;
      swift_willThrow();
    }

    else
    {
      return (*(v29 + 32))(v26, v20, a13);
    }
  }

  return result;
}

uint64_t sub_25DD2486C@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v9(v6);
  if (!v2)
  {
    (*(v4 + 32))(a1, v8, a2);
    return (*(v4 + 56))(a1, 0, 1, a2);
  }

  return result;
}

uint64_t sub_25DD2496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = sub_25DD969E4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  result = a5(a1);
  if (!v5)
  {
    v11 = result;
    MEMORY[0x25F8A2FC0]();

    sub_25DD96834();
    result = v11;
    if ((*(v11 + 32) & 1) == 0)
    {
      v12 = *(v11 + 24);
      MEMORY[0x25F8A2FD0]();
      sub_25DD97374();
      sub_25DD96834();
      return v11;
    }
  }

  return result;
}

uint64_t sub_25DD24A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v11 = sub_25DD96F04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23 - v15;
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v11);
  if ((*(v17 + 48))(v16, 1, a7) == 1)
  {
    (*(v12 + 8))(v16, v11);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v20, v16, a7);
    v22 = sub_25DD2496C(v20, a2, v24, v25, v26);
    result = (*(v17 + 8))(v20, a7);
    if (!v7)
    {
      return v22;
    }
  }

  return result;
}

uint64_t sub_25DD24CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v13;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  v9 = *(a8 - 8);
  v8[10] = v9;
  v10 = *(v9 + 64) + 15;
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD24D74, 0, 0);
}

uint64_t sub_25DD24D74()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[6];
    v3 = v0[3];

    v11 = (v2 + *v2);
    v4 = v2[1];
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_25DD24F00;
    v6 = v0[11];
    v7 = v0[7];

    return v11(v6, v1);
  }

  else
  {
    v9 = v0[11];
    (*(*(v0[9] - 8) + 56))(v0[2], 1, 1);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_25DD24F00()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_25DD25100;
  }

  else
  {
    v3 = sub_25DD25014;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD25014()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  (*(v0 + 32))(v1);

  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 88);
  (*(*(*(v0 + 72) - 8) + 56))(*(v0 + 16), 0, 1);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25DD25100()
{
  v1 = v0[11];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_25DD25170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[2] = a1;
  v9[3] = a9;
  v16 = sub_25DD96F04();
  v9[4] = v16;
  v17 = *(v16 - 8);
  v9[5] = v17;
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  v9[6] = v19;
  v21 = swift_task_alloc();
  v9[7] = v21;
  *v21 = v9;
  v21[1] = sub_25DD252BC;

  return sub_25DD24CAC(v19, v20, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_25DD252BC()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_25DD2553C;
  }

  else
  {
    v3 = sub_25DD253D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD253D0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[5] + 8))(v1, v0[4]);
    sub_25DD01034();
    swift_allocError();
    *v4 = 2;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0;
    *(v4 + 48) = 20;
    swift_willThrow();
    v5 = v0[6];
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_25DD2553C()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25DD255A0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v15)
  {
    return (*(*(a4 - 8) + 56))(a5, 1, 1, a4);
  }

  v19 = v12;

  a2(v16);
  if (v5)
  {
  }

  v19(v14);

  (*(v10 + 8))(v14, a3);
  return (*(*(a4 - 8) + 56))(a5, 0, 1, a4);
}

uint64_t sub_25DD25738@<X0>(void (*a1)(uint64_t)@<X4>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v20 = a4;
  v7 = sub_25DD96F04();
  v19 = *(v7 - 8);
  v8 = *(v19 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = v21;
  result = sub_25DD255A0(v9, a1, a2, a3, &v19 - v10);
  if (!v12)
  {
    v14 = v7;
    v16 = v19;
    v15 = v20;
    v17 = *(a3 - 8);
    if ((*(v17 + 48))(v11, 1, a3) == 1)
    {
      (*(v16 + 8))(v11, v14);
      sub_25DD01034();
      swift_allocError();
      *v18 = 2;
      *(v18 + 8) = 0u;
      *(v18 + 24) = 0u;
      *(v18 + 40) = 0;
      *(v18 + 48) = 20;
      return swift_willThrow();
    }

    else
    {
      return (*(v17 + 32))(v15, v11, a3);
    }
  }

  return result;
}

uint64_t sub_25DD25940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a5;
  v8[5] = a8;
  v8[2] = a1;
  v8[3] = a4;
  v11 = *(a8 - 8);
  v8[6] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v8[7] = v13;
  v17 = (a6 + *a6);
  v14 = a6[1];
  v15 = swift_task_alloc();
  v8[8] = v15;
  *v15 = v8;
  v15[1] = sub_25DD25AA8;

  return v17(v13, a3);
}

uint64_t sub_25DD25AA8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_25DD25C58;
  }

  else
  {
    v3 = sub_25DD25BBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD25BBC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  (*(v0 + 24))(v1);
  (*(v2 + 8))(v1, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25DD25C58()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_25DD25CBC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a2);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12);
  if (!v7)
  {
    a3(v14);
    return (*(v10 + 8))(v14, a7);
  }

  return result;
}

uint64_t sub_25DD25DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*(a1 + 16) && (v9 = sub_25DCFF99C(a2, a3), (v10 & 1) != 0))
  {
    v11 = (*(a1 + 56) + 32 * v9);
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    v15 = v11[3];

    a5(v13, v12, v14, v15);
  }

  else
  {
    sub_25DD01034();
    swift_allocError();
    *v17 = a2;
    *(v17 + 8) = a3;
    *(v17 + 48) = 13;
    swift_willThrow();
  }
}

uint64_t sub_25DD25EB0(uint64_t a1, unint64_t a2)
{
  sub_25DD21C5C(a1, a2);
  v4 = *(sub_25DD00CE0(a1, a2) + 16);
  v5 = sub_25DD96B74();

  return v5;
}

uint64_t sub_25DD25F1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25DD96B74();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25DD25F58@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_25DD012D4(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_25DD96694();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_25DD96644();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_25DD96744();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_25DD26020@<X0>(void *(*a1)(__int128 *__return_ptr, char *, char *)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v33 = *MEMORY[0x277D85DE8];
  v8 = *v2;
  v7 = v2[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 == 2)
    {

      sub_25DD01088(v8, v7);
      *&v32 = v8;
      *(&v32 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_25DD99B90;
      sub_25DD01088(0, 0xC000000000000000);
      sub_25DD96714();
      v12 = v32;
      result = sub_25DD26458(*(v32 + 16), *(v32 + 24), a1, &v28);
      v13 = v28;
      v14 = v29;
      v15 = v30;
      v16 = v31;
      *v2 = v12;
      v2[1] = *(&v12 + 1) | 0x8000000000000000;
      if (v3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *(&v32 + 7) = 0;
      *&v32 = 0;
      result = a1(&v28, &v32, &v32);
      if (v3)
      {
        goto LABEL_21;
      }

      v13 = v28;
      v14 = v29;
      v15 = v30;
      v16 = v31;
    }

LABEL_20:
    *a2 = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
    goto LABEL_21;
  }

  if (v9)
  {
    v17 = v7 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25DD01088(v8, v7);
    *v2 = xmmword_25DD99B90;
    sub_25DD01088(0, 0xC000000000000000);
    v18 = v8 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v18 < v8)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (sub_25DD96654() && __OFSUB__(v8, sub_25DD96684()))
      {
LABEL_24:
        __break(1u);
      }

      v20 = sub_25DD96694();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      v23 = sub_25DD96634();

      v17 = v23;
    }

    if (v18 >= v8)
    {

      sub_25DD26458(v8, v8 >> 32, a1, &v28);
      v14 = v29;
      v15 = v30;
      v26 = v31;
      v27 = v28;

      *v4 = v8;
      v4[1] = v17 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_21;
      }

      v16 = v26;
      v13 = v27;
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_25DD01088(v8, v7);
  *&v32 = v8;
  WORD4(v32) = v7;
  BYTE10(v32) = BYTE2(v7);
  BYTE11(v32) = BYTE3(v7);
  BYTE12(v32) = BYTE4(v7);
  BYTE13(v32) = BYTE5(v7);
  BYTE14(v32) = BYTE6(v7);
  result = a1(&v28, &v32, &v32 + BYTE6(v7));
  if (!v3)
  {
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v16 = v31;
    v19 = DWORD2(v32) | ((WORD6(v32) | (BYTE14(v32) << 16)) << 32);
    *v2 = v32;
    v2[1] = v19;
    goto LABEL_20;
  }

  v11 = DWORD2(v32) | ((WORD6(v32) | (BYTE14(v32) << 16)) << 32);
  *v2 = v32;
  v2[1] = v11;
LABEL_21:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_25DD263D8@<X0>(void *(*a1)(__int128 *__return_ptr, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2)
  {
    result = a1(&v10, a2, a3 - a2);
    if (!v4)
    {
LABEL_3:
      v7 = v11;
      v8 = v12;
      v9 = v13;
      *a4 = v10;
      *(a4 + 16) = v7;
      *(a4 + 24) = v8;
      *(a4 + 32) = v9;
      return result;
    }
  }

  else
  {
    result = a1(&v10, 0, 0);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

char *sub_25DD26458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(__int128 *__return_ptr, char *, char *)@<X2>, uint64_t a4@<X8>)
{
  result = sub_25DD96654();
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = result;
  result = sub_25DD96684();
  v11 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = sub_25DD96674();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = a3(&v19, &v10[v11], &v10[v11 + v15]);
  if (!v4)
  {
    v16 = v20;
    v17 = v21;
    v18 = v22;
    *a4 = v19;
    *(a4 + 16) = v16;
    *(a4 + 24) = v17;
    *(a4 + 32) = v18;
  }

  return result;
}

uint64_t sub_25DD26524(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_25DD96654();
  if (a1)
  {
    a1 = sub_25DD96684();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_25DD96654() || !__OFSUB__(v5, sub_25DD96684()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_25DD96674();
LABEL_16:
  result = sub_25DD96B74();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25DD266D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25DD26718()
{
  result = qword_27FCC2400;
  if (!qword_27FCC2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2400);
  }

  return result;
}

uint64_t sub_25DD2676C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_25DD2486C(a1, v1[2]);
}

double sub_25DD26798@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0.0;
    *a5 = xmmword_25DD99BA0;
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v12[0] = a3;
      v12[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      v9 = v12;
    }

    else if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v11 = a5;
      v9 = sub_25DD971D4();
      a5 = v11;
    }

    sub_25DD2683C(v9, a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_25DD2683C@<X0>(uint64_t result@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, void *a6@<X8>)
{
  v7 = result;
  v8 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v10 = a2 & 0xC;
  v11 = a2;
  if (v10 == 4 << v8)
  {
    v13 = a2;
    v14 = a6;
    v15 = a5;
    v16 = a3;
    result = sub_25DD18420(a2, a4, a5);
    a2 = v13;
    a3 = v16;
    a5 = v15;
    a6 = v14;
    v11 = result;
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v12 = v11 >> 16;
      if (v10 != v9)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a6;
  v18 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(a5) & 0xF;
  }

  if (v18 < v11 >> 16)
  {
    goto LABEL_31;
  }

  v19 = a2;
  v20 = a3;
  v21 = a5;
  result = sub_25DD96C34();
  a5 = v21;
  v12 = result;
  a6 = v17;
  a3 = v20;
  a2 = v19;
  if (v10 == v9)
  {
LABEL_14:
    v22 = a6;
    v23 = a5;
    v24 = a3;
    result = sub_25DD18420(a2, a4, a5);
    a3 = v24;
    a5 = v23;
    a6 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v9)
  {
    v25 = a2;
    v26 = a6;
    v27 = a5;
    result = sub_25DD18420(a3, a4, a5);
    a2 = v25;
    a5 = v27;
    a6 = v26;
    a3 = result;
    if ((v27 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v28 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v28 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v28 < a2 >> 16)
  {
    goto LABEL_29;
  }

  if (v28 < a3 >> 16)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v29 = a6;
  result = sub_25DD96C34();
  a6 = v29;
LABEL_21:
  if (__OFADD__(v12, result))
  {
    __break(1u);
    goto LABEL_28;
  }

  v30 = result;
  if (v12 + result < v12)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v7)
  {
    v31 = (v12 + v7);
  }

  else
  {
    v31 = 0;
  }

  return sub_25DD25F58(v31, v30, a6);
}

double sub_25DD26A54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  v15 = *a3;
  v16 = v5;
  v17 = v6;
  sub_25DD263D8(sub_25DD26C1C, a1, a2, &v11);
  v7 = v12;
  v8 = v13;
  result = *&v11;
  v10 = v14;
  *a4 = v11;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  return result;
}

uint64_t sub_25DD26ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = sub_25DD18200(v9, a1, a2, *a3, a3[1], a3[2], a3[3]);
  v6 = v10;
  v7 = v9[1];
  *a4 = v9[0];
  *(a4 + 16) = v7;
  *(a4 + 32) = v6;
  *(a4 + 40) = v5;
}

uint64_t sub_25DD26B4C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_25DD96694();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_25DD96664();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25DD96744();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_25DD26C08(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25DD01088(a1, a2);
  }

  return a1;
}

uint64_t sub_25DD26C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
  *a3 = a1;
  sub_25DD26D44();
  swift_allocError();
  *v7 = a2;

  sub_25DD97174();
  v8 = *MEMORY[0x277D84170];
  v9 = sub_25DD97194();
  v10 = *(*(v9 - 8) + 104);

  return v10(a3, v8, v9);
}

unint64_t sub_25DD26D44()
{
  result = qword_27FCC2420;
  if (!qword_27FCC2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2420);
  }

  return result;
}

uint64_t static DecodingError.failedToDecodeOneOfSchema(type:codingPath:errors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
  *a3 = a1;
  sub_25DD26D44();
  swift_allocError();
  *v7 = a2;

  sub_25DD97174();
  v8 = *MEMORY[0x277D84170];
  v9 = sub_25DD97194();
  v10 = *(*(v9 - 8) + 104);

  return v10(a3, v8, v9);
}

uint64_t static DecodingError.unknownOneOfDiscriminator(discriminatorKey:discriminatorValue:codingPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2428, &qword_25DD99C28) + 48);
  sub_25DD08A7C(a1, a4);

  sub_25DD97124();
  MEMORY[0x25F8A3200](0xD000000000000047, 0x800000025DDAA2B0);
  MEMORY[0x25F8A3200](a2, a3);
  MEMORY[0x25F8A3200](11815, 0xE200000000000000);
  sub_25DD97174();
  v9 = *MEMORY[0x277D84158];
  v10 = sub_25DD97194();
  v11 = *(*(v10 - 8) + 104);

  return v11(a4, v9, v10);
}

uint64_t static DecodingError.verifyAtLeastOneSchemaIsNotNil(_:type:codingPath:errors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    while (1)
    {
      sub_25DD27160(v7, v15);
      v8 = v15[3];
      result = sub_25DD114CC(v15, &qword_27FCC2430, &unk_25DD99C30);
      if (v8)
      {
        break;
      }

      v7 += 32;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v10 = sub_25DD97194();
    swift_allocError();
    v12 = v11;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
    *v12 = a2;
    sub_25DD26D44();
    swift_allocError();
    *v14 = a4;

    sub_25DD97174();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D84170], v10);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25DD27160(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2430, &unk_25DD99C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD271D4(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_25DD27200(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  v46 = v1;
  if (v1)
  {
    v55 = MEMORY[0x277D84F90];
    sub_25DD055C4(0, v1, 0);
    v4 = v55;
    v5 = (a1 + 32);
    do
    {
      v6 = *v5;
      v50 = v6;
      v7 = v6;
      v8 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2438, &qword_25DD99C40);
      if (swift_dynamicCast())
      {
        sub_25DCFE2FC(v48, &v51);
        v9 = v53;
        v10 = v54;
        __swift_project_boxed_opaque_existential_1(&v51, v53);
        v11 = (*(v10 + 8))(v9, v10);
        v13 = v12;
        MEMORY[0x25F8A43F0](v6);
        __swift_destroy_boxed_opaque_existential_1(&v51);
      }

      else
      {
        v49 = 0;
        memset(v48, 0, sizeof(v48));
        sub_25DD114CC(v48, &qword_27FCC2440, &unk_25DD99C48);
        v51 = 0;
        v52 = 0xE000000000000000;
        *&v48[0] = v6;
        sub_25DD97224();
        MEMORY[0x25F8A43F0](v6);
        v11 = v51;
        v13 = v52;
      }

      v55 = v4;
      v15 = v4[2];
      v14 = v4[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_25DD055C4((v14 > 1), v15 + 1, 1);
        v4 = v55;
      }

      v4[2] = v16;
      v17 = &v4[2 * v15];
      v17[4] = v11;
      v17[5] = v13;
      ++v5;
      --v1;
    }

    while (v1);
    v2 = MEMORY[0x277D84F90];
LABEL_12:
    v51 = v2;
    result = sub_25DD27838(0, v16, 0);
    v19 = v51;
    v20 = v4[2];
    v47 = -v16;
    v21 = v4 + 5;
    v22 = 1;
    do
    {
      if (!v20)
      {
        __break(1u);
        return result;
      }

      v24 = *(v21 - 1);
      v23 = *v21;
      v51 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);

      if (v26 >= v25 >> 1)
      {
        result = sub_25DD27838((v25 > 1), v26 + 1, 1);
        v19 = v51;
      }

      *(v19 + 16) = v26 + 1;
      v27 = (v19 + 24 * v26);
      v27[4] = v22;
      v27[5] = v24;
      v27[6] = v23;
      --v20;
      ++v22;
      v21 += 2;
    }

    while (v47 + v22 != 1);

    v2 = MEMORY[0x277D84F90];
    v28 = *(v19 + 16);
    if (!v28)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v16 = *(MEMORY[0x277D84F90] + 16);
  if (v16)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v19 = MEMORY[0x277D84F90];

  v28 = *(v19 + 16);
  if (v28)
  {
LABEL_18:
    *&v48[0] = v2;
    sub_25DD055C4(0, v28, 0);
    v29 = *&v48[0];
    v30 = (v19 + 48);
    do
    {
      v31 = *(v30 - 2);
      v32 = *(v30 - 1);
      v33 = *v30;
      v51 = 0x20726F727245;
      v52 = 0xE600000000000000;
      v55 = v31;

      v34 = sub_25DD97374();
      MEMORY[0x25F8A3200](v34);

      MEMORY[0x25F8A3200](5972026, 0xE300000000000000);
      MEMORY[0x25F8A3200](v32, v33);
      MEMORY[0x25F8A3200](93, 0xE100000000000000);

      v35 = v51;
      v36 = v52;
      *&v48[0] = v29;
      v38 = *(v29 + 16);
      v37 = *(v29 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_25DD055C4((v37 > 1), v38 + 1, 1);
        v29 = *&v48[0];
      }

      *(v29 + 16) = v38 + 1;
      v39 = v29 + 16 * v38;
      *(v39 + 32) = v35;
      *(v39 + 40) = v36;
      v30 += 3;
      --v28;
    }

    while (v28);

    goto LABEL_25;
  }

LABEL_24:

  v29 = MEMORY[0x277D84F90];
LABEL_25:
  v51 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
  sub_25DD0CFAC();
  v40 = sub_25DD96AD4();
  v42 = v41;

  v51 = 0;
  v52 = 0xE000000000000000;
  sub_25DD97124();

  v51 = 0xD000000000000015;
  v52 = 0x800000025DDAA300;
  *&v48[0] = v46;
  v43 = sub_25DD97374();
  MEMORY[0x25F8A3200](v43);

  MEMORY[0x25F8A3200](0x726F72726520, 0xE600000000000000);
  if (v46 == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = 115;
  }

  if (v46 == 1)
  {
    v45 = 0xE000000000000000;
  }

  else
  {
    v45 = 0xE100000000000000;
  }

  MEMORY[0x25F8A3200](v44, v45);

  MEMORY[0x25F8A3200](2112041, 0xE300000000000000);
  MEMORY[0x25F8A3200](v40, v42);

  return v51;
}

uint64_t sub_25DD27728(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0x726F727265206F4ELL;
  }

  v1 = *(a1 + 32);
  v2 = v1;
  sub_25DD97124();

  swift_getErrorValue();
  v3 = sub_25DD97904();
  MEMORY[0x25F8A3200](v3);

  MEMORY[0x25F8A3200](46, 0xE100000000000000);
  MEMORY[0x25F8A43F0](v1);
  return 0xD000000000000028;
}

void *sub_25DD27838(void *a1, int64_t a2, char a3)
{
  result = sub_25DD2786C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25DD2786C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2448, &qword_25DD99D58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2450, &unk_25DD99D60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25DD279B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD965E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = a1;
  v11[1] = a2;
  sub_25DD965C4();
  sub_25DD07E24();
  v9 = sub_25DD96F94();
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t ParameterStyle.hashValue.getter()
{
  v1 = *v0;
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD27B54()
{
  v1 = *v0;
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD27BC8()
{
  v1 = *v0;
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v1);
  return sub_25DD979A4();
}

unint64_t sub_25DD27C7C()
{
  result = qword_27FCC2458;
  if (!qword_27FCC2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2458);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParameterStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ParameterStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t URL.init(validatingOpenAPIServerURL:variables:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v32 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v33 = &v32 - v12;
    v34 = a4;
    v37 = v4;
    v14 = 0;
    v15 = (a3 + 64);
    v35 = a3;
    while (v14 < *(a3 + 16))
    {
      v18 = *(v15 - 4);
      v19 = *(v15 - 3);
      v20 = *(v15 - 2);
      v21 = *(v15 - 1);
      v22 = *v15;
      v44 = v20;
      if (v22)
      {
        v42 = v20;
        v43 = v21;
        MEMORY[0x28223BE20](result);
        v30 = &v42;

        v23 = v37;
        v24 = sub_25DD28750(sub_25DD07D10, v29, v22);
        v37 = v23;
        if ((v24 & 1) == 0)
        {

          sub_25DD01034();
          swift_allocError();
          *v27 = v18;
          *(v27 + 8) = v19;
          *(v27 + 16) = v44;
          *(v27 + 24) = v21;
          v28 = 1;
          *(v27 + 32) = v22;
          goto LABEL_15;
        }
      }

      else
      {
      }

      ++v14;
      v42 = a1;
      v43 = a2;
      v40 = 123;
      v41 = 0xE100000000000000;
      MEMORY[0x25F8A3200](v18, v19);

      MEMORY[0x25F8A3200](125, 0xE100000000000000);
      v38 = v44;
      v39 = v21;
      v30 = sub_25DD07E24();
      v31 = v30;
      v29[1] = v30;
      v29[0] = MEMORY[0x277D837D0];
      a1 = sub_25DD96FA4();
      v17 = v16;

      a2 = v17;
      v15 += 5;
      a3 = v35;
      if (v36 == v14)
      {

        v13 = v33;
        a4 = v34;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_11:
    sub_25DD966F4();
    v25 = sub_25DD96704();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v13, 1, v25) == 1)
    {
      sub_25DD281C4(v13);
      sub_25DD01034();
      swift_allocError();
      v28 = 0;
      *v27 = a1;
      *(v27 + 8) = a2;
LABEL_15:
      *(v27 + 48) = v28;
      return swift_willThrow();
    }

    else
    {

      return (*(v26 + 32))(a4, v13, v25);
    }
  }

  return result;
}

uint64_t sub_25DD281C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ServerVariable.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServerVariable.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerVariable.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ServerVariable.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ServerVariable.allowedValues.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall ServerVariable.init(name:value:allowedValues:)(OpenAPIRuntimeInternal::ServerVariable *__return_ptr retstr, Swift::String name, Swift::String value, Swift::OpaquePointer_optional allowedValues)
{
  retstr->name = name;
  retstr->value = value;
  retstr->allowedValues.value._rawValue = allowedValues.value._rawValue;
}

uint64_t ServerVariable.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_25DD96B94();
  sub_25DD96B94();
  if (!v5)
  {
    return sub_25DD97984();
  }

  sub_25DD97984();
  result = MEMORY[0x25F8A3F90](*(v5 + 16));
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      sub_25DD96B94();

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t ServerVariable.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_25DD97964();
  sub_25DD96B94();
  sub_25DD96B94();
  if (v5)
  {
    sub_25DD97984();
    MEMORY[0x25F8A3F90](*(v5 + 16));
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;

        sub_25DD96B94();

        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    sub_25DD97984();
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD28534()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_25DD96B94();
  sub_25DD96B94();
  if (!v5)
  {
    return sub_25DD97984();
  }

  sub_25DD97984();
  result = MEMORY[0x25F8A3F90](*(v5 + 16));
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      sub_25DD96B94();

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_25DD285E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_25DD97964();
  sub_25DD96B94();
  sub_25DD96B94();
  if (v5)
  {
    sub_25DD97984();
    MEMORY[0x25F8A3F90](*(v5 + 16));
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;

        sub_25DD96B94();

        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    sub_25DD97984();
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD286C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_25DD975D4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_25DD28750(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t _s22OpenAPIRuntimeInternal14ServerVariableV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_25DD975D4() & 1) != 0)
  {
    v9 = v2 == v5 && v4 == v6;
    if (v9 || (sub_25DD975D4() & 1) != 0)
    {
      if (v3)
      {
        if (v7 && (sub_25DD286C0(v3, v7) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_25DD288B4()
{
  result = qword_27FCC2468;
  if (!qword_27FCC2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2468);
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

uint64_t sub_25DD2891C(uint64_t a1, int a2)
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

uint64_t sub_25DD28964(uint64_t result, int a2, int a3)
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

uint64_t sub_25DD289BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_25DD96704();
  __swift_allocate_value_buffer(v4, qword_27FCC5148);
  v5 = __swift_project_value_buffer(v4, qword_27FCC5148);
  sub_25DD966F4();
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(v3, 1, v4) != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  sub_25DD281C4(v3);
  result = sub_25DD97294();
  __break(1u);
  return result;
}

uint64_t sub_25DD28B34()
{
  if (qword_27FCC5140 != -1)
  {
    swift_once();
  }

  v0 = sub_25DD96704();

  return __swift_project_value_buffer(v0, qword_27FCC5148);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static URL.defaultOpenAPIServerURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FCC5140 != -1)
  {
    swift_once();
  }

  v2 = sub_25DD96704();
  v3 = __swift_project_value_buffer(v2, qword_27FCC5148);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t URL.init(validatingOpenAPIServerURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  sub_25DD966F4();
  v10 = sub_25DD96704();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_25DD281C4(v9);
    sub_25DD01034();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 48) = 0;
    return swift_willThrow();
  }

  else
  {

    return (*(v11 + 32))(a3, v9, v10);
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t UndocumentedPayload.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25DD96814();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD967E4();
  return UndocumentedPayload.init(headerFields:body:)(v5, 0, a1);
}

uint64_t Configuration.init(dateTranscoder:multipartBoundaryGenerator:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_25DD08A7C(a1, v11);
  sub_25DD08A7C(a2, v10);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_25DD195AC(&v7);
  Configuration.init(dateTranscoder:jsonEncodingOptions:multipartBoundaryGenerator:xmlCoder:)(v11, &v7, v10, v8, a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_25DD28F50@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for RandomMultipartBoundaryGenerator;
  a1[4] = &protocol witness table for RandomMultipartBoundaryGenerator;
  v2 = swift_allocObject();
  *a1 = v2;
  return static MultipartBoundaryGenerator<>.random.getter((v2 + 16));
}

uint64_t Configuration.init(dateTranscoder:multipartBoundaryGenerator:xmlCoder:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_25DD08A7C(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2470, "Fr");
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25DD999D0;
  *(v8 + 32) = *sub_25DD1921C();
  *(v8 + 40) = *sub_25DD19204();
  *&v11[0] = v8;
  sub_25DD199BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2478, &unk_25DD99F00);
  sub_25DD290D4();
  sub_25DD970A4();
  v12[0] = v12[1];
  sub_25DD08A7C(a2, v11);
  sub_25DD19880(a3, v10);
  Configuration.init(dateTranscoder:jsonEncodingOptions:multipartBoundaryGenerator:xmlCoder:)(v13, v12, v11, v10, a4);
  sub_25DD29138(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_25DD290D4()
{
  result = qword_27FCC2480;
  if (!qword_27FCC2480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2478, &unk_25DD99F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2480);
  }

  return result;
}

uint64_t sub_25DD29138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2358, &qword_25DD996F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD291CC()
{
  v0 = sub_25DD964F4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_25DD964E4();
}

uint64_t ServerSentEventsDeserializationSequence.init(upstream:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2);
  ServerSentEventsDeserializationSequence.init(upstream:while:)(v9, sub_25DD291C4, 0, a2, a3);
  return (*(v6 + 8))(a1, a2);
}

uint64_t ClientError.operationID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ClientError.operationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

_OWORD *ClientError.operationInput.setter(_OWORD *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_25DD0DD04(a1, (v1 + 16));
}

uint64_t type metadata accessor for ClientError()
{
  result = qword_27FCC52E0;
  if (!qword_27FCC52E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClientError.requestBody.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClientError() + 28));
}

uint64_t ClientError.requestBody.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClientError() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25DD29760@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_25DD29864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t ClientError.responseBody.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClientError() + 40));
}

uint64_t ClientError.responseBody.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClientError() + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ClientError.causeDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for ClientError() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ClientError.causeDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ClientError() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *ClientError.underlyingError.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClientError() + 48));
  v2 = v1;
  return v1;
}

uint64_t ClientError.underlyingError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClientError() + 48);
  result = MEMORY[0x25F8A43F0](*(v1 + v3));
  *(v1 + v3) = a1;
  return result;
}

uint64_t ClientError.init(operationID:operationInput:request:requestBody:baseURL:response:responseBody:causeDescription:underlyingError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = type metadata accessor for ClientError();
  v17 = v16[6];
  v18 = sub_25DD968B4();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v20 = v16[7];
  v19 = v16[8];
  v21 = sub_25DD96704();
  (*(*(v21 - 8) + 56))(a9 + v19, 1, 1, v21);
  v22 = v16[9];
  v23 = sub_25DD96984();
  (*(*(v23 - 8) + 56))(a9 + v22, 1, 1, v23);
  v24 = v16[10];
  *a9 = a1;
  *(a9 + 8) = a2;
  sub_25DD0DD04(a3, (a9 + 16));
  sub_25DD29864(a4, a9 + v17, &qword_27FCC2488, &unk_25DD99F10);
  *(a9 + v20) = a5;
  sub_25DD29864(a6, a9 + v19, &qword_27FCC2460, &qword_25DD99E20);
  result = sub_25DD29864(a7, a9 + v22, &qword_27FCC2490, &unk_25DD99F20);
  *(a9 + v24) = a8;
  v26 = (a9 + v16[11]);
  *v26 = a10;
  v26[1] = a11;
  *(a9 + v16[12]) = a12;
  return result;
}

uint64_t ClientError.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v48 - v11;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_25DD97124();
  v50 = v55;
  v51 = v56;
  MEMORY[0x25F8A3200](0xD000000000000023, 0x800000025DDAA3B0);
  v13 = type metadata accessor for ClientError();
  MEMORY[0x25F8A3200](*(v1 + v13[11]), *(v1 + v13[11] + 8));
  MEMORY[0x25F8A3200](0xD000000000000015, 0x800000025DDAA3E0);
  v14 = *(v0 + v13[12]);
  v54 = v14;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2438, &qword_25DD99C40);
  if (swift_dynamicCast())
  {
    sub_25DCFE2FC(v52, &v55);
    v16 = v57;
    v17 = v58;
    __swift_project_boxed_opaque_existential_1(&v55, v57);
    v18 = (*(v17 + 8))(v16, v17);
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1(&v55);
    v21 = v18;
  }

  else
  {
    v53 = 0;
    memset(v52, 0, sizeof(v52));
    sub_25DD114CC(v52, &qword_27FCC2440, &unk_25DD99C48);
    v55 = 0;
    v56 = 0xE000000000000000;
    *&v52[0] = v14;
    sub_25DD97224();
    v21 = v55;
    v20 = v56;
  }

  v22 = 0x3E6C696E3CLL;
  MEMORY[0x25F8A3200](v21, v20);

  MEMORY[0x25F8A3200](0x74617265706F202CLL, 0xEF203A44496E6F69);
  MEMORY[0x25F8A3200](*v1, v1[1]);
  MEMORY[0x25F8A3200](0xD000000000000012, 0x800000025DDAA400);
  sub_25DD0DD14((v1 + 2), &v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2208, &unk_25DD9A0A0);
  v23 = sub_25DD96B44();
  MEMORY[0x25F8A3200](v23);

  MEMORY[0x25F8A3200](0x736575716572202CLL, 0xEB00000000203A74);
  sub_25DD12B90(v1 + v13[6], v12, &qword_27FCC2488, &unk_25DD99F10);
  v24 = sub_25DD968B4();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
    sub_25DD114CC(v12, &qword_27FCC2488, &unk_25DD99F10);
    v26 = 0xE500000000000000;
    v27 = 0x3E6C696E3CLL;
  }

  else
  {
    v27 = sub_25DD3EABC();
    v26 = v28;
    (*(v25 + 8))(v12, v24);
  }

  MEMORY[0x25F8A3200](v27, v26);

  MEMORY[0x25F8A3200](0x736575716572202CLL, 0xEF203A79646F4274);
  if (*(v1 + v13[7]))
  {
    v29 = sub_25DD3EEC8();
    v31 = v30;
  }

  else
  {
    v31 = 0xE500000000000000;
    v29 = 0x3E6C696E3CLL;
  }

  MEMORY[0x25F8A3200](v29, v31);

  MEMORY[0x25F8A3200](0x525565736162202CLL, 0xEB00000000203A4CLL);
  sub_25DD12B90(v1 + v13[8], v8, &qword_27FCC2460, &qword_25DD99E20);
  v32 = sub_25DD96704();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v8, 1, v32) == 1)
  {
    sub_25DD114CC(v8, &qword_27FCC2460, &qword_25DD99E20);
    v34 = 0xE500000000000000;
    v35 = 0x3E6C696E3CLL;
  }

  else
  {
    v36 = sub_25DD966E4();
    v34 = v37;
    (*(v33 + 8))(v8, v32);
    v35 = v36;
  }

  v38 = v49;
  MEMORY[0x25F8A3200](v35, v34);

  MEMORY[0x25F8A3200](0x6E6F70736572202CLL, 0xEC000000203A6573);
  sub_25DD12B90(v1 + v13[9], v38, &qword_27FCC2490, &unk_25DD99F20);
  v39 = sub_25DD96984();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_25DD114CC(v38, &qword_27FCC2490, &unk_25DD99F20);
    v41 = 0xE500000000000000;
    v42 = 0x3E6C696E3CLL;
  }

  else
  {
    v43 = sub_25DD3ECDC();
    v41 = v44;
    (*(v40 + 8))(v38, v39);
    v42 = v43;
  }

  MEMORY[0x25F8A3200](v42, v41);

  MEMORY[0x25F8A3200](0xD000000000000010, 0x800000025DDAA420);
  if (*(v1 + v13[10]))
  {
    v22 = sub_25DD3EEC8();
    v46 = v45;
  }

  else
  {
    v46 = 0xE500000000000000;
  }

  MEMORY[0x25F8A3200](v22, v46);

  return v50;
}

uint64_t ClientError.errorDescription.getter()
{
  v1 = v0;
  sub_25DD97124();
  MEMORY[0x25F8A3200](0xD000000000000034, 0x800000025DDAA440);
  MEMORY[0x25F8A3200](*v1, v1[1]);
  MEMORY[0x25F8A3200](0x6573756163202C22, 0xEE00222079622064);
  v2 = type metadata accessor for ClientError();
  MEMORY[0x25F8A3200](*(v1 + *(v2 + 44)), *(v1 + *(v2 + 44) + 8));
  MEMORY[0x25F8A3200](0xD000000000000015, 0x800000025DDAA480);
  v3 = *(v0 + *(v2 + 48));
  swift_getErrorValue();
  v4 = sub_25DD97904();
  MEMORY[0x25F8A3200](v4);

  MEMORY[0x25F8A3200](46, 0xE100000000000000);
  return 0;
}

unint64_t sub_25DD2A584()
{
  result = qword_27FCC2498;
  if (!qword_27FCC2498)
  {
    type metadata accessor for ClientError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2498);
  }

  return result;
}

void sub_25DD2A608()
{
  sub_25DD2A780();
  if (v0 <= 0x3F)
  {
    sub_25DD2A7D8(319, &qword_27FCC24A8, MEMORY[0x277D0F9E8]);
    if (v1 <= 0x3F)
    {
      sub_25DD2A7D8(319, &qword_27FCC2300, type metadata accessor for HTTPBody);
      if (v2 <= 0x3F)
      {
        sub_25DD2A7D8(319, &qword_27FCC24B0, MEMORY[0x277CC9260]);
        if (v3 <= 0x3F)
        {
          sub_25DD2A7D8(319, &qword_27FCC24B8, MEMORY[0x277D0F9F0]);
          if (v4 <= 0x3F)
          {
            sub_25DD2A82C();
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

unint64_t sub_25DD2A780()
{
  result = qword_27FCC24A0;
  if (!qword_27FCC24A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FCC24A0);
  }

  return result;
}

void sub_25DD2A7D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25DD96F04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_25DD2A82C()
{
  result = qword_27FCC24C0;
  if (!qword_27FCC24C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FCC24C0);
  }

  return result;
}

uint64_t sub_25DD2A890()
{
  v1 = sub_25DD97184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25DD97194();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, v0, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D84160])
  {
    (*(v7 + 96))(v10, v6);
    v12 = *v10;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20);
    (*(v2 + 32))(v5, v10 + *(v13 + 48), v1);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_25DD97124();

    v14 = 0x6D73694D65707974;
    v15 = 0xED00002068637461;
LABEL_5:
    v30 = v14;
    v31 = v15;
    v18 = sub_25DD97A54();
    MEMORY[0x25F8A3200](v18);

    MEMORY[0x25F8A3200](2108704, 0xE300000000000000);
    goto LABEL_6;
  }

  if (v11 == *MEMORY[0x277D84170])
  {
    (*(v7 + 96))(v10, v6);
    v16 = *v10;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20);
    (*(v2 + 32))(v5, v10 + *(v17 + 48), v1);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_25DD97124();

    v14 = 0x746F4E65756C6176;
    v15 = 0xEE0020646E756F46;
    goto LABEL_5;
  }

  if (v11 == *MEMORY[0x277D84158])
  {
    (*(v7 + 96))(v10, v6);
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2428, &qword_25DD99C28) + 48);
    sub_25DCFE2FC(v10, &v30);
    (*(v2 + 32))(v5, v10 + v23, v1);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_25DD97124();
    MEMORY[0x25F8A3200](0x6F46746F4E79656BLL, 0xEC00000020646E75);
    v24 = v33;
    __swift_project_boxed_opaque_existential_1(&v30, v32);
    v25 = *(v24 + 16);
    sub_25DD975A4();
    MEMORY[0x25F8A3200](2108704, 0xE300000000000000);
    v26 = sub_25DD2B308(MEMORY[0x277D84180], MEMORY[0x277D84188], MEMORY[0x277D84178]);
    MEMORY[0x25F8A3200](v26);

    v20 = v28;
    v21 = v29;
    (*(v2 + 8))(v5, v1);
    __swift_destroy_boxed_opaque_existential_1(&v30);
    goto LABEL_7;
  }

  if (v11 != *MEMORY[0x277D84168])
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    MEMORY[0x25F8A3200](0x3A6E776F6E6B6E75, 0xE900000000000020);
    sub_25DD97224();
    v20 = v30;
    v21 = v31;
    (*(v7 + 8))(v10, v6);
    goto LABEL_7;
  }

  (*(v7 + 96))(v10, v6);
  (*(v2 + 32))(v5, v10, v1);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_25DD97124();

  v30 = 0xD000000000000010;
  v31 = 0x800000025DDAA4A0;
LABEL_6:
  v19 = sub_25DD2B308(MEMORY[0x277D84180], MEMORY[0x277D84188], MEMORY[0x277D84178]);
  MEMORY[0x25F8A3200](v19);

  v20 = v30;
  v21 = v31;
  (*(v2 + 8))(v5, v1);
LABEL_7:
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_25DD97124();

  v30 = 0x676E69646F636544;
  v31 = 0xEF203A726F727245;
  MEMORY[0x25F8A3200](v20, v21);

  return v30;
}

uint64_t sub_25DD2AF30()
{
  v1 = sub_25DD971B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25DD971C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v0, v6);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D841A8])
  {
    (*(v7 + 96))(v10, v6);
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2228, &qword_25DD98ED0) + 48);
    sub_25DD0DD04(v10, v18);
    (*(v2 + 32))(v5, &v10[v11], v1);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_25DD97124();
    MEMORY[0x25F8A3200](0x5664696C61766E69, 0xED00002065756C61);
    sub_25DD97224();
    MEMORY[0x25F8A3200](2108704, 0xE300000000000000);
    v12 = sub_25DD2B308(MEMORY[0x277D841B8], MEMORY[0x277D841C0], MEMORY[0x277D841B0]);
    MEMORY[0x25F8A3200](v12);

    v14 = v16;
    v13 = v17;
    (*(v2 + 8))(v5, v1);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    *&v18[0] = 0;
    *(&v18[0] + 1) = 0xE000000000000000;
    MEMORY[0x25F8A3200](0x3A6E776F6E6B6E75, 0xE900000000000020);
    sub_25DD97224();
    v13 = *(&v18[0] + 1);
    v14 = *&v18[0];
    (*(v7 + 8))(v10, v6);
  }

  *&v18[0] = 0;
  *(&v18[0] + 1) = 0xE000000000000000;
  sub_25DD97124();

  *&v18[0] = 0x676E69646F636E45;
  *(&v18[0] + 1) = 0xEF203A726F727245;
  MEMORY[0x25F8A3200](v14, v13);

  return *&v18[0];
}

uint64_t sub_25DD2B308(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = a1();
  v6 = *(v5 + 16);
  if (v6)
  {
    v28 = a2;
    v29 = a3;
    v30 = MEMORY[0x277D84F90];
    sub_25DD055C4(0, v6, 0);
    v7 = v30;
    v8 = v5 + 32;
    do
    {
      sub_25DD08A7C(v8, &v31);
      v9 = v34;
      __swift_project_boxed_opaque_existential_1(&v31, v33);
      v10 = *(v9 + 16);
      v11 = sub_25DD97374();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1(&v31);
      v15 = *(v30 + 16);
      v14 = *(v30 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_25DD055C4((v14 > 1), v15 + 1, 1);
      }

      *(v30 + 16) = v15 + 1;
      v16 = v30 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v8 += 40;
      --v6;
    }

    while (v6);

    a2 = v28;
    a3 = v29;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v31 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
  sub_25DD0CFAC();
  v17 = sub_25DD96AD4();
  v19 = v18;

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_25DD97124();

  v31 = 2126945;
  v32 = 0xE300000000000000;
  MEMORY[0x25F8A3200](v17, v19);

  v20 = MEMORY[0x25F8A3200](8250, 0xE200000000000000);
  v21 = a2(v20);
  MEMORY[0x25F8A3200](v21);

  v22 = MEMORY[0x25F8A3200](0xD000000000000014, 0x800000025DDAA4C0);
  v23 = a3(v22);
  if (v23)
  {
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
    sub_25DD97224();
    MEMORY[0x25F8A43F0](v24);
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
    v25 = 0x3E6C696E3CLL;
  }

  MEMORY[0x25F8A3200](v25, v26);

  MEMORY[0x25F8A3200](41, 0xE100000000000000);
  return v31;
}

BOOL sub_25DD2B628()
{
  v0 = sub_25DD972F4();

  return v0 != 0;
}

uint64_t sub_25DD2B670()
{
  sub_25DD97964();
  sub_25DD96B94();
  return sub_25DD979A4();
}

uint64_t sub_25DD2B6D4()
{
  sub_25DD97964();
  sub_25DD96B94();
  return sub_25DD979A4();
}

uint64_t sub_25DD2B720@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25DD972F4();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_25DD2B78C()
{
  sub_25DD2B7EC(v0, v2);
  switch(v3)
  {
    case 17:
      return v2[0];
    case 16:
      return v2[1];
    case 15:
      return v2[0];
  }

  sub_25DD2B824(v2);
  return 0;
}

unint64_t sub_25DD2B858()
{
  sub_25DD2B7EC(v0, &v49);
  v1 = v49;
  v2 = v51;
  switch(v54)
  {
    case 1:
      v17 = v50;
      v18 = *(&v51 + 1);
      v19 = v52;
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_25DD97124();
      MEMORY[0x25F8A3200](0xD000000000000020, 0x800000025DDAA970);
      MEMORY[0x25F8A3200](v1, v17);

      MEMORY[0x25F8A3200](0xD000000000000019, 0x800000025DDAA9A0);
      MEMORY[0x25F8A3200](v2, v18);

      MEMORY[0x25F8A3200](0xD000000000000024, 0x800000025DDAA9C0);
      v20 = *(v19 + 16);
      if (v20)
      {
        v47 = MEMORY[0x277D84F90];
        sub_25DD055C4(0, v20, 0);
        v21 = (v19 + 40);
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;

          MEMORY[0x25F8A3200](v22, v23);
          MEMORY[0x25F8A3200](39, 0xE100000000000000);

          v25 = *(v47 + 16);
          v24 = *(v47 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_25DD055C4((v24 > 1), v25 + 1, 1);
          }

          *(v47 + 16) = v25 + 1;
          v26 = v47 + 16 * v25;
          *(v26 + 32) = 39;
          *(v26 + 40) = 0xE100000000000000;
          v21 += 2;
          --v20;
        }

        while (v20);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
      sub_25DD0CFAC();
      v2 = sub_25DD96AD4();
      v41 = v46;

      goto LABEL_47;
    case 2:
      v9 = v50;
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v10 = 0x800000025DDAA940;
      v11 = 0xD000000000000020;
      goto LABEL_13;
    case 3:
      v9 = v50;
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v10 = 0x800000025DDAA910;
      v11 = 0xD000000000000025;
      goto LABEL_13;
    case 4:
      v9 = v50;
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v10 = 0x800000025DDAA8F0;
      v11 = 0xD00000000000001CLL;
LABEL_13:
      *&v48[0] = v11;
      *(&v48[0] + 1) = v10;
      goto LABEL_31;
    case 5:
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_25DD97124();
      MEMORY[0x25F8A3200](0xD000000000000032, 0x800000025DDAA8B0);
      v29 = sub_25DD2C5B8(128);
      v31 = v30;
      v33 = v32;
      v35 = v34;

      v1 = MEMORY[0x25F8A3180](v29, v31, v33, v35);
      v9 = v36;

LABEL_31:
      MEMORY[0x25F8A3200](v1, v9);

      MEMORY[0x25F8A3200](39, 0xE100000000000000);
      return *&v48[0];
    case 6:
      v14 = v50;
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v15 = 0x800000025DDAA880;
      v16 = 0xD000000000000022;
      goto LABEL_35;
    case 7:
      v14 = v50;
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v15 = 0x800000025DDAA850;
      v16 = 0xD000000000000027;
LABEL_35:
      *&v48[0] = v16;
      *(&v48[0] + 1) = v15;
      MEMORY[0x25F8A3200](v1, v14);

      MEMORY[0x25F8A3200](11815, 0xE200000000000000);
      return *&v48[0];
    case 8:
      v42 = v50;
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_25DD97124();
      MEMORY[0x25F8A3200](0xD00000000000002ELL, 0x800000025DDAA820);
      MEMORY[0x25F8A3200](v1, v42);

      MEMORY[0x25F8A3200](0x3A646E696B202C27, 0xE900000000000020);
      v43 = 0xE500000000000000;
      MEMORY[0x25F8A3200](0x7972657571, 0xE500000000000000);
      MEMORY[0x25F8A3200](0x3A656C797473202CLL, 0xE900000000000020);
      sub_25DD97224();
      MEMORY[0x25F8A3200](0x646F6C707865202CLL, 0xEB00000000203A65);
      if ((v2 & 0x100) != 0)
      {
        v44 = 1702195828;
      }

      else
      {
        v44 = 0x65736C6166;
      }

      if ((v2 & 0x100) != 0)
      {
        v43 = 0xE400000000000000;
      }

      MEMORY[0x25F8A3200](v44, v43);
      goto LABEL_48;
    case 9:
      v12 = v50;
      sub_25DD97124();

      *&v48[0] = 0xD000000000000021;
      *(&v48[0] + 1) = 0x800000025DDAA7F0;
      MEMORY[0x25F8A3200](v1, v12);

      v7 = 0x73696D2073692027;
      v8 = 0xED00002E676E6973;
      goto LABEL_9;
    case 10:
      v40 = v50;
      v41 = *(&v51 + 1);
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_25DD97124();
      MEMORY[0x25F8A3200](0xD000000000000023, 0x800000025DDAA7C0);
      MEMORY[0x25F8A3200](v1, v40);

      MEMORY[0x25F8A3200](0x766965636572202CLL, 0xEC000000203A6465);
LABEL_47:
      MEMORY[0x25F8A3200](v2, v41);
      goto LABEL_48;
    case 11:
      v3 = v50;
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v4 = 0x800000025DDAA7A0;
      v5 = 0xD00000000000001ALL;
      goto LABEL_33;
    case 12:
      v3 = v50;
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v4 = 0x800000025DDAA780;
      v5 = 0xD000000000000019;
      goto LABEL_33;
    case 13:
      v3 = v50;
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v4 = 0x800000025DDAA700;
      v5 = 0xD000000000000027;
      goto LABEL_33;
    case 14:
      v3 = v50;
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v4 = 0x800000025DDAA6A0;
      v5 = 0xD000000000000028;
      goto LABEL_33;
    case 15:
      sub_25DD2B824(&v49);
      return 0xD000000000000019;
    case 16:
      MEMORY[0x25F8A43F0](v50);
      sub_25DD97124();

      *&v48[0] = 0xD000000000000014;
      *(&v48[0] + 1) = 0x800000025DDAA580;
      v6 = sub_25DD97A54();
      MEMORY[0x25F8A3200](v6);

      v7 = 0xD000000000000011;
      v8 = 0x800000025DDAA5A0;
LABEL_9:
      MEMORY[0x25F8A3200](v7, v8);
      return *&v48[0];
    case 17:
      sub_25DD2B824(&v49);
      return 0xD00000000000001CLL;
    case 18:
      v37 = v50;
      sub_25DD0DD04(&v51, v48);
      sub_25DD97124();
      MEMORY[0x25F8A3200](0xD00000000000002BLL, 0x800000025DDAA530);
      MEMORY[0x25F8A3200](v1, v37);

      v38 = 0x6E6F70736572202CLL;
      v39 = 0xEC000000203A6573;
      goto LABEL_45;
    case 19:
      v45 = v50;
      sub_25DD0DD04(&v51, v48);
      sub_25DD97124();
      MEMORY[0x25F8A3200](0xD000000000000031, 0x800000025DDAA4F0);
      MEMORY[0x25F8A3200](v1, v45);

      v38 = 0x203A79646F62202CLL;
      v39 = 0xE800000000000000;
LABEL_45:
      MEMORY[0x25F8A3200](v38, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2208, &unk_25DD9A0A0);
      sub_25DD97224();
      __swift_destroy_boxed_opaque_existential_1(v48);
      return 0;
    case 20:
      if (!(v51 | v49 | v53 | v52 | *(&v51 + 1) | v50))
      {
        return 0xD000000000000047;
      }

      v27 = v53 | v51 | v52 | *(&v51 + 1) | v50;
      if (v49 == 1 && v27 == 0)
      {
        return 0xD000000000000020;
      }

      if (v49 == 2 && !v27)
      {
        return 0xD00000000000001DLL;
      }

      if (v49 == 3 && !v27)
      {
        return 0xD00000000000001ELL;
      }

      if (v49 != 4 || v27)
      {
        return 0xD000000000000047;
      }

      return 0xD00000000000002ELL;
    default:
      v3 = v50;
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v4 = 0x800000025DDAA9F0;
      v5 = 0xD000000000000014;
LABEL_33:
      *&v48[0] = v5;
      *(&v48[0] + 1) = v4;
      MEMORY[0x25F8A3200](v1, v3);
LABEL_48:

      return *&v48[0];
  }
}

uint64_t sub_25DD2C3EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_25DD01034();
  swift_allocError();
  v9 = v8;
  *v8 = a1;
  v8[1] = a2;
  sub_25DD0DD14(a3, (v8 + 2));
  *(v9 + 48) = a4;
  swift_willThrow();
}

uint64_t sub_25DD2C470()
{
  v1 = sub_25DD2B7EC(v0, &v8);
  switch(v14)
  {
    case 2:
    case 10:
      v3 = sub_25DD2B824(&v8);
      return MEMORY[0x25F8A2F30](v3);
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 12:
    case 13:
    case 14:
      v1 = sub_25DD2B824(&v8);
      return MEMORY[0x25F8A2EF0](v1);
    case 7:
      v5 = sub_25DD2B824(&v8);
      return MEMORY[0x25F8A2F20](v5);
    case 11:
      v4 = sub_25DD2B824(&v8);
      return MEMORY[0x25F8A2F00](v4);
    case 15:
    case 16:
    case 17:
      v1 = sub_25DD2B824(&v8);
      return MEMORY[0x25F8A2F10](v1);
    case 18:
    case 19:

      v1 = __swift_destroy_boxed_opaque_existential_1(&v10);
      return MEMORY[0x25F8A2F10](v1);
    case 20:
      if (!(v12 | v13 | v8 | v11 | v10 | v9))
      {
        return MEMORY[0x25F8A2EF0](v1);
      }

      v6 = v12 | v13 | v11 | v10 | v9;
      if (v8 == 1 && v6 == 0)
      {
        return MEMORY[0x25F8A2F60](v1);
      }

      if ((v8 != 2 || v6) && v8 == 3 && !v6)
      {
        return MEMORY[0x25F8A2F10](v1);
      }

      return MEMORY[0x25F8A2EF0](v1);
    default:
      v1 = sub_25DD2B824(&v8);
      return MEMORY[0x25F8A2F60](v1);
  }
}

uint64_t sub_25DD2C5B8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25DD96BC4();

    return sub_25DD96CA4();
  }

  return result;
}

unint64_t sub_25DD2C658()
{
  result = qword_27FCC24C8;
  if (!qword_27FCC24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC24C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal12RuntimeErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 0x1Fu) <= 0x13)
  {
    return *(a1 + 48) & 0x1F;
  }

  else
  {
    return (*a1 + 20);
  }
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

uint64_t sub_25DD2C6E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEC && *(a1 + 49))
  {
    return (*a1 + 236);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0x15)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD2C724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEB)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 236;
    if (a3 >= 0xEC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_25DD2C774(uint64_t result, unsigned int a2)
{
  if (a2 > 0x13)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 20;
    LOBYTE(a2) = 20;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RuntimeError.ParameterLocation(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RuntimeError.ParameterLocation(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t ServerError.operationID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServerError.operationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerError.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ServerError() + 20);
  v4 = sub_25DD968B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ServerError()
{
  result = qword_27FCC57F0;
  if (!qword_27FCC57F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ServerError.request.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerError() + 20);
  v4 = sub_25DD968B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ServerError.requestBody.getter()
{
  v1 = *(v0 + *(type metadata accessor for ServerError() + 24));
}

uint64_t ServerError.requestBody.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerError() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ServerError.requestMetadata.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for ServerError() + 28));
}

uint64_t ServerError.requestMetadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for ServerError() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = v2;
  return result;
}

uint64_t ServerError.operationInput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ServerError() + 32);

  return sub_25DD2CC78(v3, a1);
}

uint64_t sub_25DD2CC78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2200, &unk_25DD98EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ServerError.operationInput.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ServerError() + 32);

  return sub_25DD0D564(a1, v3);
}

uint64_t ServerError.operationOutput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ServerError() + 36);

  return sub_25DD2CC78(v3, a1);
}

uint64_t ServerError.operationOutput.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ServerError() + 36);

  return sub_25DD0D564(a1, v3);
}

uint64_t ServerError.causeDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for ServerError() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ServerError.causeDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ServerError() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *ServerError.underlyingError.getter()
{
  v1 = *(v0 + *(type metadata accessor for ServerError() + 44));
  v2 = v1;
  return v1;
}

uint64_t ServerError.underlyingError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerError() + 44);
  result = MEMORY[0x25F8A43F0](*(v1 + v3));
  *(v1 + v3) = a1;
  return result;
}

uint64_t ServerError.init(operationID:request:requestBody:requestMetadata:operationInput:operationOutput:causeDescription:underlyingError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a5;
  v17 = type metadata accessor for ServerError();
  v18 = v17[6];
  v19 = &a9[v17[8]];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = &a9[v17[9]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *a9 = a1;
  *(a9 + 1) = a2;
  v21 = v17[5];
  v22 = sub_25DD968B4();
  (*(*(v22 - 8) + 32))(&a9[v21], a3, v22);
  *&a9[v18] = a4;
  *&a9[v17[7]] = v16;
  sub_25DD0D564(a6, v19);
  result = sub_25DD0D564(a7, v20);
  v24 = &a9[v17[10]];
  *v24 = a8;
  *(v24 + 1) = a10;
  *&a9[v17[11]] = a11;
  return result;
}

uint64_t ServerError.description.getter()
{
  v1 = v0;
  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;
  sub_25DD97124();
  v25 = 0;
  v26 = 0xE000000000000000;
  MEMORY[0x25F8A3200](0xD000000000000023, 0x800000025DDAAA10);
  v2 = type metadata accessor for ServerError();
  MEMORY[0x25F8A3200](*(v1 + v2[10]), *(v1 + v2[10] + 8));
  MEMORY[0x25F8A3200](0xD000000000000015, 0x800000025DDAA3E0);
  v3 = *(v0 + v2[11]);
  v24[0] = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2438, &qword_25DD99C40);
  if (swift_dynamicCast())
  {
    sub_25DCFE2FC(v27, &v29);
    v5 = v30;
    v6 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, v30);
    v7 = (*(v6 + 8))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v10 = v7;
  }

  else
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_25DD2D818(v27);
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    *&v27[0] = v3;
    sub_25DD97224();
    v9 = *(&v29 + 1);
    v10 = v29;
  }

  v11 = 0x3E6C696E3CLL;
  MEMORY[0x25F8A3200](v10, v9);

  MEMORY[0x25F8A3200](0x74617265706F202CLL, 0xEF203A44496E6F69);
  MEMORY[0x25F8A3200](*v1, v1[1]);
  MEMORY[0x25F8A3200](0x736575716572202CLL, 0xEB00000000203A74);
  v12 = v1 + v2[5];
  v13 = sub_25DD3EABC();
  MEMORY[0x25F8A3200](v13);

  MEMORY[0x25F8A3200](0x736575716572202CLL, 0xEF203A79646F4274);
  if (*(v1 + v2[6]))
  {
    v14 = sub_25DD3EEC8();
    v16 = v15;
  }

  else
  {
    v16 = 0xE500000000000000;
    v14 = 0x3E6C696E3CLL;
  }

  MEMORY[0x25F8A3200](v14, v16);

  MEMORY[0x25F8A3200](0x61646174656D202CLL, 0xEC000000203A6174);
  *&v29 = *(v1 + v2[7]);
  v17 = ServerRequestMetadata.description.getter();
  MEMORY[0x25F8A3200](v17);

  MEMORY[0x25F8A3200](0xD000000000000012, 0x800000025DDAA400);
  sub_25DD2CC78(v1 + v2[8], &v29);
  if (v30)
  {
    sub_25DD0DD04(&v29, v27);
    sub_25DD0DD14(v27, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2208, &unk_25DD9A0A0);
    v18 = sub_25DD96B44();
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v20 = 0xE500000000000000;
    v18 = 0x3E6C696E3CLL;
  }

  MEMORY[0x25F8A3200](v18, v20);

  MEMORY[0x25F8A3200](0xD000000000000013, 0x800000025DDAAA40);
  sub_25DD2CC78(v1 + v2[9], &v29);
  if (v30)
  {
    sub_25DD0DD04(&v29, v27);
    sub_25DD0DD14(v27, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2208, &unk_25DD9A0A0);
    v11 = sub_25DD96B44();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x25F8A3200](v11, v22);

  return v25;
}

uint64_t ServerError.errorDescription.getter()
{
  v1 = v0;
  sub_25DD97124();
  MEMORY[0x25F8A3200](0xD000000000000034, 0x800000025DDAAA60);
  MEMORY[0x25F8A3200](*v1, v1[1]);
  MEMORY[0x25F8A3200](0x6573756163202C22, 0xEE00222079622064);
  v2 = type metadata accessor for ServerError();
  MEMORY[0x25F8A3200](*(v1 + *(v2 + 40)), *(v1 + *(v2 + 40) + 8));
  MEMORY[0x25F8A3200](0xD000000000000015, 0x800000025DDAA480);
  v3 = *(v0 + *(v2 + 44));
  swift_getErrorValue();
  v4 = sub_25DD97904();
  MEMORY[0x25F8A3200](v4);

  MEMORY[0x25F8A3200](46, 0xE100000000000000);
  return 0;
}

unint64_t sub_25DD2D65C()
{
  result = qword_27FCC24D0;
  if (!qword_27FCC24D0)
  {
    type metadata accessor for ServerError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC24D0);
  }

  return result;
}

void sub_25DD2D6E0()
{
  sub_25DD968B4();
  if (v0 <= 0x3F)
  {
    sub_25DD13508();
    if (v1 <= 0x3F)
    {
      sub_25DD2D7B4();
      if (v2 <= 0x3F)
      {
        sub_25DD2A82C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25DD2D7B4()
{
  if (!qword_27FCC24D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2208, &unk_25DD9A0A0);
    v0 = sub_25DD96F04();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCC24D8);
    }
  }
}

uint64_t sub_25DD2D818(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2440, &unk_25DD99C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25DD2D934(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  sub_25DD2D964(v2);
  return v2;
}

unint64_t sub_25DD2D964(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_25DD2D974(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  result = sub_25DD2D9AC(*(v2 + v4));
  *(v2 + v4) = a1;
  return result;
}

unint64_t sub_25DD2D9AC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t (*sub_25DD2D9BC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t JSONLinesDeserializationSequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_25DD2DA00, 0, 0);
}

uint64_t sub_25DD2DA00()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 52);
  v3 = *(v1 + 16);
  *(v0 + 16) = v3;
  v4 = *(v0 + 88);
  *(v0 + 152) = v2;
  *(v0 + 96) = v3;
  v5 = *(v1 + 32);
  *(v0 + 112) = v5;
  v6 = *(v1 + 40);
  *(v0 + 120) = v6;
  *&v3 = v5;
  *(&v3 + 1) = v6;
  *(v0 + 32) = v3;
  *(v0 + 128) = type metadata accessor for JSONLinesDeserializationSequence.Iterator.StateMachine();
  sub_25DD2DE24();
  if (v7 == 1)
  {
    v8 = *(MEMORY[0x277D856D0] + 4);
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_25DD2DB68;
    v10 = *(v0 + 120);
    v11 = *(v0 + 104);
    v12 = *(v0 + 88);

    return MEMORY[0x282200308](v0 + 48, v11, v10);
  }

  else
  {
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_25DD2DB68()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_25DD2DE0C;
  }

  else
  {
    v3 = sub_25DD2DC7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD2DC7C()
{
  v1 = *(v0 + 88) + *(v0 + 152);
  v2 = sub_25DD2DF8C(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v4 = v3;
  v6 = v5;
  swift_unknownObjectRelease();
  v7 = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  if (v2 != 1)
  {
    v10 = v4;
    v11 = v6;
    goto LABEL_10;
  }

  *(v0 + 16) = *(v0 + 96);
  v8 = *(v0 + 152);
  v9 = *(v0 + 88);
  *(v0 + 32) = *(v0 + 112);
  *(v0 + 128) = type metadata accessor for JSONLinesDeserializationSequence.Iterator.StateMachine();
  sub_25DD2DE24();
  if (v7)
  {
    if (v7 == 1)
    {
      v12 = *(MEMORY[0x277D856D0] + 4);
      v13 = swift_task_alloc();
      *(v0 + 136) = v13;
      *v13 = v0;
      v13[1] = sub_25DD2DB68;
      v14 = *(v0 + 120);
      v15 = *(v0 + 104);
      v16 = *(v0 + 88);

      return MEMORY[0x282200308](v0 + 48, v15, v14);
    }
  }

  else
  {
LABEL_8:
    v10 = v7;
    v11 = v7;
  }

LABEL_10:
  v17 = *(v0 + 8);

  return v17(v7, v10, 0, v11);
}

void sub_25DD2DE24()
{
  v1 = *v0;
  if (!*v0)
  {
    return;
  }

  if (v1 == 1)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v2 = *v0;

  v3 = sub_25DD014B8();
  v4 = *(v1 + 16);
  if (!v4)
  {
LABEL_7:
    sub_25DD2D9AC(v1);
    *v0 = v1;
    return;
  }

  v5 = 0;
  v6 = 1;
  while (*(v1 + v5 + 32) != *v3)
  {
    ++v5;
    v6 += 2;
    if (v4 == v5)
    {
      goto LABEL_7;
    }
  }

  sub_25DD2D9AC(v1);
  v7 = *(v1 + 16);
  if (v7 < v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v7 <= v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_25DD2D964(v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v1, (~v5 + v7) > *(v1 + 24) >> 1))
  {
    v9 = sub_25DD2ECB4(isUniquelyReferenced_nonNull_native, v7, 1, v1);
  }

  sub_25DD2EDA8(0, v5 + 1, 0);
  *v0 = v9;
}

unint64_t sub_25DD2DF8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = *v4;
  if (*v4 < 2)
  {
    __break(1u);
  }

  else
  {
    v12 = *v4;
    if (a1)
    {
      v10 = swift_unknownObjectRetain();
      sub_25DD2EBA0(v10, a2, a3, a4);
      *v4 = v12;
      return 1;
    }

    else
    {
      v11 = *(result + 16);
      *v4 = 0;
      if (!v11)
      {
        sub_25DD2D9AC(result);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25DD2E050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1, a3);
  result = type metadata accessor for JSONLinesDeserializationSequence.Iterator();
  *(a4 + *(result + 52)) = a2;
  return result;
}

uint64_t sub_25DD2E0EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return JSONLinesDeserializationSequence.Iterator.next()(a2);
}

uint64_t sub_25DD2E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 24);
  v12 = *v5;

  if (!v4)
  {
    v13 = *(v10 + 16);
    *v13 = a1;
    v13[1] = a2;
    v13[2] = a3;
    v13[3] = a4;
  }

  v14 = *(v12 + 8);

  return v14();
}

uint64_t sub_25DD2E2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_25DD2E388;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_25DD2E388()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t JSONLinesDeserializationSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v18 - v14;
  (*(v5 + 16))(v9, v2, v4);
  sub_25DD96DF4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(v12 + 32))(a2, v15, AssociatedTypeWitness);
  v18[0] = v4;
  v18[1] = AssociatedTypeWitness;
  v18[2] = v10;
  v18[3] = AssociatedConformanceWitness;
  result = type metadata accessor for JSONLinesDeserializationSequence.Iterator();
  *(a2 + *(result + 52)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_25DD2E674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  JSONLinesDeserializationSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}