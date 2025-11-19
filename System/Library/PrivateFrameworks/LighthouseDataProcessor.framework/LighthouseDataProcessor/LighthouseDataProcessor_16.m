uint64_t getEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_20E2495E8()
{
  sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E2496AC()
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(319);
  if (v1 <= 0x3F)
  {
    result = sub_20E322150();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(319);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      return 0;
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

  return result;
}

void sub_20E24984C()
{
  sub_20E24C1EC(319, &unk_280E040D0, type metadata accessor for ToolKitProtoTypedValue);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E247F1C(319, qword_280E08D90, type metadata accessor for ToolKitProtoDisplayRepresentation, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E24E518(319, &qword_280E12B40, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E3221C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20E2499F0()
{
  sub_20E247F1C(319, &qword_280E04038, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E249B14()
{
  sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, &qword_27C86A058, type metadata accessor for ToolKitProtoQuery, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_309Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[5];
LABEL_9:
    v15 = *(v12 + 48);

    return v15(a1 + v13, a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v16 = sub_20E3221C0();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t __swift_store_extra_inhabitant_index_310Tm(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (*(*(v10 - 8) + 84) == a3)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a4[5];
LABEL_7:
    v15 = *(v12 + 56);

    return v15(v7 + v13, a2, a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a4[6];
    goto LABEL_7;
  }

  v16 = sub_20E3221C0();
  v17 = *(*(v16 - 8) + 56);
  v18 = v7 + a4[7];

  return v17(v18, a2, a2, v16);
}

void sub_20E249F58()
{
  sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E247F1C(319, &qword_27C86A080, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E3221C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20E24A120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_1288Tm_0);
}

uint64_t sub_20E24A178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_1289Tm_0);
}

uint64_t sub_20E24A204(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20E24A260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_20E24A338()
{
  sub_20E247F1C(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E24A4B8()
{
  sub_20E247F1C(319, &qword_27C86A0F8, type metadata accessor for ToolKitProtoRestrictionContext, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E24A610(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20E24A66C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_20E24A764()
{
  sub_20E247F1C(319, &qword_27C86A138, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0DF08, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E24A888()
{
  sub_20E247F1C(319, &qword_27C86A150, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E24AA40()
{
  result = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_20E24AB24()
{
  result = sub_20E3221C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20E24ABF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20E24AC50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_20E24AD5C()
{
  result = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_20E24AEA8()
{
  sub_20E247F1C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E24AFB8()
{
  result = type metadata accessor for ToolKitProtoTypeInstance(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20E24B030()
{
  result = type metadata accessor for ToolKitProtoTypedValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_696Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD0, &qword_20E3462E8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = a3[5];
LABEL_11:
    v18 = *(v14 + 48);

    return v18(a1 + v15, a2, v13);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v13 = v16;
    v14 = *(v16 - 8);
    v15 = a3[6];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC0, &qword_20E3462D8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v13 = v17;
    v14 = *(v17 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  v19 = sub_20E3221C0();
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[8];

  return v20(v21, a2, v19);
}

uint64_t __swift_store_extra_inhabitant_index_697Tm(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD0, &qword_20E3462E8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = a4[5];
LABEL_9:
    v18 = *(v14 + 56);

    return v18(v7 + v15, a2, a2, v13);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v13 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC0, &qword_20E3462D8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v13 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_20E3221C0();
  v20 = *(*(v19 - 8) + 56);
  v21 = v7 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_20E24B4D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_20E247F1C(319, qword_280E0DDD0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, MEMORY[0x277D83D88]);
  if (v7 <= 0x3F)
  {
    sub_20E247F1C(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      sub_20E247F1C(319, qword_280E06B38, type metadata accessor for ToolKitProtoContentItemClassDescriptor, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        sub_20E3221C0();
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E24B824()
{
  sub_20E247F1C(319, &qword_27C86A260, type metadata accessor for ToolKitProtoQuery.AnyPredicate, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E24E518(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E24B990()
{
  result = type metadata accessor for ToolKitProtoComparisonPredicate(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoCompoundPredicate(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoStringSearchPredicate(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoIdSearchPredicate(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoAllPredicate(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoSuggestedPredicate(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ToolKitProtoSearchableItemPredicate(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ToolKitProtoValidPredicate(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E24BAA4()
{
  result = sub_20E3221C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20E24BBC0()
{
  sub_20E247F1C(319, qword_280E08810, type metadata accessor for ToolKitProtoRuntimePlatformVersion, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E24BD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_443Tm_1_4);
}

uint64_t sub_20E24BD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_444Tm_1_3);
}

uint64_t sub_20E24BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_20E24BEE4()
{
  result = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_20E24C040(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
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

uint64_t sub_20E24C088(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_20E24C110()
{
  sub_20E24E518(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E24C1EC(319, &qword_27C86A2D0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E24C1EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20E322810();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_991Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_992Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E24C424()
{
  sub_20E24E518(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E24C544()
{
  result = sub_20E3221C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20E24C64C()
{
  sub_20E247F1C(319, &qword_280E04078, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, &qword_280E03F38, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E247F1C(319, qword_280E07030, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E3221C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20E24C880(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_20E247F1C(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E07030, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, MEMORY[0x277D83D88]);
    if (v6 <= 0x3F)
    {
      sub_20E247F1C(319, qword_280E06F90, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
      if (v7 <= 0x3F)
      {
        sub_20E3221C0();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1054Tm(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_20E3221C0();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *__swift_store_extra_inhabitant_index_1055Tm(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_20E3221C0();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_20E24CD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_20E24CFA8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20E24CFC4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_20E24D044()
{
  result = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_20E24D1B4()
{
  sub_20E247F1C(319, &qword_280E04078, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, &qword_280E04090, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E24E518(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_20E247F1C(319, &qword_280E03F70, type metadata accessor for ToolKitProtoRuntimeRequirement, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_20E24E518(319, &qword_280E04098, &type metadata for ToolKitProtoToolDefinition.Version1.Flag, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_20E247F1C(319, &qword_280E03F38, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_20E247F1C(319, &qword_280E04068, type metadata accessor for ToolKitProtoSystemToolProtocol, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_20E24E518(319, &qword_280E040A0, &type metadata for ToolKitProtoToolDefinition.Version1.VisibilityFlag, MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
                {
                  sub_20E247F1C(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      sub_20E247F1C(319, qword_280E0E408, type metadata accessor for ToolKitProtoAppDefinition, MEMORY[0x277D83D88]);
                      if (v10 <= 0x3F)
                      {
                        sub_20E247F1C(319, qword_280E127F8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, MEMORY[0x277D83D88]);
                        if (v11 <= 0x3F)
                        {
                          sub_20E247F1C(319, qword_280E12948, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, MEMORY[0x277D83D88]);
                          if (v12 <= 0x3F)
                          {
                            sub_20E247F1C(319, qword_280E0A760, type metadata accessor for ToolKitProtoContainerDefinition, MEMORY[0x277D83D88]);
                            if (v13 <= 0x3F)
                            {
                              sub_20E3221C0();
                              if (v14 <= 0x3F)
                              {
                                swift_cvw_initStructMetadataWithLayoutString();
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
        }
      }
    }
  }
}

void sub_20E24D684()
{
  sub_20E247F1C(319, &qword_280E04080, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, &qword_280E03F38, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E24E518(319, &qword_280E04088, &type metadata for ToolKitProtoToolDefinition.Version1.Parameter.ParameterFlags, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E247F1C(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20E3221C0();
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

void sub_20E24D9C0()
{
  sub_20E247F1C(319, &qword_280E04038, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E24DACC()
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_20E24DBB8()
{
  sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E24DCFC()
{
  sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E24DDBC()
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20E24DE78()
{
  sub_20E247F1C(319, qword_280E0E4B8, type metadata accessor for ToolKitProtoAppDefinition.Device, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1227Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 40);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 44);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_1228Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 40);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 44);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E24E238()
{
  sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0A810, type metadata accessor for ToolKitProtoContainerDefinition.Device, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1389Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v10 = sub_20E3221C0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_1390Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 8) = (a2 + 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E24E518(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_20E24E568(uint64_t a1, unsigned int a2)
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

uint64_t sub_20E24E5B8(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_20E24E644()
{
  sub_20E24E518(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E24E780()
{
  sub_20E24E518(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E08E40, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E247F1C(319, qword_280E08FF8, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E247F1C(319, qword_280E09120, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E247F1C(319, qword_280E10F60, type metadata accessor for ToolKitProtoPluginModelData, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20E3221C0();
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

void sub_20E24EB90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_20E247F1C(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E24EC48()
{
  sub_20E24E518(319, &qword_280E12B40, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E24ED00()
{
  result = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20E24EE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  sub_20E247F1C(319, a5, a6, a7);
  if (v7 <= 0x3F)
  {
    sub_20E3221C0();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E24EF1C()
{
  sub_20E247F1C(319, &qword_27C86A378, type metadata accessor for ToolKitProtoTypeDefinition.Version1, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E12080, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_20E24F018()
{
  result = qword_27C86A380;
  if (!qword_27C86A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A380);
  }

  return result;
}

unint64_t sub_20E24F06C()
{
  result = qword_27C86A388;
  if (!qword_27C86A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A388);
  }

  return result;
}

unint64_t sub_20E24F0C0()
{
  result = qword_27C86A390;
  if (!qword_27C86A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A390);
  }

  return result;
}

unint64_t sub_20E24F114()
{
  result = qword_27C86A398;
  if (!qword_27C86A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A398);
  }

  return result;
}

unint64_t sub_20E24F168()
{
  result = qword_27C86A3A0;
  if (!qword_27C86A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3A0);
  }

  return result;
}

unint64_t sub_20E24F1BC()
{
  result = qword_27C86A3A8;
  if (!qword_27C86A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3A8);
  }

  return result;
}

unint64_t sub_20E24F210()
{
  result = qword_27C86A3B0;
  if (!qword_27C86A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3B0);
  }

  return result;
}

unint64_t sub_20E24F264()
{
  result = qword_27C86A3B8;
  if (!qword_27C86A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3B8);
  }

  return result;
}

unint64_t sub_20E24F2B8()
{
  result = qword_27C86A3C0;
  if (!qword_27C86A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3C0);
  }

  return result;
}

unint64_t sub_20E24F30C()
{
  result = qword_27C86A3C8;
  if (!qword_27C86A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3C8);
  }

  return result;
}

unint64_t sub_20E24F360()
{
  result = qword_27C86A3D0;
  if (!qword_27C86A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3D0);
  }

  return result;
}

unint64_t sub_20E24F3B4()
{
  result = qword_27C86A3D8;
  if (!qword_27C86A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3D8);
  }

  return result;
}

unint64_t sub_20E24F408()
{
  result = qword_27C86A3E0;
  if (!qword_27C86A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3E0);
  }

  return result;
}

unint64_t sub_20E24F45C()
{
  result = qword_27C86A3E8;
  if (!qword_27C86A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3E8);
  }

  return result;
}

unint64_t sub_20E24F4B0()
{
  result = qword_27C86A3F0;
  if (!qword_27C86A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3F0);
  }

  return result;
}

unint64_t sub_20E24F504()
{
  result = qword_27C86A3F8;
  if (!qword_27C86A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A3F8);
  }

  return result;
}

unint64_t sub_20E24F558()
{
  result = qword_27C86A400;
  if (!qword_27C86A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A400);
  }

  return result;
}

unint64_t sub_20E24F5AC()
{
  result = qword_27C86A408;
  if (!qword_27C86A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A408);
  }

  return result;
}

unint64_t sub_20E24F600()
{
  result = qword_27C86A410;
  if (!qword_27C86A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A410);
  }

  return result;
}

unint64_t sub_20E24F654()
{
  result = qword_27C86A418;
  if (!qword_27C86A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A418);
  }

  return result;
}

unint64_t sub_20E24F6A8()
{
  result = qword_27C86A420;
  if (!qword_27C86A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A420);
  }

  return result;
}

unint64_t sub_20E24F6FC()
{
  result = qword_27C86A428;
  if (!qword_27C86A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A428);
  }

  return result;
}

unint64_t sub_20E24F750()
{
  result = qword_27C86A430;
  if (!qword_27C86A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A430);
  }

  return result;
}

unint64_t sub_20E24F7A4()
{
  result = qword_27C86A438;
  if (!qword_27C86A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A438);
  }

  return result;
}

unint64_t sub_20E24F7F8()
{
  result = qword_27C86A440;
  if (!qword_27C86A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86A440);
  }

  return result;
}

uint64_t sub_20E24F84C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E24F8AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E24F914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_20E24FF14(uint64_t a1)
{
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v3 = *(*(Value - 8) + 64);
  MEMORY[0x28223BE20](Value);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC0, &qword_20E325D10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v53 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = (&v53 - v23);
  v25 = [objc_allocWithZone(MEMORY[0x277D58158]) init];
  sub_20E06E698(a1, v24);
  v26 = type metadata accessor for ToolKitProtoTypedValue(0);
  if ((*(*(v26 - 8) + 48))(v24, 1, v26) != 1)
  {
    v28 = *v24;
    sub_20E047CF8(*v24);
    sub_20E250550(v24, type metadata accessor for ToolKitProtoTypedValue);
    v27 = v25;
    if ((~v28 & 0xF000000000000007) == 0)
    {
      return v27;
    }

    v29 = v28 >> 61;
    if ((v28 >> 61) <= 2)
    {
      if (v29)
      {
        if (v29 == 1)
        {
          v43 = swift_projectBox();
          sub_20E2504E8(v43, v16, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
          if (v25)
          {
            v44 = v25;
            v45 = sub_20E04CE28(v16);
            [v44 setEnumeration_];
          }

          v41 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue;
          v42 = v16;
        }

        else
        {
          v49 = swift_projectBox();
          sub_20E2504E8(v49, v12, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
          if (v25)
          {
            sub_20E2504E8(v12, v8, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
            (*(v53 + 56))(v8, 0, 1, v9);
            v50 = v25;
            v51 = sub_20E064060(v8);
            sub_20E04875C(v8, &qword_27C863EC0, &qword_20E325D10);
            [v50 setEntity_];
          }

          v41 = type metadata accessor for ToolKitProtoTypedValue.EntityValue;
          v42 = v12;
        }
      }

      else
      {
        v46 = swift_projectBox();
        sub_20E2504E8(v46, v20, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
        if (v25)
        {
          v47 = v25;
          v48 = sub_20E30705C(v20);
          [v47 setPrimitive_];
        }

        v41 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue;
        v42 = v20;
      }
    }

    else
    {
      if (v29 > 4 || v29 == 3)
      {
        goto LABEL_25;
      }

      v30 = swift_projectBox();
      v31 = v54;
      sub_20E2504E8(v30, v54, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
      if (v27)
      {
        v32 = objc_allocWithZone(MEMORY[0x277D57F90]);
        v33 = v27;
        v34 = [v32 init];
        v35 = v34;
        if (v34)
        {
          v36 = v34;
          v37 = sub_20E04EA80(v31);
          [v36 setTypeIdentifier_];

          v38 = *(Value + 20);
          v39 = v36;
          v40 = sub_20E0674F4(v31 + v38);
          [v39 setQuery_];
        }

        [v33 setQuery_];
      }

      v41 = type metadata accessor for ToolKitProtoTypedValue.QueryValue;
      v42 = v31;
    }

    sub_20E250550(v42, v41);
LABEL_25:
    sub_20E047CA8(v28);
    return v27;
  }

  sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
  return v25;
}

uint64_t sub_20E2504E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E250550(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E2505B0(uint64_t *a1)
{
  result = [objc_allocWithZone(MEMORY[0x277D57ED0]) init];
  if (result)
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = result;
    v6 = result;
    v7 = sub_20E322860();
    [v6 setParameterId_];

    v8 = *(type metadata accessor for TranscriptProtoParameterNotAllowed(0) + 24);
    v9 = v6;
    v10 = sub_20E06E458(a1 + v8);
    [v9 setValue_];

    [v9 setReason_];
    return v5;
  }

  return result;
}

uint64_t sub_20E250970(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E250A88(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3(0) + 24);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t static ToolKitProtoCompoundPredicate.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || (sub_20E154DAC(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for ToolKitProtoCompoundPredicate(0) + 24);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E250CD0(void *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3(0) + 20);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV2eeoiySbAC_ACtFZ_0()
{
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t static ToolKitProtoSystemToolProtocol.ConditionallyEnabled.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0) + 20);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E2510DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((sub_20E1484A4(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v7 = *(a3(0) + 24);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E251214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((sub_20E15F7B0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3(0) + 20);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t Google_Protobuf_FileOptions.ToolKitPrototoolKitProtoVersion.getter()
{
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  sub_20E2FB9A4(&qword_27C86B968, MEMORY[0x277D215A8]);
  sub_20E3221E0();
  if (v2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_20E2513B4@<X0>(_DWORD *a1@<X8>)
{
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  sub_20E2FB9A4(&qword_27C86B968, MEMORY[0x277D215A8]);
  result = sub_20E3221E0();
  v3 = v4;
  if (v5)
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_20E251478(int *a1)
{
  v1 = *a1;
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  sub_20E2FB9A4(&qword_27C86B968, MEMORY[0x277D215A8]);
  return sub_20E322200();
}

uint64_t Google_Protobuf_FileOptions.ToolKitPrototoolKitProtoVersion.setter()
{
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  sub_20E2FB9A4(&qword_27C86B968, MEMORY[0x277D215A8]);
  return sub_20E322200();
}

void (*Google_Protobuf_FileOptions.ToolKitPrototoolKitProtoVersion.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  v4[1] = qword_27C86A500;
  v4[2] = sub_20E2FB9A4(&qword_27C86B968, MEMORY[0x277D215A8]);
  sub_20E3221E0();
  v5 = *(v4 + 6);
  if (*(v4 + 28))
  {
    v5 = 0;
  }

  *(v4 + 8) = v5;
  return sub_20E2516F0;
}

void sub_20E2516F0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 8);
  v4 = v1[2];
  v5 = *v1;
  *(v1 + 6) = v2;
  sub_20E322200();

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasToolKitPrototoolKitProtoVersion.getter()
{
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  v0 = qword_27C86A500;
  v1 = sub_20E2FB9A4(&qword_27C86B968, MEMORY[0x277D215A8]);

  return MEMORY[0x28217E180](v0, v1);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearToolKitPrototoolKitProtoVersion()()
{
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  v0 = qword_27C86A500;
  v1 = sub_20E2FB9A4(&qword_27C86B968, MEMORY[0x277D215A8]);

  MEMORY[0x28217E190](v0, v1);
}

uint64_t sub_20E25187C()
{
  v0 = sub_20E322230();
  __swift_allocate_value_buffer(v0, qword_27C86A4E8);
  __swift_project_value_buffer(v0, qword_27C86A4E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1D8, &qword_20E3565A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20E326380;
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }

  v2 = qword_27C86A500;
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1E0, &qword_20E3565A8);
  *(v1 + 64) = sub_20E2FB940();
  *(v1 + 32) = v2;

  return sub_20E322220();
}

uint64_t sub_20E2519A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1E0, &qword_20E3565A8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_20E3221D0();
  qword_27C86A500 = result;
  return result;
}

uint64_t ToolKitProtoExtensions_ToolKitProtoVersion.getter()
{
  if (qword_27C8631A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_20E251A68()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A508);
  __swift_project_value_buffer(v0, qword_27C86A508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326330;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RuntimePlatform_UNSPECIFIED";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RuntimePlatform_PHONE";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RuntimePlatform_PAD";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RuntimePlatform_MACINTOSH";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RuntimePlatform_WATCH";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RuntimePlatform_TV";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "RuntimePlatform_VISION";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E251DE8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A520);
  __swift_project_value_buffer(v0, qword_27C86A520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "custom";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E252028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D198, &qword_20E356560);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863B68, &unk_20E346230);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863B68, &unk_20E346230);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeIdentifierKind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C86D198, &qword_20E356560);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86BE18, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D198, &qword_20E356560);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D198, &qword_20E356560);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D198, &qword_20E356560);
    return sub_20E04875C(v36, &qword_27C86D198, &qword_20E356560);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D198, &qword_20E356560);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863B68, &unk_20E346230);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2525E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1D0, &qword_20E356598);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863B68, &unk_20E346230);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863B68, &unk_20E346230);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86D1D0, &qword_20E356598);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeIdentifierKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86BE40, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D1D0, &qword_20E356598);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D1D0, &qword_20E356598);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D1D0, &qword_20E356598);
    return sub_20E04875C(v36, &qword_27C86D1D0, &qword_20E356598);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D1D0, &qword_20E356598);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863B68, &unk_20E346230);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoTypeIdentifier.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C863B68, &unk_20E346230);
  v12 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E252F68(v3, a1, a2, a3);
  }

  else
  {
    sub_20E252D30(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for ToolKitProtoTypeIdentifier(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E252D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863B68, &unk_20E346230);
  v13 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863B68, &unk_20E346230);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    sub_20E2FB9A4(&qword_27C86BE18, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  __break(1u);
  return result;
}

uint64_t sub_20E252F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863B68, &unk_20E346230);
  v13 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863B68, &unk_20E346230);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    sub_20E2FB9A4(&qword_27C86BE40, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  __break(1u);
  return result;
}

uint64_t sub_20E25324C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CEC8, type metadata accessor for ToolKitProtoTypeIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2532EC()
{
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);

  return sub_20E322470();
}

uint64_t sub_20E253358()
{
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);

  return sub_20E322480();
}

uint64_t sub_20E253428()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A548);
  __swift_project_value_buffer(v0, qword_27C86A548);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20E3262E0;
  v4 = v44 + v3;
  v5 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v5 = "none_p";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v44 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "BOOL";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v8();
  v11 = (v44 + v3 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "int";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v8();
  v13 = (v44 + v3 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "number";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v8();
  v15 = (v44 + v3 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "decimal";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v8();
  v17 = (v44 + v3 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "string";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v8();
  v19 = (v44 + v3 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "date";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v8();
  v21 = (v44 + v3 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "dateComponents";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v8();
  v23 = v44 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "url";
  *(v23 + 8) = 3;
  *(v23 + 16) = 2;
  v8();
  v24 = (v44 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "dictionary";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v8();
  v26 = (v44 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "attributedString";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v8();
  v28 = (v44 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "measurement";
  *(v29 + 1) = 11;
  v29[16] = 2;
  v8();
  v30 = (v44 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "currencyAmount";
  *(v31 + 1) = 14;
  v31[16] = 2;
  v8();
  v32 = (v44 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "paymentMethod";
  *(v33 + 1) = 13;
  v33[16] = 2;
  v8();
  v34 = (v44 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "placemark";
  *(v35 + 1) = 9;
  v35[16] = 2;
  v8();
  v36 = (v44 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "person";
  *(v37 + 1) = 6;
  v37[16] = 2;
  v8();
  v38 = v44 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v38 = "file";
  *(v38 + 8) = 4;
  *(v38 + 16) = 2;
  v8();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "app";
  *(v40 + 1) = 3;
  v40[16] = 2;
  v8();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "searchableItem";
  *(v42 + 1) = 14;
  v42[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 23;
          goto LABEL_23;
        case 2:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 24;
          goto LABEL_23;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 25;
          goto LABEL_23;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 26;
          goto LABEL_23;
        case 5:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 27;
          goto LABEL_23;
        case 6:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 28;
          goto LABEL_23;
        case 7:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 29;
          goto LABEL_23;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 30;
          goto LABEL_23;
        case 9:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 31;
          goto LABEL_23;
        case 10:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 32;
          goto LABEL_23;
        case 11:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 33;
          goto LABEL_23;
        case 12:
          sub_20E253EE0();
          break;
        case 13:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 34;
          goto LABEL_23;
        case 14:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 35;
          goto LABEL_23;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 36;
          goto LABEL_23;
        case 16:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 37;
          goto LABEL_23;
        case 17:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 38;
          goto LABEL_23;
        case 18:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 39;
          goto LABEL_23;
        case 19:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 40;
LABEL_23:
          sub_20E253C94(v11, v12, v13, v14, v15);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E253C94(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = sub_20E322110();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
  sub_20E322300();
  if (v5)
  {
    return sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  }

  v21 = a2;
  sub_20E0486F4(v13, v11, &qword_27C867FE0, &qword_20E33B098);
  v16 = (*(v15 + 48))(v11, 1, v14);
  sub_20E04875C(v11, &qword_27C867FE0, &qword_20E33B098);
  if (v16 == 1)
  {
    return sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  }

  v17 = v21;
  if (*v21 != 41)
  {
    sub_20E3222C0();
  }

  v18 = v22;
  result = sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  *v17 = v18;
  return result;
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.traverse<A>(visitor:)()
{
  switch(*v0)
  {
    case 0x17u:
      result = sub_20E25421C(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x18u:
      result = sub_20E25436C(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x19u:
      result = sub_20E2544BC(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Au:
      result = sub_20E25460C(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Bu:
      result = sub_20E25475C(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Cu:
      result = sub_20E2548AC(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Du:
      result = sub_20E2549FC(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Eu:
      result = sub_20E254B4C(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Fu:
      result = sub_20E254C9C(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x20u:
      result = sub_20E254DEC(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x21u:
      result = sub_20E254F3C(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x22u:
      result = sub_20E255108(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x23u:
      result = sub_20E255258(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x24u:
      result = sub_20E2553A8(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x25u:
      result = sub_20E2554F8(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x26u:
      result = sub_20E255648(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x27u:
      result = sub_20E255798(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x28u:
      result = sub_20E2558E8(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x29u:
      goto LABEL_5;
    default:
      result = sub_20E25508C(v0);
      if (!v1)
      {
LABEL_5:
        v3 = &v0[*(type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0) + 20)];
        result = sub_20E3221A0();
      }

      break;
  }

  return result;
}

uint64_t sub_20E25421C(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 23)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E25436C(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 24)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2544BC(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 25)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E25460C(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 26)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E25475C(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 27)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2548AC(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 28)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2549FC(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 29)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E254B4C(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 30)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E254C9C(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 31)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E254DEC(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 32)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E254F3C(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 33)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_20E25508C(unsigned __int8 *result)
{
  if (*result - 23 < 0x13)
  {
    __break(1u);
  }

  else
  {
    sub_20E24F7A4();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E255108(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 34)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E255258(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 35)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2553A8(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 36)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2554F8(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 37)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E255648(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 38)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E255798(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 39)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2558E8(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 40)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E255A80(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_20E322DE0();
  a1(0);
  sub_20E2FB9A4(a2, a3);
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E255B08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 41;
  v2 = &a2[*(a1 + 20)];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E255B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CEC0, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E255C28()
{
  sub_20E2FB9A4(&qword_27C86BE18, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);

  return sub_20E322470();
}

uint64_t sub_20E255C94()
{
  sub_20E2FB9A4(&qword_27C86BE18, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);

  return sub_20E322480();
}

uint64_t sub_20E255D14()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A560);
  __swift_project_value_buffer(v0, qword_27C86A560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20E3421C0;
  v4 = v51 + v3;
  v5 = v51 + v3 + v1[14];
  *(v51 + v3) = 0;
  *v5 = "MeasurementUnitType_UNSPECIFIED";
  *(v5 + 8) = 31;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v51 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "MeasurementUnitType_LENGTH";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v51 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MeasurementUnitType_MASS";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v51 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MeasurementUnitType_TEMPERATURE";
  *(v13 + 1) = 31;
  v13[16] = 2;
  v8();
  v14 = (v51 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MeasurementUnitType_VOLUME";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v51 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "MeasurementUnitType_SPEED";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v8();
  v18 = (v51 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "MeasurementUnitType_ENERGY";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v51 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "MeasurementUnitType_DURATION";
  *(v21 + 1) = 28;
  v21[16] = 2;
  v8();
  v22 = v51 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "MeasurementUnitType_ACCELERATION";
  *(v22 + 8) = 32;
  *(v22 + 16) = 2;
  v8();
  v23 = (v51 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "MeasurementUnitType_ANGLE";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v8();
  v25 = (v51 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "MeasurementUnitType_AREA";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v8();
  v27 = (v51 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "MeasurementUnitType_CONCENTRATION_MASS";
  *(v28 + 1) = 38;
  v28[16] = 2;
  v8();
  v29 = (v51 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "MeasurementUnitType_DISPERSION";
  *(v30 + 1) = 30;
  v30[16] = 2;
  v8();
  v31 = (v51 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "MeasurementUnitType_ELECTRIC_CHARGE";
  *(v32 + 1) = 35;
  v32[16] = 2;
  v8();
  v33 = (v51 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "MeasurementUnitType_ELECTRIC_CURRENT";
  *(v34 + 1) = 36;
  v34[16] = 2;
  v8();
  v35 = (v51 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "MeasurementUnitType_ELECTRIC_POTENTIAL_DIFFERENCE";
  *(v36 + 1) = 49;
  v36[16] = 2;
  v8();
  v37 = v51 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "MeasurementUnitType_ELECTRIC_RESISTANCE";
  *(v37 + 8) = 39;
  *(v37 + 16) = 2;
  v8();
  v38 = (v51 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "MeasurementUnitType_FREQUENCY";
  *(v39 + 1) = 29;
  v39[16] = 2;
  v8();
  v40 = (v51 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "MeasurementUnitType_FUEL_EFFICIENCY";
  *(v41 + 1) = 35;
  v41[16] = 2;
  v8();
  v42 = (v51 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "MeasurementUnitType_ILLUMINANCE";
  *(v43 + 1) = 31;
  v43[16] = 2;
  v8();
  v44 = (v51 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "MeasurementUnitType_INFORMATION_STORAGE";
  *(v45 + 1) = 39;
  v45[16] = 2;
  v8();
  v46 = (v51 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "MeasurementUnitType_POWER";
  *(v47 + 1) = 25;
  v47[16] = 2;
  v8();
  v48 = (v51 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "MeasurementUnitType_PRESSURE";
  *(v49 + 1) = 28;
  v49[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E256464(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD000000000000016;
  *a5 = 0x800000020E361540;
  return result;
}

uint64_t sub_20E2564F8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A588);
  __swift_project_value_buffer(v0, qword_27C86A588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeName";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2567B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CEB8, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E256854()
{
  sub_20E2FB9A4(&qword_27C86BE40, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);

  return sub_20E322470();
}

uint64_t sub_20E2568C0()
{
  sub_20E2FB9A4(&qword_27C86BE40, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);

  return sub_20E322480();
}

uint64_t sub_20E256958()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A5A0);
  __swift_project_value_buffer(v0, qword_27C86A5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20E34A210;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "unknown";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mailAccount";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "mailAddressee";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "mailMessage";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "mailbox";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "intentMessage";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "messageGroup";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "messageParticipants";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "uniqueEntity";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "intentUpdatableEntity";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "urlRepresentable";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "visualSearch";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "visualSearchOcr";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "assistantSchema";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "updatableEntity";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "persistentFileIdentifiable";
  *(v36 + 1) = 26;
  v36[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoSystemTypeProtocol.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
          goto LABEL_5;
        case 2:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 4;
          goto LABEL_5;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
          goto LABEL_5;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
          goto LABEL_5;
        case 5:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 7;
          goto LABEL_5;
        case 6:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 8;
          goto LABEL_5;
        case 7:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 9;
          goto LABEL_5;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 10;
          goto LABEL_5;
        case 9:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 11;
          goto LABEL_5;
        case 10:
          sub_20E2575D0(v5, a1, a2, a3);
          break;
        case 11:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 12;
          goto LABEL_5;
        case 12:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_5;
        case 13:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_5;
        case 14:
          sub_20E257B80(v5, a1, a2, a3);
          break;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
LABEL_5:
          sub_20E257248(v11, v12, v13, v14, &qword_27C867EA0, &qword_20E33AF78, type metadata accessor for ToolKitProtoSystemTypeProtocolKind, v15);
          break;
        case 16:
          sub_20E25813C(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E257248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), int a8)
{
  v39 = a8;
  v37 = a7;
  v38 = a6;
  v40 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v34 - v19;
  v21 = sub_20E322110();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v20, 1, 1, v21);
  sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
  v23 = v41;
  sub_20E322300();
  v41 = v23;
  if (v23)
  {
    return sub_20E04875C(v20, &qword_27C867FE0, &qword_20E33B098);
  }

  v34[1] = a4;
  v35 = v13;
  v36 = a5;
  sub_20E0486F4(v20, v18, &qword_27C867FE0, &qword_20E33B098);
  v24 = (*(v22 + 48))(v18, 1, v21);
  sub_20E04875C(v18, &qword_27C867FE0, &qword_20E33B098);
  if (v24 == 1)
  {
    return sub_20E04875C(v20, &qword_27C867FE0, &qword_20E33B098);
  }

  v26 = v35;
  v27 = v36;
  v28 = v38;
  sub_20E0486F4(v40, v35, v36, v38);
  v29 = v37(0);
  v30 = *(v29 - 8);
  v31 = (*(v30 + 48))(v26, 1, v29);
  sub_20E04875C(v26, v27, v28);
  if (v31 != 1)
  {
    v32 = v41;
    sub_20E3222C0();
    if (v32)
    {
      return sub_20E04875C(v20, &qword_27C867FE0, &qword_20E33B098);
    }
  }

  sub_20E04875C(v20, &qword_27C867FE0, &qword_20E33B098);
  v33 = v40;
  sub_20E04875C(v40, v36, v28);
  swift_storeEnumTagMultiPayload();
  return (*(v30 + 56))(v33, 0, 1, v29);
}

uint64_t sub_20E2575D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1B8, &qword_20E356580);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C867EA0, &qword_20E33AF78);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867EA0, &qword_20E33AF78);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C86D1B8, &qword_20E356580);
      v35 = v43;
      sub_20E2FB8D8(v20, v43, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86BE68, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D1B8, &qword_20E356580);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D1B8, &qword_20E356580);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D1B8, &qword_20E356580);
    return sub_20E04875C(v36, &qword_27C86D1B8, &qword_20E356580);
  }

  else
  {
    v39 = v44;
    sub_20E2FB8D8(v36, v44, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D1B8, &qword_20E356580);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867EA0, &qword_20E33AF78);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E257B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1C0, &qword_20E356588);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C867EA0, &qword_20E33AF78);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867EA0, &qword_20E33AF78);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86D1C0, &qword_20E356588);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86BE80, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D1C0, &qword_20E356588);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D1C0, &qword_20E356588);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D1C0, &qword_20E356588);
    return sub_20E04875C(v36, &qword_27C86D1C0, &qword_20E356588);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D1C0, &qword_20E356588);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867EA0, &qword_20E33AF78);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E25813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1C8, &qword_20E356590);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C867EA0, &qword_20E33AF78);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867EA0, &qword_20E33AF78);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C86D1C8, &qword_20E356590);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86BE98, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D1C8, &qword_20E356590);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D1C8, &qword_20E356590);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D1C8, &qword_20E356590);
    return sub_20E04875C(v36, &qword_27C86D1C8, &qword_20E356590);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D1C8, &qword_20E356590);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867EA0, &qword_20E33AF78);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoSystemTypeProtocol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C867EA0, &qword_20E33AF78);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E25A824(v3, a1, a2, a3);
        goto LABEL_22;
      case 2u:
        sub_20E25ACA8(v3, a1, a2, a3);
        goto LABEL_22;
      case 3u:
        result = sub_20E258A60(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 4u:
        result = sub_20E258CAC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 5u:
        result = sub_20E258EF8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 6u:
        result = sub_20E259144(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 7u:
        result = sub_20E259390(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 8u:
        result = sub_20E2595DC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 9u:
        result = sub_20E259828(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xAu:
        result = sub_20E259A74(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xBu:
        result = sub_20E259CC0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xCu:
        result = sub_20E25A140(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xDu:
        result = sub_20E25A38C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_20E25A5D8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_20E25AA5C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_20E259F0C(v3, a1, a2, a3);
LABEL_22:
        result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v14 = v3 + *(type metadata accessor for ToolKitProtoSystemTypeProtocol(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E258A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867EA0, &qword_20E33AF78);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E258CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867EA0, &qword_20E33AF78);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 4)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E258EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867EA0, &qword_20E33AF78);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 5)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E259144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867EA0, &qword_20E33AF78);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 6)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E259390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867EA0, &qword_20E33AF78);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 7)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2595DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867EA0, &qword_20E33AF78);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 8)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E259828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867EA0, &qword_20E33AF78);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 9)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E259A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867EA0, &qword_20E33AF78);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 10)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E259CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867EA0, &qword_20E33AF78);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 11)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E259F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867EA0, &qword_20E33AF78);
  v13 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867EA0, &qword_20E33AF78);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    sub_20E2FB9A4(&qword_27C86BE68, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E25A140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867EA0, &qword_20E33AF78);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 12)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E25A38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867EA0, &qword_20E33AF78);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E25A5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867EA0, &qword_20E33AF78);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E25A824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867EA0, &qword_20E33AF78);
  v13 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867EA0, &qword_20E33AF78);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    sub_20E2FB9A4(&qword_27C86BE80, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E25AA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867EA0, &qword_20E33AF78);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867EA0, &qword_20E33AF78);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E25ACA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867EA0, &qword_20E33AF78);
  v13 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867EA0, &qword_20E33AF78);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    sub_20E2FB9A4(&qword_27C86BE98, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E25AF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CEB0, type metadata accessor for ToolKitProtoSystemTypeProtocol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E25B030()
{
  sub_20E2FB9A4(&qword_27C86B9D0, type metadata accessor for ToolKitProtoSystemTypeProtocol);

  return sub_20E322470();
}

uint64_t sub_20E25B09C()
{
  sub_20E2FB9A4(&qword_27C86B9D0, type metadata accessor for ToolKitProtoSystemTypeProtocol);

  return sub_20E322480();
}

uint64_t sub_20E25B11C()
{
  result = MEMORY[0x20F32BF40](0xD000000000000016, 0x800000020E363760);
  qword_27C86A5B8 = 0xD00000000000001ALL;
  unk_27C86A5C0 = 0x800000020E361560;
  return result;
}

uint64_t sub_20E25B2C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CEA8, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E25B364()
{
  sub_20E2FB9A4(&qword_27C86BE68, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);

  return sub_20E322470();
}

uint64_t sub_20E25B3D0()
{
  sub_20E2FB9A4(&qword_27C86BE68, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);

  return sub_20E322480();
}

uint64_t sub_20E25B44C()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E362160);
  qword_27C86A5E0 = 0xD00000000000001ALL;
  *algn_27C86A5E8 = 0x800000020E361560;
  return result;
}

uint64_t sub_20E25B608(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CEA0, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E25B6A8()
{
  sub_20E2FB9A4(&qword_27C86BE80, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);

  return sub_20E322470();
}

uint64_t sub_20E25B714()
{
  sub_20E2FB9A4(&qword_27C86BE80, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);

  return sub_20E322480();
}

uint64_t sub_20E25B794()
{
  result = MEMORY[0x20F32BF40](0xD00000000000001BLL, 0x800000020E363740);
  qword_27C86A608 = 0xD00000000000001ALL;
  unk_27C86A610 = 0x800000020E361560;
  return result;
}

uint64_t sub_20E25B930(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE98, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E25B9D0()
{
  sub_20E2FB9A4(&qword_27C86BE98, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);

  return sub_20E322470();
}

uint64_t sub_20E25BA3C()
{
  sub_20E2FB9A4(&qword_27C86BE98, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);

  return sub_20E322480();
}

uint64_t sub_20E25BB7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE90, type metadata accessor for ToolKitProtoTypeDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E25BC1C()
{
  sub_20E2FB9A4(&qword_27C86BEB0, type metadata accessor for ToolKitProtoTypeDefinition);

  return sub_20E322470();
}

uint64_t sub_20E25BC88()
{
  sub_20E2FB9A4(&qword_27C86BEB0, type metadata accessor for ToolKitProtoTypeDefinition);

  return sub_20E322480();
}

uint64_t sub_20E25BD04()
{
  result = MEMORY[0x20F32BF40](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_27C86A648 = 0xD000000000000016;
  unk_27C86A650 = 0x800000020E361580;
  return result;
}

uint64_t sub_20E25BD9C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A658);
  __swift_project_value_buffer(v0, qword_27C86A658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entity";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "enumeration";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "query";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_20E25CC6C(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_20E25D228(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_20E25C100(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E25C6B0(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E25C100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D198, &qword_20E356560);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C867E50, &qword_20E33AF30);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867E50, &qword_20E33AF30);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C86D198, &qword_20E356560);
      v35 = v43;
      sub_20E2FB8D8(v20, v43, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86BE18, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D198, &qword_20E356560);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D198, &qword_20E356560);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D198, &qword_20E356560);
    return sub_20E04875C(v36, &qword_27C86D198, &qword_20E356560);
  }

  else
  {
    v39 = v44;
    sub_20E2FB8D8(v36, v44, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D198, &qword_20E356560);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867E50, &qword_20E33AF30);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E25C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1A0, &qword_20E356568);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C867E50, &qword_20E33AF30);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867E50, &qword_20E33AF30);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86D1A0, &qword_20E356568);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86BED8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D1A0, &qword_20E356568);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D1A0, &qword_20E356568);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D1A0, &qword_20E356568);
    return sub_20E04875C(v36, &qword_27C86D1A0, &qword_20E356568);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D1A0, &qword_20E356568);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867E50, &qword_20E33AF30);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E25CC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1A8, &qword_20E356570);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C867E50, &qword_20E33AF30);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867E50, &qword_20E33AF30);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C86D1A8, &qword_20E356570);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86BF10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D1A8, &qword_20E356570);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D1A8, &qword_20E356570);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D1A8, &qword_20E356570);
    return sub_20E04875C(v36, &qword_27C86D1A8, &qword_20E356570);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D1A8, &qword_20E356570);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867E50, &qword_20E33AF30);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E25D228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1B0, &qword_20E356578);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C867E50, &qword_20E33AF30);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867E50, &qword_20E33AF30);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C86D1B0, &qword_20E356578);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86BF48, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D1B0, &qword_20E356578);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D1B0, &qword_20E356578);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D1B0, &qword_20E356578);
    return sub_20E04875C(v36, &qword_27C86D1B0, &qword_20E356578);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D1B0, &qword_20E356578);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867E50, &qword_20E33AF30);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoTypeDefinition.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C867E50, &qword_20E33AF30);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E25DE24(v3, a1, a2, a3);
    }

    else
    {
      sub_20E25E05C(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E25DBEC(v3, a1, a2, a3);
  }

  else
  {
    sub_20E25D9B8(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for ToolKitProtoTypeDefinition.Version1(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E25D9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867E50, &qword_20E33AF30);
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867E50, &qword_20E33AF30);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    sub_20E2FB9A4(&qword_27C86BE18, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_20E25DBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867E50, &qword_20E33AF30);
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867E50, &qword_20E33AF30);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    sub_20E2FB9A4(&qword_27C86BED8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_20E25DE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867E50, &qword_20E33AF30);
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867E50, &qword_20E33AF30);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    sub_20E2FB9A4(&qword_27C86BF10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_20E25E05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867E50, &qword_20E33AF30);
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867E50, &qword_20E33AF30);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
    sub_20E2FB9A4(&qword_27C86BF48, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_20E25E350(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE88, type metadata accessor for ToolKitProtoTypeDefinition.Version1);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E25E3F0()
{
  sub_20E2FB9A4(&qword_27C869AF0, type metadata accessor for ToolKitProtoTypeDefinition.Version1);

  return sub_20E322470();
}

uint64_t sub_20E25E45C()
{
  sub_20E2FB9A4(&qword_27C869AF0, type metadata accessor for ToolKitProtoTypeDefinition.Version1);

  return sub_20E322480();
}

uint64_t sub_20E25E4DC()
{
  if (qword_27C863228 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A648;
  v2 = qword_27C86A650;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x797469746E452ELL, 0xE700000000000000);

  qword_27C86A670 = v1;
  *algn_27C86A678 = v2;
  return result;
}

uint64_t sub_20E25E5A8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A680);
  __swift_project_value_buffer(v0, qword_27C86A680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E3262B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "identifier";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "properties";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "runtimeRequirements";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "displayRepresentation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sampleInvocations";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "systemProtocols";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "runtimeFlags";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "coercions";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          v3 = v0;
          if (result == 5)
          {
            type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
            sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
          }

          else
          {
            type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
            sub_20E2FB9A4(&qword_27C86B9D0, type metadata accessor for ToolKitProtoSystemTypeProtocol);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          sub_20E24F750();
          sub_20E3222D0();
        }

        else if (result == 8)
        {
          v3 = v0;
          type metadata accessor for ToolKitProtoCoercionDefinition(0);
          sub_20E2FB9A4(&qword_27C86B9D8, type metadata accessor for ToolKitProtoCoercionDefinition);
          goto LABEL_5;
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          type metadata accessor for ToolKitProtoRuntimeRequirement(0);
          sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement);
          goto LABEL_5;
        }

        sub_20E25ECC0();
      }

      else if (result == 1)
      {
        sub_20E25EC0C();
      }

      else if (result == 2)
      {
        v3 = v0;
        type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
        sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
LABEL_5:
        v0 = v3;
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E25EC0C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0) + 40);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E25ECC0()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0) + 44);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E25F0B4(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
      sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      sub_20E322570();
    }

    if (*(v5[1] + 16))
    {
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement);
      sub_20E322570();
    }

    sub_20E25F2D0(v5, a1, a2, a3);
    if (*(v5[2] + 16))
    {
      type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
      sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
      sub_20E322570();
    }

    if (*(v5[3] + 16))
    {
      type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
      sub_20E2FB9A4(&qword_27C86B9D0, type metadata accessor for ToolKitProtoSystemTypeProtocol);
      sub_20E322570();
    }

    if (*(v5[4] + 16))
    {
      sub_20E24F750();
      sub_20E3224B0();
    }

    if (*(v5[5] + 16))
    {
      type metadata accessor for ToolKitProtoCoercionDefinition(0);
      sub_20E2FB9A4(&qword_27C86B9D8, type metadata accessor for ToolKitProtoCoercionDefinition);
      sub_20E322570();
    }

    v11 = v5 + *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0) + 48);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E25F0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  sub_20E0486F4(a1 + *(v14 + 40), v8, &qword_27C863B60, &qword_20E323F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E25F2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  sub_20E0486F4(a1 + *(v14 + 44), v8, &qword_27C868A20, &qword_20E345F10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868A20, &qword_20E345F10);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_20E25F534@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[10];
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[11];
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = &a2[a1[12]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v10 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v10;
  *(a2 + 2) = v10;
  *(a2 + 3) = v10;
  *(a2 + 4) = v10;
  *(a2 + 5) = v10;
  return result;
}

uint64_t sub_20E25F660(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE80, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E25F700()
{
  sub_20E2FB9A4(&qword_27C86BED8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);

  return sub_20E322470();
}

uint64_t sub_20E25F76C()
{
  sub_20E2FB9A4(&qword_27C86BED8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);

  return sub_20E322480();
}

uint64_t sub_20E25F7EC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A698);
  __swift_project_value_buffer(v0, qword_27C86A698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RuntimeFlags_UNSPECIFIED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RuntimeFlags_TRANSIENT_APP_ENTITY";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E25FA10()
{
  if (qword_27C863238 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A670;
  v2 = *algn_27C86A678;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x747265706F72502ELL, 0xE900000000000079);

  qword_27C86A6B0 = v1;
  *algn_27C86A6B8 = v2;
  return result;
}

uint64_t sub_20E25FAE0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A6C0);
  __swift_project_value_buffer(v0, qword_27C86A6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayName";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "type";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_20E25FDC8();
    }

    else if (result == 2 || result == 1)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t sub_20E25FDC8()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0) + 24);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_20E322540(), !v4))
  {
    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_20E322540(), !v4))
    {
      result = sub_20E25FF58(v3, a1, a2, a3);
      if (!v4)
      {
        v14 = v3 + *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0) + 28);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E25FF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863C48, &qword_20E323F30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_20E2601C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E2602A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE78, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E260340()
{
  sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return sub_20E322470();
}

uint64_t sub_20E2603AC()
{
  sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return sub_20E322480();
}

uint64_t sub_20E26042C()
{
  if (qword_27C863228 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A648;
  v2 = qword_27C86A650;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6172656D756E452ELL, 0xEC0000006E6F6974);

  qword_27C86A6D8 = v1;
  unk_27C86A6E0 = v2;
  return result;
}

uint64_t sub_20E260500()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A6E8);
  __swift_project_value_buffer(v0, qword_27C86A6E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20E3262C0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "cases";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "runtimeRequirements";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "kind";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "systemProtocols";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        break;
      }

      if (result == 4)
      {
        sub_20E260ADC();
        goto LABEL_5;
      }

      if (result != 5)
      {
        if (result != 6)
        {
          goto LABEL_5;
        }

        v3 = v0;
        type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
        sub_20E2FB9A4(&qword_27C86B9D0, type metadata accessor for ToolKitProtoSystemTypeProtocol);
LABEL_16:
        v0 = v3;
        goto LABEL_19;
      }

      sub_20E24F6FC();
      sub_20E322310();
LABEL_5:
      result = sub_20E3222B0();
    }

    if (result == 1)
    {
      sub_20E260A28();
      goto LABEL_5;
    }

    if (result != 2)
    {
      if (result != 3)
      {
        goto LABEL_5;
      }

      v3 = v0;
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement);
      goto LABEL_16;
    }

    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
    sub_20E2FB9A4(&qword_27C86B9F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
LABEL_19:
    sub_20E322420();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_20E260A28()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0) + 32);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E260ADC()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0) + 36);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E260DD8(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
      sub_20E2FB9A4(&qword_27C86B9F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
      sub_20E322570();
    }

    if (*(*(v5 + 8) + 16))
    {
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement);
      sub_20E322570();
    }

    sub_20E260FF4(v5, a1, a2, a3);
    if (*(v5 + 16))
    {
      v12 = *(v5 + 16);
      sub_20E24F6FC();
      sub_20E3224D0();
    }

    if (*(*(v5 + 24) + 16))
    {
      type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
      sub_20E2FB9A4(&qword_27C86B9D0, type metadata accessor for ToolKitProtoSystemTypeProtocol);
      sub_20E322570();
    }

    v11 = v5 + *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0) + 40);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E260DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  sub_20E0486F4(a1 + *(v14 + 32), v8, &qword_27C863B60, &qword_20E323F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E260FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  sub_20E0486F4(a1 + *(v14 + 36), v8, &qword_27C868A20, &qword_20E345F10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868A20, &qword_20E345F10);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_20E261258@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[8];
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[9];
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a2 + a1[10];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v10 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = v10;
  *(a2 + 16) = 0;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_20E261384(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE70, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E261424()
{
  sub_20E2FB9A4(&qword_27C86BF10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return sub_20E322470();
}

uint64_t sub_20E261490()
{
  sub_20E2FB9A4(&qword_27C86BF10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return sub_20E322480();
}

uint64_t sub_20E261510()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A700);
  __swift_project_value_buffer(v0, qword_27C86A700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Kind_UNKNOWN";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Kind_APP_ENUM";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Kind_ACTION_ENUM";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E261780()
{
  if (qword_27C863260 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A6D8;
  v2 = qword_27C86A6E0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x657361432ELL, 0xE500000000000000);

  qword_27C86A718 = v1;
  unk_27C86A720 = v2;
  return result;
}

uint64_t sub_20E261848()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A728);
  __swift_project_value_buffer(v0, qword_27C86A728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E261A84()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0) + 20);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E261B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E261E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE68, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E261F04()
{
  sub_20E2FB9A4(&qword_27C86B9F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return sub_20E322470();
}

uint64_t sub_20E261F70()
{
  sub_20E2FB9A4(&qword_27C86B9F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return sub_20E322480();
}

uint64_t sub_20E26201C()
{
  if (qword_27C863228 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A648;
  v2 = qword_27C86A650;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x79726575512ELL, 0xE600000000000000);

  qword_27C86A740 = v1;
  *algn_27C86A748 = v2;
  return result;
}

uint64_t sub_20E2620E4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A750);
  __swift_project_value_buffer(v0, qword_27C86A750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "templates";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E262310()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0) + 20);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E2FB9A4(&qword_27C86BF60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  return sub_20E322430();
}

uint64_t sub_20E262418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C48, &qword_20E346250);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C869C48, &qword_20E346250);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869C48, &qword_20E346250);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E2FB9A4(&qword_27C86BF60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
}

uint64_t sub_20E262700(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2627A0()
{
  sub_20E2FB9A4(&qword_27C86BF48, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);

  return sub_20E322470();
}

uint64_t sub_20E26280C()
{
  sub_20E2FB9A4(&qword_27C86BF48, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);

  return sub_20E322480();
}

uint64_t sub_20E26288C()
{
  if (qword_27C863288 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A740;
  v2 = *algn_27C86A748;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0xD000000000000013, 0x800000020E363650);

  qword_27C86A768 = v1;
  unk_27C86A770 = v2;
  return result;
}

uint64_t sub_20E26295C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A778);
  __swift_project_value_buffer(v0, qword_27C86A778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E3262B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "comparison";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "stringSearch";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "idSearch";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "all";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "suggested";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sampleInvocations";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "searchableItem";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "valid";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            sub_20E2631D0();
          }

          else if (result == 8)
          {
            sub_20E263284();
          }
        }

        else
        {
          if (result != 5)
          {
            v3 = v0;
            type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
            sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
LABEL_21:
            v0 = v3;
            sub_20E322420();
            goto LABEL_5;
          }

          sub_20E26311C();
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_20E262FB4();
        }

        else
        {
          sub_20E263068();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
          sub_20E2FB9A4(&qword_27C86BA10, type metadata accessor for ToolKitProtoComparisonPredicate.Template);
          goto LABEL_21;
        }

        if (result == 2)
        {
          sub_20E262F00();
        }
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E262F00()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 24);
  type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  sub_20E2FB9A4(&qword_27C86C3E8, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  return sub_20E322430();
}

uint64_t sub_20E262FB4()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 28);
  type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  sub_20E2FB9A4(&qword_27C86C418, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  return sub_20E322430();
}

uint64_t sub_20E263068()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 32);
  type metadata accessor for ToolKitProtoAllPredicate(0);
  sub_20E2FB9A4(&qword_27C86C460, type metadata accessor for ToolKitProtoAllPredicate);
  return sub_20E322430();
}

uint64_t sub_20E26311C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 36);
  type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  sub_20E2FB9A4(&qword_27C86C490, type metadata accessor for ToolKitProtoSuggestedPredicate);
  return sub_20E322430();
}

uint64_t sub_20E2631D0()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 40);
  type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  sub_20E2FB9A4(&qword_27C86C448, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
  return sub_20E322430();
}

