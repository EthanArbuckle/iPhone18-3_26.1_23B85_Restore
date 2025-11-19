id sub_24AEFBAFC()
{
  v15 = v0;
  Controller = type metadata accessor for QueryController();
  v2 = swift_allocObject();
  v0[17] = v2;
  swift_defaultActor_initialize();
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];
  v2[14] = result;
  v2[15] = v6;
  v2[16] = v4;
  v0[5] = Controller;
  v0[6] = &protocol witness table for QueryController;
  v0[2] = v2;
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = sub_24AEFD794(*(v5 + 16), 0);
  v9 = sub_24AEFD920(&v14, (v8 + 4), v7, v5);

  sub_24AEFDA80();
  if (v9 != v7)
  {
    __break(1u);
LABEL_5:

    v8 = MEMORY[0x277D84F90];
  }

  v10 = v0[16];

  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_24AEFBCB4;
  v12 = v0[15];
  v13 = v0[16];

  return sub_24AEFA600((v0 + 7), (v0 + 2), v8, v12, v13);
}

uint64_t sub_24AEFBCB4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_24AEFE6A4;
  }

  else
  {
    v3 = sub_24AEFE6A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

FindMyMessaging::Destination __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CorrelationIdentifierMap.destination(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1;
  v6 = type metadata accessor for CorrelationIdentifier();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 8);
  *v9 = countAndFlagsBits;
  v9[1] = object;
  swift_storeEnumTagMultiPayload();
  v11 = *(v10 + 16);

  if (v11 && (v12 = sub_24AEDA2F0(v9), (v13 & 1) != 0))
  {
    v14 = *(v10 + 56) + 24 * v12;
    v15 = *v14;
    v17 = *(v14 + 8);
    v16 = *(v14 + 16);

    v18 = sub_24AEE2B98(v9);
    *v5 = v15;
    *(v5 + 8) = v17;
    *(v5 + 16) = v16;
  }

  else
  {
    sub_24AEE2B98(v9);
    sub_24AEFDAD4();
    swift_allocError();
    *v21 = 0;
    v18 = swift_willThrow();
  }

  result.destination._object = v20;
  result.destination._countAndFlagsBits = v19;
  result.type = v18;
  return result;
}

uint64_t CorrelationIdentifierMap.map(destinations:)(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  result = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v9 = *(a1 + 16);
  if (v9)
  {
    for (i = (a1 + 48); ; i += 3)
    {
      v12 = *(i - 1);
      v11 = *i;
      v13[0] = *(i - 16);
      v14 = v12;
      v15 = v11;

      sub_24AEFC1A0(&v16, v13, v5);
      if (v2)
      {
        break;
      }

      if (!--v9)
      {
        return v16;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v3 = v1[1];
  v12 = *v1;
  v13 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = sub_24AEFD794(*(a1 + 16), 0);
    v7 = sub_24AEFD920(&v11, (v6 + 4), v4, a1);

    result = sub_24AEFDA80();
    if (v7 != v4)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v9 = CorrelationIdentifierMap.map(destinations:)(v6);

  if (!v2)
  {
    v10 = sub_24AEF6D74(v9);

    return v10;
  }

  return result;
}

uint64_t sub_24AEFC1A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CorrelationIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  if (*(a3 + 16))
  {
    v15 = *(a2 + 8);
    v16 = *(a2 + 16);
    result = sub_24AEDA148(*a2, v15, v16);
    if (v17)
    {
      v18 = *(v7 + 72);
      sub_24AEE2B34(*(a3 + 56) + v18 * result, v14);
      v19 = *a1;
      if (sub_24AEF9E10(v14, *a1))
      {
        if (qword_27EFC0700 != -1)
        {
          swift_once();
        }

        v20 = sub_24AF3529C();
        __swift_project_value_buffer(v20, qword_27EFC0978);

        v21 = sub_24AF3527C();
        v22 = sub_24AF3570C();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v28 = v24;
          *v23 = 136315651;
          *(v23 + 4) = sub_24AEF599C(0xD000000000000012, 0x800000024AF370A0, &v28);
          *(v23 + 12) = 2160;
          *(v23 + 14) = 1752392040;
          *(v23 + 22) = 2081;
          *(v23 + 24) = sub_24AEF599C(v15, v16, &v28);
          _os_log_impl(&dword_24AECF000, v21, v22, "CorrelationIdentifierMap: Duplicate destination detected during %s: %{private,mask.hash}s", v23, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C236490](v24, -1, -1);
          MEMORY[0x24C236490](v23, -1, -1);
        }

        return sub_24AEE2B98(v14);
      }

      else
      {
        sub_24AEE2B34(v14, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_24AEF555C(0, v19[2] + 1, 1, v19);
        }

        v26 = v19[2];
        v25 = v19[3];
        if (v26 >= v25 >> 1)
        {
          v19 = sub_24AEF555C(v25 > 1, v26 + 1, 1, v19);
        }

        sub_24AEE2B98(v14);
        v19[2] = v26 + 1;
        result = sub_24AEE2BF4(v11, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v26 * v18);
        *a1 = v19;
      }
    }
  }

  return result;
}

char *CorrelationIdentifierMap.map(correlationIdentifiers:)(uint64_t a1)
{
  v3 = type metadata accessor for CorrelationIdentifier();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = *(v1 + 8);
  v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v11 = *(v5 + 72);
  v12 = MEMORY[0x277D84F90];
  v25 = v11;
  do
  {
    sub_24AEE2B34(v10, v7);
    if (*(v9 + 16) && (v13 = sub_24AEDA2F0(v7), (v14 & 1) != 0))
    {
      v15 = *(v9 + 56) + 24 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_24AEF5734(0, *(v12 + 2) + 1, 1, v12);
      }

      v21 = *(v12 + 2);
      v20 = *(v12 + 3);
      if (v21 >= v20 >> 1)
      {
        v12 = sub_24AEF5734((v20 > 1), v21 + 1, 1, v12);
      }

      sub_24AEE2B98(v7);
      *(v12 + 2) = v21 + 1;
      v22 = &v12[24 * v21];
      v22[32] = v16;
      *(v22 + 5) = v26;
      *(v22 + 6) = v18;
      v11 = v25;
    }

    else
    {
      sub_24AEE2B98(v7);
    }

    v10 += v11;
    --v8;
  }

  while (v8);
  return v12;
}

uint64_t CorrelationIdentifierMap.map(correlationIdentifiers:)(void *a1)
{
  v3 = v1[1];
  v13 = *v1;
  v14 = v3;
  v4 = a1[2];
  if (v4)
  {
    v6 = sub_24AEFD824(a1[2], 0);
    v7 = *(type metadata accessor for CorrelationIdentifier() - 8);
    v8 = sub_24AEFDB28(&v12, v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v4, a1);

    result = sub_24AEFDA80();
    if (v8 != v4)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v10 = CorrelationIdentifierMap.map(correlationIdentifiers:)(v6);

  if (!v2)
  {
    v11 = sub_24AEF6F00(v10);

    return v11;
  }

  return result;
}

uint64_t CorrelationIdentifierMap.Error.hashValue.getter()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t sub_24AEFC988()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t sub_24AEFC9D0()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t CorrelationIdentifierMap.init(mockLookupHelper:destinations:disambiguate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  return MEMORY[0x2822009F8](sub_24AEFCA4C, 0, 0);
}

{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  return MEMORY[0x2822009F8](sub_24AEFCD30, 0, 0);
}

uint64_t sub_24AEFCA4C()
{
  v1 = v0[15];
  sub_24AEFE044(v0[12], (v0 + 2));

  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_24AEFCB08;
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];

  return sub_24AEFA600((v0 + 7), (v0 + 2), v5, v3, v4);
}

uint64_t sub_24AEFCB08()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_24AEFCC98;
  }

  else
  {
    v3 = sub_24AEFCC1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEFCC1C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_0(v3);
  v4 = *(v0 + 72);
  *v2 = *(v0 + 56);
  v2[1] = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AEFCC98()
{
  v1 = v0[15];
  v2 = v0[12];

  __swift_destroy_boxed_opaque_existential_0(v2);
  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t sub_24AEFCD30()
{
  v13 = v0;
  v1 = v0[20];
  v2 = v0[18];
  sub_24AEFE044(v0[17], (v0 + 2));

  sub_24AEFE044((v0 + 2), (v0 + 7));
  v3 = *(v2 + 16);
  v4 = v0[18];
  if (v3)
  {
    v5 = sub_24AEFD794(v3, 0);
    v6 = sub_24AEFD920(&v12, (v5 + 4), v3, v4);
    sub_24AEFDA80();
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v7 = v0[20];

  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_24AEFCE68;
  v9 = v0[19];
  v10 = v0[20];

  return sub_24AEFA600((v0 + 12), (v0 + 7), v5, v9, v10);
}

uint64_t sub_24AEFCE68()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_24AEFD018;
  }

  else
  {
    v3 = sub_24AEFCF7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEFCF7C()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_0(v2);
  *v3 = v7;
  v3[1] = v6;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AEFD018()
{
  v1 = v0[20];
  v2 = v0[17];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0(v2);
  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t CorrelationIdentifierMap.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_24AF3592C();

  strcpy(v6, "forwardMap: ");
  type metadata accessor for CorrelationIdentifier();
  sub_24AEF8EE0();
  v3 = sub_24AF3530C();
  MEMORY[0x24C235440](v3);

  MEMORY[0x24C235440](0x657372657665720ALL, 0xED0000203A70614DLL);
  sub_24AEFE148(&qword_27EFC0928, type metadata accessor for CorrelationIdentifier);
  v4 = sub_24AF3530C();
  MEMORY[0x24C235440](v4);

  return v6[0];
}

uint64_t CorrelationIdentifier.hash(into:)()
{
  v1 = sub_24AF3521C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CorrelationIdentifier();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24AEE2B34(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x24C235D70](1);
    sub_24AEFE148(&qword_281393400, MEMORY[0x277CC95F0]);
    sub_24AF3536C();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v11 = *v9;
    v12 = v9[1];
    MEMORY[0x24C235D70](0);
    sub_24AF353DC();
  }
}

uint64_t CorrelationIdentifier.hashValue.getter()
{
  v1 = v0;
  v2 = sub_24AF3521C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CorrelationIdentifier();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24AF35D0C();
  sub_24AEE2B34(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x24C235D70](1);
    sub_24AEFE148(&qword_281393400, MEMORY[0x277CC95F0]);
    sub_24AF3536C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = *v10;
    v12 = v10[1];
    MEMORY[0x24C235D70](0);
    sub_24AF353DC();
  }

  return sub_24AF35D4C();
}

uint64_t sub_24AEFD5A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_24AF3521C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24AF35D0C();
  sub_24AEE2B34(v4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x24C235D70](1);
    sub_24AEFE148(&qword_281393400, MEMORY[0x277CC95F0]);
    sub_24AF3536C();
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    v14 = *v13;
    v15 = v13[1];
    MEMORY[0x24C235D70](0);
    sub_24AF353DC();
  }

  return sub_24AF35D4C();
}

