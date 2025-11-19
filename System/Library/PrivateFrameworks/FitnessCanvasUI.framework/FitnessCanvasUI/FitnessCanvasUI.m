void sub_1E6726850()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_1E68B30E0();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E6726930()
{
  sub_1E67269DC();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CanvasGridAxis();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1E67269DC()
{
  if (!qword_1EE2EA450)
  {
    type metadata accessor for CGSize(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EA450);
    }
  }
}

void sub_1E6726A38(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t CanvasLayout.withIntersectionSpacing(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *(a1 + 24);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 32);
  v15 = *(v3 + 56);
  v20[0] = *(v3 + 40);
  v20[1] = v15;
  v16 = *(v3 + 88);
  v18 = *(v3 + 72);
  (*(v17 + 16))(v9, v3 + *(v7 + 72), v6);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(v20, v18, v16, v9, v6, a2, v10, v11, v12, v13, v14, a3);
}

uint64_t CanvasLayout.withSizeClass(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = *(v3 + 56);
  v19[0] = *(v3 + 40);
  v19[1] = v13;
  v14 = *(v3 + 80);
  v15 = *(v3 + 88);
  v17 = *(v3 + 72);
  (*(v16 + 16))(v7);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(v19, v17, v15, v7, v5, a3, v8, v9, v10, v11, v12, v14);
}

uint64_t CanvasLayout.withDynamicTypeSize(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = *(a2 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v14 = *(v3 + 56);
  v20[0] = *(v3 + 40);
  v20[1] = v14;
  v15 = *(v3 + 80);
  v16 = *(v3 + 88);
  (*(v18 + 16))(v8, v3 + *(v17 + 72), v6);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(v20, v4, v16, v8, v6, a3, v9, v10, v11, v12, v13, v15);
}

void sub_1E6726E98()
{
  sub_1E6727108();
  if (v0 <= 0x3F)
  {
    swift_getTupleTypeMetadata2();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1E6726F6C()
{
  result = type metadata accessor for CanvasVerticalGridLayout();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CanvasHorizontalGridLayout();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E6727014()
{
  sub_1E672708C();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E672708C()
{
  if (!qword_1EE2EA478)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2EA478);
    }
  }
}

void sub_1E6727108()
{
  if (!qword_1EE2EA480)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2EA480);
    }
  }
}

uint64_t CanvasLayout.withContentMargins(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 24);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v14 = v6[1];
  v21[0] = *v6;
  v21[1] = v14;
  v15 = *(v3 + 80);
  v16 = *(v3 + 88);
  v19 = *(v3 + 72);
  (*(v18 + 16))(v8, v3 + *(v17 + 72), v5);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(v21, v19, v16, v8, v5, a3, v9, v10, v11, v12, v13, v15);
}

uint64_t CanvasLayout.withSectionDensityFactor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v14 = *(v3 + 56);
  v20[0] = *(v3 + 40);
  v20[1] = v14;
  v15 = *(v3 + 80);
  v18 = *(v3 + 72);
  (*(v17 + 16))(v8, v3 + *(v16 + 72), v6);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(v20, v18, a1, v8, v6, a3, v9, v10, v11, v12, v13, v15);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E6727468()
{
  type metadata accessor for CanvasSectionHeader();
  result = sub_1E68B3750();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CanvasItemDescriptor();
    result = sub_1E68B33B0();
    if (v2 <= 0x3F)
    {
      result = sub_1E68B3750();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E67275BC()
{
  result = sub_1E68B1820();
  if (v1 <= 0x3F)
  {
    result = sub_1E68B3750();
    if (v2 <= 0x3F)
    {
      result = sub_1E68B3750();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1E6727680()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CanvasItemContent();
    if (v1 <= 0x3F)
    {
      sub_1E68B3750();
      if (v2 <= 0x3F)
      {
        sub_1E68B3750();
        if (v3 <= 0x3F)
        {
          sub_1E67284A0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E672778C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
  sub_1E68B3750();
  result = swift_getTupleTypeMetadata();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FullWidthItemDescriptor();
    if (v2 <= 0x3F)
    {
      MEMORY[0x1EEE9AC00](result);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      sub_1E68B3750();
      result = swift_getTupleTypeMetadata();
      if (v3 <= 0x3F)
      {
        MEMORY[0x1EEE9AC00](result);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
        result = swift_getTupleTypeMetadata();
        if (v4 <= 0x3F)
        {
          MEMORY[0x1EEE9AC00](result);
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
          result = swift_getTupleTypeMetadata();
          if (v5 <= 0x3F)
          {
            MEMORY[0x1EEE9AC00](result);
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
            result = swift_getTupleTypeMetadata();
            if (v6 <= 0x3F)
            {
              MEMORY[0x1EEE9AC00](result);
              __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
              result = swift_getTupleTypeMetadata();
              if (v7 <= 0x3F)
              {
                MEMORY[0x1EEE9AC00](result);
                __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
                result = swift_getTupleTypeMetadata();
                if (v8 <= 0x3F)
                {
                  MEMORY[0x1EEE9AC00](result);
                  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
                  result = swift_getTupleTypeMetadata();
                  if (v9 <= 0x3F)
                  {
                    MEMORY[0x1EEE9AC00](result);
                    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
                    result = swift_getTupleTypeMetadata();
                    if (v10 <= 0x3F)
                    {
                      MEMORY[0x1EEE9AC00](result);
                      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
                      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E88);
                      result = swift_getTupleTypeMetadata();
                      if (v11 <= 0x3F)
                      {
                        MEMORY[0x1EEE9AC00](result);
                        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
                        result = swift_getTupleTypeMetadata();
                        if (v12 <= 0x3F)
                        {
                          MEMORY[0x1EEE9AC00](result);
                          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
                          result = swift_getTupleTypeMetadata();
                          if (v13 <= 0x3F)
                          {
                            result = swift_checkMetadataState();
                            if (v14 <= 0x3F)
                            {
                              __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
                              result = swift_getTupleTypeMetadata3();
                              if (v15 <= 0x3F)
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
          }
        }
      }
    }
  }

  return result;
}

void sub_1E67282B8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1E6728344();
    if (v1 <= 0x3F)
    {
      sub_1E672838C(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E6728344()
{
  if (!qword_1EE2EDEC0)
  {
    v0 = sub_1E68B1820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EDEC0);
    }
  }
}

void sub_1E672838C(uint64_t a1)
{
  if (!qword_1EE2EDE88)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2EDE88);
    }
  }
}

void sub_1E67284A0()
{
  if (!qword_1EE2EA4A0)
  {
    sub_1E67284FC();
    v0 = sub_1E68B3630();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EA4A0);
    }
  }
}

unint64_t sub_1E67284FC()
{
  result = qword_1EE2EC998;
  if (!qword_1EE2EC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC998);
  }

  return result;
}

unint64_t sub_1E6728554()
{
  result = qword_1EE2EC990;
  if (!qword_1EE2EC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC990);
  }

  return result;
}

uint64_t sub_1E67285A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 96) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((((((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t sub_1E6728760()
{
  result = type metadata accessor for ConditionalViewModifier.Storage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E67287F0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E672889C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicBrickViewLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DynamicBrickViewLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1E672898C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    type metadata accessor for DataItemResolution();
    v8 = sub_1E68B34C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1E6728A50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for DataItemResolution();
    v7 = sub_1E68B34C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E6728B04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E6728B3C()
{
  v1 = sub_1E68B1950();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E6728C20()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MonogramVerticalStackView();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3 + v2[9], v1);
  v4 = v3 + v2[10];
  if (*(v4 + 24))
  {
    sub_1E673F0D4(*v4, *(v4 + 8), *(v4 + 16));
  }

  v5 = v3 + v2[11];
  if (*(v5 + 24))
  {
    sub_1E673F0D4(*v5, *(v5 + 8), *(v5 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E6728D6C()
{

  return swift_deallocObject();
}

uint64_t sub_1E6728DA4()
{
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E00);
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08);
  swift_getWitnessTable();
  sub_1E68B2C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E10);
  sub_1E68B1E40();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED096E18, &qword_1ED096E10);
  swift_getWitnessTable();
  sub_1E673F08C(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E6729100()
{
  type metadata accessor for ConditionalViewModifier();
  swift_getWitnessTable();
  sub_1E68B22E0();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E672933C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096EB0);
  sub_1E68B1E40();
  sub_1E68B1DE0();
  sub_1E673F530(&qword_1ED096EB8, &qword_1ED096EB0);
  swift_getWitnessTable();
  sub_1E6748944(&qword_1EE2EA840, MEMORY[0x1E697E730]);
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1E67294C4()
{
  v13 = *(v0 + 24);
  v1 = type metadata accessor for CanvasLayoutReader();
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_1E68B1C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E68B1DE0();
    (*(*(v8 - 8) + 8))(v0 + v2, v8);
  }

  else
  {
  }

  v9 = (v2 + v3 + v6) & ~v6;
  v10 = v7 + *(v1 + 68);

  v11 = type metadata accessor for CanvasLayout();
  (*(*(*(&v13 + 1) - 8) + 8))(v10 + *(v11 + 72));
  sub_1E68B2C00();

  __swift_destroy_boxed_opaque_existential_1(v7 + *(v1 + 72));

  (*(v5 + 8))(v0 + v9, v4);
  return swift_deallocObject();
}

uint64_t sub_1E6729778()
{
  type metadata accessor for ActionCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E6761260(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for FullWidthStageView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for InfoActionCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for LargeBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for DynamicBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for MonogramVerticalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for StandardCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StandardHorizontalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for StandardVerticalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SummaryCardView();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for TallCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for VerticalStackCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for WideBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  sub_1E68B2220();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E672A498()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v11 = *(v0 + 32);
  v3 = type metadata accessor for LargeBrickView();
  v4 = (*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80);
  v5 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E68B1E00();
    (*(*(v6 - 8) + 8))(v0 + v4, v6);
  }

  else
  {
  }

  (*(*(v2 - 8) + 8))(v5 + v3[17], v2);
  (*(*(v1 - 8) + 8))(v5 + v3[18], v1);
  (*(*(v11 - 8) + 8))(v5 + v3[19]);
  v7 = v5 + v3[20];
  if (*(v7 + 24))
  {
    sub_1E673F0D4(*v7, *(v7 + 8), *(v7 + 16));
  }

  v8 = v5 + v3[22];
  if (*(v8 + 24))
  {
    sub_1E673F0D4(*v8, *(v8 + 8), *(v8 + 16));
  }

  v9 = v5 + v3[23];
  if (*(v9 + 24))
  {
    sub_1E673F0D4(*v9, *(v9 + 8), *(v9 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E672A6E4()
{
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  sub_1E68B1E40();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F0);
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F8);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B1F40();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2C30();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E6768CBC(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E672AB6C()
{

  return swift_deallocObject();
}

uint64_t sub_1E672AC0C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1E672AD64()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097668);
  sub_1E68B1E40();
  sub_1E6776900();
  return swift_getWitnessTable();
}

uint64_t sub_1E672AE28()
{

  return swift_deallocObject();
}

uint64_t sub_1E672AE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097848);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E672AF2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097848);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E672B008()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097880);
  sub_1E68B1EB0();
  sub_1E673F530(&qword_1EE2EA540, &qword_1ED097880);
  sub_1E677C880(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E672B10C()
{
  v1 = *(type metadata accessor for StandardActionLockupConfiguration() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E68B1DE0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1E672B240()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097900);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0978F8);
  sub_1E68B1EB0();
  sub_1E677D71C();
  sub_1E677D800();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E672B364()
{

  return swift_deallocObject();
}

uint64_t sub_1E672B39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097848);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E672B468(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097848);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E672B534@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E67820BC();
}

__n128 sub_1E672B5A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E672B5B4()
{
  v1 = (type metadata accessor for ResolvedDataItemInterestRegistration() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[11];
  type metadata accessor for DataItemResolution();
  v4 = sub_1E68B34D0();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E672B6E8()
{

  return swift_deallocObject();
}

uint64_t sub_1E672B72C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ED097A30);
  sub_1E68B1E40();
  sub_1E6782B50();
  return swift_getWitnessTable();
}

uint64_t sub_1E672B7AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E672B7E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E672B82C()
{

  return swift_deallocObject();
}

uint64_t sub_1E672B880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E68B1DE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E672B93C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E68B1DE0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E672B9F4()
{

  return swift_deallocObject();
}

uint64_t sub_1E672BA34()
{
  type metadata accessor for DataItemDescriptor();
  swift_getTupleTypeMetadata2();
  sub_1E68B33B0();
  swift_getAssociatedTypeWitness();
  sub_1E68B1D10();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1E68B2D40();
  sub_1E678F6DC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E672BBA0()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for DataItemDescriptor() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3, AssociatedTypeWitness);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18);
    swift_getTupleTypeMetadata2();
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1E672BD5C()
{

  return swift_deallocObject();
}

uint64_t sub_1E672BDA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097CC0);
  sub_1E68B1E40();
  sub_1E678FAF8();
  return swift_getWitnessTable();
}

uint64_t sub_1E672BE34()
{
  v1 = *(type metadata accessor for StandardLockupConfiguration() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E68B1DE0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1E672BF78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097E40);
  sub_1E68B1EB0();
  sub_1E67951E4();
  sub_1E677D800();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E672C004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E68B1DE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E672C0C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E68B1DE0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E672C17C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097EA8);
  sub_1E673F530(&qword_1ED097EE0, &qword_1ED097EA8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E672C214(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E672C2E8(unsigned __int8 a1)
{
  v1 = 0x6B726F77747261;
  v2 = 0x5379616C70736964;
  v3 = 0x74756F79616CLL;
  if (a1 != 3)
  {
    v3 = 0x656C746974;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6E6F6974706163;
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

uint64_t sub_1E672C384(unsigned __int8 a1)
{
  v1 = 0x74756F79616CLL;
  v2 = 0x656C746974;
  v3 = 0x656C746974627573;
  if (a1 != 3)
  {
    v3 = 0x6E6F6974706163;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6B726F77747261;
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

uint64_t sub_1E672C554()
{
  type metadata accessor for CanvasContextMenu();
  swift_getWitnessTable();
  sub_1E68B22E0();
  sub_1E68B1E40();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E672C670()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for TallCardView();
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E68B1DE0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v4 + *(v2 + 44), v1);
  v6 = v4 + *(v2 + 48);
  if (*(v6 + 24))
  {
    sub_1E673F0D4(*v6, *(v6 + 8), *(v6 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E672C824()
{

  return swift_deallocObject();
}

uint64_t sub_1E672C864()
{
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  sub_1E68B1E40();
  sub_1E68B1E10();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  swift_getWitnessTable();
  sub_1E67C5B30(&qword_1EE2EA838, MEMORY[0x1E697C168]);
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098168);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098170);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098178);
  sub_1E68B1E40();
  sub_1E673F530(&qword_1EE2EA650, &qword_1ED098178);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2C30();
  swift_getWitnessTable();
  sub_1E67C5938();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  sub_1E67C5B30(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

uint64_t sub_1E672CD24()
{

  return swift_deallocObject();
}

uint64_t sub_1E672CD5C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  type metadata accessor for CanvasSectionHeaderView();
  sub_1E68B2390();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B33B0();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ActionCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for FullWidthStageView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for InfoActionCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for LargeBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for DynamicBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for MonogramVerticalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for StandardCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StandardHorizontalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for StandardVerticalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SummaryCardView();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for TallCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for VerticalStackCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for WideBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CanvasContextMenu();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1E68B2D40();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2EF0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098200);
  sub_1E68B2D80();
  sub_1E673F2EC();
  swift_getWitnessTable();
  sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E67D2CA8();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  return swift_getWitnessTable();
}

uint64_t sub_1E672DED0()
{

  return swift_deallocObject();
}

uint64_t sub_1E672DF08()
{
  v1 = *(v0 + 120);
  v24 = *(v0 + 16);
  v23 = *(v0 + 104);
  v22 = *(v0 + 144);
  v18 = *(v0 + 128);
  v2 = type metadata accessor for VerticalGridView();
  v3 = *(*(v2 - 1) + 80);
  v20 = *(*(v2 - 1) + 64);
  v4 = v22;
  v5 = *(v22 - 8);
  v19 = *(v5 + 80);
  v21 = (v3 + 240) & ~v3;
  v6 = v0 + v21;
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CanvasSectionHeader();
  if (!(*(*(v7 - 8) + 48))(v0 + v21, 1, v7))
  {
    v8 = sub_1E68B1820();
    (*(*(v8 - 8) + 8))(v0 + ((v3 + 240) & ~v3), v8);
    v9 = *(v7 + 52);
    v10 = *(v23 - 8);
    if (!(*(v10 + 48))(v6 + v9, 1, v23))
    {
      (*(v10 + 8))(v6 + v9, v23);
    }

    v11 = *(v7 + 56);
    v12 = *(v24 - 8);
    v4 = v22;
    if (!(*(v12 + 48))(v6 + v11, 1, v24))
    {
      (*(v12 + 8))(v6 + v11, v24);
    }
  }

  v13 = v2[63];
  v14 = *(v1 - 8);
  if (!(*(v14 + 48))(v6 + v13, 1, v1))
  {
    (*(v14 + 8))(v6 + v13, v1);
  }

  (*(*(v18 - 8) + 8))(v6 + v2[67]);

  if (*(v6 + v2[75]))
  {
  }

  if (*(v6 + v2[76]))
  {
  }

  if (*(v6 + v2[77]))
  {
  }

  v15 = v2[78];
  v16 = sub_1E68B1950();
  (*(*(v16 - 8) + 8))(v6 + v15, v16);
  (*(v5 + 8))(v0 + ((v21 + v20 + v19) & ~v19), v4);
  return swift_deallocObject();
}

uint64_t sub_1E672E440(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E672E480()
{
  type metadata accessor for HGrid.Row();
  sub_1E68B33B0();
  type metadata accessor for HGrid.RowItem();
  sub_1E68B33B0();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1E68B2D40();
  swift_getWitnessTable();
  sub_1E68B2D60();
  swift_getWitnessTable();
  sub_1E68B2D40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2640();
  return swift_getWitnessTable();
}

__n128 sub_1E672E6AC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1E672E700()
{
  swift_getTupleTypeMetadata2();
  sub_1E68B33B0();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ActionCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E67E2D90(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for FullWidthStageView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for InfoActionCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for LargeBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for DynamicBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for MonogramVerticalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for StandardCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StandardHorizontalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for StandardVerticalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SummaryCardView();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for TallCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for VerticalStackCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for WideBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1E68B2D40();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getWitnessTable();
  sub_1E68B1B80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8);
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B2420();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CanvasLayout();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E67E15BC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983C0);
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  sub_1E673F530(&qword_1EE2EA658, &qword_1ED0983C0);
  swift_getWitnessTable();
  sub_1E68B1F20();
  return swift_getWitnessTable();
}

uint64_t sub_1E672FA7C()
{

  return swift_deallocObject();
}

uint64_t sub_1E672FAB4()
{

  return swift_deallocObject();
}

uint64_t sub_1E672FB54()
{

  return swift_deallocObject();
}

uint64_t sub_1E672FB8C()
{
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E48);
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098400);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098408);
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E67EA304();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED098418, &qword_1ED098400);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED098420, &qword_1ED098408);
  swift_getWitnessTable();
  sub_1E68B21F0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098428);
  sub_1E68B1DA0();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B1B80();
  swift_getWitnessTable();
  sub_1E67612A8();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098430);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098438);
  sub_1E673F530(&qword_1ED098440, &qword_1ED098438);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B1E60();
  sub_1E67EA358();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  return swift_getWitnessTable();
}

uint64_t sub_1E6730278()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for VerticalStackCardView();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3 + v2[9], v1);
  v4 = v3 + v2[10];
  if (*(v4 + 24))
  {
    sub_1E673F0D4(*v4, *(v4 + 8), *(v4 + 16));
  }

  v5 = v3 + v2[11];
  if (*(v5 + 24))
  {
    sub_1E673F0D4(*v5, *(v5 + 8), *(v5 + 16));
  }

  v6 = v3 + v2[12];
  if (*(v6 + 24))
  {
    sub_1E673F0D4(*v6, *(v6 + 8), *(v6 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E67303E8()
{

  return swift_deallocObject();
}

uint64_t sub_1E6730420()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098518);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098520);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098528);
  sub_1E68B1E40();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED098530, &qword_1ED098528);
  swift_getWitnessTable();
  sub_1E68B2C30();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E67F53A4(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  return swift_getWitnessTable();
}

uint64_t sub_1E6730704()
{
  sub_1E68B1E40();
  sub_1E67979F0();
  return swift_getWitnessTable();
}

uint64_t sub_1E673081C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    type metadata accessor for DataItemResolution();
    v8 = sub_1E68B34D0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1E67308E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for DataItemResolution();
    v7 = sub_1E68B34D0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E6730998@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1ED098948;
  *a1 = *aSymbol_2;
  a1[1] = v2;
}

uint64_t sub_1E6730A24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E68B20A0();
  *a1 = result;
  return result;
}

uint64_t sub_1E6730A7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E68B2040();
  *a1 = result;
  return result;
}

uint64_t sub_1E6730AD4()
{

  return swift_deallocObject();
}

uint64_t sub_1E6730B1C()
{
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getWitnessTable();
  sub_1E67979F0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098AA0);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getWitnessTable();
  sub_1E68B2C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08);
  sub_1E68B1E40();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08);
  swift_getWitnessTable();
  sub_1E68050F0(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098A98);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  return swift_getWitnessTable();
}