uint64_t sub_20E263284()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 44);
  type metadata accessor for ToolKitProtoValidPredicate(0);
  sub_20E2FB9A4(&qword_27C86C478, type metadata accessor for ToolKitProtoValidPredicate);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoComparisonPredicate.Template(0), sub_20E2FB9A4(&qword_27C86BA10, type metadata accessor for ToolKitProtoComparisonPredicate.Template), result = sub_20E322570(), !v4))
  {
    result = sub_20E263528(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E263744(v3, a1, a2, a3);
      sub_20E263960(v3, a1, a2, a3);
      sub_20E263B7C(v3, a1, a2, a3);
      if (*(v3[1] + 16))
      {
        type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
        sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
        sub_20E322570();
      }

      sub_20E263D98(v3, a1, a2, a3);
      sub_20E263FB4(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 48);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E263528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C50, &qword_20E346258);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C869C50, &qword_20E346258);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869C50, &qword_20E346258);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_20E2FB9A4(&qword_27C86C3E8, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
}

uint64_t sub_20E263744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C58, &qword_20E346260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C869C58, &qword_20E346260);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869C58, &qword_20E346260);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_20E2FB9A4(&qword_27C86C418, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
}

uint64_t sub_20E263960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C60, &qword_20E346268);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E0486F4(a1 + *(v14 + 32), v8, &qword_27C869C60, &qword_20E346268);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869C60, &qword_20E346268);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoAllPredicate);
  sub_20E2FB9A4(&qword_27C86C460, type metadata accessor for ToolKitProtoAllPredicate);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoAllPredicate);
}

