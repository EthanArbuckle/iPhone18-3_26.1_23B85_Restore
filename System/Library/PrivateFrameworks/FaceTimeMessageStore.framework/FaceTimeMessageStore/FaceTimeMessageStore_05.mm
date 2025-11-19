unint64_t sub_1BC805E64()
{
  result = qword_1EBCF5808;
  if (!qword_1EBCF5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5808);
  }

  return result;
}

unint64_t sub_1BC805EBC()
{
  result = qword_1EDC1F9A0;
  if (!qword_1EDC1F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9A0);
  }

  return result;
}

unint64_t sub_1BC805F14()
{
  result = qword_1EDC1F9A8;
  if (!qword_1EDC1F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9A8);
  }

  return result;
}

void sub_1BC805F7C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore10XPCWrapper_data);
  v4 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore10XPCWrapper_data + 8);
  v5 = sub_1BC8F70C4();
  v6 = sub_1BC8F7BE4();
  [a1 encodeObject:v5 forKey:v6];
}

id sub_1BC806068(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1BC80620C();
  v5 = sub_1BC8F8364();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BC8F70D4();
    v9 = v8;

    v10 = &v2[OBJC_IVAR____TtC20FaceTimeMessageStore10XPCWrapper_data];
    *v10 = v7;
    v10[1] = v9;
    v13.receiver = v2;
    v13.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

id sub_1BC80619C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BC80620C()
{
  result = qword_1EDC20650[0];
  if (!qword_1EDC20650[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDC20650);
  }

  return result;
}

uint64_t Utterance.init(text:captions:utteranceNumber:utteranceStartTimestamp:utteranceDuration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = a3;
  *(a9 + 8) = result;
  *(a9 + 52) = a4;
  *(a9 + 56) = BYTE4(a4) & 1;
  *(a9 + 16) = a2;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6 & 1;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  return result;
}

uint64_t Utterance.text.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Utterance.utteranceStartTimestamp.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t Utterance.utteranceDuration.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t static Utterance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v21 = *(a1 + 52);
  v22 = *(a1 + 56);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 52);
  v15 = *(a2 + 56);
  if ((sub_1BC7DACAC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v16 = v2 == v8 && v3 == v9;
  if (!v16 && (sub_1BC8F8AA4() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v10)
    {
      v17 = v11;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v12)
    {
      v18 = v13;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v22)
  {
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v21 == v14)
    {
      v20 = v15;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1BC806414(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974706163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001BC90C130 == a2;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001BC90C150 == a2;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x636E617265747475 && a2 == 0xEF7265626D754E65)
        {

          return 4;
        }

        else
        {
          v10 = sub_1BC8F8AA4();

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

unint64_t sub_1BC8065D4(char a1)
{
  result = 0x736E6F6974706163;
  switch(a1)
  {
    case 1:
      result = 1954047348;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x636E617265747475;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC806688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC806414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8066B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC8065CC();
  *a1 = result;
  return result;
}

uint64_t sub_1BC8066D8(uint64_t a1)
{
  v2 = sub_1BC8069D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC806714(uint64_t a1)
{
  v2 = sub_1BC8069D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Utterance.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5818, &qword_1BC901E30);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v17 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[3];
  v24 = v1[2];
  v25 = v12;
  v23 = v14;
  v22 = *(v1 + 32);
  v21 = v1[5];
  v20 = *(v1 + 48);
  v19 = *(v1 + 13);
  v18 = *(v1 + 56);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8069D8();

  sub_1BC8F8CA4();
  v32 = v13;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5820, &qword_1BC901E38);
  sub_1BC806F58(&qword_1EDC1DED8, sub_1BC806A2C);
  sub_1BC8F89F4();

  if (!v2)
  {
    v30 = 1;
    OUTLINED_FUNCTION_2_10();
    sub_1BC8F89A4();
    v29 = 2;
    OUTLINED_FUNCTION_2_10();
    sub_1BC8F8964();
    v28 = 3;
    OUTLINED_FUNCTION_2_10();
    sub_1BC8F8964();
    v27 = 4;
    v26 = v18;
    sub_1BC8F8994();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1BC8069D8()
{
  result = qword_1EDC206D8;
  if (!qword_1EDC206D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206D8);
  }

  return result;
}

unint64_t sub_1BC806A2C()
{
  result = qword_1EDC1E188;
  if (!qword_1EDC1E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1E188);
  }

  return result;
}

uint64_t Utterance.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 52);
  v9 = *(v1 + 56);
  sub_1BC7DECBC(a1, *v1);
  sub_1BC8F7CD4();
  if (v5 == 1)
  {
    sub_1BC8F8C24();
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1BC8F8C24();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v4;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1BFB2A060](v12);
    if (!v7)
    {
LABEL_3:
      sub_1BC8F8C24();
      if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = 0;
      }

      MEMORY[0x1BFB2A060](v10);
      if (!v9)
      {
        goto LABEL_7;
      }

      return sub_1BC8F8C24();
    }
  }

  sub_1BC8F8C24();
  if (!v9)
  {
LABEL_7:
    sub_1BC8F8C24();
    return sub_1BC8F8C44();
  }

  return sub_1BC8F8C24();
}

uint64_t Utterance.hashValue.getter()
{
  sub_1BC8F8C04();
  Utterance.hash(into:)(v1);
  return sub_1BC8F8C64();
}

uint64_t Utterance.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5828, &qword_1BC901E40);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8069D8();
  sub_1BC8F8C84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5820, &qword_1BC901E38);
  LOBYTE(v25) = 0;
  sub_1BC806F58(&qword_1EDC1FF60, sub_1BC806FD0);
  sub_1BC8F88F4();
  v10 = v28[0];
  OUTLINED_FUNCTION_1_11(1);
  v23 = sub_1BC8F88A4();
  v24 = v11;
  OUTLINED_FUNCTION_1_11(2);
  v22 = sub_1BC8F8854();
  v36 = v12 & 1;
  OUTLINED_FUNCTION_1_11(3);
  v21 = sub_1BC8F8854();
  v35 = v13 & 1;
  v37 = 4;
  v14 = sub_1BC8F8894();
  v15 = OUTLINED_FUNCTION_35();
  v16(v15);
  v34 = BYTE4(v14) & 1;
  *&v25 = v10;
  *(&v25 + 1) = v23;
  *&v26 = v24;
  *(&v26 + 1) = v22;
  v20 = v36;
  v27[0] = v36;
  *&v27[8] = v21;
  v17 = v35;
  v27[16] = v35;
  *&v27[20] = v14;
  v27[24] = BYTE4(v14) & 1;
  v18 = v26;
  *a2 = v25;
  a2[1] = v18;
  a2[2] = *v27;
  *(a2 + 41) = *&v27[9];
  sub_1BC807024(&v25, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v28[0] = v10;
  v28[1] = v23;
  v28[2] = v24;
  v28[3] = v22;
  v29 = v20;
  v30 = v21;
  v31 = v17;
  v32 = v14;
  v33 = BYTE4(v14) & 1;
  return sub_1BC80705C(v28);
}

uint64_t sub_1BC806F18()
{
  sub_1BC8F8C04();
  Utterance.hash(into:)(v1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC806F58(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5820, &qword_1BC901E38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC806FD0()
{
  result = qword_1EDC1FFA0;
  if (!qword_1EDC1FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FFA0);
  }

  return result;
}

unint64_t sub_1BC807090()
{
  result = qword_1EBCF5830;
  if (!qword_1EBCF5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5830);
  }

  return result;
}

uint64_t sub_1BC8070E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1BC807124(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Utterance.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Utterance.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC8072EC()
{
  result = qword_1EBCF5838;
  if (!qword_1EBCF5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5838);
  }

  return result;
}

unint64_t sub_1BC807344()
{
  result = qword_1EDC206C8;
  if (!qword_1EDC206C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206C8);
  }

  return result;
}

unint64_t sub_1BC80739C()
{
  result = qword_1EDC206D0;
  if (!qword_1EDC206D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206D0);
  }

  return result;
}

uint64_t sub_1BC8073F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8F83F4();
  OUTLINED_FUNCTION_0_5();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  OUTLINED_FUNCTION_0_5();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v24 - v20;
  (*(v6 + 16))(v11, a1, v4);
  if (__swift_getEnumTagSinglePayload(v11, 1, a2) == 1)
  {
    (*(v6 + 8))(v11, v4);
    return 7104878;
  }

  else
  {
    (*(v13 + 32))(v21, v11, a2);
    (*(v13 + 16))(v19, v21, a2);
    v22 = sub_1BC8F7C94();
    (*(v13 + 8))(v21, a2);
  }

  return v22;
}

uint64_t sub_1BC80770C()
{
  v0 = sub_1BC8F7734();
  __swift_allocate_value_buffer(v0, qword_1EDC2B3C0);
  __swift_project_value_buffer(v0, qword_1EDC2B3C0);
  return sub_1BC8F7724();
}

uint64_t sub_1BC807854(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_1BC8F7734();
  OUTLINED_FUNCTION_0_5();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BC8F76B4();
  __swift_allocate_value_buffer(v15, a2);
  __swift_project_value_buffer(v15, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v7, a4);
  (*(v9 + 16))(v14, v16, v7);
  return sub_1BC8F7694();
}

uint64_t sub_1BC807980()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t sub_1BC8079BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BC8079E0, 0, 0);
}

uint64_t sub_1BC8079E0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_13();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_41_6();
    if (v0)
    {
      v2 = *(v1 + 48);
      type metadata accessor for Message();
      v3 = sub_1BC8F7E34();
      [v0 messageStoreDidAddMessages_];
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t sub_1BC807A88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BC807AAC, 0, 0);
}

uint64_t sub_1BC807AAC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_13();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_41_6();
    if (v0)
    {
      v2 = *(v1 + 48);
      type metadata accessor for Message();
      v3 = sub_1BC8F7E34();
      [v0 messageStoreDidUpdateMessages_];
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t sub_1BC807B54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BC807B78, 0, 0);
}

uint64_t sub_1BC807B78()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_8_13();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_41_6();
    if (v0)
    {
      v2 = *(v1 + 48);

      sub_1BC899AAC(v3);
      sub_1BC8F7264();
      v4 = sub_1BC8F7E34();

      [v0 messageStoreDidDeleteMessagesWithUUIDs_];
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t sub_1BC807C3C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BC807C60, 0, 0);
}

uint64_t sub_1BC807C60()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_13();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_41_6();
    if (v0)
    {
      [v0 messageStoreAccountInfoDidChange_];
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_1BC807D08()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_13();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_41_6();
    if (v0)
    {
      [v0 messageStoreDidReconnect];
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t sub_1BC807DAC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_13();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_41_6();
    if (v0)
    {
      [v0 messageStoreRequiresRefetch];
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t sub_1BC807E30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  if (qword_1EDC20720 != -1)
  {
    swift_once();
  }

  v4 = sub_1BC8F7734();
  __swift_project_value_buffer(v4, qword_1EDC2B390);
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F8204();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BC7A3000, v5, v6, "Server disconnected", v7, 2u);
    MEMORY[0x1BFB2AA50](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    atomic_store(0, (result + 40));
    v10 = sub_1BC8F7FC4();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;

    sub_1BC881904(0, 0, v3, &unk_1BC9021E0, v11);

    return sub_1BC7C1744(v3, &qword_1EBCF63D0, &qword_1BC902140);
  }

  return result;
}

uint64_t sub_1BC80802C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1BC8F86F4();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8080EC, 0, 0);
}

uint64_t sub_1BC8080EC()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  sub_1BC8F8B74();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1BC8081B0;
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_15();

  return sub_1BC82D814();
}

uint64_t sub_1BC8081B0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    (*(v3[4] + 8))(v3[5], v3[3]);
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    (*(v3[4] + 8))(v3[5], v3[3]);
    v12 = swift_task_alloc();
    v3[8] = v12;
    *v12 = v7;
    v12[1] = sub_1BC808334;
    v13 = v3[2];

    return sub_1BC7A928C();
  }
}

uint64_t sub_1BC808334()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 64);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_11();

  return v6();
}

uint64_t sub_1BC808430()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[5];
  v2 = v0[3];
  v3 = v1;
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F81E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    OUTLINED_FUNCTION_9();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BC7A3000, v4, v5, "Failed to ping server: %{public}@", v8, 0xCu);
    sub_1BC7C1744(v9, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
  }

  atomic_store(1u, (v0[2] + 40));
  OUTLINED_FUNCTION_27();

  return v12();
}

uint64_t sub_1BC80858C()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 32);
  return v2();
}

uint64_t sub_1BC8085B0(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC8085C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_44_3();
  a15 = v18;
  a16 = v19;
  OUTLINED_FUNCTION_22_0();
  a14 = v17;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v20 = sub_1BC8F7734();
  v21 = OUTLINED_FUNCTION_42_3(v20, qword_1EDC2B390);
  v22 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v22))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_30_5();
    *v16 = 136315138;
    *(v16 + 4) = sub_1BC7A9A4C(0x7373654D65766173, 0xEF293A5F28656761, &a10);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v28 = v17[4];
  v29 = *(v17[5] + 32);
  v17[3] = v28;
  v30 = *(MEMORY[0x1E69937E0] + 4);
  v31 = v28;
  v32 = swift_task_alloc();
  v17[6] = v32;
  sub_1BC809E74();
  *v32 = v17;
  v32[1] = sub_1BC80874C;
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEDF2DF0](v33, v34, v35, v36, v37, v38, v39, v40);
}

uint64_t sub_1BC80874C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *(v4 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v9 + 56) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BC808878()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 56);
  return v2();
}

uint64_t sub_1BC80889C()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for SaveMessageToPhotoLibrary(0);
  v1[4] = v3;
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC80891C()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_42_3(v2, qword_1EDC2B390);
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v4))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_30_5();
    *v0 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v0 + 4) = sub_1BC7A9A4C(0xD000000000000027, v5, v6);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v12 = v1[5];
  v13 = v1[2];
  v14 = *(v1[3] + 32);
  v15 = sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1(v15);
  (*(v16 + 16))(v12, v13);
  v17 = *(MEMORY[0x1E69937F0] + 4);
  v18 = swift_task_alloc();
  v1[6] = v18;
  OUTLINED_FUNCTION_26_4();
  sub_1BC7AC6B4(v19, v20);
  OUTLINED_FUNCTION_45_4();
  *v18 = v21;
  v18[1] = sub_1BC808ACC;
  v23 = v1[4];
  v22 = v1[5];
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEDF2E08](v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_1BC808ACC()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *(v5 + 40);
  v8 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v9 = v8;
  *(v3 + 56) = v0;

  OUTLINED_FUNCTION_26_4();
  sub_1BC7BD5CC(v7, v10);
  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v3 + 40);

    OUTLINED_FUNCTION_27();

    return v15();
  }
}

uint64_t sub_1BC808C18()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1BC808C74()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1BC808CD0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC808CE4()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_42_3(v2, qword_1EDC2B390);
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v4))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_30_5();
    *v0 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v0 + 4) = sub_1BC7A9A4C(0xD000000000000012, v5, v6);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v12 = *(v1[4] + 32);
  v1[2] = v1[3];
  v13 = *(MEMORY[0x1E69937F0] + 4);

  v14 = swift_task_alloc();
  v1[5] = v14;
  sub_1BC809E20();
  OUTLINED_FUNCTION_45_4();
  *v14 = v15;
  v14[1] = sub_1BC808E54;
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEDF2E08](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1BC808E54()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v9 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v13();
  }
}

uint64_t sub_1BC808F84(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC808F9C()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_42_3(v2, qword_1EDC2B390);
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v4))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_30_5();
    *v0 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v0 + 4) = sub_1BC7A9A4C(0xD000000000000016, v5, v6);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v12 = v1[4];
  v13 = *(v1[3] + 32);
  v1[2] = v12;
  sub_1BC7A5AB4(v12);
  v14 = *(MEMORY[0x1E69937F0] + 4);
  v15 = swift_task_alloc();
  v1[5] = v15;
  sub_1BC809DCC();
  OUTLINED_FUNCTION_45_4();
  *v15 = v16;
  v15[1] = sub_1BC809108;
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEDF2E08](v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1BC809108()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 48) = v0;

  sub_1BC7B0EFC(*(v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v12();
  }
}

uint64_t sub_1BC809228()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  return v2();
}

uint64_t sub_1BC809260()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_42_3(v2, qword_1EDC2B390);
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v4))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_30_5();
    *v0 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v0 + 4) = sub_1BC7A9A4C(0xD000000000000018, v5, v6);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v12 = *(*(v1 + 16) + 32);
  v13 = *(MEMORY[0x1E69937E0] + 4);
  v14 = swift_task_alloc();
  *(v1 + 24) = v14;
  sub_1BC809D78();
  OUTLINED_FUNCTION_28_4();
  *v14 = v15;
  v14[1] = sub_1BC8093BC;
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEDF2DF0](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1BC8093BC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 32) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC809500()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_42_3(v2, qword_1EDC2B390);
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v4))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_30_5();
    *v0 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v0 + 4) = sub_1BC7A9A4C(0xD000000000000010, v5, v6);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v12 = *(*(v1 + 24) + 32);
  v13 = *(MEMORY[0x1E69937E0] + 4);
  v14 = swift_task_alloc();
  *(v1 + 32) = v14;
  sub_1BC809D24();
  OUTLINED_FUNCTION_28_4();
  *v14 = v15;
  v14[1] = sub_1BC80965C;
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEDF2DF0](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1BC80965C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 40) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC809754()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 40);
  return v2();
}

uint64_t sub_1BC809778()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = type metadata accessor for ReportTranscriptAccuracy(0);
  *(v1 + 32) = v4;
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8097FC()
{
  OUTLINED_FUNCTION_22_0();
  v32 = v1;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_42_3(v2, qword_1EDC2B390);
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v4))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    v31 = OUTLINED_FUNCTION_22_6();
    *v0 = 136315138;
    *(v0 + 4) = sub_1BC7A9A4C(0xD00000000000002DLL, 0x80000001BC90C250, &v31);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v11 = *(v1 + 32);
  v10 = *(v1 + 40);
  v12 = *(v1 + 64);
  v13 = *(v1 + 16);
  v14 = *(*(v1 + 24) + 32);
  v15 = sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1(v15);
  (*(v16 + 16))(v10, v13);
  *(v10 + *(v11 + 20)) = v12;
  v17 = *(MEMORY[0x1E69937F0] + 4);
  v18 = swift_task_alloc();
  *(v1 + 48) = v18;
  OUTLINED_FUNCTION_25_6();
  sub_1BC7AC6B4(v19, v20);
  OUTLINED_FUNCTION_45_4();
  *v18 = v27;
  v18[1] = sub_1BC8099CC;
  v29 = *(v1 + 32);
  v28 = *(v1 + 40);

  return MEMORY[0x1EEDF2E08](v28, v29, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1BC8099CC()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *(v5 + 40);
  v8 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v9 = v8;
  *(v3 + 56) = v0;

  OUTLINED_FUNCTION_25_6();
  sub_1BC7BD5CC(v7, v10);
  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v3 + 40);

    OUTLINED_FUNCTION_27();

    return v15();
  }
}