uint64_t sub_1E6730FFC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CA8);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B1D70();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B2C30();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E681132C(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E67312C8()
{

  return swift_deallocObject();
}

uint64_t sub_1E6731350()
{

  return swift_deallocObject();
}

uint64_t sub_1E6731388()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  type metadata accessor for CanvasSectionHeaderView();
  sub_1E68B2390();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B33B0();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ActionCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for FullWidthStageView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for InfoActionCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for LargeBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for DynamicBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for MonogramVerticalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for StandardCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StandardHorizontalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for StandardVerticalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SummaryCardView();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for TallCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for VerticalStackCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for WideBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CanvasContextMenu();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1E68B2D40();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1B50();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B1B80();
  sub_1E68B2480();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098200);
  sub_1E68B2D80();
  sub_1E673F2EC();
  swift_getWitnessTable();
  sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  sub_1E67D2CA8();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E6732688()
{

  return swift_deallocObject();
}

uint64_t sub_1E67326C0()
{
  v1 = *(v0 + 120);
  v24 = *(v0 + 16);
  v23 = *(v0 + 104);
  v22 = *(v0 + 144);
  v18 = *(v0 + 128);
  v2 = type metadata accessor for OrthogonalView();
  v3 = *(*(v2 - 1) + 80);
  v20 = *(*(v2 - 1) + 64);
  v4 = v22;
  v5 = *(v22 - 8);
  v19 = *(v5 + 80);
  v21 = (v3 + 240) & ~v3;
  v6 = v0 + v21;
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CanvasSectionHeader();
  if (!(*(*(v7 - 8) + 48))(v0 + v21, 1, v7))
  {
    v8 = sub_1E68B1820();
    (*(*(v8 - 8) + 8))(v0 + ((v3 + 240) & ~v3), v8);
    v9 = *(v7 + 52);
    v10 = *(v23 - 8);
    if (!(*(v10 + 48))(v6 + v9, 1, v23))
    {
      (*(v10 + 8))(v6 + v9, v23);
    }

    v11 = *(v7 + 56);
    v12 = *(v24 - 8);
    v4 = v22;
    if (!(*(v12 + 48))(v6 + v11, 1, v24))
    {
      (*(v12 + 8))(v6 + v11, v24);
    }
  }

  v13 = v2[63];
  v14 = *(v1 - 8);
  if (!(*(v14 + 48))(v6 + v13, 1, v1))
  {
    (*(v14 + 8))(v6 + v13, v1);
  }

  (*(*(v18 - 8) + 8))(v6 + v2[67]);

  if (*(v6 + v2[75]))
  {
  }

  if (*(v6 + v2[76]))
  {
  }

  if (*(v6 + v2[77]))
  {
  }

  v15 = v2[78];
  v16 = sub_1E68B1950();
  (*(*(v16 - 8) + 8))(v6 + v15, v16);
  (*(v5 + 8))(v0 + ((v21 + v20 + v19) & ~v19), v4);
  return swift_deallocObject();
}

uint64_t sub_1E6732C78()
{
  sub_1E68B1E40();
  sub_1E682ED8C();
  return swift_getWitnessTable();
}

uint64_t sub_1E6732CDC()
{
  type metadata accessor for MagicPocketViewModifier();
  sub_1E68B1E40();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E6732D88()
{
  type metadata accessor for MagicPocketViewModifier();
  swift_getWitnessTable();
  sub_1E68B22E0();
  sub_1E68B1E40();
  sub_1E68B23C0();
  sub_1E68B1E40();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1D70();
  swift_getWitnessTable();
  sub_1E68B21F0();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2170();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099518);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED099548, &qword_1ED099518);
  return swift_getWitnessTable();
}

uint64_t sub_1E673308C()
{

  return swift_deallocObject();
}

uint64_t sub_1E67330C4()
{
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995F0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995D8);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B2220();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED0995F8, &qword_1ED0995F0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E67332FC()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for WideBrickView();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E68B1E00();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v4 + v2[9], v1);

  v6 = v4 + v2[11];
  if (*(v6 + 24))
  {
    sub_1E673F0D4(*v6, *(v6 + 8), *(v6 + 16));
  }

  v7 = v4 + v2[12];
  if (*(v7 + 24))
  {
    sub_1E673F0D4(*v7, *(v7 + 8), *(v7 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E67334AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099888);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B2C30();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E681132C(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E6733778()
{

  return swift_deallocObject();
}

uint64_t sub_1E67337B4()
{
  sub_1E68B2440();
  sub_1E68B1E40();
  sub_1E6848CCC();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0998E8);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097018);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  sub_1E68B2E20();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  sub_1E68B3750();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  sub_1E68B2E20();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E6733C00()
{

  return swift_deallocObject();
}

uint64_t sub_1E6733C38@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E68B2080();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E6733C9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E68B2020();
  *a1 = result;
  return result;
}

uint64_t sub_1E6733D18()
{
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099918);
  sub_1E68B1E40();
  sub_1E68B3750();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B2440();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930);
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B1F40();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2C30();
  swift_getWitnessTable();
  sub_1E67C5938();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1E67346B0()
{

  return swift_deallocObject();
}

uint64_t sub_1E67346E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  type metadata accessor for CanvasSectionHeaderView();
  sub_1E68B2390();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B33B0();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ActionCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for FullWidthStageView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for InfoActionCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for LargeBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for DynamicBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for MonogramVerticalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for StandardCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StandardHorizontalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for StandardVerticalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SummaryCardView();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for TallCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for VerticalStackCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for WideBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CanvasContextMenu();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1E68B2D40();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2ED0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B1B80();
  sub_1E68B2480();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098200);
  sub_1E68B2D80();
  sub_1E673F2EC();
  swift_getWitnessTable();
  sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  sub_1E67D2CA8();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E6735950()
{

  return swift_deallocObject();
}

uint64_t sub_1E6735988()
{
  v1 = *(v0 + 120);
  v24 = *(v0 + 16);
  v23 = *(v0 + 104);
  v22 = *(v0 + 144);
  v18 = *(v0 + 128);
  v2 = type metadata accessor for HorizontalGridView();
  v3 = *(*(v2 - 1) + 80);
  v20 = *(*(v2 - 1) + 64);
  v4 = v22;
  v5 = *(v22 - 8);
  v19 = *(v5 + 80);
  v21 = (v3 + 240) & ~v3;
  v6 = v0 + v21;
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CanvasSectionHeader();
  if (!(*(*(v7 - 8) + 48))(v0 + v21, 1, v7))
  {
    v8 = sub_1E68B1820();
    (*(*(v8 - 8) + 8))(v0 + ((v3 + 240) & ~v3), v8);
    v9 = *(v7 + 52);
    v10 = *(v23 - 8);
    if (!(*(v10 + 48))(v6 + v9, 1, v23))
    {
      (*(v10 + 8))(v6 + v9, v23);
    }

    v11 = *(v7 + 56);
    v12 = *(v24 - 8);
    v4 = v22;
    if (!(*(v12 + 48))(v6 + v11, 1, v24))
    {
      (*(v12 + 8))(v6 + v11, v24);
    }
  }

  v13 = v2[63];
  v14 = *(v1 - 8);
  if (!(*(v14 + 48))(v6 + v13, 1, v1))
  {
    (*(v14 + 8))(v6 + v13, v1);
  }

  (*(*(v18 - 8) + 8))(v6 + v2[68]);

  if (*(v6 + v2[76]))
  {
  }

  if (*(v6 + v2[77]))
  {
  }

  if (*(v6 + v2[78]))
  {
  }

  v15 = v2[79];
  v16 = sub_1E68B1950();
  (*(*(v16 - 8) + 8))(v6 + v15, v16);
  (*(v5 + 8))(v0 + ((v21 + v20 + v19) & ~v19), v4);
  return swift_deallocObject();
}

uint64_t sub_1E6735EF0()
{

  return swift_deallocObject();
}

uint64_t sub_1E6735F28@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E68771E0();
}

__n128 sub_1E6735F9C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E6736004()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for StandardVerticalStackView();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E68B1DE0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v4 + v2[10], v1);
  v6 = v4 + v2[11];
  if (*(v6 + 24))
  {
    sub_1E673F0D4(*v6, *(v6 + 8), *(v6 + 16));
  }

  v7 = v4 + v2[12];
  if (*(v7 + 24))
  {
    sub_1E673F0D4(*v7, *(v7 + 8), *(v7 + 16));
  }

  v8 = v4 + v2[13];
  if (*(v8 + 24))
  {
    sub_1E673F0D4(*v8, *(v8 + 8), *(v8 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E67361E8()
{

  return swift_deallocObject();
}

uint64_t sub_1E6736228()
{
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D68);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0978B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D70);
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08);
  swift_getWitnessTable();
  sub_1E68B2C30();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E687B81C(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E6736554@<X0>(void *a1@<X8>)
{
  result = sub_1E68B2000();
  *a1 = v3;
  return result;
}

uint64_t sub_1E67365B8()
{
  sub_1E68B2440();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  sub_1E68B1E40();
  sub_1E68B3750();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097260);
  sub_1E68B1E40();
  sub_1E68B2390();
  sub_1E68B1E40();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA5B8, &qword_1ED097260);
  swift_getWitnessTable();
  sub_1E688558C(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  sub_1E68B3750();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B3750();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  sub_1E68B3750();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2B90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097228);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA418, &qword_1ED097228);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  return swift_getWitnessTable();
}

uint64_t sub_1E6736E9C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for StandardCardView();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E68B1DE0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v4 + v2[10], v1);
  v6 = v4 + v2[11];
  if (*(v6 + 24))
  {
    sub_1E673F0D4(*v6, *(v6 + 8), *(v6 + 16));
  }

  v7 = v4 + v2[12];
  if (*(v7 + 24))
  {
    sub_1E673F0D4(*v7, *(v7 + 8), *(v7 + 16));
  }

  v8 = v4 + v2[13];
  if (*(v8 + 24))
  {
    sub_1E673F0D4(*v8, *(v8 + 8), *(v8 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E6737078()
{

  return swift_deallocObject();
}

uint64_t sub_1E67370B8()
{
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099EE8);
  sub_1E68B1E40();
  sub_1E68B1E10();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  swift_getWitnessTable();
  sub_1E6889AD4(&qword_1EE2EA838, MEMORY[0x1E697C168]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099EF0);
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B2220();
  sub_1E673F530(&qword_1ED099EF8, &qword_1ED099EE8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2C30();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E6889AD4(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E6737400()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099FC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099FD0);
  sub_1E68B3750();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099640);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED099638, &qword_1ED099640);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  return swift_getWitnessTable();
}

uint64_t sub_1E6737660()
{

  return swift_deallocObject();
}

uint64_t sub_1E6737698()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  type metadata accessor for CanvasSectionHeaderView();
  sub_1E68B2390();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B33B0();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ActionCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E6899E90(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for FullWidthStageView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for InfoActionCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for LargeBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for DynamicBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for MonogramVerticalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for StandardCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StandardHorizontalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for StandardVerticalStackView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SummaryCardView();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for TallCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for VerticalStackCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  type metadata accessor for WideBrickView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CanvasContextMenu();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1E68B2D40();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1B70();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  return swift_getWitnessTable();
}

uint64_t sub_1E67386C0()
{

  return swift_deallocObject();
}

uint64_t sub_1E67386F8()
{
  v1 = *(v0 + 120);
  v24 = *(v0 + 16);
  v23 = *(v0 + 104);
  v22 = *(v0 + 144);
  v18 = *(v0 + 128);
  v2 = type metadata accessor for ListView();
  v3 = *(*(v2 - 1) + 80);
  v20 = *(*(v2 - 1) + 64);
  v4 = v22;
  v5 = *(v22 - 8);
  v19 = *(v5 + 80);
  v21 = (v3 + 240) & ~v3;
  v6 = v0 + v21;
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CanvasSectionHeader();
  if (!(*(*(v7 - 8) + 48))(v0 + v21, 1, v7))
  {
    v8 = sub_1E68B1820();
    (*(*(v8 - 8) + 8))(v0 + ((v3 + 240) & ~v3), v8);
    v9 = *(v7 + 52);
    v10 = *(v23 - 8);
    if (!(*(v10 + 48))(v6 + v9, 1, v23))
    {
      (*(v10 + 8))(v6 + v9, v23);
    }

    v11 = *(v7 + 56);
    v12 = *(v24 - 8);
    v4 = v22;
    if (!(*(v12 + 48))(v6 + v11, 1, v24))
    {
      (*(v12 + 8))(v6 + v11, v24);
    }
  }

  v13 = v2[63];
  v14 = *(v1 - 8);
  if (!(*(v14 + 48))(v6 + v13, 1, v1))
  {
    (*(v14 + 8))(v6 + v13, v1);
  }

  (*(*(v18 - 8) + 8))(v6 + v2[67]);

  if (*(v6 + v2[75]))
  {
  }

  if (*(v6 + v2[76]))
  {
  }

  if (*(v6 + v2[77]))
  {
  }

  v15 = v2[78];
  v16 = sub_1E68B1950();
  (*(*(v16 - 8) + 8))(v6 + v15, v16);
  (*(v5 + 8))(v0 + ((v21 + v20 + v19) & ~v19), v4);
  return swift_deallocObject();
}

uint64_t sub_1E6738C64()
{

  return swift_deallocObject();
}

uint64_t sub_1E6738C9C()
{
  type metadata accessor for CanvasSectionDescriptor();
  swift_getTupleTypeMetadata2();
  sub_1E68B33B0();
  sub_1E68B2220();
  type metadata accessor for CanvasItemDescriptor();
  swift_getWitnessTable();
  type metadata accessor for CarouselView();
  type metadata accessor for HorizontalGridView();
  type metadata accessor for VerticalGridView();
  sub_1E68B2220();
  sub_1E68B2220();
  type metadata accessor for ListView();
  type metadata accessor for OrthogonalView();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8);
  sub_1E68B1E40();
  swift_getWitnessTable();
  sub_1E68B2D40();
  swift_getOpaqueTypeConformance2();
  sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1B70();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8);
  sub_1E68B2220();
  sub_1E68B2D40();
  sub_1E68AA77C(&qword_1EE2EA7B8, &qword_1ED0995E8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1B70();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED09A020);
  sub_1E68B1E40();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA640, &qword_1ED09A020);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E673982C()
{

  return swift_deallocObject();
}

