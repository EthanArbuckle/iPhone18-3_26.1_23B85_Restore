uint64_t sub_251F37460(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_251F37470()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t get_enum_tag_for_layout_string_xs6ResultOyxs5Error_pGSbRi_zRi0_zlyq_Isghny_Ri_zRi0_zRi__Ri0__r0_lyx8Response16HealthTopicsCore12TopicRequestPQzIseghng_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_251F374C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251F4DF1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_251F3758C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251F4DF1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_251F37648()
{
  if (MEMORY[0x277D85020])
  {
    sub_251F3C914();
  }
}

uint64_t sub_251F37684()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251F37740()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251F37778()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  sub_251F3D4D4(0, &qword_27F4C2318, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D85460]);
  v5 = *(v4 + 16);
  sub_251F4E13C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_251F4E01C();
  v6 = *(sub_251F4DF3C() + 16);
  sub_251F4E13C();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251F37870()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251F378B0()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_251F378E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_251F390E0();
  sub_251F4E0EC();

  return swift_getWitnessTable();
}

uint64_t sub_251F37970()
{
  sub_251F3D4D4(0, &qword_27F4C2318, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D85460]);
  v2 = *(v1 + 16);
  sub_251F4E13C();
  sub_251F3F414();
  v4 = *(v3 + 16);
  sub_251F4E13C();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251F37A00()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251F37A40()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251F37A78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251F37AB0()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(v0 + 5);
  swift_getAssociatedTypeWitness();
  sub_251F390E0();
  v4 = sub_251F4E0DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 56) & ~v6;
  v8 = *(v2 - 8);
  v9 = *(v8 + 80);
  v10 = (v7 + *(v5 + 64) + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v6 | v9;
  (*(v5 + 8))(&v0[v7], v4);
  (*(v8 + 8))(&v0[v10], v2);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v12 | 7);
}

uint64_t sub_251F37BEC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for TopicRequestToken() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_251F4DF1C();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = *(v0 + v8 + v6[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_251F37D54()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251F37D9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  result = RequestRegistry.subscript.getter(a2);
  *a3 = result;
  return result;
}

void sub_251F37DE0()
{
  if (MEMORY[0x277D85020])
  {
    sub_251F43678();
  }
}

uint64_t sub_251F37E1C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251F37E54()
{
  v1 = (type metadata accessor for TopicRequestToken() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 32);

  v6 = v0 + v3;
  v7 = sub_251F4DF1C();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[7] + 8);

  v9 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_251F37F60()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251F37FC4()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x6564496775626564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6369706F74;
  }
}

uint64_t sub_251F38024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251F48558(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251F3804C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_251F380C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251F380FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_251F3810C()
{
  v1 = *(v0 + 2);
  v2 = (type metadata accessor for TopicRequestToken() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(*v2 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v3 | v6;
  v10 = *(v0 + 5);

  v11 = *(v0 + 6);

  v12 = &v0[v4];
  v13 = sub_251F4DF1C();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *&v12[v2[7] + 8];

  (*(v5 + 8))(&v0[v7], v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_251F3828C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251F382DC(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  sub_251F390E0();
  sub_251F4E05C();
  sub_251F4E14C();
  return sub_251F4DF2C();
}

uint64_t sub_251F38354()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251F3843C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_251F38474(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251F38494(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2813DD978)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2813DD978);
    }
  }
}

uint64_t GenericTopicEvaluator.topic.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t GenericTopicEvaluator.startHandler.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_251F37460(v1);
  return v1;
}

uint64_t GenericTopicEvaluator.stopHandler.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_251F37460(v1);
  return v1;
}

uint64_t GenericTopicEvaluator.evaluator(for:handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a2;
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v5[2];
  v15 = v5[3];
  v17 = v5[4];
  v16 = v5[5];
  (*(v10 + 16))(v13);
  v18 = *(a4 + 24);
  (*(v10 + 32))(a5, v13, v9);
  v19 = type metadata accessor for GenericRequestEvaluator();
  v20 = (a5 + v19[9]);
  *v20 = v25;
  v20[1] = a3;
  v21 = (a5 + v19[10]);
  *v21 = v14;
  v21[1] = v15;
  v22 = (a5 + v19[11]);
  *v22 = v17;
  v22[1] = v16;
  sub_251F37460(v14);
  sub_251F37460(v17);
}

int *GenericRequestEvaluator.init(request:handler:startHandler:stopHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  result = type metadata accessor for GenericRequestEvaluator();
  v17 = (a9 + result[9]);
  *v17 = a2;
  v17[1] = a3;
  v18 = (a9 + result[10]);
  *v18 = a4;
  v18[1] = a5;
  v19 = (a9 + result[11]);
  *v19 = a6;
  v19[1] = a7;
  return result;
}

void *GenericTopicEvaluator.init(topic:startHandler:stopHandler:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = result[1];
  *a6 = *result;
  a6[1] = v6;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

void *GenericTopicEvaluator.init(topic:evaluationHandler:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = a1[1];
  *a6 = *a1;
  a6[1] = v11;
  result = swift_allocObject();
  result[2] = a4;
  result[3] = a5;
  result[4] = a2;
  result[5] = a3;
  a6[2] = sub_251F3898C;
  a6[3] = result;
  a6[4] = 0;
  a6[5] = 0;
  return result;
}

uint64_t sub_251F38854(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, void (*a4)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  sub_251F390E0();
  v7 = sub_251F4E37C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v14 - v11;
  a4(a1);
  a2(v12, 1);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_251F3898C(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 40);
  return sub_251F38854(a1, a2, a3, *(v3 + 32));
}

uint64_t GenericRequestEvaluator.handler.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t GenericRequestEvaluator.startHandler.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];
  sub_251F37460(*v2);
  return v3;
}

uint64_t GenericRequestEvaluator.stopHandler.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];
  sub_251F37460(*v2);
  return v3;
}

Swift::Void __swiftcall GenericRequestEvaluator.start()()
{
  v2 = v1 + *(v0 + 40);
  v3 = *v2;
  if (*v2)
  {
    v4 = *(v2 + 8);
    v3(v1, *(v1 + *(v0 + 36)), *(v1 + *(v0 + 36) + 8));
  }
}

Swift::Void __swiftcall GenericRequestEvaluator.stop()()
{
  v2 = v1 + *(v0 + 44);
  if (*v2)
  {
    v3 = *(v2 + 8);
    (*v2)();
  }
}

uint64_t GenericRequestEvaluator.provide(result:finished:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 36);
  v5 = *(v4 + 8);
  return (*v4)();
}

uint64_t sub_251F38B68()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_251F38BC4(uint64_t a1, int a2)
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

uint64_t sub_251F38C0C(uint64_t result, int a2, int a3)
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

void sub_251F38C78(uint64_t a1)
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

uint64_t sub_251F38D18(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

_BYTE *sub_251F38E64(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
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

unint64_t sub_251F39038()
{
  result = qword_27F4C20E0;
  if (!qword_27F4C20E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F4C20E0);
  }

  return result;
}

void sub_251F39088()
{
  if (!qword_27F4C20E8)
  {
    sub_251F39038();
    v0 = sub_251F4E14C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C20E8);
    }
  }
}

unint64_t sub_251F390E0()
{
  result = qword_27F4C20F0;
  if (!qword_27F4C20F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4C20F0);
  }

  return result;
}

uint64_t TopicRequestToken.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_251F4DF1C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TopicRequestToken.debugIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for TopicRequestToken() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for TopicRequestToken()
{
  result = qword_27F4C2150;
  if (!qword_27F4C2150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TopicRequestToken.init()@<X0>(uint64_t a1@<X8>)
{
  sub_251F4DF0C();
  result = type metadata accessor for TopicRequestToken();
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t TopicRequestToken.init(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_251F4DF0C();
  sub_251F393F8(a1, v14);
  sub_251F3945C(0, &qword_27F4C20F8);
  sub_251F3945C(0, &qword_27F4C2100);
  if (swift_dynamicCast())
  {
    sub_251F3956C(v12, v15);
    v4 = v16;
    v5 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v6 = (*(v5 + 16))(v4, v5);
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v9 = (a2 + *(type metadata accessor for TopicRequestToken() + 20));
    *v9 = v6;
    v9[1] = v8;
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_251F3A4C8(v12, sub_251F39504);
    result = type metadata accessor for TopicRequestToken();
    v11 = (a2 + *(result + 20));
    *v11 = 0;
    v11[1] = 0;
  }

  return result;
}

uint64_t sub_251F393F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_251F3945C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_251F39504()
{
  if (!qword_27F4C2108)
  {
    sub_251F3945C(255, &qword_27F4C2100);
    v0 = sub_251F4E14C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C2108);
    }
  }
}

uint64_t sub_251F3956C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t TopicRequestToken.description.getter()
{
  sub_251F4DF1C();
  sub_251F3A570(&qword_27F4C2110, MEMORY[0x277CC95F0]);
  v1 = sub_251F4E29C();
  MEMORY[0x2530931F0](v1);

  MEMORY[0x2530931F0](58, 0xE100000000000000);
  v2 = (v0 + *(type metadata accessor for TopicRequestToken() + 20));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x2530931F0](v3, v4);

  return 0xD000000000000012;
}