uint64_t sub_20E263B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C68, &qword_20E346270);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E0486F4(a1 + *(v14 + 36), v8, &qword_27C869C68, &qword_20E346270);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869C68, &qword_20E346270);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_20E2FB9A4(&qword_27C86C490, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSuggestedPredicate);
}

uint64_t sub_20E263D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C70, &qword_20E346278);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E0486F4(a1 + *(v14 + 40), v8, &qword_27C869C70, &qword_20E346278);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869C70, &qword_20E346278);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
  sub_20E2FB9A4(&qword_27C86C448, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
}

uint64_t sub_20E263FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C78, &qword_20E346280);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v10 = *(valid - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](valid);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E0486F4(a1 + *(v14 + 44), v8, &qword_27C869C78, &qword_20E346280);
  if ((*(v10 + 48))(v8, 1, valid) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869C78, &qword_20E346280);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoValidPredicate);
  sub_20E2FB9A4(&qword_27C86C478, type metadata accessor for ToolKitProtoValidPredicate);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoValidPredicate);
}

uint64_t sub_20E26421C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for ToolKitProtoAllPredicate(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = a1[9];
  v11 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v12 = a1[10];
  v13 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  v14 = a1[11];
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  (*(*(valid - 8) + 56))(&a2[v14], 1, 1, valid);
  v16 = &a2[a1[12]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v18 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v18;
  return result;
}

uint64_t sub_20E264450(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE58, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2644F0()
{
  sub_20E2FB9A4(&qword_27C86BF60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return sub_20E322470();
}

uint64_t sub_20E26455C()
{
  sub_20E2FB9A4(&qword_27C86BF60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return sub_20E322480();
}

uint64_t sub_20E2645F8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A790);
  __swift_project_value_buffer(v0, qword_27C86A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326330;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "entity";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "collection";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "query";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "entityIdentifier";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "deferred";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_20E264A8C(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E264E6C(v5, a1, a2, a3);
          break;
        case 3:
          sub_20E265254(v5, a1, a2, a3);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_20E265E0C(v5, a1, a2, a3);
      }

      else if (result == 7)
      {
        sub_20E2661F8(v5, a1, a2, a3);
      }
    }

    else if (result == 4)
    {
      sub_20E26563C(v5, a1, a2, a3);
    }

    else
    {
      sub_20E265A24(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E264A8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D138, &qword_20E356500);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v31 = v20 & 0xF000000000000007;
  if (!(v20 >> 61) && v31 != 0xF000000000000007)
  {

    sub_20E04875C(v18, &qword_27C86D138, &qword_20E356500);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(qword_280E0F378, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C86D138, &qword_20E356500);
  }

  sub_20E0486F4(v18, v16, &qword_27C86D138, &qword_20E356500);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C86D138, &qword_20E356500);
    return sub_20E04875C(v16, &qword_27C86D138, &qword_20E356500);
  }

  else
  {
    v24 = v30;
    sub_20E2FB8D8(v16, v30, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    if (v31 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C86D138, &qword_20E356500);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    v27 = *v29;
    *v29 = v25;
    return sub_20E047CA8(v27);
  }
}

uint64_t sub_20E264E6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D140, &qword_20E356508);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x2000000000000000)
  {

    sub_20E04875C(v18, &qword_27C86D140, &qword_20E356508);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C0C0, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C86D140, &qword_20E356508);
  }

  sub_20E0486F4(v18, v16, &qword_27C86D140, &qword_20E356508);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C86D140, &qword_20E356508);
    return sub_20E04875C(v16, &qword_27C86D140, &qword_20E356508);
  }

  else
  {
    v24 = v31;
    sub_20E2FB8D8(v16, v31, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    if (v30 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C86D140, &qword_20E356508);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    v27 = *v29;
    *v29 = v25 | 0x2000000000000000;
    return sub_20E047CA8(v27);
  }
}