void *sub_24AEFD794(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

size_t sub_24AEFD824(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0930, &qword_24AF38110);
  v4 = *(type metadata accessor for CorrelationIdentifier() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_24AEFD920(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v19;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CorrelationIdentifier()
{
  result = qword_27EFC09A8;
  if (!qword_27EFC09A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24AEFDAD4()
{
  result = qword_27EFC0990;
  if (!qword_27EFC0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0990);
  }

  return result;
}

uint64_t sub_24AEFDB28(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for CorrelationIdentifier();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = a4 + 7;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[7];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[6];
      v27 = *(v33 + 72);
      sub_24AEE2B34(v26 + v27 * (v25 | (v20 << 6)), v12);
      sub_24AEE2BF4(v12, v15);
      sub_24AEE2BF4(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s15FindMyMessaging21CorrelationIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AF3521C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CorrelationIdentifier();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v31 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A8, &qword_24AF37BC0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v31 - v19;
  v21 = (&v31 + *(v18 + 56) - v19);
  sub_24AEE2B34(a1, &v31 - v19);
  sub_24AEE2B34(a2, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24AEE2B34(v20, v15);
    v25 = *v15;
    v24 = v15[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v25 == *v21 && v24 == v21[1])
      {
        v29 = v21[1];
      }

      else
      {
        v27 = v21[1];
        v28 = sub_24AF35C4C();

        if ((v28 & 1) == 0)
        {
          sub_24AEE2B98(v20);
          goto LABEL_8;
        }
      }

      sub_24AEE2B98(v20);
      v22 = 1;
      return v22 & 1;
    }

LABEL_7:
    sub_24AEFE584(v20);
LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  sub_24AEE2B34(v20, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v8, v21, v4);
  v22 = sub_24AF351FC();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v13, v4);
  sub_24AEE2B98(v20);
  return v22 & 1;
}

uint64_t sub_24AEFE044(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24AEFE0AC()
{
  result = qword_27EFC0998;
  if (!qword_27EFC0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0998);
  }

  return result;
}

uint64_t sub_24AEFE148(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AEFE19C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24AEFE1E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for CorrelationIdentifierMap.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CorrelationIdentifierMap.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24AEFE3F0()
{
  result = sub_24AF3521C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of CorrelationIdentifierLookup.correlationIdentifier(destination:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AEE2410;

  return v11(a1, a2, a3);
}

uint64_t sub_24AEFE584(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A8, &qword_24AF37BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AEFE5EC()
{
  result = qword_27EFC09B8;
  if (!qword_27EFC09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC09B8);
  }

  return result;
}

uint64_t sub_24AEFE640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CorrelationIdentifier();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AEFE6DC()
{
  result = qword_27EFC09C0;
  if (!qword_27EFC09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC09C0);
  }

  return result;
}

uint64_t sub_24AEFE730()
{
  sub_24AF35D0C();
  sub_24AF35D3C();
  return sub_24AF35D4C();
}

uint64_t sub_24AEFE79C()
{
  sub_24AF35D0C();
  sub_24AF35D3C();
  return sub_24AF35D4C();
}

unint64_t sub_24AEFE7FC()
{
  result = qword_27EFC09C8;
  if (!qword_27EFC09C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC09D0, &qword_24AF384F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC09C8);
  }

  return result;
}

unint64_t sub_24AEFE870(void *a1)
{
  a1[1] = sub_24AEFE8A8();
  a1[2] = sub_24AEFE8FC();
  result = sub_24AEFE950();
  a1[3] = result;
  return result;
}

unint64_t sub_24AEFE8A8()
{
  result = qword_27EFC09D8;
  if (!qword_27EFC09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC09D8);
  }

  return result;
}

unint64_t sub_24AEFE8FC()
{
  result = qword_27EFC09E0;
  if (!qword_27EFC09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC09E0);
  }

  return result;
}

unint64_t sub_24AEFE950()
{
  result = qword_27EFC09E8;
  if (!qword_27EFC09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC09E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NullMessageType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NullMessageType(_WORD *result, int a2, int a3)
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

unint64_t sub_24AEFEB5C()
{
  *v0;
  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  else
  {
    v1 = 0xD000000000000018;
  }

  *v0;
  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t sub_24AEFEBE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AF00848(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AEFEC28(uint64_t a1)
{
  v2 = sub_24AEFF55C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AEFEC64(uint64_t a1)
{
  v2 = sub_24AEFF55C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AEFECAC(uint64_t a1)
{
  v2 = sub_24AEFF700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AEFECE8(uint64_t a1)
{
  v2 = sub_24AEFF700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AEFED24(uint64_t a1)
{
  v2 = sub_24AEFF658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AEFED60(uint64_t a1)
{
  v2 = sub_24AEFF658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AEFED9C(uint64_t a1)
{
  v2 = sub_24AEFF604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AEFEDD8(uint64_t a1)
{
  v2 = sub_24AEFF604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AEFEE14(uint64_t a1)
{
  v2 = sub_24AEFF754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AEFEE50(uint64_t a1)
{
  v2 = sub_24AEFF754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AEFEE8C(uint64_t a1)
{
  v2 = sub_24AEFF5B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AEFEEC8(uint64_t a1)
{
  v2 = sub_24AEFF5B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AEFEF04(uint64_t a1)
{
  v2 = sub_24AEFF6AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AEFEF40(uint64_t a1)
{
  v2 = sub_24AEFF6AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessagingCapability.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC09F0, "h<");
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC09F8, &qword_24AF385D8);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v44 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A00, &qword_24AF385E0);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v41 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A08, &qword_24AF385E8);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](v12);
  v38 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A10, &qword_24AF385F0);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x28223BE20](v15);
  v35 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A18, &qword_24AF385F8);
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A20, &qword_24AF38600);
  v22 = *(v50 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v50);
  v25 = &v34 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AEFF55C();
  sub_24AF35D6C();
  v28 = (v22 + 8);
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v54 = 3;
      sub_24AEFF658();
      v29 = v41;
      v30 = v50;
      sub_24AF35B5C();
      v32 = v42;
      v31 = v43;
    }

    else if (v26 == 4)
    {
      v55 = 4;
      sub_24AEFF604();
      v29 = v44;
      v30 = v50;
      sub_24AF35B5C();
      v32 = v45;
      v31 = v46;
    }

    else
    {
      v56 = 5;
      sub_24AEFF5B0();
      v29 = v47;
      v30 = v50;
      sub_24AF35B5C();
      v32 = v48;
      v31 = v49;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v52 = 1;
      sub_24AEFF700();
      v29 = v35;
      v30 = v50;
      sub_24AF35B5C();
      v32 = v36;
      v31 = v37;
    }

    else
    {
      v53 = 2;
      sub_24AEFF6AC();
      v29 = v38;
      v30 = v50;
      sub_24AF35B5C();
      v32 = v39;
      v31 = v40;
    }

LABEL_12:
    (*(v32 + 8))(v29, v31);
    return (*v28)(v25, v30);
  }

  v51 = 0;
  sub_24AEFF754();
  v30 = v50;
  sub_24AF35B5C();
  (*(v34 + 8))(v21, v18);
  return (*v28)(v25, v30);
}

unint64_t sub_24AEFF55C()
{
  result = qword_27EFC0A28;
  if (!qword_27EFC0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0A28);
  }

  return result;
}

unint64_t sub_24AEFF5B0()
{
  result = qword_27EFC0A30;
  if (!qword_27EFC0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0A30);
  }

  return result;
}

unint64_t sub_24AEFF604()
{
  result = qword_27EFC0A38;
  if (!qword_27EFC0A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0A38);
  }

  return result;
}

unint64_t sub_24AEFF658()
{
  result = qword_27EFC0A40;
  if (!qword_27EFC0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0A40);
  }

  return result;
}

unint64_t sub_24AEFF6AC()
{
  result = qword_27EFC0A48;
  if (!qword_27EFC0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0A48);
  }

  return result;
}

unint64_t sub_24AEFF700()
{
  result = qword_27EFC0A50;
  if (!qword_27EFC0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0A50);
  }

  return result;
}

unint64_t sub_24AEFF754()
{
  result = qword_27EFC0A58;
  if (!qword_27EFC0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0A58);
  }

  return result;
}

uint64_t MessagingCapability.hashValue.getter()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t MessagingCapability.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A60, &qword_24AF38608);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = &v52[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A68, &qword_24AF38610);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v66 = &v52[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A70, &qword_24AF38618);
  v11 = *(v10 - 8);
  v60 = v10;
  v61 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v70 = &v52[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A78, &qword_24AF38620);
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](v14);
  v69 = &v52[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A80, &qword_24AF38628);
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v52[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A88, &qword_24AF38630);
  v55 = *(v21 - 8);
  v22 = *(v55 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v52[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A90, &qword_24AF38638);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v52[-v28];
  v30 = a1[3];
  v31 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_24AEFF55C();
  v32 = v71;
  sub_24AF35D5C();
  if (!v32)
  {
    v54 = v21;
    v33 = v20;
    v35 = v69;
    v34 = v70;
    v71 = v26;
    v36 = v29;
    v37 = sub_24AF35B3C();
    if (*(v37 + 16) != 1 || (v38 = *(v37 + 32), v38 == 6))
    {
      v41 = sub_24AF3596C();
      swift_allocError();
      v43 = v42;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0A98, &qword_24AF38640) + 48);
      *v43 = &type metadata for MessagingCapability;
      sub_24AF35ABC();
      sub_24AF3595C();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
      swift_willThrow();
      (*(v71 + 8))(v36, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = *(v37 + 32);
      if (v38 > 2)
      {
        if (v38 == 3)
        {
          v48 = v68;
          v76 = 3;
          sub_24AEFF658();
          sub_24AF35AAC();
          v49 = v71;
          (*(v61 + 8))(v34, v60);
          (*(v49 + 8))(v29, v25);
          swift_unknownObjectRelease();
          v45 = v48;
        }

        else
        {
          v45 = v68;
          v46 = v71;
          if (v38 == 4)
          {
            v77 = 4;
            sub_24AEFF604();
            v47 = v66;
            sub_24AF35AAC();
            (*(v63 + 8))(v47, v62);
          }

          else
          {
            v78 = 5;
            sub_24AEFF5B0();
            v50 = v67;
            sub_24AF35AAC();
            (*(v64 + 8))(v50, v65);
          }

          (*(v46 + 8))(v29, v25);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v38)
        {
          if (v38 == 1)
          {
            v74 = 1;
            sub_24AEFF700();
            v39 = v33;
            sub_24AF35AAC();
            v40 = v71;
            (*(v56 + 8))(v39, v57);
          }

          else
          {
            v75 = 2;
            sub_24AEFF6AC();
            sub_24AF35AAC();
            v40 = v71;
            (*(v58 + 8))(v35, v59);
          }
        }

        else
        {
          v73 = 0;
          sub_24AEFF754();
          sub_24AF35AAC();
          (*(v55 + 8))(v24, v54);
          v40 = v71;
        }

        (*(v40 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v45 = v68;
      }

      *v45 = v53;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v72);
}

unint64_t sub_24AF00064()
{
  result = qword_281393268;
  if (!qword_281393268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281393268);
  }

  return result;
}

unint64_t sub_24AF000BC()
{
  result = qword_27EFC0AA0;
  if (!qword_27EFC0AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0AA8, &qword_24AF386B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Destination.DestinationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Destination.DestinationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AF00324()
{
  result = qword_27EFC0AB0;
  if (!qword_27EFC0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AB0);
  }

  return result;
}

unint64_t sub_24AF0037C()
{
  result = qword_27EFC0AB8;
  if (!qword_27EFC0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AB8);
  }

  return result;
}

unint64_t sub_24AF003D4()
{
  result = qword_27EFC0AC0;
  if (!qword_27EFC0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AC0);
  }

  return result;
}

unint64_t sub_24AF0042C()
{
  result = qword_27EFC0AC8;
  if (!qword_27EFC0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AC8);
  }

  return result;
}

unint64_t sub_24AF00484()
{
  result = qword_27EFC0AD0;
  if (!qword_27EFC0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AD0);
  }

  return result;
}

unint64_t sub_24AF004DC()
{
  result = qword_27EFC0AD8;
  if (!qword_27EFC0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AD8);
  }

  return result;
}

unint64_t sub_24AF00534()
{
  result = qword_27EFC0AE0;
  if (!qword_27EFC0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AE0);
  }

  return result;
}

unint64_t sub_24AF0058C()
{
  result = qword_27EFC0AE8;
  if (!qword_27EFC0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AE8);
  }

  return result;
}

unint64_t sub_24AF005E4()
{
  result = qword_27EFC0AF0;
  if (!qword_27EFC0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AF0);
  }

  return result;
}

unint64_t sub_24AF0063C()
{
  result = qword_27EFC0AF8;
  if (!qword_27EFC0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0AF8);
  }

  return result;
}

unint64_t sub_24AF00694()
{
  result = qword_27EFC0B00;
  if (!qword_27EFC0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B00);
  }

  return result;
}

unint64_t sub_24AF006EC()
{
  result = qword_27EFC0B08;
  if (!qword_27EFC0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B08);
  }

  return result;
}

unint64_t sub_24AF00744()
{
  result = qword_27EFC0B10;
  if (!qword_27EFC0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B10);
  }

  return result;
}

unint64_t sub_24AF0079C()
{
  result = qword_27EFC0B18;
  if (!qword_27EFC0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B18);
  }

  return result;
}

unint64_t sub_24AF007F4()
{
  result = qword_27EFC0B20;
  if (!qword_27EFC0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B20);
  }

  return result;
}

