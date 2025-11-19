uint64_t storeEnumTagSinglePayload for LSKKey(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for LSKKey(uint64_t a1, int a2)
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

uint64_t _s14LocalStatusKit18OSLogDateFormatterV5StyleO0E22WithTimeZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOs0K3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_256148754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LSKDestinationDevice.Delivery(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_256148800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LSKDestinationDevice.Delivery(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2561488A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25614891C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t _s14LocalStatusKit0aB10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOs0F3KeyAAsAIP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    result = 0x73657461647075;
  }

  else
  {
    result = 0x536C616974696E69;
  }

  *v0;
  return result;
}

uint64_t sub_256148AF8()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_256148B80()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_256148BB8()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_256148C38()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance OSLogDateFormatter.Style.CodingKeys()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 1701669236;
  v4 = 0x69546F4E656D6974;
  if (v1 != 3)
  {
    v4 = 1819047270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OSLogDateFormatter.Style.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized OSLogDateFormatter.Style.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSLogDateFormatter.Style.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSLogDateFormatter.Style.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSLogDateFormatter.Style.DateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSLogDateFormatter.Style.DateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSLogDateFormatter.Style.FullCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSLogDateFormatter.Style.FullCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSLogDateFormatter.Style.TimeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSLogDateFormatter.Style.TimeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSLogDateFormatter.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14FullCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14FullCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO06TimeNoK14ZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO06TimeNoK14ZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14TimeCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14TimeCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H22WithTimeZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H22WithTimeZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v49 = *(v16 - 8);
  v17 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v20 = *(v52 - 8);
  v21 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  lazy protocol witness table accessor for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys();
      v38 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys();
      v38 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys();
      v29 = v40;
      v30 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys();
      v29 = v43;
      v30 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      lazy protocol witness table accessor for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys();
      v29 = v46;
      v30 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys);
  }

  return result;
}

uint64_t OSLogDateFormatter.Style.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14FullCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14FullCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v48 = *(v50 - 8);
  v3 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v54 = &v39[-v4];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO06TimeNoK14ZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO06TimeNoK14ZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v47 = *(v49 - 8);
  v5 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v51 = &v39[-v6];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14TimeCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14TimeCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v44 = *(v46 - 8);
  v7 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v53 = &v39[-v8];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v43 = *(v45 - 8);
  v9 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v39[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H22WithTimeZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H22WithTimeZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v42 = *(v12 - 8);
  v13 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v39[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = &v39[-v19];
  v22 = a1[3];
  v21 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys();
  v23 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    v41 = v12;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = KeyedDecodingContainer.allKeys.getter();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 5) : (v30 = 1), v30))
    {
      v31 = type metadata accessor for DecodingError();
      swift_allocError();
      v33 = v32;
      v34 = v16;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v33 = &type metadata for OSLogDateFormatter.Style;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v34);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = *(v27 + 32);
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v43 + 8))(v11, v45);
        }

        else
        {
          v57 = 0;
          lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v42 + 8))(v15, v41);
        }

        (*(v55 + 8))(v20, v16);
      }

      else
      {
        v45 = v27;
        v37 = v55;
        if (v29 == 2)
        {
          v59 = 2;
          lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v44 + 8))(v24, v46);
          (*(v37 + 8))(v26, v16);
        }

        else
        {
          if (v29 == 3)
          {
            v60 = 3;
            lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys();
            v38 = v51;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v47 + 8))(v38, v49);
          }

          else
          {
            v61 = 4;
            lazy protocol witness table accessor for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v48 + 8))(v25, v50);
          }

          (*(v37 + 8))(v26, v16);
        }
      }

      swift_unknownObjectRelease();
      *v52 = v40;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL specialized Collection<>.popFirst()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
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

id OSLogDateFormatter.dateFormatter.getter()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  if (v1 <= 1)
  {
    v3 = 0x2D4D4D2D79797979;
    if (v1)
    {
      v4 = 0xEA00000000006464;
    }

    else
    {
      v4 = 0xED00005A5A5A6464;
    }
  }

  else if (v1 == 2)
  {
    v3 = 0x73733A6D6D3A4848;
    v4 = 0xEF5A5A5A5353532ELL;
  }

  else if (v1 == 3)
  {
    v3 = 0x73733A6D6D3A4848;
    v4 = 0xEC0000005353532ELL;
  }

  else
  {
    v4 = 0x80000002561670D0;
    v3 = 0xD00000000000001ALL;
  }

  v5 = MEMORY[0x259C5B6E0](v3, v4);
  [v2 setDateFormat_];

  return v2;
}

uint64_t OSLogDateFormatter.format(_:)()
{
  v6 = *v0;
  v1 = OSLogDateFormatter.dateFormatter.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v3 = [v1 stringFromDate_];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

void OSLogDateFormatter.parse(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  LOBYTE(v16) = *v2;
  v6 = OSLogDateFormatter.dateFormatter.getter();
  v7 = MEMORY[0x259C5B6E0](a1, a2);
  v8 = [v6 dateFromString_];

  if (v8)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0xEF303038302D3232;
    v10 = 0x8000000256167090;
    v11 = 0xEC0000003530332ELL;
    v12 = 0x37333A39303A3631;
    if (v5 != 3)
    {
      v12 = 0xD00000000000001CLL;
      v11 = 0x8000000256167020;
    }

    if (v5 == 2)
    {
      v12 = 0xD000000000000011;
    }

    else
    {
      v10 = v11;
    }

    if (v5)
    {
      v9 = 0xEA00000000003232;
    }

    if (v5 <= 1)
    {
      v13 = 0x2D31302D32323032;
    }

    else
    {
      v13 = v12;
    }

    if (v5 <= 1)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    _StringGuts.grow(_:)(67);
    MEMORY[0x259C5B730](0xD00000000000001BLL, 0x8000000256167040);
    MEMORY[0x259C5B730](a1, a2);
    MEMORY[0x259C5B730](0xD000000000000023, 0x8000000256167060);
    MEMORY[0x259C5B730](v13, v14);

    MEMORY[0x259C5B730](96, 0xE100000000000000);
    lazy protocol witness table accessor for type LSKError and conformance LSKError();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0xE000000000000000;
    *(v15 + 16) = 1;
    swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type LSKError and conformance LSKError()
{
  result = lazy protocol witness table cache variable for type LSKError and conformance LSKError;
  if (!lazy protocol witness table cache variable for type LSKError and conformance LSKError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKError and conformance LSKError);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance OSLogDateFormatter.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OSLogDateFormatter.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OSLogDateFormatter.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSLogDateFormatter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSLogDateFormatter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSLogDateFormatter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  lazy protocol witness table accessor for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style);
  }

  return result;
}

Swift::Int OSLogDateFormatter.Style.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](v1);
  return Hasher._finalize()();
}

uint64_t OSLogDateFormatter.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void protocol witness for FormatStyle.format(_:) in conformance OSLogDateFormatter(uint64_t *a1@<X8>)
{
  v9 = *v1;
  v3 = OSLogDateFormatter.dateFormatter.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v5 = [v3 stringFromDate_];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OSLogDateFormatter.Style.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](v1);
  return Hasher._finalize()();
}

uint64_t TinyDateRangeFormatter.format(_:)()
{
  v0 = type metadata accessor for Calendar();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = type metadata accessor for Date.ComponentsFormatStyle.Style();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for Date.ComponentsFormatStyle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR) + 36);
  Date.timeIntervalSince(_:)();
  if (v12 >= 1.0)
  {
    static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMR);
    v14 = *(type metadata accessor for Date.ComponentsFormatStyle.Field() - 8);
    v15 = *(v14 + 72);
    v16 = *(v14 + 80);
    v20 = v6;
    v21 = v7;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_256163CF0;
    MEMORY[0x259C5B520]();
    static Date.ComponentsFormatStyle.Field.minute.getter();
    static Date.ComponentsFormatStyle.Field.second.getter();
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0g5Tf4g_n(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    static Locale.autoupdatingCurrent.getter();
    static Calendar.autoupdatingCurrent.getter();
    Date.ComponentsFormatStyle.init(style:locale:calendar:fields:)();
    lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle, MEMORY[0x277CC9510]);
    v18 = v20;
    Range<>.formatted<A>(_:)();
    (*(v21 + 8))(v10, v18);
    v24 = 32;
    v25 = 0xE100000000000000;
    v22 = 0;
    v23 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    return v19;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    Date.timeIntervalSince(_:)();
    Double.write<A>(to:)();
    MEMORY[0x259C5B730](29549, 0xE200000000000000);
    return v26;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TinyDateRangeFormatter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TinyDateRangeFormatter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TinyDateRangeFormatter.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit22TinyDateRangeFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit22TinyDateRangeFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance TinyDateRangeFormatter@<X0>(uint64_t *a1@<X8>)
{
  result = TinyDateRangeFormatter.format(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance TinyDateRangeFormatter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit22TinyDateRangeFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit22TinyDateRangeFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IDSDeviceType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IDSDeviceType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](v1);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance IDSDeviceType@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t specialized OSLogDateFormatter.Style.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002561670B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69546F4E656D6974 && a2 == 0xEE00656E6F5A656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMd, &_ss11_SetStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMR);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x277CC94F0]);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x277CC94F0]);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter and conformance OSLogDateFormatter()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter()
{
  result = lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter;
  if (!lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter;
  if (!lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter;
  if (!lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter;
  if (!lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TinyDateRangeFormatter(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TinyDateRangeFormatter(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for OSLogDateFormatter(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OSLogDateFormatter(uint64_t result, unsigned int a2, unsigned int a3)
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

void type metadata accessor for IDSDeviceType()
{
  if (!lazy cache variable for type metadata for IDSDeviceType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for IDSDeviceType);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for localStatus()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.localStatus);
  __swift_project_value_buffer(v0, static Logger.localStatus);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.localStatus.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for localStatus != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.localStatus);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LSKDestinationDevice.Delivery.CodingKeys()
{
  v1 = 0x676E69646E6570;
  v2 = 0x64656C696166;
  if (*v0 != 2)
  {
    v2 = 0x46676E697373696DLL;
  }

  if (*v0)
  {
    v1 = 0x65726576696C6564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKDestinationDevice.Delivery.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized LSKDestinationDevice.Delivery.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKDestinationDevice.Delivery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKDestinationDevice.Delivery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance LSKDestinationDevice.Delivery.FailedCodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKDestinationDevice.Delivery.FailedCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x8000000256167180 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002561671A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKDestinationDevice.Delivery.FailedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKDestinationDevice.Delivery.FailedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKDestinationDevice.Delivery.PendingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKDestinationDevice.Delivery.PendingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LSKDestinationDevice.Delivery.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO24MissingFromIDSCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO24MissingFromIDSCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO16FailedCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO16FailedCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v42 - v7;
  v8 = type metadata accessor for Date();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v53 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO19DeliveredCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO19DeliveredCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO17PendingCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO17PendingCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v43 = *(v15 - 8);
  v16 = *(v43 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v55 = *(v23 - 8);
  v56 = v23;
  v24 = *(v55 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v42 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of LSKDestinationDevice.Delivery(v54, v22, type metadata accessor for LSKDestinationDevice.Delivery);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
  v29 = (*(*(v28 - 8) + 48))(v22, 3, v28);
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v59 = 1;
      lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys();
      v40 = v56;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v44 + 8))(v14, v11);
    }

    else
    {
      v63 = 3;
      lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys();
      v41 = v45;
      v40 = v56;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v46 + 8))(v41, v47);
    }

    return (*(v55 + 8))(v26, v40);
  }

  if (v29)
  {
    v58 = 0;
    lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys();
    v40 = v56;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v43 + 8))(v18, v15);
    return (*(v55 + 8))(v26, v40);
  }

  v30 = &v22[*(v28 + 48)];
  v31 = v30[1];
  v54 = *v30;
  v33 = v49;
  v32 = v50;
  v34 = v53;
  (*(v49 + 32))(v53, v22, v50);
  v62 = 2;
  lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys();
  v35 = v48;
  v36 = v56;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v61 = 0;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v37 = v52;
  v38 = v57;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v38)
  {

    (*(v51 + 8))(v35, v37);
    (*(v33 + 8))(v34, v32);
  }

  else
  {
    v60 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v51 + 8))(v35, v37);
    (*(v33 + 8))(v53, v32);
  }

  return (*(v55 + 8))(v26, v36);
}