uint64_t sub_1E6739864()
{
  v1 = *(v0 + 128);
  v2 = (type metadata accessor for CanvasContainerView() - 8);
  v3 = (*(*v2 + 80) + 304) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = sub_1E68B1C90();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v0 + v3;

  v9 = v8 + v2[86];

  v10 = type metadata accessor for CanvasLayout();
  (*(*(v1 - 8) + 8))(v9 + *(v10 + 72), v1);

  v11 = v2[91];
  v12 = sub_1E68B1950();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  (*(v6 + 8))(v0 + v7, v5);
  return swift_deallocObject();
}

uint64_t sub_1E6739BA8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED09A260);
  sub_1E68B0624(&qword_1ED09A268);
  sub_1E68B1D20();
  sub_1E68B0624(&qword_1ED09A270);
  return swift_getWitnessTable();
}

uint64_t sub_1E6739D3C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E6739D68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E6739DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6761810(a1, a2);
  *a3 = result & 1;
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

uint64_t sub_1E6739E0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E6739E2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E6739E78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096D80);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096D88);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  if (*v0)
  {
    sub_1E68B2D00();
    v7 = sub_1E68B2320();
    *&v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096D90) + 36)] = v7;
    LOBYTE(v7) = sub_1E68B2510();
    sub_1E68B1B30();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096D98) + 36)];
    *v16 = v7;
    *(v16 + 1) = v9;
    *(v16 + 2) = v11;
    *(v16 + 3) = v13;
    *(v16 + 4) = v15;
    v16[40] = 0;
    LOBYTE(v7) = sub_1E68B2530();
    sub_1E68B1B30();
    v17 = &v3[*(v1 + 36)];
    *v17 = v7;
    *(v17 + 1) = v18;
    *(v17 + 2) = v19;
    *(v17 + 3) = v20;
    *(v17 + 4) = v21;
    v17[40] = 0;
    sub_1E673A140(v3, v6);
    swift_storeEnumTagMultiPayload();
    sub_1E673A228(&qword_1EE2EA6C0, &qword_1ED096D80, &unk_1E68BB7E0, sub_1E673A1F8);
    sub_1E68B2210();
    return sub_1E673A3F4(v3);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1E673A228(&qword_1EE2EA6C0, &qword_1ED096D80, &unk_1E68BB7E0, sub_1E673A1F8);
    return sub_1E68B2210();
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E673A140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E673A228(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E673A2AC()
{
  result = qword_1EE2EA778;
  if (!qword_1EE2EA778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096D90);
    sub_1E673A338();
    sub_1E673A390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA778);
  }

  return result;
}

unint64_t sub_1E673A338()
{
  result = qword_1EE2EA4E8;
  if (!qword_1EE2EA4E8)
  {
    sub_1E68B2D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA4E8);
  }

  return result;
}

unint64_t sub_1E673A390()
{
  result = qword_1EE2EA5D0;
  if (!qword_1EE2EA5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA5D0);
  }

  return result;
}

uint64_t sub_1E673A3F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E673A468(uint64_t a1, int a2)
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

uint64_t sub_1E673A488(uint64_t result, int a2, int a3)
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

uint64_t sub_1E673A52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for DataItemResolutionPublisher.InterestContext() + 36);
  type metadata accessor for DataItemResolution();
  v6 = sub_1E68B34C0();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_1E673A5DC()
{
  v1 = *v0;
  v2 = v0[2];
  v4[2] = *(*v0 + 80);
  v4[3] = *(v1 + 88);
  sub_1E68B1950();
  type metadata accessor for DataItemResolutionPublisher.InterestContext();
  sub_1E673C54C();
  sub_1E68B30E0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1E68B3630();
  sub_1E680AF38(sub_1E673C65C, v4, v2);
  return v4[5];
}

uint64_t sub_1E673A710()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1E68B3020();
  sub_1E68B1950();
  type metadata accessor for DataItemResolutionPublisher.InterestContext();
  sub_1E673C54C();
  sub_1E68B30E0();
  sub_1E68B3630();
  swift_getWitnessTable();
  sub_1E68B32F0();
}

uint64_t sub_1E673A880(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E68B1950();
  v4 = type metadata accessor for DataItemResolutionPublisher.InterestContext();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = v13 - v6;
  (*(v8 + 16))(v13 - v6, a2, TupleTypeMetadata2);
  v9 = *(TupleTypeMetadata2 + 48);
  v10 = *&v7[v9];
  v11 = *(*(v4 - 8) + 8);

  v11(&v7[v9], v4);
  v13[3] = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1E68B3630();
  swift_getWitnessTable();
  sub_1E68B3610();
  return (*(*(v3 - 8) + 8))(v7, v3);
}

uint64_t sub_1E673AAA0(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_1E673AAE0(a1);
  return v2;
}

uint64_t sub_1E673AAE0(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1E68B1950();
  v4 = type metadata accessor for DataItemResolutionPublisher.InterestContext();
  swift_getTupleTypeMetadata2();
  v5 = sub_1E68B3350();
  v6 = sub_1E673C54C();
  sub_1E678307C(v5, v3, v4, v6);

  sub_1E68B30E0();
  v7 = sub_1E673C730();

  *(v1 + 16) = v7;
  type metadata accessor for DataItemResolution();
  sub_1E68B3750();
  v8 = sub_1E673C730();
  sub_1E673C814(v2);
  *(v1 + 24) = v8;
  return v1;
}

void sub_1E673AC38(__int128 *a1)
{
  v2 = *v1;
  v3 = v1[3];
  v5[2] = *(*v1 + 80);
  v5[3] = *(v2 + 88);
  v6 = *a1;
  type metadata accessor for DataItemResolution();
  sub_1E68B3750();
  sub_1E680AF38(sub_1E673C6F4, v5, v3);
  if (v7 == 1)
  {
    v4 = v1[2];
    sub_1E68B1950();
    type metadata accessor for DataItemResolutionPublisher.InterestContext();
    sub_1E673C54C();
    sub_1E68B30E0();
    sub_1E680AF38(sub_1E673C714, v1, v4);
  }
}

uint64_t sub_1E673AD74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  if (*a1)
  {
    v13[0] = *a1;
    v13[1] = v8;
    if (a2)
    {
      v12[0] = a2;
      v12[1] = a3;
      sub_1E673C7D4(v9);

      sub_1E673C7D4(v9);
      v10 = static DataItemResolution.== infix(_:_:)(v13, v12);

      result = sub_1E673C814(v9);
      if (v10)
      {
        goto LABEL_11;
      }

LABEL_9:
      sub_1E673C814(*a1);
      *a1 = a2;
      a1[1] = a3;
      *a4 = 1;
    }

    sub_1E673C7D4(v9);

    sub_1E673C7D4(v9);

LABEL_8:
    sub_1E673C814(v9);
    sub_1E673C814(a2);
    goto LABEL_9;
  }

  sub_1E673C7D4(0);
  if (a2)
  {

    goto LABEL_8;
  }

  result = sub_1E673C814(0);
LABEL_11:
  *a4 = 0;
  return result;
}

uint64_t sub_1E673AF0C()
{
  sub_1E68B1950();
  type metadata accessor for DataItemResolutionPublisher.InterestContext();
  sub_1E673C54C();
  sub_1E68B3090();

  swift_getWitnessTable();
  sub_1E68B3310();
}

uint64_t sub_1E673B008(uint64_t *a1)
{
  type metadata accessor for DataItemResolution();
  v2 = sub_1E68B3470();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  type metadata accessor for DataItemResolutionPublisher.InterestContext();
  sub_1E673B394(*a1);
  v7[0] = v7[1];
  sub_1E68B34C0();
  sub_1E68B34A0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1E673B160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v6 = type metadata accessor for DataItemResolution();
  v7 = sub_1E68B3490();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_1E68B34D0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_1E68B1950();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B1940();
  sub_1E673B394(a1);
  v18 = v27;
  v22 = a1;
  v23 = v4;
  v24 = v16;
  v25 = v19;
  v26 = v20;
  nullsub_5(v6);
  sub_1E6782BB4(v9);
  sub_1E68B34E0();
  v27 = v18;
  sub_1E67FCC14(&v27, v12, v21);
  return (*(v14 + 8))(v16, v13);
}

void sub_1E673B394(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  v4[2] = *(*v1 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = a1;
  type metadata accessor for DataItemResolution();
  sub_1E68B3750();
  sub_1E680AF38(sub_1E673C6B4, v4, v3);
}

uint64_t sub_1E673B444(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v37 = a4;
  v39 = a1;
  v9 = *a3;
  v36 = sub_1E68B1950();
  v42 = *(v36 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v9 + 80);
  v12 = *(v9 + 88);
  type metadata accessor for DataItemResolution();
  v13 = sub_1E68B34C0();
  v38 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v35 = type metadata accessor for DataItemResolutionPublisher.InterestContext();
  v41 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v18 = &v34 - v17;
  (*(v14 + 16))(v16, a1, v13);
  sub_1E673A52C(a2, v16, v18);
  v19 = a3[2];
  v47 = v11;
  v48 = v12;
  v20 = v37;
  v49 = v37;
  v50 = v18;
  sub_1E673C54C();
  v21 = v36;
  sub_1E68B30E0();

  sub_1E680AF38(sub_1E673C52C, v46, v19);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = v42;
  v24 = v40;
  v25 = v21;
  (*(v42 + 16))(v40, v20, v21);
  v26 = v23;
  v27 = (*(v23 + 80) + 40) & ~*(v23 + 80);
  v28 = (v43 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 2) = v11;
  *(v29 + 3) = v12;
  *(v29 + 4) = v22;
  (*(v26 + 32))(&v29[v27], v24, v25);
  v30 = &v29[v28];
  v31 = v44;
  v32 = v45;
  *v30 = v44;
  v30[1] = v32;
  sub_1E6739D68(v31);
  sub_1E68B3480();
  return (*(v41 + 8))(v18, v35);
}

uint64_t sub_1E673B7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DataItemResolutionPublisher.InterestContext();
  v6 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1E68B1950();
  MEMORY[0x1EEE9AC00](v9);
  (*(v11 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v12 = *(v5 - 8);
  (*(v12 + 16))(v8, a3, v5);
  (*(v12 + 56))(v8, 0, 1, v5);
  sub_1E673C54C();
  sub_1E68B30E0();
  return sub_1E68B3120();
}

uint64_t sub_1E673B9BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E673BB30(a3);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E673A5DC();

    if (a4)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1E68B3630();
      swift_getWitnessTable();
      sub_1E68B3640();
      a4();
    }
  }

  return result;
}

void sub_1E673BB30(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4[2] = *(*v1 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = a1;
  sub_1E68B1950();
  type metadata accessor for DataItemResolutionPublisher.InterestContext();
  sub_1E673C54C();
  sub_1E68B30E0();
  sub_1E680AF38(sub_1E673C694, v4, v3);
}

uint64_t sub_1E673BC00@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (*a1)
  {
    v20 = a3;
    v19[1] = v19;
    v4 = a1[1];
    MEMORY[0x1EEE9AC00](a1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = sub_1E68B3030();

    if (MEMORY[0x1E6951900](v7, AssociatedTypeWitness, a2, AssociatedConformanceWitness) & 1) != 0 && (sub_1E68B35D0())
    {

      swift_getTupleTypeMetadata2();
      v8 = sub_1E68B3350();
      v9 = sub_1E678307C(v8, AssociatedTypeWitness, a2, AssociatedConformanceWitness);

      v10 = sub_1E68B3020();
      v11 = v20;
      v12 = v9;
    }

    else
    {
      v11 = v20;
      v12 = v7;
      v10 = v4;
    }
  }

  else
  {
    v14 = swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    v15 = sub_1E68B3350();
    v16 = swift_getAssociatedConformanceWitness();
    v17 = sub_1E678307C(v15, v14, a2, v16);

    v10 = sub_1E68B3020();
    v11 = a3;
    v12 = v17;
  }

  return DataItemResolution.init(resolved:failed:)(v12, v10, v11);
}

uint64_t sub_1E673BE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v14 - v8;
  sub_1E68B3830();
  swift_getAssociatedConformanceWitness();
  v10 = sub_1E68B35E0();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  v11 = *(a2 - 8);
  if (v10)
  {
    (*(*(a2 - 8) + 16))(a3, a1, a2);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return (*(v11 + 56))(a3, v12, 1, a2);
}

uint64_t sub_1E673C050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E68B1950();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a3;
  v24 = a4;
  v10 = type metadata accessor for DataItemResolutionPublisher.InterestContext();
  v21 = sub_1E68B3750();
  v11 = *(v21 - 8);
  v12 = MEMORY[0x1EEE9AC00](v21);
  v22 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  v17 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v21 - v18;
  v28 = a1;
  sub_1E673C54C();
  v27 = a2;
  sub_1E68B3110();
  if ((*(v17 + 48))(v16, 1, v10) == 1)
  {
    return (*(v11 + 8))(v16, v21);
  }

  (*(v17 + 32))(v19, v16, v10);
  type metadata accessor for DataItemResolution();
  sub_1E68B34C0();
  sub_1E68B34B0();
  (*(v25 + 16))(v26, v27, v8);
  (*(v17 + 56))(v22, 1, 1, v10);
  sub_1E68B30E0();
  sub_1E68B3120();
  return (*(v17 + 8))(v19, v10);
}

uint64_t sub_1E673C388()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E673C3E0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1E68B3630();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DataItemResolution();
    result = sub_1E68B34C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E673C54C()
{
  result = qword_1EE2EDE78;
  if (!qword_1EE2EDE78)
  {
    sub_1E68B1950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EDE78);
  }

  return result;
}

uint64_t sub_1E673C5A4(uint64_t a1)
{
  v3 = *(sub_1E68B1950() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v1 + 32);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E673B9BC(a1, v5, v1 + v4, v6);
}

uint64_t sub_1E673C730()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1E68B3890();
  return sub_1E68B3880();
}

uint64_t sub_1E673C7D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E673C814(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E673C854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

FitnessCanvasUI::MonogramVerticalStackViewLayout __swiftcall MonogramVerticalStackViewLayout.init(artworkAspectRatio:artworkToTitleSpacing:)(CGSize artworkAspectRatio, Swift::Double artworkToTitleSpacing)
{
  *v2 = artworkAspectRatio.width;
  v2[1] = artworkAspectRatio.height;
  v2[2] = artworkToTitleSpacing;
  result.artworkAspectRatio.height = artworkAspectRatio.height;
  result.artworkAspectRatio.width = artworkAspectRatio.width;
  result.artworkToTitleSpacing = artworkToTitleSpacing;
  return result;
}

uint64_t sub_1E673C908()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E673C950()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E673C994()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1E673C9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001E68E2580 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E25A0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E68B3B00();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1E673CACC(uint64_t a1)
{
  v2 = sub_1E673CDF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E673CB08(uint64_t a1)
{
  v2 = sub_1E673CDF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1E673CB44()
{
  __asm { FMOV            V0.2D, #1.0 }

  xmmword_1EE2EABE0 = result;
  qword_1EE2EABF0 = 0x4014000000000000;
  return result;
}

double static MonogramVerticalStackViewLayout.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EABD8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&qword_1EE2EABF0;
  *a1 = xmmword_1EE2EABE0;
  *(a1 + 16) = result;
  return result;
}

uint64_t MonogramVerticalStackViewLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096DA8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E673CDF4();
  sub_1E68B3BD0();
  v11[0] = v8;
  v11[1] = v9;
  v12 = 0;
  type metadata accessor for CGSize(0);
  sub_1E673F08C(&qword_1EE2EA448, type metadata accessor for CGSize);
  sub_1E68B3AB0();
  if (!v2)
  {
    LOBYTE(v11[0]) = 1;
    sub_1E68B3A90();
  }

  return (*(v5 + 8))(v7, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E673CDF4()
{
  result = qword_1ED096DB0;
  if (!qword_1ED096DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096DB0);
  }

  return result;
}

uint64_t MonogramVerticalStackViewLayout.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096DB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E673CDF4();
  sub_1E68B3BC0();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v14[15] = 0;
    sub_1E673F08C(&qword_1ED096DC0, type metadata accessor for CGSize);
    sub_1E68B3A00();
    v9 = v15;
    v10 = v16;
    LOBYTE(v15) = 1;
    sub_1E68B39E0();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t MonogramVerticalStackViewLayout.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1E69523F0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1E69523F0](*&v5);
}

uint64_t MonogramVerticalStackViewLayout.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1E68B3B70();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1E69523F0](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1E69523F0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1E69523F0](*&v6);
  return sub_1E68B3BB0();
}

uint64_t sub_1E673D200()
{
  v1 = v0[2];
  sub_1E673E7F4(*v0, v0[1]);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1E69523F0](*&v2);
}

uint64_t sub_1E673D24C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1E68B3B70();
  sub_1E673E7F4(v1, v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x1E69523F0](*&v4);
  return sub_1E68B3BB0();
}

uint64_t sub_1E673D2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v20;
  v21 = type metadata accessor for MonogramVerticalStackView();
  v22 = (a9 + v21[10]);
  *v22 = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  v23 = (a9 + v21[11]);
  *v23 = a7;
  v23[1] = a8;
  v23[2] = a10;
  v23[3] = a11;
  v24 = (a9 + v21[12]);
  v25 = swift_allocObject();
  *(v25 + 16) = a12;
  *(v25 + 24) = a13;
  *v24 = sub_1E673F5E0;
  v24[1] = v25;
  v26 = *(*(a14 - 8) + 32);
  v27 = a9 + v21[9];

  return v26(v27, a2, a14);
}