uint64_t sub_24AF00848(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x800000024AF37110 == a2;
  if (v4 || (sub_24AF35C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024AF37130 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024AF37150 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024AF37170 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024AF37190 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024AF371B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24AF35C4C();

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

uint64_t sub_24AF00A90(uint64_t a1, const char *a2)
{
  v2 = a1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v35 = v8;
  while (1)
  {
    v11 = v9;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v6)) | (v9 << 6);
    sub_24AEE2A84(*(v2 + 48) + 40 * v12, v44);
    sub_24AED0E50(*(v2 + 56) + 32 * v12, v45);
    sub_24AEE2A84(v44, &v37);
    if (swift_dynamicCast())
    {
      v41 = v40;
      v13 = v46;
      v14 = __swift_project_boxed_opaque_existential_1(v45, v46);
      *(&v43 + 1) = v13;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v42);
      (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v14, v13);
    }

    else
    {
      if (qword_27EFC0728 != -1)
      {
        swift_once();
      }

      v16 = sub_24AF3529C();
      __swift_project_value_buffer(v16, qword_27EFC4C00);
      sub_24AEE2A84(v44, &v37);
      v17 = sub_24AF3527C();
      v18 = sub_24AF3570C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v36 = v10;
        v20 = swift_slowAlloc();
        *&v40 = v20;
        *v19 = 136446210;
        v21 = sub_24AF358AC();
        v23 = v22;
        sub_24AEE2AE0(&v37);
        v24 = sub_24AEF599C(v21, v23, &v40);
        v2 = v35;

        *(v19 + 4) = v24;
        _os_log_impl(&dword_24AECF000, v17, v18, a2, v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        v25 = v20;
        v10 = v36;
        MEMORY[0x24C236490](v25, -1, -1);
        MEMORY[0x24C236490](v19, -1, -1);
      }

      else
      {

        sub_24AEE2AE0(&v37);
      }

      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
    }

    v6 &= v6 - 1;
    sub_24AEE2E10(v44, &qword_27EFC0810, &qword_24AF37C18);
    if (*(&v41 + 1))
    {
      v37 = v41;
      v38 = v42;
      v39 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_24AEF5854(0, v10[2] + 1, 1, v10);
      }

      v27 = v10[2];
      v26 = v10[3];
      if (v27 >= v26 >> 1)
      {
        v10 = sub_24AEF5854((v26 > 1), v27 + 1, 1, v10);
      }

      v10[2] = v27 + 1;
      v28 = &v10[6 * v27];
      v29 = v37;
      v30 = v39;
      v28[3] = v38;
      v28[4] = v30;
      v28[2] = v29;
    }

    else
    {
      sub_24AEE2E10(&v41, &qword_27EFC0B28, &unk_24AF38D70);
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v11;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  if (v10[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0770, &qword_24AF37B90);
    v31 = sub_24AF35A7C();
  }

  else
  {
    v31 = MEMORY[0x277D84F98];
  }

  v44[0] = v31;

  sub_24AF00F3C(v32, 1, v44);

  return v44[0];
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_24AF00F3C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_24AF012F8(a1 + 32, &v46);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_24AEE2FBC(v48, v43);
  v9 = *a3;
  v10 = sub_24AEDA1DC(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_24AEDB744(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_24AEDA1DC(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_24AF35C8C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_24AEDD390();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v43);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_24AEE2FBC(v43, (v22[7] + 32 * v10));
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v26 = a1 + 80;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_24AF012F8(v26, &v46);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_24AEE2FBC(v48, v43);
      v30 = *a3;
      v31 = sub_24AEDA1DC(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_24AEDB744(v35, 1);
        v37 = *a3;
        v31 = sub_24AEDA1DC(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_24AEE2FBC(v43, (v39[7] + 32 * v31));
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 48;
      if (v4 == v27)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_24AF3592C();
  MEMORY[0x24C235440](0xD00000000000001BLL, 0x800000024AF37210);
  sub_24AF35A0C();
  MEMORY[0x24C235440](39, 0xE100000000000000);
  sub_24AF35A3C();
  __break(1u);
}

uint64_t sub_24AF012F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0778, &qword_24AF38080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AF01368(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v33 = MEMORY[0x277D84F90];
  sub_24AEF6148(0, v1, 0);
  v2 = v33;
  v4 = -1 << *(a1 + 32);
  v32 = a1 + 56;
  result = sub_24AF357DC();
  v6 = result;
  v7 = 0;
  v26 = *MEMORY[0x277D188D8];
  v28 = *MEMORY[0x277D18878];
  v30 = *MEMORY[0x277D18870];
  v25 = *MEMORY[0x277D18900];
  v27 = *MEMORY[0x277D18880];
  v29 = *MEMORY[0x277D188B0];
  v31 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v32 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    *(*(a1 + 48) + v6);
    v11 = *(a1 + 36);
    result = sub_24AF353AC();
    v14 = *(v33 + 16);
    v13 = *(v33 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = v12;
      v24 = result;
      sub_24AEF6148((v13 > 1), v14 + 1, 1);
      v12 = v23;
      result = v24;
    }

    *(v33 + 16) = v14 + 1;
    v15 = v33 + 16 * v14;
    *(v15 + 32) = result;
    *(v15 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v32 + 8 * v10);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v31;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      v9 = v31;
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_24AF04640(v6, v11, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_24AF04640(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t MessagingOptions.dictionaryValue.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v77[-v4];
  v6 = sub_24AF3521C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0B30, &qword_24AF38DC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AF37AB0;
  v12 = *MEMORY[0x277D18678];
  *(inited + 32) = sub_24AF353AC();
  *(inited + 40) = v13;
  v14 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v15 = sub_24AEE2824(inited);
  swift_setDeallocating();
  sub_24AEE2E10(inited + 32, &qword_27EFC07D8, &qword_24AF38DD0);
  v16 = *MEMORY[0x277D18668];
  v17 = sub_24AF353AC();
  v19 = v18;
  v20 = sub_24AF351CC();
  v81 = MEMORY[0x277CC9318];
  *&v80 = v20;
  *(&v80 + 1) = v21;
  sub_24AED0F00(&v80, v79);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = v15;
  sub_24AF0305C(v79, v17, v19, isUniquelyReferenced_nonNull_native);

  v23 = v78;
  v24 = type metadata accessor for MessagingOptions();
  if (*(v1 + v24[6]) == 1)
  {
    v25 = *MEMORY[0x277D185B0];
    v26 = sub_24AF353AC();
    v27 = v14;
    v29 = v28;
    v81 = v27;
    LOBYTE(v80) = 1;
    sub_24AED0F00(&v80, v79);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v23;
    sub_24AF0305C(v79, v26, v29, v30);

    v23 = v78;
  }

  sub_24AEF8C60(v1 + v24[7], v5);
  v31 = (*(v7 + 48))(v5, 1, v6);
  v32 = MEMORY[0x277D837D0];
  if (v31 == 1)
  {
    sub_24AEE2E10(v5, &qword_27EFC11C0, &qword_24AF38DC0);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v33 = *MEMORY[0x277D18610];
    v34 = sub_24AF353AC();
    v36 = v35;
    v37 = sub_24AF351EC();
    v81 = v32;
    *&v80 = v37;
    *(&v80 + 1) = v38;
    sub_24AED0F00(&v80, v79);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v23;
    sub_24AF0305C(v79, v34, v36, v39);

    (*(v7 + 8))(v10, v6);
    v23 = v78;
  }

  v40 = (v1 + v24[8]);
  if ((v40[1] & 1) == 0)
  {
    v41 = *v40;
    v42 = *MEMORY[0x277D18650];
    v43 = sub_24AF353AC();
    v45 = v44;
    v81 = MEMORY[0x277D839F8];
    *&v80 = v41;
    sub_24AED0F00(&v80, v79);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v23;
    sub_24AF0305C(v79, v43, v45, v46);

    v23 = v78;
  }

  if (*(v1 + v24[9]) == 1)
  {
    v47 = *MEMORY[0x277D185C0];
    v48 = sub_24AF353AC();
    v50 = v49;
    v81 = MEMORY[0x277D839B0];
    LOBYTE(v80) = 1;
    sub_24AED0F00(&v80, v79);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v23;
    sub_24AF0305C(v79, v48, v50, v51);

    v23 = v78;
  }

  v52 = (v1 + v24[12]);
  v53 = v52[1];
  if (v53)
  {
    v54 = *v52;
    v55 = *MEMORY[0x277D18630];
    v56 = sub_24AF353AC();
    v58 = v57;
    v81 = v32;
    *&v80 = v54;
    *(&v80 + 1) = v53;
    sub_24AED0F00(&v80, v79);

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v23;
    sub_24AF0305C(v79, v56, v58, v59);

    v23 = v78;
  }

  v60 = *(v1 + v24[10]);
  if (*(v60 + 16))
  {
    v61 = sub_24AF01368(v60);
    v62 = sub_24AEF69F8(v61);

    v63 = *MEMORY[0x277D18638];
    v64 = sub_24AF353AC();
    v66 = v65;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0B38, &qword_24AF38DD8);
    *&v80 = v62;
    sub_24AED0F00(&v80, v79);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v23;
    sub_24AF0305C(v79, v64, v66, v67);

    v23 = v78;
  }

  v68 = *(v1 + v24[11]);
  if (*(v68 + 16))
  {
    v69 = sub_24AF01368(v68);
    v70 = sub_24AEF69F8(v69);

    v71 = *MEMORY[0x277D18640];
    v72 = sub_24AF353AC();
    v74 = v73;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0B38, &qword_24AF38DD8);
    *&v80 = v70;
    sub_24AED0F00(&v80, v79);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v23;
    sub_24AF0305C(v79, v72, v74, v75);

    return v78;
  }

  return v23;
}

double MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = type metadata accessor for MessagingOptions();
  v19 = v18[7];
  v20 = sub_24AF3521C();
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  sub_24AF3520C();
  *(a9 + v18[5]) = a1;
  *(a9 + v18[6]) = a2;
  sub_24AEF8E70(a3, a9 + v19);
  v21 = a9 + v18[8];
  *v21 = a4;
  *(v21 + 8) = a5 & 1;
  *(a9 + v18[9]) = a6;
  *(a9 + v18[10]) = a7;
  *(a9 + v18[11]) = a8;
  v22 = (a9 + v18[12]);
  *v22 = a10;
  v22[1] = a11;
  result = 3433.05319;
  *(a9 + v18[13]) = xmmword_24AF37E10;
  return result;
}

uint64_t MessagingOptions.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AF3521C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessagingOptions.destinations.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagingOptions() + 20));
}

uint64_t MessagingOptions.expectsPeerResponse.setter(char a1)
{
  result = type metadata accessor for MessagingOptions();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t MessagingOptions.responseIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessagingOptions() + 28);

  return sub_24AEF8C60(v3, a1);
}

uint64_t MessagingOptions.responseIdentifier.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MessagingOptions() + 28);

  return sub_24AEF8E70(a1, v3);
}

uint64_t MessagingOptions.timeToLive.getter()
{
  v1 = (v0 + *(type metadata accessor for MessagingOptions() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MessagingOptions.requiredCapabilities.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagingOptions() + 40));
}

uint64_t MessagingOptions.lackingCapabilities.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagingOptions() + 44));
}

uint64_t MessagingOptions.queueOneIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MessagingOptions() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MessagingOptions.timeout.getter()
{
  v1 = (v0 + *(type metadata accessor for MessagingOptions() + 52));
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:timeout:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = type metadata accessor for MessagingOptions();
  v20 = v19[7];
  v21 = sub_24AF3521C();
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  sub_24AF3520C();
  *(a9 + v19[5]) = a1;
  *(a9 + v19[6]) = a2;
  result = sub_24AEF8E70(a3, a9 + v20);
  v23 = a9 + v19[8];
  *v23 = a4;
  *(v23 + 8) = a5 & 1;
  *(a9 + v19[9]) = a6;
  *(a9 + v19[10]) = a7;
  *(a9 + v19[11]) = a8;
  v24 = (a9 + v19[12]);
  *v24 = a10;
  v24[1] = a11;
  v25 = (a9 + v19[13]);
  *v25 = a12;
  v25[1] = a13;
  return result;
}

uint64_t sub_24AF021F0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000013;
    v6 = 0x74756F656D6974;
    if (a1 == 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (a1 == 5)
    {
      v7 = 0x46646E4165726966;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0xD000000000000013;
    v3 = 0xD000000000000012;
    if (a1 != 3)
    {
      v3 = 0x694C6F54656D6974;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74616E6974736564;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24AF02364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24AF03E90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24AF02398(uint64_t a1)
{
  v2 = sub_24AF03678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AF023D4(uint64_t a1)
{
  v2 = sub_24AF03678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessagingOptions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0B40, &qword_24AF38DE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF03678();
  sub_24AF35D6C();
  LOBYTE(v22) = 0;
  sub_24AF3521C();
  sub_24AF037EC(&qword_27EFC0B50);
  sub_24AF35BCC();
  if (!v2)
  {
    v11 = type metadata accessor for MessagingOptions();
    *&v22 = *(v3 + v11[5]);
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0B58, &qword_24AF38DE8);
    sub_24AF03830(&qword_27EFC0B60, sub_24AF036CC);
    sub_24AF35BCC();
    v12 = *(v3 + v11[6]);
    LOBYTE(v22) = 2;
    sub_24AF35BAC();
    v13 = v11[7];
    LOBYTE(v22) = 3;
    sub_24AF35B8C();
    v14 = (v3 + v11[8]);
    v15 = *v14;
    v16 = *(v14 + 8);
    LOBYTE(v22) = 4;
    sub_24AF35B7C();
    v17 = *(v3 + v11[9]);
    LOBYTE(v22) = 5;
    sub_24AF35BAC();
    *&v22 = *(v3 + v11[10]);
    v23 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0760, &qword_24AF38DF0);
    sub_24AF03720(&qword_27EFC0B68, sub_24AF03798);
    sub_24AF35BCC();
    *&v22 = *(v3 + v11[11]);
    v23 = 7;
    sub_24AF35BCC();
    v18 = (v3 + v11[12]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v22) = 8;
    sub_24AF35B6C();
    v22 = *(v3 + v11[13]);
    v23 = 9;
    sub_24AF35BCC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MessagingOptions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v37 - v5;
  v6 = sub_24AF3521C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0B78, &qword_24AF38DF8);
  v43 = *(v46 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v12 = &v37 - v11;
  v13 = type metadata accessor for MessagingOptions();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 28);
  v42 = v7;
  (*(v7 + 56))(&v17[v18], 1, 1, v6);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF03678();
  v47 = v12;
  v20 = v48;
  sub_24AF35D5C();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_24AEE2E10(&v17[v18], &qword_27EFC11C0, &qword_24AF38DC0);
  }

  else
  {
    v21 = v43;
    v22 = v44;
    v48 = v18;
    v39 = v17;
    v40 = a1;
    v38 = v13;
    LOBYTE(v49) = 0;
    v23 = sub_24AF037EC(&qword_27EFC0B80);
    sub_24AF35B2C();
    v37 = v23;
    v24 = v39;
    (*(v42 + 32))(v39, v45, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0B58, &qword_24AF38DE8);
    v50 = 1;
    sub_24AF03830(&qword_27EFC0B88, sub_24AF038A8);
    sub_24AF35B2C();
    v25 = v38;
    *&v24[v38[5]] = v49;
    LOBYTE(v49) = 2;
    v45 = 0;
    v24[v25[6]] = sub_24AF35B0C() & 1;
    LOBYTE(v49) = 3;
    sub_24AF35AEC();
    sub_24AEF8E70(v22, &v24[v48]);
    LOBYTE(v49) = 4;
    v26 = sub_24AF35ADC();
    v27 = v38;
    v28 = &v24[v38[8]];
    *v28 = v26;
    v28[8] = v29 & 1;
    LOBYTE(v49) = 5;
    v30 = sub_24AF35B0C();
    v44 = v6;
    v24[v27[9]] = v30 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0760, &qword_24AF38DF0);
    v50 = 6;
    sub_24AF03720(&qword_27EFC0B98, sub_24AF038FC);
    sub_24AF35B2C();
    *&v24[v27[10]] = v49;
    v50 = 7;
    sub_24AF35B2C();
    v31 = v39;
    *&v39[v38[11]] = v49;
    LOBYTE(v49) = 8;
    v32 = sub_24AF35ACC();
    v33 = &v31[v38[12]];
    *v33 = v32;
    v33[1] = v34;
    v50 = 9;
    sub_24AF35B2C();
    (*(v21 + 8))(v47, v46);
    v35 = v39;
    *&v39[v38[13]] = v49;
    sub_24AF045D8(v35, v41, type metadata accessor for MessagingOptions);
    __swift_destroy_boxed_opaque_existential_0(v40);
    return sub_24AF03950(v35);
  }
}