uint64_t static TopicRequestToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_251F4DEFC())
  {
    v4 = *(type metadata accessor for TopicRequestToken() + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_251F4E2BC() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_251F3976C()
{
  v1 = *v0;
  sub_251F4E33C();
  MEMORY[0x253093560](v1);
  return sub_251F4E36C();
}

uint64_t sub_251F397B4()
{
  v1 = *v0;
  sub_251F4E33C();
  MEMORY[0x253093560](v1);
  return sub_251F4E36C();
}

uint64_t sub_251F397F8()
{
  if (*v0)
  {
    result = 0x6564496775626564;
  }

  else
  {
    result = 1684632949;
  }

  *v0;
  return result;
}

uint64_t sub_251F39838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (sub_251F4E2BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6564496775626564 && a2 == 0xEF7265696669746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251F4E2BC();

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

uint64_t sub_251F39934(uint64_t a1)
{
  v2 = sub_251F3A3AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251F39970(uint64_t a1)
{
  v2 = sub_251F3A3AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TopicRequestToken.encode(to:)(void *a1)
{
  v3 = v1;
  sub_251F3A400(0, &qword_27F4C2118, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v11 = &v17[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F3A3AC();
  sub_251F4E39C();
  v17[15] = 0;
  sub_251F4DF1C();
  sub_251F3A570(&qword_27F4C2128, MEMORY[0x277CC95F0]);
  sub_251F4E28C();
  if (!v2)
  {
    v13 = (v3 + *(type metadata accessor for TopicRequestToken() + 20));
    v14 = *v13;
    v15 = v13[1];
    v17[14] = 1;
    sub_251F4E23C();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t TopicRequestToken.hash(into:)()
{
  sub_251F4DF1C();
  sub_251F3A570(&qword_27F4C2130, MEMORY[0x277CC95F0]);
  sub_251F4DF8C();
  v1 = (v0 + *(type metadata accessor for TopicRequestToken() + 20));
  if (!v1[1])
  {
    return sub_251F4E35C();
  }

  v2 = *v1;
  sub_251F4E35C();

  return sub_251F4DFCC();
}

uint64_t TopicRequestToken.hashValue.getter()
{
  sub_251F4E33C();
  sub_251F4DF1C();
  sub_251F3A570(&qword_27F4C2130, MEMORY[0x277CC95F0]);
  sub_251F4DF8C();
  v1 = (v0 + *(type metadata accessor for TopicRequestToken() + 20));
  if (v1[1])
  {
    v2 = *v1;
    sub_251F4E35C();
    sub_251F4DFCC();
  }

  else
  {
    sub_251F4E35C();
  }

  return sub_251F4E36C();
}

uint64_t TopicRequestToken.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_251F4DF1C();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F3A400(0, &qword_27F4C2138, MEMORY[0x277D844C8]);
  v35 = v9;
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for TopicRequestToken();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F3A3AC();
  sub_251F4E38C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v18;
  v20 = v32;
  v21 = v33;
  v37 = 0;
  sub_251F3A570(&qword_27F4C2140, MEMORY[0x277CC95F0]);
  v22 = v34;
  sub_251F4E22C();
  (*(v21 + 32))(v30, v8, v22);
  v36 = 1;
  v23 = sub_251F4E1DC();
  v25 = v24;
  (*(v20 + 8))(v13, v35);
  v27 = v30;
  v26 = v31;
  v28 = &v30[*(v14 + 20)];
  *v28 = v23;
  v28[1] = v25;
  sub_251F3A464(v27, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_251F3A4C8(v27, type metadata accessor for TopicRequestToken);
}

uint64_t sub_251F3A0AC(uint64_t a1)
{
  sub_251F4E33C();
  sub_251F4DF1C();
  sub_251F3A570(&qword_27F4C2130, MEMORY[0x277CC95F0]);
  sub_251F4DF8C();
  v3 = (v1 + *(a1 + 20));
  if (v3[1])
  {
    v4 = *v3;
    sub_251F4E35C();
    sub_251F4DFCC();
  }

  else
  {
    sub_251F4E35C();
  }

  return sub_251F4E36C();
}

uint64_t sub_251F3A180(uint64_t a1, uint64_t a2)
{
  sub_251F4DF1C();
  sub_251F3A570(&qword_27F4C2130, MEMORY[0x277CC95F0]);
  sub_251F4DF8C();
  v4 = (v2 + *(a2 + 20));
  if (!v4[1])
  {
    return sub_251F4E35C();
  }

  v5 = *v4;
  sub_251F4E35C();

  return sub_251F4DFCC();
}

uint64_t sub_251F3A254(uint64_t a1, uint64_t a2)
{
  sub_251F4E33C();
  sub_251F4DF1C();
  sub_251F3A570(&qword_27F4C2130, MEMORY[0x277CC95F0]);
  sub_251F4DF8C();
  v4 = (v2 + *(a2 + 20));
  if (v4[1])
  {
    v5 = *v4;
    sub_251F4E35C();
    sub_251F4DFCC();
  }

  else
  {
    sub_251F4E35C();
  }

  return sub_251F4E36C();
}

uint64_t sub_251F3A328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_251F4DEFC())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_251F4E2BC() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_251F3A3AC()
{
  result = qword_27F4C2120;
  if (!qword_27F4C2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2120);
  }

  return result;
}

void sub_251F3A400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251F3A3AC();
    v7 = a3(a1, &type metadata for TopicRequestToken.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251F3A464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRequestToken();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251F3A4C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251F3A570(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251F3A5E0()
{
  sub_251F4DF1C();
  if (v0 <= 0x3F)
  {
    sub_251F3A664();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251F3A664()
{
  if (!qword_27F4C2160)
  {
    v0 = sub_251F4E14C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C2160);
    }
  }
}

uint64_t getEnumTagSinglePayload for TopicRequestToken.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TopicRequestToken.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_251F3A824()
{
  result = qword_27F4C2168;
  if (!qword_27F4C2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2168);
  }

  return result;
}

unint64_t sub_251F3A87C()
{
  result = qword_27F4C2170;
  if (!qword_27F4C2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2170);
  }

  return result;
}

unint64_t sub_251F3A8D4()
{
  result = qword_27F4C2178;
  if (!qword_27F4C2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2178);
  }

  return result;
}

uint64_t Topic.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static Topic.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_251F4E2BC();
  }
}

uint64_t sub_251F3A998()
{
  sub_251F4E33C();
  MEMORY[0x253093560](0);
  return sub_251F4E36C();
}

uint64_t sub_251F3AA04()
{
  sub_251F4E33C();
  MEMORY[0x253093560](0);
  return sub_251F4E36C();
}

uint64_t sub_251F3AA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_251F4E2BC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251F3AAFC(uint64_t a1)
{
  v2 = sub_251F3ACC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251F3AB38(uint64_t a1)
{
  v2 = sub_251F3ACC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Topic.encode(to:)(void *a1)
{
  sub_251F3B11C(0, &qword_27F4C21E0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F3ACC0();
  sub_251F4E39C();
  sub_251F4E25C();
  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_251F3ACC0()
{
  result = qword_27F4C21E8;
  if (!qword_27F4C21E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C21E8);
  }

  return result;
}

uint64_t Topic.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_251F4DFCC();
}

uint64_t Topic.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_251F4E33C();
  sub_251F4DFCC();
  return sub_251F4E36C();
}

uint64_t Topic.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_251F3B11C(0, &qword_27F4C21F0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F3ACC0();
  sub_251F4E38C();
  if (!v2)
  {
    v13 = sub_251F4E1FC();
    v15 = v14;
    (*(v7 + 8))(v11, v6);
    *a2 = v13;
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_251F3AF04(void *a1)
{
  sub_251F3B11C(0, &qword_27F4C21E0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F3ACC0();
  sub_251F4E39C();
  sub_251F4E25C();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_251F3B050()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_251F3B080()
{
  v1 = *v0;
  v2 = v0[1];
  sub_251F4E33C();
  sub_251F4DFCC();
  return sub_251F4E36C();
}

uint64_t sub_251F3B0CC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_251F4DFCC();
}

uint64_t sub_251F3B0D4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_251F4E33C();
  sub_251F4DFCC();
  return sub_251F4E36C();
}

void sub_251F3B11C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251F3ACC0();
    v7 = a3(a1, &type metadata for Topic.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_251F3B184()
{
  result = qword_2813DD9A0;
  if (!qword_2813DD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DD9A0);
  }

  return result;
}

uint64_t sub_251F3B1D8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_251F4E2BC();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_251F3B214(uint64_t a1, int a2)
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

uint64_t sub_251F3B25C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Topic.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Topic.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_251F3B394()
{
  result = qword_27F4C21F8;
  if (!qword_27F4C21F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C21F8);
  }

  return result;
}

unint64_t sub_251F3B3EC()
{
  result = qword_27F4C2200;
  if (!qword_27F4C2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2200);
  }

  return result;
}

unint64_t sub_251F3B444()
{
  result = qword_27F4C2208;
  if (!qword_27F4C2208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2208);
  }

  return result;
}

uint64_t SecurelyCodableTopicRequest.topic.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16HealthTopicsCore27SecurelyCodableTopicRequest_topic + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16HealthTopicsCore27SecurelyCodableTopicRequest_topic);
  a1[1] = v2;
}

id SecurelyCodableTopicRequest.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_251F3BB0C(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v8;
}

id SecurelyCodableTopicRequest.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_251F3BB0C(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t SecurelyCodableTopicRequest.decoded<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_251F4DE9C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_251F4DE8C();
  v8 = *(v3 + OBJC_IVAR____TtC16HealthTopicsCore27SecurelyCodableTopicRequest_payload);
  v9 = *(v3 + OBJC_IVAR____TtC16HealthTopicsCore27SecurelyCodableTopicRequest_payload + 8);
  v10 = *(a3 + 8);
  sub_251F4DE7C();
}

Swift::Void __swiftcall SecurelyCodableTopicRequest.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC16HealthTopicsCore27SecurelyCodableTopicRequest_topic);
  v4 = *(v1 + OBJC_IVAR____TtC16HealthTopicsCore27SecurelyCodableTopicRequest_topic + 8);
  v5 = sub_251F4DF9C();
  v6 = sub_251F4DF9C();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC16HealthTopicsCore27SecurelyCodableTopicRequest_payload);
  v8 = *(v1 + OBJC_IVAR____TtC16HealthTopicsCore27SecurelyCodableTopicRequest_payload + 8);
  v9 = sub_251F4DEDC();
  v10 = sub_251F4DF9C();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
}

uint64_t SecurelyCodableTopicRequest.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_251F3BC40(0, &qword_27F4C2220, 0x277CCACA8);
  v2 = sub_251F4E12C();
  if (v2)
  {
    v3 = v2;
    sub_251F4DFAC();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id SecurelyCodableTopicRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecurelyCodableTopicRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_251F3BB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  (*(a3 + 56))(v21, a2, a3);
  v8 = v21[1];
  v9 = &v3[OBJC_IVAR____TtC16HealthTopicsCore27SecurelyCodableTopicRequest_topic];
  *v9 = v21[0];
  *(v9 + 1) = v8;
  v10 = sub_251F4DECC();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_251F4DEBC();
  v13 = *(a3 + 16);
  v14 = sub_251F4DEAC();
  v16 = v15;

  if (v4)
  {
    v17 = *(v9 + 1);

    return swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = &v3[OBJC_IVAR____TtC16HealthTopicsCore27SecurelyCodableTopicRequest_payload];
    *v19 = v14;
    v19[1] = v16;
    v20.receiver = v3;
    v20.super_class = ObjectType;
    return objc_msgSendSuper2(&v20, sel_init);
  }
}

uint64_t sub_251F3BC40(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_251F3BD00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t TopicRegistry.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_251F3C4F4(MEMORY[0x277D84F90]);
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t TopicRegistry.init()()
{
  v1 = sub_251F3C4F4(MEMORY[0x277D84F90]);
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

void TopicRegistry.register<A>(topicEvaluator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((v3 + 16));
  sub_251F3BE44((v3 + 24), a1, a2, a3, &v7);
  os_unfair_lock_unlock((v3 + 16));
}

uint64_t sub_251F3BE44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a1;
  v9 = *(a4 + 32);
  v9(&v21, a3, a4);
  if (*(v8 + 16))
  {
    sub_251F3C154(v21, v22);
    v11 = v10;

    if (v11)
    {
      v9(&v21, a3, a4);
      v12 = v21;
      v13 = v22;
      sub_251F3C60C();
      v14 = swift_allocError();
      *v15 = v12;
      *(v15 + 8) = v13;
      *(v15 + 16) = 1;
      result = swift_willThrow();
      *a5 = v14;
      return result;
    }
  }

  else
  {
  }

  v9(v25, a3, a4);
  v17 = v25[0];
  v18 = v25[1];
  v23 = a3;
  v24 = a4;
  v19 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(*(a3 - 8) + 16))(v19, a2, a3);
  return sub_251F3FFC4(&v21, v17, v18);
}

uint64_t TopicRegistry.topicEvaluator(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  os_unfair_lock_lock((v2 + 16));
  v6 = *(v2 + 24);

  os_unfair_lock_unlock((v2 + 16));
  if (*(v6 + 16) && (v7 = sub_251F3C154(v5, v4), (v8 & 1) != 0))
  {
    sub_251F393F8(*(v6 + 56) + 40 * v7, a2);
  }

  else
  {

    sub_251F3C60C();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v4;
    *(v10 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t TopicRegistry.topicEvaluators.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t TopicRegistry.__deallocating_deinit()
{
  sub_251F3C880(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_251F3C154(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_251F4E33C();
  sub_251F4DFCC();
  v6 = sub_251F4E36C();

  return sub_251F3C2A0(a1, a2, v6);
}

unint64_t sub_251F3C1CC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_251F4E33C();
  sub_251F4DF1C();
  sub_251F3CA58();
  sub_251F4DF8C();
  v4 = (a1 + *(type metadata accessor for TopicRequestToken() + 20));
  if (v4[1])
  {
    v5 = *v4;
    sub_251F4E35C();
    sub_251F4DFCC();
  }

  else
  {
    sub_251F4E35C();
  }

  v6 = sub_251F4E36C();

  return sub_251F3C358(a1, v6);
}

unint64_t sub_251F3C2A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_251F4E2BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_251F3C358(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TopicRequestToken();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_251F3CCC4(*(v2 + 48) + v13 * v11, v9, type metadata accessor for TopicRequestToken);
      if (sub_251F4DEFC())
      {
        v14 = *(v5 + 20);
        v15 = &v9[v14];
        v16 = *&v9[v14 + 8];
        v17 = (a1 + v14);
        v18 = v17[1];
        if (v16)
        {
          if (v18)
          {
            v19 = *v15 == *v17 && v16 == v18;
            if (v19 || (sub_251F4E2BC() & 1) != 0)
            {
LABEL_13:
              sub_251F3CAB0(v9);
              return v11;
            }
          }
        }

        else if (!v18)
        {
          goto LABEL_13;
        }
      }

      sub_251F3CAB0(v9);
      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_251F3C4F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251F3CBA0();
    v3 = sub_251F4E1BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_251F3CCC4(v4, &v12, sub_251F3CD2C);
      result = sub_251F3C154(v12, v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 16 * result);
      v8 = v13;
      *v7 = v12;
      v7[1] = v8;
      result = sub_251F3956C(&v14, v3[7] + 40 * result);
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_251F3C60C()
{
  result = qword_2813DDBA8;
  if (!qword_2813DDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DDBA8);
  }

  return result;
}

uint64_t _s16HealthTopicsCore13TopicRegistryC5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        v8 = *a1;
        if (v3 != v6 || v2 != v5)
        {
          v10 = sub_251F4E2BC();
          sub_251F3CB0C(v6, v5, 1u);
          sub_251F3CB0C(v3, v2, 1u);
          sub_251F3CB24(v3, v2, 1u);
          sub_251F3CB24(v6, v5, 1u);
          return (v10 & 1) != 0;
        }

        sub_251F3CB0C(v8, v2, 1u);
        sub_251F3CB0C(v3, v2, 1u);
        sub_251F3CB24(v3, v2, 1u);
        v16 = v3;
        v17 = v2;
        v18 = 1;
        goto LABEL_26;
      }
    }

    else if (v7 == 2 && (v5 | v6) == 0)
    {
      sub_251F3CB24(*a1, v2, 2u);
      v16 = 0;
      v17 = 0;
      v18 = 2;
      goto LABEL_26;
    }

LABEL_21:
    sub_251F3CB0C(*a2, *(a2 + 8), v7);
    sub_251F3CB0C(v3, v2, v4);
    sub_251F3CB24(v3, v2, v4);
    sub_251F3CB24(v6, v5, v7);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_21;
  }

  v11 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v13 = sub_251F4E2BC();
    sub_251F3CB0C(v6, v5, 0);
    sub_251F3CB0C(v3, v2, 0);
    sub_251F3CB24(v3, v2, 0);
    sub_251F3CB24(v6, v5, 0);
    return (v13 & 1) != 0;
  }

  sub_251F3CB0C(v11, v2, 0);
  sub_251F3CB0C(v3, v2, 0);
  sub_251F3CB24(v3, v2, 0);
  v16 = v3;
  v17 = v2;
  v18 = 0;
LABEL_26:
  sub_251F3CB24(v16, v17, v18);
  return 1;
}

void sub_251F3C914()
{
  if (!qword_27F4C22F0)
  {
    v0 = sub_251F4DF2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C22F0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16HealthTopicsCore13TopicRegistryC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_251F3C994(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_251F3C9DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_251F3CA20(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_251F3CA58()
{
  result = qword_27F4C2130;
  if (!qword_27F4C2130)
  {
    sub_251F4DF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2130);
  }

  return result;
}

uint64_t sub_251F3CAB0(uint64_t a1)
{
  v2 = type metadata accessor for TopicRequestToken();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251F3CB0C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_251F3CB24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_251F3CBA0()
{
  if (!qword_2813DD970)
  {
    sub_251F3CC0C();
    sub_251F3CC70();
    v0 = sub_251F4E1CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DD970);
    }
  }
}

unint64_t sub_251F3CC0C()
{
  result = qword_2813DDB00;
  if (!qword_2813DDB00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DDB00);
  }

  return result;
}

unint64_t sub_251F3CC70()
{
  result = qword_2813DD9A8[0];
  if (!qword_2813DD9A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813DD9A8);
  }

  return result;
}

uint64_t sub_251F3CCC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_251F3CD2C()
{
  if (!qword_27F4C22F8)
  {
    sub_251F3CC0C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4C22F8);
    }
  }
}

uint64_t TopicStore.fetchOneShotResponse<A>(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[3] = a4;
  v15[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v7, a4);
  (*(a7 + 64))(v15, a2, a3, a5, a7);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t TopicStore.response<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(a3 - 8);
  v7[9] = v8;
  v7[10] = *(v8 + 64);
  v7[11] = swift_task_alloc();
  sub_251F3D4A0(0);
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251F3CF50, 0, 0);
}