uint64_t sub_1E673D42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v70 = a2;
  v3 = sub_1E68B1EB0();
  v49 = v3;
  v69 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E68B1F60();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v65 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(a1 - 8);
  v63 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(a1 + 16);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF0);
  v80 = sub_1E68B1E40();
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E00);
  v83 = v82;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08);
  v10 = sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v79 = MEMORY[0x1E697E040];
  v11 = swift_getWitnessTable();
  v12 = sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08);
  v76 = v11;
  v77 = v12;
  v57 = v10;
  v56 = swift_getWitnessTable();
  v13 = sub_1E68B2C30();
  v59 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v45 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E10);
  v51 = v13;
  v15 = sub_1E68B1E40();
  v58 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v45 - v16;
  v17 = swift_getWitnessTable();
  v50 = v17;
  v18 = sub_1E673F530(&qword_1ED096E18, &qword_1ED096E10);
  v74 = v17;
  v75 = v18;
  v19 = swift_getWitnessTable();
  v48 = v19;
  v47 = sub_1E673F08C(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  v80 = v15;
  v81 = v3;
  v82 = v19;
  v83 = v47;
  v52 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = *(OpaqueTypeMetadata2 - 8);
  v21 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v46 = &v45 - v24;
  v25 = v61;
  v26 = v64;
  v27 = v60;
  (*(v61 + 16))(v9, v64, v60);
  v28 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v29 = swift_allocObject();
  v30 = v27;
  v31 = *(v27 + 24);
  v32 = v62;
  *(v29 + 16) = v62;
  *(v29 + 24) = v31;
  (*(v25 + 32))(v29 + v28, v9, v30);
  v71 = v32;
  v72 = v31;
  v73 = v26;
  v33 = v55;
  sub_1E68B2C20();
  v34 = v65;
  sub_1E68B1F50();
  v35 = v54;
  v36 = v51;
  sub_1E68B28B0();
  (*(v66 + 8))(v34, v67);
  (*(v59 + 8))(v33, v36);
  v37 = v68;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v38 = v49;
  v39 = v48;
  v40 = v47;
  sub_1E68B2790();
  (*(v69 + 8))(v37, v38);
  (*(v58 + 8))(v35, v15);
  v80 = v15;
  v81 = v38;
  v82 = v39;
  v83 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v46;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v23, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v43 = *(v53 + 8);
  v43(v23, OpaqueTypeMetadata2);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v42, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v43)(v42, OpaqueTypeMetadata2);
}

uint64_t sub_1E673DCBC(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for MonogramVerticalStackView() + 48);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  sub_1E677A174(v2);
}

uint64_t sub_1E673DD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a1;
  v27 = a3;
  v28 = a4;
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF0);
  v36 = sub_1E68B1E40();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E00);
  v39 = v38;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v5 = sub_1E68B2CC0();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = sub_1E68B1E40();
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08);
  v11 = sub_1E68B1E40();
  v25 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  sub_1E68B21C0();
  v29 = a2;
  v30 = v27;
  v31 = v26;
  sub_1E68B2CB0();
  sub_1E68B2E60();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B29F0();
  (*(v23 + 8))(v7, v5);
  v34 = WitnessTable;
  v35 = MEMORY[0x1E697E040];
  v18 = swift_getWitnessTable();
  sub_1E673F180();
  sub_1E68B2800();
  (*(v24 + 8))(v10, v8);
  v19 = sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08);
  v32 = v18;
  v33 = v19;
  v20 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v14, v11, v20);
  v21 = *(v25 + 8);
  v21(v14, v11);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v16, v11, v20);
  return (v21)(v16, v11);
}

uint64_t sub_1E673E1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = sub_1E68B1E40();
  v55 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF0);
  v8 = sub_1E68B1E40();
  v43 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  v42 = type metadata accessor for MonogramVerticalStackView();
  sub_1E68B2780();
  v91 = a2;
  v92 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E673F1D4();
  sub_1E68B2AE0();
  (*(v55 + 8))(v7, v5);
  v15 = sub_1E673F530(&qword_1EE2EA870, &qword_1ED096DF0);
  v89 = WitnessTable;
  v90 = v15;
  v52 = swift_getWitnessTable();
  v53 = v13;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v11, v8, v52);
  v16 = v43;
  v17 = v11;
  v18 = v8;
  v54 = *(v43 + 8);
  v55 = v43 + 8;
  v54(v11, v8);
  sub_1E68B2E80();
  v19 = v42;
  sub_1E68B1C50();
  v44 = v93;
  v45 = v95;
  v46 = v98;
  v47 = v97;
  v107 = 1;
  v20 = a1;
  v105 = v94;
  v103 = v96;
  v21 = (a1 + *(v19 + 40));
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  v50 = *v21;
  v51 = v24;
  v48 = v25;
  v49 = v23;
  if (v25)
  {
    KeyPath = swift_getKeyPath();
    LOBYTE(v70) = v24 & 1;
    *&v99 = v22;
    *(&v99 + 1) = v23;
    LOBYTE(v100) = v24 & 1;
    *v101 = 256;
    v27 = 2;
    v28 = v25;
  }

  else
  {
    v28 = 0;
    KeyPath = 0;
    v27 = 0;
    *v101 = 0;
    *&v100 = 0;
    v99 = 0uLL;
  }

  *(&v100 + 1) = v28;
  *&v101[8] = KeyPath;
  *&v101[16] = v27;
  v101[24] = 0;
  v29 = (v20 + *(v19 + 44));
  v31 = *v29;
  v30 = v29[1];
  v33 = v29[2];
  v32 = v29[3];
  if (v32)
  {
    v34 = swift_getKeyPath();
    LOBYTE(v70) = v33 & 1;
    *&v86 = v31;
    *(&v86 + 1) = v30;
    LOBYTE(v87) = v33 & 1;
    LOWORD(v88[0]) = 256;
    v35 = 2;
    v36 = v32;
  }

  else
  {
    v36 = 0;
    v34 = 0;
    v35 = 0;
    *&v88[0] = 0;
    *&v87 = 0;
    v86 = 0uLL;
  }

  *(&v87 + 1) = v36;
  *(&v88[0] + 1) = v34;
  *&v88[1] = v35;
  BYTE8(v88[1]) = 0;
  v37 = *(v16 + 16);
  v38 = v53;
  v37(v17, v53, v18);
  v70 = 0;
  v71 = v107;
  *v72 = *v106;
  *&v72[3] = *&v106[3];
  v73 = v44;
  v74 = v105;
  *v75 = *v104;
  *&v75[3] = *&v104[3];
  v76 = v45;
  v77 = v103;
  *v78 = *v102;
  *&v78[3] = *&v102[3];
  v79 = v47;
  v80 = v46;
  v81[0] = v17;
  v81[1] = &v70;
  v67 = v99;
  v68 = v100;
  v69[0] = *v101;
  *(v69 + 9) = *&v101[9];
  v64 = v86;
  v65 = v87;
  v66[0] = v88[0];
  *(v66 + 9) = *(v88 + 9);
  v81[2] = &v67;
  v81[3] = &v64;
  sub_1E673F228(v50, v49, v51, v48);
  sub_1E673F228(v31, v30, v33, v32);
  sub_1E673F27C(&v99, v84);
  sub_1E673F27C(&v86, v84);
  v61[0] = v18;
  v61[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096DF8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E00);
  v63 = v62;
  v57 = v52;
  v58 = sub_1E673F2EC();
  v59 = sub_1E673F370();
  v60 = v59;
  sub_1E6848F14(v81, 4uLL, v61);
  sub_1E673F578(&v86);
  sub_1E673F578(&v99);
  v39 = v54;
  v54(v38, v18);
  v82[0] = v64;
  v82[1] = v65;
  v83[0] = v66[0];
  *(v83 + 9) = *(v66 + 9);
  sub_1E673F578(v82);
  v84[0] = v67;
  v84[1] = v68;
  v85[0] = v69[0];
  *(v85 + 9) = *(v69 + 9);
  sub_1E673F578(v84);
  return v39(v17, v18);
}

uint64_t sub_1E673E7F4(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1E69523F0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1E69523F0](*&v3);
}