_OWORD *sub_24AF0305C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24AEDA1DC(a2, a3);
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
      sub_24AEDCC54();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24AEDAABC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_24AEDA1DC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_24AF35C8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_24AED0F00(a1, v23);
  }

  else
  {
    sub_24AEDBDD0(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_24AF031AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24AF3521C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24AEDA254(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_24AEDCC7C();
      goto LABEL_7;
    }

    sub_24AEDAAE4(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_24AEDA254(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_24AEDBE3C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_24AF35C8C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_24AF03378(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v32 = a1;
  v11 = type metadata accessor for CorrelationIdentifier();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_24AEDA2F0(a4);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      sub_24AEDCEFC();
      goto LABEL_9;
    }

    sub_24AEDAEC4(v20, a5 & 1);
    v23 = *v6;
    v24 = sub_24AEDA2F0(a4);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_24AF35C8C();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v32;
  v27 = *v6;
  if (v21)
  {
    v28 = v27[7] + 24 * v17;
    v29 = *(v28 + 16);
    *v28 = v32;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3;
  }

  else
  {
    sub_24AF045D8(a4, v14, type metadata accessor for CorrelationIdentifier);
    return sub_24AEDBEF4(v17, v14, v26, a2, a3, v27);
  }
}

uint64_t sub_24AF0353C(uint64_t *a1, uint64_t a2, char a3)
{
  v7 = a1[3];
  v8 = __swift_mutable_project_boxed_opaque_existential_0(a1, v7);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  sub_24AF041E0(v11, a2, a3, v3, v7);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t type metadata accessor for MessagingOptions()
{
  result = qword_281393258;
  if (!qword_281393258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24AF03678()
{
  result = qword_27EFC0B48;
  if (!qword_27EFC0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B48);
  }

  return result;
}

unint64_t sub_24AF036CC()
{
  result = qword_281393188;
  if (!qword_281393188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281393188);
  }

  return result;
}

uint64_t sub_24AF03720(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0760, &qword_24AF38DF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AF03798()
{
  result = qword_27EFC0B70;
  if (!qword_27EFC0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B70);
  }

  return result;
}

uint64_t sub_24AF037EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24AF3521C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AF03830(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0B58, &qword_24AF38DE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AF038A8()
{
  result = qword_27EFC0B90;
  if (!qword_27EFC0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0B90);
  }

  return result;
}

unint64_t sub_24AF038FC()
{
  result = qword_27EFC0BA0;
  if (!qword_27EFC0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BA0);
  }

  return result;
}

uint64_t sub_24AF03950(uint64_t a1)
{
  v2 = type metadata accessor for MessagingOptions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24AF039D4()
{
  sub_24AF3521C();
  if (v0 <= 0x3F)
  {
    sub_24AF03BE8(319, &qword_281392DD8, &type metadata for Destination, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24AF03B34();
      if (v2 <= 0x3F)
      {
        sub_24AF03BE8(319, &qword_281392DD0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24AF03B8C();
          if (v4 <= 0x3F)
          {
            sub_24AF03BE8(319, qword_281392DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_24AF03B34()
{
  if (!qword_2813933F8)
  {
    sub_24AF3521C();
    v0 = sub_24AF3579C();
    if (!v1)
    {
      atomic_store(v0, &qword_2813933F8);
    }
  }
}

void sub_24AF03B8C()
{
  if (!qword_281392DC8)
  {
    sub_24AEF74EC();
    v0 = sub_24AF356BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281392DC8);
    }
  }
}

void sub_24AF03BE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for MessagingOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessagingOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AF03D8C()
{
  result = qword_27EFC0BA8;
  if (!qword_27EFC0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BA8);
  }

  return result;
}

unint64_t sub_24AF03DE4()
{
  result = qword_27EFC0BB0;
  if (!qword_27EFC0BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BB0);
  }

  return result;
}

unint64_t sub_24AF03E3C()
{
  result = qword_27EFC0BB8;
  if (!qword_27EFC0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BB8);
  }

  return result;
}

uint64_t sub_24AF03E90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24AF35C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEC000000736E6F69 || (sub_24AF35C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024AF37230 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024AF37250 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x694C6F54656D6974 && a2 == 0xEA00000000006576 || (sub_24AF35C4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x46646E4165726966 && a2 == 0xED0000746567726FLL || (sub_24AF35C4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024AF37270 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024AF37290 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024AF372B0 == a2 || (sub_24AF35C4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v5 = sub_24AF35C4C();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

_OWORD *sub_24AF041E0(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v10 = sub_24AF35A2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v36);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v16 = *a4;
  v18 = sub_24AEDA4FC(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 >= v21 && (a3 & 1) != 0)
  {
LABEL_7:
    v24 = *a4;
    if (v22)
    {
LABEL_8:
      v25 = (v24[7] + 32 * v18);
      __swift_destroy_boxed_opaque_existential_0(v25);
      return sub_24AED0F00(&v36, v25);
    }

    goto LABEL_11;
  }

  if (v23 >= v21 && (a3 & 1) == 0)
  {
    sub_24AEDD558();
    goto LABEL_7;
  }

  sub_24AEDBA30(v21, a3 & 1);
  v27 = *a4;
  v28 = sub_24AEDA4FC(a2);
  if ((v22 & 1) != (v29 & 1))
  {
LABEL_14:
    result = sub_24AF35C8C();
    __break(1u);
    return result;
  }

  v18 = v28;
  v24 = *a4;
  if (v22)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v11 + 16))(v14, a2, v10);
  v30 = v37;
  v31 = __swift_mutable_project_boxed_opaque_existential_0(&v36, v37);
  v32 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v36 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34);
  sub_24AF044D0(v18, v14, v34, v24, a5);
  return __swift_destroy_boxed_opaque_existential_0(&v36);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

_OWORD *sub_24AF044D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v18 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = sub_24AF35A2C();
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  result = sub_24AED0F00(&v17, (a4[7] + 32 * a1));
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_24AF045D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AF04640(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t Account.uniqueID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static Account.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AF35C4C();
  }
}

uint64_t sub_24AF046AC()
{
  sub_24AF35D0C();
  MEMORY[0x24C235D70](0);
  return sub_24AF35D4C();
}

uint64_t sub_24AF04718()
{
  sub_24AF35D0C();
  MEMORY[0x24C235D70](0);
  return sub_24AF35D4C();
}

uint64_t sub_24AF04770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449657571696E75 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24AF35C4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24AF047F8(uint64_t a1)
{
  v2 = sub_24AF049AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AF04834(uint64_t a1)
{
  v2 = sub_24AF049AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Account.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0BC0, &qword_24AF38FD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF049AC();
  sub_24AF35D6C();
  sub_24AF35B9C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24AF049AC()
{
  result = qword_27EFC0BC8;
  if (!qword_27EFC0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BC8);
  }

  return result;
}

uint64_t Account.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24AF353DC();
}

uint64_t Account.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AF35D0C();
  sub_24AF353DC();
  return sub_24AF35D4C();
}

uint64_t Account.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0BD0, &qword_24AF38FE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF049AC();
  sub_24AF35D5C();
  if (!v2)
  {
    v11 = sub_24AF35AFC();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_24AF04BC8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AF35D0C();
  sub_24AF353DC();
  return sub_24AF35D4C();
}

uint64_t sub_24AF04C14()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24AF353DC();
}

uint64_t sub_24AF04C1C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AF35D0C();
  sub_24AF353DC();
  return sub_24AF35D4C();
}

unint64_t sub_24AF04C68()
{
  result = qword_281392EE8;
  if (!qword_281392EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392EE8);
  }

  return result;
}

uint64_t sub_24AF04CD4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0BC0, &qword_24AF38FD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF049AC();
  sub_24AF35D6C();
  sub_24AF35B9C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_24AF04E10(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AF35C4C();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24AF04E4C(uint64_t a1, int a2)
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

uint64_t sub_24AF04E94(uint64_t result, int a2, int a3)
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

unint64_t sub_24AF04EF4()
{
  result = qword_27EFC0BD8;
  if (!qword_27EFC0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BD8);
  }

  return result;
}

unint64_t sub_24AF04F4C()
{
  result = qword_27EFC0BE0;
  if (!qword_27EFC0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BE0);
  }

  return result;
}

unint64_t sub_24AF04FA4()
{
  result = qword_27EFC0BE8;
  if (!qword_27EFC0BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0BE8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IDSSessionLinkSelectionStrategy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IDSSessionLinkSelectionStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24AF0505C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AF05078(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_24AF050A8(void *a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  v45 = a1;
  v46 = a2;
  v6 = sub_24AF3523C();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24AF3526C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0CF8, &unk_24AF39490);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
  v43 = *(v17 - 8);
  v44 = v17;
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D08, &qword_24AF394A0);
  v21 = *(v42 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v42);
  v24 = &v37 - v23;
  v25 = *a3;
  v26 = *(a3 + 8);
  swift_defaultActor_initialize();
  *(v4 + 144) = [objc_allocWithZone(type metadata accessor for IDSSessionDelegateTrampoline(0)) init];
  *(v4 + 152) = 2;
  v27 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionStateContinuation;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
  (*(*(v28 - 8) + 56))(v4 + v27, 1, 1, v28);
  *(v4 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionEventStreamTask) = 0;
  (*(v13 + 104))(v16, *MEMORY[0x277D85778], v12);
  sub_24AF3558C();
  (*(v13 + 8))(v16, v12);
  if (v26)
  {
    sub_24AF3524C();
  }

  else
  {
    v29 = v38;
    sub_24AF3522C();
    sub_24AF3525C();
    (*(v39 + 8))(v29, v40);
  }

  v30 = v46;
  sub_24AF356DC();
  v31 = v45;
  *(v4 + 112) = v45;
  *(v4 + 120) = v30;
  *(v4 + 128) = v25;
  *(v4 + 136) = v26;
  v32 = v31;
  v33 = v30;
  v34 = sub_24AF08578([v33 state]);

  v35 = *(v4 + 152);
  *(v4 + 152) = v34;
  sub_24AF08644(v35);
  (*(v21 + 32))(v4 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_packetStream, v24, v42);
  (*(v43 + 32))(v4 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_packetStreamContinuation, v20, v44);
  return v4;
}

id *sub_24AF05518()
{
  v1 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionEventStreamTask;
  if (*(v0 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionEventStreamTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionEventStreamTask);

    sub_24AF3562C();
  }

  sub_24AF08644(v0[19]);
  sub_24AEE2E10(v0 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionStateContinuation, &unk_27EFC0D50, &unk_24AF394D0);
  v3 = *(v0 + v1);

  v4 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_packetStream;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D08, &qword_24AF394A0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_packetStreamContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24AF05668()
{
  sub_24AF05518();

  return MEMORY[0x282200960](v0);
}

void sub_24AF056BC()
{
  sub_24AF07724();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_24AF07F04(319, &qword_27EFC0C48, MEMORY[0x277CC9318], MEMORY[0x277D857B8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_24AF07F04(319, &qword_27EFC0C50, MEMORY[0x277CC9318], MEMORY[0x277D85788]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24AF05840()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D28, &qword_24AF394C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionEventStreamTask;
  if (*(v1 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionEventStreamTask))
  {
    v14 = [v1[15] sessionID];
    if (v14)
    {
      v15 = v14;
      v16 = sub_24AF353AC();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    if (qword_27EFC0708 != -1)
    {
      swift_once();
    }

    v27 = sub_24AF3529C();
    __swift_project_value_buffer(v27, qword_27EFC0BF0);

    v39 = sub_24AF3527C();
    v28 = sub_24AF3570C();

    if (os_log_type_enabled(v39, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136315394;
      v31 = *v1;
      v32 = sub_24AF35DDC();
      v34 = sub_24AEF599C(v32, v33, &v40);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2082;
      v35 = sub_24AEF599C(v16, v18, &v40);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_24AECF000, v39, v28, "Startup already called on %s for session %{public}s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v30, -1, -1);
      MEMORY[0x24C236490](v29, -1, -1);
    }

    else
    {

      v36 = v39;
    }
  }

  else
  {
    v19 = v1[18];
    v38 = *(v7 + 16);
    v39 = v19;
    (v38)(&v37 - v11, v19 + OBJC_IVAR____TtC15FindMyMessagingP33_73A3C7F96E9958422E460E2154E4F64F28IDSSessionDelegateTrampoline_stream, v6);
    v20 = sub_24AF3557C();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    v21 = swift_allocObject();
    swift_weakInit();
    (v38)(v10, v12, v6);
    v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v38 = v5;
    v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    (*(v7 + 32))(v24 + v22, v10, v6);
    *(v24 + v23) = v21;
    v25 = sub_24AF08F10(0, 0, v38, &unk_24AF394E8, v24);
    v26 = *(v1 + v13);
    *(v1 + v13) = v25;

    [v1[15] setDelegate:v39 queue:*(&v39->isa + OBJC_IVAR____TtC15FindMyMessagingP33_73A3C7F96E9958422E460E2154E4F64F28IDSSessionDelegateTrampoline_queue)];
    (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_24AF05D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D50, &unk_24AF394D0) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D60, &unk_24AF394F0);
  v5[21] = v10;
  v11 = *(v10 - 8);
  v5[22] = v11;
  v12 = *(v11 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF05E8C, 0, 0);
}

uint64_t sub_24AF05E8C()
{
  v1 = v0[23];
  v2 = v0[14];
  v3 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D28, &qword_24AF394C0);
  sub_24AF355FC();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_24AF05F74;
  v6 = v0[23];
  v7 = v0[21];

  return MEMORY[0x2822003E8](v0 + 11, 0, 0, v7);
}

uint64_t sub_24AF05F74()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24AF06070, 0, 0);
}

uint64_t sub_24AF06070()
{
  v1 = v0[11];
  v2 = v0[12];
  v0[25] = v1;
  v0[26] = v2;
  if (v2 == 2)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
LABEL_11:
    v11 = v0[23];
    v12 = v0[19];
    v13 = v0[20];
    v14 = v0[18];

    v15 = v0[1];

    return v15();
  }

  v3 = v0[15];
  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (!Strong)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    sub_24AF087F4(v1, v2);
    goto LABEL_11;
  }

  v5 = Strong;
  if (v2 == 1)
  {
    if (qword_27EFC0708 != -1)
    {
      swift_once();
    }

    v6 = sub_24AF3529C();
    __swift_project_value_buffer(v6, qword_27EFC0BF0);
    v7 = sub_24AF3527C();
    v8 = sub_24AF3572C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AECF000, v7, v8, "Session started", v9, 2u);
      MEMORY[0x24C236490](v9, -1, -1);
    }

    v10 = sub_24AF064A4;
    goto LABEL_26;
  }

  if (v2)
  {
    sub_24AF08888(v1, v2);
    if (qword_27EFC0708 != -1)
    {
      swift_once();
    }

    v17 = sub_24AF3529C();
    __swift_project_value_buffer(v17, qword_27EFC0BF0);
    sub_24AF08888(v1, v2);
    v18 = sub_24AF3527C();
    v19 = sub_24AF3572C();
    sub_24AF087F4(v1, v2);
    if (!os_log_type_enabled(v18, v19))
    {

      sub_24AF087F4(v1, v2);
      goto LABEL_25;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 67109378;
    *(v20 + 4) = v1;
    *(v20 + 8) = 2112;
    sub_24AF08888(v1, v2);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 10) = v22;
    *v21 = v22;
    _os_log_impl(&dword_24AECF000, v18, v19, "Session ended with reason: %u, error: %@", v20, 0x12u);
    sub_24AEE2E10(v21, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v21, -1, -1);
    MEMORY[0x24C236490](v20, -1, -1);
    sub_24AF087F4(v1, v2);
  }

  else
  {
    if (qword_27EFC0708 != -1)
    {
      swift_once();
    }

    v23 = sub_24AF3529C();
    __swift_project_value_buffer(v23, qword_27EFC0BF0);
    v18 = sub_24AF3527C();
    v24 = sub_24AF3572C();
    if (os_log_type_enabled(v18, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = v1;
      _os_log_impl(&dword_24AECF000, v18, v24, "Session ended with reason: %u", v25, 8u);
      MEMORY[0x24C236490](v25, -1, -1);
    }
  }

LABEL_25:
  v10 = sub_24AF066CC;
LABEL_26:

  return MEMORY[0x2822009F8](v10, v5, 0);
}

uint64_t sub_24AF064A4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  v3 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionStateContinuation;
  swift_beginAccess();
  sub_24AF08818(v1 + v3, v2);

  return MEMORY[0x2822009F8](sub_24AF0653C, 0, 0);
}

uint64_t sub_24AF0653C()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[27];
  v6 = v0[25];
  if (v4)
  {
    v7 = v0[27];

    sub_24AF087F4(v6, 1);
    sub_24AEE2E10(v1, &unk_27EFC0D50, &unk_24AF394D0);
  }

  else
  {
    v8 = v0[18];
    (*(v3 + 16))(v8, v1, v2);
    sub_24AEE2E10(v1, &unk_27EFC0D50, &unk_24AF394D0);
    sub_24AF3553C();

    sub_24AF087F4(v6, 1);
    (*(v3 + 8))(v8, v2);
  }

  v9 = *(MEMORY[0x277D85798] + 4);
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_24AF05F74;
  v11 = v0[23];
  v12 = v0[21];

  return MEMORY[0x2822003E8](v0 + 11, 0, 0, v12);
}

uint64_t sub_24AF066CC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  v3 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionStateContinuation;
  swift_beginAccess();
  sub_24AF08818(v1 + v3, v2);

  return MEMORY[0x2822009F8](sub_24AF06764, 0, 0);
}