uint64_t sub_1BC809B18()
{
  v1 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B390);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v5 + 4) = sub_1BC7A9A4C(0xD000000000000010, v6, v7);
    _os_log_impl(&dword_1BC7A3000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v8 = *(v1 + 32);
  sub_1BC809CD0();
  return sub_1BC8F7894();
}

uint64_t sub_1BC809C64()
{
  sub_1BC7C1744(v0 + 24, &qword_1EBCF5850, &qword_1BC9020F0);
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_1BC809C9C()
{
  sub_1BC809C64();

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

unint64_t sub_1BC809CD0()
{
  result = qword_1EDC1F118;
  if (!qword_1EDC1F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F118);
  }

  return result;
}

unint64_t sub_1BC809D24()
{
  result = qword_1EDC1F120;
  if (!qword_1EDC1F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F120);
  }

  return result;
}

unint64_t sub_1BC809D78()
{
  result = qword_1EDC1E448[0];
  if (!qword_1EDC1E448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC1E448);
  }

  return result;
}

unint64_t sub_1BC809DCC()
{
  result = qword_1EDC1F128;
  if (!qword_1EDC1F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F128);
  }

  return result;
}

unint64_t sub_1BC809E20()
{
  result = qword_1EDC202B8;
  if (!qword_1EDC202B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC202B8);
  }

  return result;
}

unint64_t sub_1BC809E74()
{
  result = qword_1EDC1FDC0[0];
  if (!qword_1EDC1FDC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC1FDC0);
  }

  return result;
}

uint64_t sub_1BC809EC8()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC8079BC(v3, v4);
}

uint64_t sub_1BC809F4C()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC807A88(v3, v4);
}

uint64_t sub_1BC809FD0()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC807B54(v3, v4);
}

uint64_t sub_1BC80A054()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC807C3C(v3, v4);
}

uint64_t sub_1BC80A0D8()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC807CE8(v3, v4);
}

uint64_t sub_1BC80A15C()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC807D8C(v3, v4);
}

uint64_t objectdestroy_55Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BC80A228()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_7(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_33_7(v5);

  return sub_1BC80802C(v7, v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_39_3()
{
}

void sub_1BC80A2F8(char a1, id a2, uint64_t a3)
{
  if (!*MEMORY[0x1E69D54F8])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = *MEMORY[0x1E69D54F8];
  v5 = sub_1BC8F7C24();
  v7 = v6;

  if (!*MEMORY[0x1E69D54E8])
  {
LABEL_32:
    __break(1u);
    return;
  }

  v8 = *MEMORY[0x1E69D54E8];
  v9 = sub_1BC8F7C24();
  v11 = v10;

  sub_1BC84A1F4(a1);
  sub_1BC8F7BE4();
  OUTLINED_FUNCTION_14_7();
  v12 = TCCAccessCopyInformationForBundleId();

  v13 = MEMORY[0x1E69E7CC0];
  v24 = v9;
  v25 = v11;
  if (v12)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v30[0] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5030, &unk_1BC8FC7D0);
      sub_1BC8F7E44();
    }
  }

  v14 = 0;
  v15 = *(v13 + 16);
  v16 = MEMORY[0x1E69E7CA0];
  while (1)
  {
    if (v15 == v14)
    {

      return;
    }

    if (v14 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    v17 = *(v13 + 8 * v14 + 32);
    if (*(v17 + 16))
    {
      break;
    }

LABEL_21:
    ++v14;
  }

  v18 = *(v13 + 8 * v14 + 32);

  v19 = sub_1BC803CBC(v5, v7);
  if ((v20 & 1) == 0 || (sub_1BC7ABB48(*(v17 + 56) + 32 * v19, v30), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_21;
  }

  if (v28 == a2 && v29 == a3)
  {

    goto LABEL_25;
  }

  v22 = v16;
  v23 = sub_1BC8F8AA4();

  if ((v23 & 1) == 0)
  {

    v16 = v22;
    goto LABEL_21;
  }

LABEL_25:

  sub_1BC8E71B0(v24, v25, v17);

  if (v30[3])
  {
    sub_1BC7E613C();
    if (swift_dynamicCast())
    {
      [v28 BOOLValue];
    }
  }

  else
  {
    sub_1BC803774(v30);
  }
}

void sub_1BC80A5E4(char a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v19 = a2 & 1;
    v4 = (a3 + 40);
    v5 = qword_1EDC1E000;
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v8 = v5[54];

      if (v8 != -1)
      {
        OUTLINED_FUNCTION_0_14();
        swift_once();
      }

      v9 = sub_1BC8F7734();
      __swift_project_value_buffer(v9, qword_1EDC2B220);

      v10 = sub_1BC8F7714();
      v11 = sub_1BC8F8204();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v12 = 67240706;
        *(v12 + 4) = v19;
        *(v12 + 8) = 2082;
        v13 = 0xD000000000000015;
        v14 = "com.apple.facetime";
        switch(a1)
        {
          case 1:
            v13 = OUTLINED_FUNCTION_8_14();
            v14 = "badge_count_data";
            break;
          case 2:
            v13 = OUTLINED_FUNCTION_8_14();
            v14 = "com.apple.facetime.debug";
            break;
          case 3:
            v13 = 0xD000000000000018;
            v14 = "com.apple.NanoPhone";
            break;
          case 4:
            v13 = 0xD000000000000013;
            v14 = "group.com.apple.FaceTime";
            break;
          case 5:
            v13 = 0xD00000000000001FLL;
            v14 = "memessagestored.service";
            break;
          case 6:
            v13 = 0xD000000000000018;
            v14 = "getMessages(fetchRequest:)";
            break;
          default:
            break;
        }

        v15 = sub_1BC7A9A4C(v13, v14 | 0x8000000000000000, &v20);

        *(v12 + 10) = v15;
        *(v12 + 18) = 2082;
        *(v12 + 20) = sub_1BC7A9A4C(v7, v6, &v20);
        _os_log_impl(&dword_1BC7A3000, v10, v11, "Setting TCC access to %{BOOL,public}d for %{public}s on %{public}s!", v12, 0x1Cu);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();

        v5 = qword_1EDC1E000;
      }

      else
      {
      }

      v16 = sub_1BC8F7BE4();

      switch(a1)
      {
        case 1:
        case 2:
          OUTLINED_FUNCTION_8_14();
          break;
        default:
          break;
      }

      v17 = sub_1BC8F7BE4();

      TCCAccessSetForBundleId();

      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1BC80A968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_9_10();
  if (qword_1EDC1E1B0 != -1)
  {
    OUTLINED_FUNCTION_0_14();
    swift_once();
  }

  v15 = sub_1BC8F7734();
  *(v12 + 248) = __swift_project_value_buffer(v15, qword_1EDC2B220);
  v16 = sub_1BC8F7714();
  v17 = sub_1BC8F8204();
  if (os_log_type_enabled(v16, v17))
  {
    v13 = *(v12 + 288);
    v18 = swift_slowAlloc();
    *v18 = 67240192;
    *(v18 + 4) = v13;
    _os_log_impl(&dword_1BC7A3000, v16, v17, "Setting data class to %{BOOL,public}d!", v18, 8u);
    OUTLINED_FUNCTION_6();
  }

  v19 = [objc_opt_self() defaultStore];
  *(v12 + 256) = v19;
  if (v19)
  {
    v20 = v19;
    *(v12 + 16) = v12;
    *(v12 + 56) = v12 + 240;
    *(v12 + 24) = sub_1BC80AC88;
    v21 = swift_continuation_init();
    *(v12 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5868, &qword_1BC902240);
    *(v12 + 144) = MEMORY[0x1E69E9820];
    *(v12 + 152) = 1107296256;
    *(v12 + 160) = sub_1BC80B390;
    *(v12 + 168) = &block_descriptor_0;
    *(v12 + 176) = v21;
    [v20 aa:v12 + 144 primaryAppleAccountWithCompletion:?];
    OUTLINED_FUNCTION_6_11();

    return MEMORY[0x1EEE6DEC8](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
  }

  else
  {
    v30 = sub_1BC8F7714();
    v31 = sub_1BC8F81E4();
    if (os_log_type_enabled(v30, v31))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v32, v33, "Failed to get ACAccountStore");
      OUTLINED_FUNCTION_6();
    }

    sub_1BC80B418();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_18_6();
    v35 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_13_10();
    if (OUTLINED_FUNCTION_17_7())
    {
      OUTLINED_FUNCTION_21_1();
      a10 = OUTLINED_FUNCTION_5_12();
      OUTLINED_FUNCTION_3_14(4.8751e-34);
      v36 = OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_12_8(v36, v37, v38);
      OUTLINED_FUNCTION_14_7();
      *(v13 + 4) = v14;
      OUTLINED_FUNCTION_1_13(&dword_1BC7A3000, v39, v40, "Could not disable PhoneFacetime dataclass: %{public}s");
      __swift_destroy_boxed_opaque_existential_1(a10);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    swift_willThrow();
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_6_11();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
  }
}

uint64_t sub_1BC80AC88()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_1BC80B1B4;
  }

  else
  {
    v3 = sub_1BC80AD94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BC80AD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_9_10();
  v14 = (v12 + 240);
  v13 = *(v12 + 240);
  *(v12 + 272) = v13;
  if (v13)
  {
    v15 = *(v12 + 256);
    [v13 setEnabled:*(v12 + 288) forDataclass:*MEMORY[0x1E69596C8]];
    *(v12 + 80) = v12;
    *(v12 + 120) = v14;
    *(v12 + 88) = sub_1BC80B03C;
    v16 = swift_continuation_init();
    *(v12 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5870, &qword_1BC902248);
    *(v12 + 144) = MEMORY[0x1E69E9820];
    *(v12 + 152) = 1107296256;
    *(v12 + 160) = sub_1BC8BEB74;
    *(v12 + 168) = &block_descriptor_5;
    *(v12 + 176) = v16;
    [v15 saveAccount:v13 withCompletionHandler:v12 + 144];
    OUTLINED_FUNCTION_6_11();

    return MEMORY[0x1EEE6DEC8](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    v25 = *(v12 + 248);
    v26 = sub_1BC8F7714();
    v27 = sub_1BC8F81E4();
    if (os_log_type_enabled(v26, v27))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v28, v29, "Failed to get ACAccount");
      OUTLINED_FUNCTION_6();
    }

    v30 = *(v12 + 256);

    sub_1BC80B418();
    swift_allocError();
    *v31 = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_18_6();
    v32 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_13_10();
    if (OUTLINED_FUNCTION_17_7())
    {
      OUTLINED_FUNCTION_21_1();
      a10 = OUTLINED_FUNCTION_5_12();
      *v14 = 136446210;
      swift_getErrorValue();
      v33 = OUTLINED_FUNCTION_15_8();
      v36 = OUTLINED_FUNCTION_12_8(v33, v34, v35);

      *(v12 + 244) = v36;
      OUTLINED_FUNCTION_1_13(&dword_1BC7A3000, v37, v38, "Could not disable PhoneFacetime dataclass: %{public}s");
      __swift_destroy_boxed_opaque_existential_1(a10);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    swift_willThrow();
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_6_11();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
  }
}

uint64_t sub_1BC80B03C()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_1BC80B29C;
  }

  else
  {
    v3 = sub_1BC80B148;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BC80B148()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BC80B1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_9_10();
  v15 = *(v12 + 256);
  v16 = *(v12 + 264);
  swift_willThrow();

  v17 = *(v12 + 264);
  OUTLINED_FUNCTION_18_6();
  v18 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_13_10();
  if (OUTLINED_FUNCTION_17_7())
  {
    OUTLINED_FUNCTION_21_1();
    a10 = OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_3_14(4.8751e-34);
    v19 = OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_12_8(v19, v20, v21);
    OUTLINED_FUNCTION_14_7();
    *(v13 + 4) = v14;
    OUTLINED_FUNCTION_1_13(&dword_1BC7A3000, v22, v23, "Could not disable PhoneFacetime dataclass: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_6_11();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_1BC80B29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_9_10();
  v15 = v12[34];
  v16 = v12[35];
  v17 = v12[32];
  swift_willThrow();

  v18 = v12[35];
  OUTLINED_FUNCTION_18_6();
  v19 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_13_10();
  if (OUTLINED_FUNCTION_17_7())
  {
    OUTLINED_FUNCTION_21_1();
    a10 = OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_3_14(4.8751e-34);
    v20 = OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_12_8(v20, v21, v22);
    OUTLINED_FUNCTION_14_7();
    *(v13 + 4) = v14;
    OUTLINED_FUNCTION_1_13(&dword_1BC7A3000, v23, v24, "Could not disable PhoneFacetime dataclass: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_6_11();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1BC80B390(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1BC899994(v5, v6);
  }

  else
  {
    v8 = a2;

    return sub_1BC891000(v5, a2);
  }
}

unint64_t sub_1BC80B418()
{
  result = qword_1EBCF5860;
  if (!qword_1EBCF5860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5860);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TCCAccessError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC80B564()
{
  result = qword_1EBCF5878;
  if (!qword_1EBCF5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5878);
  }

  return result;
}

uint64_t sub_1BC80B680(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656D695465636166 && a2 == 0xED00006F69647541;
  if (v3 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D695465636166 && a2 == 0xED00006F65646956;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x72656972726163 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BC8F8AA4();

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

uint64_t sub_1BC80B7A0(unsigned __int8 a1)
{
  result = 0x656D695465636166;
  if (a1 >= 2u)
  {
    return 0x72656972726163;
  }

  return result;
}

uint64_t sub_1BC80B80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC80B680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC80B834(uint64_t a1)
{
  v2 = sub_1BC80BA18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC80B870(uint64_t a1)
{
  v2 = sub_1BC80BA18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessageCounts.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5880, &qword_1BC902310);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v16 - v10;
  v13 = *v1;
  v12 = v1[1];
  v16[0] = v1[2];
  v16[1] = v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC80BA18();
  sub_1BC8F8CA4();
  v19 = 0;
  OUTLINED_FUNCTION_9_2();
  if (!v2)
  {
    v18 = 1;
    OUTLINED_FUNCTION_9_2();
    v17 = 2;
    OUTLINED_FUNCTION_9_2();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1BC80BA18()
{
  result = qword_1EBCF5888;
  if (!qword_1EBCF5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5888);
  }

  return result;
}

uint64_t MessageCounts.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1BFB2A020](*v0);
  MEMORY[0x1BFB2A020](v1);
  return MEMORY[0x1BFB2A020](v2);
}

uint64_t MessageCounts.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  MEMORY[0x1BFB2A020](v2);
  MEMORY[0x1BFB2A020](v3);
  return sub_1BC8F8C64();
}

uint64_t MessageCounts.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5890, &qword_1BC902318);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC80BA18();
  sub_1BC8F8C84();
  if (!v2)
  {
    v21 = 0;
    v14 = OUTLINED_FUNCTION_8_0();
    v20 = 1;
    v16 = OUTLINED_FUNCTION_8_0();
    v19 = 2;
    v17 = OUTLINED_FUNCTION_8_0();
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    a2[1] = v16;
    a2[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BC80BCC8()
{
  result = qword_1EBCF5898;
  if (!qword_1EBCF5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5898);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageCounts.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC80BE40()
{
  result = qword_1EBCF58A0;
  if (!qword_1EBCF58A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF58A0);
  }

  return result;
}

unint64_t sub_1BC80BE98()
{
  result = qword_1EBCF58A8;
  if (!qword_1EBCF58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF58A8);
  }

  return result;
}

unint64_t sub_1BC80BEF0()
{
  result = qword_1EBCF58B0;
  if (!qword_1EBCF58B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF58B0);
  }

  return result;
}

uint64_t sub_1BC80BF48(unsigned __int16 a1)
{
  if (a1 < 3u)
  {
    return OUTLINED_FUNCTION_0_15(a1);
  }

  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

uint64_t sub_1BC80BF98(unsigned __int16 a1)
{
  if (a1 < 3u)
  {
    return OUTLINED_FUNCTION_0_15(a1);
  }

  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

uint64_t sub_1BC80BFE8(__int16 a1)
{
  switch(a1)
  {
    case 0:
      return 0x63696F566576694CLL;
    case 2:
      return 0x69614D6F65646956;
    case 1:
      return 0x6F566C6175736956;
  }

  v2 = sub_1BC8F8A54();
  MEMORY[0x1BFB29120](v2);

  return 0x726568744FLL;
}

unint64_t sub_1BC80C0F0()
{
  result = qword_1EDC20550;
  if (!qword_1EDC20550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20550);
  }

  return result;
}

unint64_t sub_1BC80C160()
{
  result = qword_1EBCF58B8;
  if (!qword_1EBCF58B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5388, &qword_1BC902620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF58B8);
  }

  return result;
}

BOOL sub_1BC80C1EC()
{
  v0 = sub_1BC8F8804();

  return v0 != 0;
}

BOOL sub_1BC80C25C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BC80C1EC();
  *a2 = result;
  return result;
}

unint64_t sub_1BC80C290@<X0>(void *a1@<X8>)
{
  result = sub_1BC80C234();
  *a1 = 0xD00000000000001BLL;
  a1[1] = v3;
  return result;
}

id sub_1BC80C2C0()
{
  v0 = [objc_opt_self() sharedPhotoLibrary];

  return v0;
}

uint64_t sub_1BC80C300()
{
  OUTLINED_FUNCTION_5();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = sub_1BC8F7014();
  v1[30] = v4;
  OUTLINED_FUNCTION_26(v4);
  v1[31] = v5;
  v1[32] = *(v6 + 64);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC80C3E4, 0, 0);
}