unint64_t sub_1E673E848()
{
  result = qword_1ED096DC8;
  if (!qword_1ED096DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096DC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MonogramVerticalStackViewLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MonogramVerticalStackViewLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_1E673E8F8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1E673ED38();
    if (v1 <= 0x3F)
    {
      sub_1E673ED88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E673E9A8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((v8 + ((v6 + 24) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 24) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((((((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_1E673EB20(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
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
      result = (&result[v8 + 24] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (((((&result[v9] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

void sub_1E673ED38()
{
  if (!qword_1EE2EA578)
  {
    v0 = sub_1E68B3750();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EA578);
    }
  }
}

void sub_1E673ED88()
{
  if (!qword_1EE2EBE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DD0);
    v0 = type metadata accessor for AssumeEquatable();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EBE68);
    }
  }
}

uint64_t getEnumTagSinglePayload for MonogramVerticalStackViewLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MonogramVerticalStackViewLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E673EF44()
{
  result = qword_1ED096DD8;
  if (!qword_1ED096DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096DD8);
  }

  return result;
}

unint64_t sub_1E673EFE0()
{
  result = qword_1ED096DE0;
  if (!qword_1ED096DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096DE0);
  }

  return result;
}

unint64_t sub_1E673F038()
{
  result = qword_1ED096DE8;
  if (!qword_1ED096DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096DE8);
  }

  return result;
}

uint64_t sub_1E673F08C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E673F0D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E673F0E4()
{
  v1 = *(type metadata accessor for MonogramVerticalStackView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1E673DCBC(v2);
}

unint64_t sub_1E673F180()
{
  result = qword_1EE2EA4D8;
  if (!qword_1EE2EA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA4D8);
  }

  return result;
}

unint64_t sub_1E673F1D4()
{
  result = qword_1ED096E20;
  if (!qword_1ED096E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096E20);
  }

  return result;
}

uint64_t sub_1E673F228(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E673F26C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E673F26C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E673F27C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E673F2EC()
{
  result = qword_1EE2EA7A0;
  if (!qword_1EE2EA7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7A0);
  }

  return result;
}

unint64_t sub_1E673F370()
{
  result = qword_1ED096E28;
  if (!qword_1ED096E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E00);
    sub_1E673F3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096E28);
  }

  return result;
}

unint64_t sub_1E673F3F4()
{
  result = qword_1ED096E30;
  if (!qword_1ED096E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E38);
    sub_1E673F4AC();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096E30);
  }

  return result;
}

unint64_t sub_1E673F4AC()
{
  result = qword_1EE2EA810;
  if (!qword_1EE2EA810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA810);
  }

  return result;
}

uint64_t sub_1E673F530(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E673F578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void StageSnappingScrollTargetBehavior.updateTarget(_:context:)()
{
  v1 = sub_1E68B1C00();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  sub_1E68B2430();
  sub_1E68B1BF0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(v2 + 8);
  v14(v4, v1);
  v31.origin.x = v7;
  v31.origin.y = v9;
  v31.size.width = v11;
  v31.size.height = v13;
  MinY = CGRectGetMinY(v31);
  sub_1E68B1BF0();
  if (MinY != CGRectGetMinY(v32))
  {
    sub_1E68B2430();
    sub_1E68B1BF0();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v14(v4, v1);
    v33.origin.x = v17;
    v33.origin.y = v19;
    v33.size.width = v21;
    v33.size.height = v23;
    if (CGRectGetMinY(v33) == 0.0)
    {
      v24 = sub_1E68B1BE0();
      *(v25 + 8) = v5;
      v24(v30, 0);
    }

    else
    {
      sub_1E68B1BF0();
      if (CGRectGetMinY(v34) > 0.0)
      {
        sub_1E68B1BF0();
        v26 = CGRectGetMinY(v35);
        if (v26 > v5)
        {
          v27 = v26;
        }

        else
        {
          v27 = v5;
        }

        v28 = sub_1E68B1BE0();
        *(v29 + 8) = v27;
        v28(v30, 0);
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for StageSnappingScrollTargetBehavior(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for StageSnappingScrollTargetBehavior(uint64_t result, int a2, int a3)
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

uint64_t LazyCanvasItemContent.transformed<A, B, C>()@<X0>(ValueMetadata *a1@<X0>, ValueMetadata *a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v322 = a4;
  v323 = a6;
  v324 = a3;
  v325 = a5;
  v326 = a1;
  v327 = a2;
  v319 = a7;
  v8 = sub_1E68B1820();
  v9 = *(v8 - 8);
  v320 = v8;
  v321 = v9;
  MEMORY[0x1EEE9AC00](v8);
  *&v318 = &v303 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E68B25F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v303 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E68B1880();
  v316 = *(v15 - 8);
  *&v317 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v303 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v303 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v303 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v303 - v25;
  v27 = v7[13];
  v337[12] = v7[12];
  v337[13] = v27;
  v338[0] = v7[14];
  *(v338 + 9) = *(v7 + 233);
  v28 = v7[9];
  v337[8] = v7[8];
  v337[9] = v28;
  v29 = v7[11];
  v337[10] = v7[10];
  v337[11] = v29;
  v30 = v7[5];
  v337[4] = v7[4];
  v337[5] = v30;
  v31 = v7[7];
  v337[6] = v7[6];
  v337[7] = v31;
  v32 = v7[1];
  v337[0] = *v7;
  v337[1] = v32;
  v33 = v7[3];
  v337[2] = v7[2];
  v337[3] = v33;
  v34 = sub_1E67424C4(v337);
  switch(v34)
  {
    case 1:
      v200 = nullsub_5(v337);
      MEMORY[0x1EEE9AC00](v200);
      strcpy(&v303 - 112, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton customView ");
      v328 = &type metadata for FullWidthStageViewLayout;
      v329 = v327;
      v330 = &type metadata for FullWidthStageViewStyle;
      v331 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v332 = v331;
      v333 = v331;
      v334 = sub_1E68B3750();
      v335 = v334;
      v336 = sub_1E68B3750();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v202 = TupleTypeMetadata[12];
      *&v318 = TupleTypeMetadata[16];
      v203 = TupleTypeMetadata[20];
      v204 = TupleTypeMetadata[24];
      v205 = TupleTypeMetadata[28];
      *&v314 = TupleTypeMetadata[32];
      v315 = TupleTypeMetadata[36];
      v316 = TupleTypeMetadata[40];
      *&v317 = v202;
      v206 = v200[5];
      v208 = v200[2];
      v207 = v200[3];
      v209 = v319;
      *(v319 + 64) = v200[4];
      *(v209 + 5) = v206;
      *(v209 + 2) = v208;
      *(v209 + 3) = v207;
      v210 = v200[9];
      v212 = v200[6];
      v211 = v200[7];
      *(v209 + 8) = v200[8];
      *(v209 + 9) = v210;
      *(v209 + 6) = v212;
      *(v209 + 7) = v211;
      v213 = v200[13];
      v215 = v200[10];
      v214 = v200[11];
      *(v209 + 12) = v200[12];
      *(v209 + 13) = v213;
      *(v209 + 10) = v215;
      *(v209 + 11) = v214;
      v216 = v200[1];
      *v209 = *v200;
      *(v209 + 1) = v216;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v217 = v320;
      v218 = __swift_project_value_buffer(v320, qword_1EE2EDF10);
      v219 = v321;
      v220 = *(v321 + 16);
      v220(&v209[v203], v218, v217);
      v221 = *(v219 + 56);
      v221(&v209[v203], 0, 1, v217);
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v222 = __swift_project_value_buffer(v217, qword_1EE2EDED0);
      v220(&v209[v204], v222, v217);
      v221(&v209[v204], 0, 1, v217);
      if (qword_1EE2EDEE8 != -1)
      {
        swift_once();
      }

      v223 = __swift_project_value_buffer(v217, qword_1EE2EDEF0);
      v220(&v209[v205], v223, v217);
      v221(&v209[v205], 0, 1, v217);
      v224 = v326;
      v225 = *(v326[-1].Description + 7);
      v225(&v209[v314], 1, 1, v326);
      v225(&v315[v209], 1, 1, v224);
      v226 = v324;
      (*(v324[-1].Description + 7))(&v209[v316], 1, 1, v324);
      v227 = v325;
      v228 = v327;
      (*(v325 + 32))(v327, v325);
      v209[v318] = 1;
      v328 = v224;
      v329 = v228;
      v330 = v226;
      v331 = v322;
      v332 = v227;
      v333 = v323;
      type metadata accessor for CanvasItemContent();
      break;
    case 2:
      v143 = nullsub_5(v337);
      MEMORY[0x1EEE9AC00](v143);
      strcpy(&v303 - 48, "layout title description actionButton ");
      v328 = &type metadata for InfoActionCardViewLayout;
      v329 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v330 = v329;
      v331 = sub_1E68B3750();
      v144 = swift_getTupleTypeMetadata();
      v145 = v144[12];
      v146 = v144[16];
      *&v318 = v144[20];
      v147 = *v143;
      v148 = v143[1];
      v149 = v143[3];
      v150 = v319;
      *(v319 + 32) = v143[2];
      *(v150 + 3) = v149;
      *v150 = v147;
      *(v150 + 1) = v148;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v151 = v320;
      v152 = __swift_project_value_buffer(v320, qword_1EE2EDF10);
      v153 = v321;
      v154 = *(v321 + 16);
      v154(&v150[v145], v152, v151);
      v155 = *(v153 + 56);
      v155(&v150[v145], 0, 1, v151);
      v156 = v325;
      v157 = v327;
      if (qword_1ED096D50 != -1)
      {
        swift_once();
      }

      v158 = __swift_project_value_buffer(v151, qword_1ED096E50);
      v154(&v150[v146], v158, v151);
      v155(&v150[v146], 0, 1, v151);
      v159 = v326;
      (*(v326[-1].Description + 7))(&v150[v318], 1, 1, v326);
      v328 = v159;
      v329 = v157;
      v330 = v324;
      v331 = v322;
      v332 = v156;
      v333 = v323;
      type metadata accessor for CanvasItemContent();
      break;
    case 3:
      v160 = nullsub_5(v337);
      v161 = *v160;
      v162 = v160[1];
      MEMORY[0x1EEE9AC00](v160);
      strcpy(&v303 - 48, "artwork caption displayStyle layout title ");
      v163 = v327;
      v328 = v327;
      v329 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v330 = &type metadata for DynamicBrickDisplayStyle;
      v331 = &type metadata for DynamicBrickViewLayout;
      v332 = v329;
      v164 = swift_getTupleTypeMetadata();
      v165 = v164[12];
      *&v317 = v164[16];
      v166 = v319;
      v167 = (v319 + v164[20]);
      *&v318 = v164[24];
      v168 = v325;
      (*(v325 + 32))(v163, v325);
      if (qword_1EE2EDEE8 != -1)
      {
        swift_once();
      }

      v169 = v320;
      v170 = __swift_project_value_buffer(v320, qword_1EE2EDEF0);
      v171 = v321;
      v172 = *(v321 + 16);
      v172(v166 + v165, v170, v169);
      v173 = *(v171 + 56);
      v173(v166 + v165, 0, 1, v169);
      *(v166 + v317) = 3;
      *v167 = v161;
      v167[1] = v162;
      if (qword_1EE2EDF08 != -1)
      {
        goto LABEL_73;
      }

      goto LABEL_37;
    case 4:
      v87 = nullsub_5(v337);
      v317 = *v87;
      v88 = *(v87 + 16);
      MEMORY[0x1EEE9AC00](v87);
      strcpy(&v303 - 48, "layout artwork title subtitle ");
      v89 = v327;
      v328 = &type metadata for MonogramVerticalStackViewLayout;
      v329 = v327;
      v330 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v331 = v330;
      v90 = swift_getTupleTypeMetadata();
      *&v318 = v90[12];
      v91 = v90[16];
      v92 = v90[20];
      v93 = v319;
      *v319 = v317;
      *(v93 + 16) = v88;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v94 = v320;
      v95 = __swift_project_value_buffer(v320, qword_1EE2EDF10);
      v96 = v321;
      v97 = *(v321 + 16);
      v97(v93 + v91, v95, v94);
      v98 = *(v96 + 56);
      v98(v93 + v91, 0, 1, v94);
      v99 = v325;
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v100 = __swift_project_value_buffer(v94, qword_1EE2EDED0);
      v97(v93 + v92, v100, v94);
      v98(v93 + v92, 0, 1, v94);
      (*(v99 + 32))(v89, v99);
      v328 = v326;
      v329 = v89;
      v330 = v324;
      v331 = v322;
      v332 = v99;
      v333 = v323;
      type metadata accessor for CanvasItemContent();
      break;
    case 5:
      v229 = nullsub_5(v337);
      v230 = *v229;
      v231 = v229[1];
      MEMORY[0x1EEE9AC00](v229);
      strcpy(&v303 - 48, "artwork caption displayStyle layout title ");
      v232 = v327;
      v328 = v327;
      v329 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v330 = &type metadata for DynamicBrickDisplayStyle;
      v331 = &type metadata for DynamicBrickViewLayout;
      v332 = v329;
      v233 = swift_getTupleTypeMetadata();
      v234 = v233[12];
      *&v317 = v233[16];
      v166 = v319;
      v235 = (v319 + v233[20]);
      *&v318 = v233[24];
      v168 = v325;
      (*(v325 + 32))(v232, v325);
      if (qword_1EE2EDEE8 != -1)
      {
        swift_once();
      }

      v169 = v320;
      v236 = __swift_project_value_buffer(v320, qword_1EE2EDEF0);
      v237 = v321;
      v172 = *(v321 + 16);
      v172(v166 + v234, v236, v169);
      v173 = *(v237 + 56);
      v173(v166 + v234, 0, 1, v169);
      *(v166 + v317) = 3;
      *v235 = v230;
      v235[1] = v231;
      if (qword_1EE2EDF08 != -1)
      {
LABEL_73:
        swift_once();
      }

LABEL_37:
      v174 = __swift_project_value_buffer(v169, qword_1EE2EDF10);
      v175 = v318;
      v172(v166 + v318, v174, v169);
      v173(v166 + v175, 0, 1, v169);
      v328 = v326;
      v329 = v327;
      v330 = v324;
      v331 = v322;
      v332 = v168;
      v333 = v323;
      type metadata accessor for CanvasItemContent();
      break;
    case 6:
      v250 = nullsub_5(v337);
      MEMORY[0x1EEE9AC00](v250);
      strcpy(&v303 - 48, "layout artwork title subtitle caption ");
      v251 = v327;
      v328 = &type metadata for StandardCardViewLayout;
      v329 = v327;
      v330 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v331 = v330;
      v332 = v330;
      v252 = swift_getTupleTypeMetadata();
      v253 = v252[16];
      v254 = v252[20];
      v255 = v252[24];
      v257 = *(v250 + 64);
      v256 = *(v250 + 80);
      v258 = *(v250 + 48);
      v259 = v319;
      *(v319 + 96) = *(v250 + 96);
      *(v259 + 4) = v257;
      *(v259 + 5) = v256;
      *(v259 + 3) = v258;
      v260 = *v250;
      v261 = *(v250 + 32);
      *(v259 + 1) = *(v250 + 16);
      *(v259 + 2) = v261;
      *v259 = v260;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v262 = v320;
      v263 = __swift_project_value_buffer(v320, qword_1EE2EDF10);
      v264 = v321;
      (*(v321 + 16))(&v259[v253], v263, v262);
      v265 = *(v264 + 56);
      v265(&v259[v253], 0, 1, v262);
      v265(&v259[v254], 1, 1, v262);
      v265(&v259[v255], 1, 1, v262);
      v266 = v325;
      (*(v325 + 32))(v251, v325);
      v328 = v326;
      v329 = v251;
      v330 = v324;
      v331 = v322;
      v332 = v266;
      v333 = v323;
      type metadata accessor for CanvasItemContent();
      break;
    case 7:
      v176 = nullsub_5(v337);
      MEMORY[0x1EEE9AC00](v176);
      strcpy(&v303 - 80, "layout artwork title subtitle caption groupTitle accessoryView ");
      v328 = &type metadata for StandardHorizontalStackViewLayout;
      v329 = v327;
      v330 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v331 = v330;
      v332 = v330;
      v333 = v330;
      v334 = sub_1E68B3750();
      v177 = swift_getTupleTypeMetadata();
      *&v318 = v177[12];
      v178 = v177[16];
      v179 = v177[20];
      v180 = v177[24];
      v181 = v177[32];
      v316 = v177[28];
      *&v317 = v181;
      v182 = v176[5];
      v184 = v176[2];
      v183 = v176[3];
      v185 = v319;
      *(v319 + 64) = v176[4];
      *(v185 + 5) = v182;
      *(v185 + 2) = v184;
      *(v185 + 3) = v183;
      v186 = v176[9];
      v188 = v176[6];
      v187 = v176[7];
      *(v185 + 8) = v176[8];
      *(v185 + 9) = v186;
      *(v185 + 6) = v188;
      *(v185 + 7) = v187;
      v189 = v176[1];
      *v185 = *v176;
      *(v185 + 1) = v189;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v190 = v320;
      v191 = __swift_project_value_buffer(v320, qword_1EE2EDF10);
      v192 = v321;
      v193 = *(v321 + 16);
      v193(&v185[v178], v191, v190);
      v194 = *(v192 + 56);
      v194(&v185[v178], 0, 1, v190);
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v195 = __swift_project_value_buffer(v190, qword_1EE2EDED0);
      v193(&v185[v179], v195, v190);
      v194(&v185[v179], 0, 1, v190);
      if (qword_1EE2EDEE8 != -1)
      {
        swift_once();
      }

      v196 = __swift_project_value_buffer(v190, qword_1EE2EDEF0);
      v193(&v185[v180], v196, v190);
      v194(&v185[v180], 0, 1, v190);
      v194(&v185[v316], 1, 1, v190);
      v197 = v326;
      (*(v326[-1].Description + 7))(&v185[v317], 1, 1, v326);
      v198 = v325;
      v199 = v327;
      (*(v325 + 32))(v327, v325);
      v328 = v197;
      v329 = v199;
      v330 = v324;
      v331 = v322;
      v332 = v198;
      v333 = v323;
      type metadata accessor for CanvasItemContent();
      break;
    case 8:
      v281 = nullsub_5(v337);
      v282 = *v281;
      v283 = *(v281 + 8);
      v284 = *(v281 + 16);
      v285 = *(v281 + 24);
      v286 = *(v281 + 32);
      v287 = *(v281 + 40);
      v288 = *(v281 + 48);
      MEMORY[0x1EEE9AC00](v281);
      strcpy(&v303 - 48, "layout artwork title subtitle caption ");
      v328 = &type metadata for StandardVerticalStackViewLayout;
      v329 = v327;
      v330 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v331 = v330;
      v332 = v330;
      v289 = swift_getTupleTypeMetadata();
      *&v318 = v289[12];
      v290 = v289[16];
      v291 = v289[20];
      v292 = v289[24];
      v293 = v319;
      *v319 = v282;
      *(v293 + 8) = v283;
      *(v293 + 16) = v284;
      *(v293 + 24) = v285;
      *(v293 + 32) = v286;
      *(v293 + 40) = v287;
      *(v293 + 48) = v288;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v294 = v320;
      v295 = __swift_project_value_buffer(v320, qword_1EE2EDF10);
      v296 = v321;
      v297 = *(v321 + 16);
      v297(v293 + v290, v295, v294);
      v298 = *(v296 + 56);
      v298(v293 + v290, 0, 1, v294);
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v299 = __swift_project_value_buffer(v294, qword_1EE2EDED0);
      v297(v293 + v291, v299, v294);
      v298(v293 + v291, 0, 1, v294);
      v298(v293 + v292, 1, 1, v294);
      v300 = v325;
      v301 = v327;
      (*(v325 + 32))(v327, v325);
      v328 = v326;
      v329 = v301;
      v330 = v324;
      v331 = v322;
      v332 = v300;
      v333 = v323;
      type metadata accessor for CanvasItemContent();
      break;
    case 9:
      v114 = nullsub_5(v337);
      v115 = *(v114 + 32);
      v116 = *v114;
      v313 = *(v114 + 16);
      v314 = v116;
      sub_1E68B1870();
      sub_1E68B25D0();
      sub_1E68B2590();

      (*(v12 + 104))(v14, *MEMORY[0x1E6980EA8], v11);
      v117 = sub_1E68B2610();

      (*(v12 + 8))(v14, v11);
      v328 = v117;
      sub_1E67447E0();
      sub_1E68B1890();
      sub_1E68B1870();
      sub_1E68B2600();
      sub_1E68B25C0();
      v118 = sub_1E68B25E0();

      v328 = v118;
      sub_1E68B1890();
      v328 = sub_1E68B2B50();
      sub_1E6744834();
      sub_1E68B1890();
      sub_1E68B1870();
      sub_1E68B2600();
      sub_1E68B25B0();
      v119 = sub_1E68B25E0();

      v328 = v119;
      v315 = v20;
      sub_1E68B1890();
      v328 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      sub_1E6744888();
      v120 = sub_1E68B1890();
      MEMORY[0x1EEE9AC00](v120);
      strcpy(&v303 - 80, "layout artwork title subtitle caption artworkBackgroundColor ");
      v121 = v327;
      v328 = &type metadata for SummaryCardViewLayout;
      v329 = v327;
      v330 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v331 = v330;
      v332 = v330;
      v333 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E88);
      v122 = swift_getTupleTypeMetadata();
      v123 = v122[20];
      v309 = v122[16];
      v310 = v123;
      v124 = v122[28];
      v311 = v122[24];
      v312 = v124;
      v125 = v319;
      v126 = v313;
      *v319 = v314;
      *(v125 + 16) = v126;
      *(v125 + 32) = v115;
      (*(v325 + 32))(v121);
      v127 = sub_1E68B3360();
      v127[1].Kind = 20;
      v127[2].Kind = 88;
      v127[2].Description = 0xE100000000000000;
      v127[3].Kind = 88;
      v127[3].Description = 0xE100000000000000;
      v127[4].Kind = 88;
      v127[4].Description = 0xE100000000000000;
      v127[5].Kind = 88;
      v127[5].Description = 0xE100000000000000;
      v127[6].Kind = 88;
      v127[6].Description = 0xE100000000000000;
      v127[7].Kind = 88;
      v127[7].Description = 0xE100000000000000;
      v127[8].Kind = 88;
      v127[8].Description = 0xE100000000000000;
      v127[9].Kind = 88;
      v127[9].Description = 0xE100000000000000;
      v127[10].Kind = 88;
      v127[10].Description = 0xE100000000000000;
      v127[11].Kind = 88;
      v127[11].Description = 0xE100000000000000;
      v127[12].Kind = 88;
      v127[12].Description = 0xE100000000000000;
      v127[13].Kind = 88;
      v127[13].Description = 0xE100000000000000;
      v127[14].Kind = 88;
      v127[14].Description = 0xE100000000000000;
      v127[15].Kind = 88;
      v127[15].Description = 0xE100000000000000;
      v127[16].Kind = 88;
      v127[16].Description = 0xE100000000000000;
      v127[17].Kind = 88;
      v127[17].Description = 0xE100000000000000;
      v127[18].Kind = 88;
      v127[18].Description = 0xE100000000000000;
      v127[19].Kind = 88;
      v127[19].Description = 0xE100000000000000;
      v127[20].Kind = 88;
      v127[20].Description = 0xE100000000000000;
      v127[21].Kind = 88;
      v127[21].Description = 0xE100000000000000;
      v328 = v127;
      sub_1E68B1870();
      *&v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E90);
      *&v313 = sub_1E67448DC();
      v128 = v318;
      sub_1E68B1840();
      v307 = sub_1E6744940();
      v129 = v309;
      v303 = v17;
      v304 = v23;
      v130 = v320;
      v131 = v128;
      sub_1E68B18F0();
      v132 = v321;
      v308 = v26;
      v133 = *(v321 + 8);
      v305 = v321 + 8;
      v306 = v133;
      v133(v131, v130);
      v321 = *(v132 + 56);
      v134 = v130;
      (v321)(v125 + v129, 0, 1, v130);
      v135 = sub_1E68B3360();
      v135[1].Kind = 20;
      v135[2].Kind = 88;
      v135[2].Description = 0xE100000000000000;
      v135[3].Kind = 88;
      v135[3].Description = 0xE100000000000000;
      v135[4].Kind = 88;
      v135[4].Description = 0xE100000000000000;
      v135[5].Kind = 88;
      v135[5].Description = 0xE100000000000000;
      v135[6].Kind = 88;
      v135[6].Description = 0xE100000000000000;
      v135[7].Kind = 88;
      v135[7].Description = 0xE100000000000000;
      v135[8].Kind = 88;
      v135[8].Description = 0xE100000000000000;
      v135[9].Kind = 88;
      v135[9].Description = 0xE100000000000000;
      v135[10].Kind = 88;
      v135[10].Description = 0xE100000000000000;
      v135[11].Kind = 88;
      v135[11].Description = 0xE100000000000000;
      v135[12].Kind = 88;
      v135[12].Description = 0xE100000000000000;
      v135[13].Kind = 88;
      v135[13].Description = 0xE100000000000000;
      v135[14].Kind = 88;
      v135[14].Description = 0xE100000000000000;
      v135[15].Kind = 88;
      v135[15].Description = 0xE100000000000000;
      v135[16].Kind = 88;
      v135[16].Description = 0xE100000000000000;
      v135[17].Kind = 88;
      v135[17].Description = 0xE100000000000000;
      v135[18].Kind = 88;
      v135[18].Description = 0xE100000000000000;
      v135[19].Kind = 88;
      v135[19].Description = 0xE100000000000000;
      v135[20].Kind = 88;
      v135[20].Description = 0xE100000000000000;
      v135[21].Kind = 88;
      v135[21].Description = 0xE100000000000000;
      v328 = v135;
      sub_1E68B1870();
      v136 = v131;
      sub_1E68B1840();
      v137 = v310;
      v138 = v304;
      sub_1E68B18F0();
      v306(v136, v134);
      v139 = *(v316 + 8);
      v140 = v317;
      v139(v315, v317);
      v139(v138, v140);
      v139(v308, v140);
      v141 = v321;
      (v321)(v125 + v137, 0, 1, v134);
      v141(v125 + v311, 1, 1, v134);
      v142 = sub_1E68B1A10();
      (*(*(v142 - 8) + 56))(v125 + v312, 1, 1, v142);
      v328 = v326;
      v329 = v327;
      v330 = v324;
      v331 = v322;
      v332 = v325;
      v333 = v323;
      type metadata accessor for CanvasItemContent();
      break;
    case 10:
      v267 = nullsub_5(v337);
      v318 = *v267;
      v268 = *(v267 + 16);
      v269 = *(v267 + 24);
      v270 = *(v267 + 32);
      v271 = *(v267 + 40);
      MEMORY[0x1EEE9AC00](v267);
      strcpy(&v303 - 48, "layout artwork title overlay ");
      v272 = v327;
      v328 = &type metadata for TallCardViewLayout;
      v329 = v327;
      v330 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v331 = &type metadata for Overlay;
      v273 = swift_getTupleTypeMetadata();
      v274 = *(v273 + 64);
      v275 = *(v273 + 80);
      v276 = v319;
      *v319 = v318;
      *(v276 + 16) = v268;
      *(v276 + 24) = v269;
      *(v276 + 32) = v270;
      *(v276 + 40) = v271;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v277 = v320;
      v278 = __swift_project_value_buffer(v320, qword_1EE2EDF10);
      v279 = v321;
      (*(v321 + 16))(v276 + v274, v278, v277);
      (*(v279 + 56))(v276 + v274, 0, 1, v277);
      v280 = v325;
      (*(v325 + 32))(v272, v325);
      *(v276 + v275) = 1;
      v328 = v326;
      v329 = v272;
      v330 = v324;
      v331 = v322;
      v332 = v280;
      v333 = v323;
      type metadata accessor for CanvasItemContent();
      break;
    case 11:
      v66 = nullsub_5(v337);
      MEMORY[0x1EEE9AC00](v66);
      strcpy(&v303 - 48, "layout artwork title subtitle caption ");
      v67 = v327;
      v328 = &type metadata for VerticalStackCardLayout;
      v329 = v327;
      v330 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v331 = v330;
      v332 = v330;
      v68 = swift_getTupleTypeMetadata();
      *&v318 = v68[12];
      v69 = v68[16];
      v70 = v68[20];
      *&v317 = v68[24];
      v71 = v66[7];
      v73 = v66[4];
      v72 = v66[5];
      v74 = v319;
      *(v319 + 96) = v66[6];
      *(v74 + 7) = v71;
      *(v74 + 4) = v73;
      *(v74 + 5) = v72;
      v75 = *v66;
      v76 = v66[1];
      v77 = v66[3];
      *(v74 + 2) = v66[2];
      *(v74 + 3) = v77;
      *v74 = v75;
      *(v74 + 1) = v76;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v78 = v320;
      v79 = __swift_project_value_buffer(v320, qword_1EE2EDF10);
      v80 = v321;
      v81 = *(v321 + 16);
      v81(&v74[v69], v79, v78);
      v82 = *(v80 + 56);
      v82(&v74[v69], 0, 1, v78);
      v83 = v325;
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v84 = __swift_project_value_buffer(v78, qword_1EE2EDED0);
      v81(&v74[v70], v84, v78);
      v82(&v74[v70], 0, 1, v78);
      if (qword_1EE2EDEE8 != -1)
      {
        swift_once();
      }

      v85 = __swift_project_value_buffer(v78, qword_1EE2EDEF0);
      v86 = v317;
      v81(&v74[v317], v85, v78);
      v82(&v74[v86], 0, 1, v78);
      (*(v83 + 32))(v67, v83);
      v328 = v326;
      v329 = v67;
      v330 = v324;
      v331 = v322;
      v332 = v83;
      v333 = v323;
      type metadata accessor for CanvasItemContent();
      break;
    case 12:
      MEMORY[0x1EEE9AC00](v34);
      strcpy(&v303 - 48, "artwork footnote subtitle title ");
      v101 = v327;
      v328 = v327;
      v329 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v330 = v329;
      v331 = v329;
      v102 = swift_getTupleTypeMetadata();
      v103 = v102[12];
      v104 = v102[16];
      *&v318 = v102[20];
      v105 = v319;
      (*(v325 + 32))(v101);
      if (qword_1EE2EDEE8 != -1)
      {
        swift_once();
      }

      v106 = v320;
      v107 = __swift_project_value_buffer(v320, qword_1EE2EDEF0);
      v108 = v321;
      v109 = *(v321 + 16);
      v109(v105 + v103, v107, v106);
      v110 = *(v108 + 56);
      v110(v105 + v103, 0, 1, v106);
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v111 = __swift_project_value_buffer(v106, qword_1EE2EDED0);
      v109(v105 + v104, v111, v106);
      v110(v105 + v104, 0, 1, v106);
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v112 = __swift_project_value_buffer(v106, qword_1EE2EDF10);
      v113 = v318;
      v109(v105 + v318, v112, v106);
      v110(v105 + v113, 0, 1, v106);
      v328 = v326;
      v329 = v101;
      v330 = v324;
      v331 = v322;
      v332 = v325;
      v333 = v323;
      type metadata accessor for CanvasItemContent();
      break;
    case 13:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v238 = v327;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v240 = *(TupleTypeMetadata3 + 48);
      *&v318 = *(TupleTypeMetadata3 + 64);
      v241 = v325;
      v242 = v319;
      (*(v325 + 32))(v238, v325);
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v243 = v320;
      v244 = __swift_project_value_buffer(v320, qword_1EE2EDED0);
      v245 = v321;
      v246 = *(v321 + 16);
      v246(v242 + v240, v244, v243);
      v247 = *(v245 + 56);
      v247(v242 + v240, 0, 1, v243);
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v248 = __swift_project_value_buffer(v243, qword_1EE2EDF10);
      v249 = v318;
      v246(v242 + v318, v248, v243);
      v247(v242 + v249, 0, 1, v243);
      v328 = v326;
      v329 = v238;
      v330 = v324;
      v331 = v322;
      v332 = v241;
      v333 = v323;
      type metadata accessor for CanvasItemContent();
      break;
    default:
      v35 = nullsub_5(v337);
      MEMORY[0x1EEE9AC00](v35);
      strcpy(&v303 - 96, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton ");
      v328 = &type metadata for ActionCardViewLayout;
      v329 = v327;
      v330 = &type metadata for ActionCardViewStyle;
      v331 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      v332 = v331;
      v333 = v331;
      v334 = v326;
      v335 = sub_1E68B3750();
      v36 = swift_getTupleTypeMetadata();
      v37 = v36[12];
      *&v318 = v36[16];
      v38 = v36[20];
      v39 = v36[24];
      v40 = v36[28];
      v41 = v36[32];
      v316 = v37;
      *&v317 = v41;
      v315 = v36[36];
      v42 = *(v35 + 112);
      v44 = *(v35 + 64);
      v43 = *(v35 + 80);
      v45 = v319;
      *(v319 + 96) = *(v35 + 96);
      *(v45 + 112) = v42;
      *(v45 + 64) = v44;
      *(v45 + 80) = v43;
      v46 = *(v35 + 176);
      v48 = *(v35 + 128);
      v47 = *(v35 + 144);
      *(v45 + 160) = *(v35 + 160);
      *(v45 + 176) = v46;
      *(v45 + 128) = v48;
      *(v45 + 144) = v47;
      v50 = *(v35 + 208);
      v49 = *(v35 + 224);
      v51 = *(v35 + 192);
      *(v45 + 240) = *(v35 + 240);
      *(v45 + 208) = v50;
      *(v45 + 224) = v49;
      *(v45 + 192) = v51;
      v52 = *v35;
      v53 = *(v35 + 16);
      v54 = *(v35 + 48);
      *(v45 + 32) = *(v35 + 32);
      *(v45 + 48) = v54;
      *v45 = v52;
      *(v45 + 16) = v53;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v55 = v320;
      v56 = __swift_project_value_buffer(v320, qword_1EE2EDF10);
      v57 = v321;
      v58 = *(v321 + 16);
      v58(v45 + v38, v56, v55);
      v59 = *(v57 + 56);
      v59(v45 + v38, 0, 1, v55);
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v60 = __swift_project_value_buffer(v55, qword_1EE2EDED0);
      v58(v45 + v39, v60, v55);
      v59(v45 + v39, 0, 1, v55);
      if (qword_1EE2EDEE8 != -1)
      {
        swift_once();
      }

      v61 = __swift_project_value_buffer(v55, qword_1EE2EDEF0);
      v58(v45 + v40, v61, v55);
      v59(v45 + v40, 0, 1, v55);
      v62 = v326;
      (*(v326[-1].Description + 7))(&v315[v45], 1, 1, v326);
      v63 = v325;
      v64 = v327;
      (*(v325 + 32))(v327, v325);
      *(v45 + v318) = 1;
      v65 = v322;
      (*(v322 + 32))(v62, v322);
      v328 = v62;
      v329 = v64;
      v330 = v324;
      v331 = v65;
      v332 = v63;
      v333 = v323;
      type metadata accessor for CanvasItemContent();
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E67424C4(uint64_t a1)
{
  if (*(a1 + 248) <= 0xBu)
  {
    return *(a1 + 248);
  }

  else
  {
    return (*a1 + 12);
  }
}

void CanvasItemContent.transformed()(void *a1@<X0>, _OWORD *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v198 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v31 = type metadata accessor for FullWidthItemDescriptor();
      goto LABEL_15;
    case 2:
      v93 = *(v5 + 11);
      v228 = *(v5 + 10);
      v229 = v93;
      v94 = *(v5 + 13);
      v230 = *(v5 + 12);
      v231 = v94;
      v95 = *(v5 + 7);
      v224 = *(v5 + 6);
      v225 = v95;
      v96 = *(v5 + 9);
      v226 = *(v5 + 8);
      v227 = v96;
      v97 = *(v5 + 3);
      v220 = *(v5 + 2);
      v221 = v97;
      v98 = *(v5 + 5);
      v222 = *(v5 + 4);
      v223 = v98;
      v99 = *(v5 + 1);
      v218 = *v5;
      v219 = v99;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v198 - 112, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton customView ");
      v15 = a1[3];
      *&v276 = &type metadata for FullWidthStageViewLayout;
      *(&v276 + 1) = v15;
      *&v277 = &type metadata for FullWidthStageViewStyle;
      *(&v277 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *&v278 = *(&v277 + 1);
      *(&v278 + 1) = *(&v277 + 1);
      *&v279 = sub_1E68B3750();
      *(&v279 + 1) = v279;
      *&v280 = sub_1E68B3750();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v101 = TupleTypeMetadata[12];
      v200 = TupleTypeMetadata[20];
      *&v201 = v101;
      *&v199 = TupleTypeMetadata[24];
      *&v198 = TupleTypeMetadata[28];
      v102 = TupleTypeMetadata[32];
      v103 = TupleTypeMetadata[36];
      v104 = TupleTypeMetadata[40];
      v271 = v228;
      v272 = v229;
      v273 = v230;
      v274 = v231;
      v267 = v224;
      v268 = v225;
      v269 = v226;
      v270 = v227;
      v263 = v220;
      v264 = v221;
      v265 = v222;
      v266 = v223;
      v261 = v218;
      v262 = v219;
      sub_1E6744AF8(&v261);
      v288 = v273;
      v289 = v274;
      v290[0] = v275[0];
      *(v290 + 9) = *(v275 + 9);
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      v276 = v261;
      v277 = v262;
      v278 = v263;
      v279 = v264;
      nullsub_5(&v276);
      v105 = v289;
      a2[12] = v288;
      a2[13] = v105;
      a2[14] = v290[0];
      *(a2 + 233) = *(v290 + 9);
      v106 = v285;
      a2[8] = v284;
      a2[9] = v106;
      v107 = v287;
      a2[10] = v286;
      a2[11] = v107;
      v108 = v281;
      a2[4] = v280;
      a2[5] = v108;
      v109 = v283;
      a2[6] = v282;
      a2[7] = v109;
      v110 = v277;
      *a2 = v276;
      a2[1] = v110;
      v111 = v279;
      a2[2] = v278;
      a2[3] = v111;
      v112 = sub_1E68B3750();
      (*(*(v112 - 8) + 8))(&v5[v104], v112);
      v113 = sub_1E68B3750();
      v114 = *(*(v113 - 8) + 8);
      v114(&v5[v103], v113);
      v114(&v5[v102], v113);
      sub_1E6744A10(&v5[v198], &qword_1ED096E68);
      sub_1E6744A10(&v5[v199], &qword_1ED096E68);
      v30 = &v5[v200];
      goto LABEL_10;
    case 3:
      v118 = *(v5 + 1);
      v232 = *v5;
      v233 = v118;
      v119 = *(v5 + 3);
      v234 = *(v5 + 2);
      v235 = v119;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v198 - 48, "layout title description actionButton ");
      *&v276 = &type metadata for InfoActionCardViewLayout;
      *(&v276 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *&v277 = *(&v276 + 1);
      *(&v277 + 1) = sub_1E68B3750();
      v120 = swift_getTupleTypeMetadata();
      v121 = v120[12];
      v122 = v120[16];
      v123 = v120[20];
      v261 = v232;
      v262 = v233;
      v263 = v234;
      v264 = v235;
      sub_1E6744AEC(&v261);
      v288 = v273;
      v289 = v274;
      v290[0] = v275[0];
      *(v290 + 9) = *(v275 + 9);
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      v276 = v261;
      v277 = v262;
      v278 = v263;
      v279 = v264;
      nullsub_5(&v276);
      v124 = v289;
      a2[12] = v288;
      a2[13] = v124;
      a2[14] = v290[0];
      *(a2 + 233) = *(v290 + 9);
      v125 = v285;
      a2[8] = v284;
      a2[9] = v125;
      v126 = v287;
      a2[10] = v286;
      a2[11] = v126;
      v127 = v281;
      a2[4] = v280;
      a2[5] = v127;
      v128 = v283;
      a2[6] = v282;
      a2[7] = v128;
      v129 = v277;
      *a2 = v276;
      a2[1] = v129;
      v130 = v279;
      a2[2] = v278;
      a2[3] = v130;
      v131 = sub_1E68B3750();
      (*(*(v131 - 8) + 8))(&v5[v123], v131);
      sub_1E6744A10(&v5[v122], &qword_1ED096E68);
      sub_1E6744A10(&v5[v121], &qword_1ED096E68);
      return;
    case 4:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v198 - 48, "artwork footnote subtitle title ");
      v48 = a1[3];
      *&v276 = v48;
      *(&v276 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *&v277 = *(&v276 + 1);
      *(&v277 + 1) = *(&v276 + 1);
      v49 = swift_getTupleTypeMetadata();
      *&v201 = v49[12];
      v50 = v49[16];
      v51 = v49[20];
      sub_1E6744AB8(&v261);
      v288 = v273;
      v289 = v274;
      v290[0] = v275[0];
      *(v290 + 9) = *(v275 + 9);
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      v276 = v261;
      v277 = v262;
      v278 = v263;
      v279 = v264;
      nullsub_5(&v276);
      v52 = v289;
      a2[12] = v288;
      a2[13] = v52;
      a2[14] = v290[0];
      *(a2 + 233) = *(v290 + 9);
      v53 = v285;
      a2[8] = v284;
      a2[9] = v53;
      v54 = v287;
      a2[10] = v286;
      a2[11] = v54;
      v55 = v281;
      a2[4] = v280;
      a2[5] = v55;
      v56 = v283;
      a2[6] = v282;
      a2[7] = v56;
      v57 = v277;
      *a2 = v276;
      a2[1] = v57;
      v58 = v279;
      a2[2] = v278;
      a2[3] = v58;
      sub_1E6744A10(&v5[v51], &qword_1ED096E68);
      sub_1E6744A10(&v5[v50], &qword_1ED096E68);
      v59 = &v5[v201];
      goto LABEL_18;
    case 5:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v198 - 48, "artwork caption displayStyle layout title ");
      v48 = a1[3];
      *&v276 = v48;
      *(&v276 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *&v277 = &type metadata for DynamicBrickDisplayStyle;
      *(&v277 + 1) = &type metadata for DynamicBrickViewLayout;
      *&v278 = *(&v276 + 1);
      v140 = swift_getTupleTypeMetadata();
      v116 = v140[12];
      v117 = v140[24];
      v261 = *&v5[v140[20]];
      sub_1E6744AAC(&v261);
      goto LABEL_17;
    case 6:
      v201 = *v5;
      v156 = *(v5 + 2);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v198 - 48, "layout artwork title subtitle ");
      v64 = a1[3];
      *&v276 = &type metadata for MonogramVerticalStackViewLayout;
      *(&v276 + 1) = v64;
      *&v277 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *(&v277 + 1) = v277;
      v157 = swift_getTupleTypeMetadata();
      v66 = v157[12];
      v158 = v157[16];
      v159 = v157[20];
      v261 = v201;
      *&v262 = v156;
      sub_1E6744AA0(&v261);
      v288 = v273;
      v289 = v274;
      v290[0] = v275[0];
      *(v290 + 9) = *(v275 + 9);
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      v276 = v261;
      v277 = v262;
      v278 = v263;
      v279 = v264;
      nullsub_5(&v276);
      v160 = v289;
      a2[12] = v288;
      a2[13] = v160;
      a2[14] = v290[0];
      *(a2 + 233) = *(v290 + 9);
      v161 = v285;
      a2[8] = v284;
      a2[9] = v161;
      v162 = v287;
      a2[10] = v286;
      a2[11] = v162;
      v163 = v281;
      a2[4] = v280;
      a2[5] = v163;
      v164 = v283;
      a2[6] = v282;
      a2[7] = v164;
      v165 = v277;
      *a2 = v276;
      a2[1] = v165;
      v166 = v279;
      a2[2] = v278;
      a2[3] = v166;
      sub_1E6744A10(&v5[v159], &qword_1ED096E68);
      v75 = &v5[v158];
      goto LABEL_21;
    case 7:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v198 - 48, "artwork caption displayStyle layout title ");
      v48 = a1[3];
      *&v276 = v48;
      *(&v276 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *&v277 = &type metadata for DynamicBrickDisplayStyle;
      *(&v277 + 1) = &type metadata for DynamicBrickViewLayout;
      *&v278 = *(&v276 + 1);
      v132 = swift_getTupleTypeMetadata();
      v116 = v132[12];
      v117 = v132[24];
      v261 = *&v5[v132[20]];
      sub_1E6744A94(&v261);
      goto LABEL_17;
    case 8:
      v242 = *(v5 + 12);
      v186 = *(v5 + 5);
      v240 = *(v5 + 4);
      v241 = v186;
      v187 = *(v5 + 1);
      v236 = *v5;
      v237 = v187;
      v188 = *(v5 + 3);
      v238 = *(v5 + 2);
      v239 = v188;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v198 - 48, "layout artwork title subtitle caption ");
      v34 = a1[3];
      *&v276 = &type metadata for StandardCardViewLayout;
      *(&v276 + 1) = v34;
      *&v277 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *(&v277 + 1) = v277;
      *&v278 = v277;
      v189 = swift_getTupleTypeMetadata();
      v190 = v189[12];
      v200 = v189[16];
      *&v201 = v190;
      v154 = v189[20];
      v155 = v189[24];
      v265 = v240;
      v266 = v241;
      *&v267 = v242;
      v261 = v236;
      v262 = v237;
      v264 = v239;
      v263 = v238;
      sub_1E6744A88(&v261);
      goto LABEL_24;
    case 9:
      v76 = *(v5 + 7);
      v249 = *(v5 + 6);
      v250 = v76;
      v77 = *(v5 + 9);
      v251 = *(v5 + 8);
      v252 = v77;
      v78 = *(v5 + 3);
      v245 = *(v5 + 2);
      v246 = v78;
      v79 = *(v5 + 5);
      v247 = *(v5 + 4);
      v248 = v79;
      v80 = *(v5 + 1);
      v243 = *v5;
      v244 = v80;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v198 - 80, "layout artwork title subtitle caption groupTitle accessoryView ");
      v15 = a1[3];
      *&v276 = &type metadata for StandardHorizontalStackViewLayout;
      *(&v276 + 1) = v15;
      *&v277 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *(&v277 + 1) = v277;
      *&v278 = v277;
      *(&v278 + 1) = v277;
      *&v279 = sub_1E68B3750();
      v81 = swift_getTupleTypeMetadata();
      v82 = v81[12];
      v200 = v81[16];
      *&v201 = v82;
      *&v199 = v81[20];
      *&v198 = v81[24];
      v83 = v81[28];
      v84 = v81[32];
      v267 = v249;
      v268 = v250;
      v269 = v251;
      v270 = v252;
      v263 = v245;
      v264 = v246;
      v265 = v247;
      v266 = v248;
      v261 = v243;
      v262 = v244;
      sub_1E6744A7C(&v261);
      v288 = v273;
      v289 = v274;
      v290[0] = v275[0];
      *(v290 + 9) = *(v275 + 9);
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      v276 = v261;
      v277 = v262;
      v278 = v263;
      v279 = v264;
      nullsub_5(&v276);
      v85 = v289;
      a2[12] = v288;
      a2[13] = v85;
      a2[14] = v290[0];
      *(a2 + 233) = *(v290 + 9);
      v86 = v285;
      a2[8] = v284;
      a2[9] = v86;
      v87 = v287;
      a2[10] = v286;
      a2[11] = v87;
      v88 = v281;
      a2[4] = v280;
      a2[5] = v88;
      v89 = v283;
      a2[6] = v282;
      a2[7] = v89;
      v90 = v277;
      *a2 = v276;
      a2[1] = v90;
      v91 = v279;
      a2[2] = v278;
      a2[3] = v91;
      v92 = sub_1E68B3750();
      (*(*(v92 - 8) + 8))(&v5[v84], v92);
      sub_1E6744A10(&v5[v83], &qword_1ED096E68);
      sub_1E6744A10(&v5[v198], &qword_1ED096E68);
      sub_1E6744A10(&v5[v199], &qword_1ED096E68);
      v30 = &v5[v200];
      goto LABEL_10;
    case 10:
      v167 = *v5;
      v168 = *(v5 + 1);
      v169 = *(v5 + 2);
      v170 = *(v5 + 3);
      v171 = v5[32];
      v172 = *(v5 + 5);
      v173 = *(v5 + 6);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v198 - 48, "layout artwork title subtitle caption ");
      v34 = a1[3];
      *&v276 = &type metadata for StandardVerticalStackViewLayout;
      *(&v276 + 1) = v34;
      *&v277 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *(&v277 + 1) = v277;
      *&v278 = v277;
      v174 = swift_getTupleTypeMetadata();
      v175 = v174[12];
      v200 = v174[16];
      *&v201 = v175;
      v176 = v174[20];
      v177 = v174[24];
      LOBYTE(v261) = v167;
      *(&v261 + 1) = v168;
      *&v262 = v169;
      *(&v262 + 1) = v170;
      LOBYTE(v263) = v171;
      *(&v263 + 1) = v172;
      *&v264 = v173;
      sub_1E6744A70(&v261);
      v288 = v273;
      v289 = v274;
      v290[0] = v275[0];
      *(v290 + 9) = *(v275 + 9);
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      v276 = v261;
      v277 = v262;
      v278 = v263;
      v279 = v264;
      nullsub_5(&v276);
      v178 = v289;
      a2[12] = v288;
      a2[13] = v178;
      a2[14] = v290[0];
      *(a2 + 233) = *(v290 + 9);
      v179 = v285;
      a2[8] = v284;
      a2[9] = v179;
      v180 = v287;
      a2[10] = v286;
      a2[11] = v180;
      v181 = v281;
      a2[4] = v280;
      a2[5] = v181;
      v182 = v283;
      a2[6] = v282;
      a2[7] = v182;
      v183 = v277;
      *a2 = v276;
      a2[1] = v183;
      v184 = v279;
      a2[2] = v278;
      a2[3] = v184;
      sub_1E6744A10(&v5[v177], &qword_1ED096E68);
      sub_1E6744A10(&v5[v176], &qword_1ED096E68);
      v185 = &v5[v200];
      goto LABEL_26;
    case 11:
      v32 = *(v5 + 4);
      v33 = *v5;
      v198 = *(v5 + 1);
      v199 = v33;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v198 - 80, "layout artwork title subtitle caption artworkBackgroundColor ");
      v34 = a1[3];
      *&v276 = &type metadata for SummaryCardViewLayout;
      *(&v276 + 1) = v34;
      *&v277 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *(&v277 + 1) = v277;
      *&v278 = v277;
      *(&v278 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E88);
      v35 = swift_getTupleTypeMetadata();
      v36 = v35[12];
      v200 = v35[16];
      *&v201 = v36;
      v37 = v35[20];
      v38 = v35[24];
      v39 = v35[28];
      v261 = v199;
      v262 = v198;
      *&v263 = v32;
      sub_1E6744A04(&v261);
      v288 = v273;
      v289 = v274;
      v290[0] = v275[0];
      *(v290 + 9) = *(v275 + 9);
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      v276 = v261;
      v277 = v262;
      v278 = v263;
      v279 = v264;
      nullsub_5(&v276);
      v40 = v289;
      a2[12] = v288;
      a2[13] = v40;
      a2[14] = v290[0];
      *(a2 + 233) = *(v290 + 9);
      v41 = v285;
      a2[8] = v284;
      a2[9] = v41;
      v42 = v287;
      a2[10] = v286;
      a2[11] = v42;
      v43 = v281;
      a2[4] = v280;
      a2[5] = v43;
      v44 = v283;
      a2[6] = v282;
      a2[7] = v44;
      v45 = v277;
      *a2 = v276;
      a2[1] = v45;
      v46 = v279;
      a2[2] = v278;
      a2[3] = v46;
      sub_1E6744A10(&v5[v39], &qword_1ED096E88);
      sub_1E6744A10(&v5[v38], &qword_1ED096E68);
      v47 = &v5[v37];
      goto LABEL_25;
    case 12:
      v201 = *v5;
      v60 = *(v5 + 2);
      v61 = v5[24];
      v62 = *(v5 + 4);
      v63 = *(v5 + 5);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v198 - 48, "layout artwork title overlay ");
      v64 = a1[3];
      *&v276 = &type metadata for TallCardViewLayout;
      *(&v276 + 1) = v64;
      *&v277 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *(&v277 + 1) = &type metadata for Overlay;
      v65 = swift_getTupleTypeMetadata();
      v66 = *(v65 + 48);
      v67 = *(v65 + 64);
      v261 = v201;
      *&v262 = v60;
      BYTE8(v262) = v61;
      *&v263 = v62;
      *(&v263 + 1) = v63;
      sub_1E67449F8(&v261);
      v288 = v273;
      v289 = v274;
      v290[0] = v275[0];
      *(v290 + 9) = *(v275 + 9);
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      v276 = v261;
      v277 = v262;
      v278 = v263;
      v279 = v264;
      nullsub_5(&v276);
      v68 = v289;
      a2[12] = v288;
      a2[13] = v68;
      a2[14] = v290[0];
      *(a2 + 233) = *(v290 + 9);
      v69 = v285;
      a2[8] = v284;
      a2[9] = v69;
      v70 = v287;
      a2[10] = v286;
      a2[11] = v70;
      v71 = v281;
      a2[4] = v280;
      a2[5] = v71;
      v72 = v283;
      a2[6] = v282;
      a2[7] = v72;
      v73 = v277;
      *a2 = v276;
      a2[1] = v73;
      v74 = v279;
      a2[2] = v278;
      a2[3] = v74;
      v75 = &v5[v67];
LABEL_21:
      sub_1E6744A10(v75, &qword_1ED096E68);
      (*(*(v64 - 8) + 8))(&v5[v66], v64);
      break;
    case 13:
      v148 = *(v5 + 5);
      v257 = *(v5 + 4);
      v258 = v148;
      v149 = *(v5 + 7);
      v259 = *(v5 + 6);
      v260 = v149;
      v150 = *(v5 + 1);
      v253 = *v5;
      v254 = v150;
      v151 = *(v5 + 3);
      v255 = *(v5 + 2);
      v256 = v151;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v198 - 48, "layout artwork title subtitle caption ");
      v34 = a1[3];
      *&v276 = &type metadata for VerticalStackCardLayout;
      *(&v276 + 1) = v34;
      *&v277 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *(&v277 + 1) = v277;
      *&v278 = v277;
      v152 = swift_getTupleTypeMetadata();
      v153 = v152[12];
      v200 = v152[16];
      *&v201 = v153;
      v154 = v152[20];
      v155 = v152[24];
      v265 = v257;
      v266 = v258;
      v267 = v259;
      v268 = v260;
      v261 = v253;
      v262 = v254;
      v263 = v255;
      v264 = v256;
      sub_1E67449EC(&v261);
LABEL_24:
      v288 = v273;
      v289 = v274;
      v290[0] = v275[0];
      *(v290 + 9) = *(v275 + 9);
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      v276 = v261;
      v277 = v262;
      v278 = v263;
      v279 = v264;
      nullsub_5(&v276);
      v191 = v289;
      a2[12] = v288;
      a2[13] = v191;
      a2[14] = v290[0];
      *(a2 + 233) = *(v290 + 9);
      v192 = v285;
      a2[8] = v284;
      a2[9] = v192;
      v193 = v287;
      a2[10] = v286;
      a2[11] = v193;
      v194 = v281;
      a2[4] = v280;
      a2[5] = v194;
      v195 = v283;
      a2[6] = v282;
      a2[7] = v195;
      v196 = v277;
      *a2 = v276;
      a2[1] = v196;
      v197 = v279;
      a2[2] = v278;
      a2[3] = v197;
      sub_1E6744A10(&v5[v155], &qword_1ED096E68);
      v47 = &v5[v154];
LABEL_25:
      sub_1E6744A10(v47, &qword_1ED096E68);
      v185 = &v5[v200];
LABEL_26:
      sub_1E6744A10(v185, &qword_1ED096E68);
      (*(*(v34 - 8) + 8))(&v5[v201], v34);
      break;
    case 14:
      v31 = a1[4];
LABEL_15:
      (*(*(v31 - 8) + 8))(v5);
      sub_1E6744B04(&v276);
      v133 = v289;
      a2[12] = v288;
      a2[13] = v133;
      a2[14] = v290[0];
      *(a2 + 233) = *(v290 + 9);
      v134 = v285;
      a2[8] = v284;
      a2[9] = v134;
      v135 = v287;
      a2[10] = v286;
      a2[11] = v135;
      v136 = v281;
      a2[4] = v280;
      a2[5] = v136;
      v137 = v283;
      a2[6] = v282;
      a2[7] = v137;
      v138 = v277;
      *a2 = v276;
      a2[1] = v138;
      v139 = v279;
      a2[2] = v278;
      a2[3] = v139;
      break;
    case 15:
      v48 = a1[3];
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v116 = *(TupleTypeMetadata3 + 48);
      v117 = *(TupleTypeMetadata3 + 64);
      sub_1E6744998(&v261);
LABEL_17:
      v288 = v273;
      v289 = v274;
      v290[0] = v275[0];
      *(v290 + 9) = *(v275 + 9);
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      v276 = v261;
      v277 = v262;
      v278 = v263;
      v279 = v264;
      nullsub_5(&v276);
      v141 = v289;
      a2[12] = v288;
      a2[13] = v141;
      a2[14] = v290[0];
      *(a2 + 233) = *(v290 + 9);
      v142 = v285;
      a2[8] = v284;
      a2[9] = v142;
      v143 = v287;
      a2[10] = v286;
      a2[11] = v143;
      v144 = v281;
      a2[4] = v280;
      a2[5] = v144;
      v145 = v283;
      a2[6] = v282;
      a2[7] = v145;
      v146 = v277;
      *a2 = v276;
      a2[1] = v146;
      v147 = v279;
      a2[2] = v278;
      a2[3] = v147;
      sub_1E6744A10(&v5[v117], &qword_1ED096E68);
      v59 = &v5[v116];
LABEL_18:
      sub_1E6744A10(v59, &qword_1ED096E68);
      (*(*(v48 - 8) + 8))(v5, v48);
      break;
    default:
      v217 = *(v5 + 30);
      v8 = *(v5 + 13);
      v214 = *(v5 + 12);
      v215 = v8;
      v216 = *(v5 + 14);
      v9 = *(v5 + 9);
      v210 = *(v5 + 8);
      v211 = v9;
      v10 = *(v5 + 11);
      v212 = *(v5 + 10);
      v213 = v10;
      v11 = *(v5 + 5);
      v206 = *(v5 + 4);
      v207 = v11;
      v12 = *(v5 + 7);
      v208 = *(v5 + 6);
      v209 = v12;
      v13 = *(v5 + 1);
      v202 = *v5;
      v203 = v13;
      v14 = *(v5 + 3);
      v204 = *(v5 + 2);
      v205 = v14;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v198 - 96, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton ");
      v15 = a1[3];
      *&v276 = &type metadata for ActionCardViewLayout;
      *(&v276 + 1) = v15;
      *&v277 = &type metadata for ActionCardViewStyle;
      *(&v277 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68);
      *&v278 = *(&v277 + 1);
      v16 = a1[2];
      *(&v278 + 1) = *(&v277 + 1);
      *&v279 = v16;
      *(&v279 + 1) = sub_1E68B3750();
      v17 = swift_getTupleTypeMetadata();
      v18 = v17[12];
      v200 = v17[20];
      *&v201 = v18;
      *&v199 = v17[24];
      v19 = v17[28];
      v20 = v17[32];
      v21 = v17[36];
      v273 = v214;
      v274 = v215;
      v275[0] = v216;
      *&v275[1] = v217;
      v269 = v210;
      v270 = v211;
      v271 = v212;
      v272 = v213;
      v265 = v206;
      v266 = v207;
      v267 = v208;
      v268 = v209;
      v261 = v202;
      v262 = v203;
      v263 = v204;
      v264 = v205;
      sub_1E6744B38(&v261);
      v288 = v273;
      v289 = v274;
      v290[0] = v275[0];
      *(v290 + 9) = *(v275 + 9);
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      v276 = v261;
      v277 = v262;
      v278 = v263;
      v279 = v264;
      nullsub_5(&v276);
      v22 = v289;
      a2[12] = v288;
      a2[13] = v22;
      a2[14] = v290[0];
      *(a2 + 233) = *(v290 + 9);
      v23 = v285;
      a2[8] = v284;
      a2[9] = v23;
      v24 = v287;
      a2[10] = v286;
      a2[11] = v24;
      v25 = v281;
      a2[4] = v280;
      a2[5] = v25;
      v26 = v283;
      a2[6] = v282;
      a2[7] = v26;
      v27 = v277;
      *a2 = v276;
      a2[1] = v27;
      v28 = v279;
      a2[2] = v278;
      a2[3] = v28;
      v29 = sub_1E68B3750();
      (*(*(v29 - 8) + 8))(&v5[v21], v29);
      (*(*(v16 - 8) + 8))(&v5[v20], v16);
      sub_1E6744A10(&v5[v19], &qword_1ED096E68);
      sub_1E6744A10(&v5[v199], &qword_1ED096E68);
      v30 = &v5[v200];
LABEL_10:
      sub_1E6744A10(v30, &qword_1ED096E68);
      (*(*(v15 - 8) + 8))(&v5[v201], v15);
      break;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1E6744780(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E68B1820();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1E68B1780();
}

unint64_t sub_1E67447E0()
{
  result = qword_1ED096E70;
  if (!qword_1ED096E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096E70);
  }

  return result;
}

unint64_t sub_1E6744834()
{
  result = qword_1ED096E78;
  if (!qword_1ED096E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096E78);
  }

  return result;
}

unint64_t sub_1E6744888()
{
  result = qword_1ED096E80;
  if (!qword_1ED096E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096E80);
  }

  return result;
}

unint64_t sub_1E67448DC()
{
  result = qword_1ED096E98;
  if (!qword_1ED096E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096E98);
  }

  return result;
}

unint64_t sub_1E6744940()
{
  result = qword_1ED096EA0;
  if (!qword_1ED096EA0)
  {
    sub_1E68B1820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096EA0);
  }

  return result;
}

double sub_1E6744998(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 12;
  return result;
}

uint64_t sub_1E6744A10(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1E6744AB8(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 248) = 12;
  return result;
}

double sub_1E6744B04(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 248) = -1;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for DynamicLayoutProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DynamicLayoutProvider(_WORD *result, int a2, int a3)
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

uint64_t sub_1E6744CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E68B2200();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E68B2210();
}

uint64_t sub_1E6744DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E68B2200();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E68B2210();
}