uint64_t sub_251F3CF50()
{
  v1 = v0[12];
  v23 = v0[11];
  v24 = v0[10];
  v22 = v0[9];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v19 = v0[3];
  v20 = v0[7];
  sub_251F3D4D4(0, &qword_27F4C2308, sub_251F3D4A0, MEMORY[0x277D85458]);
  v7 = v6;
  v21 = swift_allocBox();
  v9 = v8;
  v0[13] = v21;
  v10 = type metadata accessor for TopicRequestToken();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  *v9 = 0;
  v11 = *(v7 + 28);
  sub_251F3D4D4(0, &qword_27F4C2310, sub_251F3D4A0, MEMORY[0x277D85460]);
  bzero(v9 + v11, *(*(v12 - 8) + 64));
  sub_251F3FDA4(v1, v9 + v11, sub_251F3D4A0);
  v13 = swift_task_alloc();
  v0[14] = v13;
  v13[2] = v5;
  v13[3] = v4;
  v13[4] = v3;
  v13[5] = v20;
  v13[6] = v9;
  v13[7] = v2;
  v13[8] = v19;
  (*(v22 + 16))(v23, v2, v5);
  v14 = (*(v22 + 80) + 56) & ~*(v22 + 80);
  v15 = swift_allocObject();
  v0[15] = v15;
  *(v15 + 2) = v5;
  *(v15 + 3) = v4;
  *(v15 + 4) = v3;
  *(v15 + 5) = v20;
  *(v15 + 6) = v21;
  (*(v22 + 32))(&v15[v14], v23, v5);
  v16 = swift_task_alloc();
  v0[16] = v16;
  swift_getAssociatedTypeWitness();
  *v16 = v0;
  v16[1] = sub_251F3D244;
  v17 = v0[2];

  return withCancellableCheckedThrowingContinuation<A>(isolation:function:_:onCancel:)(v17, 0, 0, 0x65736E6F70736572, 0xEE00293A726F6628, sub_251F3D614, v13, sub_251F3DA60);
}

uint64_t sub_251F3D244()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v6 = sub_251F3D418;
  }

  else
  {
    v7 = *(v2 + 112);

    v6 = sub_251F3D3A0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_251F3D3A0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_251F3D418()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

void sub_251F3D4D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251F3D538(uint64_t a1, os_unfair_lock_t lock, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  os_unfair_lock_lock(lock);
  sub_251F3D4D4(0, &qword_27F4C2308, sub_251F3D4A0, MEMORY[0x277D85458]);
  sub_251F3D628(lock + *(v16 + 28), a3, a4, a1, a5, a6, a7, a8);

  os_unfair_lock_unlock(lock);
}

uint64_t sub_251F3D628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_251F3FEEC(a1, sub_251F3D4A0);
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v15[6] = a4;

  TopicStore.fetchOneShotResponse<A>(for:completion:)(a3, sub_251F3FFB4, v15, a5, a6, a7, a8);

  v16 = type metadata accessor for TopicRequestToken();
  return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
}

uint64_t sub_251F3D750(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  sub_251F390E0();
  v4 = sub_251F4E37C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return CancellableCheckedContinuation.resume(with:)(v8);
}

uint64_t sub_251F3D840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_251F3D4A0(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TopicRequestToken();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F3D4D4(0, &qword_27F4C2308, sub_251F3D4A0, MEMORY[0x277D85458]);
  v19 = v18;
  v20 = swift_projectBox();
  os_unfair_lock_lock(v20);
  sub_251F3FF4C(v20 + *(v19 + 28), v11, sub_251F3D4A0);
  os_unfair_lock_unlock(v20);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v21 = sub_251F3D4A0;
    v22 = v11;
  }

  else
  {
    sub_251F3FDA4(v11, v17, type metadata accessor for TopicRequestToken);
    (*(a5 + 16))(v17, a3, a5);
    v21 = type metadata accessor for TopicRequestToken;
    v22 = v17;
  }

  return sub_251F3FEEC(v22, v21);
}

uint64_t TopicStore.responses<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  sub_251F390E0();
  v13 = sub_251F4E0AC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v19[-v16];
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = v6;
  v26 = a1;
  swift_checkMetadataState();
  sub_251F3E380(v17);
  return sub_251F4E0FC();
}

uint64_t sub_251F3DBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = a8;
  v59 = a7;
  v65 = a6;
  v57 = a4;
  v62 = a1;
  v63 = a3;
  v52 = a2;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v55 = v12;
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v13;
  v15 = v14;
  swift_getAssociatedTypeWitness();
  sub_251F390E0();
  v16 = sub_251F4E0DC();
  v66 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v50 - v20;
  v53 = &v50 - v20;
  v22 = type metadata accessor for TopicRequestToken();
  v61 = *(v22 - 8);
  v60 = *(v61 + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v58 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v64 = &v50 - v27;
  (*(v17 + 16))(v21, a1, v16);
  v50 = v10;
  v54 = *(v10 + 16);
  v56 = v10 + 16;
  v28 = v57;
  v54(v13, a2, v57);
  v29 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v30 = *(v10 + 80);
  v31 = (v18 + v30 + v29) & ~v30;
  v32 = swift_allocObject();
  *(v32 + 2) = v28;
  *(v32 + 3) = v15;
  v33 = v28;
  v34 = v15;
  v36 = v65;
  v35 = v66;
  v37 = v59;
  *(v32 + 4) = v65;
  *(v32 + 5) = v37;
  *(v32 + 6) = v67;
  (*(v17 + 32))(&v32[v29], v53, v35);
  v38 = v51;
  v53 = *(v50 + 32);
  (v53)(&v32[v31], v51, v33);
  v39 = v36;
  v40 = *(v36 + 8);
  v41 = v64;
  v42 = v52;
  v40(v63, sub_251F3FC54, v32, v34, v37, v33, v39);

  v43 = v38;
  v44 = v33;
  v54(v38, v42, v33);
  v45 = v58;
  sub_251F3FF4C(v41, v58, type metadata accessor for TopicRequestToken);
  v46 = (v30 + 56) & ~v30;
  v47 = (v46 + v55 + *(v61 + 80)) & ~*(v61 + 80);
  v48 = swift_allocObject();
  v48[2] = v44;
  v48[3] = v34;
  v48[4] = v65;
  v48[5] = v37;
  v48[6] = v67;
  (v53)(v48 + v46, v43, v44);
  sub_251F3FDA4(v45, v48 + v47, type metadata accessor for TopicRequestToken);
  sub_251F4E09C();
  return sub_251F3FEEC(v64, type metadata accessor for TopicRequestToken);
}

uint64_t sub_251F3E070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a6;
  v36 = a7;
  v38 = a4;
  v39 = a5;
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_251F390E0();
  v12 = sub_251F4E37C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v33 - v17;
  v37 = *(AssociatedTypeWitness - 8);
  v19 = *(v37 + 64);
  MEMORY[0x28223BE20](v16, v20);
  v22 = &v33 - v21;
  v23 = sub_251F4E08C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v33 - v27;
  v29 = sub_251F4E0DC();
  v30 = v38;
  v33 = v29;
  sub_251F4E0BC();
  (*(v24 + 8))(v28, v23);
  (*(v13 + 16))(v18, v30, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v13 + 8))(v18, v12);
  }

  v32 = v37;
  (*(v37 + 32))(v22, v18, AssociatedTypeWitness);
  if ((*(a11 + 40))(AssociatedTypeWitness, a11))
  {
    (*(a9 + 16))(v34, v36);
    v40 = 0;
    sub_251F4E0CC();
  }

  return (*(v32 + 8))(v22, AssociatedTypeWitness);
}

uint64_t sub_251F3E380@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  sub_251F390E0();
  v3 = sub_251F4E0AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t TopicRequest._response(from:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a3;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = v9;
  v12[4] = a5;
  v12[5] = v10;
  v12[6] = sub_251F3E53C;
  v12[7] = v11;
  v13 = *(v10 + 8);

  v13(v15, sub_251F3E674, v12, a4, a5, v9, v10);
}

uint64_t sub_251F3E53C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 32);
  v7 = *(v4 + 40);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 16))(a2, v9, v10);
  return v8(a4);
}

uint64_t sub_251F3E5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18[3] = a8;
  v18[4] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a8 - 8) + 16))(boxed_opaque_existential_1, a1, a8);
  a5(v18, a2, a3, a4);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_251F3E6A4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v16[0] = *v3;
  v16[1] = v7;
  v17 = *(v3 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = MEMORY[0x277D84F90];
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v8;
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v10;
  v12[4] = sub_251F3F51C;
  v12[5] = v11;
  v13 = *(v10 + 8);
  v14 = sub_251F3F5FC();

  v13(v16, sub_251F3F564, v12, &type metadata for MockBatchedTopicRequest, v14, v9, v10);
}

uint64_t TopicRequest<>._response(from:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v21 = sub_251F4DFFC();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = sub_251F4E01C();
  (*(*(v13 - 8) + 32))(v12 + 24, &v21, v13);
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = v12;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = v15;
  v17[4] = a5;
  v17[5] = v14;
  v17[6] = a6;
  v17[7] = sub_251F3F384;
  v17[8] = v16;
  v18 = *(v14 + 8);

  v18(v20, sub_251F3F3B4, v17, a4, a5, v15, v14);
}

uint64_t sub_251F3E9FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, os_unfair_lock_s *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = a7;
  v39 = a2;
  v40 = a6;
  v41 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_251F390E0();
  v13 = sub_251F4E37C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v37 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v36 - v21;
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20, v25);
  v27 = &v36 - v26;
  (*(v14 + 16))(v22, a4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 8))(v22, v13);
    v28 = a1[3];
    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    (*(v29 + 16))(v39, v28, v29);
    return v41(a4);
  }

  else
  {
    v36 = a1;
    (*(v23 + 32))(v27, v22, AssociatedTypeWitness);
    v31 = v38;
    os_unfair_lock_lock(v38 + 4);
    sub_251F3EDB4(&v31[6]._os_unfair_lock_opaque, a10, &v42);
    swift_getAssociatedTypeWitness();
    sub_251F4E01C();
    os_unfair_lock_unlock(v31 + 4);
    v32 = v42;
    if ((*(*(a10 + 8) + 40))(AssociatedTypeWitness))
    {
      (*(a10 + 48))(v32, AssociatedTypeWitness, a10);
      v33 = v36[3];
      v34 = v36[4];
      __swift_project_boxed_opaque_existential_1(v36, v33);
      (*(v34 + 16))(v39, v33, v34);
      v35 = v37;
      (*(v23 + 16))(v37, v27, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      v41(v35);
      (*(v14 + 8))(v35, v13);
    }

    else
    {
    }

    return (*(v23 + 8))(v27, AssociatedTypeWitness);
  }
}

uint64_t sub_251F3EDB4@<X0>(void *a1@<X0>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v5 = *(a2 + 40);
  swift_getAssociatedTypeWitness();
  v5();
  swift_getAssociatedTypeWitness();
  sub_251F4E01C();
  swift_getWitnessTable();
  sub_251F4E00C();
  *a3 = *a1;
}

uint64_t sub_251F3EEB8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_251F3F258(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_251F3EFAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 2);
  v11 = *(v5 + 3);
  v18 = *v5;
  v19 = v10;
  v20 = v11;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v13;
  v15[4] = sub_251F3FB74;
  v15[5] = v14;
  v16 = *(v13 + 8);

  v16(&v18, sub_251F3FB7C, v15, a4, a5, v12, v13);
}

uint64_t sub_251F3F0C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 8);
  v11 = *(v5 + 32);
  v18[0] = *v5;
  v18[1] = v10;
  v19 = *(v5 + 16);
  v20 = v11;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v13;
  v15[4] = sub_251F3FA08;
  v15[5] = v14;
  v16 = *(v13 + 8);

  v16(v18, sub_251F3FA9C, v15, a4, a5, v12, v13);
}

uint64_t sub_251F3F1E4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  return sub_251F3E6A4(a1, a2, a3);
}

char *sub_251F3F258(char *result, int64_t a2, char a3, char *a4)
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
    sub_251F3F9B0(0, &qword_27F4C2348, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_251F3F414()
{
  if (!qword_27F4C2320)
  {
    sub_251F3F9B0(255, &qword_27F4C2328, MEMORY[0x277D83940]);
    v0 = sub_251F4DF3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C2320);
    }
  }
}

uint64_t sub_251F3F488(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t (*a5)(__int128 *))
{
  v7 = *(a4 + 16);
  v11 = *a4;
  v12 = v7;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 16))(a2, v8, v9);
  return a5(&v11);
}

uint64_t sub_251F3F51C(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = v4[2];
  v5 = v4[3];
  v7 = v4[4];
  v8 = a4[1];
  v10[0] = *a4;
  v10[1] = v8;
  v11[0] = a4[2];
  *(v11 + 9) = *(a4 + 41);
  return sub_251F3F6A4(a1, a2, v10, v6, v5, v7);
}

uint64_t sub_251F3F564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v12 = v4[4];
  v11 = v4[5];
  v13 = sub_251F3F5FC();
  sub_251F3F650();
  return sub_251F3E5BC(a1, a2, a3, a4, v12, v11, &type metadata for MockBatchedTopicRequest, v9, v13, v10);
}

unint64_t sub_251F3F5FC()
{
  result = qword_27F4C2330;
  if (!qword_27F4C2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2330);
  }

  return result;
}

unint64_t sub_251F3F650()
{
  result = qword_27F4C2338;
  if (!qword_27F4C2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2338);
  }

  return result;
}

uint64_t sub_251F3F6A4(void *a1, uint64_t a2, __int128 *a3, uint64_t (*a4)(__int128 *), uint64_t a5, uint64_t a6)
{
  v9 = a3[1];
  v29 = *a3;
  v30 = v9;
  *v31 = a3[2];
  *&v31[9] = *(a3 + 41);
  if (v31[24])
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    (*(v11 + 16))(a2, v10, v11);
    return a4(&v29);
  }

  else
  {
    v21 = v30;
    v22 = *(&v29 + 1);
    sub_251F3F8C0(*(&v29 + 1), v30);

    os_unfair_lock_lock((a6 + 16));

    sub_251F3EEB8(v14);
    v15 = *(a6 + 24);

    os_unfair_lock_unlock((a6 + 16));

    if (v29)
    {
      v16 = a1[3];
      v17 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v16);
      (*(v17 + 16))(a2, v16, v17);
      v26 = 0;
      LOBYTE(v23) = 1;
      *(&v23 + 1) = *(&v29 + 1);
      v24 = v30;
      *v25 = *v31;
      *&v25[16] = v15;
      v25[24] = 0;
      sub_251F3F8C0(*(&v29 + 1), v30);

      a4(&v23);
      v27[0] = v23;
      v27[1] = v24;
      v28[0] = *v25;
      *(v28 + 9) = *&v25[9];
      sub_251F3FEEC(v27, sub_251F3F948);
      v18 = v22;
      v19 = v21;
    }

    else
    {
      v19 = v30;
      v18 = *(&v29 + 1);
    }

    sub_251F3F904(v18, v19);
  }
}