uint64_t sub_1BC80C3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v74 = v12;
  if (qword_1EDC1E1C0 != -1)
  {
    OUTLINED_FUNCTION_1_14();
  }

  v13 = v12[35];
  v14 = v12[36];
  v15 = v12[30];
  v16 = v12[31];
  v18 = v12[27];
  v17 = v12[28];
  v19 = sub_1BC8F7734();
  v12[37] = __swift_project_value_buffer(v19, qword_1EDC2B250);
  v20 = *(v16 + 16);
  v20(v14, v18, v15);
  v72 = v20;
  v20(v13, v17, v15);
  v21 = sub_1BC8F7714();
  v22 = sub_1BC8F8204();
  v23 = os_log_type_enabled(v21, v22);
  v25 = v12[35];
  v24 = v12[36];
  v27 = v12[30];
  v26 = v12[31];
  if (v23)
  {
    v70 = v22;
    v28 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v28 = 136315394;
    sub_1BC80DFB0();
    v29 = sub_1BC8F8A54();
    v31 = v30;
    v32 = *(v26 + 8);
    v32(v24, v27);
    v33 = sub_1BC7A9A4C(v29, v31, &v73);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = sub_1BC8F8A54();
    v36 = v35;
    v32(v25, v27);
    v37 = sub_1BC7A9A4C(v34, v36, &v73);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_1BC7A3000, v21, v70, "photoURL: %s videoURL: %s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v38 = *(v26 + 8);
    v38(v25, v27);
    v38(v24, v27);
  }

  v39 = v12[33];
  v40 = v12[34];
  v67 = v40;
  v41 = v12[31];
  v42 = v12[29];
  v43 = v12[30];
  v68 = v12[32];
  v69 = v42;
  v44 = v12[27];
  v45 = v12[28];
  v46 = swift_allocObject();
  v12[38] = v46;
  *(v46 + 16) = 0;
  v47 = *&v42[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider];
  v48 = *&v42[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider + 8];
  v71 = v47();
  v12[39] = v71;
  v72(v40, v44, v43);
  v72(v39, v45, v43);
  v49 = *(v41 + 80);
  v50 = (v49 + 16) & ~v49;
  v51 = (v50 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v49 + v51 + 8) & ~v49;
  v53 = swift_allocObject();
  v54 = *(v41 + 32);
  v54(v53 + v50, v67, v43);
  *(v53 + v51) = v69;
  v54(v53 + v52, v39, v43);
  *(v53 + ((v52 + v68 + 7) & 0xFFFFFFFFFFFFFFF8)) = v46;
  v12[22] = sub_1BC80E008;
  v12[23] = v53;
  v12[18] = MEMORY[0x1E69E9820];
  v12[19] = 1107296256;
  v12[20] = sub_1BC80CE70;
  v12[21] = &block_descriptor_16;
  v55 = _Block_copy(v12 + 18);
  v12[40] = v55;
  v56 = v12[23];
  v57 = v69;

  v12[2] = v12;
  v12[3] = sub_1BC80C8CC;
  v58 = swift_continuation_init();
  v12[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
  v12[10] = MEMORY[0x1E69E9820];
  v12[11] = 1107296256;
  v12[12] = sub_1BC80CEB4;
  v12[13] = &block_descriptor_19;
  v12[14] = v58;
  [v71 performChanges:v55 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v12 + 2, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12);
}

uint64_t sub_1BC80C8CC()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = sub_1BC80CC68;
  }

  else
  {
    v3 = sub_1BC80C9D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BC80C9D8()
{
  v33 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);

  _Block_release(v1);
  swift_beginAccess();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 296);
    v5 = v3;
    v6 = sub_1BC8F7714();
    v7 = sub_1BC8F8204();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32 = v9;
      *v8 = 136315138;
      v10 = [v5 localIdentifier];
      v11 = sub_1BC8F7C24();
      v13 = v12;

      v14 = sub_1BC7A9A4C(v11, v13, &v32);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_1BC7A3000, v6, v7, "Saved live photo with identifier %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v15 = *(v0 + 304);
    v17 = *(v0 + 280);
    v16 = *(v0 + 288);
    v19 = *(v0 + 264);
    v18 = *(v0 + 272);
    v20 = [v5 localIdentifier];
    v21 = sub_1BC8F7C24();
    v23 = v22;

    v24 = *(v0 + 8);

    return v24(v21, v23);
  }

  else
  {
    sub_1BC80DF5C();
    swift_allocError();
    swift_willThrow();
    v26 = *(v0 + 304);
    v28 = *(v0 + 280);
    v27 = *(v0 + 288);
    v30 = *(v0 + 264);
    v29 = *(v0 + 272);

    OUTLINED_FUNCTION_27();

    return v31();
  }
}

uint64_t sub_1BC80CC68()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  swift_willThrow();

  _Block_release(v1);
  v4 = v0[41];
  v5 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[33];
  v8 = v0[34];

  OUTLINED_FUNCTION_27();

  return v10();
}

void sub_1BC80CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() creationRequestForAsset];
  v6 = sub_1BC8F6F44();
  v7 = [objc_allocWithZone(MEMORY[0x1E69786E0]) init];
  [v7 setShouldMoveFile_];
  [v5 addResourceWithType:1 fileURL:v6 options:v7];

  v8 = sub_1BC8F6F44();
  v9 = [objc_allocWithZone(MEMORY[0x1E69786E0]) init];
  [v9 setShouldMoveFile_];
  [v5 addResourceWithType:9 fileURL:v8 options:v9];

  v10 = [v5 placeholderForCreatedAsset];
  swift_beginAccess();
  v11 = *(a4 + 16);
  *(a4 + 16) = v10;
}

uint64_t sub_1BC80CE70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t *sub_1BC80CEB4(uint64_t a1, int a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a2)
  {
    v7 = *result;

    return j__swift_continuation_throwingResume();
  }

  else if (a3)
  {
    v8 = a3;

    return sub_1BC899994(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC80CFD4(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_1BC8F7014();
  v4[3] = v7;
  v8 = *(v7 - 8);
  v4[4] = v8;
  v9 = *(v8 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  sub_1BC8F6FB4();
  sub_1BC8F6FB4();
  a4;
  v10 = swift_task_alloc();
  v4[8] = v10;
  *v10 = v4;
  v10[1] = sub_1BC80D12C;

  return sub_1BC80C300();
}

uint64_t sub_1BC80D12C()
{
  OUTLINED_FUNCTION_4_11();
  v3 = v2;
  OUTLINED_FUNCTION_3_1();
  *v4 = v2;
  v5 = v2[8];
  v6 = v2[2];
  v7 = *v1;
  *v4 = *v1;

  v8 = v2[6];
  v9 = v2[3];
  v10 = *(v2[4] + 8);
  v10(v2[5], v9);
  v10(v8, v9);
  if (v0)
  {
    v11 = sub_1BC8F6E94();

    v12 = 0;
    v13 = v11;
  }

  else
  {
    v12 = sub_1BC8F7BE4();

    v11 = 0;
    v13 = v12;
  }

  v15 = v3[6];
  v14 = v3[7];
  v16 = v3[5];
  v14[2](v14, v12, v11);

  _Block_release(v14);

  v17 = *(v7 + 8);

  return v17();
}

uint64_t sub_1BC80D33C()
{
  OUTLINED_FUNCTION_5();
  v8 = *MEMORY[0x1E69E9840];
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1BC8F7014();
  v1[14] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[15] = v4;
  v1[16] = *(v5 + 64);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1BC80D430, 0, 0);
}

uint64_t sub_1BC80D430()
{
  v63 = v0;
  v62[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDC1E1C0 != -1)
  {
    OUTLINED_FUNCTION_1_14();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];
  v5 = sub_1BC8F7734();
  __swift_project_value_buffer(v5, qword_1EDC2B250);
  v61 = *(v3 + 16);
  v61(v1, v4, v2);
  v6 = sub_1BC8F7714();
  v7 = sub_1BC8F8204();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v11 = v0[14];
  v10 = v0[15];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v62[0] = v13;
    *v12 = 136315138;
    sub_1BC80DFB0();
    v14 = sub_1BC8F8A54();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1BC7A9A4C(v14, v16, v62);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1BC7A3000, v6, v7, "MediaAssetManager saving video with URL %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[16];
  v19 = v0[17];
  v20 = v0[14];
  v21 = v0[15];
  v22 = v0[12];
  v23 = v0[13];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v59 = (v24 + 16);
  v25 = *&v23[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider + 8];
  v60 = (*&v23[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider])();
  v61(v19, v22, v20);
  v26 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v27 = (v18 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v21 + 32))(v28 + v26, v19, v20);
  *(v28 + v27) = v23;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v0[6] = sub_1BC80DEB4;
  v0[7] = v28;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BC80CE70;
  v0[5] = &block_descriptor_1;
  v29 = _Block_copy(v0 + 2);
  v30 = v0[7];
  v31 = v23;

  v0[11] = 0;
  LODWORD(v30) = [v60 performChangesAndWait:v29 error:v0 + 11];
  _Block_release(v29);

  v32 = v0[11];
  if (v30)
  {
    swift_beginAccess();
    if (*v59)
    {
      v33 = *v59;
      v34 = v32;
      v35 = sub_1BC8F7714();
      v36 = sub_1BC8F8204();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v62[0] = v38;
        *v37 = 136315138;
        v39 = [v33 localIdentifier];
        v40 = sub_1BC8F7C24();
        v42 = v41;

        v43 = sub_1BC7A9A4C(v40, v42, v62);

        *(v37 + 4) = v43;
        _os_log_impl(&dword_1BC7A3000, v35, v36, "Saved video with identifier %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      v45 = v0[17];
      v44 = v0[18];
      v46 = [v33 localIdentifier];
      v47 = sub_1BC8F7C24();
      v49 = v48;

      v50 = v0[1];
      v51 = *MEMORY[0x1E69E9840];

      return v50(v47, v49);
    }

    sub_1BC80DF5C();
    swift_allocError();
    swift_willThrow();
    v54 = v32;
  }

  else
  {
    v53 = v32;
    sub_1BC8F6EA4();

    swift_willThrow();
  }

  v56 = v0[17];
  v55 = v0[18];

  OUTLINED_FUNCTION_27();
  v58 = *MEMORY[0x1E69E9840];

  return v57();
}

void sub_1BC80D9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() creationRequestForAsset];
  v5 = sub_1BC8F6F44();
  v6 = [objc_allocWithZone(MEMORY[0x1E69786E0]) init];
  [v6 setShouldMoveFile_];
  [v4 addResourceWithType:2 fileURL:v5 options:v6];

  v7 = [v4 placeholderForCreatedAsset];
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = v7;
}

uint64_t sub_1BC80DB70(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_1BC8F7014();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  sub_1BC8F6FB4();
  a3;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_1BC80DC9C;

  return sub_1BC80D33C();
}

uint64_t sub_1BC80DC9C()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = v2[7];
  v5 = *v1;
  *v3 = *v1;

  v6 = v2[2];
  (*(v2[4] + 8))(v2[5], v2[3]);

  if (v0)
  {
    v7 = sub_1BC8F6E94();

    v8 = 0;
    v9 = v7;
  }

  else
  {
    v8 = sub_1BC8F7BE4();

    v7 = 0;
    v9 = v8;
  }

  v10 = v2[6];
  v10[2](v10, v8, v7);

  _Block_release(v10);

  v11 = *(v5 + 8);

  return v11();
}

id sub_1BC80DE6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaAssetManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BC80DEB4()
{
  v1 = sub_1BC8F7014();
  OUTLINED_FUNCTION_26(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7);
  v9 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1BC80D9F8(v0 + v6, v8, v9);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1BC80DF5C()
{
  result = qword_1EBCF58C8;
  if (!qword_1EBCF58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF58C8);
  }

  return result;
}

unint64_t sub_1BC80DFB0()
{
  result = qword_1EDC20610;
  if (!qword_1EDC20610)
  {
    sub_1BC8F7014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20610);
  }

  return result;
}

void sub_1BC80E008()
{
  v1 = sub_1BC8F7014();
  OUTLINED_FUNCTION_26(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64) + 7;
  v9 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + v9 + 8) & ~v6;
  v11 = *(v0 + v9);
  v12 = *(v0 + ((v8 + v10) & 0xFFFFFFFFFFFFFFF8));

  sub_1BC80CD18(v0 + v7, v11, v0 + v10, v12);
}

uint64_t sub_1BC80E0C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BC80E420;

  return sub_1BC80DB70(v2, v3, v4);
}

uint64_t sub_1BC80E174()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BC80E234;

  return sub_1BC80CFD4(v2, v3, v5, v4);
}

uint64_t sub_1BC80E234()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  OUTLINED_FUNCTION_27();

  return v4();
}

_BYTE *storeEnumTagSinglePayload for MediaAssetManagerError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BC80E3C8()
{
  result = qword_1EBCF58D0;
  if (!qword_1EBCF58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF58D0);
  }

  return result;
}

unint64_t sub_1BC80E428(uint64_t a1)
{
  v44 = sub_1BC8F7264();
  v3 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v35[1] = v1;
  v51 = MEMORY[0x1E69E7CC0];
  v45 = v4;
  sub_1BC7DDB1C(0, v6, 0);
  v8 = v45;
  v7 = v51;
  result = sub_1BC82F240(a1);
  v12 = 0;
  v13 = a1 + 56;
  v41 = v8 + 8;
  v42 = v8 + 16;
  v36 = a1 + 64;
  v40 = xmmword_1BC8FC230;
  v38 = a1 + 56;
  v39 = a1;
  v37 = v6;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v13 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_25;
      }

      v49 = v11;
      v47 = result;
      v48 = v10;
      v46 = v12;
      v16 = *(a1 + 48) + *(v8 + 72) * result;
      v17 = *(v8 + 16);
      v50 = v7;
      v19 = v43;
      v18 = v44;
      v17(v43, v16, v44);
      v20 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE8, &qword_1BC902B90);
      v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v40;
      v23 = v22 + v21;
      v8 = v45;
      v17(v23, v19, v18);
      *(v20 + 16) = v22;
      v24 = v19;
      v7 = v50;
      result = (*(v8 + 8))(v24, v18);
      v51 = v7;
      v26 = *(v7 + 16);
      v25 = *(v7 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1BC7DDB1C((v25 > 1), v26 + 1, 1);
        v8 = v45;
        v7 = v51;
      }

      *(v7 + 16) = v26 + 1;
      *(v7 + 8 * v26 + 32) = v20 | 0x1000000000000000;
      if (v49)
      {
        goto LABEL_29;
      }

      v13 = v38;
      a1 = v39;
      v27 = 1 << *(v39 + 32);
      result = v47;
      if (v47 >= v27)
      {
        goto LABEL_26;
      }

      v28 = *(v38 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_27;
      }

      if (*(v39 + 36) != v48)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v47 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v36 + 8 * v14);
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1BC7FBED8(v47, v48, 0);
            v27 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        sub_1BC7FBED8(v47, v48, 0);
      }

LABEL_19:
      v12 = v46 + 1;
      if (v46 + 1 == v37)
      {
        return v7;
      }

      v11 = 0;
      v10 = *(a1 + 36);
      result = v27;
      if (v27 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
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
  return result;
}

unint64_t sub_1BC80E7B0(uint64_t a1)
{
  v44 = sub_1BC8F7264();
  v3 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v35[1] = v1;
  v51 = MEMORY[0x1E69E7CC0];
  v45 = v4;
  sub_1BC7DDB1C(0, v6, 0);
  v8 = v45;
  v7 = v51;
  result = sub_1BC82F240(a1);
  v12 = 0;
  v13 = a1 + 56;
  v41 = v8 + 8;
  v42 = v8 + 16;
  v36 = a1 + 64;
  v40 = xmmword_1BC8FC230;
  v38 = a1 + 56;
  v39 = a1;
  v37 = v6;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v13 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_25;
      }

      v49 = v11;
      v47 = result;
      v48 = v10;
      v46 = v12;
      v16 = *(a1 + 48) + *(v8 + 72) * result;
      v17 = *(v8 + 16);
      v50 = v7;
      v19 = v43;
      v18 = v44;
      v17(v43, v16, v44);
      v20 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE8, &qword_1BC902B90);
      v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v40;
      v23 = v22 + v21;
      v8 = v45;
      v17(v23, v19, v18);
      *(v20 + 16) = v22;
      v24 = v19;
      v7 = v50;
      result = (*(v8 + 8))(v24, v18);
      v51 = v7;
      v26 = *(v7 + 16);
      v25 = *(v7 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1BC7DDB1C((v25 > 1), v26 + 1, 1);
        v8 = v45;
        v7 = v51;
      }

      *(v7 + 16) = v26 + 1;
      *(v7 + 8 * v26 + 32) = v20 | 0x2000000000000000;
      if (v49)
      {
        goto LABEL_29;
      }

      v13 = v38;
      a1 = v39;
      v27 = 1 << *(v39 + 32);
      result = v47;
      if (v47 >= v27)
      {
        goto LABEL_26;
      }

      v28 = *(v38 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_27;
      }

      if (*(v39 + 36) != v48)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v47 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v36 + 8 * v14);
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1BC7FBED8(v47, v48, 0);
            v27 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        sub_1BC7FBED8(v47, v48, 0);
      }

LABEL_19:
      v12 = v46 + 1;
      if (v46 + 1 == v37)
      {
        return v7;
      }

      v11 = 0;
      v10 = *(a1 + 36);
      result = v27;
      if (v27 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
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
  return result;
}