uint64_t ConditionalViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a1;
  v70 = a3;
  swift_getWitnessTable();
  v4 = sub_1E68B22E0();
  v5 = *(a2 + 24);
  v6 = sub_1E68B1E40();
  v61 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v60 = &v54 - v10;
  v64 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v71 = v4;
  v13 = sub_1E68B1E40();
  v58 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v57 = &v54 - v18;
  v19 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 32);
  v23 = v12;
  *&v24 = v12;
  v65 = v5;
  *(&v24 + 1) = v5;
  v72 = v22;
  v88 = v22;
  v87 = v24;
  v25 = type metadata accessor for ConditionalViewModifier.Storage();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v54 - v27;
  v29 = v6;
  v69 = sub_1E68B2220();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v54 - v30;
  (*(v26 + 16))(v28, v63, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v62;
    v32 = v65;
    (*(v64 + 32))(v62, v28, v65);
    v33 = v71;
    WitnessTable = swift_getWitnessTable();
    v35 = v59;
    MEMORY[0x1E69512E0](v31, v33, v32, WitnessTable);
    v85 = WitnessTable;
    v86 = *(&v72 + 1);
    v66 = swift_getWitnessTable();
    v36 = v61;
    v37 = *(v61 + 16);
    v38 = v60;
    v37(v60, v35, v29);
    v39 = *(v36 + 8);
    v39(v35, v29);
    v37(v35, v38, v29);
    v83 = WitnessTable;
    v84 = v72;
    swift_getWitnessTable();
    v40 = v67;
    sub_1E6744DB8(v35, v13, v29);
    v39(v35, v29);
    v39(v38, v29);
    (*(v64 + 8))(v62, v65);
  }

  else
  {
    v56 = v19;
    v41 = *(v19 + 32);
    v55 = v21;
    v54 = v23;
    v41(v21, v28, v23);
    v42 = v71;
    v43 = swift_getWitnessTable();
    MEMORY[0x1E69512E0](v21, v42, v23, v43);
    v75 = v43;
    v76 = v72;
    v66 = swift_getWitnessTable();
    v44 = v58;
    v45 = *(v58 + 16);
    v46 = v57;
    v45(v57, v16, v13);
    v47 = *(v44 + 8);
    v47(v16, v13);
    v45(v16, v46, v13);
    v73 = v43;
    v74 = *(&v72 + 1);
    swift_getWitnessTable();
    v40 = v67;
    sub_1E6744CC0(v16, v13);
    v47(v16, v13);
    v47(v46, v13);
    (*(v56 + 8))(v55, v54);
  }

  v48 = swift_getWitnessTable();
  v81 = v48;
  v82 = v72;
  v49 = swift_getWitnessTable();
  v79 = v48;
  v80 = *(&v72 + 1);
  v50 = swift_getWitnessTable();
  v77 = v49;
  v78 = v50;
  v51 = v69;
  swift_getWitnessTable();
  v52 = v68;
  (*(v68 + 16))(v70, v40, v51);
  return (*(v52 + 8))(v40, v51);
}