uint64_t sub_251F3F8C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_251F3F904(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_251F3F948()
{
  if (!qword_27F4C2340)
  {
    sub_251F390E0();
    v0 = sub_251F4E37C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C2340);
    }
  }
}

void sub_251F3F9B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for MockTopicResponse);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251F3FA08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(a4 + 48);
  v13[2] = *(a4 + 32);
  v13[3] = v8;
  v14 = *(a4 + 64);
  v9 = *(a4 + 16);
  v13[0] = *a4;
  v13[1] = v9;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 16))(a2, v10, v11);
  return v7(v13);
}

uint64_t sub_251F3FA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v12 = v4[4];
  v11 = v4[5];
  v13 = sub_251F3FB20();
  return sub_251F3E5BC(a1, a2, a3, a4, v12, v11, &type metadata for MockStreamingTopicRequest, v9, v13, v10);
}

unint64_t sub_251F3FB20()
{
  result = qword_27F4C2350;
  if (!qword_27F4C2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2350);
  }

  return result;
}

uint64_t sub_251F3FB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v12 = v4[4];
  v11 = v4[5];
  v13 = sub_251F3FC00();
  return sub_251F3E5BC(a1, a2, a3, a4, v12, v11, &type metadata for MockTopicRequest, v9, v13, v10);
}

unint64_t sub_251F3FC00()
{
  result = qword_27F4C2358;
  if (!qword_27F4C2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2358);
  }

  return result;
}

uint64_t sub_251F3FC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[2];
  v9 = v4[3];
  v11 = v4[4];
  v10 = v4[5];
  v12 = v4[6];
  swift_getAssociatedTypeWitness();
  sub_251F390E0();
  v13 = *(sub_251F4E0DC() - 8);
  v14 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  return sub_251F3E070(a1, a2, a3, a4, v4 + v14, v4 + ((v14 + *(v13 + 64) + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80)), v8, v9, v11, v10, v12);
}

uint64_t sub_251F3FDA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251F3FE0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = (*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80);
  v4 = *(*(v1 - 8) + 64);
  v5 = *(type metadata accessor for TopicRequestToken() - 8);
  return (*(v2 + 16))(v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80)), v1, v2);
}

uint64_t sub_251F3FEEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251F3FF4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251F3FFB4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_251F3D750(a1, v1[6]);
}

uint64_t sub_251F3FFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_251F3956C(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_251F42BA8(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_251F43AB8(a1, sub_251F43B18);
    sub_251F41F84(a2, a3, v10);

    return sub_251F43AB8(v10, sub_251F43B18);
  }

  return result;
}

uint64_t sub_251F40088(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_251F42CFC(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_251F43AB8(a2, type metadata accessor for TopicRequestToken);
    *v2 = v19;
  }

  else
  {
    v9 = *v2;
    v10 = sub_251F3C1CC(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v20 = *v3;
      if (!v14)
      {
        sub_251F43138();
        v15 = v20;
      }

      v16 = *(v15 + 48);
      v17 = type metadata accessor for TopicRequestToken();
      sub_251F43AB8(v16 + *(*(v17 - 8) + 72) * v12, type metadata accessor for TopicRequestToken);
      v18 = *(*(v15 + 56) + 8 * v12);

      sub_251F42884(v12, v15);
      result = sub_251F43AB8(a2, type metadata accessor for TopicRequestToken);
      *v3 = v15;
    }

    else
    {
      return sub_251F43AB8(a2, type metadata accessor for TopicRequestToken);
    }
  }

  return result;
}

uint64_t RequestRegistry.__allocating_init(topicRegistry:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x277D84F98];
  *(result + 32) = a1;
  return result;
}

uint64_t RequestRegistry.init(topicRegistry:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = MEMORY[0x277D84F98];
  *(v1 + 32) = a1;
  return v1;
}

uint64_t RequestRegistry.execute<A>(request:token:context:handler:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  sub_251F3945C(255, &qword_27F4C20F0);
  v14 = sub_251F4E37C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = *a3;
  return sub_251F403E4(a1, a2, &v18, a4, a5, a6, a7);
}

uint64_t sub_251F403E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a5;
  v50 = a4;
  v55 = a2;
  v13 = type metadata accessor for TopicRequestToken();
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v16 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3[1];
  v48 = *a3;
  v53 = v7;
  v18 = *(v7 + 32);
  v19 = *(a7 + 56);
  v52 = a1;
  v20 = a7;
  v21 = a7 + 56;
  v54 = a6;
  v22 = a6;
  v23 = v19;
  v19(v62, v22, v20);
  v56[0] = v62[0];
  v56[1] = v62[1];
  TopicRegistry.topicEvaluator(for:)(v56, v63);

  if (!v8)
  {
    v45[0] = v23;
    v45[1] = v21;
    v46 = v17;
    v25 = v64;
    v26 = v65;
    v47 = __swift_project_boxed_opaque_existential_1(v63, v64);
    v27 = swift_allocObject();
    swift_weakInit();
    sub_251F3A464(v55, v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v49 + 80) + 40) & ~*(v49 + 80);
    v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v30[2] = v54;
    v30[3] = v20;
    v30[4] = v27;
    sub_251F41ED0(v16, v30 + v28);
    v31 = (v30 + v29);
    v32 = v51;
    *v31 = v50;
    v31[1] = v32;
    v62[3] = swift_getAssociatedTypeWitness();
    v62[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);

    sub_251F414D0(v52, sub_251F438BC, v30, v25, v54, v26, v20, boxed_opaque_existential_1);

    active = type metadata accessor for RequestRegistry.ActiveRequest();
    (v45[0])(v61, v54, v20);
    v60[0] = v61[0];
    v60[1] = v61[1];
    *&v59 = v48;
    *(&v59 + 1) = v46;
    sub_251F393F8(v62, v56);

    Current = CFAbsoluteTimeGetCurrent();
    v36 = v57;
    v37 = v58;
    v38 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    v39 = sub_251F433E0(v60, &v59, v38, Current, active, v36, v37);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v40 = v53;
    os_unfair_lock_lock(v53 + 4);

    v41 = *&v40[6]._os_unfair_lock_opaque;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56[0] = *&v40[6]._os_unfair_lock_opaque;
    *&v40[6]._os_unfair_lock_opaque = 0x8000000000000000;
    sub_251F42CFC(v39, v55, isUniquelyReferenced_nonNull_native);
    *&v40[6]._os_unfair_lock_opaque = v56[0];
    os_unfair_lock_unlock(v40 + 4);
    v43 = v39[10];
    v44 = v39[11];
    __swift_project_boxed_opaque_existential_1(v39 + 7, v43);
    (*(v44 + 32))(v43, v44);

    __swift_destroy_boxed_opaque_existential_1(v62);
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  return result;
}

void RequestRegistry.cancel(token:)(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));
  sub_251F408FC((v1 + 24), a1, v5);
  os_unfair_lock_unlock((v1 + 16));
  if (v5[0])
  {
    sub_251F393F8(v5[0] + 56, v5);
    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 40))(v3, v4);

    __swift_destroy_boxed_opaque_existential_1(v5);
  }
}

unint64_t sub_251F408FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = sub_251F3C1CC(a2);
  if (v7)
  {
    v8 = result;
    v9 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    v15 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_251F43138();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for TopicRequestToken();
    sub_251F43AB8(v12 + *(*(v13 - 8) + 72) * v8, type metadata accessor for TopicRequestToken);
    v14 = *(*(v11 + 56) + 8 * v8);
    result = sub_251F42884(v8, v11);
    *a1 = v11;
  }

  else
  {
    v14 = 0;
  }

  *a3 = v14;
  return result;
}

