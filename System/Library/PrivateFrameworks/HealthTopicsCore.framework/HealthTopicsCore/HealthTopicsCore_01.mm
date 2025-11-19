void *sub_251F4C1E4(uint64_t a1, uint64_t a2)
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

  sub_251F4C4D4();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251F4C24C(char *result, int64_t a2, char a3, char *a4)
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
    sub_251F4C4D4();
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

uint64_t type metadata accessor for SecurelyCodableTopicRequestToken()
{
  result = qword_27F4C2618;
  if (!qword_27F4C2618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251F4C388()
{
  result = type metadata accessor for TopicRequestToken();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_251F4C478(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_251F4C4D4()
{
  if (!qword_27F4C2628)
  {
    v0 = sub_251F4E2AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C2628);
    }
  }
}

uint64_t RemoteExecutionEngine.__allocating_init(requestRegistry:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 32);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;

  return v2;
}

uint64_t RemoteExecutionEngine.init(requestRegistry:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = *(a1 + 32);

  return v1;
}

uint64_t RemoteExecutionEngine.execute(topicRequest:token:context:handler:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *a3;
  v11 = a3[1];
  v12 = *(v5 + 24);
  v14 = *(a1 + OBJC_IVAR____TtC16HealthTopicsCore27SecurelyCodableTopicRequest_topic);
  v13 = *(a1 + OBJC_IVAR____TtC16HealthTopicsCore27SecurelyCodableTopicRequest_topic + 8);
  v22[0] = v14;
  v22[1] = v13;

  TopicRegistry.topicEvaluator(for:)(v22, v23);

  v19 = v10;
  v20 = a2;
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22[3] = AssociatedTypeWitness;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22[4] = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_251F4C778();
  v17 = *(v6 + 16);
  v21[0] = v19;
  v21[1] = v11;
  sub_251F4C85C(v17, v20, v21, a4, a5, AssociatedTypeWitness, AssociatedConformanceWitness);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_251F4C778()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return SecurelyCodableTopicRequest.decoded<A>(_:)(AssociatedTypeWitness, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_251F4C85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v22[1] = a1;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v17;
  (*(v14 + 16))(v16, v8, v18);
  v19 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a6;
  *(v20 + 3) = a7;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  (*(v14 + 32))(&v20[v19], v16, a6);

  RequestRegistry.execute<A>(request:token:context:handler:)(v8, a2, &v23, sub_251F4CA94, v20, a6, a7);
}

uint64_t RemoteExecutionEngine.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t RemoteExecutionEngine.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_251F4CA94(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v6 = v2[5];
  v8 = sub_251F4CDF8(a1, v4, v5);
  v7(v8, v9 & 1, a2);

  sub_251F4CEA8(v8);
}

id sub_251F4CB00@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SecurelyCodableTopicResponse();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_251F4D534();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_251F4CBEC@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
    sub_251F4E37C();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v8 + 32))(v12, v17, v7);
    a1(v12);
    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t sub_251F4CDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = a2;
  v5[3] = a3;
  swift_getAssociatedTypeWitness();
  sub_251F390E0();
  v3 = sub_251F4E37C();
  type metadata accessor for SecurelyCodableTopicResponse();
  sub_251F4CBEC(sub_251F4CEB4, v5, v3, &v6);
  return v6;
}

id sub_251F4CEB4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_251F4CB00(a1);
}

uint64_t sub_251F4CF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v7;
}

uint64_t SecurelyCodableTopicResponse.decoded<A>(_:)()
{
  v1 = sub_251F4DE3C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_251F4DE2C();
  v4 = *(v0 + OBJC_IVAR____TtC16HealthTopicsCore28SecurelyCodableTopicResponse_payload);
  v5 = *(v0 + OBJC_IVAR____TtC16HealthTopicsCore28SecurelyCodableTopicResponse_payload + 8);
  sub_251F4DE1C();
}

Swift::Void __swiftcall SecurelyCodableTopicResponse.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC16HealthTopicsCore28SecurelyCodableTopicResponse_payload);
  v4 = *(v1 + OBJC_IVAR____TtC16HealthTopicsCore28SecurelyCodableTopicResponse_payload + 8);
  v5 = sub_251F4DEDC();
  v6 = sub_251F4DF9C();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

uint64_t SecurelyCodableTopicResponse.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  objc_allocWithZone(v2);
  sub_251F4BA40();
  v4 = sub_251F4E12C();
  if (v4)
  {
    v5 = v4;
    sub_251F4DEEC();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t SecurelyCodableTopicResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_251F4BA40();
  v2 = sub_251F4E12C();
  if (v2)
  {
    v3 = v2;
    sub_251F4DEEC();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id SecurelyCodableTopicResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecurelyCodableTopicResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_251F4D448()
{
  ObjectType = swift_getObjectType();
  v3 = sub_251F4DE6C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_251F4DE5C();
  v6 = sub_251F4DE4C();
  v8 = v7;

  if (v1)
  {
    return swift_deallocPartialClassInstance();
  }

  v10 = &v0[OBJC_IVAR____TtC16HealthTopicsCore28SecurelyCodableTopicResponse_payload];
  *v10 = v6;
  v10[1] = v8;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t SimpleRequestEvaluator.startHandler.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t SimpleRequestEvaluator.stopHandler.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  sub_251F39174(*v2, v2[1]);
  return v3;
}

uint64_t SimpleRequestEvaluator.init(request:startHandler:stopHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for SimpleRequestEvaluator();
  v13 = (a7 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  v14 = (a7 + *(result + 40));
  *v14 = a4;
  v14[1] = a5;
  return result;
}

Swift::Void __swiftcall SimpleRequestEvaluator.start()()
{
  v2 = v1 + *(v0 + 36);
  v3 = *(v2 + 8);
  (*v2)();
}

Swift::Void __swiftcall SimpleRequestEvaluator.stop()()
{
  v2 = v1 + *(v0 + 40);
  if (*v2)
  {
    v3 = *(v2 + 8);
    (*v2)();
  }
}

void sub_251F4D7F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_251F39038();
    if (v3 <= 0x3F)
    {
      sub_251F39088();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_251F4D890(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_251F4D9D4(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
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

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t HealthTopicsUtilities.Error.hashValue.getter()
{
  v1 = *v0;
  sub_251F4E33C();
  MEMORY[0x253093560](v1);
  return sub_251F4E36C();
}

unint64_t sub_251F4DC68()
{
  result = qword_27F4C26B8;
  if (!qword_27F4C26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C26B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthTopicsUtilities.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthTopicsUtilities.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}