uint64_t sub_20E265254(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC0, &qword_20E325D10);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x4000000000000000)
  {

    sub_20E04875C(v18, &qword_27C863EC0, &qword_20E325D10);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C0D8, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C863EC0, &qword_20E325D10);
  }

  sub_20E0486F4(v18, v16, &qword_27C863EC0, &qword_20E325D10);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C863EC0, &qword_20E325D10);
    return sub_20E04875C(v16, &qword_27C863EC0, &qword_20E325D10);
  }

  else
  {
    v24 = v31;
    sub_20E2FB8D8(v16, v31, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    if (v30 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C863EC0, &qword_20E325D10);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    v27 = *v29;
    *v29 = v25 | 0x4000000000000000;
    return sub_20E047CA8(v27);
  }
}

uint64_t sub_20E26563C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D148, &qword_20E356510);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x6000000000000000)
  {

    sub_20E04875C(v18, &qword_27C86D148, &qword_20E356510);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C0F0, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C86D148, &qword_20E356510);
  }

  sub_20E0486F4(v18, v16, &qword_27C86D148, &qword_20E356510);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C86D148, &qword_20E356510);
    return sub_20E04875C(v16, &qword_27C86D148, &qword_20E356510);
  }

  else
  {
    v24 = v31;
    sub_20E2FB8D8(v16, v31, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    if (v30 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C86D148, &qword_20E356510);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    v27 = *v29;
    *v29 = v25 | 0x6000000000000000;
    return sub_20E047CA8(v27);
  }
}