uint64_t sub_24AF06764()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  if ((*(v3 + 48))(v1, 1, v2))
  {
    v5 = v0[26];
    v4 = v0[27];
    v6 = v0[25];

    sub_24AF087F4(v6, v5);
    sub_24AEE2E10(v1, &unk_27EFC0D50, &unk_24AF394D0);
  }

  else
  {
    v8 = v0[26];
    v7 = v0[27];
    v9 = v0[25];
    v10 = v0[18];
    (*(v3 + 16))(v10, v1, v2);
    sub_24AEE2E10(v1, &unk_27EFC0D50, &unk_24AF394D0);
    sub_24AEF7038();
    v11 = swift_allocError();
    *v12 = v9;
    *(v12 + 8) = 0;
    v0[13] = v11;
    sub_24AF3552C();
    sub_24AF087F4(v9, v8);

    (*(v3 + 8))(v10, v2);
  }

  v13 = *(MEMORY[0x277D85798] + 4);
  v14 = swift_task_alloc();
  v0[24] = v14;
  *v14 = v0;
  v14[1] = sub_24AF05F74;
  v15 = v0[23];
  v16 = v0[21];

  return MEMORY[0x2822003E8](v0 + 11, 0, 0, v16);
}

void sub_24AF06934(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = sub_24AF3516C();
  [v1 acceptInvitationWithData_];
}

void sub_24AF06994(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = sub_24AF3516C();
  [v1 sendInvitationWithData:v2 declineOnError:1];
}

uint64_t sub_24AF069F8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D50, &unk_24AF394D0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF06A98, v2, 0);
}

uint64_t sub_24AF06A98()
{
  v1 = *(v0 + 80);
  sub_24AF08E4C(&unk_27EFC0D90, type metadata accessor for IDSSessionWrapper);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  v3 = *(v0 + 64);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_24AF06BCC;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24AF06BCC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_24AF06DE0;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 80);

    v5 = sub_24AF06CF4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AF06CF4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionStateContinuation;
  swift_beginAccess();
  sub_24AF08EA0(v2, v1 + v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AF06DE0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionStateContinuation;
  swift_beginAccess();
  sub_24AF08EA0(v2, v3 + v5);
  swift_endAccess();

  v6 = v0[1];
  v7 = v0[14];

  return v6();
}

uint64_t sub_24AF06ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v23 = a4;
  v24 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D50, &unk_24AF394D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_sessionStateContinuation;
  swift_beginAccess();
  sub_24AF08818(a2 + v13, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v12, 1, v14);
  sub_24AEE2E10(v12, &unk_27EFC0D50, &unk_24AF394D0);
  if (v16 != 1)
  {
    if (qword_27EFC0708 != -1)
    {
      swift_once();
    }

    v17 = sub_24AF3529C();
    __swift_project_value_buffer(v17, qword_27EFC0BF0);
    v18 = sub_24AF3527C();
    v19 = sub_24AF3570C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24AECF000, v18, v19, "Overriding an existing continuation, this is a programming error", v20, 2u);
      MEMORY[0x24C236490](v20, -1, -1);
    }
  }

  (*(v15 + 16))(v10, a1, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  swift_beginAccess();
  sub_24AF08EA0(v10, a2 + v13);
  v21 = swift_endAccess();
  return v24(v21);
}

uint64_t sub_24AF07168()
{
  v7 = *MEMORY[0x277D85DE8];
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24AF07260, v0, 0);
}

uint64_t sub_24AF07260()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = [*(v0[3] + 120) destination];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0[3] + 112);
    v0[2] = 0;
    v4 = [v3 datagramConnectionForSessionDestination:v2 error:v0 + 2];
    v0[7] = v4;

    v5 = v0[2];
    if (v4)
    {
      (*(v0[5] + 16))(v0[6], v0[3] + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_packetStreamContinuation, v0[4]);
      v6 = type metadata accessor for SessionMessagingDatagramConnection(0);
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      v9 = v5;
      v10 = v4;
      v11 = swift_task_alloc();
      v0[8] = v11;
      *v11 = v0;
      v11[1] = sub_24AF07544;
      v12 = v0[6];
      v13 = *MEMORY[0x277D85DE8];

      return sub_24AEE2FC4(v10, v12);
    }

    v20 = v5;
    sub_24AF350DC();
  }

  else
  {
    if (qword_27EFC0708 != -1)
    {
      swift_once();
    }

    v15 = sub_24AF3529C();
    __swift_project_value_buffer(v15, qword_27EFC0BF0);
    v16 = sub_24AF3527C();
    v17 = sub_24AF3570C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24AECF000, v16, v17, "No session destination", v18, 2u);
      MEMORY[0x24C236490](v18, -1, -1);
    }

    sub_24AEF7038();
    swift_allocError();
    *v19 = 2;
    *(v19 + 8) = 2;
  }

  v21 = v0[6];
  swift_willThrow();

  v22 = v0[1];
  v23 = *MEMORY[0x277D85DE8];

  return v22();
}

uint64_t sub_24AF07544(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 72) = a1;

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24AF07688, v3, 0);
}

uint64_t sub_24AF07688()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);
  v4 = *MEMORY[0x277D85DE8];

  return v2(v3);
}

void sub_24AF07724()
{
  if (!qword_27EFC0C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0C40, &qword_24AF37D10);
    v0 = sub_24AF3579C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC0C38);
    }
  }
}

id sub_24AF07788()
{
  ObjectType = swift_getObjectType();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D20, &qword_24AF394B8);
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = *(v36 + 64);
  MEMORY[0x28223BE20](v0);
  v35 = &v29 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D18, &qword_24AF394B0);
  v38 = *(v40 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v32 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D28, &qword_24AF394C0);
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v31 = sub_24AF3574C();
  v9 = *(v31 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24AF3573C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_24AF352CC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v30 = OBJC_IVAR____TtC15FindMyMessagingP33_73A3C7F96E9958422E460E2154E4F64F28IDSSessionDelegateTrampoline_queue;
  sub_24AED0EAC(0, &qword_281392DC0, 0x277D85C78);
  sub_24AF352BC();
  v43 = MEMORY[0x277D84F90];
  sub_24AF08E4C(&qword_27EFC0D38, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D40, &qword_24AF394C8);
  sub_24AF08664();
  sub_24AF357CC();
  (*(v9 + 104))(v12, *MEMORY[0x277D85260], v31);
  v17 = sub_24AF3575C();
  v18 = v39;
  *&v39[v30] = v17;
  v20 = v35;
  v19 = v36;
  v21 = v37;
  (*(v36 + 104))(v35, *MEMORY[0x277D85778], v37);
  v22 = v32;
  sub_24AF3558C();
  (*(v19 + 8))(v20, v21);
  v24 = v33;
  v23 = v34;
  (*(v33 + 16))(v18 + OBJC_IVAR____TtC15FindMyMessagingP33_73A3C7F96E9958422E460E2154E4F64F28IDSSessionDelegateTrampoline_stream, v8, v34);
  v25 = v38;
  v26 = v40;
  (*(v38 + 16))(v18 + OBJC_IVAR____TtC15FindMyMessagingP33_73A3C7F96E9958422E460E2154E4F64F28IDSSessionDelegateTrampoline_continuation, v22, v40);
  v42.receiver = v18;
  v42.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v42, sel_init);
  (*(v25 + 8))(v22, v26);
  (*(v24 + 8))(v8, v23);
  return v27;
}