void sub_1BC80EB38(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BC8F84F4();
    sub_1BC7D9730(0, &qword_1EBCF5980, 0x1E695D620);
    sub_1BC82FECC(&qword_1EBCF5988, &qword_1EBCF5980, 0x1E695D620);
    sub_1BC8F8124();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_1BC8F8514() || (sub_1BC7D9730(0, &qword_1EBCF5980, 0x1E695D620), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_1BC7CAD38();
      return;
    }

LABEL_16:
    type metadata accessor for FTStoredMessage();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1BFB29230]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BC8F7E94();
      }

      sub_1BC8F7ED4();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1BC80EDA8(uint64_t a1, void *a2)
{
  v2 = a1;
  v35 = *MEMORY[0x1E69E9840];
  v29 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BC8F84F4();
    sub_1BC7D9730(0, &qword_1EBCF5990, 0x1E695D630);
    sub_1BC82FECC(&qword_1EBCF5998, &qword_1EBCF5990, 0x1E695D630);
    sub_1BC8F8124();
    v2 = v30;
    v3 = v31;
    v5 = v32;
    v4 = v33;
    v6 = v34;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v26 = v3;
LABEL_8:
  v10 = v4;
  if (v2 < 0)
  {
    while (sub_1BC8F8514())
    {
      sub_1BC7D9730(0, &qword_1EBCF5990, 0x1E695D630);
      swift_dynamicCast();
      v14 = v28;
      v4 = v10;
      v13 = v6;
      if (!v28)
      {
        break;
      }

LABEL_17:
      v15 = v2;
      v28 = 0;
      v16 = [a2 existingObjectWithID:v14 error:&v28];
      v17 = v28;
      if (!v16)
      {
        v24 = v28;
        sub_1BC8F6EA4();

        swift_willThrow();
        sub_1BC7CAD38();

        v21 = v25;

        goto LABEL_25;
      }

      v18 = v16;
      type metadata accessor for FTStoredMessage();
      v19 = swift_dynamicCastClass();
      v20 = v17;

      if (v19)
      {
        MEMORY[0x1BFB29230]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();
        v25 = v29;
        v2 = v15;
        v6 = v13;
        v3 = v26;
        goto LABEL_8;
      }

      v10 = v4;
      v6 = v13;
      v2 = v15;
      v3 = v26;
      if ((v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = v10;
    v12 = v6;
    v4 = v10;
    if (v6)
    {
LABEL_13:
      v13 = (v12 - 1) & v12;
      v14 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
      if (v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      while (1)
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
        }

        if (v4 >= ((v5 + 64) >> 6))
        {
          break;
        }

        v12 = *(v3 + 8 * v4);
        ++v11;
        if (v12)
        {
          goto LABEL_13;
        }
      }
    }
  }

  sub_1BC7CAD38();

  v21 = v25;
LABEL_25:
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1BC80F11C(uint64_t a1, void *a2)
{
  if (!a1)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v4 = a2[2];
  v5 = sub_1BC82F830(0, v4, a1);
  v23 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDBB4(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
LABEL_56:
    __break(1u);
    return;
  }

  if (!v5)
  {
    v9 = 0;
    goto LABEL_27;
  }

  v6 = 0;
  do
  {
    v7 = v4 >= v6;
    if (a1 > 0)
    {
      v7 = v6 >= v4;
    }

    if (v7)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v8 = v6 + a1;
    if (__OFADD__(v6, a1))
    {
      v9 = ((v6 + a1) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v9 = v6 + a1;
    }

    if (__OFADD__(v6, a1))
    {
      goto LABEL_52;
    }

    if (v4 < v8)
    {
      v8 = v4;
    }

    v10 = v8 - v6;
    if (v8 < v6)
    {
      goto LABEL_53;
    }

    if (v6 < 0)
    {
      goto LABEL_54;
    }

    if (v4 == v10)
    {

      v11 = a2;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (v8 != v6)
      {
        if (v10 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
          v11 = swift_allocObject();
          v14 = _swift_stdlib_malloc_size(v11);
          v11[2] = v10;
          v11[3] = 2 * ((v14 - 32) / 8);
        }

        swift_arrayInitWithCopy();
      }
    }

    v13 = *(v23 + 16);
    v12 = *(v23 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1BC7DDBB4(v12 > 1, v13 + 1, 1);
    }

    *(v23 + 16) = v13 + 1;
    *(v23 + 8 * v13 + 32) = v11;
    v6 = v9;
    --v5;
  }

  while (v5);
  while (1)
  {
LABEL_27:
    v15 = v4 >= v9;
    if (a1 > 0)
    {
      v15 = v9 >= v4;
    }

    if (v15)
    {
      break;
    }

    v16 = v9 + a1;
    if (__OFADD__(v9, a1))
    {
      v17 = ((v9 + a1) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v17 = v9 + a1;
    }

    if (__OFADD__(v9, a1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v4 < v16)
    {
      v16 = v4;
    }

    v18 = v16 - v9;
    if (v16 < v9)
    {
      goto LABEL_49;
    }

    if (v9 < 0)
    {
      goto LABEL_50;
    }

    if (v4 == v18)
    {

      v19 = a2;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
      if (v16 != v9)
      {
        if (v18 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
          v19 = swift_allocObject();
          v22 = _swift_stdlib_malloc_size(v19);
          v19[2] = v18;
          v19[3] = 2 * ((v22 - 32) / 8);
        }

        swift_arrayInitWithCopy();
      }
    }

    v21 = *(v23 + 16);
    v20 = *(v23 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1BC7DDBB4(v20 > 1, v21 + 1, 1);
    }

    *(v23 + 16) = v21 + 1;
    *(v23 + 8 * v21 + 32) = v19;
    v9 = v17;
  }
}

void sub_1BC80F420(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BC7C0454(a2);
  if (!a1)
  {
    goto LABEL_124;
  }

  v5 = v4;
  v6 = sub_1BC82F830(0, v4, a1);
  v57 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDCA4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v57;
    v8 = a2 >> 62;
    v53 = a1;
    v55 = v5;
    if (v6)
    {
      v52 = sub_1BC7C0454(a2);
      v51 = sub_1BC7C0454(a2);
      v49 = v6;
      v50 = sub_1BC7C0454(a2);
      v9 = 0;
      v10 = 0;
      v56 = a2 & 0xC000000000000001;
      while (1)
      {
        v11 = v5 >= v10;
        if (a1 > 0)
        {
          v11 = v10 >= v5;
        }

        if (v11)
        {
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
          goto LABEL_125;
        }

        if (__OFADD__(v10, a1))
        {
          v12 = ((v10 + a1) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v12 = v10 + a1;
        }

        if (__OFADD__(v10, a1))
        {
          goto LABEL_113;
        }

        if (v52 >= v10 + a1)
        {
          v13 = v10 + a1;
        }

        else
        {
          v13 = v52;
        }

        if (v13 < v10)
        {
          goto LABEL_114;
        }

        if (v51 < v10)
        {
          goto LABEL_115;
        }

        if (v10 < 0)
        {
          goto LABEL_116;
        }

        if (v50 < v13)
        {
          goto LABEL_117;
        }

        if (!v56 || v10 == v13)
        {

          if (!v8)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v10 >= v13)
          {
            goto LABEL_122;
          }

          type metadata accessor for Message();

          v14 = v10;
          do
          {
            v15 = v14 + 1;
            sub_1BC8F85D4();
            v14 = v15;
          }

          while (v13 != v15);
          if (!v8)
          {
LABEL_25:
            v16 = (2 * v13) | 1;
            v17 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
            goto LABEL_28;
          }
        }

        sub_1BC8F87A4();
        v10 = v18;
LABEL_28:
        v19 = v16 >> 1;
        if ((v16 & 1) == 0)
        {
          v20 = v19 - v10;
          if (__OFSUB__(v19, v10))
          {
            goto LABEL_121;
          }

          if (v20)
          {
            goto LABEL_31;
          }

LABEL_38:
          v21 = MEMORY[0x1E69E7CC0];
          goto LABEL_42;
        }

        v48 = v17;
        sub_1BC8F8AD4();
        swift_unknownObjectRetain_n();
        v23 = swift_dynamicCastClass();
        if (!v23)
        {
          swift_unknownObjectRelease();
          v23 = MEMORY[0x1E69E7CC0];
        }

        v24 = *(v23 + 16);

        v20 = v19 - v10;
        if (__OFSUB__(v19, v10))
        {
          goto LABEL_123;
        }

        if (v24 != v20)
        {
          swift_unknownObjectRelease();
          a1 = v53;
          v17 = v48;
          if (!v20)
          {
            goto LABEL_38;
          }

LABEL_31:
          if (v20 < 1)
          {
            v21 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
            v21 = swift_allocObject();
            _swift_stdlib_malloc_size(v21);
            OUTLINED_FUNCTION_102();
            v21[2] = v20;
            v21[3] = v22;
          }

          if (v10 == v19)
          {
            goto LABEL_127;
          }

          v10 = v17 + 8 * v10;
          type metadata accessor for Message();
          swift_arrayInitWithCopy();
LABEL_42:
          swift_unknownObjectRelease();
          goto LABEL_43;
        }

        v21 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        a1 = v53;
        if (!v21)
        {
          goto LABEL_38;
        }

LABEL_43:
        OUTLINED_FUNCTION_120();
        if (v26)
        {
          v27 = OUTLINED_FUNCTION_37(v25);
          sub_1BC7DDCA4(v27, v10, 1);
          v7 = v57;
        }

        ++v9;
        *(v7 + 16) = v10;
        *(v7 + 8 * v19 + 32) = v21;
        v10 = v12;
        v8 = a2 >> 62;
        v5 = v55;
        if (v9 == v49)
        {
          v28 = a2 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_50;
        }
      }
    }

    v12 = 0;
    v28 = a2 & 0xFFFFFFFFFFFFFF8;
    v56 = a2 & 0xC000000000000001;
LABEL_50:
    v54 = v28;
    while (1)
    {
      v29 = v5 >= v12;
      if (a1 > 0)
      {
        v29 = v12 >= v5;
      }

      if (v29)
      {
        return;
      }

      v30 = v12 + a1;
      if (__OFADD__(v12, a1))
      {
        v31 = ((v12 + a1) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v31 = v12 + a1;
      }

      if (__OFADD__(v12, a1))
      {
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
        goto LABEL_112;
      }

      if (v8)
      {
        v45 = sub_1BC8F8504();
        if (v45 >= v30)
        {
          v34 = v12 + a1;
        }

        else
        {
          v34 = v45;
        }

        v32 = v54;
        if (v34 < v12)
        {
          goto LABEL_107;
        }

        v33 = sub_1BC8F8504();
      }

      else
      {
        v32 = v54;
        v33 = *(v54 + 16);
        if (v33 >= v30)
        {
          v34 = v12 + a1;
        }

        else
        {
          v34 = *(v54 + 16);
        }

        if (v34 < v12)
        {
          goto LABEL_107;
        }
      }

      if (v33 < v12)
      {
        goto LABEL_108;
      }

      if (v12 < 0)
      {
        goto LABEL_109;
      }

      if (v8)
      {
        v35 = sub_1BC8F8504();
      }

      else
      {
        v35 = *(v32 + 16);
      }

      if (v35 < v34)
      {
        goto LABEL_110;
      }

      if (v34 < 0)
      {
        goto LABEL_111;
      }

      if (!v56 || v12 == v34)
      {

        if (!v8)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v12 >= v34)
        {
          goto LABEL_119;
        }

        type metadata accessor for Message();

        v36 = v12;
        do
        {
          v30 = v36 + 1;
          sub_1BC8F85D4();
          v36 = v30;
        }

        while (v34 != v30);
        if (!v8)
        {
LABEL_76:
          v37 = (2 * v34) | 1;
          v38 = v32;
          goto LABEL_79;
        }
      }

      v38 = sub_1BC8F87A4();
      v12 = v39;
LABEL_79:
      v40 = v37 >> 1;
      if ((v37 & 1) == 0)
      {
        v41 = v40 - v12;
        if (__OFSUB__(v40, v12))
        {
          goto LABEL_118;
        }

        if (v41)
        {
          goto LABEL_82;
        }

LABEL_99:
        v42 = MEMORY[0x1E69E7CC0];
        goto LABEL_100;
      }

      sub_1BC8F8AD4();
      swift_unknownObjectRetain_n();
      v44 = swift_dynamicCastClass();
      if (!v44)
      {
        swift_unknownObjectRelease();
        v44 = MEMORY[0x1E69E7CC0];
      }

      v30 = *(v44 + 16);

      v41 = v40 - v12;
      if (__OFSUB__(v40, v12))
      {
        goto LABEL_120;
      }

      if (v30 != v41)
      {
        swift_unknownObjectRelease();
        if (!v41)
        {
          goto LABEL_99;
        }

LABEL_82:
        if (v41 < 1)
        {
          v42 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
          v42 = swift_allocObject();
          _swift_stdlib_malloc_size(v42);
          OUTLINED_FUNCTION_102();
          v42[2] = v41;
          v42[3] = v43;
        }

        if (v12 == v40)
        {
          goto LABEL_126;
        }

        type metadata accessor for Message();
        swift_arrayInitWithCopy();
LABEL_100:
        a1 = v53;
        v8 = a2 >> 62;
        v5 = v55;
        goto LABEL_101;
      }

      v42 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      a1 = v53;
      v8 = a2 >> 62;
      v5 = v55;
      if (v42)
      {
        goto LABEL_102;
      }

      v42 = MEMORY[0x1E69E7CC0];
LABEL_101:
      swift_unknownObjectRelease();
LABEL_102:
      OUTLINED_FUNCTION_120();
      if (v26)
      {
        v47 = OUTLINED_FUNCTION_37(v46);
        sub_1BC7DDCA4(v47, v38, 1);
        v7 = v57;
      }

      *(v7 + 16) = v38;
      *(v7 + 8 * v30 + 32) = v42;
      v12 = v31;
    }
  }

LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

void sub_1BC80FA88(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_93(a1, a2);
    v44 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDCE4(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_64;
    }

    if (!v5)
    {
      v9 = 0;
LABEL_30:
      v19 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v20 = v4 >= v9;
        if (v3 > 0)
        {
          v20 = v9 >= v4;
        }

        if (v20)
        {
          return;
        }

        if (__OFADD__(v9, v3))
        {
          v21 = ((v9 + v3) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v21 = v9 + v3;
        }

        if (__OFADD__(v9, v3))
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        OUTLINED_FUNCTION_119();
        v23 = v22 - v9;
        if (v22 < v9)
        {
          goto LABEL_57;
        }

        if (v9 < 0)
        {
          goto LABEL_58;
        }

        if (v4 == v23)
        {

          v24 = v2;
        }

        else
        {
          v24 = v19;
          if (v22 != v9)
          {
            if (v23 < 1)
            {
              v24 = v19;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE8, &qword_1BC902B90);
              v27 = sub_1BC8F7264();
              OUTLINED_FUNCTION_26(v27);
              v41 = (*(v29 + 80) + 32) & ~*(v29 + 80);
              v43 = *(v28 + 72);
              v24 = swift_allocObject();
              v30 = _swift_stdlib_malloc_size(v24);
              if (!v43)
              {
                goto LABEL_65;
              }

              if (v30 - v41 == 0x8000000000000000 && v43 == -1)
              {
                goto LABEL_67;
              }

              v24[2] = v23;
              v24[3] = 2 * ((v30 - v41) / v43);
            }

            v33 = sub_1BC8F7264();
            OUTLINED_FUNCTION_129(v33);
            v35 = v34;
            v37 = v36;
            v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
            v39 = *(v37 + 72);
            swift_arrayInitWithCopy();
          }
        }

        v26 = *(v44 + 16);
        v25 = *(v44 + 24);
        if (v26 >= v25 >> 1)
        {
          v32 = OUTLINED_FUNCTION_37(v25);
          sub_1BC7DDCE4(v32, v26 + 1, 1);
        }

        *(v44 + 16) = v26 + 1;
        *(v44 + 8 * v26 + 32) = v24;
        v9 = v21;
      }
    }

    v6 = 0;
    v42 = *(sub_1BC8F7264() - 8);
    v7 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    while (1)
    {
      v8 = v4 >= v6;
      if (v3 > 0)
      {
        v8 = v6 >= v4;
      }

      if (v8)
      {
        break;
      }

      if (__OFADD__(v6, v3))
      {
        v9 = ((v6 + v3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v9 = v6 + v3;
      }

      if (__OFADD__(v6, v3))
      {
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_119();
      v11 = v10 - v6;
      if (v10 < v6)
      {
        goto LABEL_61;
      }

      if (v6 < 0)
      {
        goto LABEL_62;
      }

      if (v4 == v11)
      {

        v12 = v2;
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
        if (v10 != v6)
        {
          if (v11 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE8, &qword_1BC902B90);
            v40 = *(v42 + 72);
            v12 = swift_allocObject();
            v15 = _swift_stdlib_malloc_size(v12);
            if (!v40)
            {
              goto LABEL_66;
            }

            if (v15 - v7 == 0x8000000000000000 && v40 == -1)
            {
              goto LABEL_68;
            }

            v12[2] = v11;
            v12[3] = 2 * ((v15 - v7) / v40);
          }

          v17 = *(v42 + 72);
          swift_arrayInitWithCopy();
        }
      }

      v14 = *(v44 + 16);
      v13 = *(v44 + 24);
      if (v14 >= v13 >> 1)
      {
        v18 = OUTLINED_FUNCTION_37(v13);
        sub_1BC7DDCE4(v18, v14 + 1, 1);
      }

      *(v44 + 16) = v14 + 1;
      *(v44 + 8 * v14 + 32) = v12;
      v6 = v9;
      if (!--v5)
      {
        goto LABEL_30;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

void sub_1BC80FE9C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v5 = OUTLINED_FUNCTION_93(a1, a2);
  v25 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDDA4(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
LABEL_52:
    __break(1u);
    return;
  }

  if (!v5)
  {
    v8 = 0;
    goto LABEL_25;
  }

  v6 = 0;
  do
  {
    v7 = v4 >= v6;
    if (v3 > 0)
    {
      v7 = v6 >= v4;
    }

    if (v7)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (__OFADD__(v6, v3))
    {
      v8 = ((v6 + v3) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v8 = v6 + v3;
    }

    if (__OFADD__(v6, v3))
    {
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_119();
    v10 = v9 - v6;
    if (v9 < v6)
    {
      goto LABEL_49;
    }

    if (v6 < 0)
    {
      goto LABEL_50;
    }

    if (v4 == v10)
    {

      v11 = v2;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (v9 != v6)
      {
        if (v10 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F38, &unk_1BC8FC6E0);
          v11 = swift_allocObject();
          v14 = _swift_stdlib_malloc_size(v11);
          v11[2] = v10;
          v11[3] = 2 * ((v14 - 32) / 40);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F40, &unk_1BC900B00);
        swift_arrayInitWithCopy();
      }
    }

    v13 = *(v25 + 16);
    v12 = *(v25 + 24);
    if (v13 >= v12 >> 1)
    {
      v15 = OUTLINED_FUNCTION_37(v12);
      sub_1BC7DDDA4(v15, v13 + 1, 1);
    }

    *(v25 + 16) = v13 + 1;
    *(v25 + 8 * v13 + 32) = v11;
    v6 = v8;
    --v5;
  }

  while (v5);
  while (1)
  {
LABEL_25:
    v16 = v4 >= v8;
    if (v3 > 0)
    {
      v16 = v8 >= v4;
    }

    if (v16)
    {
      break;
    }

    if (__OFADD__(v8, v3))
    {
      v17 = ((v8 + v3) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v17 = v8 + v3;
    }

    if (__OFADD__(v8, v3))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_119();
    v19 = v18 - v8;
    if (v18 < v8)
    {
      goto LABEL_45;
    }

    if (v8 < 0)
    {
      goto LABEL_46;
    }

    if (v4 == v19)
    {

      v20 = v2;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
      if (v18 != v8)
      {
        if (v19 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F38, &unk_1BC8FC6E0);
          v20 = swift_allocObject();
          v23 = _swift_stdlib_malloc_size(v20);
          v20[2] = v19;
          v20[3] = 2 * ((v23 - 32) / 40);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F40, &unk_1BC900B00);
        swift_arrayInitWithCopy();
      }
    }

    v22 = *(v25 + 16);
    v21 = *(v25 + 24);
    if (v22 >= v21 >> 1)
    {
      v24 = OUTLINED_FUNCTION_37(v21);
      sub_1BC7DDDA4(v24, v22 + 1, 1);
    }

    *(v25 + 16) = v22 + 1;
    *(v25 + 8 * v22 + 32) = v20;
    v8 = v17;
  }
}

uint64_t sub_1BC8101C8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1BC82F06C(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_1BC7F2470(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC81025C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1BC8F8504();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1BC7F7898(v4, 0);

      sub_1BC82F0B8(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    v2 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v2 = a1 & 0xFFFFFFFFFFFFFF8;

LABEL_3:
  v8 = v2;
  sub_1BC82DF7C(&v8);
  return v8;
}

uint64_t sub_1BC810338()
{
  v1 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_accountInfoLock);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC82F470(v2, &v4);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

void sub_1BC8103A8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_accountInfoLock);
  os_unfair_lock_lock(v3 + 4);
  sub_1BC830540(v4);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1BC810420(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_wrappedAccountInfo);
  *(a1 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_wrappedAccountInfo) = a2;
  v3 = a2;
}

unint64_t sub_1BC81045C()
{
  v1 = *(v0 + 64);
  v2 = sub_1BC8F7BE4();
  v3 = [v1 objectForKey_];

  if (!v3)
  {
    memset(v8, 0, sizeof(v8));
    sub_1BC7C1744(v8, &unk_1EBCF5E50, &qword_1BC8FE850);
    v7 = 1;
    sub_1BC817FE8(1u);
LABEL_7:
    *(v0 + 72) = v7;
    return v7;
  }

  sub_1BC8F8474();
  swift_unknownObjectRelease();
  sub_1BC7C1744(v8, &unk_1EBCF5E50, &qword_1BC8FE850);
  v4 = sub_1BC8F7BE4();
  v5 = [v1 integerForKey_];

  result = sub_1BC7FC8C0(v5);
  if (result != 6)
  {
    if ((result & 0xFE) != 0)
    {
      v7 = result;
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC8105A4()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B268);
  v2 = sub_1BC8F7714();
  sub_1BC8F81C4();
  v3 = OUTLINED_FUNCTION_21_8();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_45();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v5);
    OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v6, v7, "Updating total and unread counts during bringup.");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_1BC8106B8;
  v9 = *(v0 + 16);

  return sub_1BC810798();
}

uint64_t sub_1BC8106B8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_1BC8107AC()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v0[16] = __swift_project_value_buffer(v1, qword_1EDC2B268);
  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_21_8();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_45();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v5);
    OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v6, v7, "Updating total and unread counts");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1BC8108D0;
  v9 = v0[15];

  return sub_1BC813D30((v0 + 12));
}

uint64_t sub_1BC8108D0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8109C8()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  v4 = *(v0[15] + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_badgeManager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD0, &unk_1BC8FC250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FE840;
  *(inited + 32) = 5;
  *(inited + 40) = v1;
  *(inited + 48) = 6;
  *(inited + 56) = v2;
  *(inited + 64) = 4;
  *(inited + 72) = v3;
  BadgeManager.notifyBadgeCounts(_:)(inited);
  swift_setDeallocating();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1BC810A90()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 128);
  v2 = *(v0 + 144);
  v3 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  v4 = OUTLINED_FUNCTION_137();
  v5 = *(v0 + 144);
  if (v4)
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_61_1();
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_125_0(5.8381e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v8);
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v9, v10, v11, v12, v13, v14);
    sub_1BC7C1744(v6, &unk_1EBCF5DB0, &unk_1BC900410);
    v15 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v15);
    v16 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v16);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1BC810BA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1BC8F7FC4();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_41_0();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v0;

  OUTLINED_FUNCTION_85();
  sub_1BC8333D4();
}

uint64_t sub_1BC810C70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC810D00;

  return sub_1BC810F5C();
}

uint64_t sub_1BC810D00()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v12();
  }
}