uint64_t static ViewModifierBuilder.buildOptional<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v23 = a2;
  v24 = MEMORY[0x1E697E108];
  v25 = a3;
  v26 = MEMORY[0x1E697E100];
  v7 = type metadata accessor for ConditionalViewModifier.Storage();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = sub_1E68B3750();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v15 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  if ((*(v15 + 48))(v14, 1, a2) == 1)
  {
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = *(v15 + 32);
    v18(v17, v14, a2);
    v18(v9, v17, a2);
  }

  swift_storeEnumTagMultiPayload();
  v23 = a2;
  v24 = MEMORY[0x1E697E108];
  v25 = a3;
  v26 = MEMORY[0x1E697E100];
  v19 = type metadata accessor for ConditionalViewModifier.Storage();
  return (*(*(v19 - 8) + 32))(v22, v9, v19);
}

uint64_t static ViewModifierBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v12 = type metadata accessor for ConditionalViewModifier.Storage();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  (*(*(a2 - 8) + 16))(&v17 - v13, a1, a2);
  swift_storeEnumTagMultiPayload();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v15 = type metadata accessor for ConditionalViewModifier.Storage();
  return (*(*(v15 - 8) + 32))(a6, v14, v15);
}

uint64_t static ViewModifierBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v12 = type metadata accessor for ConditionalViewModifier.Storage();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  (*(*(a3 - 8) + 16))(&v17 - v13, a1, a3);
  swift_storeEnumTagMultiPayload();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v15 = type metadata accessor for ConditionalViewModifier.Storage();
  return (*(*(v15 - 8) + 32))(a6, v14, v15);
}