id sub_24AF07CB4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24AF07DE8()
{
  sub_24AF07F04(319, &qword_27EFC0C88, &type metadata for IDSSessionDelegateTrampoline.Event, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24AF07F04(319, &qword_27EFC0C90, &type metadata for IDSSessionDelegateTrampoline.Event, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_24AF07F04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_15FindMyMessaging28IDSSessionDelegateTrampoline33_73A3C7F96E9958422E460E2154E4F64FLLC5EventO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AF081C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AF08220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_24AF0827C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15FindMyMessaging17IDSSessionWrapperC12SessionStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AF082E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AF08344(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_24AF083A0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15FindMyMessaging17IDSSessionWrapperC7FailureO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_24AF083FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24AF08444(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AF08488(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_24AF084B0()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC0BF0);
  v1 = __swift_project_value_buffer(v0, qword_27EFC0BF0);
  if (qword_27EFC0710 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFC4BD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AF08578(unsigned int a1)
{
  if (a1 < 3)
  {
    return 2 - a1;
  }

  sub_24AF3592C();

  v2 = sub_24AF35C0C();
  MEMORY[0x24C235440](v2);

  result = sub_24AF35A3C();
  __break(1u);
  return result;
}

void sub_24AF08644(id a1)
{
  if (a1 != 2)
  {
    sub_24AF08654(a1);
  }
}

void sub_24AF08654(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_24AF08664()
{
  result = qword_27EFC0D48;
  if (!qword_27EFC0D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0D40, &qword_24AF394C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0D48);
  }

  return result;
}

uint64_t sub_24AF086C8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D28, &qword_24AF394C0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AEE555C;

  return sub_24AF05D14(a1, v6, v7, v1 + v5, v8);
}

void sub_24AF087F4(int a1, id a2)
{
  if (a2 != 2)
  {
    sub_24AF08804(a1, a2);
  }
}

void sub_24AF08804(int a1, id a2)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_24AF08818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D50, &unk_24AF394D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_24AF08888(int a1, id a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

void sub_24AF0889C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = [a1 accounts];
  if (!v8)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  v9 = v8;
  v46 = v5;
  v47 = v4;
  v44 = v7;
  sub_24AED0EAC(0, &qword_27EFC0D78, 0x277D186C0);
  sub_24AF08DE4();
  v10 = sub_24AF3566C();

  v48 = a1;
  v45 = v6;
  if ((v10 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24AF3581C();
    sub_24AF356AC();
    v12 = v51;
    v11 = v52;
    v13 = v53;
    v14 = v54;
    v15 = v55;
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v11 = v10 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);

    v14 = 0;
    v12 = v10;
  }

  if (v12 < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v19 = v14;
  v20 = v15;
  v21 = v14;
  if (!v15)
  {
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= ((v13 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v20 = *(v11 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_13:
  v22 = (v20 - 1) & v20;
  v23 = *(*(v12 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
  if (!v23)
  {
LABEL_20:

    sub_24AEFDA80();

    v21 = v48;
    if (qword_27EFC0708 == -1)
    {
LABEL_21:
      v25 = sub_24AF3529C();
      __swift_project_value_buffer(v25, qword_27EFC0BF0);
      v26 = v21;
      v27 = sub_24AF3527C();
      v28 = sub_24AF3570C();
      if (!os_log_type_enabled(v27, v28))
      {

        goto LABEL_25;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v49 = v30;
      *v29 = 136446210;
      v31 = [v26 serviceIdentifier];

      if (v31)
      {
        v32 = sub_24AF353AC();
        v34 = v33;

        v35 = sub_24AEF599C(v32, v34, &v49);

        *(v29 + 4) = v35;
        _os_log_impl(&dword_24AECF000, v27, v28, "No accounts in: %{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x24C236490](v30, -1, -1);
        MEMORY[0x24C236490](v29, -1, -1);
LABEL_25:

        v49 = 0;
        LOBYTE(v50) = 2;
        sub_24AEF7038();
        swift_willThrowTypedImpl();

        return;
      }

      goto LABEL_32;
    }

LABEL_30:
    swift_once();
    goto LABEL_21;
  }

  while (([v23 isActive] & 1) == 0)
  {

    v14 = v21;
    v15 = v22;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v24 = sub_24AF3587C();
    if (v24)
    {
      v56 = v24;
      swift_dynamicCast();
      v23 = v49;
      v21 = v14;
      v22 = v15;
      if (v49)
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  sub_24AEFDA80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D88, &qword_24AF39500);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AF37AB0;
  v49 = v46;
  v50 = v47;
  v37 = v23;
  sub_24AF358DC();
  sub_24AEF6AC8(inited);
  swift_setDeallocating();
  sub_24AEE2AE0(inited + 32);
  v38 = objc_allocWithZone(MEMORY[0x277D18788]);
  v39 = sub_24AF3565C();

  v40 = [v38 initWithAccount:v37 destinations:v39 transportType:0];

  if (v40)
  {
    v49 = v45;
    LOBYTE(v50) = v44;
    v41 = type metadata accessor for IDSSessionWrapper(0);
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    sub_24AF050A8(v48, v40, &v49);
  }

  else
  {
    v49 = 1;
    LOBYTE(v50) = 2;
    sub_24AEF7038();
    swift_willThrowTypedImpl();
  }
}

unint64_t sub_24AF08DE4()
{
  result = qword_27EFC0D80;
  if (!qword_27EFC0D80)
  {
    sub_24AED0EAC(255, &qword_27EFC0D78, 0x277D186C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0D80);
  }

  return result;
}

uint64_t sub_24AF08E4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AF08EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D50, &unk_24AF394D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AF08F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24AF11D88(a3, v27 - v11);
  v13 = sub_24AF3557C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24AEE2E10(v12, &qword_27EFC08A8, &qword_24AF37D30);
  }

  else
  {
    sub_24AF3556C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24AF3551C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24AF353CC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_24AEE2E10(a3, &qword_27EFC08A8, &qword_24AF37D30);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AEE2E10(a3, &qword_27EFC08A8, &qword_24AF37D30);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24AF09200(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_24AF09680(a1, a2, a3);
  return v9;
}

uint64_t sub_24AF09284(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_24AF031AC(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_24AF3521C();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_24AEDA254(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_24AEDCC7C();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_24AF3521C();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_24AF10170(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_24AF3521C();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_24AF09444(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_24AEE2FBC(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_24AF0353C(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_24AF35A2C();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_24AEE2E10(a1, &qword_27EFC0F80, &qword_24AF39A98);
    sub_24AF10094(a2, v10);
    v8 = sub_24AF35A2C();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_24AEE2E10(v10, &qword_27EFC0F80, &qword_24AF39A98);
  }

  return result;
}

uint64_t sub_24AF09560(uint64_t a1)
{
  v2 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_24AF09570(uint64_t a1)
{
  v2 = *(v1 + 176);
  *(v1 + 176) = a1;
}

uint64_t sub_24AF09580@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  type metadata accessor for SessionMessage();
  v6 = sub_24AF3561C();
  a1[3] = v6;
  a1[4] = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v8 = *(*(v6 - 8) + 16);

  return v8(boxed_opaque_existential_0, v1 + v3, v6);
}

char *sub_24AF09680(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v44 = a1;
  v45 = a2;
  v6 = *(*v3 + 80);
  v7 = *(*v3 + 88);
  type metadata accessor for SessionMessage();
  v8 = sub_24AF355BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = sub_24AF355EC();
  v42 = *(v13 - 8);
  v43 = v13;
  v14 = *(v42 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v41 = sub_24AF3561C();
  v17 = *(v41 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v41);
  v20 = &v37 - v19;
  v21 = *a3;
  v22 = a3[1];
  v23 = a3[3];
  v39 = a3[2];
  v40 = v21;
  v38 = v23;
  v24 = a3[4];
  swift_defaultActor_initialize();
  *(v4 + 16) = 0;
  (*(v9 + 104))(v12, *MEMORY[0x277D85778], v8);
  sub_24AF3558C();
  (*(v9 + 8))(v12, v8);
  v25 = v41;
  (*(v17 + 16))(&v4[*(*v4 + 144)], v20, v41);
  v27 = v42;
  v26 = v43;
  (*(v42 + 16))(&v4[*(*v4 + 152)], v16, v43);
  v28 = v45;
  *(v4 + 14) = v44;
  *(v4 + 15) = v28;
  v30 = v39;
  v29 = v40;
  *(v4 + 17) = v40;
  *(v4 + 18) = v22;
  v31 = v38;
  *(v4 + 19) = v30;
  *(v4 + 20) = v31;
  *(v4 + 21) = v24;
  *&v46 = v29;
  *(&v46 + 1) = v22;
  v47 = v30;
  v48 = v31;
  v49 = v24;
  v32 = type metadata accessor for Heartbeater();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = Heartbeater.init(configuration:)(&v46);
  (*(v27 + 8))(v16, v26);
  (*(v17 + 8))(v20, v25);
  *(v4 + 22) = v35;
  return v4;
}

void sub_24AF099DC()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D08, &qword_24AF394A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  if (v1[16])
  {
    if (qword_27EFC0718 != -1)
    {
      swift_once();
    }

    v14 = sub_24AF3529C();
    __swift_project_value_buffer(v14, qword_27EFC0E00);

    v33 = sub_24AF3527C();
    v15 = sub_24AF3570C();

    if (os_log_type_enabled(v33, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136315138;
      v18 = *v1;
      v19 = sub_24AF35DDC();
      v21 = sub_24AEF599C(v19, v20, &v34);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_24AECF000, v33, v15, "Startup already called on %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C236490](v17, -1, -1);
      MEMORY[0x24C236490](v16, -1, -1);
    }

    else
    {
      v32 = v33;
    }
  }

  else
  {
    v22 = v1[14];
    v33 = v2;
    v23 = *(v8 + 16);
    v23(&v33 - v12, v22 + OBJC_IVAR____TtC15FindMyMessaging17IDSSessionWrapper_packetStream, v7);
    v24 = sub_24AF3557C();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    v25 = swift_allocObject();
    swift_weakInit();
    v23(v11, v13, v7);
    v26 = (*(v8 + 80) + 48) & ~*(v8 + 80);
    v27 = (v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    v28[2].isa = 0;
    v28[3].isa = 0;
    v29 = v33;
    v28[4].isa = v33[10].isa;
    v28[5].isa = v29[11].isa;
    (*(v8 + 32))(v28 + v26, v11, v7);
    *(&v28->isa + v27) = v25;
    v30 = sub_24AF08F10(0, 0, v6, &unk_24AF39518, v28);
    v31 = v1[16];
    v1[16] = v30;

    sub_24AF0A9D0();
    (*(v8 + 8))(v13, v7);
  }
}

uint64_t sub_24AF09E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  type metadata accessor for SessionMessage();
  v6 = sub_24AF355EC();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F98, &unk_24AF39B10);
  v5[16] = v9;
  v10 = *(v9 - 8);
  v5[17] = v10;
  v11 = *(v10 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF09F74, 0, 0);
}

uint64_t sub_24AF09F74()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D08, &qword_24AF394A0);
  sub_24AF355FC();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_24AF0A05C;
  v6 = v0[18];
  v7 = v0[16];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v7);
}

uint64_t sub_24AF0A05C()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24AF0A158, 0, 0);
}

uint64_t sub_24AF0A158()
{
  v25 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v0[20] = v2;
  v0[21] = v1;
  if (v1 >> 60 == 15)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
LABEL_13:
    v16 = v0[12];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v19 = v0[14];
      v18 = v0[15];
      v20 = v0[13];
      (*(v19 + 16))(v18, Strong + *(*Strong + 152), v20);

      sub_24AF355DC();
      (*(v19 + 8))(v18, v20);
    }

    v21 = v0[18];
    v22 = v0[15];

    v23 = v0[1];

    return v23();
  }

  v3 = v0[12];
  v4 = swift_weakLoadStrong();
  v0[22] = v4;
  if (!v4)
  {
    if (qword_27EFC0718 != -1)
    {
      swift_once();
    }

    v7 = sub_24AF3529C();
    __swift_project_value_buffer(v7, qword_27EFC0E00);
    v8 = sub_24AF3527C();
    v9 = sub_24AF356EC();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[17];
    v11 = v0[18];
    v13 = v0[16];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_24AEF599C(0x2870757472617473, 0xE900000000000029, &v24);
      _os_log_impl(&dword_24AECF000, v8, v9, "%{public}s self has been deallocated.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C236490](v15, -1, -1);
      MEMORY[0x24C236490](v14, -1, -1);

      sub_24AF11EB0(v2, v1);
    }

    else
    {
      sub_24AF11EB0(v2, v1);
    }

    (*(v12 + 8))(v11, v13);
    goto LABEL_13;
  }

  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_24AF0A480;

  return sub_24AF0B68C(v2, v1);
}

uint64_t sub_24AF0A480()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_24AF0A650;
  }

  else
  {
    v3 = sub_24AF0A594;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AF0A594()
{
  v1 = v0[22];
  sub_24AF11EB0(v0[20], v0[21]);

  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_24AF0A05C;
  v4 = v0[18];
  v5 = v0[16];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v5);
}

uint64_t sub_24AF0A650()
{
  v1 = v0[22];

  if (qword_27EFC0718 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = sub_24AF3529C();
  __swift_project_value_buffer(v5, qword_27EFC0E00);
  sub_24AF11EC4(v4, v3);
  sub_24AF11EC4(v4, v3);
  sub_24AF11EC4(v4, v3);
  v6 = v2;
  v7 = sub_24AF3527C();
  v8 = sub_24AF3570C();
  sub_24AF11EB0(v4, v3);

  if (!os_log_type_enabled(v7, v8))
  {
    v23 = v0[24];
    v25 = v0[20];
    v24 = v0[21];
    sub_24AF11EB0(v25, v24);
    sub_24AF11EB0(v25, v24);

    sub_24AF11EB0(v25, v24);
    goto LABEL_16;
  }

  v10 = v0[20];
  v9 = v0[21];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v0[10] = v13;
  *v11 = 136315650;
  sub_24AEE5154(v10, v9);
  v14 = sub_24AF3515C();
  v16 = v15;
  sub_24AF11EB0(v10, v9);
  v17 = sub_24AEF599C(v14, v16, v0 + 10);

  *(v11 + 4) = v17;
  *(v11 + 12) = 2050;
  v18 = v9 >> 62;
  v19 = v0[20];
  v20 = v0[21];
  if ((v9 >> 62) > 1)
  {
    if (v18 != 2)
    {
      sub_24AF11EB0(v19, v20);
      v22 = 0;
      goto LABEL_15;
    }

    v27 = *(v19 + 16);
    v26 = *(v19 + 24);
    v19 = sub_24AF11EB0(v19, v20);
    v22 = v26 - v27;
    if (!__OFSUB__(v26, v27))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v28 = HIDWORD(v19);
    v29 = v19;
    v30 = sub_24AF11EB0(v19, v20);
    LODWORD(v22) = v28 - v29;
    if (__OFSUB__(v28, v29))
    {
      __break(1u);
      return MEMORY[0x2822003E8](v30, v31, v32, v33);
    }

    v22 = v22;
    goto LABEL_15;
  }

  if (v18)
  {
    goto LABEL_12;
  }

  v21 = v0[21];
  sub_24AF11EB0(v19, v20);
  v22 = BYTE6(v21);
LABEL_15:
  v34 = v0[24];
  v36 = v0[20];
  v35 = v0[21];
  *(v11 + 14) = v22;
  sub_24AF11EB0(v36, v35);
  *(v11 + 22) = 2112;
  v37 = v34;
  v38 = _swift_stdlib_bridgeErrorToNSError();
  *(v11 + 24) = v38;
  *v12 = v38;
  _os_log_impl(&dword_24AECF000, v7, v8, "Failed to handle %s of %{public}ld B: %@", v11, 0x20u);
  sub_24AEE2E10(v12, &qword_27EFC0D70, &qword_24AF37D20);
  MEMORY[0x24C236490](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v13);
  MEMORY[0x24C236490](v13, -1, -1);
  MEMORY[0x24C236490](v11, -1, -1);

  sub_24AF11EB0(v36, v35);
LABEL_16:
  v39 = *(MEMORY[0x277D85798] + 4);
  v40 = swift_task_alloc();
  v0[19] = v40;
  *v40 = v0;
  v40[1] = sub_24AF0A05C;
  v41 = v0[18];
  v33 = v0[16];
  v30 = (v0 + 8);
  v31 = 0;
  v32 = 0;

  return MEMORY[0x2822003E8](v30, v31, v32, v33);
}

uint64_t sub_24AF0A9D0()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = v0[21];
  v8 = *(v0 + 19);
  v25 = *(v0 + 17);
  v26 = v8;
  v27 = v7;
  v9 = type metadata accessor for Heartbeater();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = Heartbeater.init(configuration:)(&v25);
  v13 = OBJC_IVAR____TtC15FindMyMessaging11Heartbeater_stream;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F88, &qword_24AF39AA0);
  *(&v26 + 1) = v14;
  v27 = sub_24AF11C68(&qword_27EFC0F90, &qword_27EFC0F88, &qword_24AF39AA0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, v12 + v13, v14);
  v16 = v1[22];
  v1[22] = v12;

  v17 = sub_24AF3557C();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  sub_24AEFE044(&v25, v24);
  v18 = *(v2 + 80);
  v19 = *(v2 + 88);
  type metadata accessor for SessionMessaging();
  WitnessTable = swift_getWitnessTable();
  v21 = swift_allocObject();
  v21[2] = v1;
  v21[3] = WitnessTable;
  sub_24AF11CB0(v24, (v21 + 4));
  v21[9] = v1;
  swift_retain_n();
  sub_24AF255AC(0, 0, v6, &unk_24AF39AF0, v21);

  return __swift_destroy_boxed_opaque_existential_0(&v25);
}

uint64_t sub_24AF0AC58(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_24AF0ACA0, v1, 0);
}

uint64_t sub_24AF0ACA0()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_24AF350CC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_24AF350BC();
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  type metadata accessor for SessionMessage();
  swift_getWitnessTable();
  v0[5] = sub_24AF3509C();
  v0[6] = v8;

  v9 = *(v0[3] + 120);
  v0[7] = v9;

  return MEMORY[0x2822009F8](sub_24AF0ADC0, v9, 0);
}

uint64_t sub_24AF0ADC0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_24AF11BA4(&qword_27EFC08C8, type metadata accessor for SessionMessagingDatagramConnection);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_24AF0AF00;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, v1, v4, 0x74616428646E6573, 0xEB00000000293A61, sub_24AF10888, v5, v8);
}

uint64_t sub_24AF0AF00()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_24AF0B0A4;
  }

  else
  {
    v7 = *(v2 + 56);
    v6 = *(v2 + 64);

    v5 = sub_24AF0B024;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AF0B040()
{
  sub_24AED6198(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24AF0B0A4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_24AF0B110, v2, 0);
}

uint64_t sub_24AF0B110()
{
  sub_24AED6198(v0[5], v0[6]);
  v1 = v0[10];
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AF0B174(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AF0B194, v1, 0);
}

uint64_t sub_24AF0B194()
{
  v1 = v0[2];
  v2 = sub_24AF350CC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_24AF350BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0E18, &qword_24AF39530);
  sub_24AF11C68(&qword_27EFC0F68, &qword_27EFC0E18, &qword_24AF39530);
  v0[4] = sub_24AF3509C();
  v0[5] = v5;

  v6 = *(v0[3] + 120);
  v0[6] = v6;

  return MEMORY[0x2822009F8](sub_24AF0B2D8, v6, 0);
}

uint64_t sub_24AF0B2D8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_24AF11BA4(&qword_27EFC08C8, type metadata accessor for SessionMessagingDatagramConnection);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_24AF0B418;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, v1, v4, 0x74616428646E6573, 0xEB00000000293A61, sub_24AF11ED8, v5, v8);
}

uint64_t sub_24AF0B418()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_24AF0B5BC;
  }

  else
  {
    v7 = *(v2 + 48);
    v6 = *(v2 + 56);

    v5 = sub_24AF0B53C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AF0B558()
{
  sub_24AED6198(v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24AF0B5BC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_24AF0B628, v2, 0);
}

uint64_t sub_24AF0B628()
{
  sub_24AED6198(v0[4], v0[5]);
  v1 = v0[9];
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AF0B68C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  type metadata accessor for SessionMessage();
  v6 = sub_24AF3559C();
  v3[5] = v6;
  v7 = *(v6 - 8);
  v3[6] = v7;
  v8 = *(v7 + 64) + 15;
  v3[7] = swift_task_alloc();
  v9 = swift_checkMetadataState();
  v3[8] = v9;
  v10 = *(v9 - 8);
  v3[9] = v10;
  v11 = *(v10 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F58, &qword_24AF39A78) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0E18, &qword_24AF39530);
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF0B8A4, v2, 0);
}

uint64_t sub_24AF0B8A4()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_24AF0A9D0();
  v6 = sub_24AF3508C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_24AF3507C();
  sub_24AF11C68(&qword_27EFC0F60, &qword_27EFC0E18, &qword_24AF39530);
  sub_24AF3505C();
  v10 = v0[15];
  v9 = v0[16];
  v12 = v0[13];
  v11 = v0[14];

  (*(v10 + 56))(v12, 0, 1, v11);
  sub_24AF11B34(v12, v9);
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_24AF0BF00;
  v14 = v0[16];
  v15 = v0[4];

  return sub_24AF0C1B0(v14);
}

uint64_t sub_24AF0BF00()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_24AF0C0EC;
  }

  else
  {
    v6 = sub_24AF0C02C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AF0C02C()
{
  sub_24AEE2E10(v0[16], &qword_27EFC0E18, &qword_24AF39530);
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AF0C0EC()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];
  sub_24AEE2E10(v0[16], &qword_27EFC0E18, &qword_24AF39530);

  v6 = v0[1];
  v7 = v0[18];

  return v6();
}

uint64_t sub_24AF0C1B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0E18, &qword_24AF39530) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF0C24C, v1, 0);
}