uint64_t sub_1BC810E14()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B268);
  v3 = v1;
  v4 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  v5 = OUTLINED_FUNCTION_137();
  v6 = *(v0 + 24);
  if (v5)
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_61_1();
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_125_0(5.8381e-34);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v9);
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    sub_1BC7C1744(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    v16 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v16);
    v17 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v17);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1BC810F5C()
{
  OUTLINED_FUNCTION_5();
  v1[15] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v1[16] = v2;
  OUTLINED_FUNCTION_26(v2);
  v1[17] = v3;
  v5 = *(v4 + 64);
  v1[18] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC811010()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[15];
  OUTLINED_FUNCTION_21_4();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CD0];
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_queue;
  v0[19] = v2;
  v0[20] = v3;
  OUTLINED_FUNCTION_34();
  v4 = swift_allocObject();
  v0[21] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  v5 = OUTLINED_FUNCTION_65_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC8110C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v14 = v12[20];
  v13 = v12[21];
  v16 = v12[17];
  v15 = v12[18];
  v18 = v12[15];
  v17 = v12[16];
  v12[2] = v19;
  v20 = OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &unk_1BC902BF8;
  v21[4] = v13;
  OUTLINED_FUNCTION_34();
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1BC902C00;
  *(v22 + 24) = v21;
  v12[13] = &unk_1BC902C08;
  v12[14] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_56_1();
  v23 = *(v16 + 8);
  v24 = OUTLINED_FUNCTION_30();
  v25(v24);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1BC8111F0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    v5 = *(v1 + 168);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC811300()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[19];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    v2 = v0[15];
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = v0[19];
    if (Strong)
    {

      v6 = sub_1BC899AAC(v5);
      sub_1BC87B8F0(v6);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v7 = v0[19];
  }

  v8 = v0[18];

  OUTLINED_FUNCTION_11();

  return v9();
}

uint64_t sub_1BC8113D8()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];

  OUTLINED_FUNCTION_27();
  v5 = v0[22];

  return v4();
}

uint64_t sub_1BC811448()
{
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B268);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  v4 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_45();
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BC7A3000, v2, v3, "Setting up listeners for CoreData change notifications", v6, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_99();
  v8 = *(v0 + 16);
  v7 = (v0 + 16);

  v9 = OUTLINED_FUNCTION_19_9();
  v8(v9);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_99();
  v10 = v7[5];
  v7 += 5;

  v11 = OUTLINED_FUNCTION_19_9();
  v10(v11);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_99();
  v12 = v7[11];
  v7 += 11;

  v13 = OUTLINED_FUNCTION_19_9();
  v12(v13);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_99();
  v14 = v7[8];

  v15 = OUTLINED_FUNCTION_19_9();
  v14(v15);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_99();
  v16 = v7[22];

  v17 = OUTLINED_FUNCTION_19_9();
  v16(v17);
  return swift_endAccess();
}

void sub_1BC811634(uint64_t a1, void *a2)
{
  v3 = sub_1BC8F6CF4();
  [a2 storeMergedChanges_];
}

void sub_1BC811690(uint64_t a1, void *a2)
{
  v3 = sub_1BC8F6CF4();
  [a2 storeDidSave_];
}

void sub_1BC8116EC(uint64_t a1, void *a2)
{
  v3 = sub_1BC8F6CF4();
  [a2 didResetSync_];
}

void sub_1BC811748(uint64_t a1, void *a2)
{
  v3 = sub_1BC8F6CF4();
  [a2 willResetSync_];
}

uint64_t sub_1BC8117A4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1BC8F6D24();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v16 = v15 - v14;
  if (qword_1EDC1E1D8 != -1)
  {
    OUTLINED_FUNCTION_66();
  }

  v17 = sub_1BC8F7734();
  __swift_project_value_buffer(v17, qword_1EDC2B280);
  (*(v11 + 16))(v16, a1, v8);
  v18 = sub_1BC8F7714();
  v19 = sub_1BC8F8204();
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_9();
    v38 = v2;
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v21 = swift_slowAlloc();
    v39 = v21;
    *v20 = 136446210;
    sub_1BC7AAAD0(&unk_1EDC1FF10, MEMORY[0x1E6968160]);
    v22 = sub_1BC8F8A54();
    v24 = v23;
    v25 = *(v11 + 8);
    v26 = OUTLINED_FUNCTION_79();
    v27(v26);
    v28 = sub_1BC7A9A4C(v22, v24, &v39);

    *(v20 + 4) = v28;
    _os_log_impl(&dword_1BC7A3000, v18, v19, "CKAccountChanged notification received: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v2 = v38;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v29 = *(v11 + 8);
    v30 = OUTLINED_FUNCTION_79();
    v31(v30);
  }

  sub_1BC8F7FC4();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  OUTLINED_FUNCTION_41_0();
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v2;

  OUTLINED_FUNCTION_85();
  sub_1BC8333D4();
}

uint64_t sub_1BC811A88()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  sub_1BC830350(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_queue, type metadata accessor for AsyncSerialQueue);
  sub_1BC7C1744(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_voicemailController, &qword_1EBCF58F8, &qword_1BC9034D0);

  v1 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_accountInfoLock);

  v2 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_badgeManager);

  v3 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache);

  sub_1BC7CF604(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_delegate);
  swift_weakDestroy();
  return v0;
}

uint64_t sub_1BC811B74()
{
  sub_1BC811A88();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for CoreDataMessageStore()
{
  result = qword_1EDC1FD68;
  if (!qword_1EDC1FD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC811C20()
{
  sub_1BC811D20();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1BC811D20()
{
  if (!qword_1EDC20678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBCF4E90, &qword_1BC8FC3D0);
    v0 = sub_1BC8F7FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC20678);
    }
  }
}

uint64_t sub_1BC811D84()
{
  OUTLINED_FUNCTION_5();
  v1[12] = v2;
  v1[13] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v1[14] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC811E38()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[12];
  v2 = v0[13];
  v0[17] = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_queue;
  OUTLINED_FUNCTION_34();
  v3 = swift_allocObject();
  v0[18] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = OUTLINED_FUNCTION_65_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC811ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v14 = v12[17];
  v13 = v12[18];
  v16 = v12[15];
  v15 = v12[16];
  v18 = v12[13];
  v17 = v12[14];
  v12[2] = v19;
  v20 = OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &unk_1BC902CD0;
  v21[4] = v13;
  OUTLINED_FUNCTION_34();
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1BC902CD8;
  *(v22 + 24) = v21;
  v12[10] = &unk_1BC902CE0;
  v12[11] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_56_1();
  v23 = *(v16 + 8);
  v24 = OUTLINED_FUNCTION_30();
  v25(v24);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1BC811FF8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_13_0();
  v2 = v1;
  OUTLINED_FUNCTION_11_1();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;
  v6 = *(v5 + 48);
  v2[19] = v6;
  if (v6)
  {
    swift_willThrow();
    v7 = OUTLINED_FUNCTION_59_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = v2[18];

    v11 = swift_task_alloc();
    v2[20] = v11;
    *v11 = v4;
    OUTLINED_FUNCTION_89(v11);

    return sub_1BC810798();
  }
}

uint64_t sub_1BC812154()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 160);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_11();

  return v6();
}

uint64_t sub_1BC812250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1BC812270, 0, 0);
}

uint64_t sub_1BC812270()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 16);
  sub_1BC8122E4(*(v0 + 24));
  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_1BC8122E4(uint64_t a1)
{
  v8[3] = a1;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 88, v4);
  (*(v5 + 128))(sub_1BC82FD28, v8, MEMORY[0x1E69E7CA8] + 8, v4, v5);
  result = swift_endAccess();
  if (!v2)
  {
    result = sub_1BC7C0454(a1);
    if (result >= 2)
    {
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_86();
      v7();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1BC81240C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8124DC, 0, 0);
}

uint64_t sub_1BC8124DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v15 = v12[20];
  v14 = v12[21];
  v16 = v12[18];
  v17 = v12[19];
  v19 = v12[16];
  v18 = v12[17];
  v12[2] = v20;
  OUTLINED_FUNCTION_78_1((v12 + 10));
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_29_4(v21);
  OUTLINED_FUNCTION_34();
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1BC902A30;
  *(v22 + 24) = v13;
  v12[13] = &unk_1BC902A38;
  v12[14] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_64_0();
  v23 = OUTLINED_FUNCTION_28_5();
  v24(v23);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

void sub_1BC8125EC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v1;
  *v3 = *v0;
  v4 = *(v2 + 168);
  if (*(v2 + 48))
  {
    v5 = *(v2 + 48);
    swift_willThrow();
  }

  else
  {
    v6 = *(v1 + 120);
    v7 = *(v1 + 96);
    *v6 = *(v1 + 80);
    *(v6 + 16) = v7;
  }

  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_40_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BC812710(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8127E0, 0, 0);
}

uint64_t sub_1BC8127E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v15 = v12[17];
  v14 = v12[18];
  v16 = v12[15];
  v17 = v12[16];
  v19 = v12[13];
  v18 = v12[14];
  v12[2] = v20;
  OUTLINED_FUNCTION_78_1((v12 + 12));
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_29_4(v21);
  OUTLINED_FUNCTION_34();
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1BC902C30;
  *(v22 + 24) = v13;
  v12[10] = &unk_1BC902C38;
  v12[11] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_64_0();
  v23 = OUTLINED_FUNCTION_28_5();
  v24(v23);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1BC8128F0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8129C0, 0, 0);
}

uint64_t sub_1BC8129C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v15 = v12[16];
  v14 = v12[17];
  v16 = v12[14];
  v17 = v12[15];
  v19 = v12[12];
  v18 = v12[13];
  v12[2] = v20;
  OUTLINED_FUNCTION_78_1((v12 + 18));
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_29_4(v21);
  OUTLINED_FUNCTION_34();
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1BC902CA0;
  *(v22 + 24) = v13;
  v12[10] = &unk_1BC902CA8;
  v12[11] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_64_0();
  v23 = OUTLINED_FUNCTION_28_5();
  v24(v23);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

void sub_1BC812AD0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v1;
  v4 = *v0;
  *v3 = *v0;
  v5 = *(v2 + 136);
  if (*(v2 + 48))
  {
    v6 = *(v2 + 48);
    swift_willThrow();

    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_40_4();

    __asm { BRAA            X1, X16 }
  }

  v9 = *(v1 + 144);
  v10 = *(v1 + 148);
  v11 = *(v2 + 136);

  v12 = *(v4 + 8);
  OUTLINED_FUNCTION_40_4();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1BC812C34(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC812D04, 0, 0);
}

uint64_t sub_1BC812D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v15 = v12[17];
  v14 = v12[18];
  v16 = v12[15];
  v17 = v12[16];
  v19 = v12[13];
  v18 = v12[14];
  v12[2] = v20;
  OUTLINED_FUNCTION_78_1((v12 + 12));
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_29_4(v21);
  OUTLINED_FUNCTION_34();
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1BC902B78;
  *(v22 + 24) = v13;
  v12[10] = &unk_1BC902B80;
  v12[11] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_64_0();
  v23 = OUTLINED_FUNCTION_28_5();
  v24(v23);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1BC812E14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v63 - v9;
  KeyPath = swift_getKeyPath();
  v11 = sub_1BC8134DC(KeyPath, a3);

  v75 = MEMORY[0x1E69E7CC0];
  v12 = sub_1BC7C0454(a1);
  v14 = &unk_1EDC1E000;
  if (v12)
  {
    v15 = v12;
    if (v12 < 1)
    {
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_30;
    }

    v64 = v4;
    v16 = 0;
    v71 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache);
    v69 = v11;
    v70 = a1 & 0xC000000000000001;
    v11 = MEMORY[0x1E69E7CC0];
    *&v13 = 138543362;
    v65 = v13;
    v67 = a1;
    do
    {
      if (v70)
      {
        v17 = MEMORY[0x1BFB29A00](v16, a1);
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      objc_allocWithZone(type metadata accessor for Message());
      v19 = v18;
      v20 = v71;

      v74 = 1;
      sub_1BC86A9C0(v19, 0x100000000, v20, v21, v22, v23, v24, v25, v63, v64, v65, *(&v65 + 1), v66, v67, v68, v69, v70, v71, v72, v73);
      if (v26)
      {
        v27 = v26;
        v28 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
        swift_beginAccess();
        if (*&v27[v28] != 2)
        {
          v29 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
          swift_beginAccess();
          v30 = sub_1BC8F7264();
          v31 = v68;
          (*(*(v30 - 8) + 16))(v68, &v27[v29], v30);
          __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
          v32 = v69;
          if (*(v69 + 16) && (v33 = sub_1BC83C9A8(v31), (v34 & 1) != 0))
          {
            v35 = *(*(v32 + 56) + 8 * v33);
            sub_1BC7C1744(v31, &unk_1EBCF5D70, &qword_1BC8FC740);
            v36 = [v35 voicemailID];

            v37 = &v27[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
            swift_beginAccess();
            *v37 = v36;
            v37[4] = 0;
          }

          else
          {
            sub_1BC7C1744(v31, &unk_1EBCF5D70, &qword_1BC8FC740);
            if (v14[58] != -1)
            {
              swift_once();
            }

            v47 = sub_1BC8F7734();
            __swift_project_value_buffer(v47, qword_1EDC2B268);
            v48 = v27;
            v49 = sub_1BC8F7714();
            v50 = sub_1BC8F81E4();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              *v51 = v65;
              *(v51 + 4) = v48;
              *v52 = v27;
              v53 = v48;
              _os_log_impl(&dword_1BC7A3000, v49, v50, "Couldn't find voicemailID for message: %{public}@", v51, 0xCu);
              sub_1BC7C1744(v52, &unk_1EBCF5DB0, &unk_1BC900410);
              v54 = v52;
              v14 = &unk_1EDC1E000;
              MEMORY[0x1BFB2AA50](v54, -1, -1);
              v55 = v51;
              a1 = v67;
              MEMORY[0x1BFB2AA50](v55, -1, -1);
            }
          }
        }

        v56 = v27;
        MEMORY[0x1BFB29230]();
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();

        v11 = v75;
      }

      else
      {
        if (v14[58] != -1)
        {
          swift_once();
        }

        v38 = sub_1BC8F7734();
        __swift_project_value_buffer(v38, qword_1EDC2B268);
        v39 = v19;
        v40 = sub_1BC8F7714();
        v41 = sub_1BC8F81F4();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v42 = v65;
          *(v42 + 4) = v39;
          *v43 = v39;
          v44 = v39;
          _os_log_impl(&dword_1BC7A3000, v40, v41, "Failed to convert stored message to message! %{public}@", v42, 0xCu);
          sub_1BC7C1744(v43, &unk_1EBCF5DB0, &unk_1BC900410);
          v45 = v43;
          a1 = v67;
          MEMORY[0x1BFB2AA50](v45, -1, -1);
          v46 = v42;
          v14 = &unk_1EDC1E000;
          MEMORY[0x1BFB2AA50](v46, -1, -1);
        }

        else
        {
        }
      }

      ++v16;
    }

    while (v15 != v16);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v57 = sub_1BC7C0454(a1);
  if (v57 == sub_1BC7C0454(v11))
  {
    return v11;
  }

  if (v14[58] != -1)
  {
    goto LABEL_35;
  }