uint64_t sub_251F409D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_251F3C1CC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_251F43138();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for TopicRequestToken();
  sub_251F43AB8(v10 + *(*(v11 - 8) + 72) * v6, type metadata accessor for TopicRequestToken);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_251F42884(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t RequestRegistry.activeRequests.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

double RequestRegistry.activeEvaluator(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = RequestRegistry.subscript.getter(a1);
  if (v3)
  {
    sub_251F393F8(v3 + 56, a2);
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

uint64_t RequestRegistry.subscript.getter(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((v1 + 16));
  v4 = *(v1 + 24);
  if (*(v4 + 16) && (v5 = sub_251F3C1CC(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(v2 + 4);
  return v7;
}

uint64_t sub_251F40BAC(uint64_t *a1, os_unfair_lock_s **a2, uint64_t a3)
{
  v6 = type metadata accessor for TopicRequestToken();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v19 - v13;
  sub_251F3A464(a3, &v19 - v13);
  v15 = *a1;
  v16 = *a2;
  os_unfair_lock_lock(*a2 + 4);
  sub_251F3A464(v14, v11);

  sub_251F40088(v17, v11);
  os_unfair_lock_unlock(v16 + 4);
  return sub_251F43AB8(v14, type metadata accessor for TopicRequestToken);
}

uint64_t RequestRegistry.subscript.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRequestToken();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(v2 + 4);
  sub_251F3A464(a2, v8);

  sub_251F40088(v9, v8);
  os_unfair_lock_unlock(v2 + 4);

  return sub_251F43AB8(a2, type metadata accessor for TopicRequestToken);
}

void (*RequestRegistry.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 8) = v2;
  v8 = *(*(type metadata accessor for TopicRequestToken() - 8) + 64);
  if (v5)
  {
    v7[2] = swift_coroFrameAlloc();
    v7[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v7[2] = malloc(v8);
    v7[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  sub_251F3A464(a2, v9);
  *v7 = RequestRegistry.subscript.getter(a2);
  return sub_251F40E84;
}

void sub_251F40E84(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    sub_251F41ED0((*a1)[4], v3);

    os_unfair_lock_lock(v6 + 4);
    sub_251F3A464(v3, v5);

    sub_251F40088(v8, v5);
    os_unfair_lock_unlock(v6 + 4);

    sub_251F43AB8(v3, type metadata accessor for TopicRequestToken);
    v9 = *v2;
  }

  else
  {
    os_unfair_lock_lock(v6 + 4);
    sub_251F3A464(v4, v3);

    sub_251F40088(v10, v3);
    os_unfair_lock_unlock(v6 + 4);

    sub_251F43AB8(v4, type metadata accessor for TopicRequestToken);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t RequestRegistry.activeCount.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(*(v0 + 24) + 16);
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t sub_251F40FF8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    sub_251F41118(a1, a2 & 1, a4, a5);
  }

  return result;
}

void sub_251F41118(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void))
{
  v9 = (v4 + 16);
  v30[1] = *v4;
  v31 = type metadata accessor for TopicRequestToken();
  v10 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31, v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v4 + 16));
  if (*(*(v4 + 24) + 16) && (sub_251F3C1CC(a3), (v14 & 1) != 0))
  {
    if (a2)
    {
      sub_251F409D8(a3);
    }

    os_unfair_lock_unlock(v9);
    a4(a1, a2 & 1);
  }

  else
  {
    os_unfair_lock_unlock(v9);
    if (qword_2813DD980 != -1)
    {
      swift_once();
    }

    v15 = sub_251F4DF6C();
    __swift_project_value_buffer(v15, qword_2813DD988);
    sub_251F3A464(a3, v13);

    v16 = sub_251F4DF4C();
    v17 = sub_251F4E11C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136446466;
      v32 = v4;

      v20 = sub_251F4DFBC();
      v22 = sub_251F4BDA4(v20, v21, &v34);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      v32 = 0xD000000000000012;
      v33 = 0x8000000251F527F0;
      sub_251F4DF1C();
      sub_251F43A70(&qword_27F4C2110, MEMORY[0x277CC95F0]);
      v23 = sub_251F4E29C();
      MEMORY[0x2530931F0](v23);

      MEMORY[0x2530931F0](58, 0xE100000000000000);
      v24 = &v13[*(v31 + 20)];
      if (v24[1])
      {
        v25 = *v24;
        v26 = v24[1];
      }

      else
      {
        v26 = 0xE300000000000000;
        v25 = 7104878;
      }

      MEMORY[0x2530931F0](v25, v26);

      v27 = v32;
      v28 = v33;
      sub_251F43AB8(v13, type metadata accessor for TopicRequestToken);
      v29 = sub_251F4BDA4(v27, v28, &v34);

      *(v18 + 14) = v29;
      _os_log_impl(&dword_251F36000, v16, v17, "%{public}s: no active request for %{public}s, dropping result", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253093AA0](v19, -1, -1);
      MEMORY[0x253093AA0](v18, -1, -1);
    }

    else
    {

      sub_251F43AB8(v13, type metadata accessor for TopicRequestToken);
    }
  }
}

uint64_t sub_251F414D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v42 = a7;
  v43 = a8;
  v48 = a3;
  FunctionTypeMetadata2 = a2;
  v41 = a6;
  v44 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_251F4E14C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v39 - v16;
  v18 = *(*(a5 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v15, v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20, v25);
  v27 = &v39 - v26;
  (*(v28 + 16))(v22, a1, a5);
  v29 = swift_dynamicCast();
  v30 = *(v23 + 56);
  if (v29)
  {
    v30(v17, 0, 1, AssociatedTypeWitness);
    v39 = v23;
    (*(v23 + 32))(v27, v17, AssociatedTypeWitness);
    v31 = swift_allocObject();
    v32 = v44;
    v31[2] = v44;
    v31[3] = a5;
    v33 = v41;
    v34 = v42;
    v31[4] = v41;
    v31[5] = v34;
    v35 = v48;
    v31[6] = FunctionTypeMetadata2;
    v31[7] = v35;
    v46 = sub_251F439D4;
    v47 = v31;
    swift_getAssociatedTypeWitness();
    sub_251F3945C(255, &qword_27F4C20F0);
    sub_251F4E37C();
    FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_251F4E37C();
    swift_getFunctionTypeMetadata2();

    swift_dynamicCast();
    v36 = swift_allocObject();
    *(v36 + 16) = v32;
    *(v36 + 24) = a5;
    *(v36 + 32) = v33;
    *(v36 + 40) = v34;
    *(v36 + 48) = v45;
    (*(v33 + 40))(v27, sub_251F43A00, v36, v32, v33);

    return (*(v39 + 8))(v27, AssociatedTypeWitness);
  }

  else
  {
    v30(v17, 1, 1, AssociatedTypeWitness);
    (*(v12 + 8))(v17, v11);
    sub_251F3C60C();
    swift_allocError();
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 2;
    return swift_willThrow();
  }
}

uint64_t RequestRegistry.ActiveRequest.__allocating_init(topic:context:evaluator:creationTime:)(void *a1, _OWORD *a2, uint64_t *a3, double a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = sub_251F433E0(a1, a2, v11, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v12;
}

uint64_t RequestRegistry.ActiveRequest.Context.hash(into:)()
{
  if (!v0[1])
  {
    return MEMORY[0x253093560](0);
  }

  v1 = *v0;
  MEMORY[0x253093560](1);

  return sub_251F4DFCC();
}

uint64_t RequestRegistry.ActiveRequest.Context.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_251F4E33C();
  if (v2)
  {
    MEMORY[0x253093560](1);
    sub_251F4DFCC();
  }

  else
  {
    MEMORY[0x253093560](0);
  }

  return sub_251F4E36C();
}

uint64_t sub_251F41B40()
{
  v1 = *v0;
  v2 = v0[1];
  sub_251F4E33C();
  if (v2)
  {
    MEMORY[0x253093560](1);
    sub_251F4DFCC();
  }

  else
  {
    MEMORY[0x253093560](0);
  }

  return sub_251F4E36C();
}

uint64_t sub_251F41BB0()
{
  if (!v0[1])
  {
    return MEMORY[0x253093560](0);
  }

  v1 = *v0;
  MEMORY[0x253093560](1);

  return sub_251F4DFCC();
}

uint64_t sub_251F41C28()
{
  v1 = *v0;
  v2 = v0[1];
  sub_251F4E33C();
  if (v2)
  {
    MEMORY[0x253093560](1);
    sub_251F4DFCC();
  }

  else
  {
    MEMORY[0x253093560](0);
  }

  return sub_251F4E36C();
}

uint64_t RequestRegistry.ActiveRequest.topic.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t RequestRegistry.ActiveRequest.context.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t RequestRegistry.ActiveRequest.init(topic:context:evaluator:creationTime:)(void *a1, _OWORD *a2, uint64_t *a3, double a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v11, v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = sub_251F43340(a1, a2, v14, v4, v9, v10, a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v16;
}

void *RequestRegistry.ActiveRequest.deinit()
{
  v1 = v0[3];

  v2 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  return v0;
}

uint64_t RequestRegistry.ActiveRequest.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t RequestRegistry.deinit()
{
  sub_251F4358C(v0 + 24);
  v1 = *(v0 + 32);

  return v0;
}

uint64_t RequestRegistry.__deallocating_deinit()
{
  sub_251F4358C(v0 + 24);
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_251F41ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRequestToken();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

double sub_251F41F84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_251F3C154(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_251F42F9C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_251F3956C((*(v12 + 56) + 40 * v9), a3);
    sub_251F426C8(v9, v12);
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

uint64_t sub_251F42030(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_251F3CBA0();
  v36 = a2;
  result = sub_251F4E1AC();
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
        sub_251F3956C(v25, v37);
      }

      else
      {
        sub_251F393F8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_251F4E33C();
      sub_251F4DFCC();
      result = sub_251F4E36C();
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
      result = sub_251F3956C(v37, *(v8 + 56) + 40 * v16);
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

uint64_t sub_251F422E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TopicRequestToken();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v13 = *(*v2 + 24);
  }

  sub_251F43814();
  v14 = sub_251F4E1AC();
  v15 = v14;
  if (*(v12 + 16))
  {
    v16 = 0;
    v17 = *(v12 + 64);
    v48 = v2;
    v49 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v22 = v14 + 64;
    v50 = v11;
    v51 = v21;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v25 = (v20 - 1) & v20;
LABEL_17:
      v29 = v24 | (v16 << 6);
      v30 = *(v12 + 48);
      v53 = *(v7 + 72);
      v54 = v25;
      v31 = v30 + v53 * v29;
      if (a2)
      {
        sub_251F41ED0(v31, v11);
        v52 = *(*(v12 + 56) + 8 * v29);
      }

      else
      {
        sub_251F3A464(v31, v11);
        v52 = *(*(v12 + 56) + 8 * v29);
      }

      v32 = *(v15 + 40);
      sub_251F4E33C();
      sub_251F4DF1C();
      sub_251F43A70(&qword_27F4C2130, MEMORY[0x277CC95F0]);
      sub_251F4DF8C();
      v33 = &v11[*(v6 + 20)];
      if (*(v33 + 1))
      {
        v34 = v7;
        v35 = v15;
        v36 = v6;
        v37 = a2;
        v38 = v12;
        v39 = *v33;
        sub_251F4E35C();
        v12 = v38;
        a2 = v37;
        v6 = v36;
        v15 = v35;
        v7 = v34;
        v11 = v50;
        sub_251F4DFCC();
      }

      else
      {
        sub_251F4E35C();
      }

      result = sub_251F4E36C();
      v40 = -1 << *(v15 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v22 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v22 + 8 * v42);
          if (v46 != -1)
          {
            v23 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v41) & ~*(v22 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      sub_251F41ED0(v11, *(v15 + 48) + v53 * v23);
      v21 = v51;
      *(*(v15 + 56) + 8 * v23) = v52;
      ++*(v15 + 16);
      v20 = v54;
    }

    v26 = v16;
    result = v49;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v16 >= v21)
      {
        break;
      }

      v28 = v49[v16];
      ++v26;
      if (v28)
      {
        v24 = __clz(__rbit64(v28));
        v25 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_39;
    }

    v47 = 1 << *(v12 + 32);
    v3 = v48;
    if (v47 >= 64)
    {
      bzero(v49, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v49 = -1 << v47;
    }

    *(v12 + 16) = 0;
  }

LABEL_39:
  *v3 = v15;
  return result;
}

uint64_t sub_251F426C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_251F4E15C() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_251F4E33C();

      sub_251F4DFCC();
      v15 = sub_251F4E36C();

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

unint64_t sub_251F42884(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRequestToken();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v32 = a2;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = (sub_251F4E15C() + 1) & ~v11;
    v15 = *(v5 + 72);
    v16 = v32;
    v33 = v15;
    while (1)
    {
      v17 = v15 * v12;
      v18 = v34;
      sub_251F3A464(*(v16 + 48) + v15 * v12, v34);
      v19 = *(v16 + 40);
      sub_251F4E33C();
      sub_251F4DF1C();
      sub_251F43A70(&qword_27F4C2130, MEMORY[0x277CC95F0]);
      sub_251F4DF8C();
      v20 = (v18 + *(v4 + 20));
      if (v20[1])
      {
        v21 = v4;
        v22 = *v20;
        sub_251F4E35C();
        v4 = v21;
        sub_251F4DFCC();
      }

      else
      {
        sub_251F4E35C();
      }

      v23 = sub_251F4E36C();
      result = sub_251F43AB8(v34, type metadata accessor for TopicRequestToken);
      v24 = v23 & v13;
      if (a1 >= v14)
      {
        v16 = v32;
        v15 = v33;
        if (v24 < v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v16 = v32;
        v15 = v33;
        if (v24 >= v14)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v24)
      {
LABEL_13:
        v25 = *(v16 + 48);
        result = v25 + v15 * a1;
        if (v15 * a1 < v17 || result >= v25 + v17 + v15)
        {
          result = swift_arrayInitWithTakeFrontToBack();
LABEL_18:
          v15 = v33;
        }

        else if (v15 * a1 != v17)
        {
          result = swift_arrayInitWithTakeBackToFront();
          goto LABEL_18;
        }

        v26 = *(v16 + 56);
        v27 = (v26 + 8 * a1);
        v28 = (v26 + 8 * v12);
        if (a1 != v12 || v27 >= v28 + 1)
        {
          *v27 = *v28;
          a1 = v12;
        }
      }

LABEL_4:
      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  v16 = v32;
LABEL_23:
  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v16 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v31;
    ++*(v16 + 36);
  }

  return result;
}

uint64_t sub_251F42BA8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_251F3C154(a2, a3);
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
      sub_251F42F9C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_251F42030(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_251F3C154(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_251F4E2EC();
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

    return sub_251F3956C(a1, v23);
  }

  else
  {
    sub_251F42E8C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_251F42CFC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TopicRequestToken();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_251F3C1CC(a2);
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
      sub_251F43138();
      goto LABEL_7;
    }

    sub_251F422E8(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_251F3C1CC(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_251F3A464(a2, v12);
      return sub_251F42EFC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_251F4E2EC();
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

uint64_t sub_251F42E8C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_251F3956C(a4, a5[7] + 40 * a1);
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

uint64_t sub_251F42EFC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for TopicRequestToken();
  result = sub_251F41ED0(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_251F42F9C()
{
  v1 = v0;
  sub_251F3CBA0();
  v2 = *v0;
  v3 = sub_251F4E19C();
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
        sub_251F393F8(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_251F3956C(v25, *(v4 + 56) + v22);
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

void *sub_251F43138()
{
  v1 = v0;
  v2 = type metadata accessor for TopicRequestToken();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F43814();
  v7 = *v0;
  v8 = sub_251F4E19C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v25 = v1;
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, (v7 + 64), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = *(v26 + 72) * v22;
        sub_251F3A464(*(v7 + 48) + v23, v6);
        v24 = *(*(v7 + 56) + 8 * v22);
        sub_251F41ED0(v6, *(v9 + 48) + v23);
        *(*(v9 + 56) + 8 * v22) = v24;
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v25;
        goto LABEL_21;
      }

      v21 = *(v7 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_251F43340(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(a4 + 80) = a5;
  *(a4 + 88) = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a4 + 56));
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v14 = a1[1];
  *(a4 + 16) = *a1;
  *(a4 + 24) = v14;
  *(a4 + 40) = *a2;
  *(a4 + 32) = a7;
  return a4;
}

uint64_t sub_251F433E0(void *a1, _OWORD *a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  (*(v13 + 16))(v16, a3, a6);
  *(v17 + 80) = a6;
  *(v17 + 88) = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 56));
  (*(v13 + 32))(boxed_opaque_existential_1, v16, a6);
  v19 = a1[1];
  *(v17 + 16) = *a1;
  *(v17 + 24) = v19;
  *(v17 + 40) = *a2;
  *(v17 + 32) = a4;
  return v17;
}

uint64_t _s16HealthTopicsCore15RequestRegistryC06ActiveD0C7ContextO2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_251F4E2BC();
}

unint64_t sub_251F435D4()
{
  result = qword_27F4C2360;
  if (!qword_27F4C2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2360);
  }

  return result;
}

void sub_251F43678()
{
  if (!qword_27F4C2368)
  {
    v0 = sub_251F4DF2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C2368);
    }
  }
}

uint64_t sub_251F43718(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_251F43768(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_251F437BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_251F437D4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_251F43814()
{
  if (!qword_27F4C2370)
  {
    type metadata accessor for TopicRequestToken();
    type metadata accessor for RequestRegistry.ActiveRequest();
    sub_251F43A70(&qword_27F4C2378, type metadata accessor for TopicRequestToken);
    v0 = sub_251F4E1CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C2370);
    }
  }
}

uint64_t sub_251F438BC(uint64_t a1, char a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(type metadata accessor for TopicRequestToken() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = v2[4];
  v10 = v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);

  return sub_251F40FF8(a1, a2, v9, v2 + v8, v11);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x253093AA0);
  }

  return result;
}

uint64_t sub_251F439D4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  return v3(a1, *a2);
}

uint64_t sub_251F43A00(uint64_t a1, char a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v6 = a2;
  return v3(a1, &v6);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_251F43A70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251F43AB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251F43B18()
{
  if (!qword_27F4C2380)
  {
    sub_251F3945C(255, &qword_2813DDB00);
    v0 = sub_251F4E14C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C2380);
    }
  }
}

uint64_t MockTopicRequest.topic.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MockTopicRequest.debugIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

HealthTopicsCore::MockTopicRequest __swiftcall MockTopicRequest.init(topic:debugIdentifier:)(HealthTopicsCore::Topic topic, Swift::String debugIdentifier)
{
  v3 = *(topic.identifier._countAndFlagsBits + 8);
  *v2 = *topic.identifier._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = topic.identifier._object;
  v2[3] = debugIdentifier._countAndFlagsBits;
  result.debugIdentifier = debugIdentifier;
  result.topic = topic;
  return result;
}

uint64_t sub_251F43BD0()
{
  if (*v0)
  {
    result = 0x6564496775626564;
  }

  else
  {
    result = 0x6369706F74;
  }

  *v0;
  return result;
}

uint64_t sub_251F43C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_251F4E2BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6564496775626564 && a2 == 0xEF7265696669746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251F4E2BC();

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

uint64_t sub_251F43CF4(uint64_t a1)
{
  v2 = sub_251F46494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251F43D30(uint64_t a1)
{
  v2 = sub_251F46494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MockTopicRequest.encode(to:)(void *a1)
{
  sub_251F47138(0, &qword_27F4C2388, sub_251F46494, &type metadata for MockTopicRequest.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v9 = v16 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v16[1] = v1[3];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F46494();

  sub_251F4E39C();
  v17 = v10;
  v18 = v11;
  v19 = 0;
  sub_251F464E8();
  v14 = v16[3];
  sub_251F4E28C();

  if (!v14)
  {
    LOBYTE(v17) = 1;
    sub_251F4E25C();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t MockTopicRequest.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_251F4DFCC();

  return sub_251F4DFCC();
}

uint64_t MockTopicRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_251F4E33C();
  sub_251F4DFCC();
  sub_251F4DFCC();
  return sub_251F4E36C();
}

uint64_t MockTopicRequest.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v19 = a2;
  sub_251F47138(0, &qword_27F4C23A0, sub_251F46494, &type metadata for MockTopicRequest.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F46494();
  sub_251F4E38C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v19;
  v22 = 0;
  sub_251F4653C();
  sub_251F4E22C();
  v13 = v21;
  v18 = v20;
  LOBYTE(v20) = 1;
  v14 = sub_251F4E1FC();
  v16 = v15;
  (*(v6 + 8))(v10, v5);
  *v12 = v18;
  v12[1] = v13;
  v12[2] = v14;
  v12[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_251F44244()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_251F442A4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_251F4E33C();
  sub_251F4DFCC();
  sub_251F4DFCC();
  return sub_251F4E36C();
}

uint64_t sub_251F4430C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_251F4DFCC();

  return sub_251F4DFCC();
}

uint64_t sub_251F4435C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_251F4E33C();
  sub_251F4DFCC();
  sub_251F4DFCC();
  return sub_251F4E36C();
}

uint64_t MockTopicResponse.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static MockTopicResponse.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_251F4E2BC();
  }
}