uint64_t LSKDestinationDevice.Delivery.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO24MissingFromIDSCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO24MissingFromIDSCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO16FailedCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO16FailedCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v7 = *(v6 - 8);
  v68 = v6;
  v69 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v70 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO19DeliveredCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO19DeliveredCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v11 = *(v10 - 8);
  v64 = v10;
  v65 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v73 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO17PendingCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO17PendingCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v15 = *(v14 - 8);
  v62 = v14;
  v63 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v72 = *(v19 - 8);
  v20 = *(v72 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v60 - v21;
  v23 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v60 - v28;
  v31 = a1[3];
  v30 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys();
  v32 = v75;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v32)
  {
    v33 = v23;
    v61 = v27;
    v75 = v29;
    v35 = v72;
    v34 = v73;
    v36 = v74;
    v37 = KeyedDecodingContainer.allKeys.getter();
    v38 = (2 * *(v37 + 16)) | 1;
    v77 = v37;
    v78 = v37 + 32;
    v79 = 0;
    v80 = v38;
    v39 = specialized Collection<>.popFirst()();
    if (v39 == 4 || v79 != v80 >> 1)
    {
      v42 = v19;
      v43 = type metadata accessor for DecodingError();
      swift_allocError();
      v44 = v22;
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v46 = v33;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v43 - 8) + 104))(v46, *MEMORY[0x277D84160], v43);
      swift_willThrow();
      (*(v35 + 8))(v44, v42);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v39 > 1u)
      {
        if (v39 == 2)
        {
          v81 = 2;
          lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys();
          v49 = v70;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v73 = v19;
          type metadata accessor for Date();
          v81 = 0;
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          v50 = v61;
          v51 = v68;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v81 = 1;
          v71 = KeyedDecodingContainer.decode(_:forKey:)();
          v67 = v55;
          v56 = v69;
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
          v58 = (v50 + *(v57 + 48));
          (*(v56 + 8))(v49, v51);
          (*(v35 + 8))(v22, v73);
          swift_unknownObjectRelease();
          v59 = v67;
          *v58 = v71;
          v58[1] = v59;
          (*(*(v57 - 8) + 56))(v50, 0, 3, v57);
          v41 = v75;
          outlined init with take of LSKDestinationDevice.Delivery(v50, v75);
          v36 = v74;
        }

        else
        {
          v81 = 3;
          lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys();
          v52 = v71;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v66 + 8))(v52, v67);
          (*(v35 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
          v41 = v75;
          (*(*(v54 - 8) + 56))(v75, 3, 3, v54);
        }
      }

      else if (v39)
      {
        v81 = 1;
        lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v65 + 8))(v34, v64);
        (*(v35 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
        v41 = v75;
        (*(*(v53 - 8) + 56))(v75, 2, 3, v53);
      }

      else
      {
        v81 = 0;
        lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v63 + 8))(v18, v62);
        (*(v35 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
        v41 = v75;
        (*(*(v40 - 8) + 56))(v75, 1, 3, v40);
      }

      outlined init with take of LSKDestinationDevice.Delivery(v41, v36);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t LSKDestinationDevice.idsIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LSKDestinationDevice.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LSKDestinationDevice.model.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t LSKDestinationDevice.init(idsIdentifier:name:model:delivery:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v9 = a8 + *(type metadata accessor for LSKDestinationDevice(0) + 28);

  return outlined init with take of LSKDestinationDevice.Delivery(a7, v9);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LSKDestinationDevice.CodingKeys()
{
  v1 = 0x746E656449736469;
  v2 = 0x6C65646F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x79726576696C6564;
  }

  if (*v0)
  {
    v1 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKDestinationDevice.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized LSKDestinationDevice.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKDestinationDevice.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKDestinationDevice.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LSKDestinationDevice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v19[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v19[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(type metadata accessor for LSKDestinationDevice(0) + 28);
    v19[12] = 3;
    type metadata accessor for LSKDestinationDevice.Delivery(0);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery and conformance LSKDestinationDevice.Delivery, type metadata accessor for LSKDestinationDevice.Delivery);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LSKDestinationDevice.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for LSKDestinationDevice(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys();
  v29 = v10;
  v16 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = a1;
  v30 = v3;
  v18 = v6;
  v20 = v27;
  v19 = v28;
  v34 = 0;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v21;
  v33 = 1;
  v14[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v14[3] = v22;
  v32 = 2;
  v25 = 0;
  v14[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v14[5] = v23;
  v31 = 3;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery and conformance LSKDestinationDevice.Delivery, type metadata accessor for LSKDestinationDevice.Delivery);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 8))(v29, v19);
  outlined init with take of LSKDestinationDevice.Delivery(v18, v14 + *(v11 + 28));
  outlined init with copy of LSKDestinationDevice.Delivery(v14, v26, type metadata accessor for LSKDestinationDevice);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return outlined destroy of LSKDestinationDevice(v14, type metadata accessor for LSKDestinationDevice);
}

uint64_t LSKDestinationDevice.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(20);
  v2 = v0 + *(type metadata accessor for LSKDestinationDevice(0) + 28);
  v3 = LSKDestinationDevice.Delivery.description.getter();

  v18 = v3;
  MEMORY[0x259C5B730](8250, 0xE200000000000000);
  v4 = *v1;
  v5 = v1[1];

  v7 = specialized Collection.prefix(_:)(8, v4, v5, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = MEMORY[0x259C5B700](v7, v9, v11, v13);
  v16 = v15;

  MEMORY[0x259C5B730](v14, v16);

  MEMORY[0x259C5B730](0x22206D4E20, 0xE500000000000000);
  MEMORY[0x259C5B730](v1[2], v1[3]);
  MEMORY[0x259C5B730](0x20644D2022, 0xE500000000000000);
  MEMORY[0x259C5B730](v1[4], v1[5]);
  return v18;
}

uint64_t LSKDestinationDevice.Delivery.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of LSKDestinationDevice.Delivery(v1, v10, type metadata accessor for LSKDestinationDevice.Delivery);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
  v12 = (*(*(v11 - 8) + 48))(v10, 3, v11);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      return 0x65726576696C6544;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else if (v12)
  {
    return 0x676E69646E6550;
  }

  else
  {
    v13 = &v10[*(v11 + 48)];
    v14 = *v13;
    v15 = v13[1];
    (*(v3 + 32))(v6, v10, v2);
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v21 = 0x5B64656C696146;
    v22 = 0xE700000000000000;
    MEMORY[0x259C5B730](v14, v15);

    MEMORY[0x259C5B730](0xD000000000000010, 0x8000000256167110);
    v18[15] = 4;
    lazy protocol witness table accessor for type OSLogDateFormatter and conformance OSLogDateFormatter();
    Date.formatted<A>(_:)();
    MEMORY[0x259C5B730](v19, v20);

    MEMORY[0x259C5B730](93, 0xE100000000000000);
    v16 = v21;
    (*(v3 + 8))(v6, v2);
    return v16;
  }
}

uint64_t specialized static LSKDestinationDevice.Delivery.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit20LSKDestinationDeviceV8DeliveryO_AEtMd, &_s14LocalStatusKit20LSKDestinationDeviceV8DeliveryO_AEtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v34 - v16;
  v18 = &v34 + *(v15 + 56) - v16;
  outlined init with copy of LSKDestinationDevice.Delivery(a1, &v34 - v16, type metadata accessor for LSKDestinationDevice.Delivery);
  outlined init with copy of LSKDestinationDevice.Delivery(a2, v18, type metadata accessor for LSKDestinationDevice.Delivery);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 3, v19);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if (v20(v18, 3, v19) != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v20(v18, 3, v19) != 3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v21)
  {
    if (v20(v18, 3, v19) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v35 = v5;
  outlined init with copy of LSKDestinationDevice.Delivery(v17, v12, type metadata accessor for LSKDestinationDevice.Delivery);
  v22 = *(v19 + 48);
  v23 = *&v12[v22 + 8];
  v34 = *&v12[v22];
  if (!v20(v18, 3, v19))
  {
    v25 = v23;
    v26 = &v18[v22];
    v27 = *&v18[v22];
    v28 = *(v26 + 1);
    v29 = v35;
    (*(v35 + 32))(v8, v18, v4);
    v30 = static Date.== infix(_:_:)();
    v31 = *(v29 + 8);
    v31(v12, v4);
    if ((v30 & 1) == 0)
    {
      v31(v8, v4);

LABEL_22:
      outlined destroy of LSKDestinationDevice(v17, type metadata accessor for LSKDestinationDevice.Delivery);
      return 0;
    }

    if (v34 == v27 && v25 == v28)
    {

      v31(v8, v4);
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v31(v8, v4);
      if ((v33 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

LABEL_11:
    outlined destroy of LSKDestinationDevice(v17, type metadata accessor for LSKDestinationDevice.Delivery);
    return 1;
  }

  (*(v35 + 8))(v12, v4);
LABEL_12:
  outlined destroy of (LSKDestinationDevice.Delivery, LSKDestinationDevice.Delivery)(v17);
  return 0;
}

unint64_t lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys);
  }

  return result;
}

uint64_t outlined init with take of LSKDestinationDevice.Delivery(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for LSKDestinationDevice.Delivery(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized static LSKDestinationDevice.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for LSKDestinationDevice(0) + 28);

  return specialized static LSKDestinationDevice.Delivery.== infix(_:_:)(a1 + v6, a2 + v6);
}

unint64_t lazy protocol witness table accessor for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of LSKDestinationDevice.Delivery(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized LSKDestinationDevice.Delivery.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726576696C6564 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x46676E697373696DLL && a2 == 0xEE005344496D6F72)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized LSKDestinationDevice.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656449736469 && a2 == 0xED00007265696669;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79726576696C6564 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t type metadata completion function for LSKDestinationDevice()
{
  result = type metadata accessor for LSKDestinationDevice.Delivery(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for LSKDestinationDevice.Delivery()
{
  type metadata accessor for (earliestNextAttempt: Date, errorDescription: String)();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void type metadata accessor for (earliestNextAttempt: Date, errorDescription: String)()
{
  if (!lazy cache variable for type metadata for (earliestNextAttempt: Date, errorDescription: String))
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (earliestNextAttempt: Date, errorDescription: String));
    }
  }
}

uint64_t getEnumTagSinglePayload for LSKDestinationDevice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LSKDestinationDevice.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LSKDestinationDevice.Delivery.FailedCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LSKDestinationDevice.Delivery.FailedCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined destroy of (LSKDestinationDevice.Delivery, LSKDestinationDevice.Delivery)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit20LSKDestinationDeviceV8DeliveryO_AEtMd, &_s14LocalStatusKit20LSKDestinationDeviceV8DeliveryO_AEtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of LSKDestinationDevice(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t LSKDomain.id.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000019;
  v4 = 0xD000000000000014;
  if (v2 != 3)
  {
    v4 = 0xD00000000000002FLL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

LocalStatusKit::LSKDomain_optional __swiftcall LSKDomain.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LSKDomain.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LSKDomain@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = *v1;
  v4 = "com.apple.chrono";
  v5 = 0xD000000000000019;
  v6 = "com.apple.personalHotspot";
  v7 = 0xD000000000000014;
  result = 0xD00000000000002FLL;
  if (v3 != 3)
  {
    v7 = 0xD00000000000002FLL;
    v6 = "com.apple.regulatory";
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v9 = "kit.atDeskTesting";
  }

  else
  {
    v2 = 0xD000000000000021;
    v9 = "LSKTargetDeviceFlags";
  }

  if (*v1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
  return result;
}

unint64_t lazy protocol witness table accessor for type LSKDomain and conformance LSKDomain()
{
  result = lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain;
  if (!lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain;
  if (!lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain;
  if (!lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain;
  if (!lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LSKDomain()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LSKDomain()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSKDomain()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type [LSKDomain] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [LSKDomain] and conformance [A];
  if (!lazy protocol witness table cache variable for type [LSKDomain] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14LocalStatusKit9LSKDomainOGMd, &_sSay14LocalStatusKit9LSKDomainOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [LSKDomain] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t LSKError.errorDescription.getter()
{
  if (*(v0 + 16))
  {
    v1 = 0x7463657078656E75;
  }

  else
  {
    v1 = 543975790;
  }

  v3 = v1;
  MEMORY[0x259C5B730](*v0, *(v0 + 8));
  return v3;
}

uint64_t protocol witness for LocalizedError.errorDescription.getter in conformance LSKError()
{
  if (*(v0 + 16))
  {
    v1 = 0x7463657078656E75;
  }

  else
  {
    v1 = 543975790;
  }

  v3 = v1;
  MEMORY[0x259C5B730](*v0, *(v0 + 8));
  return v3;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LSKError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LSKError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "LSKTargetDeviceFlags";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD000000000000021;
    }

    if (v3)
    {
      v4 = "kit.atDeskTesting";
    }

    else
    {
      v4 = "LSKTargetDeviceFlags";
    }
  }

  else if (a1 == 2)
  {
    v4 = "com.apple.chrono";
    v5 = 0xD000000000000019;
  }

  else if (a1 == 3)
  {
    v4 = "com.apple.personalHotspot";
    v5 = 0xD000000000000014;
  }

  else
  {
    v4 = "com.apple.regulatory";
    v5 = 0xD00000000000002FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xD000000000000021;
    }

    if (a2)
    {
      v2 = "kit.atDeskTesting";
    }
  }

  else if (a2 == 2)
  {
    v2 = "com.apple.chrono";
    v6 = 0xD000000000000019;
  }

  else if (a2 == 3)
  {
    v2 = "com.apple.personalHotspot";
    v6 = 0xD000000000000014;
  }

  else
  {
    v2 = "com.apple.regulatory";
    v6 = 0xD00000000000002FLL;
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t LSKKey.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

_BYTE *LSKKey.init(domain:name:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static LSKKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((specialized == infix<A>(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t LSKKey.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int LSKKey.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t LSKKey.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance LSKKey<A>.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return static LSKKey.CodingKeys.== infix(_:_:)(*a1, *a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LSKKey<A>.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return LSKKey.CodingKeys.hashValue.getter(*v1);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LSKKey<A>.CodingKeys(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return LSKKey.CodingKeys.hash(into:)(a1, *v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSKKey<A>.CodingKeys(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  LSKKey.CodingKeys.hash(into:)(v8, *v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LSKKey<A>.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return LSKKey.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKKey<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = LSKKey.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance LSKKey<A>.CodingKeys@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = specialized LSKKey.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKKey<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKKey<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LSKKey.encode(to:)(void *a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  type metadata accessor for LSKKey.CodingKeys();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v18 = *(v7 - 8);
  v8 = *(v18 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  v11 = *v2;
  v12 = *(v2 + 1);
  v17[0] = *(v2 + 2);
  v17[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = v11;
  v21 = 0;
  lazy protocol witness table accessor for type LSKDomain and conformance LSKDomain();
  v14 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    return (*(v18 + 8))(v10, v7);
  }

  v16 = v18;
  v20 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v16 + 8))(v10, v7);
}

uint64_t LSKKey.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int LSKKey.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  Hasher.init(_seed:)();
  LSKKey.hash(into:)();
  return Hasher._finalize()();
}

uint64_t LSKKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  type metadata accessor for LSKKey.CodingKeys();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedDecodingContainer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v10 = v17;
    v19 = 0;
    lazy protocol witness table accessor for type LSKDomain and conformance LSKDomain();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v20;
    v18 = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    (*(v5 + 8))(v8, v4);
    *v10 = v11;
    *(v10 + 8) = v13;
    *(v10 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Decodable.init(from:) in conformance LSKKey<A>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  return LSKKey.init(from:)(a1, a3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSKKey<A>()
{
  Hasher.init(_seed:)();
  LSKKey.hash(into:)();
  return Hasher._finalize()();
}

uint64_t LSKKey.id.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = "LSKTargetDeviceFlags";
  v6 = "com.apple.chrono";
  v7 = 0xD000000000000019;
  v8 = "com.apple.personalHotspot";
  v9 = 0xD000000000000014;
  if (v2 != 3)
  {
    v9 = 0xD00000000000002FLL;
    v8 = "com.apple.regulatory";
  }

  if (v2 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (*v0)
  {
    v5 = "kit.atDeskTesting";
  }

  else
  {
    v1 = 0xD000000000000021;
  }

  if (*v0 <= 1u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 1u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  MEMORY[0x259C5B730](v10, v11 | 0x8000000000000000);

  MEMORY[0x259C5B730](45, 0xE100000000000000);
  MEMORY[0x259C5B730](v3, v4);
  return 0;
}

uint64_t protocol witness for Identifiable.id.getter in conformance LSKKey<A>@<X0>(uint64_t *a1@<X8>)
{
  result = LSKKey.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t LSKKey.description.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  return LSKKey.id.getter();
}

uint64_t type metadata instantiation function for LSKKey()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t LSKKey.eraseToData()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t one-time initialization function for log()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  v1 = __swift_project_value_buffer(v0, log);
  if (one-time initialization token for localStatus != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.localStatus);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t LSKLocalStatusClient.__allocating_init()()
{
  v0 = swift_allocObject();
  LSKLocalStatusClient.init()();
  return v0;
}

uint64_t LSKLocalStatusClient.init()()
{
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v12 = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v13);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v14;
  *(v14 + 16) = v8;
  type metadata accessor for SFXPCConnection();
  v10 = v8;
  *(v9 + 24) = SFXPCConnection.__allocating_init(machServiceName:queue:)();

  SFXPCConnection.activate()();

  return v9;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t LSKLocalStatusClient.publish<A>(_:for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 144) = v33;
  *(v9 + 152) = v8;
  *(v9 + 128) = a7;
  *(v9 + 136) = a8;
  *(v9 + 112) = a3;
  *(v9 + 120) = a6;
  *(v9 + 96) = a1;
  *(v9 + 104) = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
  *(v9 + 160) = v15;
  *(v9 + 64) = a6;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 88) = v33;
  v16 = type metadata accessor for LSKPublishedStatus();
  *(v9 + 168) = v16;
  *(v9 + 176) = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type SFXPCAsyncSequence<LSKPublishedStatus<Data>> and conformance SFXPCAsyncSequence<A>, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
  v17 = type metadata accessor for AsyncThrowingMapSequence();
  *(v9 + 184) = v17;
  v18 = *(v17 - 8);
  *(v9 + 192) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR) - 8) + 64) + 15;
  *(v9 + 216) = swift_task_alloc();
  v21 = *(v15 - 8);
  *(v9 + 224) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  v23 = *(v16 - 8);
  *(v9 + 248) = v23;
  v24 = *(v23 + 64) + 15;
  *(v9 + 256) = swift_task_alloc();
  v25 = type metadata accessor for PublishStatusInvocation.Response(0);
  *(v9 + 264) = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v27 = swift_task_alloc();
  *(v9 + 344) = *a4;
  v28 = *(a4 + 8);
  v29 = *(a4 + 16);
  *(v9 + 272) = v27;
  *(v9 + 280) = v28;
  v30 = *a5;
  *(v9 + 288) = v29;
  *(v9 + 296) = v30;

  return MEMORY[0x2822009F8](LSKLocalStatusClient.publish<A>(_:for:options:), 0, 0);
}

uint64_t LSKLocalStatusClient.publish<A>(_:for:options:)()
{
  v33 = v0;
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 304) = v7;
  *(v0 + 312) = v8;
  v9 = *(v0 + 288);
  v10 = *(v0 + 280);
  LOBYTE(v2) = *(v0 + 344);
  v25 = *(v0 + 152);
  v26 = *(v0 + 296);
  v12 = *(v0 + 128);
  v11 = *(v0 + 136);
  v13 = *(v0 + 120);
  v14 = v7;
  v15 = v8;

  v30 = v2;
  v31 = v10;
  v32 = v9;
  type metadata accessor for LSKKey();
  LSKKey.eraseToData()(v27);
  LOBYTE(v2) = v27[0];
  v16 = v28;
  v17 = v29;
  *(v0 + 320) = v29;
  v18 = *(v25 + 24);
  v19 = type metadata accessor for PublishStatusInvocation(0);
  *(v0 + 16) = v2;
  *(v0 + 24) = v16;
  *(v0 + 32) = v17;
  *(v0 + 40) = v14;
  *(v0 + 48) = v15;
  *(v0 + 56) = v26;
  outlined copy of Data._Representation(v14, v15);
  v20 = *(MEMORY[0x277D549F8] + 4);

  v21 = swift_task_alloc();
  *(v0 + 328) = v21;
  v22 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type PublishStatusInvocation and conformance PublishStatusInvocation, type metadata accessor for PublishStatusInvocation);
  *v21 = v0;
  v21[1] = LSKLocalStatusClient.publish<A>(_:for:options:);
  v23 = *(v0 + 272);

  return MEMORY[0x2821B5FC8](v23, v19, v0 + 16, v19, v22);
}

{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = LSKLocalStatusClient.publish<A>(_:for:options:);
  }

  else
  {
    v3 = LSKLocalStatusClient.publish<A>(_:for:options:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v76 = v0;
  v1 = v0[42];
  v2 = v0[34];
  v3 = v0[32];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = *(v2 + 8);
  v8 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  LOBYTE(v71) = *v2;
  *(&v71 + 1) = v9;
  v72 = v8;
  v73 = v10;
  v74 = v11;
  v75 = v12;

  outlined copy of Data?(v10, v11);

  LSKPublishedStatus<>.map<A>(to:)(v7, v6, v5, v4, v3);
  if (v1)
  {
    v14 = v0[39];
    v13 = v0[40];
    v16 = v0[37];
    v15 = v0[38];
    v17 = v0[34];

    outlined consume of Data?(v15, v14);

    outlined consume of Data._Representation(v15, v14);

    outlined consume of Data?(v73, v74);

    outlined destroy of PublishStatusInvocation.Response(v17, type metadata accessor for PublishStatusInvocation.Response);
    v18 = v0[34];
    v19 = v0[32];
    v21 = v0[29];
    v20 = v0[30];
    v23 = v0[26];
    v22 = v0[27];
    v24 = v0[25];

    v25 = v0[1];
  }

  else
  {
    v27 = v0[33];
    v26 = v0[34];
    v28 = v0[27];
    v29 = v0[28];
    v30 = v0[20];

    outlined consume of Data?(v73, v74);

    outlined init with copy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v26 + *(v27 + 20), v28, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
    v31 = (*(v29 + 48))(v28, 1, v30);
    v32 = v0[39];
    v34 = v0[37];
    v33 = v0[38];
    v35 = v0[31];
    v36 = v0[32];
    if (v31 == 1)
    {
      v37 = v0[27];
      v38 = v0[21];
      v39 = v0[12];
      outlined destroy of PublishStatusInvocation.Response(v0[34], type metadata accessor for PublishStatusInvocation.Response);
      outlined consume of Data._Representation(v33, v32);

      outlined consume of Data?(v33, v32);

      outlined destroy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v37, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
      (*(v35 + 32))(v39, v36, v38);
      v40 = 0uLL;
    }

    else
    {
      v41 = v0[29];
      v42 = v0[30];
      v69 = v0[37];
      v70 = v0[34];
      v43 = v0[28];
      v67 = v0[39];
      v68 = v0[38];
      v44 = v0[26];
      v66 = v0[40];
      v45 = v0[23];
      v64 = v0[24];
      v65 = v0[25];
      v46 = v0[21];
      v47 = v0[20];
      v62 = v0[22];
      v63 = v0[12];
      v48 = *(v0 + 17);
      v60 = v48;
      v61 = *(v0 + 15);
      (*(v43 + 32))(v42, v0[27], v47);
      (*(v43 + 16))(v41, v42, v47);
      v49 = swift_allocObject();
      *(v49 + 16) = v61;
      *(v49 + 32) = v60;
      AsyncSequence.map<A>(_:)();

      (*(v35 + 16))(v63, v36, v46);
      (*(v64 + 16))(v65, v44, v45);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      WitnessTable = swift_getWitnessTable();
      LSKPublishedStatusSequence.init<A>(_:)(v65, v46, v50, v45, WitnessTable, &v71);

      outlined consume of Data?(v68, v67);

      outlined consume of Data._Representation(v68, v67);
      (*(v64 + 8))(v44, v45);
      (*(v43 + 8))(v42, v47);
      (*(v35 + 8))(v36, v46);
      outlined destroy of PublishStatusInvocation.Response(v70, type metadata accessor for PublishStatusInvocation.Response);
      v40 = v71;
    }

    v52 = v0[34];
    v53 = v0[32];
    v55 = v0[29];
    v54 = v0[30];
    v57 = v0[26];
    v56 = v0[27];
    v58 = v0[25];
    *v0[13] = v40;

    v25 = v0[1];
  }

  return v25();
}

{
  v1 = v0[39];
  v2 = v0[38];
  outlined consume of Data._Representation(v2, v1);

  outlined consume of Data?(v2, v1);

  v3 = v0[42];
  v4 = v0[34];
  v5 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[25];

  v11 = v0[1];

  return v11();
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t closure #1 in LSKLocalStatusClient.publish<A>(_:for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 96) = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  *(v6 + 48) = a6;
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 72) = *(a2 + 24);
  *(v6 + 88) = *(a2 + 40);
  return MEMORY[0x2822009F8](closure #1 in LSKLocalStatusClient.publish<A>(_:for:options:), 0, 0);
}

uint64_t partial apply for closure #1 in LSKLocalStatusClient.publish<A>(_:for:options:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in LSKLocalStatusClient.publish<A>(_:for:options:);

  return closure #1 in LSKLocalStatusClient.publish<A>(_:for:options:)(a1, a2, v6, v7, v9, v8);
}

uint64_t LSKLocalStatusClient.status<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = v7;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a2;
  *(v8 + 112) = a4;
  *(v8 + 96) = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
  *(v8 + 152) = v14;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  v15 = type metadata accessor for LSKPublishedStatus();
  *(v8 + 160) = v15;
  *(v8 + 168) = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type SFXPCAsyncSequence<LSKPublishedStatus<Data>> and conformance SFXPCAsyncSequence<A>, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
  v16 = type metadata accessor for AsyncThrowingMapSequence();
  *(v8 + 176) = v16;
  v17 = *(v16 - 8);
  *(v8 + 184) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR) - 8) + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v20 = *(v14 - 8);
  *(v8 + 216) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v22 = *(v15 - 8);
  *(v8 + 240) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v24 = type metadata accessor for LocalStatusInvocation.Response(0);
  *(v8 + 256) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v26 = swift_task_alloc();
  *(v8 + 304) = *a3;
  v27 = *(a3 + 8);
  v28 = *(a3 + 16);
  *(v8 + 264) = v26;
  *(v8 + 272) = v27;
  *(v8 + 280) = v28;

  return MEMORY[0x2822009F8](LSKLocalStatusClient.status<A>(for:), 0, 0);
}

uint64_t LSKLocalStatusClient.status<A>(for:)()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 304);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 112);
  v7 = *(*(v0 + 144) + 24);
  v8 = type metadata accessor for LocalStatusInvocation(0);
  type metadata accessor for LSKKey();
  LSKKey.eraseToData()(v0 + 48);
  *(v0 + 72) = *(v0 + 48);
  v9 = *(v0 + 64);
  *(v0 + 80) = *(v0 + 56);
  *(v0 + 88) = v9;
  v10 = *(MEMORY[0x277D549F8] + 4);
  v11 = swift_task_alloc();
  *(v0 + 288) = v11;
  v12 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LocalStatusInvocation and conformance LocalStatusInvocation, type metadata accessor for LocalStatusInvocation);
  *v11 = v0;
  v11[1] = LSKLocalStatusClient.status<A>(for:);
  v13 = *(v0 + 264);

  return MEMORY[0x2821B5FC8](v13, v8, v0 + 72, v8, v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  v4 = *(v2 + 88);

  if (v0)
  {
    v5 = LSKLocalStatusClient.status<A>(for:);
  }

  else
  {
    v5 = LSKLocalStatusClient.status<A>(for:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v63 = v0;
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[31];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = *(v2 + 8);
  v8 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  LOBYTE(v58) = *v2;
  *(&v58 + 1) = v9;
  v59 = v8;
  v60 = v10;
  v61 = v11;
  v62 = v12;

  outlined copy of Data?(v10, v11);

  LSKPublishedStatus<>.map<A>(to:)(v7, v6, v5, v4, v3);
  v13 = v0[33];
  if (v1)
  {

    outlined consume of Data?(v60, v61);

    outlined destroy of PublishStatusInvocation.Response(v13, type metadata accessor for LocalStatusInvocation.Response);
    v14 = v0[33];
    v15 = v0[31];
    v17 = v0[28];
    v16 = v0[29];
    v19 = v0[25];
    v18 = v0[26];
    v20 = v0[24];

    v21 = v0[1];
  }

  else
  {
    v22 = v0[32];
    v23 = v0[26];
    v24 = v0[27];
    v25 = v0[19];

    outlined consume of Data?(v60, v61);

    outlined init with copy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v13 + *(v22 + 20), v23, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
    v26 = (*(v24 + 48))(v23, 1, v25);
    v27 = v0[30];
    v28 = v0[31];
    if (v26 == 1)
    {
      v29 = v0[26];
      v30 = v0[20];
      v31 = v0[12];
      outlined destroy of PublishStatusInvocation.Response(v0[33], type metadata accessor for LocalStatusInvocation.Response);
      outlined destroy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v29, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
      (*(v27 + 32))(v31, v28, v30);
      v32 = 0uLL;
    }

    else
    {
      v33 = v0[28];
      v34 = v0[29];
      v35 = v0[27];
      v56 = v0[24];
      v37 = v0[22];
      v36 = v0[23];
      v38 = v0[20];
      v53 = v0[25];
      v54 = v0[21];
      v39 = v0[19];
      v55 = v0[12];
      v57 = v0[33];
      v51 = *(v0 + 8);
      v52 = *(v0 + 7);
      (*(v35 + 32))(v34, v0[26], v39);
      (*(v35 + 16))(v33, v34, v39);
      v40 = swift_allocObject();
      *(v40 + 16) = v52;
      *(v40 + 32) = v51;
      AsyncSequence.map<A>(_:)();

      (*(v27 + 16))(v55, v28, v38);
      (*(v36 + 16))(v56, v53, v37);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      WitnessTable = swift_getWitnessTable();
      LSKPublishedStatusSequence.init<A>(_:)(v56, v38, v41, v37, WitnessTable, &v58);
      (*(v36 + 8))(v53, v37);
      (*(v35 + 8))(v34, v39);
      (*(v27 + 8))(v28, v38);
      outlined destroy of PublishStatusInvocation.Response(v57, type metadata accessor for LocalStatusInvocation.Response);
      v32 = v58;
    }

    v43 = v0[33];
    v44 = v0[31];
    v46 = v0[28];
    v45 = v0[29];
    v48 = v0[25];
    v47 = v0[26];
    v49 = v0[24];
    *v0[13] = v32;

    v21 = v0[1];
  }

  return v21();
}

{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];

  v9 = v0[1];

  return v9();
}

uint64_t outlined destroy of PublishStatusInvocation.Response(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in LSKLocalStatusClient.status<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 96) = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  *(v6 + 48) = a6;
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 72) = *(a2 + 24);
  *(v6 + 88) = *(a2 + 40);
  return MEMORY[0x2822009F8](closure #1 in LSKLocalStatusClient.status<A>(for:), 0, 0);
}

uint64_t closure #1 in LSKLocalStatusClient.status<A>(for:)()
{
  v3 = *(v0 + 96);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 88);
  LSKPublishedStatus<>.map<A>(to:)(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:);

  return closure #1 in LSKLocalStatusClient.status<A>(for:)(a1, a2, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t LSKLocalStatusClient.subscribe<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 40) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Sharing18SFXPCAsyncSequenceVySay14LocalStatusKit08LSKLocalE11ObservationVy10Foundation4DataVGGGMd, &_s7Sharing18SFXPCAsyncSequenceVySay14LocalStatusKit08LSKLocalE11ObservationVy10Foundation4DataVGGGMR);
  *(v6 + 80) = v8;
  type metadata accessor for LSKLocalStatusObservation();
  *(v6 + 88) = type metadata accessor for Array();
  *(v6 + 96) = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type SFXPCAsyncSequence<[LSKLocalStatusObservation<Data>]> and conformance SFXPCAsyncSequence<A>, &_s7Sharing18SFXPCAsyncSequenceVySay14LocalStatusKit08LSKLocalE11ObservationVy10Foundation4DataVGGGMd, &_s7Sharing18SFXPCAsyncSequenceVySay14LocalStatusKit08LSKLocalE11ObservationVy10Foundation4DataVGGGMR);
  v9 = type metadata accessor for AsyncMapSequence();
  *(v6 + 104) = v9;
  v10 = *(v9 - 8);
  *(v6 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  v12 = *(v8 - 8);
  *(v6 + 136) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  v14 = swift_task_alloc();
  *(v6 + 200) = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  *(v6 + 152) = v14;
  *(v6 + 160) = v15;
  *(v6 + 168) = v16;

  return MEMORY[0x2822009F8](LSKLocalStatusClient.subscribe<A>(to:), 0, 0);
}

uint64_t LSKLocalStatusClient.subscribe<A>(to:)()
{
  v23 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v20 = *(v0 + 200);
  v21 = v2;
  v22 = v1;
  type metadata accessor for LSKKey();
  LSKKey.eraseToData()(v17);
  v7 = v17[0];
  v8 = v18;
  v9 = v19;
  *(v0 + 176) = v19;
  v10 = *(v4 + 24);
  v11 = type metadata accessor for SubscribeStatusInvocation(0);
  *(v0 + 16) = v7;
  *(v0 + 24) = v8;
  *(v0 + 32) = v9;
  v12 = *(MEMORY[0x277D549F8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  v14 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SubscribeStatusInvocation and conformance SubscribeStatusInvocation, type metadata accessor for SubscribeStatusInvocation);
  *v13 = v0;
  v13[1] = LSKLocalStatusClient.subscribe<A>(to:);
  v15 = *(v0 + 152);

  return MEMORY[0x2821B5FC8](v15, v11, v0 + 16, v11, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = LSKLocalStatusClient.subscribe<A>(to:);
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = LSKLocalStatusClient.subscribe<A>(to:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  v15 = *(v0 + 96);
  v16 = *(v0 + 120);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v17 = *(v0 + 40);
  v18 = *(v0 + 152);
  v14 = *(v0 + 48);
  v8 = *(v0 + 144);
  (*(v1 + 16))();
  v9 = swift_allocObject();
  *(v9 + 16) = v14;
  *(v9 + 32) = v7;
  AsyncSequence.map<A>(_:)();

  (*(v3 + 16))(v16, v2, v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  WitnessTable = swift_getWitnessTable();
  LSKObservationsSequence.init<A>(_:)(v16, v6, v10, v4, WitnessTable, v17);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v18, v5);

  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];

  v6 = v0[1];
  v7 = v0[24];

  return v6();
}

uint64_t closure #1 in LSKLocalStatusClient.subscribe<A>(to:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a1;
  v5[4] = a3;
  v5[7] = *a2;
  return MEMORY[0x2822009F8](closure #1 in LSKLocalStatusClient.subscribe<A>(to:), 0, 0);
}

uint64_t closure #1 in LSKLocalStatusClient.subscribe<A>(to:)()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v0[2] = v0[7];
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGGMd, &_sSay14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGGMR);
  type metadata accessor for LSKLocalStatusObservation();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [LSKLocalStatusObservation<Data>] and conformance [A], &_sSay14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGGMd, &_sSay14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGGMR);
  v6 = Sequence.compactMap<A>(_:)();

  *v4 = v6;
  v7 = v0[1];

  return v7();
}

uint64_t partial apply for closure #1 in LSKLocalStatusClient.subscribe<A>(to:)(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:);

  return closure #1 in LSKLocalStatusClient.subscribe<A>(to:)(a1, a2, v6, v7, v8);
}

uint64_t closure #1 in closure #1 in LSKLocalStatusClient.subscribe<A>(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v36 = &v33 - v11;
  v12 = type metadata accessor for LSKLocalStatusObservation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  LSKLocalStatusObservation<>.map<A>(to:)(a2, a3, &v33 - v15);
  if (v4)
  {
    v33 = v12;
    v34 = v13;
    v35 = a4;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, log);
    v18 = v36;
    outlined init with copy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(a1, v36, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 136315394;
      v23 = specialized LSKLocalStatusObservation.description.getter();
      v25 = v24;
      outlined destroy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v18, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v37);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v27 = _typeName(_:qualified:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v37);

      *(v21 + 14) = v29;
      swift_arrayDestroy();
      MEMORY[0x259C5BF00](v22, -1, -1);
      MEMORY[0x259C5BF00](v21, -1, -1);
      MEMORY[0x259C5BDA0](v4);
    }

    else
    {
      MEMORY[0x259C5BDA0](v4);

      outlined destroy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v18, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
    }

    v30 = 1;
    v13 = v34;
    a4 = v35;
    v31 = v33;
  }

  else
  {
    (*(v13 + 32))(a4, v16, v12);
    v30 = 0;
    v31 = v12;
  }

  return (*(v13 + 56))(a4, v30, 1, v31);
}