LABEL_30:
  v58 = sub_1BC8F7734();
  __swift_project_value_buffer(v58, qword_1EDC2B268);

  v59 = sub_1BC8F7714();
  v60 = sub_1BC8F81F4();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134349312;
    *(v61 + 4) = sub_1BC7C0454(a1);

    *(v61 + 12) = 2050;
    *(v61 + 14) = sub_1BC7C0454(v11);

    _os_log_impl(&dword_1BC7A3000, v59, v60, "StoredMessage count (%{public}ld is not equal to Message count (%{public}ld!", v61, 0x16u);
    MEMORY[0x1BFB2AA50](v61, -1, -1);
  }

  else
  {
  }

  return v11;
}

uint64_t sub_1BC8134DC(uint64_t a1, unint64_t a2)
{
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v33 = *(v3 - 1);
  v4 = *(v33 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  if (a2 >> 62)
  {
LABEL_24:
    v10 = sub_1BC8F8504();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v31 = v3;
      v11 = 0;
      v36 = a2 & 0xC000000000000001;
      v3 = MEMORY[0x1E69E7CC8];
      v32 = a2 & 0xFFFFFFFFFFFFFF8;
      v34 = v10;
      v35 = a2;
      while (1)
      {
        if (v36)
        {
          v12 = MEMORY[0x1BFB29A00](v11, a2);
        }

        else
        {
          if (v11 >= *(v32 + 16))
          {
            goto LABEL_23;
          }

          v12 = *(a2 + 8 * v11 + 32);
        }

        v40 = v12;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v13 = v12;
        v38 = v11 + 1;
        swift_getAtKeyPath();
        v14 = v9;
        sub_1BC830400();
        swift_isUniquelyReferenced_nonNull_native();
        v39 = v3;
        v15 = v7;
        v16 = sub_1BC83C9A8(v7);
        v18 = v3[2];
        v19 = (v17 & 1) == 0;
        v7 = (v18 + v19);
        if (__OFADD__(v18, v19))
        {
          goto LABEL_21;
        }

        v20 = v16;
        v21 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5920, &qword_1BC902B40);
        if (sub_1BC8F8734())
        {
          v7 = v15;
          v22 = sub_1BC83C9A8(v15);
          if ((v21 & 1) != (v23 & 1))
          {
            result = sub_1BC8F8B44();
            __break(1u);
            return result;
          }

          v20 = v22;
        }

        else
        {
          v7 = v15;
        }

        v3 = v39;
        if (v21)
        {
          v24 = v39[7];
          v25 = *(v24 + 8 * v20);
          *(v24 + 8 * v20) = v13;

          sub_1BC7C1744(v7, &unk_1EBCF5D70, &qword_1BC8FC740);
          v9 = v14;
          sub_1BC7C1744(v14, &unk_1EBCF5D70, &qword_1BC8FC740);
        }

        else
        {
          v39[(v20 >> 6) + 8] |= 1 << v20;
          v26 = v3[6] + *(v33 + 72) * v20;
          a2 = &qword_1BC8FC740;
          sub_1BC830400();
          *(v3[7] + 8 * v20) = v13;
          sub_1BC7C1744(v7, &unk_1EBCF5D70, &qword_1BC8FC740);
          v9 = v14;
          sub_1BC7C1744(v14, &unk_1EBCF5D70, &qword_1BC8FC740);
          v27 = v3[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_22;
          }

          v3[2] = v29;
        }

        ++v11;
        a2 = v35;
        if (v38 == v34)
        {
          return v3;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1BC813838()
{
  OUTLINED_FUNCTION_5();
  v2 = v0[6];
  v1 = v0[7];

  OUTLINED_FUNCTION_27();
  v4 = v0[9];

  return v3();
}

id sub_1BC81389C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v40 - v11;
  v13 = sub_1BC8F7264();
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + *(type metadata accessor for MessageStoreFetchRequest() + 20));
  if (v17 >> 60 != 10)
  {
    v50 = v17;
    v23 = sub_1BC7BC08C(&v50, a3);
    type metadata accessor for FTStoredMessage();
    v18 = sub_1BC8F8304();

    return v18;
  }

  v42 = a3;
  v43 = v16;
  type metadata accessor for FTLocalMessageProperties();
  v18 = static FTLocalMessageProperties.fetchRequest()();
  [v18 setFetchBatchSize_];
  v50 = v17;
  v19 = sub_1BC7E61F8();
  [v18 setPredicate_];

  v20 = v49;
  v21 = sub_1BC8F8314();
  v22 = v20;
  if (v20)
  {

    return v18;
  }

  v25 = v21;
  v49 = v18;
  v40[0] = 0;
  v40[1] = a1;
  v40[2] = a2;
  result = sub_1BC7C0454(v21);
  v47 = v25 & 0xC000000000000001;
  v48 = result;
  v46 = v25 & 0xFFFFFFFFFFFFFF8;
  v44 = MEMORY[0x1E69E7CC0];
  v41 = (v45 + 32);
  while (1)
  {
    v26 = v49;
    if (v48 == v22)
    {
      v38 = swift_allocObject();

      *(v38 + 16) = v44;
      v50 = v38 | 0x1000000000000000;
      v39 = sub_1BC7BC08C(&v50, v42);
      type metadata accessor for FTStoredMessage();
      v18 = sub_1BC8F8304();

      return v18;
    }

    if (v47)
    {
      result = MEMORY[0x1BFB29A00](v22, v25);
    }

    else
    {
      if (v22 >= *(v46 + 16))
      {
        goto LABEL_25;
      }

      result = *(v25 + 8 * v22 + 32);
    }

    v27 = result;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    v28 = [result recordUUID];
    if (v28)
    {
      v29 = v28;
      sub_1BC8F7244();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    __swift_storeEnumTagSinglePayload(v10, v30, 1, v13);
    sub_1BC830458();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      result = sub_1BC7C1744(v12, &unk_1EBCF5D70, &qword_1BC8FC740);
      ++v22;
    }

    else
    {
      v31 = *v41;
      (*v41)(v43, v12, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = *(v44 + 16);
        sub_1BC7F7144();
        v44 = v36;
      }

      v32 = *(v44 + 16);
      if (v32 >= *(v44 + 24) >> 1)
      {
        sub_1BC7F7144();
        v44 = v37;
      }

      v34 = v44;
      v33 = v45;
      *(v44 + 16) = v32 + 1;
      result = v31((v34 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32), v43, v13);
      ++v22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1BC813D30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC813D44()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[3];
  OUTLINED_FUNCTION_74_0();
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1BC813E10;
  v3 = v0[2];
  v4 = v0[3];

  return v6(v3, &unk_1BC902A18, v4);
}

uint64_t sub_1BC813E10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    OUTLINED_FUNCTION_27();

    return v13();
  }
}

uint64_t sub_1BC813F2C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t sub_1BC813F88(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BC813FA8, 0, 0);
}

uint64_t sub_1BC813FA8()
{
  v1 = *(v0 + 48);
  v26 = *(v0 + 40);
  OUTLINED_FUNCTION_21_4();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC8FE840;
  v4 = OUTLINED_FUNCTION_109();
  *(v4 + 16) = 0;
  *(v3 + 32) = v4 | 0x7000000000000000;
  OUTLINED_FUNCTION_21_4();
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1F3B366E8;
  *(v3 + 40) = v5 | 0x4000000000000000;
  OUTLINED_FUNCTION_21_4();
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_1F3B36710;
  *(v3 + 48) = v6 | 0x8000000000000000;
  *(v2 + 16) = v3;
  v25 = v2 | 0xC000000000000000;
  OUTLINED_FUNCTION_21_4();
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC8FC240;
  v9 = OUTLINED_FUNCTION_109();
  *(v9 + 16) = 0;
  *(v8 + 32) = v9 | 0x7000000000000000;
  OUTLINED_FUNCTION_21_4();
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_1F3B36738;
  *(v8 + 40) = v10 | 0x4000000000000000;
  OUTLINED_FUNCTION_21_4();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_21_4();
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_1F3B36760;
  *(v11 + 16) = v12 | 0x6000000000000000;
  *(v8 + 48) = v11 | 0xB000000000000000;
  OUTLINED_FUNCTION_21_4();
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_1F3B36788;
  *(v8 + 56) = v13 | 0x8000000000000000;
  *(v7 + 16) = v8;
  OUTLINED_FUNCTION_21_4();
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BC8FC240;
  v16 = OUTLINED_FUNCTION_109();
  *(v16 + 16) = 0;
  *(v15 + 32) = v16 | 0x7000000000000000;
  OUTLINED_FUNCTION_21_4();
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_1F3B367B0;
  *(v15 + 40) = v17 | 0x4000000000000000;
  OUTLINED_FUNCTION_21_4();
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_1F3B367D8;
  *(v15 + 48) = v18 | 0x6000000000000000;
  OUTLINED_FUNCTION_21_4();
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_1F3B36800;
  *(v15 + 56) = v19 | 0x8000000000000000;
  *(v14 + 16) = v15;
  v20 = swift_task_alloc();
  v20[2] = v25;
  v20[3] = v7 | 0xC000000000000000;
  v20[4] = v14 | 0xC000000000000000;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v21 = *(v1 + 112);
  v22 = *(v1 + 120);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 88, v21);
  (*(v22 + 128))(sub_1BC82DF40, v20, &type metadata for MessageCounts, v21, v22);
  swift_endAccess();

  OUTLINED_FUNCTION_27();

  return v23();
}

void sub_1BC81431C(uint64_t *a1@<X8>)
{
  v3 = sub_1BC7BC4A4();
  type metadata accessor for FTStoredMessage();
  v4 = sub_1BC8F8304();

  if (!v1)
  {
    v5 = sub_1BC7BC4A4();
    v6 = sub_1BC8F8304();

    v7 = sub_1BC7BC4A4();
    v8 = sub_1BC8F8304();

    *a1 = v6;
    a1[1] = v8;
    a1[2] = v4;
  }
}

uint64_t sub_1BC814418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1BC814438, 0, 0);
}

uint64_t sub_1BC814438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_71();
  v11 = *(v10 + 40);
  v12 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_deduplicationInProgress;
  if (*(v11 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_deduplicationInProgress))
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v13 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v13, qword_1EDC2B268);
    v14 = sub_1BC8F7714();
    sub_1BC8F8204();
    v15 = OUTLINED_FUNCTION_21_8();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_45();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v17);
      OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v18, v19, "Not de-duping because we already have a de-duplication run in progress!");
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }
  }

  else
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v20 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v20, qword_1EDC2B268);
    v21 = sub_1BC8F7714();
    sub_1BC8F8204();
    v22 = OUTLINED_FUNCTION_21_8();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_45();
      v24 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v24);
      OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v25, v26, "Removing duplicates");
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v28 = *(v10 + 40);
    v27 = *(v10 + 48);

    v29 = v27 + 16;
    *(v11 + v12) = 1;
    v30 = swift_task_alloc();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_6();
    v31();
    swift_endAccess();

    if (v28)
    {
      OUTLINED_FUNCTION_27();
      goto LABEL_15;
    }

    *(v11 + v12) = 0;
  }

  OUTLINED_FUNCTION_11();
LABEL_15:
  OUTLINED_FUNCTION_111();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t sub_1BC814628(uint64_t a1, uint64_t *a2)
{
  result = sub_1BC814690();
  if (!v2)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *a2;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1BC814690()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_1BC8F82F4();
  if (v0)
  {
  }

  return v2;
}

BOOL sub_1BC814718(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_1BC8F8504();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_1BC8147B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5200, &qword_1BC8FE298);
  result = sub_1BC8F82F4();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BC81482C(void *a1, unint64_t a2, int a3)
{
  v4 = v3;
  v80 = a3;
  v85 = a1;
  v104[3] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v95 = (v79 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v79 - v13;
  v99 = sub_1BC8F7264();
  v84 = *(v99 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v91 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E7CD0];
  if (!*(a2 + 16))
  {
LABEL_63:
    v77 = *MEMORY[0x1E69E9840];
    return v17;
  }

  v94 = v10;
  if (qword_1EDC1E1D0 != -1)
  {
LABEL_72:
    swift_once();
  }

  v18 = sub_1BC8F7734();
  v19 = __swift_project_value_buffer(v18, qword_1EDC2B268);

  v79[1] = v19;
  v20 = sub_1BC8F7714();
  v21 = sub_1BC8F8204();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134349056;
    *(v22 + 4) = *(a2 + 16);

    _os_log_impl(&dword_1BC7A3000, v20, v21, "Found %{public}ld duplicates", v22, 0xCu);
    MEMORY[0x1BFB2AA50](v22, -1, -1);
  }

  else
  {
  }

  v102 = MEMORY[0x1E69E7CC0];
  if (!v80 || v80 == 2)
  {
    v23 = v4;
    v24 = sub_1BC80E7B0(a2);
    goto LABEL_11;
  }

  if (v80 == 1)
  {
    v23 = v4;
    v24 = sub_1BC80E428(a2);
LABEL_11:
    v25 = v24;
    v26 = v23;
    a2 = 0;
    v101 = v17;
    v82 = v24 + 32;
    v88 = (v84 + 32);
    v83 = *(v24 + 16);
    v81 = v24;
    while (a2 != v83)
    {
      if (a2 >= *(v25 + 16))
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v104[0] = *(v82 + 8 * a2);
      v90 = v104[0];
      sub_1BC7A5AB4(v104[0]);
      v27 = sub_1BC7BC4A4();
      type metadata accessor for FTStoredMessage();
      v89 = v27;
      v28 = sub_1BC8F8314();
      v4 = v26;
      if (v26)
      {

        sub_1BC7B0EFC(v90);

        goto LABEL_63;
      }

      v29 = sub_1BC81025C(v28);

      if (!sub_1BC7C0454(v29))
      {
        goto LABEL_69;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v87 = 0;
      v92 = a2;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v29 & 0x8000000000000000) != 0 || (v29 & 0x4000000000000000) != 0)
      {
        v29 = sub_1BC82F874(v29);
      }

      a2 = v29 & 0xFFFFFFFFFFFFFF8;
      v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_70;
      }

      ++v92;
      v32 = v31 - 1;
      v33 = *((v29 & 0xFFFFFFFFFFFFFF8) + 8 * v32 + 0x20);
      *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) = v32;
      v86 = v33;
      sub_1BC8507FC();
      v4 = sub_1BC7C0454(v29);
      v34 = 0;
      v100 = v29 & 0xC000000000000001;
      v93 = MEMORY[0x1E69E7CC0];
      v96 = v29 & 0xFFFFFFFFFFFFFF8;
      v97 = v29;
      v98 = v4;
      while (v4 != v34)
      {
        if (v100)
        {
          v35 = MEMORY[0x1BFB29A00](v34, v29);
        }

        else
        {
          if (v34 >= *(a2 + 16))
          {
            goto LABEL_65;
          }

          v35 = *(v29 + 8 * v34 + 32);
        }

        v4 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v36 = v14;
        v37 = v35;
        v38 = [v37 recordUUID];
        if (v38)
        {
          v39 = v38;
          v40 = v94;
          sub_1BC8F7244();

          v41 = 0;
        }

        else
        {
          v41 = 1;
          v40 = v94;
        }

        v42 = v99;
        __swift_storeEnumTagSinglePayload(v40, v41, 1, v99);
        v17 = v95;
        sub_1BC830458();
        v14 = v36;
        sub_1BC830458();

        if (__swift_getEnumTagSinglePayload(v36, 1, v42) == 1)
        {
          sub_1BC7C1744(v36, &unk_1EBCF5D70, &qword_1BC8FC740);
          ++v34;
          a2 = v96;
          v29 = v97;
          v4 = v98;
        }

        else
        {
          v17 = *v88;
          (*v88)(v91, v36, v99);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a2 = v96;
          v29 = v97;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v46 = *(v93 + 16);
            sub_1BC7F7144();
            v93 = v47;
          }

          v44 = *(v93 + 16);
          if (v44 >= *(v93 + 24) >> 1)
          {
            sub_1BC7F7144();
            v93 = v48;
          }

          v45 = v93;
          *(v93 + 16) = v44 + 1;
          v17((v45 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v44), v91, v99);
          ++v34;
          v4 = v98;
        }
      }

      sub_1BC8152FC(v93);
      v49 = 0;
      v96 = MEMORY[0x1E69E7CC0];
      while (v4 != v49)
      {
        if (v100)
        {
          v50 = MEMORY[0x1BFB29A00](v49, v29);
        }

        else
        {
          if (v49 >= *(a2 + 16))
          {
            goto LABEL_67;
          }

          v50 = *(v29 + 8 * v49 + 32);
        }

        v51 = v50;
        v17 = (v49 + 1);
        if (__OFADD__(v49, 1))
        {
          goto LABEL_66;
        }

        sub_1BC850EE8();

        v52 = v104[0];
        if ((~v104[0] & 0xF000000000000007) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = *(v96 + 16);
            sub_1BC7F720C();
            v96 = v56;
          }

          v53 = *(v96 + 16);
          if (v53 >= *(v96 + 24) >> 1)
          {
            sub_1BC7F720C();
            v96 = v57;
          }

          v54 = v96;
          *(v96 + 16) = v53 + 1;
          *(v54 + 8 * v53 + 32) = v52;
          ++v49;
          v4 = v98;
        }

        else
        {
          sub_1BC82F8D8(v104[0]);
          ++v49;
        }
      }

      sub_1BC7F3440(v96);

      sub_1BC7B0EFC(v90);
      v26 = v87;
      v25 = v81;
      a2 = v92;
    }

    v58 = sub_1BC8F7714();
    v59 = sub_1BC8F8204();
    v60 = os_log_type_enabled(v58, v59);
    v87 = v26;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v104[0] = v62;
      *v61 = 134349570;
      swift_beginAccess();
      *(v61 + 4) = v102[2];
      *(v61 + 12) = 514;
      *(v61 + 14) = v80;
      *(v61 + 16) = 2082;

      v64 = MEMORY[0x1BFB29280](v63, &type metadata for MessageStoreQuery);
      v14 = v65;

      v66 = sub_1BC7A9A4C(v64, v14, v104);

      *(v61 + 18) = v66;
      _os_log_impl(&dword_1BC7A3000, v58, v59, "Deleting %{public}ld duplicate records with messageType %{public}hd with query: %{public}s", v61, 0x1Au);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x1BFB2AA50](v62, -1, -1);
      MEMORY[0x1BFB2AA50](v61, -1, -1);
    }

    swift_beginAccess();
    v67 = v102;

    sub_1BC80F11C(100, v67);
    v17 = v68;
    v100 = v67;

    v69 = 0;
    a2 = *(v17 + 2);
    v4 = &unk_1F3B39F90;
    while (1)
    {
      if (a2 == v69)
      {

        v17 = v101;
        goto LABEL_63;
      }

      if (v69 >= *(v17 + 2))
      {
        goto LABEL_71;
      }

      v70 = *(v17 + v69 + 4);
      v71 = swift_allocObject();
      *(v71 + 16) = v70;
      v103 = (v71 | 0xD000000000000000);

      v72 = sub_1BC7BC4A4();
      v73 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
      v103 = 0;
      v74 = [v85 executeRequest:v73 error:&v103];
      if (!v74)
      {
        break;
      }

      v14 = v74;
      ++v69;
      v75 = v103;
    }

    v76 = v103;

    sub_1BC8F6EA4();

    swift_willThrow();

    goto LABEL_63;
  }

  LOWORD(v104[0]) = v80;
  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