uint64_t sub_24AF0C24C()
{
  if (**(v0 + 16))
  {
    if (**(v0 + 16) == 1)
    {
      if (qword_27EFC0718 != -1)
      {
        swift_once();
      }

      v1 = sub_24AF3529C();
      __swift_project_value_buffer(v1, qword_27EFC0E00);
      v2 = sub_24AF3527C();
      v3 = sub_24AF3572C();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_24AECF000, v2, v3, "Heartbeat reply received", v4, 2u);
        MEMORY[0x24C236490](v4, -1, -1);
      }

      v5 = *(v0 + 32);

      v6 = *(v0 + 8);

      return v6();
    }

    else
    {
      if (qword_27EFC0718 != -1)
      {
        swift_once();
      }

      v13 = sub_24AF3529C();
      __swift_project_value_buffer(v13, qword_27EFC0E00);
      v14 = sub_24AF3527C();
      v15 = sub_24AF3572C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_24AECF000, v14, v15, "Received .shuttingDown message", v16, 2u);
        MEMORY[0x24C236490](v16, -1, -1);
      }

      v17 = *(v0 + 24);

      v18 = *(v17 + 120);
      *(v0 + 56) = v18;

      return MEMORY[0x2822009F8](sub_24AF0C770, v18, 0);
    }
  }

  else
  {
    if (qword_27EFC0718 != -1)
    {
      swift_once();
    }

    v7 = sub_24AF3529C();
    __swift_project_value_buffer(v7, qword_27EFC0E00);
    v8 = sub_24AF3527C();
    v9 = sub_24AF3572C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24AECF000, v8, v9, "Sending heartbeat reply", v10, 2u);
      MEMORY[0x24C236490](v10, -1, -1);
    }

    v11 = *(v0 + 32);

    sub_24AF0C978(1, 1, 0, 0xE000000000000000, v11);
    v19 = swift_task_alloc();
    *(v0 + 40) = v19;
    *v19 = v0;
    v19[1] = sub_24AF0C5C8;
    v21 = *(v0 + 24);
    v20 = *(v0 + 32);

    return sub_24AF0B174(v20);
  }
}

uint64_t sub_24AF0C5C8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_24AF0C8FC;
  }

  else
  {
    v6 = sub_24AF0C6F4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AF0C6F4()
{
  sub_24AEE2E10(*(v0 + 32), &qword_27EFC0E18, &qword_24AF39530);
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AF0C770()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask;
  if (*(v1 + OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask))
  {
    v3 = *(v1 + OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
    sub_24AF3562C();

    v4 = *(v1 + v2);
  }

  v5 = *(v0 + 56);
  v6 = *(v0 + 24);
  *(v1 + v2) = 0;

  [*(v5 + 112) cancel];

  return MEMORY[0x2822009F8](sub_24AF0C860, v6, 0);
}

uint64_t sub_24AF0C860()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 64) = v1;
  return MEMORY[0x2822009F8](sub_24AF0C884, v1, 0);
}

uint64_t sub_24AF0C884()
{
  [*(v0[8] + 120) endSession];
  v1 = v0[4];

  v2 = v0[1];

  return v2();
}

uint64_t sub_24AF0C8FC()
{
  sub_24AEE2E10(v0[4], &qword_27EFC0E18, &qword_24AF39530);
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AF0C978@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v9 = sub_24AF35A2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = a1;
  *(a5 + 8) = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0E18, &qword_24AF39530);
  v15 = *(v14 + 40);
  sub_24AF3520C();
  v16 = sub_24AF350CC();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_24AF350BC();
  if (qword_281392D98 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v9, qword_281392DA0);
  (*(v10 + 16))(v13, v19, v9);
  v34[3] = MEMORY[0x277D839B0];
  LOBYTE(v34[0]) = 1;
  v20 = sub_24AF350AC();
  sub_24AF09444(v34, v13);
  v20(v33, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0938, &unk_24AF39A80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24AF37AB0;
  v22 = v32;
  *(v21 + 32) = a3;
  *(v21 + 40) = v22;
  v34[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0970, &qword_24AF381F0);
  sub_24AF11BEC();
  v23 = v34[5];
  v24 = sub_24AF3509C();
  if (v23)
  {

    v26 = sub_24AF3521C();
    return (*(*(v26 - 8) + 8))(a5 + v15, v26);
  }

  else
  {
    v28 = v24;
    v29 = v25;

    v30 = (a5 + *(v14 + 44));
    *v30 = v28;
    v30[1] = v29;
  }

  return result;
}

uint64_t SessionMessage.init<A>(type:version:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v47 = a6;
  v49 = a3;
  v12 = sub_24AF35A2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(a4 - 8);
  v51 = a1;
  v17 = a1;
  v18 = a4;
  (*(v50 + 16))(a7, v17, a4);
  v19 = type metadata accessor for SessionMessage();
  *(a7 + *(v19 + 36)) = a2;
  v20 = *(v19 + 40);
  v52 = a7;
  v45 = v19;
  v46 = v20;
  sub_24AF3520C();
  v21 = sub_24AF350CC();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_24AF350BC();
  if (qword_281392D98 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v12, qword_281392DA0);
  (*(v13 + 16))(v16, v24, v12);
  v54[3] = MEMORY[0x277D839B0];
  LOBYTE(v54[0]) = 1;
  v25 = sub_24AF350AC();
  sub_24AF09444(v54, v16);
  v25(v53, 0);
  v26 = sub_24AF10020(a5, a5);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = *(a5 - 8);
  v30 = *(v29 + 72);
  v31 = *(v29 + 80);
  swift_allocObject();
  v32 = sub_24AF354BC();
  v33 = v49;
  (*(v29 + 16))(v34, v49, a5);
  sub_24AF3550C();
  v54[0] = v32;
  v54[5] = v47;
  swift_getWitnessTable();
  v35 = v48;
  v36 = sub_24AF3509C();
  if (v35)
  {

    (*(v29 + 8))(v33, a5);
    v38 = *(v50 + 8);
    v38(v51, v18);

    v39 = v52;
    v38(v52, v18);
    v40 = sub_24AF3521C();
    return (*(*(v40 - 8) + 8))(v39 + v46, v40);
  }

  else
  {
    v42 = v36;
    v43 = v37;

    (*(v29 + 8))(v33, a5);
    (*(v50 + 8))(v51, v18);

    v44 = (v52 + *(v45 + 44));
    *v44 = v42;
    v44[1] = v43;
  }

  return result;
}

uint64_t sub_24AF0D03C()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0E18, &qword_24AF39530) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF0D0D8, v0, 0);
}

uint64_t sub_24AF0D0D8()
{
  sub_24AF0C978(2, 1, 0, 0xE000000000000000, v0[3]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24AF0D304;
  v3 = v0[2];
  v2 = v0[3];

  return sub_24AF0B174(v2);
}

uint64_t sub_24AF0D304()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_24AF0D6BC;
  }

  else
  {
    v6 = sub_24AF0D430;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AF0D430()
{
  sub_24AEE2E10(v0[3], &qword_27EFC0E18, &qword_24AF39530);
  v0[6] = 0;
  v1 = *(v0[2] + 120);
  v0[7] = v1;

  return MEMORY[0x2822009F8](sub_24AF0D4B4, v1, 0);
}

uint64_t sub_24AF0D4B4()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask;
  if (*(v1 + OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask))
  {
    v3 = *(v1 + OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
    sub_24AF3562C();

    v4 = *(v1 + v2);
  }

  v5 = *(v0 + 56);
  v6 = *(v0 + 16);
  *(v1 + v2) = 0;

  [*(v5 + 112) cancel];

  return MEMORY[0x2822009F8](sub_24AF0D5A4, v6, 0);
}

uint64_t sub_24AF0D5A4()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 64) = v1;
  return MEMORY[0x2822009F8](sub_24AF0D5C8, v1, 0);
}

uint64_t sub_24AF0D5C8()
{
  v1 = *(v0 + 16);
  [*(*(v0 + 64) + 120) endSession];

  return MEMORY[0x2822009F8](sub_24AF0D640, v1, 0);
}

uint64_t sub_24AF0D640()
{
  v1 = v0[3];
  if (v0[6])
  {
    v2 = v0[6];
    swift_willThrow();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AF0D6BC()
{
  sub_24AEE2E10(v0[3], &qword_27EFC0E18, &qword_24AF39530);
  v1 = v0[5];
  if (qword_27EFC0718 != -1)
  {
    swift_once();
  }

  v2 = sub_24AF3529C();
  __swift_project_value_buffer(v2, qword_27EFC0E00);
  v3 = v1;
  v4 = sub_24AF3527C();
  v5 = sub_24AF3570C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24AECF000, v4, v5, "Couldn't send .shuttingDown message: %@", v6, 0xCu);
    sub_24AEE2E10(v7, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v7, -1, -1);
    MEMORY[0x24C236490](v6, -1, -1);
  }

  v0[6] = v1;
  v10 = *(v0[2] + 120);
  v0[7] = v10;

  return MEMORY[0x2822009F8](sub_24AF0D4B4, v10, 0);
}

char *SessionMessaging.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 14);

  v3 = *(v0 + 15);

  v4 = *(v0 + 16);

  v5 = *(v0 + 22);

  v6 = *(*v0 + 144);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  type metadata accessor for SessionMessage();
  v9 = sub_24AF3561C();
  (*(*(v9 - 8) + 8))(&v0[v6], v9);
  v10 = *(*v0 + 152);
  v11 = sub_24AF355EC();
  (*(*(v11 - 8) + 8))(&v0[v10], v11);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SessionMessaging.__deallocating_deinit()
{
  SessionMessaging.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AF0D9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[26] = *a5;
  v7 = sub_24AF35A2C();
  v5[27] = v7;
  v8 = *(v7 - 8);
  v5[28] = v8;
  v9 = *(v8 + 64) + 15;
  v5[29] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0E18, &qword_24AF39530);
  v5[30] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AF0DB14, a5, 0);
}

uint64_t sub_24AF0DB14()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v2[3];
  v4 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_24AF3564C();

  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  type metadata accessor for SessionMessaging();
  WitnessTable = swift_getWitnessTable();
  v0[32] = WitnessTable;
  v11 = v0[25];
  v12 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_0((v0 + 2), v0[5]);
  v13 = *(MEMORY[0x277D856D8] + 4);
  v14 = swift_task_alloc();
  v0[33] = v14;
  *v14 = v0;
  v14[1] = sub_24AF0DD08;

  return MEMORY[0x282200310](v0 + 39, v11, WitnessTable);
}

uint64_t sub_24AF0DD08()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v6 = *v1;
  *(*v1 + 272) = v0;

  if (!v0)
  {
    v5 = *(v2 + 200);

    return MEMORY[0x2822009F8](sub_24AF0DE1C, v5, 0);
  }

  return result;
}

uint64_t sub_24AF0DE1C()
{
  v59 = v0;
  v1 = *(v0 + 312);
  if (v1 == 2)
  {
    v2 = *(v0 + 248);
    v3 = *(v0 + 232);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v4 = *(v0 + 8);
LABEL_22:

    return v4();
  }

  if (v1)
  {
    if (qword_27EFC0718 != -1)
    {
      swift_once();
    }

    v5 = sub_24AF3529C();
    __swift_project_value_buffer(v5, qword_27EFC0E00);
    v6 = sub_24AF3527C();
    v7 = sub_24AF3570C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24AECF000, v6, v7, "Heartbeater timed out, closing session", v8, 2u);
      MEMORY[0x24C236490](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    *(v0 + 280) = v9;
    *v9 = v0;
    v9[1] = sub_24AF0E44C;
    v10 = *(v0 + 200);

    return sub_24AF0D03C();
  }

  else
  {
    if (qword_27EFC0718 != -1)
    {
      swift_once();
    }

    v12 = v0 + 88;
    v13 = sub_24AF3529C();
    __swift_project_value_buffer(v13, qword_27EFC0E00);
    v14 = sub_24AF3527C();
    v15 = sub_24AF356FC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24AECF000, v14, v15, "Heartbeater triggered, sending heartbeat", v16, 2u);
      MEMORY[0x24C236490](v16, -1, -1);
    }

    v17 = *(v0 + 240);
    v18 = *(v0 + 248);

    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = *(v17 + 40);
    sub_24AF3520C();
    v20 = sub_24AF350CC();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_24AF350BC();
    if (qword_281392D98 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 224);
    v23 = *(v0 + 232);
    v25 = *(v0 + 216);
    v26 = __swift_project_value_buffer(v25, qword_281392DA0);
    (*(v24 + 16))(v23, v26, v25);
    *(v0 + 80) = MEMORY[0x277D839B0];
    *(v0 + 56) = 1;
    v27 = sub_24AF350AC();
    v29 = v28;
    v30 = *(v0 + 232);
    v31 = *(v0 + 216);
    v56 = (*(v0 + 224) + 8);
    v57 = v27;
    if (*(v0 + 80))
    {
      sub_24AEE2FBC((v0 + 56), (v0 + 152));
      v32 = *v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *v29;
      v55 = v19;
      v33 = *(v0 + 176);
      v34 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 152, v33);
      v35 = *(v33 - 8);
      v36 = *(v35 + 64) + 15;
      v37 = swift_task_alloc();
      v38 = v33;
      v19 = v55;
      (*(v35 + 16))(v37, v34, v38);
      v12 = v0 + 88;
      sub_24AF117F4(*v37, v30, isUniquelyReferenced_nonNull_native, &v58);
      __swift_destroy_boxed_opaque_existential_0((v0 + 152));

      (*v56)(v30, v31);
      *v29 = v58;
    }

    else
    {
      sub_24AEE2E10(v0 + 56, &qword_27EFC0F80, &qword_24AF39A98);
      v39 = sub_24AF10094(v30, (v0 + 120));
      (*v56)(v30, v31, v39);
      sub_24AEE2E10(v0 + 120, &qword_27EFC0F80, &qword_24AF39A98);
    }

    v40 = *(v0 + 272);
    v57(v12, 0);
    *(v0 + 184) = &unk_285E3D6A0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0970, &qword_24AF381F0);
    sub_24AF11BEC();
    v41 = sub_24AF3509C();
    if (v40)
    {

      v43 = sub_24AF3521C();
      (*(*(v43 - 8) + 8))(v18 + v19, v43);
      v44 = *(v0 + 248);
      v45 = *(v0 + 232);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));

      v4 = *(v0 + 8);
      goto LABEL_22;
    }

    v46 = v41;
    v47 = v42;
    v49 = *(v0 + 240);
    v48 = *(v0 + 248);

    v50 = (v48 + *(v49 + 44));
    *v50 = v46;
    v50[1] = v47;
    v51 = swift_task_alloc();
    *(v0 + 296) = v51;
    *v51 = v0;
    v51[1] = sub_24AF0E650;
    v52 = *(v0 + 248);
    v53 = *(v0 + 200);

    return sub_24AF0B174(v52);
  }
}