uint64_t sub_1E6745CEC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1E6745E14(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1E6745FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a6;
  v12[3] = a7;
  v8 = type metadata accessor for CanvasLayout();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  (*(v9 + 16))(v12 - v10, a1, v8);
  sub_1E68B2BC0();
  return (*(v9 + 8))(a1, v8);
}

uint64_t sub_1E67460F0()
{
  type metadata accessor for CanvasLayout();
  sub_1E68B2C00();
  return sub_1E68B2BD0();
}

uint64_t CanvasLayoutReader.init(layoutProvider:content:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v33 = a2;
  v34 = a3;
  v32 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v35 = v18;
  *(&v35 + 1) = v19;
  *&v36 = v20;
  *(&v36 + 1) = a10;
  v21 = type metadata accessor for CanvasLayout();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v31 - v22;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8);
  swift_storeEnumTagMultiPayload();
  v35 = 0u;
  v36 = 0u;
  v24 = sub_1E6746358(a5, a6, a8);
  (*(a10 + 32))(a6, a10);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(&v35, 2, v24, v17, a6, v23, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0);
  *&v35 = a4;
  *(&v35 + 1) = a5;
  *&v36 = a6;
  *(&v36 + 1) = a7;
  v37 = a8;
  v38 = a10;
  v25 = type metadata accessor for CanvasLayoutReader();
  sub_1E6745FEC(v23, v26, a5, a6, v27, a8, a10);
  result = sub_1E6739D3C(v32, a9 + *(v25 + 72));
  v29 = (a9 + *(v25 + 76));
  v30 = v34;
  *v29 = v33;
  v29[1] = v30;
  return result;
}

uint64_t sub_1E6746358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getTupleTypeMetadata2();
  v5 = sub_1E68B3350();
  v6 = sub_1E678307C(v5, a1, &type metadata for CanvasSectionDensityFactor, *(a3 + 24));

  return v6;
}

uint64_t CanvasLayoutReader.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v71 = *(a1 - 8);
  v79 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v80 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E68B1DE0();
  v58 = v5;
  v72 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 48);
  v81 = *(a1 + 24);
  v82 = v7;
  v8 = a1;
  v93 = v7;
  v92 = v81;
  v59 = type metadata accessor for CanvasLayout();
  v9 = *(v59 - 8);
  v10 = MEMORY[0x1EEE9AC00](v59);
  v12 = &v53 - v11;
  v75 = *(a1 + 16);
  v63 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096EB0);
  v15 = sub_1E68B1E40();
  v68 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v53 - v16;
  v17 = *(a1 + 40);
  v18 = sub_1E673F530(&qword_1ED096EB8, &qword_1ED096EB0);
  v90 = v17;
  v91 = v18;
  v70 = MEMORY[0x1E697E858];
  v56 = v15;
  WitnessTable = swift_getWitnessTable();
  v57 = WitnessTable;
  v77 = sub_1E6748944(&qword_1EE2EA840, MEMORY[0x1E697E730]);
  *&v92 = v15;
  *(&v92 + 1) = v5;
  *&v93 = WitnessTable;
  *(&v93 + 1) = v77;
  v64 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v76 = &v53 - v20;
  v65 = sub_1E68B1E40();
  v67 = *(v65 - 8);
  v21 = MEMORY[0x1EEE9AC00](v65);
  v60 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v62 = &v53 - v23;
  v24 = v8;
  v25 = *(v2 + *(v8 + 76));
  sub_1E67460F0();
  v25(v12);
  (*(v9 + 8))(v12, v59);
  v26 = v75;
  v83 = v75;
  v84 = v81;
  v74 = v17;
  v85 = v17;
  v86 = v82;
  v87 = v2;
  sub_1E68B2E80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EC0);
  sub_1E673F530(&qword_1ED096EC8, &qword_1ED096EC0);
  sub_1E68B2740();
  v27 = v26;
  (*(v63 + 8))(v14, v26);
  v28 = v69;
  v55 = v2;
  sub_1E677A200(v69);
  v29 = v71;
  v63 = *(v71 + 16);
  v30 = v80;
  v54 = v24;
  (v63)(v80, v2, v24);
  v31 = (*(v29 + 80) + 64) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v27;
  v33 = v82;
  *(v32 + 24) = v81;
  *(v32 + 40) = v74;
  *(v32 + 48) = v33;
  v71 = *(v29 + 32);
  (v71)(v32 + v31, v30, v24);
  v34 = v56;
  v35 = v58;
  v36 = v57;
  v37 = v78;
  sub_1E68B2AB0();

  (*(v72 + 8))(v28, v35);
  v38 = v37;
  v39 = v34;
  (*(v68 + 8))(v38, v34);
  v40 = v80;
  v41 = v54;
  (v63)(v80, v55, v54);
  v42 = swift_allocObject();
  *(v42 + 16) = v75;
  v43 = v82;
  *(v42 + 24) = v81;
  *(v42 + 40) = v74;
  *(v42 + 48) = v43;
  (v71)(v42 + v31, v40, v41);
  *&v92 = v39;
  *(&v92 + 1) = v35;
  *&v93 = v36;
  *(&v93 + 1) = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v60;
  v46 = OpaqueTypeMetadata2;
  v47 = v76;
  sub_1E68B2AA0();

  (*(v66 + 8))(v47, v46);
  v88 = OpaqueTypeConformance2;
  v89 = MEMORY[0x1E69805D0];
  v48 = v65;
  v49 = swift_getWitnessTable();
  v50 = v62;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v45, v48, v49);
  v51 = *(v67 + 8);
  v51(v45, v48);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v50, v48, v49);
  return (v51)(v50, v48);
}

uint64_t sub_1E6746D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v13 = type metadata accessor for CanvasLayoutReader();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  (*(v14 + 16))(&v22 - v15, a1, v13);
  v17 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = a3;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  v19 = v24;
  *(v18 + 6) = v23;
  *(v18 + 7) = v19;
  result = (*(v14 + 32))(&v18[v17], v16, v13);
  v21 = v25;
  *v25 = sub_1E6748430;
  v21[1] = v18;
  return result;
}

uint64_t sub_1E6746ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)()@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a8;
  v44 = a2;
  v49 = a6;
  v50 = a7;
  v47 = a4;
  v48 = a5;
  v45 = a1;
  v46 = a3;
  v42 = a9;
  v40 = sub_1E68B1C90();
  v15 = *(v40 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v38[0] = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  v58 = a8;
  v17 = type metadata accessor for CanvasLayoutReader();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v38 - v20;
  v39 = sub_1E68B2B20();
  v41 = *(v18 + 16);
  v41(v21, v44, v17);
  v22 = v40;
  (*(v15 + 16))(v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v45, v40);
  v23 = *(v18 + 80);
  v24 = (v23 + 64) & ~v23;
  v38[2] = v24 + v19;
  v38[1] = v23 | 7;
  v25 = (v24 + v19 + *(v15 + 80)) & ~*(v15 + 80);
  v26 = swift_allocObject();
  v27 = v47;
  *(v26 + 2) = v46;
  *(v26 + 3) = v27;
  v28 = v49;
  *(v26 + 4) = v48;
  *(v26 + 5) = v28;
  v29 = v43;
  *(v26 + 6) = v50;
  *(v26 + 7) = v29;
  v30 = *(v18 + 32);
  v30(&v26[v24], v21, v17);
  (*(v15 + 32))(&v26[v25], v38[0], v22);
  v53 = v39;
  v54 = sub_1E6748504;
  v55 = v26;
  v56 = 0;
  v57 = 0;
  sub_1E68B1C60();
  v51 = v31;
  v52 = v32;
  v41(v21, v44, v17);
  v33 = swift_allocObject();
  v34 = v47;
  *(v33 + 2) = v46;
  *(v33 + 3) = v34;
  v35 = v49;
  *(v33 + 4) = v48;
  *(v33 + 5) = v35;
  v36 = v43;
  *(v33 + 6) = v50;
  *(v33 + 7) = v36;
  v30(&v33[v24], v21, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096ED0);
  type metadata accessor for CGSize(0);
  sub_1E67488C0();
  sub_1E6748944(&qword_1EE2EA440, type metadata accessor for CGSize);
  sub_1E68B2AB0();
}

uint64_t sub_1E674727C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[0] = a1;
  v29[1] = a2;
  v30 = a4;
  v31 = a5;
  v32 = a7;
  v33 = a8;
  v14 = type metadata accessor for CanvasLayout();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v29 - v19;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v21 = type metadata accessor for CanvasLayoutReader();
  v22 = (v29[0] + *(v21 + 72));
  v23 = v22[3];
  v24 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_1E67460F0();
  sub_1E68B1C60();
  (*(v24 + 40))(v18, v23, v24, 0.0, 0.0, v25, v26);
  v27 = *(v15 + 8);
  v27(v18, v14);
  sub_1E6748334(v20, v21);
  return (v27)(v20, v14);
}

uint64_t sub_1E6747444(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a7;
  v30 = a3;
  v31 = a5;
  v32 = a6;
  v33 = a8;
  v34 = a9;
  v14 = type metadata accessor for CanvasLayout();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  v21 = *a2;
  v22 = a2[1];
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = v29;
  v35 = a8;
  v36 = a9;
  v23 = type metadata accessor for CanvasLayoutReader();
  v24 = (v30 + *(v23 + 72));
  v25 = v24[3];
  v26 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_1E67460F0();
  (*(v26 + 40))(v18, v25, v26, 0.0, 0.0, v21, v22);
  v27 = *(v15 + 8);
  v27(v18, v14);
  sub_1E6748334(v20, v23);
  return (v27)(v20, v14);
}

uint64_t sub_1E6747614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a7;
  v35 = a2;
  v36 = a3;
  v34 = sub_1E68B1DE0();
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a5;
  v38 = a6;
  v39 = a8;
  v40 = a9;
  v33 = type metadata accessor for CanvasLayout();
  v16 = *(v33 - 8);
  v17 = MEMORY[0x1EEE9AC00](v33);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = v32;
  v41 = a8;
  v42 = a9;
  v22 = type metadata accessor for CanvasLayoutReader();
  v23 = (v36 + *(v22 + 72));
  v24 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1E67460F0();
  (*(v13 + 16))(v15, v35, v34);
  v26 = sub_1E68390C4(v15);
  (*(v25 + 48))(v19, v26, v24, v25);
  v27 = *(v16 + 8);
  v28 = v19;
  v29 = v33;
  v27(v28, v33);
  sub_1E6748334(v21, v22);
  return (v27)(v21, v29);
}

uint64_t sub_1E6747864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a5;
  v13 = sub_1E68B1DE0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a3;
  v33 = a4;
  v34 = a6;
  v35 = a7;
  v31 = type metadata accessor for CanvasLayout();
  v16 = *(v31 - 8);
  v17 = MEMORY[0x1EEE9AC00](v31);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = v30;
  v36 = a6;
  v37 = a7;
  v22 = type metadata accessor for CanvasLayoutReader();
  v23 = (a1 + *(v22 + 72));
  v24 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1E67460F0();
  sub_1E677A200(v15);
  v26 = sub_1E68390C4(v15);
  (*(v25 + 48))(v19, v26, v24, v25);
  v27 = *(v16 + 8);
  v28 = v31;
  v27(v19, v31);
  sub_1E6748334(v21, v22);
  return (v27)(v21, v28);
}

uint64_t sub_1E6747A98(uint64_t a1)
{
  v2 = sub_1E68B1DE0();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E68B1FB0();
}

uint64_t sub_1E6747B8C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for CanvasLayoutReader() - 8);
  return sub_1E6747614(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E6747C54()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(type metadata accessor for CanvasLayoutReader() - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_1E6747864(v8, v1, v2, v3, v4, v5, v6);
}

void sub_1E6747D64()
{
  sub_1E674828C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CanvasLayout();
    sub_1E68B2C00();
    if (v1 <= 0x3F)
    {
      swift_getExtendedExistentialTypeMetadata();
      sub_1E67482E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E6747E50(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1E68B1DE0() - 8) + 64);
  v7 = *(*(a3 + 32) - 8);
  if (v6 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v7 + 84);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 | 7;
  v14 = v8 + (v10 | 7) + 1;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v15 = (((v14 & ~v13) + ((v11 + ((v10 + 96) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  v24 = ((((((((a1 + v14) & ~v13) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v26 = *(*(*(a3 + 32) - 8) + 48);

    return v26((v24 + v10 + 8) & ~v10);
  }

  else
  {
    v25 = *v24;
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }
}

void sub_1E674804C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1E68B1DE0() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 32) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v9 + (v12 | 7) + 1;
  v15 = (((v14 & ~(v12 | 7)) + ((*(v10 + 64) + ((v12 + 96) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((((v14 & ~(v12 | 7)) + ((*(v10 + 64) + ((v12 + 96) & ~v12) + 7) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v13 + 1;
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

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
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

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v22 = ((((((((a1 + v14) & ~(v12 | 7)) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) != 0)
      {
        v24 = *(v10 + 56);

        v24((v22 + v12 + 8) & ~v12, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v23 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v23 = (a2 - 1);
        }

        *v22 = v23;
      }

      return;
    }
  }

  if ((((v14 & ~(v12 | 7)) + ((*(v10 + 64) + ((v12 + 96) & ~v12) + 7) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if ((((v14 & ~(v12 | 7)) + ((*(v10 + 64) + ((v12 + 96) & ~v12) + 7) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
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

void sub_1E674828C()
{
  if (!qword_1EE2EA890)
  {
    sub_1E68B1DE0();
    v0 = sub_1E68B1BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EA890);
    }
  }
}

unint64_t sub_1E67482E4()
{
  result = qword_1EE2EA410;
  if (!qword_1EE2EA410)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE2EA410);
  }

  return result;
}

uint64_t sub_1E6748334(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v8[0] = *(a2 + 24);
  v8[1] = v3;
  v4 = type metadata accessor for CanvasLayout();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(v8 - v5, a1, v4);
  sub_1E68B2C00();
  return sub_1E68B2BE0();
}

uint64_t sub_1E6748430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for CanvasLayoutReader() - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_1E6746ECC(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t sub_1E6748504()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(type metadata accessor for CanvasLayoutReader() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1E68B1C90() - 8);
  v11 = v0 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1E674727C(v0 + v8, v11, v1, v2, v3, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  v8 = *(v0 + 24);
  v1 = type metadata accessor for CanvasLayoutReader();
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1E68B1DE0();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 68);

  v6 = type metadata accessor for CanvasLayout();
  (*(*(*(&v8 + 1) - 8) + 8))(v5 + *(v6 + 72));
  sub_1E68B2C00();

  __swift_destroy_boxed_opaque_existential_1(v3 + *(v1 + 72));

  return swift_deallocObject();
}