uint64_t LSKLocalStatusClient.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t LSKLocalStatusClient.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t PublishStatusInvocation.Parameters.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t PublishStatusInvocation.Parameters.payload.getter()
{
  v1 = *(v0 + 24);
  outlined copy of Data?(v1, *(v0 + 32));
  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PublishStatusInvocation.Parameters.CodingKeys()
{
  v1 = 0x64616F6C796170;
  if (*v0 != 1)
  {
    v1 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PublishStatusInvocation.Parameters.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PublishStatusInvocation.Parameters.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PublishStatusInvocation.Parameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PublishStatusInvocation.Parameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PublishStatusInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit07PublishE10InvocationC10ParametersV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit07PublishE10InvocationC10ParametersV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMR);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v10 = *(v1 + 3);
  v19 = *(v1 + 4);
  v20 = v10;
  v18 = *(v1 + 5);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23) = v7;
  v24 = v8;
  v25 = v9;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v12 = v3;
  v13 = v6;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v14 = v21;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (v14)
  {
    return (*(v22 + 8))(v6, v3);
  }

  v16 = v18;
  v17 = v22;
  v23 = v20;
  v24 = v19;
  v26 = 1;
  outlined copy of Data?(v20, v19);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v23, v24);
  v23 = v16;
  v26 = 2;
  lazy protocol witness table accessor for type LSKStatusOptions and conformance LSKStatusOptions();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v17 + 8))(v13, v12);
}