uint64_t sub_251F44440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_251F4E2BC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251F444C4(uint64_t a1)
{
  v2 = sub_251F46590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251F44500(uint64_t a1)
{
  v2 = sub_251F46590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MockTopicResponse.encode(to:)(void *a1)
{
  sub_251F47138(0, &qword_27F4C23B0, sub_251F46590, &type metadata for MockTopicResponse.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F46590();
  sub_251F4E39C();
  sub_251F4E25C();
  return (*(v5 + 8))(v9, v4);
}

uint64_t MockTopicResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_251F47138(0, &qword_27F4C23C0, sub_251F46590, &type metadata for MockTopicResponse.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F46590();
  sub_251F4E38C();
  if (!v2)
  {
    v12 = v18;
    v13 = sub_251F4E1FC();
    v15 = v14;
    (*(v6 + 8))(v10, v5);
    *v12 = v13;
    v12[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_251F44864(void *a1)
{
  sub_251F47138(0, &qword_27F4C23B0, sub_251F46590, &type metadata for MockTopicResponse.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F46590();
  sub_251F4E39C();
  sub_251F4E25C();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_251F449CC(uint64_t a1)
{
  v2 = sub_251F46A48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251F44A08(uint64_t a1)
{
  v2 = sub_251F46A48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MockStreamingTopicResponse.value.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MockStreamingTopicResponse.nextRequest.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_251F3F8C0(v2, v3);
}

void __swiftcall MockStreamingTopicResponse.init(value:nextRequest:finished:)(HealthTopicsCore::MockStreamingTopicResponse *__return_ptr retstr, Swift::String value, HealthTopicsCore::MockStreamingTopicRequest_optional *nextRequest, Swift::Bool finished)
{
  object = nextRequest->value.debugIdentifier._object;
  retstr->value = value;
  v5 = *&nextRequest->value.value;
  retstr->nextRequest.value.topic = nextRequest->value.topic;
  *&retstr->nextRequest.value.value = v5;
  retstr->nextRequest.value.debugIdentifier._object = object;
  retstr->finished = finished;
}

uint64_t sub_251F44BA0()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x757165527478656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656873696E6966;
  }
}

uint64_t sub_251F44C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251F48440(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251F44C28(uint64_t a1)
{
  v2 = sub_251F46E34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251F44C64(uint64_t a1)
{
  v2 = sub_251F46E34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MockStreamingTopicResponse.encode(to:)(void *a1)
{
  sub_251F47138(0, &qword_27F4C23E0, sub_251F46E34, &type metadata for MockStreamingTopicResponse.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v9 = &v21 - v8;
  v10 = *v1;
  v11 = v1[1];
  v27 = v1[2];
  v28 = v11;
  v12 = v1[3];
  v25 = v1[4];
  v26 = v12;
  v13 = v1[5];
  v23 = v1[6];
  v24 = v13;
  v22 = v1[7];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F46E34();
  sub_251F4E39C();
  LOBYTE(v30) = 0;
  v15 = v29;
  sub_251F4E26C();
  if (!v15)
  {
    v17 = v23;
    v16 = v24;
    v19 = v25;
    v18 = v26;
    LOBYTE(v30) = 1;
    sub_251F4E25C();
    v30 = v18;
    v31 = v19;
    v32 = v16;
    v33 = v17;
    v34 = v22;
    v35 = 2;
    sub_251F3F8C0(v18, v19);
    sub_251F46E88();
    sub_251F4E24C();
    sub_251F3F904(v30, v31);
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t MockStreamingTopicResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v48 = a2;
  sub_251F47138(0, &qword_27F4C23F8, sub_251F46E34, &type metadata for MockStreamingTopicResponse.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F46E34();
  sub_251F4E38C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v6;
  v13 = v48;
  v35 = 0;
  v14 = sub_251F4E20C();
  v35 = 1;
  v15 = sub_251F4E1FC();
  v17 = v16;
  v30 = v15;
  v43 = 2;
  sub_251F46EDC();
  sub_251F4E1EC();
  v18 = v14 & 1;
  v29 = v14 & 1;
  (*(v12 + 8))(v10, v5);
  v19 = v45;
  v20 = *(&v46 + 1);
  v28 = v46;
  LOBYTE(v31) = v18;
  *(&v31 + 1) = v47[0];
  DWORD1(v31) = *(v47 + 3);
  v21 = v30;
  *(&v31 + 1) = v30;
  *&v32 = v17;
  *(&v32 + 1) = v44;
  v22 = v44;
  v33 = v45;
  v34 = v46;
  v23 = v31;
  v24 = v32;
  v25 = v46;
  v13[2] = v45;
  v13[3] = v25;
  *v13 = v23;
  v13[1] = v24;
  sub_251F46F30(&v31, &v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35 = v29;
  *v36 = v47[0];
  *&v36[3] = *(v47 + 3);
  v37 = v21;
  v38 = v17;
  v39 = v22;
  v40 = v19;
  v41 = v28;
  v42 = v20;
  return sub_251F46F68(&v35);
}

uint64_t sub_251F45210@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_251F3F8C0(v2, v3);
}

uint64_t MockBatchedTopicRequest.topic.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MockBatchedTopicRequest.debugIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void __swiftcall MockBatchedTopicRequest.init(topic:value:debugIdentifier:)(HealthTopicsCore::MockBatchedTopicRequest *__return_ptr retstr, HealthTopicsCore::Topic topic, Swift::Int value, Swift::String debugIdentifier)
{
  v4 = *(topic.identifier._countAndFlagsBits + 8);
  retstr->topic.identifier._countAndFlagsBits = *topic.identifier._countAndFlagsBits;
  retstr->topic.identifier._object = v4;
  retstr->value = topic.identifier._object;
  retstr->debugIdentifier._countAndFlagsBits = value;
  retstr->debugIdentifier._object = debugIdentifier._countAndFlagsBits;
}

uint64_t sub_251F452D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4[1];
  *a4 = *v4;
  a4[1] = v5;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
}

uint64_t sub_251F45338(uint64_t a1)
{
  v2 = sub_251F46F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251F45374(uint64_t a1)
{
  v2 = sub_251F46F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251F45400(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  v24 = a5;
  sub_251F47138(0, a2, a3, a4, MEMORY[0x277D84538]);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v23 - v11;
  v14 = *v5;
  v13 = v5[1];
  v15 = v5[2];
  v23[2] = v5[3];
  v23[3] = v15;
  v23[1] = v5[4];
  v17 = a1[3];
  v16 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  v24();

  sub_251F4E39C();
  v26 = v14;
  v27 = v13;
  v28 = 0;
  sub_251F464E8();
  v21 = v25;
  sub_251F4E28C();
  if (v21)
  {
  }

  else
  {

    LOBYTE(v26) = 1;
    sub_251F4E27C();
    LOBYTE(v26) = 2;
    sub_251F4E25C();
  }

  return (*(v8 + 8))(v12, v20);
}

uint64_t sub_251F455F8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_251F4DFCC();
  MEMORY[0x253093560](v3);

  return sub_251F4DFCC();
}

uint64_t sub_251F45664()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_251F4E33C();
  sub_251F4DFCC();
  MEMORY[0x253093560](v3);
  sub_251F4DFCC();
  return sub_251F4E36C();
}

uint64_t sub_251F45734@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, void *a6@<X8>)
{
  v29 = a6;
  sub_251F47138(0, a2, a3, a4, MEMORY[0x277D844C8]);
  v30 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v27 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_251F4E38C();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v10;
  v17 = v29;
  v33 = 0;
  sub_251F4653C();
  v18 = v30;
  sub_251F4E22C();
  v19 = v31;
  v20 = v32;
  LOBYTE(v31) = 1;
  v28 = sub_251F4E21C();
  LOBYTE(v31) = 2;
  v21 = sub_251F4E1FC();
  v24 = v23;
  v25 = *(v16 + 8);
  v27 = v21;
  v25(v14, v18);
  *v17 = v19;
  v17[1] = v20;
  v26 = v27;
  v17[2] = v28;
  v17[3] = v26;
  v17[4] = v24;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_251F459E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_251F4E33C();
  sub_251F4DFCC();
  MEMORY[0x253093560](v3);
  sub_251F4DFCC();
  return sub_251F4E36C();
}

uint64_t MockBatchedTopicResponse.nextRequest.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_251F3F8C0(v2, v3);
}

__n128 MockBatchedTopicResponse.nextRequest.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  sub_251F3F904(v1[1], v1[2]);
  result = *a1;
  *(v1 + 3) = *(a1 + 16);
  *(v1 + 1) = result;
  v1[5] = v3;
  return result;
}

uint64_t MockBatchedTopicResponse.elements.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

__n128 MockBatchedTopicResponse.init(elements:nextRequest:finished:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 32);
  *(a4 + 48) = a1;
  sub_251F3F904(0, 0);
  result = *a2;
  *(a4 + 24) = *(a2 + 16);
  *(a4 + 8) = result;
  *(a4 + 40) = v7;
  *a4 = a3;
  return result;
}

uint64_t sub_251F45BE4(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_251F4E2BC() & 1) == 0)
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

uint64_t sub_251F45C74()
{
  v1 = 0x757165527478656ELL;
  if (*v0 != 1)
  {
    v1 = 0x73746E656D656C65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656873696E6966;
  }
}

uint64_t sub_251F45CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251F48670(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251F45D00(uint64_t a1)
{
  v2 = sub_251F46FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251F45D3C(uint64_t a1)
{
  v2 = sub_251F46FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MockBatchedTopicResponse.encode(to:)(void *a1)
{
  sub_251F47138(0, &qword_27F4C2420, sub_251F46FEC, &type metadata for MockBatchedTopicResponse.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v9 = &v18 - v8;
  v10 = *v1;
  v11 = v1[1];
  v22 = v1[2];
  v23 = v11;
  v12 = v1[3];
  v20 = v1[4];
  v21 = v12;
  v13 = v1[5];
  v18 = v1[6];
  v19 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F46FEC();
  sub_251F4E39C();
  LOBYTE(v25) = 0;
  v15 = v24;
  sub_251F4E26C();
  if (!v15)
  {
    v16 = v18;
    v25 = v23;
    v26 = v22;
    v27 = v21;
    v28 = v20;
    v29 = v19;
    v30 = 1;
    sub_251F3F8C0(v23, v22);
    sub_251F47040();
    sub_251F4E24C();
    sub_251F3F904(v25, v26);
    v25 = v16;
    v30 = 2;
    sub_251F47094();
    sub_251F471F4(&qword_27F4C2438, sub_251F470E4);
    sub_251F4E28C();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t MockBatchedTopicResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_251F47138(0, &qword_27F4C2448, sub_251F46FEC, &type metadata for MockBatchedTopicResponse.CodingKeys, MEMORY[0x277D844C8]);
  v24 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F46FEC();
  sub_251F4E38C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_251F3F904(0, 0);
  }

  else
  {
    v23 = v6;
    LOBYTE(v25) = 0;
    v30 = sub_251F4E20C() & 1;
    v31 = 1;
    sub_251F471A0();
    sub_251F4E1EC();
    v12 = v25;
    v13 = v26;
    v14 = v27;
    v21 = a2;
    v22 = v28;
    v15 = v29;
    sub_251F3F904(0, 0);
    sub_251F47094();
    v31 = 2;
    sub_251F471F4(&qword_27F4C2458, sub_251F47260);
    sub_251F4E22C();
    (*(v23 + 8))(v10, v24);
    v16 = v25;
    v17 = v21;
    v18 = v22;
    *v21 = v30;
    v17[1] = v12;
    v17[2] = v13;
    v17[3] = v14;
    v17[4] = v18;
    v17[5] = v15;
    v17[6] = v16;
    sub_251F3F8C0(v12, v13);

    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_251F3F904(v12, v13);
  }
}

uint64_t sub_251F46340(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_251F46390@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_251F3F8C0(v2, v3);
}

uint64_t _s16HealthTopicsCore16MockTopicRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_251F4E2BC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_251F4E2BC();
    }
  }

  return result;
}

unint64_t sub_251F46494()
{
  result = qword_27F4C2390;
  if (!qword_27F4C2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2390);
  }

  return result;
}

unint64_t sub_251F464E8()
{
  result = qword_27F4C2398;
  if (!qword_27F4C2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2398);
  }

  return result;
}

unint64_t sub_251F4653C()
{
  result = qword_27F4C23A8;
  if (!qword_27F4C23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C23A8);
  }

  return result;
}

unint64_t sub_251F46590()
{
  result = qword_27F4C23B8;
  if (!qword_27F4C23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C23B8);
  }

  return result;
}

uint64_t _s16HealthTopicsCore24MockBatchedTopicResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v13 = a2[5];
  v12 = a2[6];
  if (!v3)
  {
    v18 = a2[6];
    v19 = a1[6];
    sub_251F3F8C0(v2, 0);
    if (!v9)
    {
      sub_251F3F8C0(v8, 0);
      v3 = 0;
      goto LABEL_19;
    }

    sub_251F3F8C0(v8, v9);
    goto LABEL_14;
  }

  if (!v9)
  {
    sub_251F3F8C0(a1[1], v3);
    sub_251F3F8C0(v8, 0);
    sub_251F3F8C0(v2, v3);

LABEL_14:
    sub_251F3F904(v2, v3);
    v14 = v8;
    v15 = v9;
LABEL_16:
    sub_251F3F904(v14, v15);
    return 0;
  }

  v18 = a2[6];
  v19 = a1[6];
  if ((v2 != v8 || v3 != v9) && (sub_251F4E2BC() & 1) == 0 || v5 != v10)
  {
    sub_251F3F8C0(v2, v3);
    sub_251F3F8C0(v8, v9);
    sub_251F3F8C0(v2, v3);
    sub_251F3F904(v8, v9);

    v14 = v2;
    v15 = v3;
    goto LABEL_16;
  }

  if (v4 != v11 || v7 != v13)
  {
    v17 = sub_251F4E2BC();
    sub_251F3F8C0(v2, v3);
    sub_251F3F8C0(v8, v9);
    sub_251F3F8C0(v2, v3);
    sub_251F3F904(v8, v9);

    sub_251F3F904(v2, v3);
    if (v17)
    {
      goto LABEL_20;
    }

    return 0;
  }

  sub_251F3F8C0(v2, v3);
  sub_251F3F8C0(v8, v9);
  sub_251F3F8C0(v2, v3);
  sub_251F3F904(v8, v9);

LABEL_19:
  sub_251F3F904(v2, v3);
LABEL_20:

  return sub_251F45BE4(v19, v18);
}

uint64_t sub_251F46978(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_251F4E2BC();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v6)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_251F4E2BC();
}

unint64_t sub_251F46A48()
{
  result = qword_27F4C23D0;
  if (!qword_27F4C23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C23D0);
  }

  return result;
}

BOOL _s16HealthTopicsCore26MockStreamingTopicResponseV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a2[3];
  v9 = a2[4];
  v11 = a2[5];
  v10 = a2[6];
  v12 = a2[7];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_251F4E2BC() & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    sub_251F3F8C0(v3, 0);
    if (!v9)
    {
      sub_251F3F8C0(v8, 0);
      v13 = v3;
      v14 = 0;
      goto LABEL_24;
    }

    sub_251F3F8C0(v8, v9);
    goto LABEL_18;
  }

  if (!v9)
  {
    sub_251F3F8C0(v3, v5);
    sub_251F3F8C0(v8, 0);
    sub_251F3F8C0(v3, v5);

LABEL_18:
    sub_251F3F904(v3, v5);
    v15 = v8;
    v16 = v9;
LABEL_20:
    sub_251F3F904(v15, v16);
    return 0;
  }

  if ((v3 != v8 || v5 != v9) && (sub_251F4E2BC() & 1) == 0 || v4 != v11)
  {
    sub_251F3F8C0(v3, v5);
    sub_251F3F8C0(v8, v9);
    sub_251F3F8C0(v3, v5);
    sub_251F3F904(v8, v9);

    v15 = v3;
    v16 = v5;
    goto LABEL_20;
  }

  if (v7 == v10 && v6 == v12)
  {
    sub_251F3F8C0(v3, v5);
    sub_251F3F8C0(v8, v9);
    sub_251F3F8C0(v3, v5);
    sub_251F3F904(v8, v9);

    v13 = v3;
    v14 = v5;
LABEL_24:
    sub_251F3F904(v13, v14);
    return 1;
  }

  v17 = sub_251F4E2BC();
  sub_251F3F8C0(v3, v5);
  sub_251F3F8C0(v8, v9);
  sub_251F3F8C0(v3, v5);
  sub_251F3F904(v8, v9);

  sub_251F3F904(v3, v5);
  return (v17 & 1) != 0;
}