uint64_t sub_20E265A24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v6 = *(Value - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Value);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D150, &qword_20E356518);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, Value);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_20E04875C(v18, &qword_27C86D150, &qword_20E356518);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    v19(v18, 0, 1, Value);
  }

  sub_20E2FB9A4(&qword_27C86C108, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C86D150, &qword_20E356518);
  }

  sub_20E0486F4(v18, v16, &qword_27C86D150, &qword_20E356518);
  if ((*(v6 + 48))(v16, 1, Value) == 1)
  {
    sub_20E04875C(v18, &qword_27C86D150, &qword_20E356518);
    return sub_20E04875C(v16, &qword_27C86D150, &qword_20E356518);
  }

  else
  {
    v24 = v31;
    sub_20E2FB8D8(v16, v31, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    if (v30 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C86D150, &qword_20E356518);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    v27 = *v29;
    *v29 = v25 | 0x8000000000000000;
    return sub_20E047CA8(v27);
  }
}

uint64_t sub_20E265E0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D158, &qword_20E356520);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0xA000000000000000)
  {

    sub_20E04875C(v18, &qword_27C86D158, &qword_20E356520);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C120, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C86D158, &qword_20E356520);
  }

  sub_20E0486F4(v18, v16, &qword_27C86D158, &qword_20E356520);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C86D158, &qword_20E356520);
    return sub_20E04875C(v16, &qword_27C86D158, &qword_20E356520);
  }

  else
  {
    v24 = v31;
    sub_20E2FB8D8(v16, v31, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    if (v30 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C86D158, &qword_20E356520);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    v27 = *v29;
    *v29 = v25 | 0xA000000000000000;
    return sub_20E047CA8(v27);
  }
}