unint64_t lazy protocol witness table accessor for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions and conformance LSKStatusOptions()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions);
  }

  return result;
}

uint64_t PublishStatusInvocation.Parameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit07PublishE10InvocationC10ParametersV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit07PublishE10InvocationC10ParametersV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v26 = 0;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v22;
  v11 = v23;
  v21 = v24;
  v26 = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v11;
  v19 = v22;
  v20 = v23;
  v26 = 2;
  lazy protocol witness table accessor for type LSKStatusOptions and conformance LSKStatusOptions();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v13 = v21;
  v12 = v22;
  *a2 = v25;
  v14 = v19;
  *(a2 + 8) = v18;
  *(a2 + 16) = v13;
  v15 = v20;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v12;

  outlined copy of Data?(v14, v15);

  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of Data?(v14, v15);
}

uint64_t PublishStatusInvocation.Response.initialStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  outlined copy of Data?(v5, v6);
}

uint64_t outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PublishStatusInvocation.Response.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PublishStatusInvocation.Response.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PublishStatusInvocation.Response.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit07PublishE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit07PublishE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *(v4 + 8);
  v12 = *(v4 + 16);
  v15 = *(v4 + 24);
  v14 = *(v4 + 32);
  v16 = *(v4 + 40);
  v21[0] = *v4;
  v22 = v13;
  v23 = v12;
  v24 = v15;
  v25 = v14;
  v26 = v16;
  v27 = 0;

  outlined copy of Data?(v15, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v17 = v24;
  v18 = v25;

  outlined consume of Data?(v17, v18);

  if (!v3)
  {
    v19 = *(type metadata accessor for PublishStatusInvocation.Response(0) + 20);
    v21[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type SFXPCAsyncSequence<LSKPublishedStatus<Data>> and conformance SFXPCAsyncSequence<A>, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t lazy protocol witness table accessor for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys);
  }

  return result;
}

uint64_t PublishStatusInvocation.Response.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit07PublishE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit07PublishE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMR);
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = type metadata accessor for PublishStatusInvocation.Response(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v13;
  v28 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v38 = 0;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v18 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v33;
  v20 = v34;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  *v16 = v32;
  *(v16 + 1) = v19;
  *(v16 + 2) = v20;
  v26[0] = v20;
  v26[1] = v22;
  v26[2] = v21;
  *(v16 + 3) = v21;
  *(v16 + 4) = v22;
  *(v16 + 5) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
  v32 = 1;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type SFXPCAsyncSequence<LSKPublishedStatus<Data>> and conformance SFXPCAsyncSequence<A>, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
  v24 = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v31 + 8))(v12, v18);
  outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v24, &v16[*(v27 + 20)]);
  outlined init with copy of PublishStatusInvocation.Response(v16, v29, type metadata accessor for PublishStatusInvocation.Response);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of PublishStatusInvocation.Response(v16, type metadata accessor for PublishStatusInvocation.Response);
}