uint64_t sub_1BC8152FC(uint64_t a1)
{
  v2 = sub_1BC8F7264();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v18[1] = a1;
    v15 = a1 + v14;
    v16 = *(v11 + 56);
    do
    {
      v12(v7, v15, v2);
      sub_1BC8AE558();
      (*(v11 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1BC815488(uint64_t a1)
{
  v2 = sub_1BC8F7264();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v24 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_1BC8AE558();
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC815698(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 16);
  for (i = (a1 + 32); v5; --v5)
  {
    v7 = *i;
    v8 = sub_1BC8147B0();
    if (v3)
    {
      break;
    }

    v9 = v8;
    if (*(v8 + 16))
    {
      if (qword_1EDC1E1D0 != -1)
      {
        swift_once();
      }

      v10 = sub_1BC8F7734();
      __swift_project_value_buffer(v10, qword_1EDC2B268);

      v11 = sub_1BC8F7714();
      v12 = sub_1BC8F8204();

      v21 = v12;
      if (os_log_type_enabled(v11, v12))
      {
        buf = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22 = v20;
        *buf = 136446210;
        sub_1BC8F7264();
        sub_1BC7AAAD0(&unk_1EDC20600, MEMORY[0x1E69695A8]);
        v13 = sub_1BC8F8104();
        v15 = a3;
        v16 = sub_1BC7A9A4C(v13, v14, &v22);

        *(buf + 4) = v16;
        a3 = v15;
        _os_log_impl(&dword_1BC7A3000, v11, v21, "Found duplicates %{public}s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1BFB2AA50](v20, -1, -1);
        MEMORY[0x1BFB2AA50](buf, -1, -1);
      }

      v17 = sub_1BC81482C(a3, v9, v7);

      sub_1BC815488(v17);
    }

    else
    {
    }

    ++i;
  }
}

void sub_1BC815934(unsigned __int16 a1@<W0>, void (**a2)(char *, uint64_t)@<X1>, void *a3@<X8>)
{
  v63 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v48 - v7;
  v9 = sub_1BC8F7264();
  v62 = *(v9 - 8);
  v10 = v62[8];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v48 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v48 - v17;
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5960, &qword_1BC902C20);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BC8FC230;
  *(v20 + 32) = a1;
  *(v19 + 16) = v20;
  v66[0] = v19 | 0x6000000000000000;
  v21 = sub_1BC7BC4A4();

  type metadata accessor for FTStoredMessage();
  v22 = v64;
  v23 = sub_1BC8F8314();
  v48[1] = v22;
  if (v22)
  {
  }

  else
  {
    v24 = v23;
    v60 = v8;
    v65 = v18;
    v54 = v13;
    v25 = sub_1BC80BF48(a1);
    v68 = MEMORY[0x1E69E7CD0];
    v67 = MEMORY[0x1E69E7CD0];
    v26 = v24;
    v59 = sub_1BC7C0454(v24);
    if (v59)
    {
      v27 = 0;
      v58 = v26 & 0xC000000000000001;
      v50 = v26 & 0xFFFFFFFFFFFFFF8;
      v49 = v26 + 32;
      v51 = (v62 + 4);
      v52 = v25;
      v63 = (v62 + 1);
      v64 = (v62 + 2);
      v56 = v26;
      v57 = a3;
      v53 = v21;
      while (1)
      {
        if (v58)
        {
          v28 = MEMORY[0x1BFB29A00](v27, v26);
        }

        else
        {
          if (v27 >= *(v50 + 16))
          {
            goto LABEL_25;
          }

          v28 = *(v49 + 8 * v27);
        }

        v29 = __OFADD__(v27, 1);
        v30 = v27 + 1;
        if (v29)
        {
          break;
        }

        v61 = v30;
        v66[4] = v28;
        v31 = v28;

        v32 = v25;
        v33 = swift_readAtKeyPath();
        v34 = v60;
        sub_1BC830400();
        v33(v66, 0);
        v25 = v32;

        if (__swift_getEnumTagSinglePayload(v34, 1, v9) == 1)
        {

          sub_1BC7C1744(v34, &unk_1EBCF5D70, &qword_1BC8FC740);
          a3 = v57;
        }

        else
        {
          v55 = v31;
          (*v51)(v65, v34, v9);
          v35 = v68;
          if (*(v68 + 16))
          {
            v36 = *(v68 + 40);
            sub_1BC7AAAD0(&unk_1EDC20600, MEMORY[0x1E69695A8]);
            v37 = sub_1BC8F7B54();
            v38 = ~(-1 << *(v35 + 32));
            while (1)
            {
              v39 = v37 & v38;
              if (((*(v35 + 56 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
              {
                break;
              }

              v40 = v62;
              v41 = v62[2];
              v41(v16, *(v35 + 48) + v62[9] * v39, v9);
              sub_1BC7AAAD0(&unk_1EDC205F0, MEMORY[0x1E69695A8]);
              v42 = sub_1BC8F7BC4();
              v43 = v40[1];
              v43(v16, v9);
              v37 = v39 + 1;
              if (v42)
              {
                v44 = v65;
                v41(v54, v65, v9);
                sub_1BC8AE558();

                v43(v16, v9);
                v43(v44, v9);
                goto LABEL_18;
              }
            }
          }

          v45 = v65;
          (*v64)(v54, v65, v9);
          sub_1BC8AE558();

          v46 = *v63;
          (*v63)(v16, v9);
          v46(v45, v9);
LABEL_18:
          a3 = v57;
          v25 = v52;
          v21 = v53;
        }

        v26 = v56;
        v27 = v61;
        if (v61 == v59)
        {

          v47 = v67;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }

    else
    {

      v47 = MEMORY[0x1E69E7CD0];
LABEL_22:

      *a3 = v47;
    }
  }
}

uint64_t sub_1BC815F2C(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BC815F7C()
{
  v1 = *v0;
  swift_weakAssign();
}

uint64_t sub_1BC815FC8()
{
  OUTLINED_FUNCTION_5();
  v1[12] = v2;
  v1[13] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v1[14] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_47_3();
  v7 = sub_1BC8F7264();
  v1[17] = v7;
  OUTLINED_FUNCTION_26(v7);
  v1[18] = v8;
  v10 = *(v9 + 64);
  v1[19] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC8160C8()
{
  v52 = v0;
  if (sub_1BC7C0454(v0[12]))
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v1 = v0[12];
    v2 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B268);

    v3 = sub_1BC8F7714();
    v4 = sub_1BC8F8204();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[12];
      OUTLINED_FUNCTION_9();
      v6 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v7 = swift_slowAlloc();
      v50 = v7;
      *v6 = 136446210;
      v8 = sub_1BC7C0454(v5);
      v9 = MEMORY[0x1E69E7CC0];
      if (v8)
      {
        v10 = v8;
        v44 = v7;
        v45 = v6;
        v46 = v4;
        v47 = v3;
        v51 = MEMORY[0x1E69E7CC0];
        sub_1BC7DDB5C();
        if (v10 < 0)
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v11, v12, v13);
        }

        v14 = 0;
        v15 = v0[18];
        v16 = v0[12];
        v9 = v51;
        v17 = (v15 + 16);
        v48 = v16 + 32;
        v49 = v16 & 0xC000000000000001;
        do
        {
          v18 = v10;
          v19 = v0[19];
          v20 = v0[17];
          if (v49)
          {
            v21 = MEMORY[0x1BFB29A00](v14, v0[12]);
            (*v17)(v19, v21 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v20);
            swift_unknownObjectRelease();
          }

          else
          {
            (*v17)(v19, *(v48 + 8 * v14) + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v20);
          }

          v51 = v9;
          v22 = *(v9 + 16);
          if (v22 >= *(v9 + 24) >> 1)
          {
            sub_1BC7DDB5C();
            v9 = v51;
          }

          v23 = v0[19];
          v24 = v0[17];
          ++v14;
          *(v9 + 16) = v22 + 1;
          (*(v15 + 32))(v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v22, v23, v24);
          v10 = v18;
        }

        while (v18 != v14);
        v3 = v47;
        v4 = v46;
        v7 = v44;
        v6 = v45;
      }

      v36 = MEMORY[0x1BFB29280](v9, v0[17]);
      v38 = v37;

      sub_1BC7A9A4C(v36, v38, &v50);
      OUTLINED_FUNCTION_100();

      *(v6 + 4) = v9;
      _os_log_impl(&dword_1BC7A3000, v3, v4, "Performing updates to messages with UUIDs: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      v39 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v39);
      v40 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v40);
    }

    v41 = v0[12];
    v42 = v0[13];
    v0[20] = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_queue;
    OUTLINED_FUNCTION_34();
    v43 = swift_allocObject();
    v0[21] = v43;
    *(v43 + 16) = v42;
    *(v43 + 24) = v41;

    v11 = OUTLINED_FUNCTION_65_0();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v25 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v25, qword_1EDC2B268);
  v26 = sub_1BC8F7714();
  sub_1BC8F81E4();
  v27 = OUTLINED_FUNCTION_21_8();
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_45();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v29);
    OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v30, v31, "Told to update messages but no updates were given");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v32 = v0[19];
  v33 = v0[16];

  OUTLINED_FUNCTION_11();

  return v34();
}

uint64_t sub_1BC8164D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v14 = v12[20];
  v13 = v12[21];
  v16 = v12[15];
  v15 = v12[16];
  v18 = v12[13];
  v17 = v12[14];
  v12[2] = v19;
  v20 = OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &unk_1BC9029E8;
  v21[4] = v13;
  OUTLINED_FUNCTION_34();
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1BC9029F8;
  *(v22 + 24) = v21;
  v12[10] = &unk_1BC8FC280;
  v12[11] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_56_1();
  v23 = *(v16 + 8);
  v24 = OUTLINED_FUNCTION_30();
  v25(v24);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1BC8165FC()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_13_0();
  v2 = v1;
  OUTLINED_FUNCTION_11_1();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;
  v6 = *(v5 + 48);
  v2[22] = v6;
  if (v6)
  {
    swift_willThrow();
    v7 = OUTLINED_FUNCTION_59_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = v2[21];

    v11 = swift_task_alloc();
    v2[23] = v11;
    *v11 = v4;
    OUTLINED_FUNCTION_89(v11);

    return sub_1BC810798();
  }
}

uint64_t sub_1BC816758()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = *(v1 + 152);
  v6 = *(v1 + 128);

  OUTLINED_FUNCTION_128();

  return v7();
}

uint64_t sub_1BC816870()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[16];

  OUTLINED_FUNCTION_27();
  v5 = v0[22];

  return v4();
}

uint64_t sub_1BC8168E4()
{
  OUTLINED_FUNCTION_5();
  v1[12] = v2;
  v1[13] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v1[14] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC816998()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[12];
  if (*(v1 + 16))
  {
    v2 = v0[13];
    v0[17] = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_queue;
    OUTLINED_FUNCTION_34();
    v3 = swift_allocObject();
    v0[18] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;

    v4 = OUTLINED_FUNCTION_65_0();

    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  else
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v7 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v7, qword_1EDC2B268);
    v8 = sub_1BC8F7714();
    sub_1BC8F81E4();
    v9 = OUTLINED_FUNCTION_21_8();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_45();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v11);
      OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v12, v13, "Told to update voicemail messages but no updates were given");
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v14 = v0[16];

    OUTLINED_FUNCTION_11();

    return v15();
  }
}

uint64_t sub_1BC816AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v14 = v12[17];
  v13 = v12[18];
  v16 = v12[15];
  v15 = v12[16];
  v18 = v12[13];
  v17 = v12[14];
  v12[2] = v19;
  v20 = OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &unk_1BC902D70;
  v21[4] = v13;
  OUTLINED_FUNCTION_34();
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1BC902D78;
  *(v22 + 24) = v21;
  v12[10] = &unk_1BC902D80;
  v12[11] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_56_1();
  v23 = *(v16 + 8);
  v24 = OUTLINED_FUNCTION_30();
  v25(v24);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1BC816C1C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_13_0();
  v2 = v1;
  OUTLINED_FUNCTION_11_1();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;
  v6 = *(v5 + 48);
  v2[19] = v6;
  if (v6)
  {
    swift_willThrow();
    v7 = OUTLINED_FUNCTION_59_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = v2[18];

    v11 = swift_task_alloc();
    v2[20] = v11;
    *v11 = v4;
    OUTLINED_FUNCTION_89(v11);

    return sub_1BC810798();
  }
}

uint64_t sub_1BC816D78()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = *(v1 + 128);

  OUTLINED_FUNCTION_128();

  return v6();
}

uint64_t sub_1BC816E74()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[18];
  v2 = v0[16];

  OUTLINED_FUNCTION_27();
  v4 = v0[19];

  return v3();
}

uint64_t sub_1BC816EDC(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC816EF4()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[2];
  v1 = v0[3];
  OUTLINED_FUNCTION_34();
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_1BC7A5AB4(v1);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1BC816FF0;

  return sub_1BC812710(&unk_1BC902BC8, v3);
}

uint64_t sub_1BC816FF0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  *v4 = *v1;
  v3[6] = v7;
  v3[7] = v0;

  if (!v0)
  {
    v8 = v3[4];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8170F8()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[7];
  sub_1BC81F454(v0[6]);
  v2 = v0[6];
  if (v1)
  {
    v3 = v0[6];

    OUTLINED_FUNCTION_27();
  }

  else
  {
    v5 = v0[2];
    sub_1BC81F598(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v0[6]);

    OUTLINED_FUNCTION_11();
  }

  return v4();
}

uint64_t sub_1BC817190()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC817200()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  if (sub_1BC810338())
  {
    OUTLINED_FUNCTION_96();

    return v2();
  }

  else
  {
    v4 = *(v0 + 40);
    OUTLINED_FUNCTION_130();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v5 = *__swift_project_boxed_opaque_existential_1((v4 + 88), *(v4 + 112));
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_133(v6);
    *v7 = v8;
    v7[1] = sub_1BC8172E0;

    return sub_1BC8E9F34();
  }
}

uint64_t sub_1BC8172E0()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 56) = v3;
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1BC817410()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = v1;
  sub_1BC8103A8(v1);
  v4 = *(v0 + 56);
  OUTLINED_FUNCTION_96();

  return v5();
}

uint64_t sub_1BC81747C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC817494()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  OUTLINED_FUNCTION_41_0();
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 28) = BYTE4(v3) & 1;
  *(v4 + 32) = v2;
  OUTLINED_FUNCTION_74_0();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_133(v5);
  *v6 = v7;
  v6[1] = sub_1BC817588;
  OUTLINED_FUNCTION_112();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1BC817588()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_96();

    return v13();
  }
}

uint64_t sub_1BC8176C0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1BC81771C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC817730()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v2 = v0[2];
  v1 = v0[3];
  OUTLINED_FUNCTION_34();
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_74_0();
  v4 = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1BC817818;
  OUTLINED_FUNCTION_112();

  return v8(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1BC817818()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 32);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

uint64_t sub_1BC817954()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 48);

  return v2();
}

void sub_1BC8179B0()
{
  v0 = sub_1BC8F6D14();
  if (v0)
  {
    v1 = v0;
    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v2 = sub_1BC8F7734();
    __swift_project_value_buffer(v2, qword_1EDC2B268);

    v3 = sub_1BC8F7714();
    v4 = sub_1BC8F8204();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v33[0] = v6;
      *v5 = 136315138;
      v7 = sub_1BC8F7AB4();
      v9 = sub_1BC7A9A4C(v7, v8, v33);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1BC7A3000, v3, v4, "MessageStore: Received a willResetSync notification. UserInfo: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1BFB2AA50](v6, -1, -1);
      MEMORY[0x1BFB2AA50](v5, -1, -1);
    }

    v10 = *MEMORY[0x1E695D2D8];
    v31 = sub_1BC8F7C24();
    v32 = v11;
    sub_1BC8F8544();
    sub_1BC8E715C(v33, v1);

    sub_1BC8037DC(v33);
    if (v34[3])
    {
      if (swift_dynamicCast())
      {
        switch(v31)
        {
          case 1:
          case 2:
          case 3:
            sub_1BC817FE8(2u);
            sub_1BC81814C(v12, v13, v14, v15, v16, v17, v18, v19, v27, oslog, v30, v31, v32, v33[0], v33[1], v33[2], v33[3], v33[4], v34[0], v34[1]);
            sub_1BC817FE8(3u);
            break;
          case 4:
            v23 = sub_1BC8F7714();
            v24 = sub_1BC8F8204();
            if (!os_log_type_enabled(v23, v24))
            {
              goto LABEL_21;
            }

            v25 = swift_slowAlloc();
            *v25 = 0;
            v26 = "MessageStore: Not acting on reset sync reason since user purged the zone";
            goto LABEL_20;
          case 5:
            v23 = sub_1BC8F7714();
            v24 = sub_1BC8F8204();
            if (!os_log_type_enabled(v23, v24))
            {
              goto LABEL_21;
            }

            v25 = swift_slowAlloc();
            *v25 = 0;
            v26 = "MessageStore: Not acting on reset sync reason since the zone was deleted";
            goto LABEL_20;
          case 6:
            v23 = sub_1BC8F7714();
            v24 = sub_1BC8F8204();
            if (!os_log_type_enabled(v23, v24))
            {
              goto LABEL_21;
            }

            v25 = swift_slowAlloc();
            *v25 = 0;
            v26 = "MessageStore: Not acting on reset sync reason since the history token expired";
            goto LABEL_20;
          case 7:
            v23 = sub_1BC8F7714();
            v24 = sub_1BC8F8204();
            if (!os_log_type_enabled(v23, v24))
            {
              goto LABEL_21;
            }

            v25 = swift_slowAlloc();
            *v25 = 0;
            v26 = "MessageStore: Not acting on reset sync reason since the server change token expired";
            goto LABEL_20;
          default:
            v23 = sub_1BC8F7714();
            v24 = sub_1BC8F81E4();
            if (!os_log_type_enabled(v23, v24))
            {
              goto LABEL_21;
            }

            v25 = swift_slowAlloc();
            *v25 = 0;
            v26 = "MessageStore: Unknown reset sync reason found on CoreData WillResetSync notification!";
            goto LABEL_20;
        }

        return;
      }
    }

    else
    {
      sub_1BC7C1744(v34, &unk_1EBCF5E50, &qword_1BC8FE850);
    }

    v23 = sub_1BC8F7714();
    v24 = sub_1BC8F81E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "MessageStore: No reset sync reason found on CoreData WillResetSync notification!";
LABEL_20:
      _os_log_impl(&dword_1BC7A3000, v23, v24, v26, v25, 2u);
      MEMORY[0x1BFB2AA50](v25, -1, -1);
    }