unint64_t sub_251F46E34()
{
  result = qword_27F4C23E8;
  if (!qword_27F4C23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C23E8);
  }

  return result;
}

unint64_t sub_251F46E88()
{
  result = qword_27F4C23F0;
  if (!qword_27F4C23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C23F0);
  }

  return result;
}

unint64_t sub_251F46EDC()
{
  result = qword_27F4C2400;
  if (!qword_27F4C2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2400);
  }

  return result;
}

unint64_t sub_251F46F98()
{
  result = qword_27F4C2410;
  if (!qword_27F4C2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2410);
  }

  return result;
}

unint64_t sub_251F46FEC()
{
  result = qword_27F4C2428;
  if (!qword_27F4C2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2428);
  }

  return result;
}

unint64_t sub_251F47040()
{
  result = qword_27F4C2430;
  if (!qword_27F4C2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2430);
  }

  return result;
}

void sub_251F47094()
{
  if (!qword_27F4C2328)
  {
    v0 = sub_251F4E01C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C2328);
    }
  }
}

unint64_t sub_251F470E4()
{
  result = qword_27F4C2440;
  if (!qword_27F4C2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2440);
  }

  return result;
}

void sub_251F47138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_251F471A0()
{
  result = qword_27F4C2450;
  if (!qword_27F4C2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2450);
  }

  return result;
}

uint64_t sub_251F471F4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_251F47094();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251F47260()
{
  result = qword_27F4C2460;
  if (!qword_27F4C2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2460);
  }

  return result;
}

unint64_t sub_251F472F4()
{
  result = qword_27F4C2468;
  if (!qword_27F4C2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2468);
  }

  return result;
}

unint64_t sub_251F47348()
{
  result = qword_27F4C2470;
  if (!qword_27F4C2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2470);
  }

  return result;
}

unint64_t sub_251F4739C()
{
  result = qword_27F4C2478;
  if (!qword_27F4C2478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2478);
  }

  return result;
}

unint64_t sub_251F473F0(uint64_t a1)
{
  result = sub_251F3FC00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_251F4741C()
{
  result = qword_27F4C2480;
  if (!qword_27F4C2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2480);
  }

  return result;
}

unint64_t sub_251F47474()
{
  result = qword_27F4C2488;
  if (!qword_27F4C2488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2488);
  }

  return result;
}

unint64_t sub_251F474CC()
{
  result = qword_27F4C2490;
  if (!qword_27F4C2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2490);
  }

  return result;
}

unint64_t sub_251F47560()
{
  result = qword_27F4C2498;
  if (!qword_27F4C2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2498);
  }

  return result;
}

unint64_t sub_251F475B4(uint64_t a1)
{
  result = sub_251F3FB20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_251F475E0()
{
  result = qword_27F4C24A0;
  if (!qword_27F4C24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C24A0);
  }

  return result;
}

unint64_t sub_251F47668()
{
  result = qword_27F4C24A8;
  if (!qword_27F4C24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C24A8);
  }

  return result;
}

unint64_t sub_251F476C0()
{
  result = qword_27F4C24B0;
  if (!qword_27F4C24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C24B0);
  }

  return result;
}

uint64_t sub_251F47754(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_251F477A8()
{
  result = qword_27F4C24B8;
  if (!qword_27F4C24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C24B8);
  }

  return result;
}

unint64_t sub_251F477FC(uint64_t a1)
{
  result = sub_251F3F5FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_251F47828()
{
  result = qword_27F4C24C0;
  if (!qword_27F4C24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C24C0);
  }

  return result;
}

unint64_t sub_251F4787C(uint64_t a1)
{
  result = sub_251F478A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_251F478A4()
{
  result = qword_27F4C24C8;
  if (!qword_27F4C24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C24C8);
  }

  return result;
}

uint64_t sub_251F47928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
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

uint64_t sub_251F47970(uint64_t a1, int a2)
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

uint64_t sub_251F479B8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16HealthTopicsCore25MockStreamingTopicRequestVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_251F47A68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_251F47AB0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_251F47B10(uint64_t a1, int a2)
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

uint64_t sub_251F47B58(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_251F47BCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_251F47C14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251F47CA0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_251F47D30(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_251F47E14()
{
  result = qword_27F4C24D0;
  if (!qword_27F4C24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C24D0);
  }

  return result;
}

unint64_t sub_251F47E6C()
{
  result = qword_27F4C24D8;
  if (!qword_27F4C24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C24D8);
  }

  return result;
}

unint64_t sub_251F47EC4()
{
  result = qword_27F4C24E0;
  if (!qword_27F4C24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C24E0);
  }

  return result;
}

unint64_t sub_251F47F1C()
{
  result = qword_27F4C24E8;
  if (!qword_27F4C24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C24E8);
  }

  return result;
}

unint64_t sub_251F47F74()
{
  result = qword_27F4C24F0;
  if (!qword_27F4C24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C24F0);
  }

  return result;
}

unint64_t sub_251F47FCC()
{
  result = qword_27F4C24F8;
  if (!qword_27F4C24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C24F8);
  }

  return result;
}

unint64_t sub_251F48024()
{
  result = qword_27F4C2500;
  if (!qword_27F4C2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2500);
  }

  return result;
}

unint64_t sub_251F4807C()
{
  result = qword_27F4C2508;
  if (!qword_27F4C2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2508);
  }

  return result;
}

unint64_t sub_251F480D4()
{
  result = qword_27F4C2510;
  if (!qword_27F4C2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2510);
  }

  return result;
}

unint64_t sub_251F4812C()
{
  result = qword_27F4C2518;
  if (!qword_27F4C2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2518);
  }

  return result;
}

unint64_t sub_251F48184()
{
  result = qword_27F4C2520;
  if (!qword_27F4C2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2520);
  }

  return result;
}

unint64_t sub_251F481DC()
{
  result = qword_27F4C2528;
  if (!qword_27F4C2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2528);
  }

  return result;
}

unint64_t sub_251F48234()
{
  result = qword_27F4C2530;
  if (!qword_27F4C2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2530);
  }

  return result;
}

unint64_t sub_251F4828C()
{
  result = qword_27F4C2538;
  if (!qword_27F4C2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2538);
  }

  return result;
}

unint64_t sub_251F482E4()
{
  result = qword_27F4C2540;
  if (!qword_27F4C2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2540);
  }

  return result;
}

unint64_t sub_251F4833C()
{
  result = qword_27F4C2548;
  if (!qword_27F4C2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2548);
  }

  return result;
}

unint64_t sub_251F48394()
{
  result = qword_27F4C2550;
  if (!qword_27F4C2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2550);
  }

  return result;
}

unint64_t sub_251F483EC()
{
  result = qword_27F4C2558;
  if (!qword_27F4C2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C2558);
  }

  return result;
}

uint64_t sub_251F48440(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656873696E6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_251F4E2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_251F4E2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x757165527478656ELL && a2 == 0xEB00000000747365)
  {

    return 2;
  }

  else
  {
    v6 = sub_251F4E2BC();

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

uint64_t sub_251F48558(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_251F4E2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_251F4E2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564496775626564 && a2 == 0xEF7265696669746ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_251F4E2BC();

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

uint64_t sub_251F48670(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656873696E6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_251F4E2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x757165527478656ELL && a2 == 0xEB00000000747365 || (sub_251F4E2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_251F4E2BC();

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

uint64_t MockTopicStore.__allocating_init()()
{
  v0 = swift_allocObject();
  MockTopicStore.init()();
  return v0;
}

uint64_t MockTopicStore.init()()
{
  type metadata accessor for TopicRegistry();
  v1 = swift_allocObject();
  v2 = sub_251F3C4F4(MEMORY[0x277D84F90]);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  type metadata accessor for RequestRegistry();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = MEMORY[0x277D84F98];
  *(v3 + 32) = v1;
  *(v0 + 24) = v3;
  sub_251F492E8();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v0 + 16) = v4;
  return v0;
}

uint64_t (*MockTopicStore.cancelHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_251F49370;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_251F37460(v2);
  os_unfair_lock_unlock((v1 + 32));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_251F49348;
}

uint64_t sub_251F489A4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = MockTopicStore.cancelHandler.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_251F4963C;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_251F48A14(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    a1 = swift_allocObject();
    a1[2] = v4;
    a1[3] = v3;
    v5 = sub_251F49658;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*a2 + 16);
  MEMORY[0x28223BE20](a1, a2);
  sub_251F37460(v4);
  os_unfair_lock_lock((v6 + 32));
  sub_251F49640((v6 + 16));
  os_unfair_lock_unlock((v6 + 32));
  return sub_251F380FC(v5);
}

uint64_t MockTopicStore.cancelHandler.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 32));
  sub_251F49398((v3 + 16));
  os_unfair_lock_unlock((v3 + 32));
  return sub_251F380FC(a1);
}

uint64_t (*MockTopicStore.cancelHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_251F4963C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_251F37460(v4);
  os_unfair_lock_unlock((v3 + 32));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_251F49658;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_251F48C50;
}

uint64_t sub_251F48C50(uint64_t *a1, char a2)
{
  v2 = *a1;
  v5 = a1[1];
  v3 = a1[2];
  if (a2)
  {
    sub_251F37460(v2);
    os_unfair_lock_lock((v3 + 32));
    sub_251F49640((v3 + 16));
    os_unfair_lock_unlock((v3 + 32));
    sub_251F380FC(v2);
  }

  else
  {
    os_unfair_lock_lock((v3 + 32));
    sub_251F49640((v3 + 16));
    os_unfair_lock_unlock((v3 + 32));
  }

  return sub_251F380FC(v2);
}

uint64_t MockTopicStore.register<A>(evaluator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + 24) + 32);

  TopicRegistry.register<A>(topicEvaluator:)(a1, a2, a3);
}

double MockTopicStore.activeEvaluator(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = RequestRegistry.subscript.getter(a1);
  if (v5)
  {
    sub_251F393F8(v5 + 56, a2);
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

uint64_t MockTopicStore.fetchResponse<A>(for:handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v29 = a5;
  v34 = a2;
  v35 = a3;
  v12 = *(a4 - 8);
  v33 = *(v12 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TopicRequestToken();
  v28 = *(v15 - 8);
  v16 = *(v28 + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v18 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a4;
  v38 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  v20 = *(v12 + 16);
  v30 = a1;
  v20(boxed_opaque_existential_1, a1, a4);
  v31 = a6;
  TopicRequestToken.init(for:)(&v36, a6);
  v32 = *(v7 + 24);
  sub_251F3A464(a6, v18);
  v20(v14, a1, a4);
  v21 = (*(v28 + 80) + 56) & ~*(v28 + 80);
  v22 = (v16 + *(v12 + 80) + v21) & ~*(v12 + 80);
  v23 = swift_allocObject();
  v24 = v29;
  *(v23 + 2) = a4;
  *(v23 + 3) = v24;
  v25 = v35;
  *(v23 + 4) = v34;
  *(v23 + 5) = v25;
  *(v23 + 6) = v7;
  sub_251F41ED0(v18, &v23[v21]);
  (*(v12 + 32))(&v23[v22], v14, a4);
  v36 = 0uLL;

  RequestRegistry.execute<A>(request:token:context:handler:)(v30, v31, &v36, sub_251F493B0, v23, a4, v24);
}

void MockTopicStore.cancel(token:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  RequestRegistry.cancel(token:)(a1);
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 32));
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_251F4963C;
  }

  else
  {
    v9 = 0;
  }

  sub_251F37460(v6);
  os_unfair_lock_unlock((v5 + 32));
  if (v6)
  {
    sub_251F37460(v9);
    (v9)(a1);
    sub_251F380FC(v9);

    sub_251F380FC(v9);
  }
}

uint64_t MockTopicStore.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t MockTopicStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_251F491B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a2;
  v13[5] = a3;
  v14 = *v6;

  MockTopicStore.fetchResponse<A>(for:handler:)(a1, sub_251F49604, v13, a4, a5, a6);
}