id PublishStatusInvocation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PublishStatusInvocation.Response.init(initialStatus:updates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  *a4 = *a1;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = *(a1 + 24);
  *(a4 + 40) = v7;
  v8 = a4 + *(a3(0) + 20);

  return outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(a2, v8);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PublishStatusInvocation.Response.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x536C616974696E69 && a2 == 0xED00007375746174;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73657461647075 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LocalStatusInvocation.Response.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LocalStatusInvocation.Response.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocalStatusInvocation.Response.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit0dE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit0dE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *(v4 + 8);
  v12 = *(v4 + 16);
  v15 = *(v4 + 24);
  v14 = *(v4 + 32);
  v16 = *(v4 + 40);
  v21[0] = *v4;
  v22 = v13;
  v23 = v12;
  v24 = v15;
  v25 = v14;
  v26 = v16;
  v27 = 0;

  outlined copy of Data?(v15, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v17 = v24;
  v18 = v25;

  outlined consume of Data?(v17, v18);

  if (!v3)
  {
    v19 = *(type metadata accessor for LocalStatusInvocation.Response(0) + 20);
    v21[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type SFXPCAsyncSequence<LSKPublishedStatus<Data>> and conformance SFXPCAsyncSequence<A>, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t lazy protocol witness table accessor for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys);
  }

  return result;
}

uint64_t LocalStatusInvocation.Response.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit0dE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit0dE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMR);
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = type metadata accessor for LocalStatusInvocation.Response(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v13;
  v28 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v38 = 0;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v18 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v33;
  v20 = v34;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  *v16 = v32;
  *(v16 + 1) = v19;
  *(v16 + 2) = v20;
  v26[0] = v20;
  v26[1] = v22;
  v26[2] = v21;
  *(v16 + 3) = v21;
  *(v16 + 4) = v22;
  *(v16 + 5) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
  v32 = 1;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type SFXPCAsyncSequence<LSKPublishedStatus<Data>> and conformance SFXPCAsyncSequence<A>, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
  v24 = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v31 + 8))(v12, v18);
  outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v24, &v16[*(v27 + 20)]);
  outlined init with copy of PublishStatusInvocation.Response(v16, v29, type metadata accessor for LocalStatusInvocation.Response);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of PublishStatusInvocation.Response(v16, type metadata accessor for LocalStatusInvocation.Response);
}

uint64_t outlined init with copy of PublishStatusInvocation.Response(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id PublishStatusInvocation.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id @objc PublishStatusInvocation.init()(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PublishStatusInvocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type PublishStatusInvocation.Parameters and conformance PublishStatusInvocation.Parameters()
{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters and conformance PublishStatusInvocation.Parameters;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters and conformance PublishStatusInvocation.Parameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters and conformance PublishStatusInvocation.Parameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters and conformance PublishStatusInvocation.Parameters;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters and conformance PublishStatusInvocation.Parameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters and conformance PublishStatusInvocation.Parameters);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t getEnumTagSinglePayload for PublishStatusInvocation.Parameters(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for PublishStatusInvocation.Parameters(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void type metadata accessor for LSKPublishedStatus<Data>()
{
  if (!lazy cache variable for type metadata for LSKPublishedStatus<Data>)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Data and conformance Data();
    v0 = type metadata accessor for LSKPublishedStatus();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LSKPublishedStatus<Data>);
    }
  }
}

void type metadata accessor for SFXPCAsyncSequence<LSKPublishedStatus<Data>>?()
{
  if (!lazy cache variable for type metadata for SFXPCAsyncSequence<LSKPublishedStatus<Data>>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SFXPCAsyncSequence<LSKPublishedStatus<Data>>?);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PublishStatusInvocation.Response()
{
  type metadata accessor for LSKPublishedStatus<Data>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SFXPCAsyncSequence<LSKPublishedStatus<Data>>?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for PublishStatusInvocation.Parameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PublishStatusInvocation.Parameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized LSKLocalStatusObservation.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
  v3 = *(v2 + 52);
  lazy protocol witness table accessor for type OSLogDateFormatter and conformance OSLogDateFormatter();
  Date.formatted<A>(_:)();
  _StringGuts.grow(_:)(24);
  MEMORY[0x259C5B730]();

  MEMORY[0x259C5B730](9, 0xE100000000000000);
  v4 = *v1;
  v5 = v1[1];

  v7 = specialized Collection.prefix(_:)(8, v4, v5, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = MEMORY[0x259C5B700](v7, v9, v11, v13);
  v16 = v15;

  MEMORY[0x259C5B730](v14, v16);

  MEMORY[0x259C5B730](0x22206D4E20, 0xE500000000000000);
  MEMORY[0x259C5B730](v1[2], v1[3]);
  MEMORY[0x259C5B730](0x20644D2022, 0xE500000000000000);
  MEMORY[0x259C5B730](v1[4], v1[5]);
  MEMORY[0x259C5B730](24585, 0xE200000000000000);
  v18 = *(v1 + *(v2 + 56));
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x259C5B730](96, 0xE100000000000000);
  return 0;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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

uint64_t specialized PublishStatusInvocation.Parameters.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with copy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t LSKLocalStatusObservation<>.map<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v5 = v3;
  v52 = a2;
  v8 = type metadata accessor for Date();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a1 - 8);
  v12 = *(v41 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v42 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v17 = type metadata accessor for JSONDecoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
  v21 = (v3 + v20[14]);
  v22 = *v21;
  v23 = v21[1];
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v4)
  {
    v25 = v3 + v20[15];
    v26 = *v25;
    v40 = a3;
    v27 = *(v25 + 1);
    v28 = *(v25 + 2);
    v46[0] = v26;
    v47 = v27;
    v48 = v28;
    LSKKey.eraseToData()(v49);

    v46[0] = v49[0];
    v47 = v50;
    v48 = v51;
    v29 = *v3;
    v30 = v3[1];
    v31 = v3[3];
    v38 = v5[2];
    v39 = v29;
    v37 = v5[4];
    v32 = v5[5];
    v33 = v5 + v20[13];
    v34 = v45;
    (*(v43 + 16))(v45, v33, v44);
    v35 = v42;
    (*(v41 + 32))(v42, v16, a1);
    LSKLocalStatusObservation.init(key:deviceIDSIdentifier:deviceName:deviceModel:timestamp:value:)(v46, v39, v30, v38, v31, v37, v32, v34, v40, v35, a1);
  }

  return result;
}

uint64_t LSKLocalStatusObservation.deviceIDSIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LSKLocalStatusObservation.deviceName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LSKLocalStatusObservation.deviceModel.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t LSKLocalStatusObservation.timestamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t LSKLocalStatusObservation.key.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 60);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
}

uint64_t LSKLocalStatusObservation.init(key:deviceIDSIdentifier:deviceName:deviceModel:timestamp:value:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a1;
  v17 = *(a1 + 1);
  v18 = *(a1 + 2);
  v19 = type metadata accessor for LSKLocalStatusObservation();
  v20 = &a9[v19[15]];
  *v20 = v16;
  *(v20 + 1) = v17;
  *(v20 + 2) = v18;
  *a9 = a2;
  *(a9 + 1) = a3;
  *(a9 + 2) = a4;
  *(a9 + 3) = a5;
  *(a9 + 4) = a6;
  *(a9 + 5) = a7;
  v21 = v19[13];
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 32))(&a9[v21], a8, v22);
  v23 = *(*(a11 - 8) + 32);
  v24 = &a9[v19[14]];

  return v23(v24, a10, a11);
}

uint64_t LSKLocalStatusObservation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000256167280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

Swift::Int LSKLocalStatusObservation.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](a1);
  return Hasher._finalize()();
}