uint64_t sub_20E2661F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D160, &qword_20E356528);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0xC000000000000000)
  {

    sub_20E04875C(v18, &qword_27C86D160, &qword_20E356528);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C138, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C86D160, &qword_20E356528);
  }

  sub_20E0486F4(v18, v16, &qword_27C86D160, &qword_20E356528);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C86D160, &qword_20E356528);
    return sub_20E04875C(v16, &qword_27C86D160, &qword_20E356528);
  }

  else
  {
    v24 = v31;
    sub_20E2FB8D8(v16, v31, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    if (v30 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C86D160, &qword_20E356528);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    v27 = *v29;
    *v29 = v25 | 0xC000000000000000;
    return sub_20E047CA8(v27);
  }
}

uint64_t ToolKitProtoTypedValue.traverse<A>(visitor:)()
{
  if ((~*v0 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v4 = *v0 >> 61;
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        result = sub_20E266834(v0);
        if (!v1)
        {
          goto LABEL_2;
        }
      }

      else
      {
        result = sub_20E26698C(v0);
        if (!v1)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
      result = sub_20E2666E4(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v4 > 4)
  {
    if (v4 == 5)
    {
      result = sub_20E266D94(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_20E266EEC(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v4 == 3)
  {
    result = sub_20E266AE4(v0);
    if (!v1)
    {
LABEL_2:
      v2 = v0 + *(type metadata accessor for ToolKitProtoTypedValue(0) + 20);
      return sub_20E3221A0();
    }
  }

  else
  {
    result = sub_20E266C3C(v0);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_20E2666E4(uint64_t *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v5, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    sub_20E2FB9A4(qword_280E0F378, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    sub_20E322580();
    return sub_20E2FB878(v5, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
  }

  return result;
}

uint64_t sub_20E266834(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v6, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    sub_20E2FB9A4(&qword_27C86C0C0, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    sub_20E322580();
    return sub_20E2FB878(v6, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E26698C(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x4000000000000000)
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v6, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_20E2FB9A4(&qword_27C86C0D8, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_20E322580();
    return sub_20E2FB878(v6, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E266AE4(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x6000000000000000)
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v6, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    sub_20E2FB9A4(&qword_27C86C0F0, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    sub_20E322580();
    return sub_20E2FB878(v6, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E266C3C(void *a1)
{
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v3 = *(*(Value - 8) + 64);
  result = MEMORY[0x28223BE20](Value);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v6, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    sub_20E2FB9A4(&qword_27C86C108, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    sub_20E322580();
    return sub_20E2FB878(v6, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E266D94(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v6, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    sub_20E2FB9A4(&qword_27C86C120, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    sub_20E322580();
    return sub_20E2FB878(v6, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E266EEC(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xC000000000000000)
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v6, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    sub_20E2FB9A4(&qword_27C86C138, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    sub_20E322580();
    return sub_20E2FB878(v6, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2670D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE50, type metadata accessor for ToolKitProtoTypedValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E267178()
{
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);

  return sub_20E322470();
}

uint64_t sub_20E2671E4()
{
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);

  return sub_20E322480();
}

uint64_t sub_20E2672A8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A7B8);
  __swift_project_value_buffer(v0, qword_27C86A7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serializedVariable";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2674E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_20E3222B0();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E267590()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.ID(0) + 20);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t sub_20E267684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863C48, &qword_20E323F30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_20E26795C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE48, type metadata accessor for ToolKitProtoTypedValue.ID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2679FC()
{
  sub_20E2FB9A4(&qword_27C86BF80, type metadata accessor for ToolKitProtoTypedValue.ID);

  return sub_20E322470();
}

uint64_t sub_20E267A68()
{
  sub_20E2FB9A4(&qword_27C86BF80, type metadata accessor for ToolKitProtoTypedValue.ID);

  return sub_20E322480();
}

uint64_t sub_20E267B40()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A7E0);
  __swift_project_value_buffer(v0, qword_27C86A7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20E3262E0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "noneVariant";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "BOOL";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "number";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "decimal";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "string";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "date";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "dateComponents";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "url";
  *(v22 + 8) = 3;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "attributedString";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "measurement";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "currencyAmount";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "paymentMethod";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "placemark";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "person";
  *(v34 + 1) = 6;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "file";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "app";
  *(v37 + 8) = 3;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "searchableItem";
  *(v39 + 1) = 14;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "encodedDateComponents";
  *(v41 + 1) = 21;
  v41[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_20E257248(a1, v5, a2, a3, &qword_27C869C80, &qword_20E346288, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, 18);
          break;
        case 2:
          sub_20E2684AC(a1, v5);
          break;
        case 3:
          sub_20E268680(a1, v5);
          break;
        case 4:
          sub_20E26885C(a1, v5);
          break;
        case 5:
          sub_20E268A38(v5, a1, a2, a3);
          break;
        case 6:
          sub_20E269590(a1, v5, a2, a3, &qword_27C869C80, &qword_20E346288, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, 4);
          break;
        case 7:
          sub_20E268FF4(v5, a1, a2, a3);
          break;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
          goto LABEL_5;
        case 9:
          sub_20E269590(a1, v5, a2, a3, &qword_27C869C80, &qword_20E346288, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, 7);
          break;
        case 10:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 8;
          goto LABEL_5;
        case 11:
          sub_20E2699B4(v5, a1, a2, a3);
          break;
        case 12:
          sub_20E269F70(v5, a1, a2, a3);
          break;
        case 13:
          sub_20E26A52C(v5, a1, a2, a3);
          break;
        case 14:
          sub_20E26AAE8(v5, a1, a2, a3);
          break;
        case 15:
          sub_20E26B0A4(v5, a1, a2, a3);
          break;
        case 16:
          sub_20E26B660(v5, a1, a2, a3);
          break;
        case 17:
          sub_20E26BC1C(v5, a1, a2, a3);
          break;
        case 18:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 16;
LABEL_5:
          sub_20E26978C(v11, v12, v13, v14, &qword_27C869C80, &qword_20E346288, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, v15);
          break;
        case 19:
          sub_20E26C1D8(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2684AC(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v16 = 2;
  result = sub_20E3222E0();
  if (!v2)
  {
    v9 = v16;
    if (v16 != 2)
    {
      v15 = 0;
      sub_20E0486F4(a2, v7, &qword_27C869C80, &qword_20E346288);
      v10 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
      v11 = *(v10 - 8);
      v12 = (*(v11 + 48))(v7, 1, v10);
      sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
      if (v12 != 1)
      {
        v13 = v15;
        result = sub_20E3222C0();
        if (v13)
        {
          return result;
        }

        v15 = 0;
      }

      sub_20E04875C(a2, &qword_27C869C80, &qword_20E346288);
      *a2 = v9 & 1;
      swift_storeEnumTagMultiPayload();
      return (*(v11 + 56))(a2, 0, 1, v10);
    }
  }

  return result;
}

uint64_t sub_20E268680(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 1;
  result = sub_20E322380();
  if (!v2 && (v16 & 1) == 0)
  {
    v17 = 0;
    v14 = v15;
    sub_20E0486F4(a2, v7, &qword_27C869C80, &qword_20E346288);
    v9 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    if (v11 != 1)
    {
      v12 = v17;
      result = sub_20E3222C0();
      if (v12)
      {
        return result;
      }

      v17 = 0;
    }

    sub_20E04875C(a2, &qword_27C869C80, &qword_20E346288);
    *a2 = v14;
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_20E26885C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v16 = 0;
  v17 = 1;
  result = sub_20E3223B0();
  if (!v2 && (v17 & 1) == 0)
  {
    v15 = 0;
    v9 = v16;
    sub_20E0486F4(a2, v7, &qword_27C869C80, &qword_20E346288);
    v10 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v7, 1, v10);
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    if (v12 != 1)
    {
      v13 = v15;
      result = sub_20E3222C0();
      if (v13)
      {
        return result;
      }

      v15 = 0;
    }

    sub_20E04875C(a2, &qword_27C869C80, &qword_20E346288);
    *a2 = v9;
    swift_storeEnumTagMultiPayload();
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_20E268A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C90, &qword_20E346298);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869C80, &qword_20E346288);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869C80, &qword_20E346288);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C869C90, &qword_20E346298);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86BFA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C869C90, &qword_20E346298);
  }

  sub_20E0486F4(v28, v36, &qword_27C869C90, &qword_20E346298);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C869C90, &qword_20E346298);
    return sub_20E04875C(v36, &qword_27C869C90, &qword_20E346298);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C869C90, &qword_20E346298);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E268FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v49 = a2;
  v50 = a1;
  v4 = sub_20E322150();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v42 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v38 - v26;
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = v4;
  v28(&v38 - v26, 1, 1, v4);
  sub_20E0486F4(v50, v13, &qword_27C869C80, &qword_20E346288);
  v39 = v15;
  v40 = (*(v15 + 48))(v13, 1, v14);
  if (v40 == 1)
  {
    sub_20E04875C(v13, &qword_27C869C80, &qword_20E346288);
  }

  else
  {
    sub_20E2FB8D8(v13, v21, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v21, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v27, &qword_27C868778, &unk_20E33C000);
      v29 = *(v44 + 32);
      v30 = v41;
      v31 = v46;
      v29(v41, v19, v46);
      v29(v27, v30, v31);
      v28(v27, 0, 1, v31);
      goto LABEL_7;
    }

    sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  v31 = v46;
LABEL_7:
  sub_20E2FB9A4(&qword_280E12B18, MEMORY[0x277D21570]);
  v32 = v45;
  sub_20E322430();
  if (v32)
  {
    return sub_20E04875C(v27, &qword_27C868778, &unk_20E33C000);
  }

  v34 = v42;
  sub_20E0486F4(v27, v42, &qword_27C868778, &unk_20E33C000);
  v35 = v44;
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_20E04875C(v27, &qword_27C868778, &unk_20E33C000);
    return sub_20E04875C(v34, &qword_27C868778, &unk_20E33C000);
  }

  else
  {
    v36 = *(v35 + 32);
    v36(v43, v34, v31);
    if (v40 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v27, &qword_27C868778, &unk_20E33C000);
    v37 = v50;
    sub_20E04875C(v50, &qword_27C869C80, &qword_20E346288);
    v36(v37, v43, v31);
    swift_storeEnumTagMultiPayload();
    return (*(v39 + 56))(v37, 0, 1, v14);
  }
}

uint64_t sub_20E269590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), int a8)
{
  v36 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  v34 = 0;
  v35 = 0;
  result = sub_20E3223D0();
  if (v8)
  {
  }

  v31 = a3;
  v32 = a4;
  v33 = a2;
  if (v35)
  {
    v30 = v35;
    v28 = v34;
    sub_20E0486F4(v33, v18, a5, a6);
    v20 = a7(0);
    v27 = *(v20 - 8);
    v21 = *(v27 + 48);
    v29 = v20;
    v22 = v21(v18, 1);
    sub_20E04875C(v18, a5, a6);
    if (v22 != 1)
    {
      sub_20E3222C0();
    }

    v23 = v33;
    sub_20E04875C(v33, a5, a6);
    v24 = v29;
    v25 = v30;
    *v23 = v28;
    v23[1] = v25;
    swift_storeEnumTagMultiPayload();
    return (*(v27 + 56))(v23, 0, 1, v24);
  }

  return result;
}

uint64_t sub_20E26978C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), int a8)
{
  v31 = a8;
  v29 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - v16;
  v30 = xmmword_20E323EA0;
  sub_20E322320();
  v18 = *(&v30 + 1);
  if (v8)
  {
    return sub_20E047D10(v30, *(&v30 + 1));
  }

  v26 = a3;
  v27 = a4;
  v28 = a2;
  if (*(&v30 + 1) >> 60 == 15)
  {
    return sub_20E047D10(v30, *(&v30 + 1));
  }

  v19 = v30;
  sub_20E0486F4(v28, v17, a5, a6);
  v20 = v29(0);
  v24 = *(v20 - 8);
  v25 = v20;
  LODWORD(v29) = (*(v24 + 48))(v17, 1);
  sub_20E05E834(v19, v18);
  sub_20E04875C(v17, a5, a6);
  if (v29 != 1)
  {
    sub_20E3222C0();
  }

  sub_20E047D10(v19, v18);
  v22 = v28;
  sub_20E04875C(v28, a5, a6);
  *v22 = v19;
  v22[1] = v18;
  v23 = v25;
  swift_storeEnumTagMultiPayload();
  return (*(v24 + 56))(v22, 0, 1, v23);
}

uint64_t sub_20E2699B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0F8, &qword_20E3564C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869C80, &qword_20E346288);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869C80, &qword_20E346288);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_20E04875C(v28, &qword_27C86D0F8, &qword_20E3564C0);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86BFC8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D0F8, &qword_20E3564C0);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D0F8, &qword_20E3564C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D0F8, &qword_20E3564C0);
    return sub_20E04875C(v36, &qword_27C86D0F8, &qword_20E3564C0);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D0F8, &qword_20E3564C0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E269F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D100, &qword_20E3564C8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869C80, &qword_20E346288);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869C80, &qword_20E346288);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_20E04875C(v28, &qword_27C86D100, &qword_20E3564C8);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86BFE0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D100, &qword_20E3564C8);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D100, &qword_20E3564C8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D100, &qword_20E3564C8);
    return sub_20E04875C(v36, &qword_27C86D100, &qword_20E3564C8);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D100, &qword_20E3564C8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}