uint64_t (*sub_251F4926C(uint64_t a1))()
{
  v3 = *(*v1 + 24);
  RequestRegistry.cancel(token:)(a1);
  result = MockTopicStore.cancelHandler.getter();
  if (result)
  {
    v5 = result;
    (result)(a1);

    return sub_251F380FC(v5);
  }

  return result;
}

void sub_251F492E8()
{
  if (!qword_27F4C2560)
  {
    type metadata accessor for os_unfair_lock_s();
    v0 = sub_251F4E17C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C2560);
    }
  }
}

uint64_t sub_251F49348()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_251F49370()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_251F493B0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for TopicRequestToken() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 40);
  return (*(v1 + 32))(*(v1 + 48), v1 + v5, v1 + ((v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80)), a1);
}

uint64_t get_enum_tag_for_layout_string_16HealthTopicsCore17TopicRequestTokenVIeghn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_251F494EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_251F49548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_251F495A8(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = a1[1];
  sub_251F37460(v4);
  result = sub_251F380FC(v5);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_251F49604(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_251F4965C()
{
  v0 = sub_251F4DF6C();
  __swift_allocate_value_buffer(v0, qword_2813DD988);
  __swift_project_value_buffer(v0, qword_2813DD988);
  return sub_251F4DF5C();
}

uint64_t static Logger.topics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813DD980 != -1)
  {
    swift_once();
  }

  v2 = sub_251F4DF6C();
  v3 = __swift_project_value_buffer(v2, qword_2813DD988);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

uint64_t CancellableCheckedContinuation.resume(with:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  sub_251F390E0();
  v4 = sub_251F4E05C();
  v5 = sub_251F4E14C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - v9;
  sub_251F49DB4(&v14 - v9);
  v11 = *(v4 - 8);
  if ((*(v11 + 48))(v10, 1, v4) != 1)
  {
    sub_251F49EA4(a1, v4);
    v6 = v11;
    v5 = v4;
  }

  v12 = sub_251F4E37C();
  (*(*(v12 - 8) + 8))(a1, v12);
  return (*(v6 + 8))(v10, v5);
}

uint64_t withCancellableCheckedThrowingContinuation<A>(isolation:function:_:onCancel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v14;
  v8[11] = v15;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_251F4E02C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v8[12] = v9;
  v8[13] = v11;

  return MEMORY[0x2822009F8](sub_251F49A50, v9, v11);
}

uint64_t sub_251F49A50()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v20 = *(v0 + 24);
  v6 = type metadata accessor for CancellableCheckedContinuation();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v19 = *(v0 + 56);
  v9 = sub_251F4A2CC();
  *(v0 + 112) = v9;
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *(v10 + 16) = v20;
  *(v10 + 32) = v5;
  *(v10 + 40) = v4;
  *(v10 + 48) = v9;
  *(v10 + 56) = v19;
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  v11[2] = v3;
  v11[3] = v2;
  v11[4] = v9;
  v12 = *(MEMORY[0x277D85A10] + 4);
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_251F49BB4;
  v14 = *(v0 + 88);
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);
  v17 = *(v0 + 16);

  return MEMORY[0x282200830](v17, &unk_251F50330, v10, sub_251F4AEE4, v11, v15, v16, v14);
}

uint64_t sub_251F49BB4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_251F49D3C;
  }

  else
  {
    v8 = v2[15];
    v7 = v2[16];

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_251F49CD8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_251F49CD8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_251F49D3C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

void sub_251F49DB4(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  sub_251F390E0();
  sub_251F4E05C();
  sub_251F4E14C();
  v6 = sub_251F4DF2C();
  sub_251F4A5EC(v4 + *(v6 + 28), a1);

  j__os_unfair_lock_unlock(v4);
}

uint64_t sub_251F49EA4(uint64_t a1, uint64_t a2)
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
  v17 = sub_251F4E37C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v24 - v20;
  (*(v22 + 16))(&v24 - v20, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v21, v10);
    return sub_251F4E03C();
  }

  else
  {
    (*(v4 + 32))(v8, v21, v3);
    return sub_251F4E04C();
  }
}

Swift::Void __swiftcall CancellableCheckedContinuation.cancel()()
{
  v1 = *(*v0 + 80);
  sub_251F390E0();
  v2 = sub_251F4E05C();
  v3 = sub_251F4E14C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v11 - v7;
  sub_251F49DB4(v11 - v7);
  v9 = *(v2 - 8);
  if ((*(v9 + 48))(v8, 1, v2) != 1)
  {
    sub_251F4E06C();
    sub_251F4AF20();
    v10 = swift_allocError();
    sub_251F4DF7C();
    v11[1] = v10;
    sub_251F4E03C();
    v4 = v9;
    v3 = v2;
  }

  (*(v4 + 8))(v8, v3);
}

uint64_t *sub_251F4A298()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_251F4A2CC();
}

uint64_t *sub_251F4A2CC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  sub_251F390E0();
  v3 = sub_251F4E05C();
  v4 = sub_251F4E14C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - v7;
  v9 = (v0 + *(v1 + 88));
  (*(*(v3 - 8) + 56))(&v13 - v7, 1, 1, v3);
  *v9 = 0;
  v10 = *(sub_251F4DF2C() + 28);
  v11 = sub_251F4DF3C();
  bzero(v9 + v10, *(*(v11 - 8) + 64));
  sub_251F3F220(v8, v9 + v10, v4);
  return v0;
}

void sub_251F4A424(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  sub_251F390E0();
  sub_251F4E05C();
  sub_251F4E14C();
  v6 = sub_251F4DF2C();
  sub_251F4A51C(v4 + *(v6 + 28), a1);

  j__os_unfair_lock_unlock(v4);
}

uint64_t sub_251F4A51C(uint64_t a1, uint64_t a2)
{
  sub_251F390E0();
  sub_251F4E05C();
  v4 = sub_251F4E14C();
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, a2, v4);
}

uint64_t sub_251F4A5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251F390E0();
  v4 = sub_251F4E05C();
  v5 = sub_251F4E14C();
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
}

uint64_t CancellableCheckedContinuation.deinit()
{
  v1 = v0;
  v2 = v0 + *(*v0 + 88);
  v3 = *(*v0 + 80);
  sub_251F390E0();
  sub_251F4E05C();
  sub_251F4E14C();
  v4 = *(sub_251F4DF2C() + 28);
  v5 = sub_251F4DF3C();
  sub_251F3F374(v5);
  return v1;
}

uint64_t CancellableCheckedContinuation.__deallocating_deinit()
{
  CancellableCheckedContinuation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_251F4A7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v8[10] = *a6;
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_251F4E02C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v8[11] = v9;
  v8[12] = v11;

  return MEMORY[0x2822009F8](sub_251F4A890, v9, v11);
}

uint64_t sub_251F4A890()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *(v3 + 16) = *(v0 + 56);
  *(v3 + 32) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  v6 = *(v1 + 80);
  *v5 = v0;
  v5[1] = sub_251F4A974;
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return MEMORY[0x2822008A0](v11, v9, v10, v7, v8, sub_251F4B058, v3, v6);
}

uint64_t sub_251F4A974()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v4 = v3[11];
    v5 = v3[12];

    return MEMORY[0x2822009F8](sub_251F4AAAC, v4, v5);
  }

  else
  {
    v6 = v3[13];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_251F4AAAC()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_251F4AB10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_251F4ABEC;

  return sub_251F4A7C8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_251F4ABEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_251F4ACE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(*a2 + 80);
  sub_251F390E0();
  v7 = sub_251F4E05C();
  v8 = sub_251F4E14C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v17 - v12;
  if (sub_251F4E07C())
  {
    sub_251F4E06C();
    sub_251F4AF20();
    v14 = swift_allocError();
    sub_251F4DF7C();
    v17[1] = v14;
    return sub_251F4E03C();
  }

  else
  {
    v16 = *(v7 - 8);
    (*(v16 + 16))(v13, a1, v7);
    (*(v16 + 56))(v13, 0, 1, v7);
    sub_251F4A424(v13);
    (*(v9 + 8))(v13, v8);
    return a3(a2);
  }
}

void sub_251F4AEE4()
{
  v1 = v0[2];
  v2 = v0[4];
  if (v1)
  {
    v3 = v0[3];
    v1();
  }

  CancellableCheckedContinuation.cancel()();
}

unint64_t sub_251F4AF20()
{
  result = qword_27F4C2568[0];
  if (!qword_27F4C2568[0])
  {
    sub_251F4E06C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F4C2568);
  }

  return result;
}

uint64_t sub_251F4AF7C(uint64_t a1)
{
  v1 = *(a1 + 80);
  sub_251F390E0();
  sub_251F4E05C();
  sub_251F4E14C();
  result = sub_251F4DF2C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id SecurelyCodableTopicRequestToken.__allocating_init(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = objc_allocWithZone(v1);
  v6 = sub_251F4DECC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_251F4DEBC();
  type metadata accessor for TopicRequestToken();
  sub_251F4BAE0(&qword_27F4C25F0);
  v9 = sub_251F4DEAC();
  v11 = v10;

  if (v2)
  {
    sub_251F3CAB0(a1);
    v12 = *((*MEMORY[0x277D85000] & *v5) + 0x30);
    v13 = *((*MEMORY[0x277D85000] & *v5) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = (v5 + OBJC_IVAR____TtC16HealthTopicsCore32SecurelyCodableTopicRequestToken_payload);
    *v14 = v9;
    v14[1] = v11;
    sub_251F3A464(a1, v5 + OBJC_IVAR____TtC16HealthTopicsCore32SecurelyCodableTopicRequestToken_token);
    v16.receiver = v5;
    v16.super_class = v1;
    v3 = objc_msgSendSuper2(&v16, sel_init);
    sub_251F3CAB0(a1);
  }

  return v3;
}

id SecurelyCodableTopicRequestToken.init(_:)(uint64_t a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = sub_251F4DECC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_251F4DEBC();
  type metadata accessor for TopicRequestToken();
  sub_251F4BAE0(&qword_27F4C25F0);
  v9 = sub_251F4DEAC();
  v11 = v10;

  if (v2)
  {
    sub_251F3CAB0(a1);
    v12 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
    v13 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = (v1 + OBJC_IVAR____TtC16HealthTopicsCore32SecurelyCodableTopicRequestToken_payload);
    *v14 = v9;
    v14[1] = v11;
    sub_251F3A464(a1, v1 + OBJC_IVAR____TtC16HealthTopicsCore32SecurelyCodableTopicRequestToken_token);
    v16.receiver = v1;
    v16.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v16, sel_init);
    sub_251F3CAB0(a1);
  }

  return v3;
}

Swift::Void __swiftcall SecurelyCodableTopicRequestToken.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC16HealthTopicsCore32SecurelyCodableTopicRequestToken_payload);
  v4 = *(v1 + OBJC_IVAR____TtC16HealthTopicsCore32SecurelyCodableTopicRequestToken_payload + 8);
  v5 = sub_251F4DEDC();
  v6 = sub_251F4DF9C();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id SecurelyCodableTopicRequestToken.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TopicRequestToken();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F4BA40();
  v10 = sub_251F4E12C();
  if (v10 && (v27 = xmmword_251F4F270, v11 = v10, sub_251F4DEEC(), v11, v12 = *(&v27 + 1), *(&v27 + 1) >> 60 != 15))
  {
    v25 = ObjectType;
    v13 = v27;
    v14 = (v2 + OBJC_IVAR____TtC16HealthTopicsCore32SecurelyCodableTopicRequestToken_payload);
    *v14 = v27;
    v14[1] = v12;
    v15 = sub_251F4DE9C();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_251F4BA8C(v13, v12);
    sub_251F4DE8C();
    v18 = *v14;
    v19 = v14[1];
    sub_251F4BA8C(*v14, v19);
    sub_251F4BAE0(&unk_27F4C2608);
    sub_251F4DE7C();
    sub_251F4BB24(v13, v12);
    sub_251F3BD00(v18, v19);

    sub_251F41ED0(v9, v2 + OBJC_IVAR____TtC16HealthTopicsCore32SecurelyCodableTopicRequestToken_token);
    v26.receiver = v2;
    v26.super_class = v25;
    v20 = objc_msgSendSuper2(&v26, sel_init);

    return v20;
  }

  else
  {

    v21 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v22 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t sub_251F4BA40()
{
  result = qword_27F4C2600;
  if (!qword_27F4C2600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4C2600);
  }

  return result;
}

uint64_t sub_251F4BA8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_251F4BAE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TopicRequestToken();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251F4BB24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_251F3BD00(a1, a2);
  }

  return a1;
}

uint64_t SecurelyCodableTopicRequestToken.description.getter()
{
  swift_getObjectType();
  v2 = sub_251F4E3CC();
  MEMORY[0x2530931F0](58, 0xE100000000000000);
  v0 = TopicRequestToken.description.getter();
  MEMORY[0x2530931F0](v0);

  return v2;
}

id SecurelyCodableTopicRequestToken.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecurelyCodableTopicRequestToken.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251F4BDA4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251F4BE70(v11, 0, 0, 1, a1, a2);
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
    sub_251F4C478(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_251F4BE70(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_251F4BF7C(a5, a6);
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
    result = sub_251F4E18C();
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

uint64_t sub_251F4BF7C(uint64_t a1, unint64_t a2)
{
  v4 = sub_251F4BFC8(a1, a2);
  sub_251F4C0F8(&unk_28642FDF0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_251F4BFC8(uint64_t a1, unint64_t a2)
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

  v6 = sub_251F4C1E4(v5, 0);
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

  result = sub_251F4E18C();
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
        v10 = sub_251F4DFEC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251F4C1E4(v10, 0);
        result = sub_251F4E16C();
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

uint64_t sub_251F4C0F8(uint64_t result)
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

  result = sub_251F4C24C(result, v12, 1, v3);
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