uint64_t sub_24AF0E44C()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = sub_24AF0E86C;
  }

  else
  {
    v6 = sub_24AF0E578;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AF0E578()
{
  v1 = v0[32];
  v2 = v0[25];
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_0((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_24AF0DD08;

  return MEMORY[0x282200310](v0 + 39, v2, v1);
}

uint64_t sub_24AF0E650()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = sub_24AF0E8F0;
  }

  else
  {
    v6 = sub_24AF0E77C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AF0E77C()
{
  sub_24AEE2E10(v0[31], &qword_27EFC0E18, &qword_24AF39530);
  v1 = v0[32];
  v2 = v0[25];
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_0((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_24AF0DD08;

  return MEMORY[0x282200310](v0 + 39, v2, v1);
}

uint64_t sub_24AF0E86C()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[29];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AF0E8F0()
{
  sub_24AEE2E10(v0[31], &qword_27EFC0E18, &qword_24AF39530);
  v1 = v0[38];
  v2 = v0[31];
  v3 = v0[29];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AF0E98C()
{
  v0 = sub_24AF35A9C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24AF0E9F4()
{
  v1 = *v0;
  sub_24AF35D0C();
  sub_24AF35D3C();
  return sub_24AF35D4C();
}

uint64_t sub_24AF0EA6C()
{
  v1 = *v0;
  sub_24AF35D0C();
  sub_24AF35D3C();
  return sub_24AF35D4C();
}

_DWORD *sub_24AF0EAB0@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result > 0xFFFFFFFC)
  {
    v2 = ~*result;
  }

  else
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_24AF0EB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24AF0EC0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_24AF0EC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24AF0ECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24AF0ED58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24AF0E98C();
  *a2 = result;
  return result;
}

uint64_t sub_24AF0ED88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AF0E9DC(*v1);
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_24AF0EDD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24AF0E9D8();
  *a1 = result;
  return result;
}

uint64_t sub_24AF0EE00@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_24AF11B2C();
  *a2 = result;
  return result;
}

uint64_t sub_24AF0EE2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24AF0EE80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SessionMessage.MessageError.hashValue.getter()
{
  v1 = *v0;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v1);
  return sub_24AF35D4C();
}

uint64_t sub_24AF0EF6C()
{
  sub_24AF35D0C();
  SessionMessage.MessageError.hash(into:)();
  return sub_24AF35D4C();
}

uint64_t SessionMessage.identifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_24AF3521C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SessionMessage.extract<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v9 = sub_24AF3579C();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v31 = &v27 - v11;
  v12 = sub_24AF3508C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_24AF3507C();
  sub_24AF3550C();
  v15 = a1;
  v16 = (v4 + *(a1 + 44));
  v18 = *v16;
  v17 = v16[1];
  v32 = a3;
  swift_getWitnessTable();
  sub_24AF3505C();

  if (!v5)
  {
    v27 = v9;
    v28 = v15;
    v20 = v29;
    v21 = v30;
    swift_getWitnessTable();
    v22 = v31;
    sub_24AF356CC();
    v23 = *(a2 - 8);
    if ((*(v23 + 48))(v22, 1, a2) == 1)
    {
      (*(v20 + 8))(v22, v27);

      v24 = *(v28 + 16);
      v25 = *(v28 + 24);
      type metadata accessor for SessionMessage.MessageError();
      swift_getWitnessTable();
      swift_allocError();
      *v26 = 0;
      return swift_willThrow();
    }

    else
    {
      (*(v23 + 32))(v21, v22, a2);
    }
  }

  return result;
}

uint64_t SessionMessage.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v21[0] = a2;
  v21[1] = v3;
  type metadata accessor for SessionMessage.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_24AF35BDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AF35D6C();
  LOBYTE(v22) = 0;
  v11 = *(v4 + 16);
  v12 = v21[2];
  v13 = v9;
  v14 = v21[3];
  sub_24AF35BCC();
  if (v14)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v16 = v21[0];
  v17 = *(v12 + *(v21[0] + 36));
  LOBYTE(v22) = 1;
  sub_24AF35BBC();
  v18 = *(v16 + 40);
  LOBYTE(v22) = 2;
  sub_24AF3521C();
  sub_24AF11BA4(&qword_27EFC0B50, MEMORY[0x277CC95F0]);
  sub_24AF35BCC();
  v19 = (v12 + *(v16 + 44));
  v20 = v19[1];
  v22 = *v19;
  v23 = v20;
  v24 = 3;
  sub_24AEE5154(v22, v20);
  sub_24AF108C4();
  sub_24AF35BCC();
  sub_24AED6198(v22, v23);
  return (*(v6 + 8))(v13, v5);
}

uint64_t SessionMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = sub_24AF3521C();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a2 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v45 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SessionMessage.CodingKeys();
  swift_getWitnessTable();
  v44 = sub_24AF35B4C();
  v41 = *(v44 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v15 = &v34 - v14;
  v43 = a3;
  v16 = type metadata accessor for SessionMessage();
  v36 = *(v16 - 8);
  v17 = *(v36 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v46 = v15;
  v21 = v47;
  sub_24AF35D5C();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v41;
  v23 = v42;
  v35 = v19;
  LOBYTE(v48) = 0;
  v24 = v44;
  v25 = *(v43 + 8);
  sub_24AF35B2C();
  v26 = *(v23 + 32);
  v27 = v35;
  v26(v35, v45, a2);
  LOBYTE(v48) = 1;
  v28 = sub_24AF35B1C();
  v45 = v16;
  *&v27[*(v16 + 36)] = v28;
  LOBYTE(v48) = 2;
  sub_24AF11BA4(&qword_27EFC0B80, MEMORY[0x277CC95F0]);
  v29 = v40;
  sub_24AF35B2C();
  v47 = a1;
  v30 = v45;
  (*(v39 + 32))(&v35[*(v45 + 10)], v38, v29);
  v49 = 3;
  sub_24AF10918();
  sub_24AF35B2C();
  (*(v22 + 8))(v46, v24);
  v32 = v35;
  v31 = v36;
  *&v35[*(v30 + 11)] = v48;
  (*(v31 + 16))(v37, v32, v30);
  __swift_destroy_boxed_opaque_existential_0(v47);
  return (*(v31 + 8))(v32, v30);
}

uint64_t SessionMessage.description.getter(uint64_t a1)
{
  v2 = v1;
  sub_24AF3592C();
  MEMORY[0x24C235440](0xD000000000000015, 0x800000024AF37550);
  v4 = *(a1 + 16);
  sub_24AF35C3C();
  MEMORY[0x24C235440](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  v13 = *(v1 + *(a1 + 36));
  v5 = sub_24AF35C0C();
  MEMORY[0x24C235440](v5);

  MEMORY[0x24C235440](0x69746E656469202CLL, 0xEE00203A72656966);
  v6 = *(a1 + 40);
  sub_24AF3521C();
  sub_24AF11BA4(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
  v7 = sub_24AF35C0C();
  MEMORY[0x24C235440](v7);

  MEMORY[0x24C235440](0x64616F6C79617020, 0xEA0000000000203ALL);
  v8 = (v2 + *(a1 + 44));
  v9 = *v8;
  v10 = v8[1];
  v11 = sub_24AF3515C();
  MEMORY[0x24C235440](v11);

  MEMORY[0x24C235440](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_24AF0FCE8()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC4BD0);
  __swift_project_value_buffer(v0, qword_27EFC4BD0);
  return sub_24AF3528C();
}

uint64_t sub_24AF0FD68()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC0E00);
  v1 = __swift_project_value_buffer(v0, qword_27EFC0E00);
  if (qword_27EFC0710 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFC4BD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AF0FE30(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AF0FF28;

  return v7(a1);
}

uint64_t sub_24AF0FF28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AF10020(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0F78, &qword_24AF39A90);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

double sub_24AF10094@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_24AEDA4FC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24AEDD558();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_24AF35A2C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_24AEE2FBC((*(v11 + 56) + 32 * v8), a2);
    sub_24AF10490(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_24AF10170(int64_t a1, uint64_t a2)
{
  v43 = sub_24AF3521C();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_24AF357EC();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_24AF11BA4(&qword_281393400, MEMORY[0x277CC95F0]);
      v26 = sub_24AF3535C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_24AF10490(int64_t a1, uint64_t a2)
{
  v4 = sub_24AF35A2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_24AF357EC();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = sub_24AF3535C();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24AF10744(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D08, &qword_24AF394A0) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AEE555C;

  return sub_24AF09E38(a1, v9, v10, v1 + v8, v11);
}

unint64_t sub_24AF108C4()
{
  result = qword_27EFC0E20[0];
  if (!qword_27EFC0E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EFC0E20);
  }

  return result;
}

unint64_t sub_24AF10918()
{
  result = qword_281393408;
  if (!qword_281393408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281393408);
  }

  return result;
}

uint64_t sub_24AF10988(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for SessionMessage();
  result = sub_24AF3561C();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = sub_24AF355EC();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of SessionMessaging.send(message:)(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AEF9DD0;

  return v8(a1);
}

uint64_t dispatch thunk of SessionMessaging.close()()
{
  v2 = *(*v0 + 264);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AEF9DD0;

  return v6();
}

uint64_t sub_24AF10D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_24AF3521C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24AF10DE8(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v27 = *(v5 - 8);
  v6 = *(v27 + 84);
  v7 = sub_24AF3521C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v27 + 64);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  if (v11 <= 0xC)
  {
    v11 = 12;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v7 - 8) + 64) + 7;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v14 = ((v13 + ((v12 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v11 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v11 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v6 == v11)
  {
    v23 = *(v27 + 48);

    return v23(a1, v6, v5);
  }

  else
  {
    v24 = (((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
    if (v9 == v11)
    {
      v25 = *(v8 + 48);

      return v25(v24);
    }

    else
    {
      v26 = *(((v13 + v24) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
      if (((4 * v26) & 0xC) != 0)
      {
        return 16 - ((4 * v26) & 0xC | (v26 >> 2));
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_24AF1106C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v26 = *(v7 - 8);
  v8 = *(v26 + 84);
  v9 = *(sub_24AF3521C() - 8);
  v10 = *(v9 + 84);
  v11 = *(v26 + 64);
  if (v10 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 80);
  if (v12 <= 0xC)
  {
    v12 = 12;
  }

  v14 = *(v9 + 64) + 7;
  v15 = ((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v18 = 0;
    v19 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v12 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v8 == v12)
      {
        v22 = *(v26 + 56);

        v22(a1, a2, v8, v7);
      }

      else
      {
        v23 = (((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
        if (v10 == v12)
        {
          v24 = *(v9 + 56);

          v24(v23, a2);
        }

        else
        {
          v25 = ((v14 + v23) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0xC)
          {
            *v25 = (a2 - 13);
            v25[1] = 0;
          }

          else
          {
            *v25 = 0;
            v25[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
          }
        }
      }

      return;
    }
  }

  if (((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v12 + a2;
    bzero(a1, ((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t getEnumTagSinglePayload for MessagingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessagingError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternalSessionMessageType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InternalSessionMessageType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AF115D0(void *a1)
{
  a1[1] = sub_24AF11608();
  a1[2] = sub_24AF1165C();
  result = sub_24AF116B0();
  a1[3] = result;
  return result;
}

unint64_t sub_24AF11608()
{
  result = qword_27EFC0F28;
  if (!qword_27EFC0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0F28);
  }

  return result;
}

unint64_t sub_24AF1165C()
{
  result = qword_27EFC0F30;
  if (!qword_27EFC0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0F30);
  }

  return result;
}

unint64_t sub_24AF116B0()
{
  result = qword_27EFC0F38;
  if (!qword_27EFC0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0F38);
  }

  return result;
}

unint64_t sub_24AF1174C()
{
  result = qword_27EFC0F50;
  if (!qword_27EFC0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0F50);
  }

  return result;
}

_OWORD *sub_24AF117F4(char a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24AF35A2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x277D839B0];
  LOBYTE(v33) = a1;
  v13 = *a4;
  v15 = sub_24AEDA4FC(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
      return sub_24AEE2FBC(&v33, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24AEDD558();
    goto LABEL_7;
  }

  sub_24AEDBA30(v18, a3 & 1);
  v24 = *a4;
  v25 = sub_24AEDA4FC(a2);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_24AF35C8C();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  v27 = v34;
  v28 = __swift_mutable_project_boxed_opaque_existential_0(&v33, v34);
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31);
  sub_24AF11A60(v15, v12, *v31, v21);
  return __swift_destroy_boxed_opaque_existential_0(&v33);
}

_OWORD *sub_24AF11A60(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  v14 = MEMORY[0x277D839B0];
  LOBYTE(v13) = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = sub_24AF35A2C();
  (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a2, v8);
  result = sub_24AEE2FBC(&v13, (a4[7] + 32 * a1));
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_24AF11B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0E18, &qword_24AF39530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AF11BA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24AF11BEC()
{
  result = qword_27EFC0F70;
  if (!qword_27EFC0F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0970, &qword_24AF381F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0F70);
  }

  return result;
}

uint64_t sub_24AF11C68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24AF11CB0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24AF11CC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AEE555C;

  return sub_24AF0D9EC(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_24AF11D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AF11DF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AEF9DD0;

  return sub_24AF0FE30(a1, v5);
}

uint64_t sub_24AF11EB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AED6198(a1, a2);
  }

  return a1;
}

uint64_t sub_24AF11EC4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AEE5154(a1, a2);
  }

  return a1;
}

unsigned __int8 sub_24AF11EE0@<W0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  if ((*v1 & 0xFE) == 2)
  {
    v5 = *(v1 + 8);
    v6 = *(v1 + 16);
    v7 = sub_24AF3539C();
    v8 = [v7 _stripPotentialTokenURIWithToken_];

    if (v8)
    {
      v9 = sub_24AF353AC();
      v11 = v10;

      v12._countAndFlagsBits = v9;
      v12._object = v11;
      result = Destination.init(stringRepresentation:)(v12);
      if (v16)
      {
        *a1 = v14;
        *(a1 + 8) = v15;
        *(a1 + 16) = v16;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    sub_24AF3592C();

    MEMORY[0x24C235440](v4, v3);
    MEMORY[0x24C235440](0xD000000000000013, 0x800000024AF36A90);
    result = sub_24AF35A3C();
    __break(1u);
  }

  else
  {
    *a1 = *v1;
    *(a1 + 8) = v4;
    *(a1 + 16) = v3;
  }

  return result;
}

uint64_t Destination.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

FindMyMessaging::Destination_optional __swiftcall Destination.init(stringRepresentation:)(Swift::String stringRepresentation)
{
  object = stringRepresentation._object;
  countAndFlagsBits = stringRepresentation._countAndFlagsBits;
  v4 = v1;
  v5 = sub_24AF3540C();
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v5 = sub_24AF3540C();
    if (v5)
    {
      v9 = 1;
    }

    else
    {
      v5 = sub_24AF3540C();
      if (v5)
      {
        v9 = 2;
      }

      else
      {
        v5 = sub_24AF3540C();
        if (v5)
        {
          v9 = 3;
        }

        else
        {
          v5 = sub_24AF3540C();
          if (v5)
          {
            v9 = 4;
          }

          else
          {
            v5 = sub_24AF3540C();
            if ((v5 & 1) == 0)
            {

              *v4 = 0;
              v4[1] = 0;
              v4[2] = 0;
              goto LABEL_15;
            }

            v9 = 5;
          }
        }
      }
    }
  }

  *v4 = v9;
  v4[1] = countAndFlagsBits;
  v4[2] = object;
LABEL_15:
  result.value.destination._object = v7;
  result.value.destination._countAndFlagsBits = v6;
  result.is_nil = v8;
  result.value.type = v5;
  return result;
}