LABEL_21:
  }

  else
  {
    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v20 = sub_1BC8F7734();
    __swift_project_value_buffer(v20, qword_1EDC2B268);
    osloga = sub_1BC8F7714();
    v21 = sub_1BC8F81E4();
    if (os_log_type_enabled(osloga, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BC7A3000, osloga, v21, "MessageStore: No userInfo dictionary found on CoreData WillResetSync notification!", v22, 2u);
      MEMORY[0x1BFB2AA50](v22, -1, -1);
    }
  }
}

void sub_1BC817FE8(unsigned __int8 a1)
{
  v2 = v1;
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v4 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v4, qword_1EDC2B268);
  v5 = sub_1BC8F7714();
  sub_1BC8F8204();
  v6 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_9();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    v10 = sub_1BC7FC7F0(a1);
    v12 = sub_1BC7A9A4C(v10, v11, &v21);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_90();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    v18 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v18);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v19 = *(v2 + 64);
  v20 = sub_1BC8F7BE4();
  [v19 setInteger:a1 forKey:v20];

  *(v2 + 72) = a1;
}

void sub_1BC81814C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  if (*(v20 + 72) == 2)
  {
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();
    OUTLINED_FUNCTION_108();
    v26 = *(v22 + 136);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_86();
    v27();
    if (v21)
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      if (qword_1EDC1E1D0 != -1)
      {
        OUTLINED_FUNCTION_0_16();
        swift_once();
      }

      v36 = sub_1BC8F7734();
      __swift_project_value_buffer(v36, qword_1EDC2B268);
      v37 = sub_1BC8F7714();
      v38 = sub_1BC8F8204();
      v39 = OUTLINED_FUNCTION_36_0();
      if (os_log_type_enabled(v39, v40))
      {
        OUTLINED_FUNCTION_45();
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1BC7A3000, v37, v38, "MessageStoreManager: Attempting to migrate from permanent db to temporary db", v41, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      a10 = 0xE000000000000000;
      v42 = *(v25 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_deviceSupport);
      v43 = &off_1E7FF5000;
      v44 = [v42 deviceType];
      if (v44 != 2)
      {
        v44 = [v42 deviceType];
        if (v44 != 6)
        {
          OUTLINED_FUNCTION_21_4();
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_1F3B36850;
          v43 = (v45 | 0x4000000000000000);
          v44 = sub_1BC7B0EFC(0xE000000000000000);
          a10 = v43;
        }
      }

      v66 = v42;
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_83_0();
      *(v46 - 16) = &a10;
      *(v46 - 8) = v25;
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      v48 = *(v25 + 112);
      v47 = *(v25 + 120);
      __swift_mutable_project_boxed_opaque_existential_1(v25 + 88, v48);
      v49 = *(v47 + 128);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
      (v49)(&v67, sub_1BC830000, v43, v50, v48, v47);
      swift_endAccess();
      sub_1BC819218(v67);

      if ([v66 deviceType] == 2 || objc_msgSend(v66, sel_deviceType) == 6)
      {
        v51 = sub_1BC8F7714();
        sub_1BC8F8204();
        v52 = OUTLINED_FUNCTION_36_0();
        if (os_log_type_enabled(v52, v53))
        {
          OUTLINED_FUNCTION_45();
          v54 = swift_slowAlloc();
          OUTLINED_FUNCTION_118(v54);
          OUTLINED_FUNCTION_43_0();
          _os_log_impl(v55, v56, v57, v58, v59, 2u);
          v60 = OUTLINED_FUNCTION_13_2();
          MEMORY[0x1BFB2AA50](v60);
        }
      }

      else
      {
        OUTLINED_FUNCTION_21_4();
        v61 = swift_allocObject();
        *(v61 + 16) = &unk_1F3B36878;
        v62 = v61 | 0x4000000000000000;
        v63 = sub_1BC7B0EFC(a10);
        a10 = v62;
        MEMORY[0x1EEE9AC00](v63);
        OUTLINED_FUNCTION_83_0();
        *(v64 - 16) = &a10;
        *(v64 - 8) = v25;
        OUTLINED_FUNCTION_37_5();
        swift_beginAccess();
        OUTLINED_FUNCTION_108();
        v65 = *(v49 + 128);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE0, &unk_1BC8FC780);
        OUTLINED_FUNCTION_86();
        v65();
        swift_endAccess();
        sub_1BC7EEA50(v67);
      }

      sub_1BC7B0EFC(a10);
    }
  }

  else
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v28 = sub_1BC8F7734();
    __swift_project_value_buffer(v28, qword_1EDC2B268);
    OUTLINED_FUNCTION_101();

    v29 = sub_1BC8F7714();
    sub_1BC8F81E4();
    v30 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_9();
      v32 = swift_slowAlloc();
      OUTLINED_FUNCTION_135(v32, 3.9122e-34);
      OUTLINED_FUNCTION_75_0(&dword_1BC7A3000, v33, v34, "MessageStoreManager: Told to move messages to temporary store but account status is: %{public}ld");
      v35 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v35);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_23();
}

void sub_1BC8186D4()
{
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BC8F7734();
  __swift_project_value_buffer(v0, qword_1EDC2B268);
  v1 = sub_1BC8F7714();
  v2 = sub_1BC8F8204();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BC7A3000, v1, v2, "MessageStore: Received a didResetSync notification", v3, 2u);
    MEMORY[0x1BFB2AA50](v3, -1, -1);
  }

  sub_1BC817FE8(4u);
  sub_1BC818940();
  sub_1BC817FE8(5u);
  sub_1BC818DBC();

  sub_1BC817FE8(1u);
}

void sub_1BC818DBC()
{
  OUTLINED_FUNCTION_22();
  v2 = v0;
  v3 = sub_1BC8F8244();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  v12 = sub_1BC8F7014();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v50 - v21;
  if (*(v2 + 72) == 5)
  {
    v51 = v6;
    v52 = v3;
    v53 = [objc_allocWithZone(MEMORY[0x1E695D6C0]) init];
    v23 = [objc_opt_self() defaultManager];
    sub_1BC8D321C();
    sub_1BC8F6FC4();
    v24 = *(v15 + 8);
    v24(v22, v12);
    sub_1BC8F7BE4();
    OUTLINED_FUNCTION_100();

    v25 = [v23 fileExistsAtPath_];

    if (v25)
    {
      sub_1BC8D321C();
      sub_1BC8F8234();
      v26 = v53;
      sub_1BC8F8334();
      v27 = (v51 + 8);
      if (v1)
      {
        (*v27)(v11, v52);
        v24(v20, v12);
        if (qword_1EDC1E1D0 != -1)
        {
          OUTLINED_FUNCTION_0_16();
          swift_once();
        }

        v28 = sub_1BC8F7734();
        __swift_project_value_buffer(v28, qword_1EDC2B268);
        v29 = OUTLINED_FUNCTION_100();
        v30 = sub_1BC8F7714();
        v31 = sub_1BC8F81E4();

        if (os_log_type_enabled(v30, v31))
        {
          OUTLINED_FUNCTION_9();
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138543362;
          v34 = v1;
          v35 = _swift_stdlib_bridgeErrorToNSError();
          *(v32 + 4) = v35;
          *v33 = v35;
          OUTLINED_FUNCTION_90();
          _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
          sub_1BC7C1744(v33, &unk_1EBCF5DB0, &unk_1BC900410);
          v41 = OUTLINED_FUNCTION_5_5();
          MEMORY[0x1BFB2AA50](v41);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        swift_willThrow();
      }

      else
      {

        (*v27)(v11, v52);
        v24(v20, v12);
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v42 = sub_1BC8F7734();
    __swift_project_value_buffer(v42, qword_1EDC2B268);
    OUTLINED_FUNCTION_101();

    v43 = sub_1BC8F7714();
    sub_1BC8F81E4();
    v44 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v44, v45))
    {
      OUTLINED_FUNCTION_9();
      v46 = swift_slowAlloc();
      OUTLINED_FUNCTION_135(v46, 3.9122e-34);
      OUTLINED_FUNCTION_75_0(&dword_1BC7A3000, v47, v48, "MessageStoreManager: Told to clean up after account change but account status is: %{public}ld");
      v49 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v49);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC819218(uint64_t a1)
{
  v5[2] = a1;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 88, v2);
  (*(v3 + 136))(sub_1BC830038, v5, MEMORY[0x1E69E7CA8] + 8, v2, v3);
  return swift_endAccess();
}

void sub_1BC8192C4(uint64_t a1, uint64_t a2)
{
  v154 = a2;
  v141 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v148 = v124 - v5;
  v138 = sub_1BC8F71E4();
  v6 = *(v138 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v137 = v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v147 = v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v146 = v124 - v13;
  v14 = sub_1BC8F7014();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v136 = v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1BC8F7264();
  v18 = *(v142 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v142);
  v135 = v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v143 = v124 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v134 = v124 - v24;
  v140 = type metadata accessor for FTLocalMessage();
  v144 = [swift_getObjCClassFromMetadata() entityName];
  if (!v144)
  {
    sub_1BC8F7C24();
    v144 = sub_1BC8F7BE4();
  }

  v133 = sub_1BC7C0454(v154);
  if (v133)
  {
    v130 = v14;
    v124[1] = v2;
    v131 = objc_opt_self();
    v132 = v154 & 0xC000000000000001;
    v153 = (v18 + 16);
    v156 = (v18 + 8);
    v151 = (v15 + 8);
    v128 = (v6 + 16);
    v129 = (v15 + 16);
    v127 = (v6 + 8);
    v25 = 4;
    *&v26 = 138543362;
    v126 = v26;
    *&v26 = 136446210;
    v125 = v26;
    v27 = v142;
    while (1)
    {
      v28 = v132;
      sub_1BC8E2358(v25 - 4, v132 == 0, v154);
      if (v28)
      {
        v29 = MEMORY[0x1BFB29A00](v25 - 4, v154);
      }

      else
      {
        v29 = *(v154 + 8 * v25);
      }

      v30 = v29;
      if (__OFADD__(v25 - 4, 1))
      {
        __break(1u);
        return;
      }

      v150 = v25 - 3;
      if (qword_1EDC1E1D0 != -1)
      {
        swift_once();
      }

      v31 = sub_1BC8F7734();
      v32 = __swift_project_value_buffer(v31, qword_1EDC2B268);
      v33 = v30;
      v145 = v32;
      v34 = sub_1BC8F7714();
      v35 = sub_1BC8F8204();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = v126;
        *(v36 + 4) = v33;
        *v37 = v33;
        v38 = v33;
        _os_log_impl(&dword_1BC7A3000, v34, v35, "MessageStoreManager: Copying %{public}@ to temp store", v36, 0xCu);
        sub_1BC7C1744(v37, &unk_1EBCF5DB0, &unk_1BC900410);
        MEMORY[0x1BFB2AA50](v37, -1, -1);
        MEMORY[0x1BFB2AA50](v36, -1, -1);
      }

      v152 = [v131 insertNewObjectForEntityForName:v144 inManagedObjectContext:v141];
      v39 = swift_dynamicCastClass();
      if (!v39)
      {

        v120 = sub_1BC8F7714();
        v121 = sub_1BC8F81E4();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          _os_log_impl(&dword_1BC7A3000, v120, v121, "MessageStoreManager: Failed to insert message", v122, 2u);
          MEMORY[0x1BFB2AA50](v122, -1, -1);
        }

        sub_1BC82EF30();
        swift_allocError();
        *v123 = 0;
        swift_willThrow();

        v119 = v152;
        goto LABEL_49;
      }

      v158 = v39;
      v40 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
      swift_beginAccess();
      v157 = v40;
      v41 = *&v33[v40];
      v149 = v25;
      if (v41 == 1)
      {
        v42 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
        swift_beginAccess();
        v43 = v134;
        (*v153)(v134, &v33[v42], v27);
      }

      else
      {
        v43 = v134;
        sub_1BC8F7254();
      }

      v44 = sub_1BC8F7214();
      v45 = *v156;
      (*v156)(v43, v27);
      v46 = v158;
      [v158 setRecordUUID_];

      v47 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID;
      swift_beginAccess();
      v48 = *v153;
      v49 = v143;
      (*v153)(v143, &v33[v47], v27);
      v50 = sub_1BC8F7214();
      v155 = v45;
      v45(v49, v27);
      [v46 setCallUUID_];

      if (*&v33[v157] == 1)
      {
        v51 = v135;
        sub_1BC8F7254();
      }

      else
      {
        v52 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID;
        swift_beginAccess();
        v51 = v135;
        v48(v135, &v33[v52], v27);
      }

      v53 = v130;
      v54 = sub_1BC8F7214();
      v155(v51, v27);
      v55 = v158;
      [v158 setConversationID_];

      v56 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
      swift_beginAccess();
      v57 = v136;
      (*v129)(v136, &v33[v56], v53);
      v58 = sub_1BC8F6F44();
      v59 = *v151;
      (*v151)(v57, v53);
      [v55 setMessageFile_];

      [v55 setMessageType_];
      swift_beginAccess();
      v60 = v146;
      sub_1BC830400();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v53);
      v62 = 0;
      if (EnumTagSinglePayload != 1)
      {
        v63 = v146;
        v62 = sub_1BC8F6F44();
        v59(v63, v53);
      }

      v139 = v48;
      [v55 setMessageThumbnail_];

      swift_beginAccess();
      v64 = v147;
      sub_1BC830400();
      v65 = __swift_getEnumTagSinglePayload(v64, 1, v53);
      v66 = 0;
      if (v65 != 1)
      {
        v67 = v147;
        v66 = sub_1BC8F6F44();
        v59(v67, v53);
      }

      [v55 setTranscript_];

      v68 = &v33[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
      swift_beginAccess();
      v70 = *v68;
      v69 = v68[1];

      sub_1BC7C3588(v70, v69, v55, &selRef_setFrom_);
      v71 = &v33[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider];
      swift_beginAccess();
      v73 = *v71;
      v72 = v71[1];

      sub_1BC7C3588(v73, v72, v55, &selRef_setProvider_);
      v74 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
      swift_beginAccess();
      v75 = *v128;
      v76 = &v33[v74];
      v77 = v137;
      v78 = v138;
      (*v128)(v137, v76, v138);
      v79 = sub_1BC8F7174();
      v80 = *v127;
      (*v127)(v77, v78);
      [v158 setDateCreated_];

      v81 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified;
      swift_beginAccess();
      v75(v77, &v33[v81], v78);
      v82 = sub_1BC8F7174();
      v80(v77, v78);
      v83 = v158;
      [v158 setDateModified_];

      v84 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
      swift_beginAccess();
      [v83 setIsRead_];
      v85 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
      swift_beginAccess();
      [v83 setDuration_];
      v86 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
      swift_beginAccess();
      [v83 setMailboxType_];
      v87 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive;
      swift_beginAccess();
      [v83 setIsSensitive_];
      v88 = &v33[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient];
      swift_beginAccess();
      if (*(v88 + 1))
      {
        v89 = *v88;
        v90 = *(v88 + 1);

        v91 = sub_1BC8F7BE4();
      }

      else
      {
        v91 = 0;
      }

      v27 = v142;
      v92 = v149;
      [v83 setRecipient_];

      v93 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
      swift_beginAccess();
      [v83 setTranscriptionStatus_];
      v94 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT;
      swift_beginAccess();
      [v83 setIsRTT_];
      v95 = &v33[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID];
      swift_beginAccess();
      if (*(v95 + 1))
      {
        v96 = *v95;
        v97 = *(v95 + 1);

        v98 = sub_1BC8F7BE4();
      }

      else
      {
        v98 = 0;
      }

      [v83 setSimID_];

      v99 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
      swift_beginAccess();
      v100 = 7827308;
      v101 = 0xE300000000000000;
      switch(v33[v99])
      {
        case 1:
          v101 = 0xE600000000000000;
          v100 = 0x6D756964656DLL;
          break;
        case 2:
          v101 = 0xE400000000000000;
          v100 = 1751607656;
          break;
        case 3:
          v100 = 7823730;
          break;
        default:
          break;
      }

      sub_1BC7C3588(v100, v101, v83, &selRef_setQuality_);
      swift_beginAccess();
      v102 = v148;
      sub_1BC830400();
      v103 = __swift_getEnumTagSinglePayload(v102, 1, v27);
      v104 = 0;
      if (v103 != 1)
      {
        v105 = v148;
        v104 = sub_1BC8F7214();
        v155(v105, v27);
      }

      [v83 setReminderUUID_];

      v106 = &v33[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
      swift_beginAccess();
      if (*(v106 + 4) == 1)
      {
        if (*&v33[v157] != 2)
        {
          v107 = v33;
          v108 = sub_1BC8F7714();
          v109 = sub_1BC8F81E4();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v158 = swift_slowAlloc();
            v159 = v158;
            *v110 = v125;
            LODWORD(v157) = v109;
            v111 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
            swift_beginAccess();
            v112 = &v107[v111];
            v113 = v143;
            v139(v143, v112, v27);
            sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
            v114 = sub_1BC8F8A54();
            v116 = v115;
            v155(v113, v27);
            v117 = sub_1BC7A9A4C(v114, v116, &v159);

            *(v110 + 4) = v117;
            _os_log_impl(&dword_1BC7A3000, v108, v157, "No voicemailID provided for insert to temp for message with recordUUID: %{public}s!", v110, 0xCu);
            v118 = v158;
            __swift_destroy_boxed_opaque_existential_1(v158);
            MEMORY[0x1BFB2AA50](v118, -1, -1);
            MEMORY[0x1BFB2AA50](v110, -1, -1);
          }

          goto LABEL_43;
        }
      }

      else
      {
        [v83 setVoicemailID_];
      }

LABEL_43:
      v25 = v92 + 1;
      if (v150 == v133)
      {

        return;
      }
    }
  }

  v119 = v144;
LABEL_49:
}