unint64_t LSKLocalStatusObservation.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x614E656369766564;
  v2 = 0x6D617473656D6974;
  v3 = 0x65756C6176;
  if (a1 != 4)
  {
    v3 = 7955819;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 != 1)
  {
    v1 = 0x6F4D656369766564;
  }

  if (!a1)
  {
    v1 = 0xD000000000000013;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance LSKLocalStatusObservation<A>.CodingKeys(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return static LSKLocalStatusObservation.CodingKeys.== infix(_:_:)(*a1, *a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LSKLocalStatusObservation<A>.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return LSKLocalStatusObservation.CodingKeys.hashValue.getter(*v1);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LSKLocalStatusObservation<A>.CodingKeys(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return LSKLocalStatusObservation.CodingKeys.hash(into:)(a1, *v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSKLocalStatusObservation<A>.CodingKeys(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  LSKLocalStatusObservation.CodingKeys.hash(into:)(v8, *v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance LSKLocalStatusObservation<A>.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return LSKLocalStatusObservation.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKLocalStatusObservation<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = LSKLocalStatusObservation.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance LSKLocalStatusObservation<A>.CodingKeys@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = specialized LSKLocalStatusObservation.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKLocalStatusObservation<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKLocalStatusObservation<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LSKLocalStatusObservation.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v26[1] = *(a2 + 32);
  v26[2] = v4;
  v26[0] = v5;
  type metadata accessor for LSKLocalStatusObservation.CodingKeys();
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v28;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v12;
  v14 = v12[1];
  v29 = 0;
  v15 = v27;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v15)
  {
    v16 = v12[2];
    v17 = v12[3];
    v29 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v12[4];
    v19 = v12[5];
    v29 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(a2 + 52);
    v29 = 3;
    type metadata accessor for Date();
    _s10Foundation4DateVACSEAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = a2;
    v21 = *(a2 + 56);
    v29 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v28 + *(v27 + 60);
    v23 = *(v22 + 1);
    v24 = *(v22 + 2);
    v29 = *v22;
    v30 = v23;
    v31 = v24;
    v32 = 5;
    type metadata accessor for LSKKey();

    swift_getWitnessTable();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t LSKLocalStatusObservation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a5;
  v60 = *(a2 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](a1);
  v56 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Date();
  v59 = *(v61 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v62 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LSKLocalStatusObservation.CodingKeys();
  swift_getWitnessTable();
  v64 = type metadata accessor for KeyedDecodingContainer();
  v58 = *(v64 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x28223BE20](v64);
  v15 = &v49 - v14;
  v57 = a3;
  v55 = a4;
  v16 = type metadata accessor for LSKLocalStatusObservation();
  v53 = *(v16 - 8);
  v17 = *(v53 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v49 - v18);
  v20 = a1[3];
  v21 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v63 = v15;
  v22 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v23 = v61;
  v65 = v16;
  v24 = v58;
  v25 = v59;
  v26 = v60;
  v52 = a2;
  v67 = 0;
  *v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v19[1] = v28;
  v67 = 1;
  v19[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v19[3] = v29;
  v67 = 2;
  v19[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v19[5] = v30;
  v67 = 3;
  _s10Foundation4DateVACSEAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date);
  v31 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v51 = 0;
  v50 = 0;
  v36 = v25;
  (*(v25 + 32))(v19 + v65[13], v62, v31);
  v67 = 4;
  v37 = v56;
  v38 = v51;
  v39 = v52;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v51 = v38;
  if (v38)
  {
    (*(v24 + 8))(v63, v64);
    v40 = 0;
  }

  else
  {
    (*(v26 + 32))(v19 + v65[14], v37, v39);
    type metadata accessor for LSKKey();
    v70 = 5;
    swift_getWitnessTable();
    v41 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v51 = v41;
    if (!v41)
    {
      (*(v24 + 8))(v63, v64);
      v44 = v68;
      v45 = v69;
      v46 = v65;
      v47 = v19 + v65[15];
      *v47 = v67;
      *(v47 + 1) = v44;
      *(v47 + 2) = v45;
      v48 = v53;
      (*(v53 + 16))(v54, v19, v46);
      __swift_destroy_boxed_opaque_existential_1(v66);
      return (*(v48 + 8))(v19, v46);
    }

    (*(v24 + 8))(v63, v64);
    v40 = 1;
  }

  v42 = v50;
  v43 = v61;
  __swift_destroy_boxed_opaque_existential_1(v66);
  v32 = v19[1];

  v33 = v19[3];

  if (!v42)
  {
    v35 = v19[5];
  }

  v34 = v65;
  result = (*(v36 + 8))(v19 + v65[13], v43);
  if (v40)
  {
    return (*(v26 + 8))(v19 + v34[14], v52);
  }

  return result;
}

uint64_t _s10Foundation4DateVACSEAAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static LSKLocalStatusObservation<>.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[4] == a2[4] && a1[5] == a2[5] || (_stringCompareWithSmolCheck(_:_:expecting:)())) && (v6 = type metadata accessor for LSKLocalStatusObservation(), v7 = v6[13], (static Date.== infix(_:_:)()) && (v8 = v6[14], (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    v9 = v6[15];
    v11 = *(a1 + v9 + 8);
    v10 = *(a1 + v9 + 16);
    v20[0] = *(a1 + v9);
    v21 = v11;
    v22 = v10;
    v12 = a2 + v9;
    v13 = *(v12 + 1);
    v14 = *(v12 + 2);
    v17[0] = *v12;
    v18 = v13;
    v19 = v14;

    v15 = static LSKKey.== infix(_:_:)(v20, v17);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance <> LSKLocalStatusObservation<A>(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  return static LSKLocalStatusObservation<>.== infix(_:_:)(a1, a2);
}

uint64_t LSKLocalStatusObservation.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 52);
  lazy protocol witness table accessor for type OSLogDateFormatter and conformance OSLogDateFormatter();
  Date.formatted<A>(_:)();
  _StringGuts.grow(_:)(24);
  MEMORY[0x259C5B730]();

  MEMORY[0x259C5B730](9, 0xE100000000000000);
  v5 = *v2;
  v6 = v2[1];

  v8 = specialized Collection.prefix(_:)(8, v5, v6, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x259C5B700](v8, v10, v12, v14);
  v17 = v16;

  MEMORY[0x259C5B730](v15, v17);

  MEMORY[0x259C5B730](0x22206D4E20, 0xE500000000000000);
  MEMORY[0x259C5B730](v2[2], v2[3]);
  MEMORY[0x259C5B730](0x20644D2022, 0xE500000000000000);
  MEMORY[0x259C5B730](v2[4], v2[5]);
  MEMORY[0x259C5B730](24585, 0xE200000000000000);
  v18 = *(a1 + 56);
  v19 = *(a1 + 16);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x259C5B730](96, 0xE100000000000000);
  return 0;
}

uint64_t type metadata completion function for LSKLocalStatusObservation(void *a1)
{
  result = type metadata accessor for Date();
  if (v3 <= 0x3F)
  {
    v4 = a1[2];
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = a1[3];
      v7 = a1[4];
      result = type metadata accessor for LSKKey();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LSKLocalStatusObservation(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(v8 + 64) + ((v11 + ((v10 + 48) & ~v10) + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v14 + 1;
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

    return v14 + (v23 | v22) + 1;
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
  if ((v13 & 0x80000000) != 0)
  {
    if (v7 == v14)
    {
      v25 = *(v6 + 48);

      return v25((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    }

    else
    {
      v26 = *(v8 + 48);

      return v26((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10) + v11 + v12) & ~v12, v9);
    }
  }

  else
  {
    v24 = *(a1 + 1);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }
}

void storeEnumTagSinglePayload for LSKLocalStatusObservation(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for Date() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((*(v10 + 64) + ((v13 + ((v12 + 48) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v13 + ((v12 + 48) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v15 & 0x80000000) != 0)
        {
          if (v9 == v16)
          {
            v24 = *(v8 + 56);

            v24((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12, a2);
          }

          else
          {
            v25 = *(v10 + 56);

            v25((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12) + v13 + v14) & ~v14, a2, v11);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((*(v10 + 64) + ((v13 + ((v12 + 48) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((*(v10 + 64) + ((v13 + ((v12 + 48) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

uint64_t getEnumTagSinglePayload for LSKLocalStatusObservation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LSKLocalStatusObservation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t LSKObservationsSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  v14 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  result = (*(v12 + 32))(&v15[v14], a1, a4);
  *a6 = partial apply for closure #1 in LSKObservationsSequence.init<A>(_:);
  a6[1] = v15;
  return result;
}

void *closure #1 in LSKObservationsSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v16 = swift_allocBox();
  (*(v12 + 16))(v15, a1, a4);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  result[6] = v16;
  *a6 = &async function pointer to partial apply for closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:);
  a6[1] = result;
  return result;
}

uint64_t closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a1;
  v6[8] = swift_getAssociatedTypeWitness();
  v6[9] = swift_projectBox();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:);
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[5];

  return MEMORY[0x282200308](v10, v8, AssociatedConformanceWitness);
}

{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (!v0)
  {
    swift_endAccess();
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:), 0, 0);
}

{
  swift_endAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1();
}

uint64_t LSKObservationsSequence.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](LSKObservationsSequence.AsyncIterator.next(), 0, 0);
}

uint64_t LSKObservationsSequence.AsyncIterator.next()()
{
  v1 = v0[3];
  v2 = v1[1];
  v7 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = LSKObservationsSequence.AsyncIterator.next();
  v5 = v0[2];

  return v7(v5);
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance LSKObservationsSequence<A, B>.AsyncIterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:);

  return LSKObservationsSequence.AsyncIterator.next()(a1);
}

uint64_t _s14LocalStatusKit23LSKObservationsSequenceV13AsyncIteratorVyxq__GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = _s14LocalStatusKit23LSKObservationsSequenceV13AsyncIteratorVyxq__GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t _s14LocalStatusKit23LSKObservationsSequenceV13AsyncIteratorVyxq__GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
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

uint64_t LSKObservationsSequence.makeAsyncIterator()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance LSKObservationsSequence<A, B>()
{
  LSKObservationsSequence.makeAsyncIterator()();
  v1 = *(v0 + 8);
}

uint64_t type metadata instantiation function for LSKObservationsSequence()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t type metadata instantiation function for LSKObservationsSequence.AsyncIterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for LSKObservationsSequence(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LSKObservationsSequence(uint64_t result, int a2, int a3)
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

uint64_t partial apply for closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:);

  return closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:)(a1, v8, v4, v5, v6, v7);
}

uint64_t LSKPublishedStatus<>.map<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = a4;
  v39 = a2;
  v37 = a5;
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v32 - v11;
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v5;
  v19 = *(v5 + 1);
  v18 = *(v5 + 2);
  v20 = *(v5 + 4);
  v21 = *(v5 + 5);
  if (v20 >> 60 == 15)
  {
    v40[0] = *v5;
    v41 = v19;
    v42 = v18;
    LSKKey.eraseToData()(v43);

    v40[0] = v43[0];
    v41 = v44;
    v42 = v45;
    (*(v13 + 56))(v12, 1, 1, a1);
    v22 = v37;
    v23 = v12;
    v24 = v21;
  }

  else
  {
    v33 = *(v5 + 1);
    v34 = v18;
    v35 = v13;
    v36 = a3;
    v25 = *(v5 + 3);
    v26 = type metadata accessor for JSONDecoder();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    outlined copy of Data._Representation(v25, v20);
    JSONDecoder.init()();
    v29 = v46;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v25, v20);

    v46 = v29;
    if (v29)
    {
      return result;
    }

    v40[0] = v17;
    v41 = v33;
    v42 = v34;
    LSKKey.eraseToData()(v43);

    v40[0] = v43[0];
    v41 = v44;
    v42 = v45;
    v31 = v35;
    (*(v35 + 32))(v12, v16, a1);
    (*(v31 + 56))(v12, 0, 1, a1);
    v22 = v37;
    v23 = v12;
    v24 = v21;
  }

  LSKPublishedStatus.init(key:value:devices:)(v40, v23, v24, v22);
}

uint64_t LSKPublishedStatus.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t LSKPublishedStatus.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t LSKPublishedStatus.pendingDevies.getter(uint64_t a1)
{
  v3 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for LSKDestinationDevice(0);
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(v1 + *(a1 + 56));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v28 = v6 + 8;
    v17 = MEMORY[0x277D84F90];
    v29 = v15;
    while (v16 < *(v14 + 16))
    {
      v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v19 = *(v7 + 72);
      outlined init with copy of LSKDestinationDevice(v14 + v18 + v19 * v16, v13, type metadata accessor for LSKDestinationDevice);
      outlined init with copy of LSKDestinationDevice(&v13[*(v31 + 28)], v6, type metadata accessor for LSKDestinationDevice.Delivery);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
      v21 = (*(*(v20 - 8) + 48))(v6, 3, v20);
      if ((v21 - 2) < 2)
      {
        result = outlined destroy of LSKDestinationDevice(v13, type metadata accessor for LSKDestinationDevice);
      }

      else
      {
        if (!v21)
        {
          v22 = *&v28[*(v20 + 48)];

          v23 = type metadata accessor for Date();
          (*(*(v23 - 8) + 8))(v6, v23);
        }

        outlined init with take of LSKDestinationDevice(v13, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1);
          v17 = v32;
        }

        v26 = *(v17 + 16);
        v25 = *(v17 + 24);
        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1);
          v17 = v32;
        }

        *(v17 + 16) = v26 + 1;
        result = outlined init with take of LSKDestinationDevice(v30, v17 + v18 + v26 * v19);
        v15 = v29;
      }

      if (v15 == ++v16)
      {
        return v17;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t outlined init with copy of LSKDestinationDevice(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of LSKDestinationDevice(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LSKDestinationDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LSKPublishedStatus.init(key:value:devices:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  v9 = type metadata accessor for LSKPublishedStatus();
  v10 = *(v9 + 52);
  v11 = type metadata accessor for Optional();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 56)) = a3;
  return result;
}

uint64_t static LSKPublishedStatus.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = *(a3 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](a1);
  v39 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x28223BE20](v14);
  v41 = v36 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  v18 = *(v40 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v20 = v36 - v19;
  v22 = *(a1 + 8);
  v21 = *(a1 + 16);
  LOBYTE(v44) = *a1;
  v45 = v22;
  v46 = v21;
  v23 = *(a2 + 1);
  v24 = *(a2 + 2);
  v48[0] = *a2;
  v49 = v23;
  v50 = v24;

  LOBYTE(v24) = static LSKKey.== infix(_:_:)(&v44, v48);

  if ((v24 & 1) == 0)
  {
    goto LABEL_8;
  }

  v44 = a3;
  v45 = a4;
  v46 = a5;
  v47 = a6;
  v36[1] = a6;
  v37 = type metadata accessor for LSKPublishedStatus();
  v38 = TupleTypeMetadata2;
  v25 = *(v37 + 52);
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = *(v42 + 16);
  v27(v20, a1 + v25, v14);
  v27(&v20[v26], &a2[v25], v14);
  v28 = *(v43 + 48);
  if (v28(v20, 1, a3) == 1)
  {
    if (v28(&v20[v26], 1, a3) == 1)
    {
      (*(v42 + 8))(v20, v14);
LABEL_11:
      v29 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14LocalStatusKit20LSKDestinationDeviceV_Tt1g5(*(a1 + *(v37 + 56)), *&a2[*(v37 + 56)]);
      return v29 & 1;
    }

    goto LABEL_7;
  }

  v27(v41, v20, v14);
  if (v28(&v20[v26], 1, a3) == 1)
  {
    (*(v43 + 8))(v41, a3);
LABEL_7:
    (*(v40 + 8))(v20, v38);
    goto LABEL_8;
  }

  v31 = v43;
  v32 = v39;
  (*(v43 + 32))(v39, &v20[v26], a3);
  v33 = v41;
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v31 + 8);
  v35(v32, a3);
  v35(v33, a3);
  (*(v42 + 8))(v20, v14);
  if (v34)
  {
    goto LABEL_11;
  }

LABEL_8:
  v29 = 0;
  return v29 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14LocalStatusKit20LSKDestinationDeviceV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v51 = type metadata accessor for Date();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit20LSKDestinationDeviceV8DeliveryO_AEtMd, &_s14LocalStatusKit20LSKDestinationDeviceV8DeliveryO_AEtMR);
  v11 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v55 = &v44 - v12;
  v52 = type metadata accessor for LSKDestinationDevice(0);
  v13 = *(*(v52 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v52);
  v16 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v19 = (&v44 - v18);
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (v20 && a1 != a2)
  {
    v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = a1 + v21;
    v23 = a2 + v21;
    v45 = (v4 + 32);
    v24 = *(v17 + 72);
    v48 = (v4 + 8);
    v49 = v24;
    while (1)
    {
      outlined init with copy of LSKDestinationDevice(v22, v19, type metadata accessor for LSKDestinationDevice);
      outlined init with copy of LSKDestinationDevice(v23, v16, type metadata accessor for LSKDestinationDevice);
      v26 = *v19 == *v16 && v19[1] == v16[1];
      if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v19[2] == v16[2] ? (v27 = v19[3] == v16[3]) : (v27 = 0), !v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v19[4] != v16[4] || v19[5] != v16[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
LABEL_39:
        outlined destroy of LSKDestinationDevice(v16, type metadata accessor for LSKDestinationDevice);
        outlined destroy of LSKDestinationDevice(v19, type metadata accessor for LSKDestinationDevice);
        return 0;
      }

      v54 = v22;
      v28 = v10;
      v29 = *(v52 + 28);
      v30 = v55;
      v31 = v55 + *(v53 + 48);
      outlined init with copy of LSKDestinationDevice(v19 + v29, v55, type metadata accessor for LSKDestinationDevice.Delivery);
      outlined init with copy of LSKDestinationDevice(v16 + v29, v31, type metadata accessor for LSKDestinationDevice.Delivery);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
      v33 = *(*(v32 - 8) + 48);
      v34 = v33(v30, 3, v32);
      if (v34 > 1)
      {
        break;
      }

      if (v34)
      {
        v25 = v33(v31, 3, v32) == 1;
        goto LABEL_6;
      }

      outlined init with copy of LSKDestinationDevice(v55, v28, type metadata accessor for LSKDestinationDevice.Delivery);
      v35 = *(v32 + 48);
      v36 = *(v28 + v35 + 8);
      v46 = *(v28 + v35);
      v47 = v36;
      if (v33(v31, 3, v32))
      {

        (*v48)(v28, v51);
LABEL_36:
        outlined destroy of (LSKDestinationDevice.Delivery, LSKDestinationDevice.Delivery)(v55);
        goto LABEL_39;
      }

      v38 = *(v31 + v35);
      v37 = *(v31 + v35 + 8);
      v39 = v51;
      (*v45)(v50, v31, v51);
      v40 = static Date.== infix(_:_:)();
      v41 = *v48;
      (*v48)(v28, v39);
      if ((v40 & 1) == 0)
      {
        v41(v50, v51);

LABEL_38:
        outlined destroy of LSKDestinationDevice(v55, type metadata accessor for LSKDestinationDevice.Delivery);
        goto LABEL_39;
      }

      v10 = v28;
      if (v46 == v38 && v47 == v37)
      {

        v41(v50, v51);
      }

      else
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v41(v50, v51);
        if ((v42 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

LABEL_8:
      outlined destroy of LSKDestinationDevice(v55, type metadata accessor for LSKDestinationDevice.Delivery);
      outlined destroy of LSKDestinationDevice(v16, type metadata accessor for LSKDestinationDevice);
      outlined destroy of LSKDestinationDevice(v19, type metadata accessor for LSKDestinationDevice);
      v23 += v49;
      v22 = v54 + v49;
      if (!--v20)
      {
        return 1;
      }
    }

    if (v34 == 2)
    {
      v25 = v33(v31, 3, v32) == 2;
    }

    else
    {
      v25 = v33(v31, 3, v32) == 3;
    }

LABEL_6:
    v10 = v28;
    if (!v25)
    {
      goto LABEL_36;
    }

    goto LABEL_8;
  }

  return 1;
}

uint64_t LSKPublishedStatus.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t LSKPublishedStatus.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x73656369766564;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance LSKPublishedStatus<A>.CodingKeys(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return static LSKLocalStatusObservation.CodingKeys.== infix(_:_:)(*a1, *a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LSKPublishedStatus<A>.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return LSKLocalStatusObservation.CodingKeys.hashValue.getter(*v1);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LSKPublishedStatus<A>.CodingKeys(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return LSKLocalStatusObservation.CodingKeys.hash(into:)(a1, *v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSKPublishedStatus<A>.CodingKeys(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  LSKLocalStatusObservation.CodingKeys.hash(into:)(v9, *v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LSKPublishedStatus<A>.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return LSKPublishedStatus.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKPublishedStatus<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = LSKPublishedStatus.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance LSKPublishedStatus<A>.CodingKeys@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = specialized LSKPublishedStatus.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKPublishedStatus<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKPublishedStatus<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LSKPublishedStatus.encode(to:)(void *a1, uint64_t a2)
{
  v18[0] = a2;
  v3 = *(a2 + 16);
  v20 = *(a2 + 24);
  v22 = v3;
  v23 = v20;
  v19 = *(a2 + 32);
  v24 = v19;
  type metadata accessor for LSKPublishedStatus.CodingKeys();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v4;
  v11 = v18[1];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  LOBYTE(v22) = *v11;
  v23 = v12;
  *&v24 = v13;
  v25 = 0;
  *&v19 = v3;
  type metadata accessor for LSKKey();

  swift_getWitnessTable();
  v14 = v21;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
  }

  else
  {

    v15 = v18[0];
    v16 = *(v18[0] + 52);
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v11 + *(v15 + 56));
    v25 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14LocalStatusKit20LSKDestinationDeviceVGMd, &_sSay14LocalStatusKit20LSKDestinationDeviceVGMR);
    lazy protocol witness table accessor for type [LSKDestinationDevice] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKDestinationDevice] and conformance <A> [A], &lazy protocol witness table cache variable for type LSKDestinationDevice and conformance LSKDestinationDevice);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v10);
}

uint64_t LSKPublishedStatus.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a6;
  v11 = type metadata accessor for Optional();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v34 = &v30 - v13;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  type metadata accessor for LSKPublishedStatus.CodingKeys();
  swift_getWitnessTable();
  v40 = type metadata accessor for KeyedDecodingContainer();
  v37 = *(v40 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v16 = &v30 - v15;
  v38 = a2;
  v42 = a2;
  v43 = a3;
  v35 = a4;
  v36 = a3;
  v44 = a4;
  v45 = a5;
  v17 = type metadata accessor for LSKPublishedStatus();
  v30 = *(v17 - 8);
  v18 = *(v30 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v30 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v39 = v16;
  v22 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v34;
  type metadata accessor for LSKKey();
  v46 = 0;
  swift_getWitnessTable();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v43;
  v25 = v44;
  *v20 = v42;
  *(v20 + 1) = v24;
  *(v20 + 2) = v25;
  LOBYTE(v42) = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v32 + 32))(&v20[*(v17 + 52)], v23, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14LocalStatusKit20LSKDestinationDeviceVGMd, &_sSay14LocalStatusKit20LSKDestinationDeviceVGMR);
  v41 = v20;
  v46 = 2;
  lazy protocol witness table accessor for type [LSKDestinationDevice] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKDestinationDevice] and conformance <A> [A], &lazy protocol witness table cache variable for type LSKDestinationDevice and conformance LSKDestinationDevice);
  v26 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v37 + 8))(v26, v40);
  v27 = v41;
  *&v41[*(v17 + 56)] = v42;
  v28 = v30;
  (*(v30 + 16))(v31, v27, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v28 + 8))(v27, v17);
}

uint64_t LSKPublishedStatus.debugDescription.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LSKDestinationDevice(0);
  v71 = *(v4 - 8);
  v5 = *(v71 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v70 - v13;
  v15 = *(v8 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, &v2[*(a1 + 52)], v9);
  if ((*(v15 + 48))(v14, 1, v8) == 1)
  {
    (*(v10 + 8))(v14, v9);
    v19 = 0xE500000000000000;
    v20 = 0x3E6C696E3CLL;
  }

  else
  {
    (*(v15 + 32))(v18, v14, v8);
    v75 = 0;
    v76 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v20 = v75;
    v19 = v76;
    (*(v15 + 8))(v18, v8);
  }

  v75 = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v75 = 0x203A6E69616D6F64;
  v76 = 0xE800000000000000;
  v21 = 0xD000000000000021;
  v22 = *v2;
  v23 = "LSKTargetDeviceFlags";
  v24 = "com.apple.chrono";
  v25 = 0xD000000000000019;
  v26 = "com.apple.personalHotspot";
  v27 = 0xD000000000000014;
  if (v22 != 3)
  {
    v27 = 0xD00000000000002FLL;
    v26 = "com.apple.regulatory";
  }

  if (v22 != 2)
  {
    v25 = v27;
    v24 = v26;
  }

  if (*v2)
  {
    v21 = 0xD000000000000010;
    v23 = "kit.atDeskTesting";
  }

  if (*v2 <= 1u)
  {
    v28 = v21;
  }

  else
  {
    v28 = v25;
  }

  if (*v2 <= 1u)
  {
    v29 = v23;
  }

  else
  {
    v29 = v24;
  }

  MEMORY[0x259C5B730](v28, v29 | 0x8000000000000000);

  MEMORY[0x259C5B730](0x203A656D616E20, 0xE700000000000000);
  MEMORY[0x259C5B730](*(v2 + 1), *(v2 + 2));
  MEMORY[0x259C5B730](0x203A65756C617620, 0xE900000000000060);
  MEMORY[0x259C5B730](v20, v19);

  MEMORY[0x259C5B730](0x6563697665642060, 0xEC0000007B203A73);
  v30 = v75;
  v31 = v76;
  v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  v35 = v34 + 1;
  if (v34 >= v33 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
  }

  *(v32 + 2) = v35;
  v36 = &v32[16 * v34];
  *(v36 + 4) = v30;
  *(v36 + 5) = v31;
  if (*(*&v2[*(a1 + 56)] + 16))
  {
    v75 = *&v2[*(a1 + 56)];

    specialized MutableCollection<>.sort(by:)(&v75);
    v37 = *(v75 + 16);
    if (v37)
    {
      v38 = (v75 + ((*(v71 + 80) + 32) & ~*(v71 + 80)));
      v72 = *(v4 + 28);
      v39 = *(v71 + 72);
      v70 = v75;
      v71 = v39;
      do
      {
        outlined init with copy of LSKDestinationDevice(v38, v7, type metadata accessor for LSKDestinationDevice);
        v75 = 8224;
        v76 = 0xE200000000000000;
        v73 = 0;
        v74 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);
        v40 = LSKDestinationDevice.Delivery.description.getter();
        v42 = v41;

        v73 = v40;
        v74 = v42;
        MEMORY[0x259C5B730](8250, 0xE200000000000000);
        v43 = *v7;
        v44 = v7[1];

        v46 = specialized Collection.prefix(_:)(8, v43, v44, v45);
        v48 = v47;
        v50 = v49;
        v52 = v51;

        v53 = MEMORY[0x259C5B700](v46, v48, v50, v52);
        v55 = v54;

        MEMORY[0x259C5B730](v53, v55);

        MEMORY[0x259C5B730](0x22206D4E20, 0xE500000000000000);
        MEMORY[0x259C5B730](v7[2], v7[3]);
        MEMORY[0x259C5B730](0x20644D2022, 0xE500000000000000);
        MEMORY[0x259C5B730](v7[4], v7[5]);
        v56 = v73;
        v57 = v74;
        outlined destroy of LSKDestinationDevice(v7, type metadata accessor for LSKDestinationDevice);
        MEMORY[0x259C5B730](v56, v57);

        v58 = v75;
        v59 = v76;
        v61 = *(v32 + 2);
        v60 = *(v32 + 3);
        if (v61 >= v60 >> 1)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v32);
        }

        *(v32 + 2) = v61 + 1;
        v62 = &v32[16 * v61];
        *(v62 + 4) = v58;
        *(v62 + 5) = v59;
        v38 += v71;
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v63 = *(v32 + 3);
    if ((v34 + 2) > (v63 >> 1))
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v34 + 2, 1, v32);
    }

    *(v32 + 2) = v34 + 2;
    v64 = &v32[16 * v35];
    strcpy(v64 + 32, "  <No devices>");
    v64[47] = -18;
  }

  v66 = *(v32 + 2);
  v65 = *(v32 + 3);
  if (v66 >= v65 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v32);
  }

  *(v32 + 2) = v66 + 1;
  v67 = &v32[16 * v66];
  *(v67 + 4) = 125;
  *(v67 + 5) = 0xE100000000000000;
  v75 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v68 = BidirectionalCollection<>.joined(separator:)();

  return v68;
}

BOOL closure #1 in LSKPublishedStatus.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for LSKDestinationDevice(0);
  outlined init with copy of LSKDestinationDevice(a1 + *(v11 + 28), v10, type metadata accessor for LSKDestinationDevice.Delivery);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v10, 3, v12);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v17 = 3;
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v14)
  {
    v17 = 2;
  }

  else
  {
    v15 = *&v10[*(v12 + 48) + 8];

    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 8))(v10, v16);
    v17 = 1;
  }

  outlined init with copy of LSKDestinationDevice(a2 + *(v11 + 28), v8, type metadata accessor for LSKDestinationDevice.Delivery);
  v18 = v13(v8, 3, v12);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v21 = 3;
    }

    else
    {
      v21 = 0;
    }
  }

  else if (v18)
  {
    v21 = 2;
  }

  else
  {
    v19 = *&v8[*(v12 + 48) + 8];

    v20 = type metadata accessor for Date();
    (*(*(v20 - 8) + 8))(v8, v20);
    v21 = 1;
  }

  return v17 < v21;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type [LSKDestinationDevice] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14LocalStatusKit20LSKDestinationDeviceVGMd, &_sSay14LocalStatusKit20LSKDestinationDeviceVGMR);
    lazy protocol witness table accessor for type LSKDestinationDevice and conformance LSKDestinationDevice(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LSKDestinationDevice and conformance LSKDestinationDevice(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LSKDestinationDevice(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR);
  v10 = *(type metadata accessor for LSKDestinationDevice(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for LSKDestinationDevice(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *(type metadata accessor for LSKDestinationDevice(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LSKDestinationDevice(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LSKDestinationDevice(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v59 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v45 - v12;
  v13 = type metadata accessor for LSKDestinationDevice(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v60 = &v45 - v18;
  result = MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  v47 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v20 + 72);
    v52 = v59 + 8;
    v53 = v58 + 8;
    v25 = v23 + v24 * (a3 - 1);
    v54 = -v24;
    v55 = v23;
    v26 = a1 - a3;
    v46 = v24;
    v27 = v23 + v24 * a3;
    v57 = &v45 - v21;
LABEL_5:
    v50 = v25;
    v51 = a3;
    v48 = v27;
    v49 = v26;
    v28 = v25;
    while (1)
    {
      outlined init with copy of LSKDestinationDevice(v27, v22, type metadata accessor for LSKDestinationDevice);
      outlined init with copy of LSKDestinationDevice(v28, v60, type metadata accessor for LSKDestinationDevice);
      v29 = v58;
      outlined init with copy of LSKDestinationDevice(&v22[*(v13 + 28)], v58, type metadata accessor for LSKDestinationDevice.Delivery);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
      v31 = *(*(v30 - 8) + 48);
      v32 = v31(v29, 3, v30);
      if (v32 > 1)
      {
        if (v32 == 2)
        {
          v35 = 3;
        }

        else
        {
          v35 = 0;
        }
      }

      else if (v32)
      {
        v35 = 2;
      }

      else
      {
        v33 = *(v53 + *(v30 + 48));

        v34 = type metadata accessor for Date();
        (*(*(v34 - 8) + 8))(v58, v34);
        v35 = 1;
      }

      v36 = v13;
      v37 = v60 + *(v13 + 28);
      v38 = v59;
      outlined init with copy of LSKDestinationDevice(v37, v59, type metadata accessor for LSKDestinationDevice.Delivery);
      v39 = v31(v38, 3, v30);
      if (v39 > 1)
      {
        if (v39 == 2)
        {
          v42 = 3;
        }

        else
        {
          v42 = 0;
        }

        v13 = v36;
        v22 = v57;
      }

      else
      {
        v22 = v57;
        if (v39)
        {
          v42 = 2;
        }

        else
        {
          v40 = *(v52 + *(v30 + 48));

          v41 = type metadata accessor for Date();
          (*(*(v41 - 8) + 8))(v59, v41);
          v42 = 1;
        }

        v13 = v36;
      }

      outlined destroy of LSKDestinationDevice(v60, type metadata accessor for LSKDestinationDevice);
      result = outlined destroy of LSKDestinationDevice(v22, type metadata accessor for LSKDestinationDevice);
      if (v35 >= v42)
      {
LABEL_4:
        a3 = v51 + 1;
        v25 = v50 + v46;
        v26 = v49 - 1;
        v27 = v48 + v46;
        if (v51 + 1 == v47)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v55)
      {
        break;
      }

      v43 = v56;
      outlined init with take of LSKDestinationDevice(v27, v56);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of LSKDestinationDevice(v43, v28);
      v28 += v54;
      v27 += v54;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v145 = a1;
  v7 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v141 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v141 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v141 - v18;
  v20 = type metadata accessor for LSKDestinationDevice(0);
  v157 = *(v20 - 8);
  v21 = *(v157 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v150 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v166 = &v141 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v171 = &v141 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v169 = &v141 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v164 = &v141 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v159 = &v141 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v143 = &v141 - v35;
  result = MEMORY[0x28223BE20](v34);
  v142 = &v141 - v37;
  v38 = a3[1];
  v158 = a3;
  if (v38 < 1)
  {
    v40 = MEMORY[0x277D84F90];
LABEL_124:
    a4 = *v145;
    if (!*v145)
    {
      goto LABEL_164;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v4 = v163;
    if ((result & 1) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_126;
  }

  v39 = 0;
  v147 = v19 + 8;
  v156 = v17;
  v146 = v17 + 8;
  v161 = v14 + 8;
  v40 = MEMORY[0x277D84F90];
  v168 = v11;
  v160 = v11 + 8;
  v144 = a4;
  v167 = v14;
  v154 = v19;
  v170 = v20;
  while (1)
  {
    v41 = v39;
    if (v39 + 1 >= v38)
    {
      v65 = v39 + 1;
    }

    else
    {
      v162 = v38;
      v148 = v39;
      v42 = *a3;
      v43 = *(v157 + 72);
      v4 = *a3 + v43 * (v39 + 1);
      v44 = v142;
      outlined init with copy of LSKDestinationDevice(v4, v142, type metadata accessor for LSKDestinationDevice);
      v165 = v42;
      v45 = v42 + v43 * v148;
      v46 = v143;
      outlined init with copy of LSKDestinationDevice(v45, v143, type metadata accessor for LSKDestinationDevice);
      v47 = v163;
      LODWORD(v155) = closure #1 in LSKPublishedStatus.debugDescription.getter(v44, v46);
      v163 = v47;
      if (v47)
      {
        outlined destroy of LSKDestinationDevice(v46, type metadata accessor for LSKDestinationDevice);
        outlined destroy of LSKDestinationDevice(v44, type metadata accessor for LSKDestinationDevice);
      }

      outlined destroy of LSKDestinationDevice(v46, type metadata accessor for LSKDestinationDevice);
      result = outlined destroy of LSKDestinationDevice(v44, type metadata accessor for LSKDestinationDevice);
      v48 = v148 + 2;
      v49 = v165 + v43 * (v148 + 2);
      v50 = v43;
      v165 = v43;
      do
      {
        if (v162 == v48)
        {
          v65 = v162;
          goto LABEL_26;
        }

        v53 = v159;
        outlined init with copy of LSKDestinationDevice(v49, v159, type metadata accessor for LSKDestinationDevice);
        outlined init with copy of LSKDestinationDevice(v4, v164, type metadata accessor for LSKDestinationDevice);
        outlined init with copy of LSKDestinationDevice(v53 + *(v20 + 28), v19, type metadata accessor for LSKDestinationDevice.Delivery);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
        v55 = *(*(v54 - 8) + 48);
        v56 = v55(v19, 3, v54);
        if (v56 > 1)
        {
          if (v56 == 2)
          {
            v59 = 3;
          }

          else
          {
            v59 = 0;
          }
        }

        else if (v56)
        {
          v59 = 2;
        }

        else
        {
          v57 = *&v147[*(v54 + 48)];

          v58 = type metadata accessor for Date();
          (*(*(v58 - 8) + 8))(v19, v58);
          v59 = 1;
        }

        v60 = v164 + *(v20 + 28);
        v61 = v156;
        outlined init with copy of LSKDestinationDevice(v60, v156, type metadata accessor for LSKDestinationDevice.Delivery);
        v62 = v55(v61, 3, v54);
        if (v62 > 1)
        {
          if (v62 == 2)
          {
            v51 = 3;
          }

          else
          {
            v51 = 0;
          }
        }

        else if (v62)
        {
          v51 = 2;
        }

        else
        {
          v63 = *&v146[*(v54 + 48)];

          v64 = type metadata accessor for Date();
          (*(*(v64 - 8) + 8))(v156, v64);
          v51 = 1;
        }

        v20 = v170;
        a3 = v158;
        outlined destroy of LSKDestinationDevice(v164, type metadata accessor for LSKDestinationDevice);
        result = outlined destroy of LSKDestinationDevice(v159, type metadata accessor for LSKDestinationDevice);
        v52 = v59 >= v51;
        ++v48;
        v50 = v165;
        v49 += v165;
        v4 += v165;
        v19 = v154;
      }

      while (((v155 ^ v52) & 1) != 0);
      v65 = v48 - 1;
LABEL_26:
      a4 = v144;
      v14 = v167;
      v41 = v148;
      if (v155)
      {
        if (v65 < v148)
        {
          goto LABEL_157;
        }

        if (v148 < v65)
        {
          v66 = v50 * (v65 - 1);
          v67 = v65 * v50;
          v162 = v65;
          v4 = v148;
          v68 = v148 * v50;
          do
          {
            if (v4 != --v65)
            {
              v69 = *a3;
              if (!v69)
              {
                goto LABEL_161;
              }

              outlined init with take of LSKDestinationDevice(v69 + v68, v150);
              if (v68 < v66 || v69 + v68 >= v69 + v67)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v68 != v66)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = outlined init with take of LSKDestinationDevice(v150, v69 + v66);
              a3 = v158;
              v50 = v165;
            }

            ++v4;
            v66 -= v50;
            v67 -= v50;
            v68 += v50;
          }

          while (v4 < v65);
          a4 = v144;
          v14 = v167;
          v19 = v154;
          v41 = v148;
          v65 = v162;
        }
      }
    }

    v70 = a3[1];
    if (v65 < v70)
    {
      if (__OFSUB__(v65, v41))
      {
        goto LABEL_154;
      }

      if (v65 - v41 < a4)
      {
        if (__OFADD__(v41, a4))
        {
          goto LABEL_155;
        }

        if (v41 + a4 >= v70)
        {
          a4 = a3[1];
        }

        else
        {
          a4 += v41;
        }

        if (a4 < v41)
        {
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
          v40 = result;
LABEL_126:
          v172 = v40;
          v137 = *(v40 + 2);
          if (v137 >= 2)
          {
            while (1)
            {
              v138 = *a3;
              if (!*a3)
              {
                goto LABEL_162;
              }

              v139 = *&v40[16 * v137];
              a3 = *&v40[16 * v137 + 24];
              specialized _merge<A>(low:mid:high:buffer:by:)(v138 + *(v157 + 72) * v139, v138 + *(v157 + 72) * *&v40[16 * v137 + 16], v138 + *(v157 + 72) * a3, a4);
              if (v4)
              {
              }

              if (a3 < v139)
              {
                goto LABEL_151;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
              }

              if (v137 - 2 >= *(v40 + 2))
              {
                goto LABEL_152;
              }

              v140 = &v40[16 * v137];
              *v140 = v139;
              *(v140 + 1) = a3;
              v172 = v40;
              result = specialized Array.remove(at:)(v137 - 1);
              v40 = v172;
              v137 = *(v172 + 2);
              a3 = v158;
              if (v137 <= 1)
              {
              }
            }
          }
        }

        if (v65 != a4)
        {
          break;
        }
      }
    }

    a4 = v65;
    if (v65 < v41)
    {
      goto LABEL_153;
    }

LABEL_50:
    result = swift_isUniquelyReferenced_nonNull_native();
    v151 = a4;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
      v40 = result;
    }

    v72 = *(v40 + 2);
    v71 = *(v40 + 3);
    v4 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v40);
      v40 = result;
    }

    *(v40 + 2) = v4;
    v73 = &v40[16 * v72];
    v74 = v151;
    *(v73 + 4) = v41;
    *(v73 + 5) = v74;
    v165 = *v145;
    if (!v165)
    {
      goto LABEL_163;
    }

    if (v72)
    {
      while (1)
      {
        a4 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v75 = *(v40 + 4);
          v76 = *(v40 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_69:
          if (v78)
          {
            goto LABEL_142;
          }

          v91 = &v40[16 * v4];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_145;
          }

          v97 = &v40[16 * a4 + 32];
          v99 = *v97;
          v98 = *(v97 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_148;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_149;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              a4 = v4 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v101 = &v40[16 * v4];
        v103 = *v101;
        v102 = *(v101 + 1);
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_83:
        if (v96)
        {
          goto LABEL_144;
        }

        v104 = &v40[16 * a4];
        v106 = *(v104 + 4);
        v105 = *(v104 + 5);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_147;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_90:
        v112 = a4 - 1;
        if (a4 - 1 >= v4)
        {
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (!*a3)
        {
          goto LABEL_160;
        }

        v113 = *&v40[16 * v112 + 32];
        v114 = *&v40[16 * a4 + 40];
        v115 = v163;
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v157 + 72) * v113, *a3 + *(v157 + 72) * *&v40[16 * a4 + 32], *a3 + *(v157 + 72) * v114, v165);
        v163 = v115;
        if (v115)
        {
        }

        if (v114 < v113)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
        }

        if (v112 >= *(v40 + 2))
        {
          goto LABEL_139;
        }

        v116 = &v40[16 * v112];
        *(v116 + 4) = v113;
        *(v116 + 5) = v114;
        v172 = v40;
        result = specialized Array.remove(at:)(a4);
        v40 = v172;
        v4 = *(v172 + 2);
        v14 = v167;
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = &v40[16 * v4 + 32];
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_140;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_141;
      }

      v86 = &v40[16 * v4];
      v88 = *v86;
      v87 = *(v86 + 1);
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_143;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_146;
      }

      if (v90 >= v82)
      {
        v108 = &v40[16 * a4 + 32];
        v110 = *v108;
        v109 = *(v108 + 1);
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_150;
        }

        if (v77 < v111)
        {
          a4 = v4 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v38 = a3[1];
    v39 = v151;
    a4 = v144;
    if (v151 >= v38)
    {
      goto LABEL_124;
    }
  }

  v141 = v40;
  v117 = *a3;
  v118 = *(v157 + 72);
  v4 = *a3 + v118 * (v65 - 1);
  v119 = -v118;
  v148 = v41;
  v120 = v41 - v65;
  v165 = v117;
  v149 = v118;
  v121 = v117 + v65 * v118;
  v151 = a4;
LABEL_101:
  v162 = v65;
  v152 = v121;
  v153 = v120;
  v122 = v121;
  v155 = v4;
  while (1)
  {
    v123 = v169;
    outlined init with copy of LSKDestinationDevice(v122, v169, type metadata accessor for LSKDestinationDevice);
    outlined init with copy of LSKDestinationDevice(v4, v171, type metadata accessor for LSKDestinationDevice);
    outlined init with copy of LSKDestinationDevice(v123 + *(v20 + 28), v14, type metadata accessor for LSKDestinationDevice.Delivery);
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
    v125 = *(*(v124 - 8) + 48);
    v126 = v125(v14, 3, v124);
    if (v126 > 1)
    {
      if (v126 == 2)
      {
        v129 = 3;
      }

      else
      {
        v129 = 0;
      }
    }

    else if (v126)
    {
      v129 = 2;
    }

    else
    {
      v127 = *&v161[*(v124 + 48)];

      v128 = type metadata accessor for Date();
      (*(*(v128 - 8) + 8))(v14, v128);
      v129 = 1;
    }

    v130 = v168;
    outlined init with copy of LSKDestinationDevice(v171 + *(v170 + 28), v168, type metadata accessor for LSKDestinationDevice.Delivery);
    v131 = v125(v130, 3, v124);
    if (v131 > 1)
    {
      if (v131 == 2)
      {
        v134 = 3;
      }

      else
      {
        v134 = 0;
      }
    }

    else if (v131)
    {
      v134 = 2;
    }

    else
    {
      v132 = *&v160[*(v124 + 48)];

      v133 = type metadata accessor for Date();
      (*(*(v133 - 8) + 8))(v168, v133);
      v134 = 1;
    }

    v14 = v167;
    v20 = v170;
    outlined destroy of LSKDestinationDevice(v171, type metadata accessor for LSKDestinationDevice);
    result = outlined destroy of LSKDestinationDevice(v169, type metadata accessor for LSKDestinationDevice);
    if (v129 >= v134)
    {
LABEL_100:
      v65 = v162 + 1;
      v4 = v155 + v149;
      v120 = v153 - 1;
      v121 = v152 + v149;
      a4 = v151;
      if (v162 + 1 != v151)
      {
        goto LABEL_101;
      }

      a3 = v158;
      v40 = v141;
      v19 = v154;
      v41 = v148;
      if (v151 < v148)
      {
        goto LABEL_153;
      }

      goto LABEL_50;
    }

    if (!v165)
    {
      break;
    }

    v135 = v166;
    outlined init with take of LSKDestinationDevice(v122, v166);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of LSKDestinationDevice(v135, v4);
    v4 += v119;
    v122 += v119;
    if (__CFADD__(v120++, 1))
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
  return result;
}