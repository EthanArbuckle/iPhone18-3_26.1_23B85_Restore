unint64_t protocol witness for CodingKey.stringValue.getter in conformance SQLExpression.CodingKeys()
{
  v1 = *v0;
  v2 = 0x79546E7275746572;
  v3 = 0xD000000000000014;
  v4 = 0x73676E69646E6962;
  if (v1 != 3)
  {
    v4 = 7106931;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SQLExpression.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SQLExpression.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SQLExpression.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SQLExpression.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SQLExpression.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser13SQLExpressionV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser13SQLExpressionV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 40);
  v12 = *(v3 + 48);
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v16) = *(v3 + 56);
    v17 = 1;
    lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + 64);
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser19AggregationFunctionVGMd, &_sSay14BiomeSQLParser19AggregationFunctionVGMR);
    lazy protocol witness table accessor for type [AggregationFunction] and conformance <A> [A](&lazy protocol witness table cache variable for type [AggregationFunction] and conformance <A> [A], &_sSay14BiomeSQLParser19AggregationFunctionVGMd, &_sSay14BiomeSQLParser19AggregationFunctionVGMR, lazy protocol witness table accessor for type AggregationFunction and conformance AggregationFunction);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + 72);
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser7BindingVGMd, &_sSay14BiomeSQLParser7BindingVGMR);
    lazy protocol witness table accessor for type [AggregationFunction] and conformance <A> [A](&lazy protocol witness table cache variable for type [Binding] and conformance <A> [A], &_sSay14BiomeSQLParser7BindingVGMd, &_sSay14BiomeSQLParser7BindingVGMR, lazy protocol witness table accessor for type Binding and conformance Binding);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + 80);
    v14 = *(v3 + 88);
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType()
{
  result = lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType;
  if (!lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType;
  if (!lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType;
  if (!lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType;
  if (!lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction and conformance AggregationFunction()
{
  result = lazy protocol witness table cache variable for type AggregationFunction and conformance AggregationFunction;
  if (!lazy protocol witness table cache variable for type AggregationFunction and conformance AggregationFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction and conformance AggregationFunction);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AggregationFunction] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Binding and conformance Binding()
{
  result = lazy protocol witness table cache variable for type Binding and conformance Binding;
  if (!lazy protocol witness table cache variable for type Binding and conformance Binding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Binding and conformance Binding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Binding and conformance Binding;
  if (!lazy protocol witness table cache variable for type Binding and conformance Binding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Binding and conformance Binding);
  }

  return result;
}

uint64_t static SQLExpression.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (specialized == infix<A>(_:_:)(*(a1 + 56), *(a2 + 56)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser19AggregationFunctionV_Tt1g5(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 72);
  v6 = *(a2 + 72);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser7BindingV_Tt1g5(v5, v6);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SQLExpression(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (specialized == infix<A>(_:_:)(*(a1 + 56), *(a2 + 56)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser19AggregationFunctionV_Tt1g5(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 72);
  v6 = *(a2 + 72);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser7BindingV_Tt1g5(v5, v6);
}

uint64_t Binding.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Binding.CodingKeys()
{
  if (*v0)
  {
    result = 0x6570795461746164;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Binding.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Binding.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Binding.CodingKeys and conformance Binding.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Binding.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Binding.CodingKeys and conformance Binding.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Binding.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser7BindingV10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser7BindingV10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type Binding.CodingKeys and conformance Binding.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v13 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type Binding.CodingKeys and conformance Binding.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys;
  if (!lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys;
  if (!lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys;
  if (!lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys;
  if (!lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys);
  }

  return result;
}

uint64_t Binding.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  String.hash(into:)();
  String.hash(into:)();
}

Swift::Int Binding.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Binding()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  Hasher.init(_seed:)();
  Binding.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Binding()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  Hasher.init(_seed:)();
  Binding.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static Binding.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Binding(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSiG_SSs5NeverOTg5181_s14BiomeSQLParser14ColumnResolver33_B787555787B9EFBBEFB0C9C5225A4FB7LLV7schemasADSayAA6SchemaVG_tKcfcS2S3key_Si5valuet_tcfu_32a168a102879cc1a6a91172b0770f0c91SSAI_SiAJtSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v25 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v24 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v24;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = outlined consume of [String : Int].Index._Variant(v7, v25, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : Int].Index._Variant(v7, v25, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized SQLExpressionNode.sql()()
{
  v1 = v0;
  v2 = SQLExpressionAExpr.expressionString.getter();
  v4 = v3;
  v30 = v2;
  v31 = v3;
  lazy protocol witness table accessor for type String and conformance String();
  v5 = 0;
  v6 = 0;
  lazy protocol witness table accessor for type String and conformance String();
  while (1)
  {
    v28 = v2;
    v29 = v4;
    v26 = 63;
    v27 = 0xE100000000000000;
    BidirectionalCollection<>.firstRange<A>(of:)();
    if (v23)
    {
      return v2;
    }

    outlined init with copy of PgQuery_Alias?(v1, v22, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
    v7 = v24;
    if (v24)
    {
      v8 = v25;
      __swift_project_boxed_opaque_existential_0(v22, v24);
      v9 = (*(v8 + 32))(v7, v8);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      outlined destroy of URL?(v22, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
      v9 = MEMORY[0x277D84F90];
    }

    v10 = v1[8];
    v11 = v1[9];
    __swift_project_boxed_opaque_existential_0(v1 + 5, v10);
    result = (*(v11 + 32))(v10, v11);
    v13 = *(result + 16);
    v14 = *(v9 + 16);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    v16 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= *(v9 + 24) >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v19 = v14 + v13;
      }

      else
      {
        v19 = v14;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v19, 1, v9);
      v9 = result;
      if (*(v16 + 16))
      {
LABEL_10:
        if ((*(v9 + 24) >> 1) - *(v9 + 16) < v13)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        v17 = *(v9 + 16);
        if (v13)
        {
          v18 = __OFADD__(v17, v13);
          v17 += v13;
          if (v18)
          {
            goto LABEL_28;
          }

          *(v9 + 16) = v17;
        }

        if (v6 >= v17)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }
    }

    if (v13)
    {
      goto LABEL_25;
    }

    if (v6 >= *(v9 + 16))
    {
      goto LABEL_26;
    }

LABEL_22:
    v20 = *(v9 + v5 + 32);
    v21 = *(v9 + v5 + 40);

    v22[0] = v20;
    v22[1] = v21;
    String.replaceSubrange<A>(_:with:)();

    ++v6;
    v2 = v30;
    v4 = v31;
    v5 += 24;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  v12 = v3;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v4 = 0;
  for (i = 0; ; ++i)
  {
    BidirectionalCollection<>.firstRange<A>(of:)();
    if (v11)
    {
      return v3;
    }

    v6 = v0[3];
    v7 = v0[4];
    __swift_project_boxed_opaque_existential_0(v0, v6);
    result = (*(v7 + 32))(v6, v7);
    if (i >= *(result + 16))
    {
      break;
    }

    v10 = *(result + v4 + 32);
    v9 = *(result + v4 + 40);

    String.replaceSubrange<A>(_:with:)();

    v3 = v12;
    v4 += 24;
  }

  __break(1u);
  return result;
}

{
  v1 = SQLExpressionNullTest.expressionString.getter();
  v10 = v1;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v2 = 0;
  for (i = 0; ; ++i)
  {
    BidirectionalCollection<>.firstRange<A>(of:)();
    if (v9)
    {
      return v1;
    }

    v4 = v0[3];
    v5 = v0[4];
    __swift_project_boxed_opaque_existential_0(v0, v4);
    result = (*(v5 + 32))(v4, v5);
    if (i >= *(result + 16))
    {
      break;
    }

    v8 = *(result + v2 + 32);
    v7 = *(result + v2 + 40);

    String.replaceSubrange<A>(_:with:)();

    v1 = v10;
    v2 += 24;
  }

  __break(1u);
  return result;
}

{
  v1 = *v0;
  v10 = *v0;
  v11 = v0[1];
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();

  v2 = 0;
  for (i = 0; ; ++i)
  {
    result = BidirectionalCollection<>.firstRange<A>(of:)();
    if (v9)
    {
      return v1;
    }

    v5 = v0[4];
    if (i >= *(v5 + 16))
    {
      break;
    }

    v6 = v5 + v2;
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
    String.replaceSubrange<A>(_:with:)();
    v1 = v10;
    v2 += 24;
  }

  __break(1u);
  return result;
}

{
  v1 = *v0;
  v10 = *v0;
  v11 = v0[1];
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();

  v2 = 0;
  for (i = 0; ; ++i)
  {
    result = BidirectionalCollection<>.firstRange<A>(of:)();
    if (v9)
    {
      return v1;
    }

    v5 = v0[3];
    if (i >= *(v5 + 16))
    {
      break;
    }

    v6 = v5 + v2;
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
    String.replaceSubrange<A>(_:with:)();
    v1 = v10;
    v2 += 24;
  }

  __break(1u);
  return result;
}

{
  v10 = *v0;
  lazy protocol witness table accessor for type String and conformance String();
  v1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  MEMORY[0x259C32B90](v1);

  MEMORY[0x259C32B90](39, 0xE100000000000000);
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v2 = 0;
  for (i = 0; ; ++i)
  {
    result = BidirectionalCollection<>.firstRange<A>(of:)();
    if (v9)
    {
      return 39;
    }

    v5 = *(v0 + 4);
    if (i >= *(v5 + 16))
    {
      break;
    }

    v6 = v5 + v2;
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
    String.replaceSubrange<A>(_:with:)();
    v2 += 24;
  }

  __break(1u);
  return result;
}

{
  v2 = *(v0 + 208);
  v16 = *(v0 + 200);
  v1 = v16;
  v17 = v2;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();

  v12 = v16;
  v13 = v2;
  v10 = 63;
  v11 = 0xE100000000000000;
  BidirectionalCollection<>.firstRange<A>(of:)();
  if (v15)
  {
    return v1;
  }

  v3 = AggregationFunction.name()();
  v4 = *(v0 + 193);
  v8 = v3;
  v9 = v4;

  outlined destroy of Binding(&v8);
  v14 = v3;
  String.replaceSubrange<A>(_:with:)();

  v1 = v16;
  v12 = v16;
  v13 = v17;
  v10 = 63;
  v11 = 0xE100000000000000;
  BidirectionalCollection<>.firstRange<A>(of:)();
  if (v15 == 1)
  {
    return v1;
  }

  v6 = AggregationFunction.name()();
  result = v6._countAndFlagsBits;
  v7 = *(v0 + 193);
  v8 = v6;
  v9 = v7;
  __break(1u);
  return result;
}

uint64_t specialized SQLExpressionNode.sql()(uint64_t result, uint64_t a2, char a3)
{
  v3 = result;
  if ((a3 & 1) == 0)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
    goto LABEL_22;
  }

  v4 = a2;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v5 = 0xE000000000000000;
      goto LABEL_22;
    }

    v61 = 40;
    v62 = 0xE100000000000000;
    v17 = *(result + 16);
    v7 = MEMORY[0x277D84F90];
    if (v17)
    {
      v59 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
      v7 = v59;
      v18 = v3 + 32;
      do
      {
        outlined init with copy of VirtualTable.Module(v18, &v52);
        v19 = v55;
        v20 = v56;
        __swift_project_boxed_opaque_existential_0(&v52, v55);
        v21 = (*(v20 + 8))(v19, v20);
        v23 = v22;
        __swift_destroy_boxed_opaque_existential_0(&v52);
        v59 = v7;
        v25 = *(v7 + 16);
        v24 = *(v7 + 24);
        if (v25 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
          v7 = v59;
        }

        *(v7 + 16) = v25 + 1;
        v26 = v7 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
        v18 += 40;
        --v17;
      }

      while (v17);
    }

    goto LABEL_21;
  }

  if (a2 == 2)
  {
    v61 = 40;
    v62 = 0xE100000000000000;
    v6 = *(result + 16);
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v59 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      v7 = v59;
      v8 = v3 + 32;
      do
      {
        outlined init with copy of VirtualTable.Module(v8, &v52);
        v9 = v55;
        v10 = v56;
        __swift_project_boxed_opaque_existential_0(&v52, v55);
        v11 = (*(v10 + 8))(v9, v10);
        v13 = v12;
        __swift_destroy_boxed_opaque_existential_0(&v52);
        v59 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1);
          v7 = v59;
        }

        *(v7 + 16) = v15 + 1;
        v16 = v7 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
        v8 += 40;
        --v6;
      }

      while (v6);
    }

LABEL_21:
    v52 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v30 = BidirectionalCollection<>.joined(separator:)();
    v32 = v31;

    MEMORY[0x259C32B90](v30, v32);

    MEMORY[0x259C32B90](41, 0xE100000000000000);
    v4 = v61;
    v5 = v62;
    goto LABEL_22;
  }

  v52 = 0x20544F4E28;
  v53 = 0xE500000000000000;
  if (!*(result + 16))
  {
    goto LABEL_50;
  }

  v27 = *(result + 56);
  v28 = *(result + 64);
  __swift_project_boxed_opaque_existential_0((result + 32), v27);
  v29 = (*(v28 + 8))(v27, v28);
  MEMORY[0x259C32B90](v29);

  MEMORY[0x259C32B90](41, 0xE100000000000000);
  v4 = v52;
  v5 = v53;
LABEL_22:
  v61 = v4;
  v62 = v5;
  lazy protocol witness table accessor for type String and conformance String();
  v33 = 0;
  v50 = v3 + 32;
  lazy protocol witness table accessor for type String and conformance String();
  for (i = v3; ; v3 = i)
  {
    v59 = v4;
    v60 = v5;
    v57 = 63;
    v58 = 0xE100000000000000;
    result = BidirectionalCollection<>.firstRange<A>(of:)();
    if (v54)
    {
      return v4;
    }

    v34 = *(v3 + 16);
    if (v34)
    {
      break;
    }

    v36 = MEMORY[0x277D84F90];
LABEL_42:
    if (v33 >= *(v36 + 16))
    {
      goto LABEL_49;
    }

    v47 = v36 + 24 * v33;
    v49 = *(v47 + 32);
    v48 = *(v47 + 40);

    v52 = v49;
    v53 = v48;
    String.replaceSubrange<A>(_:with:)();

    ++v33;
    v4 = v61;
    v5 = v62;
  }

  v35 = v50;
  v36 = MEMORY[0x277D84F90];
  while (1)
  {
    outlined init with copy of VirtualTable.Module(v35, &v52);
    v38 = v55;
    v37 = v56;
    __swift_project_boxed_opaque_existential_0(&v52, v55);
    v39 = (*(v37 + 32))(v38, v37);
    result = __swift_destroy_boxed_opaque_existential_0(&v52);
    v40 = *(v39 + 16);
    v41 = *(v36 + 16);
    v42 = v41 + v40;
    if (__OFADD__(v41, v40))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v42 <= *(v36 + 24) >> 1)
    {
      if (*(v39 + 16))
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v41 <= v42)
      {
        v43 = v41 + v40;
      }

      else
      {
        v43 = v41;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v43, 1, v36);
      v36 = result;
      if (*(v39 + 16))
      {
LABEL_37:
        if ((*(v36 + 24) >> 1) - *(v36 + 16) < v40)
        {
          goto LABEL_47;
        }

        swift_arrayInitWithCopy();

        if (v40)
        {
          v44 = *(v36 + 16);
          v45 = __OFADD__(v44, v40);
          v46 = v44 + v40;
          if (v45)
          {
            goto LABEL_48;
          }

          *(v36 + 16) = v46;
        }

        goto LABEL_27;
      }
    }

    if (v40)
    {
      goto LABEL_46;
    }

LABEL_27:
    v35 += 40;
    if (!--v34)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t specialized SQLExpressionNode.sql()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v4;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v5 = 0;
  for (i = (a3 + 40); ; i += 3)
  {
    result = BidirectionalCollection<>.firstRange<A>(of:)();
    if (v10)
    {
      return v4;
    }

    if (v5 >= *(a3 + 16))
    {
      break;
    }

    v8 = *(i - 1);
    v9 = *i;
    String.replaceSubrange<A>(_:with:)();
    ++v5;
    v4 = v11;
  }

  __break(1u);
  return result;
}

uint64_t specialized SQLExpressionNode.sql()(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x277D84F90];
  v41 = v4;
  if (v4)
  {
    v48 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v48;
    v6 = a2 + 32;
    v7 = v4;
    do
    {
      outlined init with copy of VirtualTable.Module(v6, &v43);
      v8 = v46;
      v9 = v47;
      __swift_project_boxed_opaque_existential_0(&v43, v46);
      v10 = (*(v9 + 8))(v8, v9);
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_0(&v43);
      v48 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1);
        v5 = v48;
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v6 += 40;
      --v7;
    }

    while (v7);
    v4 = v41;
  }

  v43 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;

  LOBYTE(v48) = a1;
  v43 = SQLFunction.rawValue.getter();
  v44 = v19;
  MEMORY[0x259C32B90](40, 0xE100000000000000);
  MEMORY[0x259C32B90](v16, v18);

  MEMORY[0x259C32B90](41, 0xE100000000000000);
  v20 = v43;
  v48 = v43;
  v49 = v44;
  lazy protocol witness table accessor for type String and conformance String();
  v21 = lazy protocol witness table accessor for type String and conformance String();
  v42 = 0;
  v40 = a2 + 32;
  while (1)
  {
    v22 = v21;
    result = BidirectionalCollection<>.firstRange<A>(of:)();
    if (v45)
    {
      return v20;
    }

    if (v4)
    {
      break;
    }

    v26 = MEMORY[0x277D84F90];
LABEL_28:
    if (v42 >= *(v26 + 16))
    {
      goto LABEL_35;
    }

    v37 = v26 + 24 * v42;
    v39 = *(v37 + 32);
    v38 = *(v37 + 40);

    v43 = v39;
    v44 = v38;
    String.replaceSubrange<A>(_:with:)();

    v21 = v22;
    ++v42;
    v20 = v48;
    v4 = v41;
  }

  v24 = v40;
  v25 = v4;
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    outlined init with copy of VirtualTable.Module(v24, &v43);
    v27 = v46;
    v28 = v47;
    __swift_project_boxed_opaque_existential_0(&v43, v46);
    result = (*(v28 + 32))(v27, v28);
    v29 = *(result + 16);
    v30 = *(v26 + 16);
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      break;
    }

    v32 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v31 <= *(v26 + 24) >> 1)
    {
      if (*(v32 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v30 <= v31)
      {
        v33 = v30 + v29;
      }

      else
      {
        v33 = v30;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v33, 1, v26);
      v26 = result;
      if (*(v32 + 16))
      {
LABEL_22:
        if ((*(v26 + 24) >> 1) - *(v26 + 16) < v29)
        {
          goto LABEL_33;
        }

        swift_arrayInitWithCopy();

        if (v29)
        {
          v34 = *(v26 + 16);
          v35 = __OFADD__(v34, v29);
          v36 = v34 + v29;
          if (v35)
          {
            goto LABEL_34;
          }

          *(v26 + 16) = v36;
        }

        goto LABEL_12;
      }
    }

    if (v29)
    {
      goto LABEL_32;
    }

LABEL_12:
    result = __swift_destroy_boxed_opaque_existential_0(&v43);
    v24 += 40;
    if (!--v25)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t SQLExpressionConstString.expressionString.getter()
{
  v3 = *v0;
  v4 = v0[1];
  lazy protocol witness table accessor for type String and conformance String();
  v1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  MEMORY[0x259C32B90](v1);

  MEMORY[0x259C32B90](39, 0xE100000000000000);
  return 39;
}

uint64_t protocol witness for SQLExpressionNode.sql() in conformance SQLExpressionConstString()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return specialized SQLExpressionNode.sql()();
}

uint64_t protocol witness for SQLExpressionNode.sql() in conformance SQLExpressionColumnRef()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return specialized SQLExpressionNode.sql()();
}

uint64_t SQLExpressionAExpr.init(expr:schemas:columnResolver:tokenInformation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v115 = a3;
  v116 = a5;
  v113 = a2;
  v114 = a4;
  v108 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v102 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v101 = &v97 - v11;
  String = type metadata accessor for PgQuery_String(0);
  v12 = *(*(String - 8) + 64);
  v13 = MEMORY[0x28223BE20](String);
  v99 = (&v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v98 = (&v97 - v15);
  Node = type metadata accessor for PgQuery_Node(0);
  v17 = *(Node - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](Node);
  v105 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v100 = &v97 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v107 = &v97 - v24;
  MEMORY[0x28223BE20](v23);
  v106 = &v97 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v110 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v97 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v97 - v33;
  v35 = *(type metadata accessor for PgQuery_A_Expr(0) + 20);
  v109 = a1;
  v36 = *(a1 + v35);
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr;
  outlined init with copy of PgQuery_Alias?(v36 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr, v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v104 = v17;
  v38 = *(v17 + 48);
  v39 = v38(v34, 1, Node);
  outlined destroy of URL?(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v112 = v36;
  if (v39 == 1)
  {
    v40 = v108;
    *(v108 + 32) = 0;
    *v40 = 0u;
    *(v40 + 16) = 0u;
    v41 = v110;
    v42 = v111;
    v43 = v115;
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v36 + v37, v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v44 = v38(v32, 1, Node);
    v45 = v38;
    v97 = Node;
    if (v44 == 1)
    {
      v46 = v106;
      UnknownStorage.init()();
      v47 = Node;
      v48 = *(Node + 20);
      v41 = v110;
      v49 = v111;
      if (one-time initialization token for defaultInstance != -1)
      {
        swift_once();
      }

      *(v46 + v48) = static PgQuery_Node._StorageClass.defaultInstance;
      v38 = v45;
      v50 = v45(v32, 1, v47);

      if (v50 != 1)
      {
        outlined destroy of URL?(v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }
    }

    else
    {
      v46 = v106;
      outlined init with take of PgQuery_BitString(v32, v106, type metadata accessor for PgQuery_Node);
      v41 = v110;
      v49 = v111;
    }

    v51 = v46;
    v43 = v115;
    v52 = v46;
    v53 = v116;
    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(&v117, v51, v113, v115, v114, v116);
    if (v49)
    {

      outlined destroy of PgQuery_Node.OneOf_Node(v53, type metadata accessor for SQLTokenInformation);
      outlined destroy of PgQuery_Node.OneOf_Node(v52, type metadata accessor for PgQuery_Node);
      return outlined destroy of PgQuery_Node.OneOf_Node(v109, type metadata accessor for PgQuery_A_Expr);
    }

    outlined destroy of PgQuery_Node.OneOf_Node(v52, type metadata accessor for PgQuery_Node);
    v55 = v118;
    v56 = v108;
    *v108 = v117;
    *(v56 + 16) = v55;
    v40 = v56;
    *(v56 + 32) = v119;
    v42 = 0;
    Node = v97;
  }

  v57 = v112;
  outlined init with copy of PgQuery_Alias?(v112 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr, v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v58 = v38;
  if (v38(v41, 1, Node) == 1)
  {
    v59 = v107;
    UnknownStorage.init()();
    v60 = Node;
    v61 = *(Node + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v59 + v61) = static PgQuery_Node._StorageClass.defaultInstance;
    v62 = v58(v41, 1, v60);

    v43 = v115;
    Node = v60;
    v63 = v59;
    v57 = v112;
    v64 = v113;
    if (v62 != 1)
    {
      outlined destroy of URL?(v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }
  }

  else
  {
    v63 = v107;
    outlined init with take of PgQuery_BitString(v41, v107, type metadata accessor for PgQuery_Node);
    v64 = v113;
  }

  v65 = v116;
  buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(&v117, v63, v64, v43, v114, v116);
  if (v42)
  {

    outlined destroy of PgQuery_Node.OneOf_Node(v65, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_Node.OneOf_Node(v63, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_Node.OneOf_Node(v109, type metadata accessor for PgQuery_A_Expr);
    return outlined destroy of URL?(v40, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
  }

  outlined destroy of PgQuery_Node.OneOf_Node(v63, type metadata accessor for PgQuery_Node);

  result = outlined init with take of SQLExpressionNode(&v117, v40 + 40);
  if (*(v57 + 24) != 1 || (v66 = *(v57 + 16), ((1 << v66) & 0x1FDFD) != 0))
  {
    type metadata accessor for SQLExpressionError();
    lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError();
    swift_allocError();
    v67 = v109;
    outlined init with copy of PgQuery_Node(v109, v68, type metadata accessor for PgQuery_A_Expr);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of PgQuery_Node.OneOf_Node(v116, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_Node.OneOf_Node(v67, type metadata accessor for PgQuery_A_Expr);
    outlined destroy of URL?(v40, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
    return __swift_destroy_boxed_opaque_existential_0((v40 + 40));
  }

  if (v66 != 1)
  {
    v76 = *(v57 + 32);
    if (!*(v76 + 16))
    {
LABEL_50:
      __break(1u);
      return result;
    }

    v77 = v105;
    outlined init with copy of PgQuery_Node(v76 + ((*(v104 + 80) + 32) & ~*(v104 + 80)), v105, type metadata accessor for PgQuery_Node);
    v78 = *(v77 + *(Node + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
    v79 = v102;
    outlined init with copy of PgQuery_Alias?(v78, v102, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v80 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
    if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
    {
      outlined destroy of URL?(v79, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
      v81 = v99;
      v75 = v116;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v75 = v116;
      if (EnumCaseMultiPayload == 222)
      {
        v81 = v99;
        outlined init with take of PgQuery_BitString(v79, v99, type metadata accessor for PgQuery_String);
LABEL_39:
        v85 = 0x454B494C20544F4ELL;
        outlined destroy of PgQuery_Node.OneOf_Node(v105, type metadata accessor for PgQuery_Node);
        v88 = v81;
        v90 = *v81;
        v89 = v81[1];

        outlined destroy of PgQuery_Node.OneOf_Node(v88, type metadata accessor for PgQuery_String);
        if (v90 == 8289825 && v89 == 0xE300000000000000)
        {

          v86 = 0xE800000000000000;
        }

        else
        {
          v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v91)
          {
            v86 = 0xE800000000000000;
          }

          else
          {
            v85 = 1162561868;
            v86 = 0xE400000000000000;
          }
        }

        goto LABEL_45;
      }

      outlined destroy of PgQuery_Node.OneOf_Node(v79, type metadata accessor for PgQuery_Node.OneOf_Node);
      v81 = v99;
    }

    *v81 = 0;
    v81[1] = 0xE000000000000000;
    v87 = v81 + *(String + 20);
    UnknownStorage.init()();
    goto LABEL_39;
  }

  v69 = *(v57 + 32);
  if (!*(v69 + 16))
  {
    __break(1u);
    goto LABEL_50;
  }

  v70 = v100;
  outlined init with copy of PgQuery_Node(v69 + ((*(v104 + 80) + 32) & ~*(v104 + 80)), v100, type metadata accessor for PgQuery_Node);
  v71 = *(v70 + *(Node + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  v72 = v101;
  outlined init with copy of PgQuery_Alias?(v71, v101, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v73 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
  v75 = v116;
  if (v74 == 1)
  {
    outlined destroy of URL?(v72, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_35:
    v82 = v98;
    *v98 = 0;
    v82[1] = 0xE000000000000000;
    v84 = v82 + *(String + 20);
    UnknownStorage.init()();
    goto LABEL_36;
  }

  if (swift_getEnumCaseMultiPayload() != 222)
  {
    outlined destroy of PgQuery_Node.OneOf_Node(v72, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_35;
  }

  v82 = v98;
  outlined init with take of PgQuery_BitString(v72, v98, type metadata accessor for PgQuery_String);
LABEL_36:
  outlined destroy of PgQuery_Node.OneOf_Node(v70, type metadata accessor for PgQuery_Node);
  v85 = *v82;
  v86 = v82[1];

  outlined destroy of PgQuery_Node.OneOf_Node(v82, type metadata accessor for PgQuery_String);
LABEL_45:
  *(v40 + 80) = v85;
  *(v40 + 88) = v86;

  outlined init with copy of PgQuery_Alias?(v40, &v117, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
  v92 = *(&v118 + 1);
  if (*(&v118 + 1))
  {
    v93 = v119;
    __swift_project_boxed_opaque_existential_0(&v117, *(&v118 + 1));
    (*(v93 + 16))(&v120, v92, v93);
    v94 = v120;
    __swift_destroy_boxed_opaque_existential_0(&v117);
  }

  else
  {
    outlined destroy of URL?(&v117, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
    v94 = 8;
  }

  LOBYTE(v117) = v94;
  v95 = *(v40 + 64);
  v96 = *(v40 + 72);
  __swift_project_boxed_opaque_existential_0((v40 + 40), v95);
  (*(v96 + 16))(&v120, v95, v96);
  static SQLExpressionAExpr.inferExprReturnType(lReturnType:rReturnType:op:)(&v117, &v120, v85, v86, &v120 + 1);
  outlined destroy of PgQuery_Node.OneOf_Node(v75, type metadata accessor for SQLTokenInformation);

  result = outlined destroy of PgQuery_Node.OneOf_Node(v109, type metadata accessor for PgQuery_A_Expr);
  *(v40 + 96) = BYTE1(v120);
  return result;
}

uint64_t static SQLExpressionAExpr.inferExprReturnType(lReturnType:rReturnType:op:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  if (v8 <= 3)
  {
    *a1;
    goto LABEL_8;
  }

  if (*a1 <= 5u || v8 == 6)
  {
LABEL_8:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_35;
    }

    if (v9 > 3 && v9 > 6)
    {
      goto LABEL_34;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
LABEL_35:
      v13 = 7;
      goto LABEL_36;
    }

    if (a3 == 31868 && a4 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      v13 = 2;
LABEL_36:
      *a5 = v13;
      return result;
    }

    v29 = &v27;
    v27 = a3;
    v28 = a4;
    MEMORY[0x28223BE20](result);
    v26 = &v27;
    v14 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v25, &outlined read-only object #0 of static SQLExpressionAExpr.inferExprReturnType(lReturnType:rReturnType:op:));
    result = swift_arrayDestroy();
    if (v14)
    {
      goto LABEL_54;
    }

    v29 = &v27;
    v27 = a3;
    v28 = a4;
    MEMORY[0x28223BE20](result);
    v26 = &v27;
    v15 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v25, &outlined read-only object #1 of static SQLExpressionAExpr.inferExprReturnType(lReturnType:rReturnType:op:));
    result = swift_arrayDestroy();
    if (v15)
    {
      goto LABEL_54;
    }

    v29 = &v27;
    v27 = a3;
    v28 = a4;
    MEMORY[0x28223BE20](result);
    v26 = &v27;
    v16 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v25, &outlined read-only object #2 of static SQLExpressionAExpr.inferExprReturnType(lReturnType:rReturnType:op:));
    result = swift_arrayDestroy();
    if ((v16 & 1) == 0)
    {
      goto LABEL_54;
    }

    v17 = v8;
    if (!specialized Sequence<>.contains(_:)(v8, &outlined read-only object #3 of static SQLExpressionAExpr.inferExprReturnType(lReturnType:rReturnType:op:)) || (v17 = v9, !specialized Sequence<>.contains(_:)(v9, &outlined read-only object #4 of static SQLExpressionAExpr.inferExprReturnType(lReturnType:rReturnType:op:))))
    {
LABEL_38:
      type metadata accessor for SQLExpressionError();
      lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError();
      swift_allocError();
      *v20 = a3;
      *(v20 + 8) = a4;
      *(v20 + 16) = v17;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    if (v8 == 3)
    {
      goto LABEL_41;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
LABEL_43:
      v13 = 3;
      goto LABEL_36;
    }

    if (v9 == 3)
    {
LABEL_41:

      goto LABEL_43;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_43;
    }

    if (v8 > 1 || !v8)
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
LABEL_53:
        v13 = 1;
        goto LABEL_36;
      }

      if (v9 > 1 || !v9)
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }

    goto LABEL_53;
  }

  if (v8 == 7)
  {
    goto LABEL_34;
  }

  if (*a2 <= 3u)
  {
    *a2;
    goto LABEL_27;
  }

  if (*a2 > 5u && v9 != 6)
  {
LABEL_34:

    goto LABEL_35;
  }

LABEL_27:
  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_35;
  }

  if (a3 != 126 || a4 != 0xE100000000000000)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      v27 = a3;
      v28 = a4;
      MEMORY[0x28223BE20](result);
      v26 = &v27;
      v19 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v25, &outlined read-only object #5 of static SQLExpressionAExpr.inferExprReturnType(lReturnType:rReturnType:op:));
      result = swift_arrayDestroy();
      if (v19)
      {
        result = specialized Sequence<>.contains(_:)(v9, &outlined read-only object #6 of static SQLExpressionAExpr.inferExprReturnType(lReturnType:rReturnType:op:));
        if (result)
        {
          *a5 = v9;
          return result;
        }

        v17 = v9;
        goto LABEL_38;
      }
    }
  }

LABEL_54:
  *a5 = 0;
  return result;
}

BOOL specialized Sequence<>.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1;
  do
  {
    v6 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v8 = *v3;
    if (v8 > 3)
    {
      if (*v3 > 5u)
      {
        v14 = 0xE400000000000000;
        if (v8 == 6)
        {
          v13 = 1684632949;
        }

        else
        {
          v13 = 1819047278;
        }
      }

      else
      {
        if (v8 == 4)
        {
          v13 = 1635017060;
        }

        else
        {
          v13 = 1852797802;
        }

        v14 = 0xE400000000000000;
      }
    }

    else
    {
      if (v8 == 2)
      {
        v9 = 0x676E69727473;
      }

      else
      {
        v9 = 1702125924;
      }

      if (v8 == 2)
      {
        v10 = 0xE600000000000000;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      if (*v3)
      {
        v11 = 0x656C62756F64;
      }

      else
      {
        v11 = 0x72656765746E69;
      }

      if (*v3)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

      if (*v3 <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*v3 <= 1u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }
    }

    v15 = 1819047278;
    if (v4 == 6)
    {
      v15 = 1684632949;
    }

    v16 = 1852797802;
    if (v4 == 4)
    {
      v16 = 1635017060;
    }

    if (v4 <= 5)
    {
      v15 = v16;
    }

    if (v4 == 2)
    {
      v17 = 0x676E69727473;
    }

    else
    {
      v17 = 1702125924;
    }

    if (v4 == 2)
    {
      v18 = 0xE600000000000000;
    }

    else
    {
      v18 = 0xE400000000000000;
    }

    if (v4)
    {
      v19 = 0x656C62756F64;
    }

    else
    {
      v19 = 0x72656765746E69;
    }

    if (v4)
    {
      v20 = 0xE600000000000000;
    }

    else
    {
      v20 = 0xE700000000000000;
    }

    if (v4 <= 1)
    {
      v17 = v19;
      v18 = v20;
    }

    if (v4 <= 3)
    {
      v21 = v17;
    }

    else
    {
      v21 = v15;
    }

    if (v4 <= 3)
    {
      v22 = v18;
    }

    else
    {
      v22 = 0xE400000000000000;
    }

    if (v13 == v21 && v14 == v22)
    {

      return v6 != 0;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v3;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

uint64_t SQLExpressionAExpr.expressionString.getter()
{
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_0(v0 + 5, v1);
  v3 = (*(v2 + 8))(v1, v2);
  v5 = v4;
  outlined init with copy of PgQuery_Alias?(v0, &v12, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
  v6 = v14;
  if (v14)
  {
    v7 = v15;
    __swift_project_boxed_opaque_existential_0(&v12, v14);
    v8 = (*(v7 + 8))(v6, v7);
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0(&v12);
    v12 = 40;
    v13 = 0xE100000000000000;
    MEMORY[0x259C32B90](v8, v10);

    MEMORY[0x259C32B90](32, 0xE100000000000000);
  }

  else
  {
    outlined destroy of URL?(&v12, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
    v12 = 40;
    v13 = 0xE100000000000000;
  }

  MEMORY[0x259C32B90](v0[10], v0[11]);
  MEMORY[0x259C32B90](32, 0xE100000000000000);
  MEMORY[0x259C32B90](v3, v5);

  MEMORY[0x259C32B90](41, 0xE100000000000000);
  return v12;
}

uint64_t SQLExpressionAExpr.aggregationFunctions.getter()
{
  outlined init with copy of PgQuery_Alias?(v0, v8, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
  v1 = v9;
  if (v9)
  {
    v2 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    v3 = (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
    v3 = MEMORY[0x277D84F90];
  }

  v4 = v0[8];
  v5 = v0[9];
  __swift_project_boxed_opaque_existential_0(v0 + 5, v4);
  v6 = (*(v5 + 24))(v4, v5);
  v8[0] = v3;
  specialized Array.append<A>(contentsOf:)(v6);
  return v8[0];
}

uint64_t SQLExpressionAExpr.bindings.getter()
{
  outlined init with copy of PgQuery_Alias?(v0, v8, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
  v1 = v9;
  if (v9)
  {
    v2 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    v3 = (*(v2 + 32))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
    v3 = MEMORY[0x277D84F90];
  }

  v4 = v0[8];
  v5 = v0[9];
  __swift_project_boxed_opaque_existential_0(v0 + 5, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v8[0] = v3;
  specialized Array.append<A>(contentsOf:)(v6);
  return v8[0];
}

uint64_t SQLExpressioBoolExpr.expressionString.getter()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v2 = *v0;
  result = v0[1];
  if (result > 1)
  {
    if (result != 2)
    {
      v35 = 0x20544F4E28;
      v36 = 0xE500000000000000;
      if (!*(v2 + 16))
      {
        __break(1u);
        return result;
      }

      outlined init with copy of VirtualTable.Module(v2 + 32, v32);
      v24 = v33;
      v25 = v34;
      __swift_project_boxed_opaque_existential_0(v32, v33);
      v26 = (*(v25 + 8))(v24, v25);
      MEMORY[0x259C32B90](v26);

      __swift_destroy_boxed_opaque_existential_0(v32);
LABEL_22:
      MEMORY[0x259C32B90](41, 0xE100000000000000);
      return v35;
    }

    v35 = 40;
    v36 = 0xE100000000000000;
    v3 = *(v2 + 16);
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v30 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
      v4 = v30;
      v5 = v2 + 32;
      do
      {
        outlined init with copy of VirtualTable.Module(v5, v32);
        v6 = v33;
        v7 = v34;
        __swift_project_boxed_opaque_existential_0(v32, v33);
        v8 = (*(v7 + 8))(v6, v7);
        v10 = v9;
        __swift_destroy_boxed_opaque_existential_0(v32);
        v12 = *(v30 + 16);
        v11 = *(v30 + 24);
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
        }

        *(v30 + 16) = v12 + 1;
        v13 = v30 + 16 * v12;
        *(v13 + 32) = v8;
        *(v13 + 40) = v10;
        v5 += 40;
        --v3;
      }

      while (v3);
    }

LABEL_21:
    v32[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    MEMORY[0x259C32B90](v27, v29);

    goto LABEL_22;
  }

  if (result)
  {
    v35 = 40;
    v36 = 0xE100000000000000;
    v14 = *(v2 + 16);
    v4 = MEMORY[0x277D84F90];
    if (v14)
    {
      v31 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
      v4 = v31;
      v15 = v2 + 32;
      do
      {
        outlined init with copy of VirtualTable.Module(v15, v32);
        v16 = v33;
        v17 = v34;
        __swift_project_boxed_opaque_existential_0(v32, v33);
        v18 = (*(v17 + 8))(v16, v17);
        v20 = v19;
        __swift_destroy_boxed_opaque_existential_0(v32);
        v22 = *(v31 + 16);
        v21 = *(v31 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
        }

        *(v31 + 16) = v22 + 1;
        v23 = v31 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v15 += 40;
        --v14;
      }

      while (v14);
    }

    goto LABEL_21;
  }

  return result;
}

char *SQLExpressioBoolExpr.aggregationFunctions.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *v0 + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    outlined init with copy of VirtualTable.Module(v2, v15);
    v5 = v16;
    v6 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    v7 = (*(v6 + 24))(v5, v6);
    result = __swift_destroy_boxed_opaque_existential_0(v15);
    v8 = *(v7 + 16);
    v9 = *(v3 + 2);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= *(v3 + 3) >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v11 = v9 + v8;
      }

      else
      {
        v11 = v9;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
      v3 = result;
      if (*(v7 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v8)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = *(v3 + 2);
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 40;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *SQLExpressioBoolExpr.bindings.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *v0 + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    outlined init with copy of VirtualTable.Module(v2, v15);
    v5 = v16;
    v6 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    v7 = (*(v6 + 32))(v5, v6);
    result = __swift_destroy_boxed_opaque_existential_0(v15);
    v8 = *(v7 + 16);
    v9 = *(v3 + 2);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= *(v3 + 3) >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v11 = v9 + v8;
      }

      else
      {
        v11 = v9;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
      v3 = result;
      if (*(v7 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v8)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = *(v3 + 2);
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 40;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t SQLExpressionNullTest.expressionString.getter()
{
  if (*(v0 + 48) != 1)
  {
    return 0;
  }

  result = *(v0 + 40);
  if (result)
  {
    if (result == 1)
    {
      v2 = *(v0 + 24);
      v3 = *(v0 + 32);
      __swift_project_boxed_opaque_existential_0(v0, v2);
      v4 = (*(v3 + 8))(v2, v3);
      MEMORY[0x259C32B90](v4);

      v5 = 0x4C4C554E20534920;
      v6 = 0xE900000000000029;
    }

    else
    {
      _StringGuts.grow(_:)(16);

      v7 = *(v0 + 24);
      v8 = *(v0 + 32);
      __swift_project_boxed_opaque_existential_0(v0, v7);
      v9 = (*(v8 + 8))(v7, v8);
      MEMORY[0x259C32B90](v9);

      v5 = 0x20544F4E20534920;
      v6 = 0xED0000294C4C554ELL;
    }

    MEMORY[0x259C32B90](v5, v6);
    return 40;
  }

  return result;
}

uint64_t protocol witness for SQLExpressionNode.aggregationFunctions.getter in conformance SQLExpressionNullTest()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t protocol witness for SQLExpressionNode.bindings.getter in conformance SQLExpressionNullTest()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

Swift::String __swiftcall AggregationFunction.name()()
{
  outlined init with copy of AggregationFunction.AggregationType(v0, &v23);
  if (v35 > 3u)
  {
    if (v35 <= 5u)
    {
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17 = v23;
      v18 = v24;
      if (v35 == 4)
      {
        v1 = 678324589;
      }

      else
      {
        v1 = 678262131;
      }

      goto LABEL_18;
    }

    if (v35 != 6)
    {
      v3 = 0xE800000000000000;
      v2 = 0x292A28746E756F63;
      goto LABEL_21;
    }

    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v17 = v23;
    v18 = v24;
    v1 = 0x286C61746F74;
  }

  else
  {
    if (v35 > 1u)
    {
      if (v35 == 2)
      {
        v19 = v25;
        v20 = v26;
        v21 = v27;
        v22 = v28;
        v17 = v23;
        v18 = v24;
        v16[2] = v31;
        v16[3] = v32;
        v16[4] = v33;
        v16[5] = v34;
        v16[0] = v29;
        v16[1] = v30;
        outlined init with copy of PgQuery_Alias?(v16, &v8, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        if (*(&v9 + 1))
        {
          v14[2] = v10;
          v14[3] = v11;
          v14[4] = v12;
          v15 = v13;
          v14[0] = v8;
          v14[1] = v9;
          *&v8 = 0;
          *(&v8 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          strcpy(&v8, "group_concat(");
          HIWORD(v8) = -4864;
          MEMORY[0x259C32B90](v22, *(&v22 + 1));
          MEMORY[0x259C32B90](8236, 0xE200000000000000);
          MEMORY[0x259C32B90](v15, *(&v15 + 1));
          MEMORY[0x259C32B90](41, 0xE100000000000000);
          v3 = *(&v8 + 1);
          v2 = v8;
          outlined destroy of SQLExpression(v14);
        }

        else
        {
          outlined destroy of URL?(&v8, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
          *&v14[0] = 0;
          *(&v14[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(16);

          strcpy(v14, "group_concat(");
          HIWORD(v14[0]) = -4864;
          MEMORY[0x259C32B90](v22, *(&v22 + 1));
          MEMORY[0x259C32B90](41, 0xE100000000000000);
          v3 = *(&v14[0] + 1);
          v2 = *&v14[0];
        }

        outlined destroy of URL?(v16, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        goto LABEL_20;
      }

      v19 = v25;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17 = v23;
      v18 = v24;
      v1 = 678977901;
      goto LABEL_18;
    }

    if (!v35)
    {
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17 = v23;
      v18 = v24;
      v1 = 677869153;
LABEL_18:
      v4 = 0xE400000000000000;
      goto LABEL_19;
    }

    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v17 = v23;
    v18 = v24;
    v1 = 0x28746E756F63;
  }

  v4 = 0xE600000000000000;
LABEL_19:
  *&v16[0] = v1;
  *(&v16[0] + 1) = v4;
  MEMORY[0x259C32B90](v22, *(&v22 + 1));
  MEMORY[0x259C32B90](41, 0xE100000000000000);
  v3 = *(&v16[0] + 1);
  v2 = *&v16[0];
LABEL_20:
  outlined destroy of SQLExpression(&v17);
LABEL_21:
  v5 = v2;
  v6 = v3;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t protocol witness for SQLExpressionNode.expressionString.getter in conformance SQLExpressionAggregationFunction()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return v1;
}

uint64_t protocol witness for SQLExpressionNode.aggregationFunctions.getter in conformance SQLExpressionAggregationFunction()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser19AggregationFunctionVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser19AggregationFunctionVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2552FE080;
  outlined init with copy of AggregationFunction(v0, v1 + 32);
  return v1;
}

uint64_t protocol witness for SQLExpressionNode.bindings.getter in conformance SQLExpressionAggregationFunction()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser7BindingVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser7BindingVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2552FE080;
  v2 = AggregationFunction.name()();
  v3 = *(v0 + 193);
  *(v1 + 32) = v2;
  *(v1 + 48) = v3;
  return v1;
}

uint64_t SQLExpressionNonAggregationFunction.init(functionName:argList:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  SQLFunction.init(rawValue:)(v8);
  v9 = v23[0];
  if (LOBYTE(v23[0]) == 98)
  {

    type metadata accessor for SQLExpressionError();
    lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError();
    swift_allocError();
    *v10 = a1;
    v10[1] = a2;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {

    BYTE1(v27) = v23[0];
    v12 = *(a3 + 16);
    v13._rawValue = MEMORY[0x277D84F90];
    if (v12)
    {
      v22 = a4;
      rawValue = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      v13._rawValue = rawValue;
      v14 = a3 + 32;
      do
      {
        outlined init with copy of VirtualTable.Module(v14, v23);
        v15 = v24;
        v16 = v25;
        __swift_project_boxed_opaque_existential_0(v23, v24);
        (*(v16 + 16))(&v27, v15, v16);
        __swift_destroy_boxed_opaque_existential_0(v23);
        rawValue = v13._rawValue;
        v18 = *(v13._rawValue + 2);
        v17 = *(v13._rawValue + 3);
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v13._rawValue = rawValue;
        }

        v19 = v27;
        *(v13._rawValue + 2) = v18 + 1;
        *(v13._rawValue + v18 + 32) = v19;
        v14 += 40;
        --v12;
      }

      while (v12);

      a4 = v22;
    }

    SQLFunction.returnType(argTypes:)(v13);
    if (v20)
    {
    }

    else
    {

      v21 = BYTE2(v27);
      *a4 = v9;
      *(a4 + 8) = a3;
      *(a4 + 16) = v21;
    }
  }

  return result;
}

uint64_t SQLExpressionNonAggregationFunction.expressionString.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v22 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v22;
    v5 = v2 + 32;
    do
    {
      outlined init with copy of VirtualTable.Module(v5, v19);
      v6 = v20;
      v7 = v21;
      __swift_project_boxed_opaque_existential_0(v19, v20);
      v8 = (*(v7 + 8))(v6, v7);
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0(v19);
      v22 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
        v4 = v22;
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  v19[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v14 = BidirectionalCollection<>.joined(separator:)();
  v16 = v15;

  LOBYTE(v22) = v1;
  v19[0] = SQLFunction.rawValue.getter();
  v19[1] = v17;
  MEMORY[0x259C32B90](40, 0xE100000000000000);
  MEMORY[0x259C32B90](v14, v16);

  MEMORY[0x259C32B90](41, 0xE100000000000000);
  return v19[0];
}

uint64_t SQLExpressionNonAggregationFunction.aggregationFunctions.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    outlined init with copy of VirtualTable.Module(v3, v16);
    v6 = v17;
    v7 = v18;
    __swift_project_boxed_opaque_existential_0(v16, v17);
    result = (*(v7 + 24))(v6, v7);
    v8 = *(result + 16);
    v9 = *(v4 + 16);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    v11 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= *(v4 + 24) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v12 = v9 + v8;
      }

      else
      {
        v12 = v9;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v4);
      v4 = result;
      if (*(v11 + 16))
      {
LABEL_14:
        if ((*(v4 + 24) >> 1) - *(v4 + 16) < v8)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v13 = *(v4 + 16);
          v14 = __OFADD__(v13, v8);
          v15 = v13 + v8;
          if (v14)
          {
            goto LABEL_23;
          }

          *(v4 + 16) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_21;
    }

LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v16);
    v3 += 40;
    if (!--v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t SQLExpressionNonAggregationFunction.bindings.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    outlined init with copy of VirtualTable.Module(v3, v16);
    v6 = v17;
    v7 = v18;
    __swift_project_boxed_opaque_existential_0(v16, v17);
    result = (*(v7 + 32))(v6, v7);
    v8 = *(result + 16);
    v9 = *(v4 + 16);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    v11 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= *(v4 + 24) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v12 = v9 + v8;
      }

      else
      {
        v12 = v9;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v4);
      v4 = result;
      if (*(v11 + 16))
      {
LABEL_14:
        if ((*(v4 + 24) >> 1) - *(v4 + 16) < v8)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v13 = *(v4 + 16);
          v14 = __OFADD__(v13, v8);
          v15 = v13 + v8;
          if (v14)
          {
            goto LABEL_23;
          }

          *(v4 + 16) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_21;
    }

LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v16);
    v3 += 40;
    if (!--v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.AggregationType.AVGCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.AVGCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.AggregationType.COUNTCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.COUNTCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SQLExpression.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C33090](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AggregationFunction.AggregationType.CodingKeys()
{
  v1 = *v0;
  v2 = 4675137;
  v3 = 5068115;
  if (v1 != 6)
  {
    v3 = 0x4C41544F54;
  }

  v4 = 5783885;
  if (v1 != 4)
  {
    v4 = 5130573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x54535F544E554F43;
  if (v1 != 2)
  {
    v5 = 0x4F435F50554F5247;
  }

  if (*v0)
  {
    v2 = 0x544E554F43;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AggregationFunction.AggregationType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AggregationFunction.AggregationType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.AggregationType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys()
{
  if (*v0)
  {
    result = 0x6F74617261706573;
  }

  else
  {
    result = 0x6973736572707865;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F74617261706573 && a2 == 0xE900000000000072)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.AggregationType.MAXCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.MAXCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.AggregationType.MINCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.MINCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.AggregationType.SUMCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.SUMCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AggregationFunction.AggregationType.AVGCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x259C33090](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AggregationFunction.AggregationType.AVGCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.AggregationType.TOTALCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.TOTALCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AggregationFunction.AggregationType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO15TOTALCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO15TOTALCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 64);
  MEMORY[0x28223BE20](v2);
  v71 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13SUMCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13SUMCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v5);
  v68 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13MINCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13MINCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v8);
  v63 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13MAXCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13MAXCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  MEMORY[0x28223BE20](v11);
  v59 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO22GROUP_CONCATCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO22GROUP_CONCATCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = *(v64 + 64);
  MEMORY[0x28223BE20](v14);
  v62 = &v52 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO20COUNT_STARCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO20COUNT_STARCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v55 = *(v17 - 8);
  v56 = v17;
  v18 = *(v55 + 64);
  MEMORY[0x28223BE20](v17);
  v54 = &v52 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO15COUNTCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO15COUNTCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v57 = *(v20 - 8);
  v58 = v20;
  v21 = *(v57 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13AVGCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13AVGCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v53 = *(v24 - 8);
  v25 = *(v53 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v52 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v29 = *(v28 - 8);
  v75 = v28;
  v76 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v52 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys();
  v34 = v32;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of AggregationFunction.AggregationType(v74, &v85);
  if (v97 > 3u)
  {
    if (v97 > 5u)
    {
      v35 = v75;
      if (v97 != 6)
      {
        LOBYTE(v79) = 2;
        lazy protocol witness table accessor for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys();
        v51 = v54;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v55 + 8))(v51, v56);
        return (*(v76 + 8))(v34, v35);
      }

      v81 = v87;
      v82 = v88;
      v83 = v89;
      v84 = v90;
      v79 = v85;
      v80 = v86;
      LOBYTE(v78[0]) = 7;
      lazy protocol witness table accessor for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys();
      v36 = v71;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
      v37 = v73;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v38 = v72;
    }

    else
    {
      v35 = v75;
      v81 = v87;
      v82 = v88;
      v83 = v89;
      v84 = v90;
      v79 = v85;
      v80 = v86;
      if (v97 == 4)
      {
        LOBYTE(v78[0]) = 5;
        lazy protocol witness table accessor for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys();
        v36 = v63;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
        v37 = v67;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v38 = v66;
      }

      else
      {
        LOBYTE(v78[0]) = 6;
        lazy protocol witness table accessor for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys();
        v36 = v68;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
        v37 = v70;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v38 = v69;
      }
    }

    (*(v38 + 8))(v36, v37);
LABEL_17:
    outlined destroy of SQLExpression(&v79);
    v47 = *(v76 + 8);
    v48 = v34;
    return v47(v48, v35);
  }

  if (v97 <= 1u)
  {
    if (v97)
    {
      v81 = v87;
      v82 = v88;
      v83 = v89;
      v84 = v90;
      v79 = v85;
      v80 = v86;
      LOBYTE(v78[0]) = 1;
      lazy protocol witness table accessor for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys();
      v45 = v75;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
      v46 = v58;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v57 + 8))(v23, v46);
      outlined destroy of SQLExpression(&v79);
      return (*(v76 + 8))(v34, v45);
    }

    v81 = v87;
    v82 = v88;
    v83 = v89;
    v84 = v90;
    v79 = v85;
    v80 = v86;
    LOBYTE(v78[0]) = 0;
    lazy protocol witness table accessor for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys();
    v35 = v75;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v53 + 8))(v27, v24);
    goto LABEL_17;
  }

  v39 = v98;
  v40 = v32;
  if (v97 != 2)
  {
    v81 = v87;
    v82 = v88;
    v83 = v89;
    v84 = v90;
    v79 = v85;
    v80 = v86;
    LOBYTE(v78[0]) = 4;
    lazy protocol witness table accessor for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys();
    v49 = v59;
    v35 = v75;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
    v50 = v61;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v60 + 8))(v49, v50);
    outlined destroy of SQLExpression(&v79);
    v47 = *(v76 + 8);
    v48 = v40;
    return v47(v48, v35);
  }

  v81 = v87;
  v82 = v88;
  v83 = v89;
  v84 = v90;
  v79 = v85;
  v80 = v86;
  v78[2] = v93;
  v78[3] = v94;
  v78[4] = v95;
  v78[5] = v96;
  v78[0] = v91;
  v78[1] = v92;
  v77 = 3;
  lazy protocol witness table accessor for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys();
  v41 = v62;
  v42 = v75;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v77 = 0;
  lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
  v43 = v65;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v39)
  {
    v77 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v64 + 8))(v41, v43);
  outlined destroy of URL?(v78, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  outlined destroy of SQLExpression(&v79);
  return (*(v76 + 8))(v32, v42);
}

uint64_t AggregationFunction.init(functionName:args:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = a1;
  if (a1 == 6780513 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v8 = *(a3 + 16);
    if (v8)
    {
      if (v8 == 1)
      {

        if (*(a3 + 16))
        {
          outlined init with copy of VirtualTable.Module(a3 + 32, v127);

          v9 = v128;
          v10 = v129;
          __swift_project_boxed_opaque_existential_0(v127, v128);
          v11 = *((*(v10 + 24))(v9, v10) + 16);

          if (v11)
          {
LABEL_8:
            v12 = v128;
            v13 = v129;
            __swift_project_boxed_opaque_existential_0(v127, v128);
            v14 = (*(v13 + 40))(v12, v13);
            v16 = v15;
            lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
            swift_allocError();
            *v17 = v14;
            *(v17 + 8) = v16;
            *(v17 + 16) = 0;
            *(v17 + 24) = 0;
            *(v17 + 32) = 3;
            swift_willThrow();
            return __swift_destroy_boxed_opaque_existential_0(v127);
          }

          outlined init with copy of VirtualTable.Module(v127, v124);
          SQLExpression.init(rootNode:)(v124, &v130);
          v23 = 256;
          goto LABEL_24;
        }

        __break(1u);
        goto LABEL_95;
      }

      v143 = v6;
      v121 = v5;
      v124[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
      v24 = v124[0];
      v25 = a3 + 32;
      do
      {
        outlined init with copy of VirtualTable.Module(v25, v127);
        v26 = v128;
        v27 = v129;
        __swift_project_boxed_opaque_existential_0(v127, v128);
        v28 = (*(v27 + 40))(v26, v27);
        v30 = v29;
        __swift_destroy_boxed_opaque_existential_0(v127);
        v124[0] = v24;
        v32 = *(v24 + 16);
        v31 = *(v24 + 24);
        if (v32 >= v31 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1);
          v24 = v124[0];
        }

        *(v24 + 16) = v32 + 1;
        v33 = v24 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
        v25 += 40;
        --v8;
      }

      while (v8);
      goto LABEL_57;
    }

LABEL_86:

    v24 = MEMORY[0x277D84F90];
    goto LABEL_87;
  }

  if (v6 == 0x746E756F63 && v5 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v19 = *(a3 + 16);
    if (!v19)
    {

      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v131 = 0u;
      v130 = 0u;
      v142 = 7;
      goto LABEL_27;
    }

    if (v19 != 1)
    {
      v143 = v6;
      v122 = v5;
      v124[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      v24 = v124[0];
      v50 = a3 + 32;
      do
      {
        outlined init with copy of VirtualTable.Module(v50, v127);
        v51 = v128;
        v52 = v129;
        __swift_project_boxed_opaque_existential_0(v127, v128);
        v53 = (*(v52 + 40))(v51, v52);
        v55 = v54;
        __swift_destroy_boxed_opaque_existential_0(v127);
        v124[0] = v24;
        v57 = *(v24 + 16);
        v56 = *(v24 + 24);
        if (v57 >= v56 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v56 > 1, v57 + 1, 1);
          v24 = v124[0];
        }

        *(v24 + 16) = v57 + 1;
        v58 = v24 + 16 * v57;
        *(v58 + 32) = v53;
        *(v58 + 40) = v55;
        v50 += 40;
        --v19;
      }

      while (v19);

      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      swift_allocError();
      *v59 = v143;
      *(v59 + 8) = v122;
      goto LABEL_88;
    }

    if (*(a3 + 16))
    {
      outlined init with copy of VirtualTable.Module(a3 + 32, v127);

      v20 = v128;
      v21 = v129;
      __swift_project_boxed_opaque_existential_0(v127, v128);
      v22 = *((*(v21 + 24))(v20, v21) + 16);

      if (v22)
      {
        goto LABEL_8;
      }

      outlined init with copy of VirtualTable.Module(v127, v124);
      SQLExpression.init(rootNode:)(v124, &v130);
      v23 = 1;
      goto LABEL_24;
    }

    __break(1u);
LABEL_104:
    v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v117 = 0;
    if (v116)
    {
LABEL_111:
      HIBYTE(v142) = v117;
      goto LABEL_25;
    }

    v118 = v128;
    v119 = v129;
    __swift_project_boxed_opaque_existential_0(v127, v128);
    (*(v119 + 16))(v124, v118, v119);
    if (LOBYTE(v124[0]) <= 6u)
    {
LABEL_110:
      v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v117 = (v120 & 1) == 0;
      goto LABEL_111;
    }

LABEL_112:

    HIBYTE(v142) = 0;
    goto LABEL_25;
  }

  if (v6 == 0x6F635F70756F7267 && v5 == 0xEC0000007461636ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v42 = *(a3 + 16);
    if (!v42)
    {
      goto LABEL_86;
    }

    if (v42 != 1)
    {
      if (v42 != 2)
      {
        v143 = v6;
        v121 = v5;
        v124[0] = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
        v24 = v124[0];
        v69 = a3 + 32;
        do
        {
          outlined init with copy of VirtualTable.Module(v69, v127);
          v70 = v128;
          v71 = v129;
          __swift_project_boxed_opaque_existential_0(v127, v128);
          v72 = (*(v71 + 40))(v70, v71);
          v74 = v73;
          __swift_destroy_boxed_opaque_existential_0(v127);
          v124[0] = v24;
          v76 = *(v24 + 16);
          v75 = *(v24 + 24);
          if (v76 >= v75 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v75 > 1, v76 + 1, 1);
            v24 = v124[0];
          }

          *(v24 + 16) = v76 + 1;
          v77 = v24 + 16 * v76;
          *(v77 + 32) = v72;
          *(v77 + 40) = v74;
          v69 += 40;
          --v42;
        }

        while (v42);
LABEL_57:

        v5 = v121;
        v6 = v143;
LABEL_87:
        lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
        swift_allocError();
        *v59 = v6;
        *(v59 + 8) = v5;
LABEL_88:
        *(v59 + 16) = v24;
        *(v59 + 24) = 0;
        *(v59 + 32) = 4;
        return swift_willThrow();
      }

      v43 = *(a3 + 16);
      if (v43)
      {
        outlined init with copy of VirtualTable.Module(a3 + 32, v127);
        if (v43 != 1)
        {
          outlined init with copy of VirtualTable.Module(a3 + 72, v124);

          v44 = v128;
          v45 = v129;
          __swift_project_boxed_opaque_existential_0(v127, v128);
          v46 = *((*(v45 + 24))(v44, v45) + 16);

          if (v46)
          {
            v47 = v128;
            v48 = v129;
            v49 = v127;
          }

          else
          {
            v78 = v125;
            v79 = v126;
            __swift_project_boxed_opaque_existential_0(v124, v125);
            v80 = *((*(v79 + 24))(v78, v79) + 16);

            if (!v80)
            {
              outlined init with copy of VirtualTable.Module(v127, v123);
              SQLExpression.init(rootNode:)(v123, &v130);
              outlined init with copy of VirtualTable.Module(v124, v123);
              SQLExpression.init(rootNode:)(v123, &v136);
              v142 = 514;
              __swift_destroy_boxed_opaque_existential_0(v124);
              goto LABEL_25;
            }

            v47 = v125;
            v48 = v126;
            v49 = v124;
          }

          __swift_project_boxed_opaque_existential_0(v49, v47);
          v81 = (*(v48 + 40))(v47, v48);
          v83 = v82;
          lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
          swift_allocError();
          *v84 = v81;
          *(v84 + 8) = v83;
          *(v84 + 16) = 0;
          *(v84 + 24) = 0;
          *(v84 + 32) = 3;
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0(v124);
          return __swift_destroy_boxed_opaque_existential_0(v127);
        }

        goto LABEL_109;
      }

LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    if (!*(a3 + 16))
    {
      __break(1u);
      goto LABEL_108;
    }

    outlined init with copy of VirtualTable.Module(a3 + 32, v127);

    v66 = v128;
    v67 = v129;
    __swift_project_boxed_opaque_existential_0(v127, v128);
    v68 = *((*(v67 + 24))(v66, v67) + 16);

    if (v68)
    {
      goto LABEL_8;
    }

    outlined init with copy of VirtualTable.Module(v127, v124);
    SQLExpression.init(rootNode:)(v124, &v130);
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v23 = 514;
LABEL_24:
    v142 = v23;
LABEL_25:
    result = __swift_destroy_boxed_opaque_existential_0(v127);
LABEL_27:
    v34 = v139;
    v35 = v141;
    *(a4 + 160) = v140;
    *(a4 + 176) = v35;
    v36 = v135;
    v37 = v137;
    v38 = v138;
    *(a4 + 96) = v136;
    *(a4 + 112) = v37;
    *(a4 + 128) = v38;
    *(a4 + 144) = v34;
    v39 = v131;
    v40 = v133;
    v41 = v134;
    *(a4 + 32) = v132;
    *(a4 + 48) = v40;
    *(a4 + 192) = v142;
    *(a4 + 64) = v41;
    *(a4 + 80) = v36;
    *a4 = v130;
    *(a4 + 16) = v39;
    return result;
  }

  if (v6 == 7889261 && v5 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (*(a3 + 16) == 1)
    {
      outlined init with copy of VirtualTable.Module(a3 + 32, v127);

      v60 = v128;
      v61 = v129;
      __swift_project_boxed_opaque_existential_0(v127, v128);
      v62 = *((*(v61 + 24))(v60, v61) + 16);

      if (v62)
      {
        goto LABEL_8;
      }

      outlined init with copy of VirtualTable.Module(v127, v124);
      SQLExpression.init(rootNode:)(v124, &v130);
      v63 = 3;
      goto LABEL_49;
    }

    goto LABEL_96;
  }

  if (v6 == 7235949 && v5 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (*(a3 + 16) == 1)
    {
      outlined init with copy of VirtualTable.Module(a3 + 32, v127);

      v85 = v128;
      v86 = v129;
      __swift_project_boxed_opaque_existential_0(v127, v128);
      v87 = *((*(v86 + 24))(v85, v86) + 16);

      if (v87)
      {
        goto LABEL_8;
      }

      outlined init with copy of VirtualTable.Module(v127, v124);
      SQLExpression.init(rootNode:)(v124, &v130);
      v63 = 4;
LABEL_49:
      LOBYTE(v142) = v63;
      v64 = v128;
      v65 = v129;
      __swift_project_boxed_opaque_existential_0(v127, v128);
      (*(v65 + 16))(&v142 + 1, v64, v65);
      goto LABEL_25;
    }

LABEL_96:

    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 192) = 255;
    return result;
  }

  if (v6 == 7173491 && v5 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v88 = *(a3 + 16);
    if (!v88)
    {
      goto LABEL_86;
    }

    if (v88 == 1)
    {

      if (*(a3 + 16))
      {
        outlined init with copy of VirtualTable.Module(a3 + 32, v127);

        v89 = v128;
        v90 = v129;
        __swift_project_boxed_opaque_existential_0(v127, v128);
        v91 = *((*(v90 + 24))(v89, v90) + 16);

        if (v91)
        {
          goto LABEL_8;
        }

        outlined init with copy of VirtualTable.Module(v127, v124);
        SQLExpression.init(rootNode:)(v124, &v130);
        LOBYTE(v142) = 5;
        v92 = v128;
        v93 = v129;
        __swift_project_boxed_opaque_existential_0(v127, v128);
        (*(v93 + 16))(v124, v92, v93);
        if (LOBYTE(v124[0]) <= 3u && !LOBYTE(v124[0]))
        {
          goto LABEL_112;
        }

        goto LABEL_104;
      }

      __break(1u);
      goto LABEL_114;
    }

    v143 = v6;
    v124[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v88, 0);
    v24 = v124[0];
    v98 = a3 + 32;
    do
    {
      outlined init with copy of VirtualTable.Module(v98, v127);
      v99 = v128;
      v100 = v129;
      __swift_project_boxed_opaque_existential_0(v127, v128);
      v101 = (*(v100 + 40))(v99, v100);
      v103 = v102;
      __swift_destroy_boxed_opaque_existential_0(v127);
      v124[0] = v24;
      v105 = *(v24 + 16);
      v104 = *(v24 + 24);
      if (v105 >= v104 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v104 > 1, v105 + 1, 1);
        v24 = v124[0];
      }

      *(v24 + 16) = v105 + 1;
      v106 = v24 + 16 * v105;
      *(v106 + 32) = v101;
      *(v106 + 40) = v103;
      v98 += 40;
      --v88;
    }

    while (v88);
LABEL_101:

    v6 = v143;
    goto LABEL_87;
  }

  if ((v6 != 0x6C61746F74 || v5 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_95:

    goto LABEL_96;
  }

  v94 = *(a3 + 16);
  if (!v94)
  {
    goto LABEL_86;
  }

  v143 = v6;
  if (v94 != 1)
  {
    v124[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94, 0);
    v24 = v124[0];
    v107 = a3 + 32;
    do
    {
      outlined init with copy of VirtualTable.Module(v107, v127);
      v108 = v128;
      v109 = v129;
      __swift_project_boxed_opaque_existential_0(v127, v128);
      v110 = (*(v109 + 40))(v108, v109);
      v112 = v111;
      __swift_destroy_boxed_opaque_existential_0(v127);
      v124[0] = v24;
      v114 = *(v24 + 16);
      v113 = *(v24 + 24);
      if (v114 >= v113 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v113 > 1, v114 + 1, 1);
        v24 = v124[0];
      }

      *(v24 + 16) = v114 + 1;
      v115 = v24 + 16 * v114;
      *(v115 + 32) = v110;
      *(v115 + 40) = v112;
      v107 += 40;
      --v94;
    }

    while (v94);
    goto LABEL_101;
  }

  if (*(a3 + 16))
  {
    outlined init with copy of VirtualTable.Module(a3 + 32, v127);

    v95 = v128;
    v96 = v129;
    __swift_project_boxed_opaque_existential_0(v127, v128);
    v97 = *((*(v96 + 24))(v95, v96) + 16);

    if (v97)
    {
      goto LABEL_8;
    }

    outlined init with copy of VirtualTable.Module(v127, v124);
    SQLExpression.init(rootNode:)(v124, &v130);
    v23 = 262;
    goto LABEL_24;
  }

LABEL_114:
  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AggregationFunction.CodingKeys()
{
  if (*v0)
  {
    result = 0x79546E7275746572;
  }

  else
  {
    result = 0x7461676572676761;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AggregationFunction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461676572676761 && a2 == 0xEF657079546E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79546E7275746572 && a2 == 0xEA00000000006570)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AggregationFunction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  lazy protocol witness table accessor for type AggregationFunction.AggregationType and conformance AggregationFunction.AggregationType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[14] = *(v3 + 193);
    v12[13] = 1;
    lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t static AggregationFunction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static AggregationFunction.AggregationType.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 193);
  v5 = *(a1 + 193);

  return specialized == infix<A>(_:_:)(v5, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AggregationFunction(uint64_t a1, uint64_t a2)
{
  if ((specialized static AggregationFunction.AggregationType.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 193);
  v5 = *(a1 + 193);

  return specialized == infix<A>(_:_:)(v5, v4);
}

uint64_t protocol witness for SQLExpressionNode.expressionString.getter in conformance SQLExpressionConst()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t protocol witness for SQLExpressionNode.returnType.getter in conformance SQLExpressionConst()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t SQLExpression.hash(into:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  String.hash(into:)();
  v5 = v1[9];

  return specialized Array<A>.hash(into:)(a1, v5);
}

Swift::Int SQLExpression.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = v0[5];
  v2 = v0[6];
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v4, v0[9]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SQLExpression()
{
  Hasher.init(_seed:)();
  v1 = v0[5];
  v2 = v0[6];
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v4, v0[9]);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SQLExpression(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  String.hash(into:)();
  v5 = v1[9];

  return specialized Array<A>.hash(into:)(a1, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SQLExpression()
{
  Hasher.init(_seed:)();
  v1 = v0[5];
  v2 = v0[6];
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v4, v0[9]);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression()
{
  result = lazy protocol witness table cache variable for type SQLExpression and conformance SQLExpression;
  if (!lazy protocol witness table cache variable for type SQLExpression and conformance SQLExpression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLExpression and conformance SQLExpression);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SQLExpression and conformance SQLExpression;
  if (!lazy protocol witness table cache variable for type SQLExpression and conformance SQLExpression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLExpression and conformance SQLExpression);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType and conformance AggregationFunction.AggregationType()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType and conformance AggregationFunction.AggregationType;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType and conformance AggregationFunction.AggregationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType and conformance AggregationFunction.AggregationType);
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSiG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_SiTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSSiIsgnndzo_Tf1nc_n(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t *))
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v51 = a2;
    v52 = 0;
    v7 = 0;
    v57 = a3;
    v10 = a3[8];
    v9 = a3 + 8;
    v8 = v10;
    v11 = 1 << *(v9 - 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v8;
    v14 = (v11 + 63) >> 6;
    while (1)
    {
      if (!v13)
      {
        v16 = v7;
        while (1)
        {
          v7 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v7 >= v14)
          {
            goto LABEL_19;
          }

          v17 = v9[v7];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v13 = (v17 - 1) & v17;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v7 << 6);
      v19 = v57[7];
      v20 = (v57[6] + 16 * v18);
      v21 = v20[1];
      v58[0] = *v20;
      v58[1] = v21;
      v59 = *(v19 + 8 * v18);

      v22 = a4(v58, &v59);
      if (v4)
      {

        return;
      }

      v23 = v22;

      if (v23)
      {
        *(a1 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v24 = __OFADD__(v52++, 1);
        if (v24)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_19:
    if (!v52)
    {
LABEL_47:

      return;
    }

    v25 = v57;
    if (v52 == v57[2])
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
    v26 = static _DictionaryStorage.allocate(capacity:)();
    v27 = v26;
    if (v51)
    {
      v28 = a1;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
      v28 = a1;
    }

    v30 = 0;
    v31 = v26 + 64;
    v32 = v52;
    while (v29)
    {
      v33 = __clz(__rbit64(v29));
      v53 = (v29 - 1) & v29;
LABEL_35:
      v36 = v33 | (v30 << 6);
      v37 = (v25[6] + 16 * v36);
      v38 = *v37;
      v39 = v37[1];
      v56 = *(v25[7] + 8 * v36);
      v40 = *(v27 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v41 = Hasher._finalize()();
      v42 = -1 << *(v27 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v31 + 8 * (v43 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v42) >> 6;
        v28 = a1;
        while (++v44 != v47 || (v46 & 1) == 0)
        {
          v48 = v44 == v47;
          if (v44 == v47)
          {
            v44 = 0;
          }

          v46 |= v48;
          v49 = *(v31 + 8 * v44);
          if (v49 != -1)
          {
            v45 = __clz(__rbit64(~v49)) + (v44 << 6);
            goto LABEL_45;
          }
        }

        goto LABEL_50;
      }

      v45 = __clz(__rbit64((-1 << v43) & ~*(v31 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v28 = a1;
LABEL_45:
      *(v31 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      v50 = (*(v27 + 48) + 16 * v45);
      *v50 = v38;
      v50[1] = v39;
      *(*(v27 + 56) + 8 * v45) = v56;
      ++*(v27 + 16);
      v24 = __OFSUB__(v32--, 1);
      if (v24)
      {
        goto LABEL_52;
      }

      v25 = v57;
      v29 = v53;
      if (!v32)
      {
        goto LABEL_47;
      }
    }

    v34 = v30;
    while (1)
    {
      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v30 >= v51)
      {
        goto LABEL_47;
      }

      v35 = v28[v30];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v53 = (v35 - 1) & v35;
        goto LABEL_35;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C33090](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;

      String.hash(into:)();
      String.hash(into:)();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized static AggregationFunction.AggregationType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AggregationFunction.AggregationType(a1, v44);
  outlined init with copy of AggregationFunction.AggregationType(a2, &v46);
  if (v45 > 3u)
  {
    if (v45 > 5u)
    {
      if (v45 != 6)
      {
        if (v57 == 7)
        {
          v4 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(v49, v53), vorrq_s8(v51, v55)), vorrq_s8(vorrq_s8(v50, v54), vorrq_s8(v52, v56))), vorrq_s8(vorrq_s8(v46, *v48), vorrq_s8(v47, *&v48[16])));
          if (!*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)))
          {
            outlined destroy of AggregationFunction.AggregationType(v44);
            v3 = 1;
            return v3 & 1;
          }
        }

LABEL_45:
        outlined destroy of URL?(v44, &_s14BiomeSQLParser19AggregationFunctionV0C4TypeO_AEtMd, &_s14BiomeSQLParser19AggregationFunctionV0C4TypeO_AEtMR);
        v3 = 0;
        return v3 & 1;
      }

      outlined init with copy of AggregationFunction.AggregationType(v44, &v38);
      if (v57 != 6)
      {
        goto LABEL_44;
      }
    }

    else if (v45 == 4)
    {
      outlined init with copy of AggregationFunction.AggregationType(v44, &v38);
      if (v57 != 4)
      {
        goto LABEL_44;
      }
    }

    else
    {
      outlined init with copy of AggregationFunction.AggregationType(v44, &v38);
      if (v57 != 5)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_32;
  }

  if (v45 <= 1u)
  {
    if (!v45)
    {
      outlined init with copy of AggregationFunction.AggregationType(v44, &v38);
      if (!v57)
      {
        goto LABEL_32;
      }

      goto LABEL_44;
    }

    outlined init with copy of AggregationFunction.AggregationType(v44, &v38);
    if (v57 != 1)
    {
LABEL_44:
      outlined destroy of SQLExpression(&v38);
      goto LABEL_45;
    }

LABEL_32:
    v17 = *v40;
    v18 = *&v40[16];
    v19 = v41;
    v20 = v42;
    v15 = v38;
    v16 = v39;
    v34 = *v48;
    v35 = *&v48[16];
    v36 = v49;
    v37 = v50;
    v32 = v46;
    v33 = v47;
    if (*&v40[8] == *&v48[8] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (specialized == infix<A>(_:_:)(BYTE8(v18), BYTE8(v35)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser19AggregationFunctionV_Tt1g5(v19.i64[0], v36.i64[0]))
    {
      v3 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser7BindingV_Tt1g5(v19.i64[1], v36.i64[1]);
    }

    else
    {
      v3 = 0;
    }

    outlined destroy of SQLExpression(&v32);
    outlined destroy of SQLExpression(&v15);
    goto LABEL_39;
  }

  if (v45 != 2)
  {
    outlined init with copy of AggregationFunction.AggregationType(v44, &v38);
    if (v57 != 3)
    {
      goto LABEL_44;
    }

    goto LABEL_32;
  }

  outlined init with copy of AggregationFunction.AggregationType(v44, &v38);
  if (v57 != 2)
  {
    outlined destroy of URL?(v43, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    goto LABEL_44;
  }

  v34 = *v40;
  v35 = *&v40[16];
  v36 = v41;
  v37 = v42;
  v32 = v38;
  v33 = v39;
  v28[2] = *v48;
  v29 = *&v48[16];
  v30 = v49;
  v31 = v50;
  v28[0] = v46;
  v28[1] = v47;
  v27[2] = v43[2];
  v27[3] = v43[3];
  v27[4] = v43[4];
  v27[5] = v43[5];
  v27[0] = v43[0];
  v27[1] = v43[1];
  v26[2] = v53;
  v26[3] = v54;
  v26[4] = v55;
  v26[5] = v56;
  v26[0] = v51;
  v26[1] = v52;
  if (*&v40[8] == *&v48[8] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (specialized == infix<A>(_:_:)(BYTE8(v35), BYTE8(v29)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser19AggregationFunctionV_Tt1g5(v36.i64[0], v30.i64[0]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser7BindingV_Tt1g5(v36.i64[1], v30.i64[1]))
  {
    outlined init with copy of PgQuery_Alias?(v27, &v15, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined init with copy of PgQuery_Alias?(v26, &v21, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    if (v16.i64[1])
    {
      outlined init with copy of PgQuery_Alias?(&v15, v10, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      if (*(&v22 + 1))
      {
        v6[2] = *v23;
        v7 = *&v23[16];
        v8 = v24;
        v9 = v25;
        v6[0] = v21;
        v6[1] = v22;
        if (v11 == *&v23[8] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (specialized == infix<A>(_:_:)(v12, BYTE8(v7)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser19AggregationFunctionV_Tt1g5(v13, v8))
        {
          v3 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser7BindingV_Tt1g5(v14, *(&v8 + 1));
        }

        else
        {
          v3 = 0;
        }

        outlined destroy of URL?(v26, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        outlined destroy of URL?(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        outlined destroy of SQLExpression(v6);
        outlined destroy of SQLExpression(v28);
        outlined destroy of SQLExpression(&v32);
        outlined destroy of SQLExpression(v10);
        outlined destroy of URL?(&v15, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        goto LABEL_39;
      }

      outlined destroy of URL?(v26, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      outlined destroy of URL?(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      outlined destroy of SQLExpression(v28);
      outlined destroy of SQLExpression(&v32);
      outlined destroy of SQLExpression(v10);
    }

    else
    {
      outlined destroy of URL?(v26, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      outlined destroy of URL?(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      outlined destroy of SQLExpression(v28);
      outlined destroy of SQLExpression(&v32);
      if (!*(&v22 + 1))
      {
        outlined destroy of URL?(&v15, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        v3 = 1;
        goto LABEL_39;
      }
    }

    outlined destroy of URL?(&v15, &_s14BiomeSQLParser13SQLExpressionVSg_ADtMd, &_s14BiomeSQLParser13SQLExpressionVSg_ADtMR);
  }

  else
  {
    outlined destroy of URL?(v26, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined destroy of URL?(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined destroy of SQLExpression(v28);
    outlined destroy of SQLExpression(&v32);
  }

  v3 = 0;
LABEL_39:
  outlined destroy of AggregationFunction.AggregationType(v44);
  return v3 & 1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLExpression(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for SQLExpression(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14BiomeSQLParser19AggregationFunctionV0C4TypeO(uint64_t a1)
{
  if ((*(a1 + 192) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 192) & 7;
  }
}

__n128 __swift_memcpy194_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AggregationFunction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 194))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 192);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AggregationFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 194) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 194) = 0;
    }

    if (a2)
    {
      *(result + 192) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AggregationFunction.AggregationType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 193))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 192);
  if (v3 >= 8)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AggregationFunction.AggregationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 192) = 0;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *(result + 192) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AggregationFunction.AggregationType(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 192) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AggregationFunction.AggregationType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AggregationFunction.AggregationType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for AggregationFunction.AggregationType.AVGCodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AggregationFunction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AggregationFunction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SQLExpression.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SQLExpression.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for SQLExpressionError()
{
  result = type metadata singleton initialization cache for SQLExpressionError;
  if (!type metadata singleton initialization cache for SQLExpressionError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SQLExpressionError()
{
  type metadata accessor for (node: PgQuery_Node)(319, &lazy cache variable for type metadata for (node: PgQuery_Node), type metadata accessor for PgQuery_Node);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (node: PgQuery_Node)(319, &lazy cache variable for type metadata for (BOOLExpr: PgQuery_BoolExpr), type metadata accessor for PgQuery_BoolExpr);
    if (v1 <= 0x3F)
    {
      type metadata accessor for (numNotArgExprs: Int)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (node: PgQuery_Node)(319, &lazy cache variable for type metadata for (aExpr: PgQuery_A_Expr), type metadata accessor for PgQuery_A_Expr);
        if (v3 <= 0x3F)
        {
          type metadata accessor for (node: PgQuery_Node)(319, &lazy cache variable for type metadata for (nullTest: PgQuery_NullTest), type metadata accessor for PgQuery_NullTest);
          if (v4 <= 0x3F)
          {
            type metadata accessor for (op: String, dataType: SQLDataType)(319, &lazy cache variable for type metadata for (op: String, dataType: SQLDataType));
            if (v5 <= 0x3F)
            {
              type metadata accessor for (op: String, dataType: SQLDataType)(319, &lazy cache variable for type metadata for (table: String, column: String));
              if (v6 <= 0x3F)
              {
                type metadata accessor for (column: String)();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for (function: String, argTypes: [SQLDataType])();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for (op: String, dataType: SQLDataType)(319, &lazy cache variable for type metadata for (column: String, tokenColumn: String));
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

uint64_t type metadata accessor for (numNotArgExprs: Int)()
{
  result = lazy cache variable for type metadata for (numNotArgExprs: Int);
  if (!lazy cache variable for type metadata for (numNotArgExprs: Int))
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &lazy cache variable for type metadata for (numNotArgExprs: Int));
  }

  return result;
}

void type metadata accessor for (node: PgQuery_Node)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for (column: String)()
{
  result = lazy cache variable for type metadata for (column: String);
  if (!lazy cache variable for type metadata for (column: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (column: String));
  }

  return result;
}

void type metadata accessor for (function: String, argTypes: [SQLDataType])()
{
  if (!lazy cache variable for type metadata for (function: String, argTypes: [SQLDataType]))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14BiomeSQLParser11SQLDataTypeOGMd, &_sSay14BiomeSQLParser11SQLDataTypeOGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (function: String, argTypes: [SQLDataType]));
    }
  }
}

void type metadata accessor for (op: String, dataType: SQLDataType)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t specialized ColumnResolver.init(schemas:)(uint64_t a1)
{
  v206[9] = *MEMORY[0x277D85DE8];
  v194 = *(a1 + 16);
  v193 = a1;
  if (!v194)
  {
    v2 = MEMORY[0x277D84F98];
LABEL_48:
    v54 = *(v2 + 32);
    v10 = v2;
    v2 = (((1 << v54) + 63) >> 6);
    if ((v54 & 0x3Fu) > 0xD)
    {
      goto LABEL_188;
    }

LABEL_49:
    MEMORY[0x28223BE20](a1);
    v56 = (&v189 - ((v55 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v56, v55);
    v57 = 0;
    v58 = 0;
    v59 = v10;
    v61 = *(v10 + 64);
    v10 += 64;
    v60 = v61;
    v62 = 1 << *(v10 - 32);
    v63 = -1;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    v64 = v63 & v60;
    v65 = (v62 + 63) >> 6;
    while (1)
    {
      if (v64)
      {
        v66 = __clz(__rbit64(v64));
        v64 &= v64 - 1;
        v67 = v66 | (v58 << 6);
      }

      else
      {
        v68 = v58;
        do
        {
          v58 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            goto LABEL_182;
          }

          if (v58 >= v65)
          {
            goto LABEL_63;
          }

          v69 = *(v10 + 8 * v58);
          ++v68;
        }

        while (!v69);
        v64 = (v69 - 1) & v69;
        v67 = __clz(__rbit64(v69)) | (v58 << 6);
      }

      if (*(*(v59 + 56) + 8 * v67) >= 2)
      {
        *(v56 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
        v21 = __OFADD__(v57++, 1);
        if (v21)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_63:
    if (v57)
    {
      v10 = v59;
      if (v57 == *(v59 + 16))
      {

        v70 = v59;
      }

      else
      {
        countAndFlagsBits = &v189;
        v202 = v2;
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
        v70 = static _DictionaryStorage.allocate(capacity:)();
        v71 = 0;
        v72 = *v56;
        v73 = v70 + 64;
        v74 = v59;
        do
        {
          if (v72)
          {
            v78 = __clz(__rbit64(v72));
            v72 &= v72 - 1;
          }

          else
          {
            v79 = v71;
            do
            {
              v71 = v79 + 1;
              if (__OFADD__(v79, 1))
              {
                goto LABEL_186;
              }

              if (v71 >= v202)
              {
                goto LABEL_86;
              }

              v80 = v56[v71];
              ++v79;
            }

            while (!v80);
            v78 = __clz(__rbit64(v80));
            v72 = (v80 - 1) & v80;
          }

          v81 = v78 | (v71 << 6);
          v82 = (*(v74 + 48) + 16 * v81);
          v83 = *v82;
          v10 = v82[1];
          v204 = *(*(v74 + 56) + 8 * v81);
          v84 = *(v70 + 40);
          Hasher.init(_seed:)();

          v203 = v83;
          String.hash(into:)();
          v2 = v206;
          v85 = Hasher._finalize()();
          v86 = -1 << *(v70 + 32);
          v87 = v85 & ~v86;
          v88 = v87 >> 6;
          if (((-1 << v87) & ~*(v73 + 8 * (v87 >> 6))) != 0)
          {
            v75 = __clz(__rbit64((-1 << v87) & ~*(v73 + 8 * (v87 >> 6)))) | v87 & 0x7FFFFFFFFFFFFFC0;
            v74 = v59;
          }

          else
          {
            v89 = 0;
            v90 = (63 - v86) >> 6;
            v74 = v59;
            do
            {
              if (++v88 == v90 && (v89 & 1) != 0)
              {
                goto LABEL_187;
              }

              v91 = v88 == v90;
              if (v88 == v90)
              {
                v88 = 0;
              }

              v89 |= v91;
              v92 = *(v73 + 8 * v88);
            }

            while (v92 == -1);
            v75 = __clz(__rbit64(~v92)) + (v88 << 6);
          }

          *(v73 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v75;
          v76 = (*(v70 + 48) + 16 * v75);
          v77 = v204;
          *v76 = v203;
          v76[1] = v10;
          *(*(v70 + 56) + 8 * v75) = v77;
          ++*(v70 + 16);
          --v57;
        }

        while (v57);
      }
    }

    else
    {
      v70 = MEMORY[0x277D84F98];
    }

LABEL_86:

    v93 = v196;
LABEL_87:
    v94 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSiG_SSs5NeverOTg5181_s14BiomeSQLParser14ColumnResolver33_B787555787B9EFBBEFB0C9C5225A4FB7LLV7schemasADSayAA6SchemaVG_tKcfcS2S3key_Si5valuet_tcfu_32a168a102879cc1a6a91172b0770f0c91SSAI_SiAJtSSTf3nnnpk_nTf1cn_n(v70);
    v191 = v93;

    v95 = MEMORY[0x259C32D20](*(v94 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    v205 = v95;
    v96 = *(v94 + 16);
    if (v96)
    {
      v97 = 0;
      v98 = (v94 + 40);
      do
      {
        if (v97 >= *(v94 + 16))
        {
          goto LABEL_184;
        }

        ++v97;
        v10 = *(v98 - 1);
        v99 = *v98;

        v2 = &v205;
        specialized Set._Variant.insert(_:)(v206, v10, v99);

        v98 += 2;
      }

      while (v96 != v97);
      v100 = v205;
    }

    else
    {
      v100 = v95;
    }

    if (!v194)
    {
      v103 = MEMORY[0x277D84F98];
LABEL_174:
      v186 = *MEMORY[0x277D85DE8];
      return v103;
    }

    v101 = 0;
    v192 = v193 + 32;
    v102 = v100 + 56;
    v103 = MEMORY[0x277D84F98];
    v195 = v100;
    v196 = (v100 + 56);
LABEL_96:
    v104 = (v192 + 24 * v101);
    v105 = v104[1];
    v200 = *v104;
    v106 = v104[2];
    v193 = v101 + 1;
    v107 = v106 + 64;
    v108 = 1 << *(v106 + 32);
    if (v108 < 64)
    {
      v109 = ~(-1 << v108);
    }

    else
    {
      v109 = -1;
    }

    v110 = v109 & *(v106 + 64);
    v2 = ((v108 + 63) >> 6);
    v202 = v105;

    v203 = v106;
    swift_bridgeObjectRetain_n();
    v111 = 0;
    v198 = v2;
    for (i = v106 + 64; ; v107 = i)
    {
      if (!v110)
      {
        while (1)
        {
          v113 = v111 + 1;
          if (__OFADD__(v111, 1))
          {
            break;
          }

          if (v113 >= v2)
          {

            v101 = v193;
            if (v193 == v194)
            {
              goto LABEL_174;
            }

            goto LABEL_96;
          }

          v110 = *(v107 + 8 * v113);
          ++v111;
          if (v110)
          {
            goto LABEL_107;
          }
        }

LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v113 = v111;
LABEL_107:
      v114 = __clz(__rbit64(v110)) | (v113 << 6);
      v115 = (*(v203 + 48) + 16 * v114);
      v116 = *v115;
      object = v115[1];
      LODWORD(v204) = *(*(v203 + 56) + v114);
      if (!*(v100 + 16))
      {
        break;
      }

      v117 = *(v100 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v118 = Hasher._finalize()();
      v119 = -1 << *(v100 + 32);
      v120 = v118 & ~v119;
      if (((*(v102 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120) & 1) == 0)
      {
        goto LABEL_118;
      }

      v10 = ~v119;
      while (1)
      {
        v121 = (*(v100 + 48) + 16 * v120);
        v122 = *v121 == v116 && v121[1] == object;
        if (v122 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v120 = (v120 + 1) & v10;
        if (((*(v102 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120) & 1) == 0)
        {
          goto LABEL_118;
        }
      }

LABEL_128:
      v206[0] = v200;
      v206[1] = v202;

      MEMORY[0x259C32B90](46, 0xE100000000000000);
      MEMORY[0x259C32B90](v116, object);

      v136 = String.lowercased()();
      object = v136._object;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v206[0] = v103;
      v2 = v103;
      v138 = specialized __RawDictionaryStorage.find<A>(_:)(v136._countAndFlagsBits, v136._object);
      v140 = *(v103 + 16);
      v141 = (v139 & 1) == 0;
      v21 = __OFADD__(v140, v141);
      v142 = v140 + v141;
      if (v21)
      {
        goto LABEL_179;
      }

      v10 = v139;
      if (*(v103 + 24) < v142)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v142, isUniquelyReferenced_nonNull_native);
        v103 = v206[0];
        v2 = v206[0];
        v138 = specialized __RawDictionaryStorage.find<A>(_:)(v136._countAndFlagsBits, v136._object);
        if ((v10 & 1) != (v143 & 1))
        {
          goto LABEL_195;
        }

LABEL_133:
        v102 = v196;
        goto LABEL_134;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_133;
      }

      countAndFlagsBits = v138;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      v146 = static _DictionaryStorage.copy(original:)();
      v147 = *(v103 + 16);
      v197 = v146;
      if (v147)
      {
        v148 = v146;
        v149 = (v146 + 64);
        v2 = (v103 + 64);
        v150 = ((1 << *(v148 + 32)) + 63) >> 6;
        if (v148 != v103 || v149 >= &v2[v150])
        {
          memmove(v149, (v103 + 64), 8 * v150);
        }

        v151 = 0;
        v197[2] = *(v103 + 16);
        v152 = 1 << *(v103 + 32);
        v153 = *(v103 + 64);
        if (v152 < 64)
        {
          v154 = ~(-1 << v152);
        }

        else
        {
          v154 = -1;
        }

        v155 = v154 & v153;
        v156 = (v152 + 63) >> 6;
        if ((v154 & v153) != 0)
        {
          do
          {
            v157 = __clz(__rbit64(v155));
            v155 &= v155 - 1;
LABEL_151:
            v160 = v157 | (v151 << 6);
            v161 = (*(v103 + 48) + 16 * v160);
            v163 = *v161;
            v162 = v161[1];
            LOBYTE(v161) = *(*(v103 + 56) + v160);
            v164 = v197;
            v165 = (v197[6] + 16 * v160);
            *v165 = v163;
            v165[1] = v162;
            *(v164[7] + v160) = v161;
          }

          while (v155);
        }

        v158 = v151;
        while (1)
        {
          v151 = v158 + 1;
          if (__OFADD__(v158, 1))
          {
            goto LABEL_193;
          }

          if (v151 >= v156)
          {
            break;
          }

          v159 = v2[v151];
          ++v158;
          if (v159)
          {
            v157 = __clz(__rbit64(v159));
            v155 = (v159 - 1) & v159;
            goto LABEL_151;
          }
        }

        v100 = v195;
      }

      v138 = countAndFlagsBits;
      v102 = v196;
      v103 = v197;
LABEL_134:
      v110 &= v110 - 1;
      if (v10)
      {
        v112 = v138;

        *(*(v103 + 56) + v112) = v204;
      }

      else
      {
        *(v103 + 8 * (v138 >> 6) + 64) |= 1 << v138;
        *(*(v103 + 48) + 16 * v138) = v136;
        *(*(v103 + 56) + v138) = v204;
        v144 = *(v103 + 16);
        v21 = __OFADD__(v144, 1);
        v145 = v144 + 1;
        if (v21)
        {
          goto LABEL_183;
        }

        *(v103 + 16) = v145;
      }

      v111 = v113;
      v2 = v198;
    }

LABEL_118:
    v123 = String.lowercased()();
    v10 = v123._object;
    v2 = v103;
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v206[0] = v2;
    countAndFlagsBits = v123._countAndFlagsBits;
    v126 = specialized __RawDictionaryStorage.find<A>(_:)(v123._countAndFlagsBits, v123._object);
    v127 = v2[2];
    v128 = (v125 & 1) == 0;
    v129 = v127 + v128;
    if (__OFADD__(v127, v128))
    {
      goto LABEL_180;
    }

    v130 = v125;
    v197 = v2;
    if (v2[3] < v129)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v129, v124);
      v103 = v206[0];
      v2 = v206[0];
      v131 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v123._object);
      if ((v130 & 1) != (v132 & 1))
      {
        goto LABEL_195;
      }

      v126 = v131;
      if (v130)
      {
        goto LABEL_122;
      }

LABEL_125:
      *(v103 + 8 * (v126 >> 6) + 64) |= 1 << v126;
      v133 = (*(v103 + 48) + 16 * v126);
      *v133 = countAndFlagsBits;
      v133[1] = v123._object;
      *(*(v103 + 56) + v126) = v204;
      v134 = *(v103 + 16);
      v21 = __OFADD__(v134, 1);
      v135 = v134 + 1;
      if (v21)
      {
        goto LABEL_185;
      }

      *(v103 + 16) = v135;
      goto LABEL_127;
    }

    if (v124)
    {
      v103 = v197;
      if ((v125 & 1) == 0)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      v166 = v197;
      v167 = static _DictionaryStorage.copy(original:)();
      v168 = v166;
      v103 = v167;
      if (v168[2])
      {
        v169 = (v167 + 64);
        v170 = (v168 + 8);
        v171 = ((1 << *(v103 + 32)) + 63) >> 6;
        v189 = v168 + 8;
        if (v103 != v168 || v169 >= &v170[8 * v171])
        {
          memmove(v169, v170, 8 * v171);
        }

        v172 = 0;
        v173 = v197;
        *(v103 + 16) = v197[2];
        v174 = 1 << *(v173 + 32);
        v175 = v173[8];
        if (v174 < 64)
        {
          v176 = ~(-1 << v174);
        }

        else
        {
          v176 = -1;
        }

        v177 = v176 & v175;
        v2 = ((v174 + 63) >> 6);
        if (!v177)
        {
          goto LABEL_162;
        }

        while (1)
        {
          v178 = __clz(__rbit64(v177));
          for (j = (v177 - 1) & v177; ; j = (v180 - 1) & v180)
          {
            v181 = v178 | (v172 << 6);
            v182 = (v197[6] + 16 * v181);
            v184 = *v182;
            v183 = v182[1];
            LOBYTE(v182) = *(v197[7] + v181);
            v185 = (*(v103 + 48) + 16 * v181);
            *v185 = v184;
            v185[1] = v183;
            *(*(v103 + 56) + v181) = v182;

            v177 = j;
            if (j)
            {
              break;
            }

LABEL_162:
            v179 = v172;
            do
            {
              v172 = v179 + 1;
              if (__OFADD__(v179, 1))
              {
                goto LABEL_194;
              }

              if (v172 >= v2)
              {
                goto LABEL_169;
              }

              v180 = v189[v172];
              ++v179;
            }

            while (!v180);
            v178 = __clz(__rbit64(v180));
          }
        }
      }

LABEL_169:

      if ((v130 & 1) == 0)
      {
        goto LABEL_125;
      }
    }

LABEL_122:

    *(*(v103 + 56) + v126) = v204;
LABEL_127:
    v100 = v195;
    goto LABEL_128;
  }

  v1 = 0;
  v197 = (a1 + 32);
  v2 = MEMORY[0x277D84F98];
  v3 = MEMORY[0x277D84F98];
LABEL_4:
  v4 = &v197[3 * v1];
  v5 = v4[2];
  v198 = v4[1];
  i = v1 + 1;
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;

  v202 = v5;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  v200 = v5 + 64;
  for (countAndFlagsBits = v10; ; v10 = countAndFlagsBits)
  {
    if (!v9)
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_176;
        }

        if (v12 >= v10)
        {
          break;
        }

        v9 = *(v6 + 8 * v12);
        ++v11;
        if (v9)
        {
          goto LABEL_15;
        }
      }

      v1 = i;
      if (i == v194)
      {
        goto LABEL_48;
      }

      goto LABEL_4;
    }

    v12 = v11;
LABEL_15:
    v13 = (*(v202 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    v14 = *v13;
    v15 = v13[1];
    v16 = v2[2];

    v204 = v14;
    if (v16)
    {

      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
      v19 = v18;

      if (v19)
      {
        v20 = *(v2[7] + 8 * v17);
      }

      else
      {
        v20 = 0;
      }

      v14 = v204;
      v6 = v200;
    }

    else
    {
      v20 = 0;
    }

    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_177;
    }

    v203 = v22;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v206[0] = v3;
    v2 = v3;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v25 = *(v3 + 16);
    v26 = (v24 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    object = v24;
    if (*(v3 + 24) >= v27)
    {
      if ((v23 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
        v195 = static _DictionaryStorage.copy(original:)();
        if (*(v3 + 16))
        {
          v35 = (v195 + 64);
          v36 = (v3 + 64);
          v37 = ((1 << *(v195 + 32)) + 63) >> 6;
          v192 = v3 + 64;
          if (v195 != v3 || v35 >= &v36[8 * v37])
          {
            memmove(v35, v36, 8 * v37);
          }

          v38 = 0;
          *(v195 + 16) = *(v3 + 16);
          v39 = 1 << *(v3 + 32);
          v40 = *(v3 + 64);
          if (v39 < 64)
          {
            v41 = ~(-1 << v39);
          }

          else
          {
            v41 = -1;
          }

          v42 = v41 & v40;
          v43 = (v39 + 63) >> 6;
          if ((v41 & v40) != 0)
          {
            do
            {
              v44 = __clz(__rbit64(v42));
              v42 &= v42 - 1;
LABEL_44:
              v47 = v44 | (v38 << 6);
              v48 = (*(v3 + 48) + 16 * v47);
              v50 = *v48;
              v49 = v48[1];
              v51 = *(*(v3 + 56) + 8 * v47);
              v52 = v195;
              v53 = (*(v195 + 48) + 16 * v47);
              *v53 = v50;
              v53[1] = v49;
              *(*(v52 + 56) + 8 * v47) = v51;
            }

            while (v42);
          }

          v45 = v38;
          while (1)
          {
            v38 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
            }

            if (v38 >= v43)
            {
              break;
            }

            v46 = *(v192 + 8 * v38);
            ++v45;
            if (v46)
            {
              v44 = __clz(__rbit64(v46));
              v42 = (v46 - 1) & v46;
              goto LABEL_44;
            }
          }
        }

        v2 = v195;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, v23);
      v2 = v206[0];
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v204, v15);
      if ((object & 1) != (v30 & 1))
      {
LABEL_195:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_196;
      }

      v10 = v29;
      v2 = v206[0];
    }

    v9 &= v9 - 1;
    if (object)
    {

      *(v2[7] + 8 * v10) = v203;
    }

    else
    {
      v2[(v10 >> 6) + 8] |= 1 << v10;
      v31 = (v2[6] + 16 * v10);
      v32 = v203;
      *v31 = v204;
      v31[1] = v15;
      *(v2[7] + 8 * v10) = v32;
      v33 = v2[2];
      v21 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v21)
      {
        goto LABEL_181;
      }

      v2[2] = v34;
    }

    v3 = v2;
    v11 = v12;
  }

LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_49;
  }

  object = swift_slowAlloc();

  v93 = v196;
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSiG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_SiTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSSiIsgnndzo_Tf1nc_n(object, v2, v10, closure #2 in ColumnResolver.init(schemas:));
  v2 = v93;
  if (!v93)
  {
    v70 = v188;

    MEMORY[0x259C33C60](object, -1, -1);

    goto LABEL_87;
  }

LABEL_196:

  result = MEMORY[0x259C33C60](object, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized SQLExpression.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002553B6650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79546E7275746572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002553B6670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73676E69646E6962 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7106931 && a2 == 0xE300000000000000)
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

uint64_t specialized AggregationFunction.AggregationType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 4675137 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x544E554F43 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54535F544E554F43 && a2 == 0xEA00000000005241 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4F435F50554F5247 && a2 == 0xEC0000005441434ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 5783885 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 5130573 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 5068115 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C41544F54 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError()
{
  result = lazy protocol witness table cache variable for type SQLExpressionError and conformance SQLExpressionError;
  if (!lazy protocol witness table cache variable for type SQLExpressionError and conformance SQLExpressionError)
  {
    type metadata accessor for SQLExpressionError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLExpressionError and conformance SQLExpressionError);
  }

  return result;
}

void *partial apply for closure #1 in SQLExpressionFuncCall.init(function:schemas:columnResolver:tokenInformation:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(a3, a1, v3[2], v3[3], v3[4], v3[5]);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

{
  return partial apply for closure #1 in SQLExpressioBoolExpr.init(BOOLExpr:schemas:columnResolver:tokenInformation:)(a1, a2, a3);
}

uint64_t outlined init with copy of PgQuery_Node(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PgQuery_Node.OneOf_Node(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t outlined init with take of PgQuery_BitString(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError()
{
  result = lazy protocol witness table cache variable for type SQLParserError and conformance SQLParserError;
  if (!lazy protocol witness table cache variable for type SQLParserError and conformance SQLParserError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLParserError and conformance SQLParserError);
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

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLExpressionAExpr(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLExpressionAExpr(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLExpressioBoolExpr(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for SQLExpressioBoolExpr(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for SQLExpressionNullTest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t storeEnumTagSinglePayload for SQLExpressionNullTest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLExpressionAggregationFunction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 208);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLExpressionAggregationFunction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 216) = 1;
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
      *(result + 208) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Binding(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for Binding(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLExpressionConst(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for SQLExpressionConst(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SQLExpressionInteger(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t getEnumTagSinglePayload for SQLExpressionConstString(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SQLExpressionConstString(uint64_t result, int a2, int a3)
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

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF013SQLExpressionH033_B787555787B9EFBBEFB0C9C5225A4FB7LL_psAE_pTg5(void (*a1)(__int128 *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v17 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v17;
    v9 = *(type metadata accessor for PgQuery_Node(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(v16, v10, &v15);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v17 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v13 + 1;
      outlined init with take of SQLExpressionNode(v16, v6 + 40 * v13 + 32);
      v10 += v11;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF12ResultColumnVsAE_pTg5(void (*a1)(_OWORD *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v23;
    v8 = *(type metadata accessor for PgQuery_Node(0) - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(v22, v9, &v21);
      if (v3)
      {
        break;
      }

      v23 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v5 = v23;
      }

      *(v5 + 16) = v12 + 1;
      v13 = (v5 + (v12 << 7));
      v14 = v22[0];
      v15 = v22[1];
      v16 = v22[3];
      v13[4] = v22[2];
      v13[5] = v16;
      v13[2] = v14;
      v13[3] = v15;
      v17 = v22[4];
      v18 = v22[5];
      v19 = v22[7];
      v13[8] = v22[6];
      v13[9] = v19;
      v13[6] = v17;
      v13[7] = v18;
      v9 += v10;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF13SQLExpressionVsAE_pTg5(void (*a1)(_OWORD *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v21;
    v8 = *(type metadata accessor for PgQuery_Node(0) - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(v20, v9, &v19);
      if (v3)
      {
        break;
      }

      v21 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v5 = v21;
      }

      *(v5 + 16) = v12 + 1;
      v13 = (v5 + 96 * v12);
      v14 = v20[1];
      v13[2] = v20[0];
      v13[3] = v14;
      v15 = v20[2];
      v16 = v20[3];
      v17 = v20[5];
      v13[6] = v20[4];
      v13[7] = v17;
      v13[4] = v15;
      v13[5] = v16;
      v9 += v10;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t SQLParserError.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (v5 <= 4)
  {
    if (*(v0 + 32) > 1u)
    {
      if (v5 != 2)
      {
        if (v5 != 3)
        {
          v13 = 0;
          _StringGuts.grow(_:)(60);
          MEMORY[0x259C32B90](0xD000000000000029, 0x80000002553B67B0);
          MEMORY[0x259C32B90](v2, v1);
          MEMORY[0x259C32B90](0x6120687469772022, 0xEE0022203A736772);
          v11 = MEMORY[0x259C32CC0](v3, MEMORY[0x277D837D0]);
          MEMORY[0x259C32B90](v11);

LABEL_25:
          v6 = 34;
          v7 = 0xE100000000000000;
          goto LABEL_26;
        }

        v13 = 0;
        _StringGuts.grow(_:)(53);
        MEMORY[0x259C32B90](0xD000000000000032, 0x80000002553B67E0);
        goto LABEL_23;
      }

      _StringGuts.grow(_:)(42);

      v13 = 0x20656C626154;
      MEMORY[0x259C32B90](v2, v1);
      v6 = 0xD000000000000022;
      v7 = 0x80000002553B6820;
LABEL_26:
      MEMORY[0x259C32B90](v6, v7);
      return v13;
    }

    if (!*(v0 + 32))
    {
      _StringGuts.grow(_:)(29);

      v13 = 0xD000000000000016;
      MEMORY[0x259C32B90](v3, v4);
      MEMORY[0x259C32B90](657954, 0xE300000000000000);
      goto LABEL_12;
    }

    _StringGuts.grow(_:)(29);

    v8 = 0xD00000000000001ALL;
LABEL_22:
    v13 = v8;
LABEL_23:
    v9 = v2;
    v10 = v1;
    goto LABEL_24;
  }

  if (*(v0 + 32) <= 6u)
  {
    _StringGuts.grow(_:)(50);

    v8 = 0xD00000000000002FLL;
    goto LABEL_22;
  }

  if (v5 == 7)
  {
    v13 = 0;
    _StringGuts.grow(_:)(109);
    MEMORY[0x259C32B90](0xD00000000000005CLL, 0x80000002553B66B0);
    MEMORY[0x259C32B90](v2, v1);
    MEMORY[0x259C32B90](0x6F73616552202E22, 0xEC00000022203A6ELL);
    v9 = v3;
    v10 = v4;
LABEL_24:
    MEMORY[0x259C32B90](v9, v10);
    goto LABEL_25;
  }

  if (v5 == 8)
  {
    _StringGuts.grow(_:)(33);

    v13 = 0xD00000000000001FLL;
LABEL_12:
    v6 = v2;
    v7 = v1;
    goto LABEL_26;
  }

  if (v3 | v1 | v2 | v4)
  {
    return 0xD000000000000036;
  }

  else
  {
    return 0xD000000000000026;
  }
}

BiomeSQLParser::SQLDataType_optional __swiftcall SQLDataType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SQLDataType.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t SQLDataType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x72656765746E69;
  v3 = 1684632949;
  if (v1 != 6)
  {
    v3 = 1819047278;
  }

  v4 = 1635017060;
  if (v1 != 4)
  {
    v4 = 1852797802;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x676E69727473;
  if (v1 != 2)
  {
    v5 = 1702125924;
  }

  if (*v0)
  {
    v2 = 0x656C62756F64;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SQLDataType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x72656765746E69;
  v5 = 1684632949;
  if (v2 != 6)
  {
    v5 = 1819047278;
  }

  v6 = 1635017060;
  if (v2 != 4)
  {
    v6 = 1852797802;
  }

  if (*v1 <= 5u)
  {
    v5 = v6;
  }

  v7 = 0xE600000000000000;
  v8 = 0x676E69727473;
  if (v2 != 2)
  {
    v8 = 1702125924;
    v7 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x656C62756F64;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 3u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v9;
  a1[1] = v3;
}

BiomeSQLParser::SQLRawDataType_optional __swiftcall SQLRawDataType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SQLRawDataType.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t SQLRawDataType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x52454745544E49;
  v3 = 1415071060;
  v4 = 1112493122;
  if (v1 != 3)
  {
    v4 = 1280070990;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1279346002;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SQLRawDataType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SQLRawDataType()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SQLRawDataType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SQLRawDataType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x52454745544E49;
  v5 = 1415071060;
  v6 = 1112493122;
  if (v2 != 3)
  {
    v6 = 1280070990;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 1279346002;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

BiomeSQLParser::DatabaseCatalog __swiftcall DatabaseCatalog.init(schemas:)(Swift::OpaquePointer schemas)
{
  v35 = v1;
  v3 = *(schemas._rawValue + 2);
  if (!v3)
  {

    v4 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_7;
    }

LABEL_19:
    v12 = MEMORY[0x277D84F98];
    goto LABEL_20;
  }

  v38 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v38;
  v5 = (schemas._rawValue + 48);
  do
  {
    v7 = *(v5 - 2);
    v6 = *(v5 - 1);
    v8 = *v5;
    v10 = *(v38 + 16);
    v9 = *(v38 + 24);
    swift_bridgeObjectRetain_n();

    if (v10 >= v9 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    }

    *(v38 + 16) = v10 + 1;
    v11 = (v38 + 40 * v10);
    v11[4] = v7;
    v11[5] = v6;
    v11[6] = v7;
    v11[7] = v6;
    v11[8] = v8;
    v5 += 3;
    --v3;
  }

  while (v3);

  if (!*(v38 + 16))
  {
    goto LABEL_19;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser6SchemaVGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser6SchemaVGMR);
  v12 = static _DictionaryStorage.allocate(capacity:)();
  v39 = v12;
  v36 = *(v4 + 16);
  if (!v36)
  {
LABEL_20:

    *v35 = v12;
    return result;
  }

  v13 = 0;
  v14 = (v4 + 64);
  while (v13 < *(v4 + 16))
  {
    v15 = *(v14 - 1);
    v16 = *v14;
    v17 = *(v14 - 3);
    v18 = *(v14 - 2);
    v19 = *(v14 - 4);

    if (!v17)
    {
      goto LABEL_20;
    }

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v17);
    v22 = v12[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_22;
    }

    v26 = v21;
    if (v12[3] < v25)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, 1);
      v12 = v39;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v17);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_26;
      }
    }

    if (v26)
    {
      goto LABEL_24;
    }

    v12[(v20 >> 6) + 8] |= 1 << v20;
    v28 = (v12[6] + 16 * v20);
    *v28 = v19;
    v28[1] = v17;
    v29 = (v12[7] + 24 * v20);
    *v29 = v18;
    v29[1] = v15;
    v29[2] = v16;
    v30 = v12[2];
    v24 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v24)
    {
      goto LABEL_23;
    }

    ++v13;
    v12[2] = v31;
    v14 += 5;
    if (v36 == v13)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  v33 = swift_allocError();
  swift_willThrow();
  v37 = v33;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  _StringGuts.grow(_:)(30);
  MEMORY[0x259C32B90](0xD00000000000001BLL, 0x80000002553B68D0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x259C32B90](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_26:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_27:

  result.schemas._rawValue = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DatabaseCatalog.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73616D65686373 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DatabaseCatalog.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DatabaseCatalog.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DatabaseCatalog.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser15DatabaseCatalogV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser15DatabaseCatalogV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14BiomeSQLParser6SchemaVGMd, &_sSDySS14BiomeSQLParser6SchemaVGMR);
  lazy protocol witness table accessor for type [String : Schema] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Schema] and conformance <> [A : B], lazy protocol witness table accessor for type Schema and conformance Schema);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v7, v3);
}

uint64_t DatabaseCatalog.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14BiomeSQLParser15DatabaseCatalogV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedDecodingContainerVy14BiomeSQLParser15DatabaseCatalogV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14BiomeSQLParser6SchemaVGMd, &_sSDySS14BiomeSQLParser6SchemaVGMR);
    lazy protocol witness table accessor for type [String : Schema] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Schema] and conformance <> [A : B], lazy protocol witness table accessor for type Schema and conformance Schema);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for PgQuery_ScanToken(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t Schema.tableName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

BiomeSQLParser::Schema __swiftcall Schema.init(tableName:columns:)(Swift::String tableName, Swift::OpaquePointer columns)
{
  *v2 = tableName;
  *(v2 + 16) = columns;
  result.tableName = tableName;
  result.columns = columns;
  return result;
}

uint64_t static Schema.lookup(rangeVar:catalog:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = a1[3];
  v4 = a1[2] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4)
  {
    v5 = 0x80000002553B6CE0;
    v6 = 1;
    v7 = 0xD00000000000003ELL;
  }

  else
  {
    v9 = *a2;
    v7 = a1[4];
    v5 = a1[5];
    v10 = *(*a2 + 16);

    if (v10)
    {
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v5);
      if (v12)
      {
        v13 = v11;

        v14 = (*(v9 + 56) + 24 * v13);
        v15 = v14[1];
        v16 = v14[2];
        *a3 = *v14;
        a3[1] = v15;
        a3[2] = v16;
      }
    }

    v6 = 2;
  }

  lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
  swift_allocError();
  *v18 = v7;
  *(v18 + 8) = v5;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  return swift_willThrow();
}

uint64_t static Schema.JSONEach(with:)@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v13[0] = 0x65756C6176;
  v13[1] = 0xE500000000000000;
  v14 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
  v4 = static _DictionaryStorage.allocate(capacity:)();

  outlined destroy of URL?(v13, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x65756C6176, 0xE500000000000000);
  v7 = v6;

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v4[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v4[6] + 16 * v5);
    *v9 = 0x65756C6176;
    v9[1] = 0xE500000000000000;
    *(v4[7] + v5) = v3;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      v4[2] = v12;
      *a2 = 0x6361655F6E6F736ALL;
      a2[1] = 0xE900000000000068;
      a2[2] = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Schema.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_14BiomeSQLParser11SQLDataTypeOTt1g5(v2, v3);
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_14BiomeSQLParser11SQLDataTypeOTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      for (i = (v13 - 1) & v13; ; i = (v8 - 1) & v8)
      {
        v14 = v11 | (v4 << 6);
        v15 = v3;
        v16 = (*(v3 + 48) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(v3 + 56) + v14);
        v20 = v17 == 0;

        if (!v17)
        {
          return v20;
        }

        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
        v23 = v22;

        if ((v23 & 1) == 0)
        {
          return v20;
        }

        v24 = *(*(a2 + 56) + v21);
        if (v24 > 3)
        {
          v25 = 0xE400000000000000;
          if (*(*(a2 + 56) + v21) > 5u)
          {
            if (v24 == 6)
            {
              v26 = 1684632949;
              if (v19 <= 3)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v26 = 1819047278;
              if (v19 <= 3)
              {
LABEL_43:
                if (v19 > 1)
                {
                  if (v19 == 2)
                  {
                    v27 = 0xE600000000000000;
                    v28 = 0x676E69727473;
                  }

                  else
                  {
                    v27 = 0xE400000000000000;
                    v28 = 1702125924;
                  }
                }

                else if (v19)
                {
                  v27 = 0xE600000000000000;
                  v28 = 0x656C62756F64;
                }

                else
                {
                  v27 = 0xE700000000000000;
                  v28 = 0x72656765746E69;
                }

                goto LABEL_52;
              }
            }
          }

          else if (v24 == 4)
          {
            v26 = 1635017060;
            if (v19 <= 3)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v26 = 1852797802;
            if (v19 <= 3)
            {
              goto LABEL_43;
            }
          }
        }

        else if (*(*(a2 + 56) + v21) > 1u)
        {
          if (v24 == 2)
          {
            v25 = 0xE600000000000000;
            v26 = 0x676E69727473;
            if (v19 <= 3)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v25 = 0xE400000000000000;
            v26 = 1702125924;
            if (v19 <= 3)
            {
              goto LABEL_43;
            }
          }
        }

        else if (*(*(a2 + 56) + v21))
        {
          v25 = 0xE600000000000000;
          v26 = 0x656C62756F64;
          if (v19 <= 3)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v25 = 0xE700000000000000;
          v26 = 0x72656765746E69;
          if (v19 <= 3)
          {
            goto LABEL_43;
          }
        }

        v27 = 0xE400000000000000;
        if (v19 > 5)
        {
          if (v19 == 6)
          {
            v28 = 1684632949;
          }

          else
          {
            v28 = 1819047278;
          }
        }

        else if (v19 == 4)
        {
          v28 = 1635017060;
        }

        else
        {
          v28 = 1852797802;
        }

LABEL_52:
        v3 = v15;
        if (v26 == v28 && v25 == v27)
        {

          v8 = i;
          if (!i)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v8 = i;
          if ((v10 & 1) == 0)
          {
            return v20;
          }

          if (!i)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = __clz(__rbit64(v8));
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Schema.CodingKeys()
{
  if (*v0)
  {
    result = 0x736E6D756C6F63;
  }

  else
  {
    result = 0x6D614E656C626174;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Schema.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Schema.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Schema.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Schema.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser6SchemaV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser6SchemaV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14BiomeSQLParser11SQLDataTypeOGMd, &_sSDySS14BiomeSQLParser11SQLDataTypeOGMR);
    lazy protocol witness table accessor for type [String : SQLDataType] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : SQLDataType] and conformance <> [A : B], lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v14 + 8))(v7, v4);
}

uint64_t Schema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14BiomeSQLParser6SchemaV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedDecodingContainerVy14BiomeSQLParser6SchemaV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14BiomeSQLParser11SQLDataTypeOGMd, &_sSDySS14BiomeSQLParser11SQLDataTypeOGMR);
  v18 = 1;
  lazy protocol witness table accessor for type [String : SQLDataType] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : SQLDataType] and conformance <> [A : B], lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Schema(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_14BiomeSQLParser11SQLDataTypeOTt1g5(v2, v3);
}

uint64_t FromClause.init(fromClauseNodes:resources:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char **a3@<X8>)
{
  v390 = a2;
  v377 = a3;
  v4 = type metadata accessor for SQLTokenInformation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v335 = &v314 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v341 = &v314 - v9;
  ColumnRef = type metadata accessor for PgQuery_ColumnRef(0);
  v10 = *(*(ColumnRef - 8) + 64);
  v11 = MEMORY[0x28223BE20](ColumnRef);
  v336 = (&v314 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v343 = (&v314 - v13);
  String = type metadata accessor for PgQuery_String(0);
  v14 = *(*(String - 8) + 64);
  MEMORY[0x28223BE20](String);
  v355 = (&v314 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v364 = type metadata accessor for PgQuery_FuncCall(0);
  v16 = *(*(v364 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v364);
  v339 = &v314 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v346 = &v314 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v351 = &v314 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v353 = &v314 - v24;
  MEMORY[0x28223BE20](v23);
  v360 = &v314 - v25;
  List = type metadata accessor for PgQuery_List(0);
  v26 = *(*(List - 8) + 64);
  v27 = MEMORY[0x28223BE20](List);
  v29 = (&v314 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x28223BE20](v27);
  v347 = (&v314 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v352 = (&v314 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v359 = (&v314 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v362 = (&v314 - v37);
  MEMORY[0x28223BE20](v36);
  v367 = (&v314 - v38);
  RangeFunction = type metadata accessor for PgQuery_RangeFunction(0);
  v371 = *(RangeFunction - 8);
  v372 = RangeFunction;
  v40 = *(v371 + 64);
  MEMORY[0x28223BE20](RangeFunction);
  v369 = &v314 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v370 = &v314 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v373 = &v314 - v46;
  v387 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v389 = *(v387 - 8);
  v47 = *(v389 + 64);
  v48 = MEMORY[0x28223BE20](v387);
  v376 = (&v314 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v48);
  v374 = &v314 - v50;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v51 = *(RangeVar - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v54 = &v314 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v55 = *(*(v386 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v386);
  v337 = &v314 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v338 = &v314 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v342 = &v314 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v344 = &v314 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v345 = &v314 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v348 = &v314 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v350 = &v314 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v354 = &v314 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v357 = &v314 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v356 = &v314 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v358 = &v314 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v361 = &v314 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v366 = &v314 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v365 = &v314 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v378 = &v314 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v385 = &v314 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v383 = &v314 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v92 = &v314 - v91;
  MEMORY[0x28223BE20](v90);
  v94 = &v314 - v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v96 = *(*(v95 - 8) + 64);
  v97 = MEMORY[0x28223BE20](v95 - 8);
  *&v380 = &v314 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v100 = &v314 - v99;
  Node = type metadata accessor for PgQuery_Node(0);
  v102 = *(Node - 8);
  v103 = *(v102 + 64);
  v104 = MEMORY[0x28223BE20](Node);
  v105 = MEMORY[0x28223BE20](v104);
  v106 = MEMORY[0x28223BE20](v105);
  v107 = MEMORY[0x28223BE20](v106);
  v108 = MEMORY[0x28223BE20](v107);
  v109 = MEMORY[0x28223BE20](v108);
  v110 = MEMORY[0x28223BE20](v109);
  v111 = MEMORY[0x28223BE20](v110);
  v112 = MEMORY[0x28223BE20](v111);
  v113 = MEMORY[0x28223BE20](v112);
  v363 = &v314 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v116 = MEMORY[0x28223BE20](v115);
  v375 = &v314 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v130 = (&v314 - v126);
  if (!*(a1 + 16))
  {

    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v138 = 0xD00000000000002FLL;
    *(v138 + 8) = 0x80000002553B6CB0;
    *(v138 + 16) = 0;
    *(v138 + 24) = 0;
    *(v138 + 32) = 1;
    swift_willThrow();
    v139 = type metadata accessor for PlanResources;
    v140 = v390;
    return outlined destroy of PgQuery_ParseResult(v140, v139);
  }

  v332 = *(a1 + 16);
  v333 = v54;
  v324 = v124;
  v325 = v125;
  v322 = v122;
  v323 = v123;
  v320 = v29;
  v321 = v121;
  v318 = v119;
  v319 = v120;
  v316 = v128;
  v317 = v129;
  v331 = v102;
  v326 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v327 = v127;
  v131 = v118;
  v328 = a1 + v326;
  outlined init with copy of PgQuery_ScanResult(a1 + v326, &v314 - v126, type metadata accessor for PgQuery_Node);
  v132 = a1;
  v334 = v51;
  v133 = *(v51 + 56);
  v384 = v100;
  v133(v100, 1, 1, RangeVar);
  v329 = v131;
  v134 = *(v131 + 20);
  v381 = v130;
  outlined init with copy of PgQuery_Alias?(*(v130 + v134) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v94, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v382 = v94;
  outlined init with copy of PgQuery_Alias?(v94, v92, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v136 = v389 + 48;
  v135 = *(v389 + 48);
  v137 = v92;
  if (v135(v92, 1, v387) == 1)
  {

LABEL_9:
    v148 = v390;
    *&v405 = 0;
    *(&v405 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    *&v405 = 0xD00000000000002FLL;
    *(&v405 + 1) = 0x80000002553B6C20;
    v149 = v382;
    outlined init with copy of PgQuery_Alias?(v382, v385, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v150 = String.init<A>(describing:)();
    MEMORY[0x259C32B90](v150);

    v151 = v405;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v152 = v151;
    *(v152 + 16) = 0;
    *(v152 + 24) = 0;
    *(v152 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v148, type metadata accessor for PlanResources);
    outlined destroy of URL?(v149, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined destroy of URL?(v384, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    outlined destroy of PgQuery_ParseResult(v381, type metadata accessor for PgQuery_Node);
    return outlined destroy of URL?(v137, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  v330 = v132;
  v141 = v92;
  v142 = v383;
  outlined init with copy of PgQuery_Alias?(v141, v383, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    outlined destroy of PgQuery_ParseResult(v142, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_9;
  }

  v389 = v136;
  v143 = v384;
  outlined destroy of URL?(v384, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with take of PgQuery_ParseResult(v142, v143, type metadata accessor for PgQuery_RangeVar);
  v144 = RangeVar;
  v133(v143, 0, 1, RangeVar);
  outlined destroy of URL?(v137, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v145 = v380;
  outlined init with copy of PgQuery_Alias?(v143, v380, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v334 + 48))(v145, 1, v144) == 1)
  {

    outlined destroy of URL?(v145, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v146 = 0xD00000000000001CLL;
    *(v146 + 8) = 0x80000002553B6C50;
    *(v146 + 16) = 0;
    *(v146 + 24) = 0;
    *(v146 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v390, type metadata accessor for PlanResources);
    outlined destroy of URL?(v382, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v147 = v143;
LABEL_12:
    outlined destroy of URL?(v147, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v139 = type metadata accessor for PgQuery_Node;
    v140 = v381;
    return outlined destroy of PgQuery_ParseResult(v140, v139);
  }

  v154 = v333;
  outlined init with take of PgQuery_ParseResult(v145, v333, type metadata accessor for PgQuery_RangeVar);
  v155 = v390;
  v395[0] = *v390;

  v156 = v379;
  static Schema.lookup(rangeVar:catalog:)(v154, v395, &v405);
  v157 = v156;
  v158 = v330;
  if (v156)
  {

    outlined destroy of PgQuery_ParseResult(v155, type metadata accessor for PlanResources);

    outlined destroy of PgQuery_ParseResult(v154, type metadata accessor for PgQuery_RangeVar);
    outlined destroy of URL?(v382, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v147 = v384;
    goto LABEL_12;
  }

  v315 = v135;

  v159 = v405;
  v160 = v406;
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMR);
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_2552FE080;
  RangeVar = v159;
  *(v161 + 32) = v159;
  *(v161 + 48) = v160;
  v409 = 0u;
  v410 = 0u;
  v407 = 0u;
  v408 = 0u;
  v405 = 0u;
  v406 = 0u;
  v162 = *(v158 + 16);
  v163 = v382;
  if (v162 < v332)
  {
    __break(1u);
    goto LABEL_78;
  }

  v164 = v161;
  v165 = v315;
  if (v332 != 2)
  {

    outlined destroy of PgQuery_ParseResult(v155, type metadata accessor for PlanResources);
    outlined destroy of PgQuery_ParseResult(v154, type metadata accessor for PgQuery_RangeVar);
    outlined destroy of URL?(v163, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined destroy of URL?(v384, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    result = outlined destroy of PgQuery_ParseResult(v381, type metadata accessor for PgQuery_Node);
    goto LABEL_19;
  }

  v380 = xmmword_2552FE080;
  v166 = v375;
  outlined init with copy of PgQuery_ScanResult(v328 + *(v331 + 72), v375, type metadata accessor for PgQuery_Node);
  v167 = v378;
  outlined init with copy of PgQuery_Alias?(*(v166 + *(v329 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v378, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);

  outlined destroy of PgQuery_ParseResult(v166, type metadata accessor for PgQuery_Node);
  if (v165(v167, 1, v387) == 1)
  {

    outlined destroy of PgQuery_ParseResult(v390, type metadata accessor for PlanResources);
    outlined destroy of PgQuery_ParseResult(v154, type metadata accessor for PgQuery_RangeVar);
    outlined destroy of URL?(v382, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined destroy of URL?(v384, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    outlined destroy of PgQuery_ParseResult(v381, type metadata accessor for PgQuery_Node);
    result = outlined destroy of URL?(v378, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_19:
    v168 = v377;
    *v377 = v164;
    v169 = v408;
    *(v168 + 5) = v407;
    *(v168 + 7) = v169;
    v170 = v410;
    *(v168 + 9) = v409;
    *(v168 + 11) = v170;
    v171 = v406;
    *(v168 + 1) = v405;
    *(v168 + 3) = v171;
    return result;
  }

  v385 = v160;
  v383 = *(&v159 + 1);
  v379 = v164;
  v375 = 0;
  v172 = v374;
  outlined init with take of PgQuery_ParseResult(v378, v374, type metadata accessor for PgQuery_Node.OneOf_Node);
  v173 = v371;
  v174 = v372;
  v175 = *(v371 + 56);
  v176 = v373;
  v175(v373, 1, 1, v372);
  outlined init with copy of PgQuery_ScanResult(v172, v376, type metadata accessor for PgQuery_Node.OneOf_Node);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v178 = v390;
  if (EnumCaseMultiPayload != 182)
  {

    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v181 = 0xD000000000000030;
    *(v181 + 8) = 0x80000002553B6C70;
    *(v181 + 16) = 0;
    *(v181 + 24) = 0;
    *(v181 + 32) = 1;
    swift_willThrow();

    outlined destroy of PgQuery_ParseResult(v178, type metadata accessor for PlanResources);
    outlined destroy of URL?(v176, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
    outlined destroy of PgQuery_ParseResult(v172, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined destroy of URL?(&v405, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined destroy of PgQuery_ParseResult(v333, type metadata accessor for PgQuery_RangeVar);
    outlined destroy of URL?(v382, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined destroy of URL?(v384, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    outlined destroy of PgQuery_ParseResult(v381, type metadata accessor for PgQuery_Node);
    v140 = v376;
    v139 = type metadata accessor for PgQuery_Node.OneOf_Node;
    return outlined destroy of PgQuery_ParseResult(v140, v139);
  }

  outlined destroy of URL?(v176, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  outlined init with take of PgQuery_ParseResult(v376, v176, type metadata accessor for PgQuery_RangeFunction);
  v175(v176, 0, 1, v174);
  v179 = v370;
  outlined init with copy of PgQuery_Alias?(v176, v370, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  v180 = v176;
  if ((*(v173 + 48))(v179, 1, v174) == 1)
  {

    outlined destroy of URL?(v179, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
LABEL_28:
    v190 = v381;
    v191 = v384;
    v192 = v374;
LABEL_57:
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v212 = 0xD000000000000030;
    *(v212 + 8) = 0x80000002553B6C70;
    *(v212 + 16) = 0;
    *(v212 + 24) = 0;
    *(v212 + 32) = 1;
    swift_willThrow();

    outlined destroy of PgQuery_ParseResult(v178, type metadata accessor for PlanResources);
    outlined destroy of URL?(v180, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
    outlined destroy of PgQuery_ParseResult(v192, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined destroy of URL?(&v405, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined destroy of PgQuery_ParseResult(v333, type metadata accessor for PgQuery_RangeVar);
    outlined destroy of URL?(v382, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined destroy of URL?(v191, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v139 = type metadata accessor for PgQuery_Node;
    v140 = v190;
    return outlined destroy of PgQuery_ParseResult(v140, v139);
  }

  v182 = v179;
  v183 = v369;
  outlined init with take of PgQuery_ParseResult(v182, v369, type metadata accessor for PgQuery_RangeFunction);
  v184 = *(v183 + 8);
  if (*(v184 + 16) != 1)
  {

    outlined destroy of PgQuery_ParseResult(v183, type metadata accessor for PgQuery_RangeFunction);
    goto LABEL_28;
  }

  v185 = v327;
  outlined init with copy of PgQuery_ScanResult(v184 + v326, v327, type metadata accessor for PgQuery_Node);
  v155 = *(v185 + *(v329 + 20));
  v157 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  v186 = v365;
  outlined init with copy of PgQuery_Alias?(v155 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v365, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v187 = v315(v186, 1, v387);
  v145 = MEMORY[0x277D84F90];
  if (v187 == 1)
  {
    outlined destroy of URL?(v186, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v189 = v366;
    v188 = v367;
  }

  else
  {
    v193 = swift_getEnumCaseMultiPayload() == 225;
    v194 = v186;
    v189 = v366;
    v188 = v367;
    if (v193)
    {
      outlined init with take of PgQuery_ParseResult(v194, v367, type metadata accessor for PgQuery_List);
      goto LABEL_33;
    }

    outlined destroy of PgQuery_ParseResult(v194, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  *v188 = v145;
  v195 = v188 + *(List + 20);
  UnknownStorage.init()();
LABEL_33:
  v196 = *v188;

  outlined destroy of PgQuery_ParseResult(v188, type metadata accessor for PgQuery_List);
  v197 = *(v196 + 16);

  if (v197 != 2)
  {
    goto LABEL_54;
  }

  outlined init with copy of PgQuery_Alias?(v155 + v157, v189, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v315(v189, 1, v387) == 1)
  {
    outlined destroy of URL?(v189, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      v198 = v362;
      outlined init with take of PgQuery_ParseResult(v189, v362, type metadata accessor for PgQuery_List);
      goto LABEL_41;
    }

    outlined destroy of PgQuery_ParseResult(v189, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v198 = v362;
  *v362 = v145;
  v199 = v198 + *(List + 20);
  UnknownStorage.init()();
LABEL_41:
  v200 = v198;
  v201 = *v198;

  outlined destroy of PgQuery_ParseResult(v200, type metadata accessor for PgQuery_List);
  if (!*(v201 + 16))
  {

LABEL_54:

    outlined destroy of PgQuery_ParseResult(v327, type metadata accessor for PgQuery_Node);

    v211 = v183;
LABEL_55:
    outlined destroy of PgQuery_ParseResult(v211, type metadata accessor for PgQuery_RangeFunction);
LABEL_56:
    v178 = v390;
    v190 = v381;
    v191 = v384;
    v180 = v373;
    v192 = v374;
    goto LABEL_57;
  }

  v202 = v363;
  outlined init with copy of PgQuery_ScanResult(v201 + v326, v363, type metadata accessor for PgQuery_Node);

  v203 = *(v202 + *(v329 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  v204 = v361;
  outlined init with copy of PgQuery_Alias?(v203, v361, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v315(v204, 1, v387) == 1)
  {
    outlined destroy of URL?(v204, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v205 = v360;
  }

  else
  {
    v193 = swift_getEnumCaseMultiPayload() == 170;
    v206 = v204;
    v205 = v360;
    if (v193)
    {
      outlined init with take of PgQuery_ParseResult(v206, v360, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_51;
    }

    outlined destroy of PgQuery_ParseResult(v206, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v207 = *(v364 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v205 + v207) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_51:
  outlined destroy of PgQuery_ParseResult(v363, type metadata accessor for PgQuery_Node);
  v208 = *(*(v205 + *(v364 + 20)) + 16);

  outlined destroy of PgQuery_ParseResult(v205, type metadata accessor for PgQuery_FuncCall);
  v209 = *(v208 + 16);

  if (v209 != 1)
  {
    goto LABEL_54;
  }

  v210 = v358;
  outlined init with copy of PgQuery_Alias?(v155 + v157, v358, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v315(v210, 1, v387) == 1)
  {
    outlined destroy of URL?(v210, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      v213 = v359;
      outlined init with take of PgQuery_ParseResult(v210, v359, type metadata accessor for PgQuery_List);
      goto LABEL_62;
    }

    outlined destroy of PgQuery_ParseResult(v210, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v213 = v359;
  *v359 = v145;
  v214 = v213 + *(List + 20);
  UnknownStorage.init()();
LABEL_62:
  v215 = *v213;

  outlined destroy of PgQuery_ParseResult(v213, type metadata accessor for PgQuery_List);
  if (!*(v215 + 16))
  {
LABEL_74:

LABEL_120:

    outlined destroy of PgQuery_ParseResult(v327, type metadata accessor for PgQuery_Node);

    v211 = v369;
    goto LABEL_55;
  }

  v216 = v325;
  outlined init with copy of PgQuery_ScanResult(v215 + v326, v325, type metadata accessor for PgQuery_Node);

  v217 = v356;
  outlined init with copy of PgQuery_Alias?(*(v216 + *(v329 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v356, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v315(v217, 1, v387) == 1)
  {
    outlined destroy of URL?(v217, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      v218 = v353;
      outlined init with take of PgQuery_ParseResult(v356, v353, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_71;
    }

    outlined destroy of PgQuery_ParseResult(v356, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v218 = v353;
  UnknownStorage.init()();
  v219 = *(v364 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v218 + v219) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_71:
  outlined destroy of PgQuery_ParseResult(v325, type metadata accessor for PgQuery_Node);
  v220 = *(*(v218 + *(v364 + 20)) + 16);

  outlined destroy of PgQuery_ParseResult(v218, type metadata accessor for PgQuery_FuncCall);
  if (!*(v220 + 16))
  {
    goto LABEL_74;
  }

  v221 = v324;
  outlined init with copy of PgQuery_ScanResult(v220 + v326, v324, type metadata accessor for PgQuery_Node);

  v222 = v357;
  outlined init with copy of PgQuery_Alias?(*(v221 + *(v329 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v357, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v315(v222, 1, v387) == 1)
  {
    outlined destroy of URL?(v357, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_79:
    v223 = v355;
    *v355 = 0;
    v223[1] = 0xE000000000000000;
    v224 = v223 + *(String + 20);
    UnknownStorage.init()();
    goto LABEL_80;
  }

  if (swift_getEnumCaseMultiPayload() != 222)
  {
LABEL_78:
    outlined destroy of PgQuery_ParseResult(v357, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_79;
  }

  outlined init with take of PgQuery_ParseResult(v357, v355, type metadata accessor for PgQuery_String);
LABEL_80:
  outlined destroy of PgQuery_ParseResult(v324, type metadata accessor for PgQuery_Node);
  v225 = v355;
  v227 = *v355;
  v226 = v355[1];

  outlined destroy of PgQuery_ParseResult(v225, type metadata accessor for PgQuery_String);
  if (v227 == 0x6361655F6E6F736ALL && v226 == 0xE900000000000068)
  {
  }

  else
  {
    v228 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v228 & 1) == 0)
    {
LABEL_119:

      goto LABEL_120;
    }
  }

  v229 = v354;
  outlined init with copy of PgQuery_Alias?(v155 + v157, v354, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v315(v229, 1, v387) == 1)
  {
    outlined destroy of URL?(v354, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      outlined init with take of PgQuery_ParseResult(v354, v352, type metadata accessor for PgQuery_List);
      goto LABEL_90;
    }

    outlined destroy of PgQuery_ParseResult(v354, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v230 = v352;
  *v352 = v145;
  v231 = v230 + *(List + 20);
  UnknownStorage.init()();
LABEL_90:
  v232 = v352;
  v233 = *v352;

  outlined destroy of PgQuery_ParseResult(v232, type metadata accessor for PgQuery_List);
  if (!*(v233 + 16))
  {
LABEL_118:

    goto LABEL_119;
  }

  v234 = v323;
  outlined init with copy of PgQuery_ScanResult(v233 + v326, v323, type metadata accessor for PgQuery_Node);

  v235 = v350;
  outlined init with copy of PgQuery_Alias?(*(v234 + *(v329 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v350, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v315(v235, 1, v387) == 1)
  {
    outlined destroy of URL?(v350, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      outlined init with take of PgQuery_ParseResult(v350, v351, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_99;
    }

    outlined destroy of PgQuery_ParseResult(v350, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v236 = *(v364 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v351 + v236) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_99:
  outlined destroy of PgQuery_ParseResult(v323, type metadata accessor for PgQuery_Node);
  v237 = v351;
  v238 = *(*(v351 + *(v364 + 20)) + 24);

  outlined destroy of PgQuery_ParseResult(v237, type metadata accessor for PgQuery_FuncCall);
  v239 = *(v238 + 16);

  if (v239 != 1)
  {
    goto LABEL_119;
  }

  v240 = v348;
  outlined init with copy of PgQuery_Alias?(v155 + v157, v348, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v315(v240, 1, v387) == 1)
  {
    outlined destroy of URL?(v348, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      outlined init with take of PgQuery_ParseResult(v348, v347, type metadata accessor for PgQuery_List);
      goto LABEL_106;
    }

    outlined destroy of PgQuery_ParseResult(v348, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v241 = v347;
  *v347 = v145;
  v242 = v241 + *(List + 20);
  UnknownStorage.init()();
LABEL_106:
  v243 = v347;
  v244 = *v347;

  outlined destroy of PgQuery_ParseResult(v243, type metadata accessor for PgQuery_List);
  if (!*(v244 + 16))
  {
    goto LABEL_118;
  }

  v245 = v322;
  outlined init with copy of PgQuery_ScanResult(v244 + v326, v322, type metadata accessor for PgQuery_Node);

  v246 = v345;
  outlined init with copy of PgQuery_Alias?(*(v245 + *(v329 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v345, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v315(v246, 1, v387) == 1)
  {
    outlined destroy of URL?(v345, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      outlined init with take of PgQuery_ParseResult(v345, v346, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_115;
    }

    outlined destroy of PgQuery_ParseResult(v345, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v247 = *(v364 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v346 + v247) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_115:
  outlined destroy of PgQuery_ParseResult(v322, type metadata accessor for PgQuery_Node);
  v248 = v346;
  v249 = *(*(v346 + *(v364 + 20)) + 24);

  outlined destroy of PgQuery_ParseResult(v248, type metadata accessor for PgQuery_FuncCall);
  if (!*(v249 + 16))
  {
    goto LABEL_118;
  }

  v250 = v321;
  outlined init with copy of PgQuery_ScanResult(v249 + v326, v321, type metadata accessor for PgQuery_Node);

  v251 = v344;
  outlined init with copy of PgQuery_Alias?(*(v250 + *(v329 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v344, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v315(v251, 1, v387) == 1)
  {
    outlined destroy of URL?(v344, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 167)
    {
      outlined init with take of PgQuery_ParseResult(v344, v343, type metadata accessor for PgQuery_ColumnRef);
      goto LABEL_125;
    }

    outlined destroy of PgQuery_ParseResult(v344, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v252 = v343;
  *v343 = v145;
  *(v252 + 2) = 0;
  v253 = v252 + *(ColumnRef + 24);
  UnknownStorage.init()();
LABEL_125:
  outlined destroy of PgQuery_ParseResult(v321, type metadata accessor for PgQuery_Node);
  v254 = v343;
  v255 = *v343;

  outlined destroy of PgQuery_ParseResult(v254, type metadata accessor for PgQuery_ColumnRef);
  v256 = *(v255 + 16);

  if (v256 != 1)
  {
    goto LABEL_119;
  }

  v257 = v342;
  outlined init with copy of PgQuery_Alias?(v155 + v157, v342, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v315(v257, 1, v387) == 1)
  {
    outlined destroy of URL?(v342, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      outlined init with take of PgQuery_ParseResult(v342, v320, type metadata accessor for PgQuery_List);
      goto LABEL_132;
    }

    outlined destroy of PgQuery_ParseResult(v342, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v258 = v320;
  *v320 = v145;
  v259 = v258 + *(List + 20);
  UnknownStorage.init()();
LABEL_132:
  v260 = v320;
  v261 = *v320;

  outlined destroy of PgQuery_ParseResult(v260, type metadata accessor for PgQuery_List);
  if (!*(v261 + 16))
  {
LABEL_144:

    (*(v331 + 56))(v341, 1, 1, v329);
LABEL_154:
    outlined destroy of PgQuery_ParseResult(v327, type metadata accessor for PgQuery_Node);

    outlined destroy of PgQuery_ParseResult(v369, type metadata accessor for PgQuery_RangeFunction);
    outlined destroy of URL?(v341, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    goto LABEL_56;
  }

  v262 = v319;
  outlined init with copy of PgQuery_ScanResult(v261 + v326, v319, type metadata accessor for PgQuery_Node);

  v263 = v338;
  outlined init with copy of PgQuery_Alias?(*(v262 + *(v329 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v338, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v315(v263, 1, v387) == 1)
  {
    outlined destroy of URL?(v338, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      outlined init with take of PgQuery_ParseResult(v338, v339, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_141;
    }

    outlined destroy of PgQuery_ParseResult(v338, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v264 = *(v364 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v339 + v264) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_141:
  outlined destroy of PgQuery_ParseResult(v319, type metadata accessor for PgQuery_Node);
  v265 = v339;
  v266 = *(*(v339 + *(v364 + 20)) + 24);

  outlined destroy of PgQuery_ParseResult(v265, type metadata accessor for PgQuery_FuncCall);
  if (!*(v266 + 16))
  {
    goto LABEL_144;
  }

  v267 = v318;
  outlined init with copy of PgQuery_ScanResult(v266 + v326, v318, type metadata accessor for PgQuery_Node);

  v268 = v337;
  outlined init with copy of PgQuery_Alias?(*(v267 + *(v329 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v337, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v315(v268, 1, v387) == 1)
  {
    outlined destroy of URL?(v337, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 167)
    {
      outlined init with take of PgQuery_ParseResult(v337, v336, type metadata accessor for PgQuery_ColumnRef);
      goto LABEL_149;
    }

    outlined destroy of PgQuery_ParseResult(v337, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v269 = v336;
  *v336 = v145;
  *(v269 + 2) = 0;
  v270 = v269 + *(ColumnRef + 24);
  UnknownStorage.init()();
LABEL_149:
  outlined destroy of PgQuery_ParseResult(v318, type metadata accessor for PgQuery_Node);
  v271 = v336;
  v272 = *v336;

  outlined destroy of PgQuery_ParseResult(v271, type metadata accessor for PgQuery_ColumnRef);
  if (*(v272 + 16))
  {
    outlined init with copy of PgQuery_ScanResult(v272 + v326, v341, type metadata accessor for PgQuery_Node);
    v273 = 0;
  }

  else
  {
    v273 = 1;
  }

  v274 = v331;
  v275 = v341;
  v276 = v273;
  v277 = v329;
  (*(v331 + 56))(v341, v276, 1, v329);
  if ((*(v274 + 48))(v275, 1, v277) == 1)
  {

    goto LABEL_154;
  }

  v278 = v316;
  outlined init with take of PgQuery_ParseResult(v341, v316, type metadata accessor for PgQuery_Node);
  outlined init with copy of PgQuery_ScanResult(v278, v317, type metadata accessor for PgQuery_Node);
  v279 = swift_allocObject();
  *(v279 + 16) = v380;
  v280 = v383;
  *(v279 + 32) = RangeVar;
  *(v279 + 40) = v280;
  *(v279 + 48) = v385;
  v281 = type metadata accessor for PlanResources(0);
  outlined init with copy of PgQuery_ScanResult(v390 + *(v281 + 20), v335, type metadata accessor for SQLTokenInformation);

  v283 = v375;
  v284 = specialized ColumnResolver.init(schemas:)(v282);
  if (!v283)
  {
    v286 = v284;
    v287 = v285;

    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v317, v279, v286, v287, v335, v394);
    v288 = 0x65756C6176;

    outlined init with copy of VirtualTable.Module(v394, v393);
    outlined init with copy of VirtualTable.Module(v393, v395);
    v289 = v396;
    v290 = v397;
    __swift_project_boxed_opaque_existential_0(v395, v396);
    v398 = (*(v290 + 8))(v289, v290);
    v399 = v291;
    v292 = v396;
    v293 = v397;
    __swift_project_boxed_opaque_existential_0(v395, v396);
    (*(v293 + 16))(&v411, v292, v293);
    v400 = v411;
    v294 = v396;
    v295 = v397;
    __swift_project_boxed_opaque_existential_0(v395, v396);
    v401 = (*(v295 + 24))(v294, v295);
    v296 = v396;
    v297 = v397;
    __swift_project_boxed_opaque_existential_0(v395, v396);
    v402 = (*(v297 + 32))(v296, v297);
    v298 = v396;
    v299 = v397;
    __swift_project_boxed_opaque_existential_0(v395, v396);
    v300 = (*(v299 + 40))(v298, v299);
    v302 = v301;
    __swift_destroy_boxed_opaque_existential_0(v393);
    __swift_destroy_boxed_opaque_existential_0(v394);
    outlined destroy of PgQuery_ParseResult(v335, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_ParseResult(v317, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(&v405, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    v403 = v300;
    v404 = v302;
    outlined init with copy of SQLExpression(v395, &v405);
    v303 = v400;
    v391[0] = 0x65756C6176;
    v391[1] = 0xE500000000000000;
    v392 = v400;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
    v304 = static _DictionaryStorage.allocate(capacity:)();

    outlined destroy of URL?(v391, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
    v305 = specialized __RawDictionaryStorage.find<A>(_:)(0x65756C6176, 0xE500000000000000);
    v307 = v306;

    if (v307)
    {
      __break(1u);
    }

    else
    {
      v304[(v305 >> 6) + 8] |= 1 << v305;
      v309 = (v304[6] + 16 * v305);
      *v309 = 0x65756C6176;
      v309[1] = 0xE500000000000000;
      *(v304[7] + v305) = v303;
      v310 = v304[2];
      v311 = __OFADD__(v310, 1);
      v308 = v310 + 1;
      if (!v311)
      {
        v304[2] = v308;
        v307 = *(v379 + 2);
        v308 = *(v379 + 3);
        v288 = v307 + 1;
        if (v307 < v308 >> 1)
        {
LABEL_160:

          outlined destroy of PgQuery_ParseResult(v390, type metadata accessor for PlanResources);
          outlined destroy of PgQuery_ParseResult(v316, type metadata accessor for PgQuery_Node);
          outlined destroy of URL?(v373, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
          outlined destroy of PgQuery_ParseResult(v374, type metadata accessor for PgQuery_Node.OneOf_Node);
          outlined destroy of PgQuery_ParseResult(v333, type metadata accessor for PgQuery_RangeVar);
          outlined destroy of URL?(v382, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
          outlined destroy of URL?(v384, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
          outlined destroy of SQLExpression(v395);
          v312 = v379;
          *(v379 + 2) = v288;
          v313 = &v312[24 * v307];
          v164 = v312;
          *(v313 + 4) = 0x6361655F6E6F736ALL;
          *(v313 + 5) = 0xE900000000000068;
          *(v313 + 6) = v304;
          outlined destroy of PgQuery_ParseResult(v327, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_ParseResult(v381, type metadata accessor for PgQuery_Node);
          result = outlined destroy of PgQuery_ParseResult(v369, type metadata accessor for PgQuery_RangeFunction);
          goto LABEL_19;
        }

LABEL_163:
        v379 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v308 > 1), v288, 1, v379);
        goto LABEL_160;
      }
    }

    __break(1u);
    goto LABEL_163;
  }

  swift_bridgeObjectRelease_n();
  outlined destroy of PgQuery_ParseResult(v390, type metadata accessor for PlanResources);
  outlined destroy of PgQuery_ParseResult(v335, type metadata accessor for SQLTokenInformation);
  outlined destroy of PgQuery_ParseResult(v317, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_ParseResult(v316, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v373, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  outlined destroy of PgQuery_ParseResult(v374, type metadata accessor for PgQuery_Node.OneOf_Node);
  outlined destroy of URL?(&v405, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  outlined destroy of PgQuery_ParseResult(v333, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v382, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  outlined destroy of URL?(v384, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined destroy of PgQuery_ParseResult(v327, type metadata accessor for PgQuery_Node);

  outlined destroy of PgQuery_ParseResult(v381, type metadata accessor for PgQuery_Node);
  return outlined destroy of PgQuery_ParseResult(v369, type metadata accessor for PgQuery_RangeFunction);
}