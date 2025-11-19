void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSiG_SSs5NeverOTg5181_s14BiomeSQLParser14ColumnResolver33_B787555787B9EFBBEFB0C9C5225A4FB7LLV7schemasADSayAA6SchemaVG_tKcfcS2S3key_Si5valuet_tcfu_32a168a102879cc1a6a91172b0770f0c91SSAI_SiAJtSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = a1 + 64;
    v4 = -1 << *(a1 + 32);
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v23 = *(a1 + 36);
    v21 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v23 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v9 = (*(a1 + 48) + 16 * v5);
      v10 = v9[1];
      v22 = *v9;
      v11 = *(v24 + 16);
      v12 = *(v24 + 24);

      if (v11 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v11 + 1, 1);
      }

      *(v24 + 16) = v11 + 1;
      v13 = v24 + 16 * v11;
      *(v13 + 32) = v22;
      *(v13 + 40) = v10;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v14 = *(a1 + 64 + 8 * v8);
      if ((v14 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      if (v23 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v15 = v14 & (-2 << (v5 & 0x3F));
      if (v15)
      {
        v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v8 << 6;
        v17 = v8 + 1;
        v18 = (a1 + 72 + 8 * v8);
        while (v17 < (v7 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v5, v23, 0);
            v7 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v5, v23, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v21)
      {
        return;
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
  }
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
      __swift_project_boxed_opaque_existential_1(v22, v24);
      v9 = (*(v8 + 32))(v7, v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
    }

    else
    {
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
      v9 = MEMORY[0x1E69E7CC0];
    }

    v10 = v1[8];
    v11 = v1[9];
    __swift_project_boxed_opaque_existential_1(v1 + 5, v10);
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
  __swift_project_boxed_opaque_existential_1(v0, v1);
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
    __swift_project_boxed_opaque_existential_1(v0, v6);
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
    __swift_project_boxed_opaque_existential_1(v0, v4);
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
  MEMORY[0x1865F6280](v1);

  MEMORY[0x1865F6280](39, 0xE100000000000000);
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
    v7 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      v59 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
      v7 = v59;
      v18 = v3 + 32;
      do
      {
        outlined init with copy of Aggregation(v18, &v52);
        v19 = v55;
        v20 = v56;
        __swift_project_boxed_opaque_existential_1(&v52, v55);
        v21 = (*(v20 + 8))(v19, v20);
        v23 = v22;
        __swift_destroy_boxed_opaque_existential_1Tm(&v52);
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
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v59 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      v7 = v59;
      v8 = v3 + 32;
      do
      {
        outlined init with copy of Aggregation(v8, &v52);
        v9 = v55;
        v10 = v56;
        __swift_project_boxed_opaque_existential_1(&v52, v55);
        v11 = (*(v10 + 8))(v9, v10);
        v13 = v12;
        __swift_destroy_boxed_opaque_existential_1Tm(&v52);
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

    MEMORY[0x1865F6280](v30, v32);

    MEMORY[0x1865F6280](41, 0xE100000000000000);
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
  __swift_project_boxed_opaque_existential_1((result + 32), v27);
  v29 = (*(v28 + 8))(v27, v28);
  MEMORY[0x1865F6280](v29);

  MEMORY[0x1865F6280](41, 0xE100000000000000);
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

    v36 = MEMORY[0x1E69E7CC0];
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
  v36 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    outlined init with copy of Aggregation(v35, &v52);
    v38 = v55;
    v37 = v56;
    __swift_project_boxed_opaque_existential_1(&v52, v55);
    v39 = (*(v37 + 32))(v38, v37);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v52);
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
  v5 = MEMORY[0x1E69E7CC0];
  v41 = v4;
  if (v4)
  {
    v48 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v48;
    v6 = a2 + 32;
    v7 = v4;
    do
    {
      outlined init with copy of Aggregation(v6, &v43);
      v8 = v46;
      v9 = v47;
      __swift_project_boxed_opaque_existential_1(&v43, v46);
      v10 = (*(v9 + 8))(v8, v9);
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1Tm(&v43);
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
  MEMORY[0x1865F6280](40, 0xE100000000000000);
  MEMORY[0x1865F6280](v16, v18);

  MEMORY[0x1865F6280](41, 0xE100000000000000);
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

    v26 = MEMORY[0x1E69E7CC0];
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
  v26 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    outlined init with copy of Aggregation(v24, &v43);
    v27 = v46;
    v28 = v47;
    __swift_project_boxed_opaque_existential_1(&v43, v46);
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
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v43);
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
  MEMORY[0x1865F6280](v1);

  MEMORY[0x1865F6280](39, 0xE100000000000000);
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
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v97 - v11;
  String = type metadata accessor for PgQuery_String(0);
  v12 = *(*(String - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](String);
  v99 = (&v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v98 = (&v97 - v15);
  Node = type metadata accessor for PgQuery_Node(0);
  v17 = *(Node - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](Node);
  v105 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v100 = &v97 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v107 = &v97 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v97 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v110 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v97 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v97 - v33;
  v35 = *(type metadata accessor for PgQuery_A_Expr(0) + 20);
  v109 = a1;
  v36 = *(a1 + v35);
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr;
  outlined init with copy of PgQuery_Alias?(v36 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr, v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v104 = v17;
  v38 = *(v17 + 48);
  v39 = v38(v34, 1, Node);
  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
        _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
      _s10Foundation4UUIDVSgWOhTm_0(v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
    return _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
  }

  outlined destroy of PgQuery_Node.OneOf_Node(v63, type metadata accessor for PgQuery_Node);

  result = outlined init with take of Aggregation(&v117, v40 + 40);
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
    _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
    return __swift_destroy_boxed_opaque_existential_1Tm((v40 + 40));
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
      _s10Foundation4UUIDVSgWOhTm_0(v79, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
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
    _s10Foundation4UUIDVSgWOhTm_0(v72, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
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
    __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
    (*(v93 + 16))(&v120, v92, v93);
    v94 = v120;
    __swift_destroy_boxed_opaque_existential_1Tm(&v117);
  }

  else
  {
    _s10Foundation4UUIDVSgWOhTm_0(&v117, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
    v94 = 8;
  }

  LOBYTE(v117) = v94;
  v95 = *(v40 + 64);
  v96 = *(v40 + 72);
  __swift_project_boxed_opaque_existential_1((v40 + 40), v95);
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
    MEMORY[0x1EEE9AC00](result);
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
    MEMORY[0x1EEE9AC00](result);
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
    MEMORY[0x1EEE9AC00](result);
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
      MEMORY[0x1EEE9AC00](result);
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
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  v3 = (*(v2 + 8))(v1, v2);
  v5 = v4;
  outlined init with copy of PgQuery_Alias?(v0, &v12, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
  v6 = v14;
  if (v14)
  {
    v7 = v15;
    __swift_project_boxed_opaque_existential_1(&v12, v14);
    v8 = (*(v7 + 8))(v6, v7);
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1Tm(&v12);
    v12 = 40;
    v13 = 0xE100000000000000;
    MEMORY[0x1865F6280](v8, v10);

    MEMORY[0x1865F6280](32, 0xE100000000000000);
  }

  else
  {
    _s10Foundation4UUIDVSgWOhTm_0(&v12, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
    v12 = 40;
    v13 = 0xE100000000000000;
  }

  MEMORY[0x1865F6280](v0[10], v0[11]);
  MEMORY[0x1865F6280](32, 0xE100000000000000);
  MEMORY[0x1865F6280](v3, v5);

  MEMORY[0x1865F6280](41, 0xE100000000000000);
  return v12;
}

uint64_t SQLExpressionAExpr.aggregationFunctions.getter()
{
  outlined init with copy of PgQuery_Alias?(v0, v8, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
  v1 = v9;
  if (v9)
  {
    v2 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v3 = (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = v0[8];
  v5 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v4);
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
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v3 = (*(v2 + 32))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMd, &_s14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSgMR);
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = v0[8];
  v5 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v4);
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

      outlined init with copy of Aggregation(v2 + 32, v32);
      v24 = v33;
      v25 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      v26 = (*(v25 + 8))(v24, v25);
      MEMORY[0x1865F6280](v26);

      __swift_destroy_boxed_opaque_existential_1Tm(v32);
LABEL_22:
      MEMORY[0x1865F6280](41, 0xE100000000000000);
      return v35;
    }

    v35 = 40;
    v36 = 0xE100000000000000;
    v3 = *(v2 + 16);
    v4 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v30 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
      v4 = v30;
      v5 = v2 + 32;
      do
      {
        outlined init with copy of Aggregation(v5, v32);
        v6 = v33;
        v7 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v8 = (*(v7 + 8))(v6, v7);
        v10 = v9;
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
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

    MEMORY[0x1865F6280](v27, v29);

    goto LABEL_22;
  }

  if (result)
  {
    v35 = 40;
    v36 = 0xE100000000000000;
    v14 = *(v2 + 16);
    v4 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v31 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
      v4 = v31;
      v15 = v2 + 32;
      do
      {
        outlined init with copy of Aggregation(v15, v32);
        v16 = v33;
        v17 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v18 = (*(v17 + 8))(v16, v17);
        v20 = v19;
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
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

void SQLExpressioBoolExpr.aggregationFunctions.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return;
  }

  v2 = *v0 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    outlined init with copy of Aggregation(v2, v13);
    v4 = v14;
    v5 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v6 = (*(v5 + 24))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    v7 = *(v6 + 16);
    v8 = *(v3 + 16);
    if (__OFADD__(v8, v7))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native() && v8 + v7 <= *(v3 + 24) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_11;
      }
    }

    else
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = v9;
      if (*(v6 + 16))
      {
LABEL_11:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v7)
        {
          goto LABEL_18;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v10 = *(v3 + 16);
          v11 = __OFADD__(v10, v7);
          v12 = v10 + v7;
          if (v11)
          {
            goto LABEL_19;
          }

          *(v3 + 16) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_17;
    }

LABEL_4:
    v2 += 40;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

char *SQLExpressioBoolExpr.bindings.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *v0 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    outlined init with copy of Aggregation(v2, v15);
    v5 = v16;
    v6 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v7 = (*(v6 + 32))(v5, v6);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
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
      __swift_project_boxed_opaque_existential_1(v0, v2);
      v4 = (*(v3 + 8))(v2, v3);
      MEMORY[0x1865F6280](v4);

      v5 = 0x4C4C554E20534920;
      v6 = 0xE900000000000029;
    }

    else
    {
      _StringGuts.grow(_:)(16);

      v7 = *(v0 + 24);
      v8 = *(v0 + 32);
      __swift_project_boxed_opaque_existential_1(v0, v7);
      v9 = (*(v8 + 8))(v7, v8);
      MEMORY[0x1865F6280](v9);

      v5 = 0x20544F4E20534920;
      v6 = 0xED0000294C4C554ELL;
    }

    MEMORY[0x1865F6280](v5, v6);
    return 40;
  }

  return result;
}

uint64_t protocol witness for SQLExpressionNode.aggregationFunctions.getter in conformance SQLExpressionNullTest()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t protocol witness for SQLExpressionNode.bindings.getter in conformance SQLExpressionNullTest()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
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
  *(v1 + 16) = xmmword_184D29AA0;
  outlined init with copy of AggregationFunction(v0, v1 + 32);
  return v1;
}

uint64_t protocol witness for SQLExpressionNode.bindings.getter in conformance SQLExpressionAggregationFunction()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser7BindingVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser7BindingVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_184D29AA0;
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
    v13._rawValue = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v22 = a4;
      rawValue = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      v13._rawValue = rawValue;
      v14 = a3 + 32;
      do
      {
        outlined init with copy of Aggregation(v14, v23);
        v15 = v24;
        v16 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (*(v16 + 16))(&v27, v15, v16);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
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
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v22 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v22;
    v5 = v2 + 32;
    do
    {
      outlined init with copy of Aggregation(v5, v19);
      v6 = v20;
      v7 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v8 = (*(v7 + 8))(v6, v7);
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
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
  MEMORY[0x1865F6280](40, 0xE100000000000000);
  MEMORY[0x1865F6280](v14, v16);

  MEMORY[0x1865F6280](41, 0xE100000000000000);
  return v19[0];
}

void SQLExpressionNonAggregationFunction.aggregationFunctions.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = v1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    outlined init with copy of Aggregation(v3, v15);
    v5 = v16;
    v6 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v7 = (*(v6 + 24))(v5, v6);
    v8 = *(v7 + 16);
    v9 = *(v4 + 16);
    if (__OFADD__(v9, v8))
    {
      break;
    }

    v10 = v7;
    if (swift_isUniquelyReferenced_nonNull_native() && v9 + v8 <= *(v4 + 24) >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_11;
      }
    }

    else
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = v11;
      if (*(v10 + 16))
      {
LABEL_11:
        if ((*(v4 + 24) >> 1) - *(v4 + 16) < v8)
        {
          goto LABEL_18;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = *(v4 + 16);
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_19;
          }

          *(v4 + 16) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_17;
    }

LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    v3 += 40;
    if (!--v2)
    {
      return;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t SQLExpressionNonAggregationFunction.bindings.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    outlined init with copy of Aggregation(v3, v16);
    v6 = v17;
    v7 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
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
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
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

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.AVGCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.AggregationType.COUNTCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.COUNTCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
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

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
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

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.AggregationType.MAXCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.MAXCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.AggregationType.MINCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.MINCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.AggregationType.SUMCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.SUMCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
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

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.AggregationType.TOTALCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AggregationFunction.AggregationType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO15TOTALCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO15TOTALCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13SUMCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13SUMCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13MINCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13MINCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13MAXCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13MAXCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO22GROUP_CONCATCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO22GROUP_CONCATCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v52 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO20COUNT_STARCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO20COUNT_STARCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v55 = *(v17 - 8);
  v56 = v17;
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v52 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO15COUNTCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO15COUNTCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v57 = *(v20 - 8);
  v58 = v20;
  v21 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13AVGCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO13AVGCodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v53 = *(v24 - 8);
  v25 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v52 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV0F4TypeO10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v29 = *(v28 - 8);
  v75 = v28;
  v76 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v52 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
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
  _s10Foundation4UUIDVSgWOhTm_0(v78, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
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
          outlined init with copy of Aggregation(a3 + 32, v127);

          v9 = v128;
          v10 = v129;
          __swift_project_boxed_opaque_existential_1(v127, v128);
          v11 = *((*(v10 + 24))(v9, v10) + 16);

          if (v11)
          {
LABEL_8:
            v12 = v128;
            v13 = v129;
            __swift_project_boxed_opaque_existential_1(v127, v128);
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
            return __swift_destroy_boxed_opaque_existential_1Tm(v127);
          }

          outlined init with copy of Aggregation(v127, v124);
          SQLExpression.init(rootNode:)(v124, &v130);
          v23 = 256;
          goto LABEL_24;
        }

        __break(1u);
        goto LABEL_95;
      }

      v143 = v6;
      v121 = v5;
      v124[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
      v24 = v124[0];
      v25 = a3 + 32;
      do
      {
        outlined init with copy of Aggregation(v25, v127);
        v26 = v128;
        v27 = v129;
        __swift_project_boxed_opaque_existential_1(v127, v128);
        v28 = (*(v27 + 40))(v26, v27);
        v30 = v29;
        __swift_destroy_boxed_opaque_existential_1Tm(v127);
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

    v24 = MEMORY[0x1E69E7CC0];
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
      v124[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      v24 = v124[0];
      v50 = a3 + 32;
      do
      {
        outlined init with copy of Aggregation(v50, v127);
        v51 = v128;
        v52 = v129;
        __swift_project_boxed_opaque_existential_1(v127, v128);
        v53 = (*(v52 + 40))(v51, v52);
        v55 = v54;
        __swift_destroy_boxed_opaque_existential_1Tm(v127);
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
      outlined init with copy of Aggregation(a3 + 32, v127);

      v20 = v128;
      v21 = v129;
      __swift_project_boxed_opaque_existential_1(v127, v128);
      v22 = *((*(v21 + 24))(v20, v21) + 16);

      if (v22)
      {
        goto LABEL_8;
      }

      outlined init with copy of Aggregation(v127, v124);
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
    __swift_project_boxed_opaque_existential_1(v127, v128);
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
        v124[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
        v24 = v124[0];
        v69 = a3 + 32;
        do
        {
          outlined init with copy of Aggregation(v69, v127);
          v70 = v128;
          v71 = v129;
          __swift_project_boxed_opaque_existential_1(v127, v128);
          v72 = (*(v71 + 40))(v70, v71);
          v74 = v73;
          __swift_destroy_boxed_opaque_existential_1Tm(v127);
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
        outlined init with copy of Aggregation(a3 + 32, v127);
        if (v43 != 1)
        {
          outlined init with copy of Aggregation(a3 + 72, v124);

          v44 = v128;
          v45 = v129;
          __swift_project_boxed_opaque_existential_1(v127, v128);
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
            __swift_project_boxed_opaque_existential_1(v124, v125);
            v80 = *((*(v79 + 24))(v78, v79) + 16);

            if (!v80)
            {
              outlined init with copy of Aggregation(v127, v123);
              SQLExpression.init(rootNode:)(v123, &v130);
              outlined init with copy of Aggregation(v124, v123);
              SQLExpression.init(rootNode:)(v123, &v136);
              v142 = 514;
              __swift_destroy_boxed_opaque_existential_1Tm(v124);
              goto LABEL_25;
            }

            v47 = v125;
            v48 = v126;
            v49 = v124;
          }

          __swift_project_boxed_opaque_existential_1(v49, v47);
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
          __swift_destroy_boxed_opaque_existential_1Tm(v124);
          return __swift_destroy_boxed_opaque_existential_1Tm(v127);
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

    outlined init with copy of Aggregation(a3 + 32, v127);

    v66 = v128;
    v67 = v129;
    __swift_project_boxed_opaque_existential_1(v127, v128);
    v68 = *((*(v67 + 24))(v66, v67) + 16);

    if (v68)
    {
      goto LABEL_8;
    }

    outlined init with copy of Aggregation(v127, v124);
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
    result = __swift_destroy_boxed_opaque_existential_1Tm(v127);
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
      outlined init with copy of Aggregation(a3 + 32, v127);

      v60 = v128;
      v61 = v129;
      __swift_project_boxed_opaque_existential_1(v127, v128);
      v62 = *((*(v61 + 24))(v60, v61) + 16);

      if (v62)
      {
        goto LABEL_8;
      }

      outlined init with copy of Aggregation(v127, v124);
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
      outlined init with copy of Aggregation(a3 + 32, v127);

      v85 = v128;
      v86 = v129;
      __swift_project_boxed_opaque_existential_1(v127, v128);
      v87 = *((*(v86 + 24))(v85, v86) + 16);

      if (v87)
      {
        goto LABEL_8;
      }

      outlined init with copy of Aggregation(v127, v124);
      SQLExpression.init(rootNode:)(v124, &v130);
      v63 = 4;
LABEL_49:
      LOBYTE(v142) = v63;
      v64 = v128;
      v65 = v129;
      __swift_project_boxed_opaque_existential_1(v127, v128);
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
        outlined init with copy of Aggregation(a3 + 32, v127);

        v89 = v128;
        v90 = v129;
        __swift_project_boxed_opaque_existential_1(v127, v128);
        v91 = *((*(v90 + 24))(v89, v90) + 16);

        if (v91)
        {
          goto LABEL_8;
        }

        outlined init with copy of Aggregation(v127, v124);
        SQLExpression.init(rootNode:)(v124, &v130);
        LOBYTE(v142) = 5;
        v92 = v128;
        v93 = v129;
        __swift_project_boxed_opaque_existential_1(v127, v128);
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
    v124[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v88, 0);
    v24 = v124[0];
    v98 = a3 + 32;
    do
    {
      outlined init with copy of Aggregation(v98, v127);
      v99 = v128;
      v100 = v129;
      __swift_project_boxed_opaque_existential_1(v127, v128);
      v101 = (*(v100 + 40))(v99, v100);
      v103 = v102;
      __swift_destroy_boxed_opaque_existential_1Tm(v127);
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
    v124[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94, 0);
    v24 = v124[0];
    v107 = a3 + 32;
    do
    {
      outlined init with copy of Aggregation(v107, v127);
      v108 = v128;
      v109 = v129;
      __swift_project_boxed_opaque_existential_1(v127, v128);
      v110 = (*(v109 + 40))(v108, v109);
      v112 = v111;
      __swift_destroy_boxed_opaque_existential_1Tm(v127);
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
    outlined init with copy of Aggregation(a3 + 32, v127);

    v95 = v128;
    v96 = v129;
    __swift_project_boxed_opaque_existential_1(v127, v128);
    v97 = *((*(v96 + 24))(v95, v96) + 16);

    if (v97)
    {
      goto LABEL_8;
    }

    outlined init with copy of Aggregation(v127, v124);
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

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AggregationFunction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
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
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t protocol witness for SQLExpressionNode.returnType.getter in conformance SQLExpressionConst()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
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
  result = MEMORY[0x1865F6890](v3);
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
        _s10Foundation4UUIDVSgWOhTm_0(v44, &_s14BiomeSQLParser19AggregationFunctionV0C4TypeO_AEtMd, &_s14BiomeSQLParser19AggregationFunctionV0C4TypeO_AEtMR);
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
    _s10Foundation4UUIDVSgWOhTm_0(v43, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
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

        _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        outlined destroy of SQLExpression(v6);
        outlined destroy of SQLExpression(v28);
        outlined destroy of SQLExpression(&v32);
        outlined destroy of SQLExpression(v10);
        _s10Foundation4UUIDVSgWOhTm_0(&v15, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        goto LABEL_39;
      }

      _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      outlined destroy of SQLExpression(v28);
      outlined destroy of SQLExpression(&v32);
      outlined destroy of SQLExpression(v10);
    }

    else
    {
      _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      outlined destroy of SQLExpression(v28);
      outlined destroy of SQLExpression(&v32);
      if (!*(&v22 + 1))
      {
        _s10Foundation4UUIDVSgWOhTm_0(&v15, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        v3 = 1;
        goto LABEL_39;
      }
    }

    _s10Foundation4UUIDVSgWOhTm_0(&v15, &_s14BiomeSQLParser13SQLExpressionVSg_ADtMd, &_s14BiomeSQLParser13SQLExpressionVSg_ADtMR);
  }

  else
  {
    _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined destroy of SQLExpression(v28);
    outlined destroy of SQLExpression(&v32);
  }

  v3 = 0;
LABEL_39:
  outlined destroy of AggregationFunction.AggregationType(v44);
  return v3 & 1;
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
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &lazy cache variable for type metadata for (numNotArgExprs: Int));
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
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &lazy cache variable for type metadata for (column: String));
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
  v207[9] = *MEMORY[0x1E69E9840];
  v195 = *(a1 + 16);
  v194 = a1;
  if (!v195)
  {
    v2 = MEMORY[0x1E69E7CC8];
LABEL_48:
    v54 = *(v2 + 32);
    v10 = v2;
    v2 = (((1 << v54) + 63) >> 6);
    if ((v54 & 0x3Fu) > 0xD)
    {
      goto LABEL_188;
    }

LABEL_49:
    MEMORY[0x1EEE9AC00](a1);
    v56 = (&v190 - ((v55 + 15) & 0x3FFFFFFFFFFFFFF0));
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
        countAndFlagsBits = &v190;
        v203 = v2;
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

              if (v71 >= v203)
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
          v205 = *(*(v74 + 56) + 8 * v81);
          v84 = *(v70 + 40);
          Hasher.init(_seed:)();

          v204 = v83;
          String.hash(into:)();
          v2 = v207;
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
          v77 = v205;
          *v76 = v204;
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
      v70 = MEMORY[0x1E69E7CC8];
    }

LABEL_86:

    v93 = v197;
LABEL_87:
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSiG_SSs5NeverOTg5181_s14BiomeSQLParser14ColumnResolver33_B787555787B9EFBBEFB0C9C5225A4FB7LLV7schemasADSayAA6SchemaVG_tKcfcS2S3key_Si5valuet_tcfu_32a168a102879cc1a6a91172b0770f0c91SSAI_SiAJtSSTf3nnnpk_nTf1cn_n(v70);
    v95 = v94;
    v192 = v93;

    v96 = MEMORY[0x1865F6400](*(v95 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v206 = v96;
    v97 = *(v95 + 16);
    if (v97)
    {
      v98 = 0;
      v99 = (v95 + 40);
      do
      {
        if (v98 >= *(v95 + 16))
        {
          goto LABEL_184;
        }

        ++v98;
        v10 = *(v99 - 1);
        v100 = *v99;

        v2 = &v206;
        specialized Set._Variant.insert(_:)(v207, v10, v100);

        v99 += 2;
      }

      while (v97 != v98);
      v101 = v206;
    }

    else
    {
      v101 = v96;
    }

    if (!v195)
    {
      v104 = MEMORY[0x1E69E7CC8];
LABEL_174:
      v187 = *MEMORY[0x1E69E9840];
      return v104;
    }

    v102 = 0;
    v193 = v194 + 32;
    v103 = v101 + 56;
    v104 = MEMORY[0x1E69E7CC8];
    v196 = v101;
    v197 = (v101 + 56);
LABEL_96:
    v105 = (v193 + 24 * v102);
    v106 = v105[1];
    v201 = *v105;
    v107 = v105[2];
    v194 = v102 + 1;
    v108 = v107 + 64;
    v109 = 1 << *(v107 + 32);
    if (v109 < 64)
    {
      v110 = ~(-1 << v109);
    }

    else
    {
      v110 = -1;
    }

    v111 = v110 & *(v107 + 64);
    v2 = ((v109 + 63) >> 6);
    v203 = v106;

    v204 = v107;
    swift_bridgeObjectRetain_n();
    v112 = 0;
    v199 = v2;
    for (i = v107 + 64; ; v108 = i)
    {
      if (!v111)
      {
        while (1)
        {
          v114 = v112 + 1;
          if (__OFADD__(v112, 1))
          {
            break;
          }

          if (v114 >= v2)
          {

            v102 = v194;
            if (v194 == v195)
            {
              goto LABEL_174;
            }

            goto LABEL_96;
          }

          v111 = *(v108 + 8 * v114);
          ++v112;
          if (v111)
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

      v114 = v112;
LABEL_107:
      v115 = __clz(__rbit64(v111)) | (v114 << 6);
      v116 = (*(v204 + 48) + 16 * v115);
      v117 = *v116;
      object = v116[1];
      LODWORD(v205) = *(*(v204 + 56) + v115);
      if (!*(v101 + 16))
      {
        break;
      }

      v118 = *(v101 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v119 = Hasher._finalize()();
      v120 = -1 << *(v101 + 32);
      v121 = v119 & ~v120;
      if (((*(v103 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0)
      {
        goto LABEL_118;
      }

      v10 = ~v120;
      while (1)
      {
        v122 = (*(v101 + 48) + 16 * v121);
        v123 = *v122 == v117 && v122[1] == object;
        if (v123 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v121 = (v121 + 1) & v10;
        if (((*(v103 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0)
        {
          goto LABEL_118;
        }
      }

LABEL_128:
      v207[0] = v201;
      v207[1] = v203;

      MEMORY[0x1865F6280](46, 0xE100000000000000);
      MEMORY[0x1865F6280](v117, object);

      v137 = String.lowercased()();
      object = v137._object;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v207[0] = v104;
      v2 = v104;
      v139 = specialized __RawDictionaryStorage.find<A>(_:)(v137._countAndFlagsBits, v137._object);
      v141 = *(v104 + 16);
      v142 = (v140 & 1) == 0;
      v21 = __OFADD__(v141, v142);
      v143 = v141 + v142;
      if (v21)
      {
        goto LABEL_179;
      }

      v10 = v140;
      if (*(v104 + 24) < v143)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v143, isUniquelyReferenced_nonNull_native);
        v104 = v207[0];
        v2 = v207[0];
        v139 = specialized __RawDictionaryStorage.find<A>(_:)(v137._countAndFlagsBits, v137._object);
        if ((v10 & 1) != (v144 & 1))
        {
          goto LABEL_195;
        }

LABEL_133:
        v103 = v197;
        goto LABEL_134;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_133;
      }

      countAndFlagsBits = v139;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      v147 = static _DictionaryStorage.copy(original:)();
      v148 = *(v104 + 16);
      v198 = v147;
      if (v148)
      {
        v149 = v147;
        v150 = (v147 + 64);
        v2 = (v104 + 64);
        v151 = ((1 << *(v149 + 32)) + 63) >> 6;
        if (v149 != v104 || v150 >= &v2[v151])
        {
          memmove(v150, (v104 + 64), 8 * v151);
        }

        v152 = 0;
        v198[2] = *(v104 + 16);
        v153 = 1 << *(v104 + 32);
        v154 = *(v104 + 64);
        if (v153 < 64)
        {
          v155 = ~(-1 << v153);
        }

        else
        {
          v155 = -1;
        }

        v156 = v155 & v154;
        v157 = (v153 + 63) >> 6;
        if ((v155 & v154) != 0)
        {
          do
          {
            v158 = __clz(__rbit64(v156));
            v156 &= v156 - 1;
LABEL_151:
            v161 = v158 | (v152 << 6);
            v162 = (*(v104 + 48) + 16 * v161);
            v164 = *v162;
            v163 = v162[1];
            LOBYTE(v162) = *(*(v104 + 56) + v161);
            v165 = v198;
            v166 = (v198[6] + 16 * v161);
            *v166 = v164;
            v166[1] = v163;
            *(v165[7] + v161) = v162;
          }

          while (v156);
        }

        v159 = v152;
        while (1)
        {
          v152 = v159 + 1;
          if (__OFADD__(v159, 1))
          {
            goto LABEL_193;
          }

          if (v152 >= v157)
          {
            break;
          }

          v160 = v2[v152];
          ++v159;
          if (v160)
          {
            v158 = __clz(__rbit64(v160));
            v156 = (v160 - 1) & v160;
            goto LABEL_151;
          }
        }

        v101 = v196;
      }

      v139 = countAndFlagsBits;
      v103 = v197;
      v104 = v198;
LABEL_134:
      v111 &= v111 - 1;
      if (v10)
      {
        v113 = v139;

        *(*(v104 + 56) + v113) = v205;
      }

      else
      {
        *(v104 + 8 * (v139 >> 6) + 64) |= 1 << v139;
        *(*(v104 + 48) + 16 * v139) = v137;
        *(*(v104 + 56) + v139) = v205;
        v145 = *(v104 + 16);
        v21 = __OFADD__(v145, 1);
        v146 = v145 + 1;
        if (v21)
        {
          goto LABEL_183;
        }

        *(v104 + 16) = v146;
      }

      v112 = v114;
      v2 = v199;
    }

LABEL_118:
    v124 = String.lowercased()();
    v10 = v124._object;
    v2 = v104;
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v207[0] = v2;
    countAndFlagsBits = v124._countAndFlagsBits;
    v127 = specialized __RawDictionaryStorage.find<A>(_:)(v124._countAndFlagsBits, v124._object);
    v128 = v2[2];
    v129 = (v126 & 1) == 0;
    v130 = v128 + v129;
    if (__OFADD__(v128, v129))
    {
      goto LABEL_180;
    }

    v131 = v126;
    v198 = v2;
    if (v2[3] < v130)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v130, v125);
      v104 = v207[0];
      v2 = v207[0];
      v132 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v124._object);
      if ((v131 & 1) != (v133 & 1))
      {
        goto LABEL_195;
      }

      v127 = v132;
      if (v131)
      {
        goto LABEL_122;
      }

LABEL_125:
      *(v104 + 8 * (v127 >> 6) + 64) |= 1 << v127;
      v134 = (*(v104 + 48) + 16 * v127);
      *v134 = countAndFlagsBits;
      v134[1] = v124._object;
      *(*(v104 + 56) + v127) = v205;
      v135 = *(v104 + 16);
      v21 = __OFADD__(v135, 1);
      v136 = v135 + 1;
      if (v21)
      {
        goto LABEL_185;
      }

      *(v104 + 16) = v136;
      goto LABEL_127;
    }

    if (v125)
    {
      v104 = v198;
      if ((v126 & 1) == 0)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      v167 = v198;
      v168 = static _DictionaryStorage.copy(original:)();
      v169 = v167;
      v104 = v168;
      if (v169[2])
      {
        v170 = (v168 + 64);
        v171 = (v169 + 8);
        v172 = ((1 << *(v104 + 32)) + 63) >> 6;
        v190 = v169 + 8;
        if (v104 != v169 || v170 >= &v171[8 * v172])
        {
          memmove(v170, v171, 8 * v172);
        }

        v173 = 0;
        v174 = v198;
        *(v104 + 16) = v198[2];
        v175 = 1 << *(v174 + 32);
        v176 = v174[8];
        if (v175 < 64)
        {
          v177 = ~(-1 << v175);
        }

        else
        {
          v177 = -1;
        }

        v178 = v177 & v176;
        v2 = ((v175 + 63) >> 6);
        if (!v178)
        {
          goto LABEL_162;
        }

        while (1)
        {
          v179 = __clz(__rbit64(v178));
          for (j = (v178 - 1) & v178; ; j = (v181 - 1) & v181)
          {
            v182 = v179 | (v173 << 6);
            v183 = (v198[6] + 16 * v182);
            v185 = *v183;
            v184 = v183[1];
            LOBYTE(v183) = *(v198[7] + v182);
            v186 = (*(v104 + 48) + 16 * v182);
            *v186 = v185;
            v186[1] = v184;
            *(*(v104 + 56) + v182) = v183;

            v178 = j;
            if (j)
            {
              break;
            }

LABEL_162:
            v180 = v173;
            do
            {
              v173 = v180 + 1;
              if (__OFADD__(v180, 1))
              {
                goto LABEL_194;
              }

              if (v173 >= v2)
              {
                goto LABEL_169;
              }

              v181 = v190[v173];
              ++v180;
            }

            while (!v181);
            v179 = __clz(__rbit64(v181));
          }
        }
      }

LABEL_169:

      if ((v131 & 1) == 0)
      {
        goto LABEL_125;
      }
    }

LABEL_122:

    *(*(v104 + 56) + v127) = v205;
LABEL_127:
    v101 = v196;
    goto LABEL_128;
  }

  v1 = 0;
  v198 = (a1 + 32);
  v2 = MEMORY[0x1E69E7CC8];
  v3 = MEMORY[0x1E69E7CC8];
LABEL_4:
  v4 = &v198[3 * v1];
  v5 = v4[2];
  v199 = v4[1];
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

  v203 = v5;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  v201 = v5 + 64;
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
      if (i == v195)
      {
        goto LABEL_48;
      }

      goto LABEL_4;
    }

    v12 = v11;
LABEL_15:
    v13 = (*(v203 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    v14 = *v13;
    v15 = v13[1];
    v16 = v2[2];

    v205 = v14;
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

      v14 = v205;
      v6 = v201;
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

    v204 = v22;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v207[0] = v3;
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
        v196 = static _DictionaryStorage.copy(original:)();
        if (*(v3 + 16))
        {
          v35 = (v196 + 64);
          v36 = (v3 + 64);
          v37 = ((1 << *(v196 + 32)) + 63) >> 6;
          v193 = v3 + 64;
          if (v196 != v3 || v35 >= &v36[8 * v37])
          {
            memmove(v35, v36, 8 * v37);
          }

          v38 = 0;
          *(v196 + 16) = *(v3 + 16);
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
              v52 = v196;
              v53 = (*(v196 + 48) + 16 * v47);
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

            v46 = *(v193 + 8 * v38);
            ++v45;
            if (v46)
            {
              v44 = __clz(__rbit64(v46));
              v42 = (v46 - 1) & v46;
              goto LABEL_44;
            }
          }
        }

        v2 = v196;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, v23);
      v2 = v207[0];
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v205, v15);
      if ((object & 1) != (v30 & 1))
      {
LABEL_195:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_196;
      }

      v10 = v29;
      v2 = v207[0];
    }

    v9 &= v9 - 1;
    if (object)
    {

      *(v2[7] + 8 * v10) = v204;
    }

    else
    {
      v2[(v10 >> 6) + 8] |= 1 << v10;
      v31 = (v2[6] + 16 * v10);
      v32 = v204;
      *v31 = v205;
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

  v93 = v197;
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSiG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_SiTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSSiIsgnndzo_Tf1nc_n(object, v2, v10, closure #2 in ColumnResolver.init(schemas:));
  v2 = v93;
  if (!v93)
  {
    v70 = v189;

    MEMORY[0x1865F7B70](object, -1, -1);

    goto LABEL_87;
  }

LABEL_196:

  result = MEMORY[0x1865F7B70](object, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized SQLExpression.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000184DEA150 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79546E7275746572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000184DEA170 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1865F7B70);
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

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
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

uint64_t storeEnumTagSinglePayload for SQLExpressionInteger(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF013SQLExpressionH033_B787555787B9EFBBEFB0C9C5225A4FB7LL_psAE_pTg5(void (*a1)(__int128 *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
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
      outlined init with take of Aggregation(v16, v6 + 40 * v13 + 32);
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
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v23 = MEMORY[0x1E69E7CC0];
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
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
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
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v21 = MEMORY[0x1E69E7CC0];
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
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
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
          MEMORY[0x1865F6280](0xD000000000000029, 0x8000000184DEA2B0);
          MEMORY[0x1865F6280](v2, v1);
          MEMORY[0x1865F6280](0x6120687469772022, 0xEE0022203A736772);
          v11 = MEMORY[0x1865F6370](v3, MEMORY[0x1E69E6158]);
          MEMORY[0x1865F6280](v11);

LABEL_25:
          v6 = 34;
          v7 = 0xE100000000000000;
          goto LABEL_26;
        }

        v13 = 0;
        _StringGuts.grow(_:)(53);
        MEMORY[0x1865F6280](0xD000000000000032, 0x8000000184DEA2E0);
        goto LABEL_23;
      }

      _StringGuts.grow(_:)(42);

      v13 = 0x20656C626154;
      MEMORY[0x1865F6280](v2, v1);
      v6 = 0xD000000000000022;
      v7 = 0x8000000184DEA320;
LABEL_26:
      MEMORY[0x1865F6280](v6, v7);
      return v13;
    }

    if (!*(v0 + 32))
    {
      _StringGuts.grow(_:)(29);

      v13 = 0xD000000000000016;
      MEMORY[0x1865F6280](v3, v4);
      MEMORY[0x1865F6280](657954, 0xE300000000000000);
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
    MEMORY[0x1865F6280](0xD00000000000005CLL, 0x8000000184DEA1B0);
    MEMORY[0x1865F6280](v2, v1);
    MEMORY[0x1865F6280](0x6F73616552202E22, 0xEC00000022203A6ELL);
    v9 = v3;
    v10 = v4;
LABEL_24:
    MEMORY[0x1865F6280](v9, v10);
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

BiomeSQLParser::DatabaseCatalog __swiftcall DatabaseCatalog.init(schemas:)(Swift::OpaquePointer schemas)
{
  v35 = v1;
  v3 = *(schemas._rawValue + 2);
  if (!v3)
  {

    v4 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_7;
    }

LABEL_19:
    v12 = MEMORY[0x1E69E7CC8];
    goto LABEL_20;
  }

  v38 = MEMORY[0x1E69E7CC0];
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
  MEMORY[0x1865F6280](0xD00000000000001BLL, 0x8000000184DDBED0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865F6280](39, 0xE100000000000000);
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

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DatabaseCatalog.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DatabaseCatalog.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser15DatabaseCatalogV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser15DatabaseCatalogV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
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
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
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

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
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
    v5 = 0x8000000184DEA760;
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

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Schema.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser6SchemaV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser6SchemaV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
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
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
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

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
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

uint64_t FromClause.init(fromClauseNodes:resources:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v391 = a2;
  v378 = a3;
  v4 = type metadata accessor for SQLTokenInformation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v336 = &v315 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v342 = &v315 - v9;
  ColumnRef = type metadata accessor for PgQuery_ColumnRef(0);
  v10 = *(*(ColumnRef - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](ColumnRef);
  v337 = (&v315 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v344 = (&v315 - v13);
  String = type metadata accessor for PgQuery_String(0);
  v14 = *(*(String - 8) + 64);
  MEMORY[0x1EEE9AC00](String);
  v356 = (&v315 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v365 = type metadata accessor for PgQuery_FuncCall(0);
  v16 = *(*(v365 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v365);
  v340 = &v315 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v347 = &v315 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v352 = &v315 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v354 = &v315 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v361 = &v315 - v25;
  List = type metadata accessor for PgQuery_List(0);
  v26 = *(*(List - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](List);
  v29 = (&v315 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x1EEE9AC00](v27);
  v348 = (&v315 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v353 = (&v315 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v360 = (&v315 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v363 = (&v315 - v37);
  MEMORY[0x1EEE9AC00](v36);
  v368 = (&v315 - v38);
  RangeFunction = type metadata accessor for PgQuery_RangeFunction(0);
  v372 = *(RangeFunction - 8);
  v373 = RangeFunction;
  v40 = *(v372 + 64);
  MEMORY[0x1EEE9AC00](RangeFunction);
  v370 = &v315 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v371 = &v315 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v374 = &v315 - v46;
  v388 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v390 = *(v388 - 8);
  v47 = *(v390 + 64);
  v48 = MEMORY[0x1EEE9AC00](v388);
  v377 = (&v315 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v48);
  v375 = &v315 - v50;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v51 = *(RangeVar - 8);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v54 = &v315 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v55 = *(*(v387 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v387);
  v338 = &v315 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v339 = &v315 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v343 = &v315 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v345 = &v315 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v346 = &v315 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v349 = &v315 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v351 = &v315 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v355 = &v315 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v358 = &v315 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v357 = &v315 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v359 = &v315 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v362 = &v315 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v367 = &v315 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v366 = &v315 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v379 = &v315 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v386 = &v315 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v384 = &v315 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v92 = &v315 - v91;
  MEMORY[0x1EEE9AC00](v90);
  v94 = &v315 - v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v96 = *(*(v95 - 8) + 64);
  v97 = MEMORY[0x1EEE9AC00](v95 - 8);
  *&v381 = &v315 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v315 - v99;
  Node = type metadata accessor for PgQuery_Node(0);
  v102 = *(Node - 8);
  v103 = *(v102 + 64);
  v104 = MEMORY[0x1EEE9AC00](Node);
  v105 = MEMORY[0x1EEE9AC00](v104);
  v106 = MEMORY[0x1EEE9AC00](v105);
  v107 = MEMORY[0x1EEE9AC00](v106);
  v108 = MEMORY[0x1EEE9AC00](v107);
  v109 = MEMORY[0x1EEE9AC00](v108);
  v110 = MEMORY[0x1EEE9AC00](v109);
  v111 = MEMORY[0x1EEE9AC00](v110);
  v112 = MEMORY[0x1EEE9AC00](v111);
  v113 = MEMORY[0x1EEE9AC00](v112);
  v364 = &v315 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v116 = MEMORY[0x1EEE9AC00](v115);
  v376 = &v315 - v117;
  v118 = MEMORY[0x1EEE9AC00](v116);
  v130 = (&v315 - v126);
  if (!*(a1 + 16))
  {

    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v138 = 0xD00000000000002FLL;
    *(v138 + 8) = 0x8000000184DEA730;
    *(v138 + 16) = 0;
    *(v138 + 24) = 0;
    *(v138 + 32) = 1;
    swift_willThrow();
    v139 = type metadata accessor for PlanResources;
    v140 = v391;
    return outlined destroy of PgQuery_ParseResult(v140, v139);
  }

  v333 = *(a1 + 16);
  v334 = v54;
  v325 = v124;
  v326 = v125;
  v323 = v122;
  v324 = v123;
  v321 = v29;
  v322 = v121;
  v319 = v119;
  v320 = v120;
  v317 = v128;
  v318 = v129;
  v332 = v102;
  v327 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v328 = v127;
  v131 = v118;
  v329 = a1 + v327;
  outlined init with copy of PgQuery_ScanResult(a1 + v327, &v315 - v126, type metadata accessor for PgQuery_Node);
  v132 = a1;
  v335 = v51;
  v133 = *(v51 + 56);
  v385 = v100;
  v133(v100, 1, 1, RangeVar);
  v330 = v131;
  v134 = *(v131 + 20);
  v382 = v130;
  outlined init with copy of PgQuery_Alias?(*(v130 + v134) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v94, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v383 = v94;
  outlined init with copy of PgQuery_Alias?(v94, v92, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v136 = v390 + 48;
  v135 = *(v390 + 48);
  v137 = v92;
  if (v135(v92, 1, v388) == 1)
  {

LABEL_9:
    v148 = v391;
    *&v406 = 0;
    *(&v406 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    *&v406 = 0xD00000000000002FLL;
    *(&v406 + 1) = 0x8000000184DEA6A0;
    v149 = v383;
    outlined init with copy of PgQuery_Alias?(v383, v386, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v150 = String.init<A>(describing:)();
    MEMORY[0x1865F6280](v150);

    v151 = v406;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v152 = v151;
    *(v152 + 16) = 0;
    *(v152 + 24) = 0;
    *(v152 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v148, type metadata accessor for PlanResources);
    _s10Foundation4UUIDVSgWOhTm_0(v149, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    _s10Foundation4UUIDVSgWOhTm_0(v385, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    outlined destroy of PgQuery_ParseResult(v382, type metadata accessor for PgQuery_Node);
    return _s10Foundation4UUIDVSgWOhTm_0(v137, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  v331 = v132;
  v141 = v92;
  v142 = v384;
  outlined init with copy of PgQuery_Alias?(v141, v384, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    outlined destroy of PgQuery_ParseResult(v142, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_9;
  }

  v390 = v136;
  v143 = v385;
  _s10Foundation4UUIDVSgWOhTm_0(v385, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with take of PgQuery_ParseResult(v142, v143, type metadata accessor for PgQuery_RangeVar);
  v144 = RangeVar;
  v133(v143, 0, 1, RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v137, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v145 = v381;
  outlined init with copy of PgQuery_Alias?(v143, v381, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v335 + 48))(v145, 1, v144) == 1)
  {

    _s10Foundation4UUIDVSgWOhTm_0(v145, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v146 = 0xD00000000000001CLL;
    *(v146 + 8) = 0x8000000184DEA6D0;
    *(v146 + 16) = 0;
    *(v146 + 24) = 0;
    *(v146 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v391, type metadata accessor for PlanResources);
    _s10Foundation4UUIDVSgWOhTm_0(v383, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v147 = v143;
LABEL_12:
    _s10Foundation4UUIDVSgWOhTm_0(v147, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v139 = type metadata accessor for PgQuery_Node;
    v140 = v382;
    return outlined destroy of PgQuery_ParseResult(v140, v139);
  }

  v154 = v334;
  outlined init with take of PgQuery_ParseResult(v145, v334, type metadata accessor for PgQuery_RangeVar);
  v155 = v391;
  v396[0] = *v391;

  v156 = v380;
  static Schema.lookup(rangeVar:catalog:)(v154, v396, &v406);
  v157 = v156;
  v158 = v331;
  if (v156)
  {

    outlined destroy of PgQuery_ParseResult(v155, type metadata accessor for PlanResources);

    outlined destroy of PgQuery_ParseResult(v154, type metadata accessor for PgQuery_RangeVar);
    _s10Foundation4UUIDVSgWOhTm_0(v383, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v147 = v385;
    goto LABEL_12;
  }

  v316 = v135;

  v159 = v406;
  v160 = v407;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMR);
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_184D29AA0;
  RangeVar = v159;
  *(v161 + 32) = v159;
  *(v161 + 48) = v160;
  v410 = 0u;
  v411 = 0u;
  v408 = 0u;
  v409 = 0u;
  v406 = 0u;
  v407 = 0u;
  v162 = *(v158 + 16);
  v163 = v383;
  if (v162 < v333)
  {
    __break(1u);
    goto LABEL_78;
  }

  v164 = v161;
  v165 = v316;
  if (v333 != 2)
  {

    outlined destroy of PgQuery_ParseResult(v155, type metadata accessor for PlanResources);
    outlined destroy of PgQuery_ParseResult(v154, type metadata accessor for PgQuery_RangeVar);
    _s10Foundation4UUIDVSgWOhTm_0(v163, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    _s10Foundation4UUIDVSgWOhTm_0(v385, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    result = outlined destroy of PgQuery_ParseResult(v382, type metadata accessor for PgQuery_Node);
    goto LABEL_19;
  }

  v381 = xmmword_184D29AA0;
  v166 = v376;
  outlined init with copy of PgQuery_ScanResult(v329 + *(v332 + 72), v376, type metadata accessor for PgQuery_Node);
  v167 = v379;
  outlined init with copy of PgQuery_Alias?(*(v166 + *(v330 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v379, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);

  outlined destroy of PgQuery_ParseResult(v166, type metadata accessor for PgQuery_Node);
  if (v165(v167, 1, v388) == 1)
  {

    outlined destroy of PgQuery_ParseResult(v391, type metadata accessor for PlanResources);
    outlined destroy of PgQuery_ParseResult(v154, type metadata accessor for PgQuery_RangeVar);
    _s10Foundation4UUIDVSgWOhTm_0(v383, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    _s10Foundation4UUIDVSgWOhTm_0(v385, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    outlined destroy of PgQuery_ParseResult(v382, type metadata accessor for PgQuery_Node);
    result = _s10Foundation4UUIDVSgWOhTm_0(v379, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_19:
    v168 = v378;
    *v378 = v164;
    v169 = v409;
    *(v168 + 5) = v408;
    *(v168 + 7) = v169;
    v170 = v411;
    *(v168 + 9) = v410;
    *(v168 + 11) = v170;
    v171 = v407;
    *(v168 + 1) = v406;
    *(v168 + 3) = v171;
    return result;
  }

  v386 = v160;
  v384 = *(&v159 + 1);
  v380 = v164;
  v376 = 0;
  v172 = v375;
  outlined init with take of PgQuery_ParseResult(v379, v375, type metadata accessor for PgQuery_Node.OneOf_Node);
  v173 = v372;
  v174 = v373;
  v175 = *(v372 + 56);
  v176 = v374;
  v175(v374, 1, 1, v373);
  outlined init with copy of PgQuery_ScanResult(v172, v377, type metadata accessor for PgQuery_Node.OneOf_Node);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v178 = v391;
  if (EnumCaseMultiPayload != 182)
  {

    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v181 = 0xD000000000000030;
    *(v181 + 8) = 0x8000000184DEA6F0;
    *(v181 + 16) = 0;
    *(v181 + 24) = 0;
    *(v181 + 32) = 1;
    swift_willThrow();

    outlined destroy of PgQuery_ParseResult(v178, type metadata accessor for PlanResources);
    _s10Foundation4UUIDVSgWOhTm_0(v176, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
    outlined destroy of PgQuery_ParseResult(v172, type metadata accessor for PgQuery_Node.OneOf_Node);
    _s10Foundation4UUIDVSgWOhTm_0(&v406, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined destroy of PgQuery_ParseResult(v334, type metadata accessor for PgQuery_RangeVar);
    _s10Foundation4UUIDVSgWOhTm_0(v383, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    _s10Foundation4UUIDVSgWOhTm_0(v385, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    outlined destroy of PgQuery_ParseResult(v382, type metadata accessor for PgQuery_Node);
    v140 = v377;
    v139 = type metadata accessor for PgQuery_Node.OneOf_Node;
    return outlined destroy of PgQuery_ParseResult(v140, v139);
  }

  _s10Foundation4UUIDVSgWOhTm_0(v176, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  outlined init with take of PgQuery_ParseResult(v377, v176, type metadata accessor for PgQuery_RangeFunction);
  v175(v176, 0, 1, v174);
  v179 = v371;
  outlined init with copy of PgQuery_Alias?(v176, v371, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  v180 = v176;
  if ((*(v173 + 48))(v179, 1, v174) == 1)
  {

    _s10Foundation4UUIDVSgWOhTm_0(v179, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
LABEL_28:
    v190 = v382;
    v191 = v385;
    v192 = v375;
LABEL_57:
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v212 = 0xD000000000000030;
    *(v212 + 8) = 0x8000000184DEA6F0;
    *(v212 + 16) = 0;
    *(v212 + 24) = 0;
    *(v212 + 32) = 1;
    swift_willThrow();

    outlined destroy of PgQuery_ParseResult(v178, type metadata accessor for PlanResources);
    _s10Foundation4UUIDVSgWOhTm_0(v180, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
    outlined destroy of PgQuery_ParseResult(v192, type metadata accessor for PgQuery_Node.OneOf_Node);
    _s10Foundation4UUIDVSgWOhTm_0(&v406, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined destroy of PgQuery_ParseResult(v334, type metadata accessor for PgQuery_RangeVar);
    _s10Foundation4UUIDVSgWOhTm_0(v383, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    _s10Foundation4UUIDVSgWOhTm_0(v191, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v139 = type metadata accessor for PgQuery_Node;
    v140 = v190;
    return outlined destroy of PgQuery_ParseResult(v140, v139);
  }

  v182 = v179;
  v183 = v370;
  outlined init with take of PgQuery_ParseResult(v182, v370, type metadata accessor for PgQuery_RangeFunction);
  v184 = *(v183 + 8);
  if (*(v184 + 16) != 1)
  {

    outlined destroy of PgQuery_ParseResult(v183, type metadata accessor for PgQuery_RangeFunction);
    goto LABEL_28;
  }

  v185 = v328;
  outlined init with copy of PgQuery_ScanResult(v184 + v327, v328, type metadata accessor for PgQuery_Node);
  v155 = *(v185 + *(v330 + 20));
  v157 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  v186 = v366;
  outlined init with copy of PgQuery_Alias?(v155 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v366, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v187 = v316(v186, 1, v388);
  v145 = MEMORY[0x1E69E7CC0];
  if (v187 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v186, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v189 = v367;
    v188 = v368;
  }

  else
  {
    v193 = swift_getEnumCaseMultiPayload() == 225;
    v194 = v186;
    v189 = v367;
    v188 = v368;
    if (v193)
    {
      outlined init with take of PgQuery_ParseResult(v194, v368, type metadata accessor for PgQuery_List);
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
  if (v316(v189, 1, v388) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v189, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      v198 = v363;
      outlined init with take of PgQuery_ParseResult(v189, v363, type metadata accessor for PgQuery_List);
      goto LABEL_41;
    }

    outlined destroy of PgQuery_ParseResult(v189, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v198 = v363;
  *v363 = v145;
  v199 = v198 + *(List + 20);
  UnknownStorage.init()();
LABEL_41:
  v200 = v198;
  v201 = *v198;

  outlined destroy of PgQuery_ParseResult(v200, type metadata accessor for PgQuery_List);
  if (!*(v201 + 16))
  {

LABEL_54:

    outlined destroy of PgQuery_ParseResult(v328, type metadata accessor for PgQuery_Node);

    v211 = v183;
LABEL_55:
    outlined destroy of PgQuery_ParseResult(v211, type metadata accessor for PgQuery_RangeFunction);
LABEL_56:
    v178 = v391;
    v190 = v382;
    v191 = v385;
    v180 = v374;
    v192 = v375;
    goto LABEL_57;
  }

  v202 = v364;
  outlined init with copy of PgQuery_ScanResult(v201 + v327, v364, type metadata accessor for PgQuery_Node);

  v203 = *(v202 + *(v330 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  v204 = v362;
  outlined init with copy of PgQuery_Alias?(v203, v362, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v316(v204, 1, v388) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v204, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v205 = v361;
  }

  else
  {
    v193 = swift_getEnumCaseMultiPayload() == 170;
    v206 = v204;
    v205 = v361;
    if (v193)
    {
      outlined init with take of PgQuery_ParseResult(v206, v361, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_51;
    }

    outlined destroy of PgQuery_ParseResult(v206, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v207 = *(v365 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v205 + v207) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_51:
  outlined destroy of PgQuery_ParseResult(v364, type metadata accessor for PgQuery_Node);
  v208 = *(*(v205 + *(v365 + 20)) + 16);

  outlined destroy of PgQuery_ParseResult(v205, type metadata accessor for PgQuery_FuncCall);
  v209 = *(v208 + 16);

  if (v209 != 1)
  {
    goto LABEL_54;
  }

  v210 = v359;
  outlined init with copy of PgQuery_Alias?(v155 + v157, v359, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v316(v210, 1, v388) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v210, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      v213 = v360;
      outlined init with take of PgQuery_ParseResult(v210, v360, type metadata accessor for PgQuery_List);
      goto LABEL_62;
    }

    outlined destroy of PgQuery_ParseResult(v210, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v213 = v360;
  *v360 = v145;
  v214 = v213 + *(List + 20);
  UnknownStorage.init()();
LABEL_62:
  v215 = *v213;

  outlined destroy of PgQuery_ParseResult(v213, type metadata accessor for PgQuery_List);
  if (!*(v215 + 16))
  {
LABEL_74:

LABEL_120:

    outlined destroy of PgQuery_ParseResult(v328, type metadata accessor for PgQuery_Node);

    v211 = v370;
    goto LABEL_55;
  }

  v216 = v326;
  outlined init with copy of PgQuery_ScanResult(v215 + v327, v326, type metadata accessor for PgQuery_Node);

  v217 = v357;
  outlined init with copy of PgQuery_Alias?(*(v216 + *(v330 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v357, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v316(v217, 1, v388) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v217, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      v218 = v354;
      outlined init with take of PgQuery_ParseResult(v357, v354, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_71;
    }

    outlined destroy of PgQuery_ParseResult(v357, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v218 = v354;
  UnknownStorage.init()();
  v219 = *(v365 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v218 + v219) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_71:
  outlined destroy of PgQuery_ParseResult(v326, type metadata accessor for PgQuery_Node);
  v220 = *(*(v218 + *(v365 + 20)) + 16);

  outlined destroy of PgQuery_ParseResult(v218, type metadata accessor for PgQuery_FuncCall);
  if (!*(v220 + 16))
  {
    goto LABEL_74;
  }

  v221 = v325;
  outlined init with copy of PgQuery_ScanResult(v220 + v327, v325, type metadata accessor for PgQuery_Node);

  v222 = v358;
  outlined init with copy of PgQuery_Alias?(*(v221 + *(v330 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v358, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v316(v222, 1, v388) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v358, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_79:
    v223 = v356;
    *v356 = 0;
    v223[1] = 0xE000000000000000;
    v224 = v223 + *(String + 20);
    UnknownStorage.init()();
    goto LABEL_80;
  }

  if (swift_getEnumCaseMultiPayload() != 222)
  {
LABEL_78:
    outlined destroy of PgQuery_ParseResult(v358, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_79;
  }

  outlined init with take of PgQuery_ParseResult(v358, v356, type metadata accessor for PgQuery_String);
LABEL_80:
  outlined destroy of PgQuery_ParseResult(v325, type metadata accessor for PgQuery_Node);
  v225 = v356;
  v227 = *v356;
  v226 = v356[1];

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

  v229 = v355;
  outlined init with copy of PgQuery_Alias?(v155 + v157, v355, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v316(v229, 1, v388) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v355, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      outlined init with take of PgQuery_ParseResult(v355, v353, type metadata accessor for PgQuery_List);
      goto LABEL_90;
    }

    outlined destroy of PgQuery_ParseResult(v355, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v230 = v353;
  *v353 = v145;
  v231 = v230 + *(List + 20);
  UnknownStorage.init()();
LABEL_90:
  v232 = v353;
  v233 = *v353;

  outlined destroy of PgQuery_ParseResult(v232, type metadata accessor for PgQuery_List);
  if (!*(v233 + 16))
  {
LABEL_118:

    goto LABEL_119;
  }

  v234 = v324;
  outlined init with copy of PgQuery_ScanResult(v233 + v327, v324, type metadata accessor for PgQuery_Node);

  v235 = v351;
  outlined init with copy of PgQuery_Alias?(*(v234 + *(v330 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v351, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v316(v235, 1, v388) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v351, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      outlined init with take of PgQuery_ParseResult(v351, v352, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_99;
    }

    outlined destroy of PgQuery_ParseResult(v351, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v236 = *(v365 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v352 + v236) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_99:
  outlined destroy of PgQuery_ParseResult(v324, type metadata accessor for PgQuery_Node);
  v237 = v352;
  v238 = *(*(v352 + *(v365 + 20)) + 24);

  outlined destroy of PgQuery_ParseResult(v237, type metadata accessor for PgQuery_FuncCall);
  v239 = *(v238 + 16);

  if (v239 != 1)
  {
    goto LABEL_119;
  }

  v240 = v349;
  outlined init with copy of PgQuery_Alias?(v155 + v157, v349, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v316(v240, 1, v388) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v349, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      outlined init with take of PgQuery_ParseResult(v349, v348, type metadata accessor for PgQuery_List);
      goto LABEL_106;
    }

    outlined destroy of PgQuery_ParseResult(v349, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v241 = v348;
  *v348 = v145;
  v242 = v241 + *(List + 20);
  UnknownStorage.init()();
LABEL_106:
  v243 = v348;
  v244 = *v348;

  outlined destroy of PgQuery_ParseResult(v243, type metadata accessor for PgQuery_List);
  if (!*(v244 + 16))
  {
    goto LABEL_118;
  }

  v245 = v323;
  outlined init with copy of PgQuery_ScanResult(v244 + v327, v323, type metadata accessor for PgQuery_Node);

  v246 = v346;
  outlined init with copy of PgQuery_Alias?(*(v245 + *(v330 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v346, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v316(v246, 1, v388) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v346, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      outlined init with take of PgQuery_ParseResult(v346, v347, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_115;
    }

    outlined destroy of PgQuery_ParseResult(v346, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v247 = *(v365 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v347 + v247) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_115:
  outlined destroy of PgQuery_ParseResult(v323, type metadata accessor for PgQuery_Node);
  v248 = v347;
  v249 = *(*(v347 + *(v365 + 20)) + 24);

  outlined destroy of PgQuery_ParseResult(v248, type metadata accessor for PgQuery_FuncCall);
  if (!*(v249 + 16))
  {
    goto LABEL_118;
  }

  v250 = v322;
  outlined init with copy of PgQuery_ScanResult(v249 + v327, v322, type metadata accessor for PgQuery_Node);

  v251 = v345;
  outlined init with copy of PgQuery_Alias?(*(v250 + *(v330 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v345, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v316(v251, 1, v388) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v345, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 167)
    {
      outlined init with take of PgQuery_ParseResult(v345, v344, type metadata accessor for PgQuery_ColumnRef);
      goto LABEL_125;
    }

    outlined destroy of PgQuery_ParseResult(v345, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v252 = v344;
  *v344 = v145;
  *(v252 + 2) = 0;
  v253 = v252 + *(ColumnRef + 24);
  UnknownStorage.init()();
LABEL_125:
  outlined destroy of PgQuery_ParseResult(v322, type metadata accessor for PgQuery_Node);
  v254 = v344;
  v255 = *v344;

  outlined destroy of PgQuery_ParseResult(v254, type metadata accessor for PgQuery_ColumnRef);
  v256 = *(v255 + 16);

  if (v256 != 1)
  {
    goto LABEL_119;
  }

  v257 = v343;
  outlined init with copy of PgQuery_Alias?(v155 + v157, v343, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v316(v257, 1, v388) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v343, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      outlined init with take of PgQuery_ParseResult(v343, v321, type metadata accessor for PgQuery_List);
      goto LABEL_132;
    }

    outlined destroy of PgQuery_ParseResult(v343, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v258 = v321;
  *v321 = v145;
  v259 = v258 + *(List + 20);
  UnknownStorage.init()();
LABEL_132:
  v260 = v321;
  v261 = *v321;

  outlined destroy of PgQuery_ParseResult(v260, type metadata accessor for PgQuery_List);
  if (!*(v261 + 16))
  {
LABEL_144:

    (*(v332 + 56))(v342, 1, 1, v330);
LABEL_154:
    outlined destroy of PgQuery_ParseResult(v328, type metadata accessor for PgQuery_Node);

    outlined destroy of PgQuery_ParseResult(v370, type metadata accessor for PgQuery_RangeFunction);
    _s10Foundation4UUIDVSgWOhTm_0(v342, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    goto LABEL_56;
  }

  v262 = v320;
  outlined init with copy of PgQuery_ScanResult(v261 + v327, v320, type metadata accessor for PgQuery_Node);

  v263 = v339;
  outlined init with copy of PgQuery_Alias?(*(v262 + *(v330 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v339, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v316(v263, 1, v388) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v339, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      outlined init with take of PgQuery_ParseResult(v339, v340, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_141;
    }

    outlined destroy of PgQuery_ParseResult(v339, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v264 = *(v365 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v340 + v264) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_141:
  outlined destroy of PgQuery_ParseResult(v320, type metadata accessor for PgQuery_Node);
  v265 = v340;
  v266 = *(*(v340 + *(v365 + 20)) + 24);

  outlined destroy of PgQuery_ParseResult(v265, type metadata accessor for PgQuery_FuncCall);
  if (!*(v266 + 16))
  {
    goto LABEL_144;
  }

  v267 = v319;
  outlined init with copy of PgQuery_ScanResult(v266 + v327, v319, type metadata accessor for PgQuery_Node);

  v268 = v338;
  outlined init with copy of PgQuery_Alias?(*(v267 + *(v330 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v338, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v316(v268, 1, v388) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v338, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 167)
    {
      outlined init with take of PgQuery_ParseResult(v338, v337, type metadata accessor for PgQuery_ColumnRef);
      goto LABEL_149;
    }

    outlined destroy of PgQuery_ParseResult(v338, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v269 = v337;
  *v337 = v145;
  *(v269 + 2) = 0;
  v270 = v269 + *(ColumnRef + 24);
  UnknownStorage.init()();
LABEL_149:
  outlined destroy of PgQuery_ParseResult(v319, type metadata accessor for PgQuery_Node);
  v271 = v337;
  v272 = *v337;

  outlined destroy of PgQuery_ParseResult(v271, type metadata accessor for PgQuery_ColumnRef);
  if (*(v272 + 16))
  {
    outlined init with copy of PgQuery_ScanResult(v272 + v327, v342, type metadata accessor for PgQuery_Node);
    v273 = 0;
  }

  else
  {
    v273 = 1;
  }

  v274 = v332;
  v275 = v342;
  v276 = v273;
  v277 = v330;
  (*(v332 + 56))(v342, v276, 1, v330);
  if ((*(v274 + 48))(v275, 1, v277) == 1)
  {

    goto LABEL_154;
  }

  v278 = v317;
  outlined init with take of PgQuery_ParseResult(v342, v317, type metadata accessor for PgQuery_Node);
  outlined init with copy of PgQuery_ScanResult(v278, v318, type metadata accessor for PgQuery_Node);
  v279 = swift_allocObject();
  *(v279 + 16) = v381;
  v280 = v384;
  *(v279 + 32) = RangeVar;
  *(v279 + 40) = v280;
  *(v279 + 48) = v386;
  v281 = type metadata accessor for PlanResources(0);
  outlined init with copy of PgQuery_ScanResult(v391 + *(v281 + 20), v336, type metadata accessor for SQLTokenInformation);

  v283 = v376;
  v284 = specialized ColumnResolver.init(schemas:)(v282);
  if (!v283)
  {
    v286 = v284;
    v287 = v285;

    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v318, v279, v286, v287, v336, v395);
    v288 = 0x65756C6176;

    outlined init with copy of Aggregation(v395, v394);
    outlined init with copy of Aggregation(v394, v396);
    v289 = v397;
    v290 = v398;
    __swift_project_boxed_opaque_existential_1(v396, v397);
    v399 = (*(v290 + 8))(v289, v290);
    v400 = v291;
    v292 = v397;
    v293 = v398;
    __swift_project_boxed_opaque_existential_1(v396, v397);
    (*(v293 + 16))(&v412, v292, v293);
    v401 = v412;
    v294 = v397;
    v295 = v398;
    __swift_project_boxed_opaque_existential_1(v396, v397);
    v402 = (*(v295 + 24))(v294, v295);
    v296 = v397;
    v297 = v398;
    __swift_project_boxed_opaque_existential_1(v396, v397);
    v403 = (*(v297 + 32))(v296, v297);
    v298 = v397;
    v299 = v398;
    __swift_project_boxed_opaque_existential_1(v396, v397);
    v300 = (*(v299 + 40))(v298, v299);
    v302 = v301;
    __swift_destroy_boxed_opaque_existential_1Tm(v394);
    __swift_destroy_boxed_opaque_existential_1Tm(v395);
    outlined destroy of PgQuery_ParseResult(v336, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_ParseResult(v318, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(&v406, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    v404 = v300;
    v405 = v302;
    outlined init with copy of SQLExpression(v396, &v406);
    v303 = v401;
    v392[0] = 0x65756C6176;
    v392[1] = 0xE500000000000000;
    v393 = v401;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
    v304 = static _DictionaryStorage.allocate(capacity:)();

    _s10Foundation4UUIDVSgWOhTm_0(v392, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
    v305 = specialized __RawDictionaryStorage.find<A>(_:)(0x65756C6176, 0xE500000000000000);
    v307 = v306;

    if (v307)
    {
      __break(1u);
    }

    else
    {
      v304[(v305 >> 6) + 8] |= 1 << v305;
      v308 = (v304[6] + 16 * v305);
      *v308 = 0x65756C6176;
      v308[1] = 0xE500000000000000;
      *(v304[7] + v305) = v303;
      v309 = v304[2];
      v310 = __OFADD__(v309, 1);
      v311 = v309 + 1;
      if (!v310)
      {
        v304[2] = v311;
        v307 = *(v380 + 16);
        v288 = v307 + 1;
        if (v307 < *(v380 + 24) >> 1)
        {
LABEL_160:

          outlined destroy of PgQuery_ParseResult(v391, type metadata accessor for PlanResources);
          outlined destroy of PgQuery_ParseResult(v317, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v374, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
          outlined destroy of PgQuery_ParseResult(v375, type metadata accessor for PgQuery_Node.OneOf_Node);
          outlined destroy of PgQuery_ParseResult(v334, type metadata accessor for PgQuery_RangeVar);
          _s10Foundation4UUIDVSgWOhTm_0(v383, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
          _s10Foundation4UUIDVSgWOhTm_0(v385, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
          outlined destroy of SQLExpression(v396);
          v312 = v380;
          *(v380 + 16) = v288;
          v313 = (v312 + 24 * v307);
          v164 = v312;
          v313[4] = 0x6361655F6E6F736ALL;
          v313[5] = 0xE900000000000068;
          v313[6] = v304;
          outlined destroy of PgQuery_ParseResult(v328, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_ParseResult(v382, type metadata accessor for PgQuery_Node);
          result = outlined destroy of PgQuery_ParseResult(v370, type metadata accessor for PgQuery_RangeFunction);
          goto LABEL_19;
        }

LABEL_163:
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v380 = v314;
        goto LABEL_160;
      }
    }

    __break(1u);
    goto LABEL_163;
  }

  swift_bridgeObjectRelease_n();
  outlined destroy of PgQuery_ParseResult(v391, type metadata accessor for PlanResources);
  outlined destroy of PgQuery_ParseResult(v336, type metadata accessor for SQLTokenInformation);
  outlined destroy of PgQuery_ParseResult(v318, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_ParseResult(v317, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v374, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  outlined destroy of PgQuery_ParseResult(v375, type metadata accessor for PgQuery_Node.OneOf_Node);
  _s10Foundation4UUIDVSgWOhTm_0(&v406, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  outlined destroy of PgQuery_ParseResult(v334, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v383, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v385, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined destroy of PgQuery_ParseResult(v328, type metadata accessor for PgQuery_Node);

  outlined destroy of PgQuery_ParseResult(v382, type metadata accessor for PgQuery_Node);
  return outlined destroy of PgQuery_ParseResult(v370, type metadata accessor for PgQuery_RangeFunction);
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(a2 + 16) < result)
    {
      v3 = *(a2 + 16);
    }

    v4 = *(type metadata accessor for PgQuery_ScanToken(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance FromClause.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x73616D65686373;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FromClause.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73616D65686373 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000184DEA3E0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromClause.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FromClause.CodingKeys and conformance FromClause.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromClause.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FromClause.CodingKeys and conformance FromClause.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FromClause.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser10FromClauseV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser10FromClauseV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FromClause.CodingKeys and conformance FromClause.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v12[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser6SchemaVGMd, &_sSay14BiomeSQLParser6SchemaVGMR);
  lazy protocol witness table accessor for type [Schema] and conformance <A> [A](&lazy protocol witness table cache variable for type [Schema] and conformance <A> [A], &_sSay14BiomeSQLParser6SchemaVGMd, &_sSay14BiomeSQLParser6SchemaVGMR, lazy protocol witness table accessor for type Schema and conformance Schema);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[6] = 1;
    lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ResultColumn.documentation.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

__n128 ResultColumn.init(expression:alias:documentation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v6;
  v7 = *(a1 + 80);
  *(a6 + 64) = *(a1 + 64);
  *(a6 + 80) = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v9;
  *(a6 + 96) = a2;
  *(a6 + 104) = a3;
  *(a6 + 112) = a4;
  *(a6 + 120) = a5;
  return result;
}

unint64_t ResultColumn.init(node:schemas:tokenInformation:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v201 = a3;
  v200 = a2;
  v192 = a4;
  v194 = type metadata accessor for CharacterSet();
  v183 = *(v194 - 8);
  v5 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v193 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScanToken = type metadata accessor for PgQuery_ScanToken(0);
  v188 = *(ScanToken - 8);
  v8 = *(v188 + 8);
  v9 = MEMORY[0x1EEE9AC00](ScanToken - 8);
  v187 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v186 = &v181 - v11;
  v184 = type metadata accessor for SQLTokenInformation(0);
  v12 = *(*(v184 - 8) + 64);
  MEMORY[0x1EEE9AC00](v184);
  v189 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v191 = &v181 - v16;
  Node = type metadata accessor for PgQuery_Node(0);
  v190 = *(Node - 8);
  v18 = *(v190 + 64);
  v19 = MEMORY[0x1EEE9AC00](Node);
  v21 = &v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v195 = (&v181 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v185 = &v181 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = (&v181 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v181 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v181 - v35;
  ResTarget = type metadata accessor for PgQuery_ResTarget(0);
  v38 = *(*(ResTarget - 8) + 64);
  MEMORY[0x1EEE9AC00](ResTarget);
  v197 = &v181 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = Node;
  v40 = *(Node + 20);
  v199 = a1;
  outlined init with copy of PgQuery_Alias?(*(a1 + v40) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v36, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v41 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v41 - 8) + 48))(v36, 1, v41) == 1)
  {

    _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_18:
    v204._countAndFlagsBits = 0;
    v204._object = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v204._countAndFlagsBits = 0xD000000000000022;
    v204._object = 0x8000000184DEA670;
    v66 = v199;
    outlined init with copy of PgQuery_ScanResult(v199, v21, type metadata accessor for PgQuery_Node);
    v67 = String.init<A>(describing:)();
    MEMORY[0x1865F6280](v67);

    countAndFlagsBits = v204._countAndFlagsBits;
    object = v204._object;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v70 = countAndFlagsBits;
    *(v70 + 8) = object;
    *(v70 + 16) = 0;
    *(v70 + 24) = 0;
    *(v70 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v66, type metadata accessor for PgQuery_Node);
    v71 = type metadata accessor for SQLTokenInformation;
    v72 = &v218;
    return outlined destroy of PgQuery_ParseResult(*(v72 - 32), v71);
  }

  if (swift_getEnumCaseMultiPayload() != 175)
  {

    outlined destroy of PgQuery_ParseResult(v36, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_18;
  }

  v42 = v36;
  v43 = v197;
  ParseResult = outlined init with take of PgQuery_ParseResult(v42, v197, type metadata accessor for PgQuery_ResTarget);
  v45 = *(v43 + *(ResTarget + 20));
  v46 = *(v45 + 24);
  v47 = *(v45 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v46 & 0x2000000000000000) != 0)
  {
    v47 = HIBYTE(v46) & 0xF;
  }

  v182 = *(v43 + *(ResTarget + 20));
  if (!v47)
  {
    v185 = 0;
    v73 = v192;
    *(v192 + 96) = 0;
    *(v73 + 104) = 0;
    v30 = v196;
    v56 = v201;
    goto LABEL_21;
  }

  v48 = *(v201 + 8);
  MEMORY[0x1EEE9AC00](ParseResult);
  v179 = v43;
  result = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ResultColumn.init(node:schemas:tokenInformation:), (&v181 - 4), v48);
  if (v50)
  {
LABEL_93:
    __break(1u);
    return result;
  }

  v196 = result;
  v204._countAndFlagsBits = specialized Collection.dropFirst(_:)(result, v48);
  v204._object = v51;
  v205 = v52;
  v206 = v53;
  v207 = v52;
  v208 = 0;
  v54 = v48;

  while (1)
  {
    specialized EnumeratedSequence.Iterator.next()(v30);
    _s10Foundation4UUIDVSgWObTm_0(v30, v32, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMR);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMR);
    if ((*(*(v55 - 8) + 48))(v32, 1, v55) == 1)
    {

      swift_unknownObjectRelease();
      v82 = *(v182 + 16);
      v81 = *(v182 + 24);
      goto LABEL_29;
    }

    v56 = *v32;
    v57 = *(v55 + 48);
    v58 = *&v32[v57];
    outlined destroy of PgQuery_ParseResult(&v32[v57], type metadata accessor for PgQuery_ScanToken);
    SQLTokenInformation.tokenName(location:)(v58);
    if (v59)
    {

      swift_unknownObjectRelease();
      goto LABEL_31;
    }

    v60 = String.lowercased()();
    v61 = v60._countAndFlagsBits;

    v62 = String.lowercased()();
    v63 = v62._object;
    if (v60._countAndFlagsBits == v62._countAndFlagsBits && v60._object == v62._object)
    {
      break;
    }

    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v65)
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  v85 = v196 + v56;
  if (__OFADD__(v196, v56))
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v86 = __OFADD__(v85, 1);
  v87 = v85 + 1;
  v56 = v201;
  if (v86)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
    v74 = v198;
LABEL_23:
    *(v61 + v56) = static PgQuery_Node._StorageClass.defaultInstance;
    v75 = (v63)(v54, 1, v74);

    v56 = v32;
    v76 = v189;
    if (v75 != 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    goto LABEL_26;
  }

  if (v87 >= *(v54 + 16))
  {

    v93 = *(v182 + 16);
    v92 = *(v182 + 24);
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v94 = v93;
    *(v94 + 8) = v92;
    *(v94 + 16) = 0;
    *(v94 + 24) = 0;
    *(v94 + 32) = 8;
    swift_willThrow();

LABEL_41:
    swift_unknownObjectRelease();
    outlined destroy of PgQuery_ParseResult(v199, type metadata accessor for PgQuery_Node);
    v84 = v56;
    goto LABEL_42;
  }

  if ((v87 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  SQLTokenInformation.tokenName(location:)(*(v54 + ((v188[80] + 32) & ~v188[80]) + *(v188 + 9) * v87));
  if (v88)
  {

    goto LABEL_41;
  }

  v196 = 0;
  swift_unknownObjectRelease();
  v204 = String.lowercased()();
  v117 = v182;
  v118 = *(v182 + 16);
  v119 = *(v182 + 24);
  v203[0] = String.lowercased()();
  v120 = type metadata accessor for Locale();
  v121 = v185;
  (*(*(v120 - 8) + 56))(v185, 1, 1, v120);
  v179 = lazy protocol witness table accessor for type String and conformance String();
  v180 = v179;
  StringProtocol.range<A>(of:options:range:locale:)();
  v123 = v122;
  _s10Foundation4UUIDVSgWOhTm_0(v121, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  if (v123)
  {

    v82 = *(v117 + 16);
    v81 = *(v117 + 24);
LABEL_29:
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v83 = v82;
    *(v83 + 8) = v81;
    *(v83 + 16) = 0;
    *(v83 + 24) = 0;
    *(v83 + 32) = 8;
    swift_willThrow();

LABEL_31:
    outlined destroy of PgQuery_ParseResult(v199, type metadata accessor for PgQuery_Node);
    v84 = v201;
LABEL_42:
    outlined destroy of PgQuery_ParseResult(v84, type metadata accessor for SQLTokenInformation);
    goto LABEL_43;
  }

  v124 = String.subscript.getter();
  v126 = v125;
  v128 = v127;
  v130 = v129;

  v131 = MEMORY[0x1865F6210](v124, v126, v128, v130);
  v133 = v132;

  v134 = v192;
  *(v192 + 96) = v131;
  *(v134 + 104) = v133;
  v185 = v133;
  v30 = v196;
  v56 = v201;
  v45 = v117;
LABEL_21:
  v54 = v191;
  outlined init with copy of PgQuery_Alias?(v45 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, v191, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v63 = *(v190 + 48);
  v74 = v198;
  if ((v63)(v54, 1, v198) == 1)
  {
    v32 = v56;
    v61 = v195;
    UnknownStorage.init()();
    v56 = *(v74 + 20);
    if (one-time initialization token for defaultInstance == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_88;
  }

  outlined init with take of PgQuery_ParseResult(v54, v195, type metadata accessor for PgQuery_Node);
  v76 = v189;
LABEL_26:
  outlined init with copy of PgQuery_ScanResult(v56, v76, type metadata accessor for SQLTokenInformation);
  v77 = v200;

  v79 = specialized ColumnResolver.init(schemas:)(v78);
  v61 = v30;
  if (!v30)
  {
    v89 = v79;
    v90 = v80;

    v91 = v195;
    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v195, v77, v89, v90, v76, &v203[0]._countAndFlagsBits);
    v196 = 0;

    outlined init with copy of Aggregation(v203, v202);
    outlined init with copy of Aggregation(v202, &v204);
    v95 = v206;
    v96 = v207;
    __swift_project_boxed_opaque_existential_1(&v204, v206);
    v208 = (*(v96 + 8))(v95, v96);
    v209 = v97;
    v98 = v206;
    v99 = v207;
    __swift_project_boxed_opaque_existential_1(&v204, v206);
    (*(v99 + 16))(&v215, v98, v99);
    v210 = v215;
    v100 = v206;
    v101 = v207;
    __swift_project_boxed_opaque_existential_1(&v204, v206);
    v211 = (*(v101 + 24))(v100, v101);
    v102 = v206;
    v103 = v207;
    __swift_project_boxed_opaque_existential_1(&v204, v206);
    v212 = (*(v103 + 32))(v102, v103);
    v104 = v206;
    v105 = v207;
    __swift_project_boxed_opaque_existential_1(&v204, v206);
    v106 = (*(v105 + 40))(v104, v105);
    v108 = v107;
    __swift_destroy_boxed_opaque_existential_1Tm(v202);
    __swift_destroy_boxed_opaque_existential_1Tm(&v203[0]._countAndFlagsBits);
    outlined destroy of PgQuery_ParseResult(v76, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_ParseResult(v91, type metadata accessor for PgQuery_Node);
    v213 = v106;
    v214 = v108;
    outlined init with copy of SQLExpression(&v204, v192);
    v109 = *(v56 + 8);
    v32 = v188;
    v30 = v186;
    v110 = v187;
    v200 = *(v109 + 16);
    if (v200)
    {
      v63 = 0;
      v111 = *(v182 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      while (1)
      {
        if (v63 >= *(v109 + 16))
        {
          __break(1u);
          goto LABEL_86;
        }

        v112 = v109;
        v54 = v109 + ((v32[80] + 32) & ~v32[80]);
        v61 = *(v32 + 9);
        outlined init with copy of PgQuery_ScanResult(v54 + v61 * v63, v30, type metadata accessor for PgQuery_ScanToken);
        v113 = *v30;
        result = outlined destroy of PgQuery_ParseResult(v30, type metadata accessor for PgQuery_ScanToken);
        if (v113 == v111)
        {
          break;
        }

        ++v63;
        v56 = v201;
        v109 = v112;
        if (v200 == v63)
        {
          goto LABEL_49;
        }
      }

      v189 = v54;
      v56 = v201;
      if (*(v112 + 16) < v63)
      {
        goto LABEL_92;
      }

      v182 = v112;

      v135 = MEMORY[0x1E69E7CC0];
      v136 = v189;
      if (v63)
      {
        v137 = (v63 - 1);
        v195 = (v183 + 8);
        v138 = v63;
        v186 = (v63 - 1);
        while (v137 < v63)
        {
          outlined init with copy of PgQuery_ScanResult(&v136[--v138 * v61], v110, type metadata accessor for PgQuery_ScanToken);
          if (*(v110 + 16) == 1)
          {
            v140 = *(v110 + 1);
            if (v140 - 39 >= 0x152 && v140 - 378 >= 0x74)
            {
              if (v140 > 0x26)
              {
                goto LABEL_81;
              }

              if (((1 << v140) & 0x1FFFFFFFBFLL) == 0)
              {
                if (((1 << v140) & 0x6000000000) == 0)
                {
                  goto LABEL_81;
                }

                v188 = v135;
                PgQuery_Token.rawValue.getter(v140, 1);
                v141 = (v56 + *(v184 + 20));
                v143 = *v141;
                v142 = v141[1];
                v144 = *v110;
                v145 = String.index(_:offsetBy:)();
                v146 = v110[1];
                result = String.index(_:offsetBy:)();
                if (result >> 14 < v145 >> 14)
                {
                  goto LABEL_90;
                }

                v147 = String.subscript.getter();
                v148 = MEMORY[0x1865F6210](v147);
                v150 = v149;

                v203[0]._countAndFlagsBits = v148;
                v203[0]._object = v150;
                v151 = v193;
                static CharacterSet.whitespaces.getter();
                v191 = lazy protocol witness table accessor for type String and conformance String();
                v152 = StringProtocol.trimmingCharacters(in:)();
                v154 = v153;
                v190 = *v195;
                (v190)(v151, v194);

                v203[0]._countAndFlagsBits = 10;
                v203[0]._object = 0xE100000000000000;
                MEMORY[0x1EEE9AC00](v155);
                v179 = v203;
                v156 = v196;
                v157 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v181 - 4), v152, v154, &v216);
                v196 = v156;
                v158 = *(v157 + 16);
                if (v158)
                {
                  v215 = MEMORY[0x1E69E7CC0];
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v158, 0);
                  v159 = v215;
                  v185 = v157;
                  v160 = (v157 + 56);
                  do
                  {
                    v200 = v158;
                    v162 = *(v160 - 3);
                    v161 = *(v160 - 2);
                    v163 = v159;
                    v164 = *(v160 - 1);
                    v165 = *v160;

                    v203[0]._countAndFlagsBits = MEMORY[0x1865F6210](v162, v161, v164, v165);
                    v203[0]._object = v166;
                    v167 = v193;
                    static CharacterSet.whitespaces.getter();
                    v159 = v163;
                    v168 = StringProtocol.trimmingCharacters(in:)();
                    v198 = v169;

                    (v190)(v167, v194);

                    v215 = v159;
                    v171 = *(v159 + 16);
                    v170 = *(v159 + 24);
                    if (v171 >= v170 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v170 > 1, v171 + 1, 1);
                      v159 = v215;
                    }

                    *(v159 + 16) = v171 + 1;
                    v172 = v159 + 16 * v171;
                    v173 = v198;
                    *(v172 + 32) = v168;
                    *(v172 + 40) = v173;
                    v160 += 4;
                    v158 = v200 - 1;
                  }

                  while (v200 != 1);

                  v110 = v187;
                }

                else
                {

                  v159 = MEMORY[0x1E69E7CC0];
                }

                v174 = v159;
                v175 = *(v159 + 16);
                v135 = v188;
                v176 = *(v188 + 2);
                if (__OFADD__(v176, v175))
                {
                  goto LABEL_91;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v202[0] = v135;
                if (!isUniquelyReferenced_nonNull_native || v176 + v175 > *(v135 + 24) >> 1)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v135 = v139;
                  v202[0] = v139;
                }

                v56 = v201;
                specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, v175, v174);

                v136 = v189;
                v137 = v186;
              }
            }
          }

          outlined destroy of PgQuery_ParseResult(v110, type metadata accessor for PgQuery_ScanToken);
          if (!v138)
          {
            goto LABEL_82;
          }
        }

        __break(1u);
LABEL_81:
        outlined destroy of PgQuery_ParseResult(v110, type metadata accessor for PgQuery_ScanToken);
      }

LABEL_82:

      if (*(v135 + 16))
      {
        v203[0]._countAndFlagsBits = v135;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v114 = BidirectionalCollection<>.joined(separator:)();
        v115 = v178;

        outlined destroy of SQLExpression(&v204);
        goto LABEL_51;
      }

      outlined destroy of SQLExpression(&v204);
    }

    else
    {
LABEL_49:
      outlined destroy of SQLExpression(&v204);
    }

    v114 = 0;
    v115 = 0;
LABEL_51:
    outlined destroy of PgQuery_ParseResult(v199, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_ParseResult(v56, type metadata accessor for SQLTokenInformation);
    v116 = v192;
    *(v192 + 112) = v114;
    *(v116 + 120) = v115;
LABEL_43:
    v71 = type metadata accessor for PgQuery_ResTarget;
    v72 = &v217;
    return outlined destroy of PgQuery_ParseResult(*(v72 - 32), v71);
  }

  swift_bridgeObjectRelease_n();
  outlined destroy of PgQuery_ParseResult(v76, type metadata accessor for SQLTokenInformation);
  outlined destroy of PgQuery_ParseResult(v195, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_ParseResult(v199, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_ParseResult(v56, type metadata accessor for SQLTokenInformation);
  outlined destroy of PgQuery_ParseResult(v197, type metadata accessor for PgQuery_ResTarget);
}