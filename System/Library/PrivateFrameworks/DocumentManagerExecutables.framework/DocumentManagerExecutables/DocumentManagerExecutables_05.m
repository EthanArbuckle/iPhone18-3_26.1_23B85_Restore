unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a4, a1, v23);
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for UIContentSizeCategory(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    v21 = a2;
  }
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    v21 = a2;
  }
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for FPAction(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    v21 = a2;
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1 & 1, v21);
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      type metadata accessor for DOCTab(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v13;
    v25 = *v24;
    v26 = *(v24 + 16);
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v13, a4, a1, a2, a3, v23);
  }
}

{
  v6 = v5;
  v12 = *v5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 >= v17 && (a5 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a5 & 1);
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v6;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a4, v27);
      specialized _NativeDictionary._insert(at:key:value:)(v14, v27, a1, a2, a3, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v6;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 24 * v14;
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  *v21 = a1;
  *(v21 + 8) = a2;
  *(v21 + 16) = a3;

  outlined consume of DOCItemCollectionCellContentPool.CellContentPromise(v22, v23, v24);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
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

{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
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

{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = *(v16 + 56);
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a5 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 32 * v15;
    *v26 = a1;
    *(v26 + 8) = a6;
    *(v26 + 16) = a2;
    *(v26 + 24) = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v15, a4, a1, a2, a3, v25, a6);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    specialized _NativeDictionary.copy()();
    result = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a1, v19, a3);
    return outlined init with copy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(a1, v20);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v21);
  }
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      specialized _NativeDictionary.copy()();
      v10 = v18;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSgMd);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v10, a3, a1, a2, v20);

    return a3;
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(uint64_t, void *, uint64_t, uint64_t))
{
  v10 = v6;
  v13 = *v6;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      type metadata accessor for NSFileProviderItemIdentifier(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v10;
  if (v20)
  {
    *(*(v24 + 56) + 8 * v14) = a1;
  }

  else
  {
    a6(v14, a2, a1, v24);

    return a2;
  }
}

{
  v10 = v6;
  v13 = *v6;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      type metadata accessor for FPProviderDomainID(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v10;
  if (v20)
  {
    *(*(v24 + 56) + 8 * v14) = a1;
  }

  else
  {
    a6(v14, a2, a1, v24);

    return a2;
  }
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for DOCGoToRecentLocation();
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 40 * v8;
    __swift_destroy_boxed_opaque_existential_0(v19);

    return outlined init with take of DOCGoToFolderCandidate(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    v28 = *(v27 + 56);
    v29 = *(v28 + 8 * v17);
    *(v28 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of DOCIdentityHashableLocation(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7] + 56 * v10;

  return outlined assign with take of DOCIdentityHashableLocation(a1, v17);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a6 & 1) != 0)
  {
LABEL_7:
    v22 = *v7;
    if (v20)
    {
LABEL_8:
      v23 = v22[7];
      v24 = type metadata accessor for Column(0);
      return outlined assign with take of DOCDebugUIScenarioManager.LoadedScenario(a1, v23 + *(*(v24 - 8) + 72) * v16, type metadata accessor for Column);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a6 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a6 & 1);
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a5);
  if ((v20 & 1) != (v27 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v26;
  v22 = *v7;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a4, a5, a1, v22);
  outlined copy of ColumnType(a2, a3);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + result) = a1 & 1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1 & 1, v19);
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    v25 = *(v24 + 56);
    v26 = *(v25 + 8 * v14);
    *(v25 + 8 * v14) = a1;
  }

  else
  {

    a6(v14, a2, a1, v24);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(unint64_t, _BYTE *, uint64_t, uint64_t))
{
  v10 = v6;
  v14 = *v6;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      a4();
      goto LABEL_7;
    }

    a5();
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v10;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v26);
      return a6(v16, v26, a1, v22);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v10;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(*(v22 + 56) + 8 * v16) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v6;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  result = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = v19[3];
    if (v26 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v27 = *v7;
      if (v25)
      {
LABEL_8:
        v28 = (v27[7] + 32 * v21);
        *v28 = a3;
        v28[1] = a4;
        v28[2] = a5;
        v28[3] = a6;
        return result;
      }

      goto LABEL_11;
    }

    if (v26 >= result && (a2 & 1) == 0)
    {
      result = specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a2 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v25 & 1) == (v29 & 1))
    {
      v21 = result;
      v27 = *v7;
      if (v25)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v15 + 16))(v18, a1, v14);
      return specialized _NativeDictionary._insert(at:key:value:)(v21, v18, v27, a3, a4, a5, a6);
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined consume of DOCItemFileTypeGroupCategory(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xB)
  {
  }

  return result;
}

uint64_t outlined copy of DOCItemFileTypeGroupCategory(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xB)
  {
  }

  return result;
}

uint64_t outlined copy of DOCItemDateGroupCategory(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t outlined copy of DOCItemSharedByGroupCategory(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t outlined assign with take of DOCDebugUIScenarioManager.LoadedScenario(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void outlined consume of DOCItemCollectionCellContentPool.CellContentPromise(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v4 = a3 & 0x7FFFFFFFFFFFFFFFLL;

    a1 = v4;
  }
}

uint64_t outlined init with copy of UIFontTextStyle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void OutlineColumnData.selectableColumnTypes.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v7 = *(v4 + 16 * v6);
        v8 = *(v4 + 16 * v6 + 8);
        if (v8)
        {
          break;
        }

        ++v6;
        outlined consume of ColumnType(v7, 0);
        outlined consume of ColumnType(0, 0);
        if (v2 == v6)
        {
          return;
        }
      }

      v13 = *(v4 + 16 * v6);
      if (v8 - 1 >= 8)
      {
        v12 = *(v4 + 16 * v6 + 8);
        outlined copy of ColumnType(v7, v8);

        *&v7 = v13;
        v8 = v12;
      }

      outlined consume of ColumnType(v7, v8);
      outlined consume of ColumnType(0, 0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
      }

      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      v11 = v13;
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v11 = v13;
      }

      v3 = v6 + 1;
      *(v5 + 16) = v10 + 1;
      *(v5 + 16 * v10 + 32) = v11;
    }

    while (v2 - 1 != v6);
  }
}

uint64_t one-time initialization function for defaultFormatters()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables10ColumnTypeO_AC10FormattersOTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for defaultFormatters);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables10ColumnTypeO_AA10FormattersOtMd);
  result = swift_arrayDestroy();
  static OutlineColumnData.defaultFormatters = v0;
  return result;
}

uint64_t OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v109 = a5;
  v110 = a4;
  LODWORD(v108) = a3;
  v107 = a6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v105 = *(v8 - 8);
  v106 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v102 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v103 = *(v11 - 8);
  v104 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v101 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for DispatchQoS.QoSClass();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v14);
  v98 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v112 = a2;

  if (v16)
  {
    v19 = 0;
    v20 = a1 + 32;
    v97 = v16 - 1;
    v111 = MEMORY[0x277D84F90];
    do
    {
      v21 = v19;
      while (1)
      {
        if (v21 >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v19 = v21 + 1;
        aBlock = *(v20 + 16 * v21);
        *&v22 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v18);
        *(&v95 - 2) = &aBlock;
        v23 = v22;
        v25 = v24;
        outlined copy of ColumnType(v22, v24);
        if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v95 - 4), v112))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = outlined consume of ColumnType(v23, v25);
        ++v21;
        if (v16 == v19)
        {
          goto LABEL_15;
        }
      }

      v26 = v111;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1);
        v26 = v118;
      }

      v28 = *(v26 + 16);
      v27 = *(v26 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v31 = v28 + 1;
        v111 = v28;
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v29 = v31;
        v28 = v111;
        v26 = v118;
      }

      *(v26 + 16) = v29;
      v111 = v26;
      v30 = v26 + 16 * v28;
      *(v30 + 32) = v23;
      *(v30 + 40) = v25;
    }

    while (v97 != v21);
  }

  else
  {
    v111 = MEMORY[0x277D84F90];
  }

LABEL_15:

  LOBYTE(v19) = v108;
  v119 = v108 & 1;
  v16 = v110;
  if (v110)
  {
    a1 = v111;

    v20 = v109;
    if (v109)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  a1 = v111;
  v32 = *(v111 + 16);
  v20 = v109;
  if (!v32)
  {

    v16 = MEMORY[0x277D84F90];
    if (v20)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  *&aBlock = MEMORY[0x277D84F90];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
  v16 = aBlock;
  v33 = *(aBlock + 16);
  do
  {
    *&aBlock = v16;
    v34 = *(v16 + 24);
    if (v33 >= v34 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v33 + 1, 1);
      v16 = aBlock;
    }

    *(v16 + 16) = v33 + 1;
    *(v16 + 8 * v33++ + 32) = 0;
    --v32;
  }

  while (v32);

  a1 = v111;
  if (!v20)
  {
LABEL_26:
    if (one-time initialization token for defaultFormatters != -1)
    {
      swift_once();
    }

    v20 = static OutlineColumnData.defaultFormatters;
  }

LABEL_29:
  if (one-time initialization token for cachedVisibleColumns == -1)
  {
    if (v19)
    {
LABEL_31:

LABEL_41:
      v54 = v107;
      goto LABEL_42;
    }
  }

  else
  {
LABEL_33:
    swift_once();
    if (v19)
    {
      goto LABEL_31;
    }
  }

  v36 = static OutlineColumnData.cachedVisibleColumns;

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v37, a1) & 1) != 0 && (static OutlineColumnData.hasWrittenToDefaults)
  {

    goto LABEL_31;
  }

  specialized static OutlineColumnData.userDefault()();
  v39 = v38;
  v40 = MEMORY[0x24C1FAD20](0xD00000000000001ALL, 0x8000000249BC85F0);
  v41 = [v39 dataForKey_];

  if (!v41)
  {

LABEL_40:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v45 = v99;
    v46 = v98;
    v47 = v100;
    (*(v99 + 104))(v98, *MEMORY[0x277D851A8], v100);
    v48 = static OS_dispatch_queue.global(qos:)();
    (*(v45 + 8))(v46, v47);
    v49 = swift_allocObject();
    *(v49 + 16) = a1;
    v116 = partial apply for closure #4 in OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:);
    v117 = v49;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v114 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v115 = &block_descriptor;
    v50 = _Block_copy(&aBlock);

    v51 = v101;
    static DispatchQoS.unspecified.getter();
    v118 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v52 = v102;
    v53 = v106;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v51, v52, v50);
    _Block_release(v50);

    (*(v105 + 8))(v52, v53);
    (*(v103 + 8))(v51, v104);

    static OutlineColumnData.cachedVisibleColumns = a1;

    static OutlineColumnData.hasWrittenToDefaults = 1;
    goto LABEL_41;
  }

  v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables10ColumnTypeOGMd);
  lazy protocol witness table accessor for type [ColumnType] and conformance <A> [A](&lazy protocol witness table cache variable for type [ColumnType] and conformance <A> [A], lazy protocol witness table accessor for type ColumnType and conformance ColumnType);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v110 = v16;

  v57 = aBlock;
  v58 = *(aBlock + 16);
  if (!v58)
  {

    outlined consume of Data._Representation(v42, v44);
    v16 = v110;
    goto LABEL_40;
  }

  v97 = v42;
  v108 = v44;
  v59 = v36[2] == *(a1 + 16);
  v96 = v36;
  if (v59)
  {
    v60 = v20;
  }

  else
  {
    v109 = v20;
    v61 = MEMORY[0x277D84F90];
    v62 = 32;
    do
    {
      v63 = v57;
      aBlock = *(v57 + v62);
      *&v64 = MEMORY[0x28223BE20](v57, v56);
      *(&v95 - 2) = v65;
      v66 = v64;
      v68 = v67;
      outlined copy of ColumnType(v64, v67);
      v69 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v95 - 4), v111);
      if (v69 & 1) == 0 && (*&aBlock = v66, *(&aBlock + 1) = v68, MEMORY[0x28223BE20](v69, v70), *(&v95 - 2) = &aBlock, (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v95 - 4), v112)))
      {
        outlined consume of ColumnType(v66, v68);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
        }

        v72 = *(v61 + 2);
        v71 = *(v61 + 3);
        if (v72 >= v71 >> 1)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v61, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
        }

        *(v61 + 2) = v72 + 1;
        v73 = &v61[16 * v72];
        *(v73 + 4) = v66;
        *(v73 + 5) = v68;
      }

      v57 = v63;
      v62 += 16;
      --v58;
    }

    while (v58);
    v60 = v109;

    v76 = *(v111 + 16);
    if (v76)
    {
      v77 = (v111 + 32);
      do
      {
        aBlock = *v77;
        *&v78 = MEMORY[0x28223BE20](v74, v75);
        *(&v95 - 2) = &aBlock;
        v79 = v78;
        v81 = v80;
        outlined copy of ColumnType(v78, v80);
        if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v95 - 4), v61))
        {
          v74 = outlined consume of ColumnType(v79, v81);
        }

        else
        {
          v74 = swift_isUniquelyReferenced_nonNull_native();
          if ((v74 & 1) == 0)
          {
            v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
            v61 = v74;
          }

          v83 = *(v61 + 2);
          v82 = *(v61 + 3);
          if (v83 >= v82 >> 1)
          {
            v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v61, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
            v61 = v74;
          }

          *(v61 + 2) = v83 + 1;
          v84 = &v61[16 * v83];
          *(v84 + 4) = v79;
          *(v84 + 5) = v81;
        }

        ++v77;
        --v76;
      }

      while (v76);
    }
  }

  a1 = v111;
  v85 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v96, v111);

  if (v85)
  {
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v86 = v99;
    v87 = v98;
    v88 = v100;
    (*(v99 + 104))(v98, *MEMORY[0x277D851A8], v100);
    v89 = static OS_dispatch_queue.global(qos:)();
    (*(v86 + 8))(v87, v88);
    v90 = swift_allocObject();
    *(v90 + 16) = a1;
    v116 = partial apply for closure #3 in OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:);
    v117 = v90;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v114 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v115 = &block_descriptor_9;
    v91 = _Block_copy(&aBlock);

    v92 = v101;
    static DispatchQoS.unspecified.getter();
    v118 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v93 = v102;
    v94 = v106;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v92, v93, v91);
    _Block_release(v91);

    (*(v105 + 8))(v93, v94);
    (*(v103 + 8))(v92, v104);

    static OutlineColumnData.cachedVisibleColumns = a1;

    static OutlineColumnData.hasWrittenToDefaults = 1;
  }

  result = outlined consume of Data._Representation(v97, v108);
  v54 = v107;
  v20 = v60;
  v16 = v110;
LABEL_42:
  *v54 = v119;
  *(v54 + 8) = v16;
  *(v54 + 16) = v20;
  v55 = v112;
  *(v54 + 24) = a1;
  *(v54 + 32) = v55;
  return result;
}

uint64_t closure #3 in OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables10ColumnTypeOGMd);
  lazy protocol witness table accessor for type [ColumnType] and conformance <A> [A](&lazy protocol witness table cache variable for type [ColumnType] and conformance <A> [A], lazy protocol witness table accessor for type ColumnType and conformance ColumnType);
  v0 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v2 = v1;

  specialized static OutlineColumnData.userDefault()();
  v4 = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = MEMORY[0x24C1FAD20](0xD00000000000001ALL, 0x8000000249BC85F0);
  [v4 setObject:isa forKey:v6];

  return outlined consume of Data._Representation(v0, v2);
}

uint64_t OutlineColumnData.withUpdatedVisibleColumnTypes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v9 = v2[3];
  v8 = v2[4];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(a1, v9))
  {
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v9;
    *(a2 + 32) = v8;
  }

  else
  {

    return OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(a1, v8, v5, v6, v7, a2);
  }
}

uint64_t OutlineColumnData.withUpdatedAvailableColumnTypes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v7 = v2[1];
  v6 = v2[2];
  v9 = v2[3];
  v8 = v2[4];

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(a1, v8))
  {

    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v6;
    *(a2 + 24) = v9;
    *(a2 + 32) = v8;
  }

  else
  {
    v59 = a2;

    v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC26DocumentManagerExecutables10ColumnTypeO_SayAFGTt0g5Tf4g_n(v11);

    v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC26DocumentManagerExecutables10ColumnTypeO_SayAFGTt0g5Tf4g_n(v8);

    v14 = *(v13 + 16);
    v15 = *(v12 + 16);
    v60 = v7;
    if (v14 <= v15 >> 3)
    {
      *&v65 = v12;
      specialized Set._subtract<A>(_:)(v13);

      v16 = v12;
    }

    else
    {
      v16 = specialized _NativeSet.subtracting<A>(_:)(v13, v12);
    }

    v61 = v6;
    v62 = v16;
    v64 = a1;
    v58 = v5;
    v18 = *(v9 + 16);
    if (v18)
    {
      v19 = 0;
      v57 = v18 - 1;
      v63 = MEMORY[0x277D84F90];
      do
      {
        v20 = v19;
        while (1)
        {
          if (v20 >= *(v9 + 16))
          {
            __break(1u);
            return result;
          }

          v19 = v20 + 1;
          v65 = *(v9 + 32 + 16 * v20);
          *&v21 = MEMORY[0x28223BE20](result, v17);
          v54 = &v65;
          v22 = v21;
          v24 = v23;
          outlined copy of ColumnType(v21, v23);
          if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v53, v64))
          {
            break;
          }

          result = outlined consume of ColumnType(v22, v24);
          ++v20;
          if (v18 == v19)
          {
            goto LABEL_22;
          }
        }

        v25 = v63;
        result = swift_isUniquelyReferenced_nonNull_native();
        v66 = v25;
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1);
          v25 = v66;
        }

        v27 = *(v25 + 2);
        v26 = *(v25 + 3);
        v28 = (v27 + 1);
        if (v27 >= v26 >> 1)
        {
          v63 = (v27 + 1);
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
          v28 = v63;
          v25 = v66;
        }

        *(v25 + 2) = v28;
        v63 = v25;
        v29 = &v25[16 * v27];
        *(v29 + 4) = v22;
        *(v29 + 5) = v24;
      }

      while (v57 != v20);
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
    }

LABEL_22:
    v30 = v62;
    if (*(v62 + 16))
    {
      specialized static OutlineColumnData.userDefault()();
      v32 = v31;
      v33 = MEMORY[0x24C1FAD20](0xD00000000000001ALL, 0x8000000249BC85F0);
      v34 = [v32 dataForKey_];

      v36 = v60;
      v35 = v61;
      if (v34)
      {
        v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables10ColumnTypeOGMd);
        lazy protocol witness table accessor for type [ColumnType] and conformance <A> [A](&lazy protocol witness table cache variable for type [ColumnType] and conformance <A> [A], lazy protocol witness table accessor for type ColumnType and conformance ColumnType);
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

        v40 = *(v65 + 16);
        if (v40)
        {
          v56 = v37;
          v57 = v39;
          v55 = v65;
          v41 = (v65 + 40);
          do
          {
            v43 = *(v41 - 1);
            v42 = *v41;
            outlined copy of ColumnType(v43, *v41);
            v44 = specialized Set.contains(_:)(v43, v42, v30);
            if (v44 & 1) == 0 || (*&v65 = v43, *(&v65 + 1) = v42, MEMORY[0x28223BE20](v44, v45), v54 = &v65, (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v53, v63)))
            {
              outlined consume of ColumnType(v43, v42);
            }

            else
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v46 = v63;
              }

              else
              {
                v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 2) + 1, 1, v63, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
              }

              v48 = *(v46 + 2);
              v47 = *(v46 + 3);
              if (v48 >= v47 >> 1)
              {
                v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v46, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
              }

              *(v46 + 2) = v48 + 1;
              v63 = v46;
              v49 = &v46[16 * v48];
              *(v49 + 4) = v43;
              *(v49 + 5) = v42;
              v30 = v62;
            }

            v41 += 2;
            --v40;
          }

          while (v40);

          v50 = v56;
          v51 = v57;
        }

        else
        {

          v50 = v37;
          v51 = v39;
        }

        outlined consume of Data._Representation(v50, v51);
      }
    }

    else
    {

      v36 = v60;
      v35 = v61;
    }

    v52 = v64;

    return OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v63, v52, v58, v36, v35, v59);
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs11AnyHashableV_SD4KeysVyAE26DocumentManagerExecutables24DOCFileOperationProgressC_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x24C1FB4D0](*(a1 + 16), MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v3 = 0;
  v4 = *(a1 + 64);
  v16 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  if ((v6 & v4) != 0)
  {
    do
    {
      v9 = v3;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      outlined init with copy of AnyHashable(*(a1 + 48) + 40 * (v10 | (v9 << 6)), v14);
      v11[0] = v14[0];
      v11[1] = v14[1];
      v12 = v15;
      specialized Set._Variant.insert(_:)(v13, v11);
      result = outlined destroy of AnyHashable(v13);
    }

    while (v7);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return v16;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, int64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v6 = 3;
      }

      else
      {
        v6 = 4;
      }

      goto LABEL_22;
    }

    if (!a2)
    {
      v6 = 0;
      goto LABEL_22;
    }

    if (a2 == 1)
    {
      v6 = 2;
      goto LABEL_22;
    }

LABEL_65:
    MEMORY[0x24C1FCBD0](1);
    String.hash(into:)();
    goto LABEL_23;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      v6 = 5;
    }

    else
    {
      v6 = 6;
    }

    goto LABEL_22;
  }

  if (a2 == 6)
  {
    v6 = 7;
    goto LABEL_22;
  }

  if (a2 == 7)
  {
    v6 = 8;
    goto LABEL_22;
  }

  if (a2 != 8)
  {
    goto LABEL_65;
  }

  v6 = 9;
LABEL_22:
  MEMORY[0x24C1FCBD0](v6);
LABEL_23:
  v8 = Hasher._finalize()();
  v9 = -1 << *(a3 + 32);
  v10 = v8 & ~v9;
  if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = (*(a3 + 48) + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
    if (v14 <= 3)
    {
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          if (a2 == 2)
          {
            v18 = *v12;
            v19 = 2;
            goto LABEL_76;
          }

          outlined copy of ColumnType(a1, a2);
          v15 = 2;
        }

        else
        {
          if (a2 == 3)
          {
            v18 = *v12;
            v19 = 3;
            goto LABEL_76;
          }

          outlined copy of ColumnType(a1, a2);
          v15 = 3;
        }

        goto LABEL_55;
      }

      if (!v14)
      {
        if (!a2)
        {
          v18 = *v12;
          v19 = 0;
          goto LABEL_76;
        }

        outlined copy of ColumnType(a1, a2);
        v15 = 0;
        goto LABEL_55;
      }

      if (v14 == 1)
      {
        if (a2 == 1)
        {
          v18 = *v12;
          v19 = 1;
          goto LABEL_76;
        }

        outlined copy of ColumnType(a1, a2);
        v15 = 1;
        goto LABEL_55;
      }
    }

    else
    {
      if (v14 <= 5)
      {
        if (v14 == 4)
        {
          if (a2 == 4)
          {
            v18 = *v12;
            v19 = 4;
            goto LABEL_76;
          }

          outlined copy of ColumnType(a1, a2);
          v15 = 4;
        }

        else
        {
          if (a2 == 5)
          {
            v18 = *v12;
            v19 = 5;
            goto LABEL_76;
          }

          outlined copy of ColumnType(a1, a2);
          v15 = 5;
        }

        goto LABEL_55;
      }

      switch(v14)
      {
        case 6:
          if (a2 == 6)
          {
            v18 = *v12;
            v19 = 6;
            goto LABEL_76;
          }

          outlined copy of ColumnType(a1, a2);
          v15 = 6;
          goto LABEL_55;
        case 7:
          if (a2 == 7)
          {
            v18 = *v12;
            v19 = 7;
            goto LABEL_76;
          }

          outlined copy of ColumnType(a1, a2);
          v15 = 7;
          goto LABEL_55;
        case 8:
          if (a2 == 8)
          {
            v18 = *v12;
            v19 = 8;
            goto LABEL_76;
          }

          outlined copy of ColumnType(a1, a2);
          v15 = 8;
          goto LABEL_55;
      }
    }

    if (a2 < 9)
    {
      outlined copy of ColumnType(a1, a2);
      outlined copy of ColumnType(v13, v14);
      v15 = v14;
LABEL_55:
      outlined consume of ColumnType(v13, v15);
      outlined consume of ColumnType(a1, a2);
      goto LABEL_56;
    }

    if (v13 == a1 && v14 == a2)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of ColumnType(a1, a2);
    outlined copy of ColumnType(v13, v14);
    outlined consume of ColumnType(v13, v14);
    outlined consume of ColumnType(a1, a2);
    if (v17)
    {
      return 1;
    }

LABEL_56:
    v10 = (v10 + 1) & v11;
    if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  outlined copy of ColumnType(a1, a2);
  outlined copy of ColumnType(a1, a2);
  v18 = a1;
  v19 = a2;
LABEL_76:
  outlined consume of ColumnType(v18, v19);
  outlined consume of ColumnType(a1, a2);
  return 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (static String._unconditionallyBridgeFromObjectiveC(_:)(), Hasher.init(_seed:)(), String.hash(into:)(), v3 = Hasher._finalize()(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

{
  if (*(a2 + 16) && (v4 = AnyHashable._rawHashValue(seed:)(*(a2 + 40)), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v10);
      v8 = MEMORY[0x24C1FC430](v10, a1);
      outlined destroy of AnyHashable(v10);
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  if (*(a2 + 16) && (Hasher.init(_seed:)(), DOCSidebarItem.hashComparableValue.getter(), String.hash(into:)(), , v3 = Hasher._finalize()(), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = (*(a2 + 48) + 48 * v5);
      v8 = *(v7 + 25);
      v9 = v7[1];
      v17 = *v7;
      v18[0] = v9;
      *(v18 + 9) = v8;
      outlined init with copy of DOCSidebarItem(&v17, &v16);
      v10 = DOCSidebarItem.hashComparableValue.getter();
      v12 = v11;
      if (v10 == DOCSidebarItem.hashComparableValue.getter() && v12 == v13)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined destroy of DOCSidebarItem(&v17);
      if ((v14 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    outlined destroy of DOCSidebarItem(&v17);
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t specialized Set.contains(_:)(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    Hasher.init(_seed:)();
    MEMORY[0x24C1FCBD0](a1 & 1);
    v5 = Hasher._finalize()();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL specialized Set.contains(_:)(Swift::UInt32 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          v9 = 0x6E6F697461636F6CLL;
          v10 = 0xE900000000000073;
        }

        else
        {
          if (v8 == 4)
          {
            v9 = 0x73726576726573;
          }

          else
          {
            v9 = 1936154996;
          }

          if (v8 == 4)
          {
            v10 = 0xE700000000000000;
          }

          else
          {
            v10 = 0xE400000000000000;
          }
        }
      }

      else if (*(*(a2 + 48) + v6))
      {
        if (v8 == 1)
        {
          v9 = 0x796C746E65636572;
        }

        else
        {
          v9 = 0x657469726F766166;
        }

        if (v8 == 1)
        {
          v10 = 0xEC00000064657355;
        }

        else
        {
          v10 = 0xE900000000000073;
        }
      }

      else
      {
        v10 = 0xE300000000000000;
        v9 = 7368564;
      }

      v11 = 0x73726576726573;
      if (a1 != 4)
      {
        v11 = 1936154996;
      }

      v12 = 0xE700000000000000;
      if (a1 != 4)
      {
        v12 = 0xE400000000000000;
      }

      if (a1 == 3)
      {
        v11 = 0x6E6F697461636F6CLL;
        v12 = 0xE900000000000073;
      }

      v13 = 0x796C746E65636572;
      if (a1 != 1)
      {
        v13 = 0x657469726F766166;
      }

      v14 = 0xEC00000064657355;
      if (a1 != 1)
      {
        v14 = 0xE900000000000073;
      }

      if (!a1)
      {
        v13 = 7368564;
        v14 = 0xE300000000000000;
      }

      v15 = a1 <= 2u ? v13 : v11;
      v16 = a1 <= 2u ? v14 : v12;
      if (v9 == v15 && v10 == v16)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v17 & 1;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t OutlineColumnData.withUpdatedAvailableColumnTypesForSource(isICloudSource:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = &outlined read-only object #0 of static ColumnType.allCases.getter;
  if ((result & 1) == 0)
  {
    v4 = 0;
    v3 = MEMORY[0x277D84F90];
    do
    {
      if (v4 <= 9)
      {
        v5 = 9;
      }

      else
      {
        v5 = v4;
      }

      v6 = v4;
      while (1)
      {
        if (v5 == v6)
        {
          __break(1u);
          return result;
        }

        v7 = &outlined read-only object #0 of static ColumnType.allCases.getter + 16 * v6;
        v8 = *(v7 + 2);
        v9 = *(v7 + 5);
        if (v9 != 8)
        {
          break;
        }

        ++v6;
        outlined consume of ColumnType(*(v7 + 4), 8uLL);
        result = outlined consume of ColumnType(0, 8uLL);
        if (v6 == 9)
        {
          goto LABEL_2;
        }
      }

      v13 = *(v7 + 2);
      if (v9 >= 8)
      {
        v12 = *(v7 + 5);
        outlined copy of ColumnType(v8, v9);

        *&v8 = v13;
        v9 = v12;
      }

      outlined consume of ColumnType(v8, v9);
      outlined consume of ColumnType(0, 8uLL);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1);
      }

      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      v4 = v6 + 1;
      v3[2] = v11 + 1;
      *&v3[2 * v11 + 4] = v13;
    }

    while (v6 != 8);
  }

LABEL_2:
  OutlineColumnData.withUpdatedAvailableColumnTypes(_:)(v3, a2);
}

uint64_t OutlineColumnData.withUpdatedSizes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  result = v2[1];
  v6 = v2[2];
  v8 = v2[3];
  v7 = v2[4];
  v9 = *(a1 + 16);
  if (v9 == *(result + 16))
  {
    if (v9)
    {
      v10 = result == a1;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
LABEL_10:
      *a2 = v4;
      *(a2 + 8) = result;
      *(a2 + 16) = v6;
      *(a2 + 24) = v8;
      *(a2 + 32) = v7;
    }

    else
    {
      v11 = (a1 + 32);
      v12 = (result + 32);
      while (v9)
      {
        if (*v11 != *v12)
        {
          goto LABEL_13;
        }

        ++v11;
        ++v12;
        if (!--v9)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:

    return OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v8, v7, v4, a1, v6, a2);
  }

  return result;
}

uint64_t OutlineColumnData.withUpdatedSizeClass(isCompact:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1 & 1;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v8 = v2[3];
  v7 = v2[4];
  if (v4 == v3)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v8;
    *(a2 + 32) = v7;
  }

  else
  {

    return OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v8, v7, v3, v5, v6, a2);
  }
}

uint64_t OutlineColumnData.withResetSizes()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = v1[1];
  v4 = v1[2];
  v7 = v1[3];
  v6 = v1[4];
  v8 = *(v7 + 16);
  if (v8)
  {
    v13 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v13;
    v10 = *(v13 + 16);
    do
    {
      v11 = *(v13 + 24);
      if (v10 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v10 + 1, 1);
      }

      *(v13 + 16) = v10 + 1;
      *(v13 + 8 * v10++ + 32) = 0;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(v9, v5) & 1) != 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(v9, v5))
  {

    *a1 = v3;
    *(a1 + 8) = v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v7;
    *(a1 + 32) = v6;
  }

  else
  {

    return OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v7, v6, v3, v9, v4, a1);
  }
}

uint64_t OutlineColumnData.withSwappedColumns(at:and:)@<X0>(int64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v9 = v3[3];
  v8 = v3[4];
  if (a1 == a2 || ((v10 = *(v9 + 16), v10 > a1) ? (v11 = v10 <= a2) : (v11 = 1), v11))
  {
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = v9;
    *(a3 + 32) = v8;
  }

  else
  {
    v15 = v3[1];
    v16 = v3[3];

    specialized MutableCollection.swapAt(_:_:)(a1, a2);
    specialized MutableCollection.swapAt(_:_:)(a1, a2);

    return OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v16, v8, v5, v15, v7, a3);
  }
}

unint64_t specialized MutableCollection.swapAt(_:_:)(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v7 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v3;
      v8 = *(*v3 + 16);
      if (v8 > result)
      {
        v2 = a2;
        if (v8 > a2)
        {
          v9 = (v4 + 32 + 16 * a2);
          v5 = *v9;
          v6 = v9[1];
          v16 = *(v4 + 32 + 16 * result);
          outlined copy of ColumnType(*(v4 + 32 + 16 * result), *(&v16 + 1));
          outlined copy of ColumnType(v5, v6);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
LABEL_6:
        if (*(v4 + 16) <= v7)
        {
          __break(1u);
        }

        else
        {
          v10 = (v4 + 32 + 16 * v7);
          v11 = *v10;
          v12 = v10[1];
          *v10 = v5;
          v10[1] = v6;
          result = outlined consume of ColumnType(v11, v12);
          if (*(v4 + 16) > v2)
          {
            v13 = (v4 + 32 + 16 * v2);
            v14 = *v13;
            v15 = v13[1];
            *v13 = v16;
            result = outlined consume of ColumnType(v14, v15);
            *v3 = v4;
            return result;
          }
        }

        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

{
  if (result != a2)
  {
    v7 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v3;
      v8 = *(*v3 + 16);
      if (v8 > result)
      {
        v2 = a2;
        if (v8 > a2)
        {
          v5 = *(v4 + 32 + 8 * result);
          v6 = *(v4 + 32 + 8 * a2);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
LABEL_6:
            *(v4 + 32 + 8 * v7) = v6;
            *(v4 + 32 + 8 * v2) = v5;
            *v3 = v4;
            return result;
          }

LABEL_11:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          v4 = result;
          goto LABEL_6;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t OutlineColumnData.withUpdatedSizeAt(_:size:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *v3;
  v8 = *(v3 + 8);
  v7 = *(v3 + 16);
  v10 = *(v3 + 24);
  v9 = *(v3 + 32);
  if (*(v8 + 16) <= a1)
  {
LABEL_4:
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = v7;
    *(a2 + 24) = v10;
    *(a2 + 32) = v9;
  }

  if (a1 < 0)
  {
    __break(1u);
LABEL_13:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
    goto LABEL_8;
  }

  if (*(v8 + 8 * a1 + 32) == a3)
  {
    goto LABEL_4;
  }

  v3 = a1;
  v5 = a3;
  v4 = a2;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (*(v8 + 16) <= v3)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 8 * v3 + 32) = v5;

    return OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v10, v9, v6, v8, v7, v4);
  }

  return result;
}

uint64_t OutlineColumnData.withUpdatedDateFormatterAndSize(for:formatter:sizeIndex:size:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, int64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = *a1;
  v11 = a1[1];
  v22 = *v5;
  v12 = v5[1];
  v13 = v5[2];
  v15 = v5[3];
  v14 = v5[4];
  v16 = *(v13 + 16);

  if (v16)
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
    if ((v18 & 1) != 0 && *(*(v13 + 56) + result) == a2)
    {
      if (*(v12 + 16) <= a3)
      {
LABEL_7:

        *a4 = v22;
        *(a4 + 8) = v12;
        *(a4 + 16) = v13;
        *(a4 + 24) = v15;
        *(a4 + 32) = v14;
      }

      if (a3 < 0)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      if (*(v12 + 8 * a3 + 32) == a5)
      {
        goto LABEL_7;
      }
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, v10, v11, isUniquelyReferenced_nonNull_native);
  v20 = v13;
  v21 = *(v12 + 16);

  if (v21 > a3)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      v12 = result;
      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_13:
        if (*(v12 + 16) > a3)
        {
          *(v12 + 8 * a3 + 32) = a5;
          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:

  return OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v15, v14, v22, v12, v20, a4);
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables13LocationColor33_0BFB980FCBDEF78F05FB1DEEFECAD8EFLLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      if (*(v3 - 1) != *(v4 - 1))
      {
        break;
      }

      v5 = *v3;
      v6 = *v4;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
      v7 = v5;
      v8 = v6;
      v9 = static NSObject.== infix(_:_:)();

      if ((v9 & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables21DOCBrowserHistoryItemV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCBrowserHistoryItem(0) - 8;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        outlined init with copy of DOCBrowserHistoryItem(v15, v12);
        outlined init with copy of DOCBrowserHistoryItem(v16, v7);
        v18 = static UUID.== infix(_:_:)();
        outlined destroy of DOCBrowserHistoryItem(v7);
        outlined destroy of DOCBrowserHistoryItem(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo21CAMediaTimingFunctionC_Tt1g5Tm(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = type metadata accessor for NSMutableAttributedString(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x24C1FC540](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x24C1FC540](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = __CocoaSet.count.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = __CocoaSet.count.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(uint64_t result, uint64_t a2)
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
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      if (*v3 <= 3)
      {
        if (v6 > 1)
        {
          if (v6 == 2)
          {
            if (v8 != 2)
            {
              goto LABEL_45;
            }

            outlined consume of ColumnType(v5, 2uLL);
            v9 = v7;
            v10 = 2;
            goto LABEL_39;
          }

          if (v6 == 3)
          {
            if (v8 != 3)
            {
              goto LABEL_45;
            }

            outlined consume of ColumnType(v5, 3uLL);
            v9 = v7;
            v10 = 3;
            goto LABEL_39;
          }
        }

        else
        {
          if (!v6)
          {
            if (v8)
            {
              goto LABEL_45;
            }

            outlined consume of ColumnType(v5, 0);
            v9 = v7;
            v10 = 0;
            goto LABEL_39;
          }

          if (v6 == 1)
          {
            if (v8 != 1)
            {
              goto LABEL_45;
            }

            outlined consume of ColumnType(v5, 1uLL);
            v9 = v7;
            v10 = 1;
            goto LABEL_39;
          }
        }
      }

      else if (v6 <= 5)
      {
        if (v6 == 4)
        {
          if (v8 != 4)
          {
            goto LABEL_45;
          }

          outlined consume of ColumnType(v5, 4uLL);
          v9 = v7;
          v10 = 4;
          goto LABEL_39;
        }

        if (v6 == 5)
        {
          if (v8 != 5)
          {
            goto LABEL_45;
          }

          outlined consume of ColumnType(v5, 5uLL);
          v9 = v7;
          v10 = 5;
          goto LABEL_39;
        }
      }

      else
      {
        switch(v6)
        {
          case 6:
            if (v8 != 6)
            {
              goto LABEL_45;
            }

            outlined consume of ColumnType(v5, 6uLL);
            v9 = v7;
            v10 = 6;
            goto LABEL_39;
          case 7:
            if (v8 != 7)
            {
              goto LABEL_45;
            }

            outlined consume of ColumnType(v5, 7uLL);
            v9 = v7;
            v10 = 7;
            goto LABEL_39;
          case 8:
            if (v8 != 8)
            {
              goto LABEL_45;
            }

            outlined consume of ColumnType(v5, 8uLL);
            v9 = v7;
            v10 = 8;
            goto LABEL_39;
        }
      }

      if (v8 < 9)
      {
LABEL_45:
        v15 = *(v3 - 1);
        outlined copy of ColumnType(v5, *v3);
        outlined copy of ColumnType(v7, v8);
        outlined consume of ColumnType(v15, v6);
        outlined consume of ColumnType(v7, v8);
        return 0;
      }

      if (v5 == v7 && v6 == v8)
      {
        v11 = *(v3 - 1);
        outlined copy of ColumnType(v5, *v3);
        outlined copy of ColumnType(v11, v6);
        outlined consume of ColumnType(v11, v6);
        v9 = v11;
        v10 = v6;
LABEL_39:
        outlined consume of ColumnType(v9, v10);
        goto LABEL_40;
      }

      v12 = *(v3 - 1);
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of ColumnType(v12, v6);
      outlined copy of ColumnType(v7, v8);
      outlined consume of ColumnType(v12, v6);
      outlined consume of ColumnType(v7, v8);
      if ((v13 & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation9IndexPathV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v9, v10);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    v24 = 0;
    return v24 & 1;
  }

  if (!v14 || a1 == a2)
  {
    v24 = 1;
    return v24 & 1;
  }

  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v19 = *(v5 + 16);
  v18 = v5 + 16;
  v20 = (v18 - 8);
  v27 = *(v18 + 56);
  v28 = v19;
  while (1)
  {
    v21 = v28;
    result = (v28)(v13, v16, v4, v11);
    if (!v14)
    {
      break;
    }

    v23 = v18;
    v21(v8, v17, v4);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = *v20;
    (*v20)(v8, v4);
    v25(v13, v4);
    if (v24)
    {
      v17 += v27;
      v16 += v27;
      v26 = v14-- == 1;
      v18 = v23;
      if (!v26)
      {
        continue;
      }
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables26DOCItemCollectionRowColumnO_Tt1g5(uint64_t result, uint64_t a2)
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
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
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables14DOCSidebarItemO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = v3[1];
      v16 = *v3;
      v17[0] = v6;
      *(v17 + 9) = *(v3 + 25);
      v7 = v4[1];
      v14 = *v4;
      v15[0] = v7;
      *(v15 + 9) = *(v4 + 25);
      outlined init with copy of DOCSidebarItem(&v16, v13);
      outlined init with copy of DOCSidebarItem(&v14, v13);
      v8 = DOCSidebarItem.hashComparableValue.getter();
      v10 = v9;
      if (v8 == DOCSidebarItem.hashComparableValue.getter() && v10 == v11)
      {

        outlined destroy of DOCSidebarItem(&v14);
        outlined destroy of DOCSidebarItem(&v16);
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of DOCSidebarItem(&v14);
        outlined destroy of DOCSidebarItem(&v16);
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v4 += 3;
      v3 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables20DOCCollectionSectionV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 5)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables29DOCBrowserContainerControllerC_Tt1g5(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for DOCBrowserContainerController();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x24C1FC540](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x24C1FC540](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = __CocoaSet.count.getter();
  }

  result = __CocoaSet.count.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      outlined copy of ColumnType(v9, *(&v9 + 1));
      v10 = a1(&v12);
      outlined consume of ColumnType(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v13 = *v6;
      v8 = *(&v13 + 1);
      v9 = v13;
      outlined copy of DOCItemFileTypeGroupCategory(v13, *(&v13 + 1));
      v10 = a1(&v13);
      outlined consume of DOCItemFileTypeGroupCategory(v9, v8);
      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
      ++v6;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = (a3 + 88);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v17 = *v5;
      v18 = *(v5 - 56);
      v19 = v6;
      v20 = v7;
      v16 = v6;
      v21 = v8;
      v22 = v9;
      v23 = v10;
      v24 = v17;
      swift_unknownObjectRetain();
      outlined copy of DOCSidebarItem?(v6, v7, v8, v9, v10, v17);
      v11 = v25;
      v12 = a1(&v18);
      swift_unknownObjectRelease();
      outlined consume of DOCSidebarItem?(v16, v7, v8, v9, v10, v17);
      v25 = v11;
      if (v11)
      {
        break;
      }

      v13 = v4-- == 0;
      v5 += 64;
    }

    while (((v12 | v13) & 1) == 0);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

{
  return sub_2493C7850(a1, a2, a3) & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x24C1FC540](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = __CocoaSet.count.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

{
  return sub_2493C786C(a1, a2, a3) & 1;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMR, MEMORY[0x277D74AE0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCFileOperationVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCFileOperationVGMR, type metadata accessor for DOCFileOperation);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR, MEMORY[0x277CC9260]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexM0tGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexM0tGMR, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR, MEMORY[0x277CC9AF8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR, MEMORY[0x277D85578]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables6ColumnOGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables6ColumnOGMR, type metadata accessor for Column);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo7DOCNode_p4node_10Foundation9IndexPathV05indexH0tGMd, &_ss23_ContiguousArrayStorageCySo7DOCNode_p4node_10Foundation9IndexPathV05indexH0tGMR, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation3URLV_SStGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLV_SStGMR, &_s10Foundation3URLV_SStMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR, MEMORY[0x277CC9578]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCOperationItemOGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCOperationItemOGMR, type metadata accessor for DOCOperationItem);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCMultiNodeObserverC10Subscriber33_E535D8FE95141299AF62B2664D0DF15ELLVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCMultiNodeObserverC10Subscriber33_E535D8FE95141299AF62B2664D0DF15ELLVGMR, type metadata accessor for DOCMultiNodeObserver.Subscriber);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo7DOCNode_p4node_10Foundation3URLV3urltGMd, &_ss23_ContiguousArrayStorageCySo7DOCNode_p4node_10Foundation3URLV3urltGMR, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMR, type metadata accessor for DOCBrowserHistoryItem);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables12FINodeEntityVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables12FINodeEntityVGMR, type metadata accessor for FINodeEntity);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables12FINodeEntityVSgGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables12FINodeEntityVSgGMR, &_s26DocumentManagerExecutables12FINodeEntityVSgMd);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables26DOCItemCollectionRowColumnOGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables15DOCItemSortModeOGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables9USBFormatOGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables14DOCSidebarItemO17ContextMenuAction33_D63B287DBBDE5D5BECE3D243A69AB259LLOGMd);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyyycGMd, &_ss23_ContiguousArrayStorageCyyycGMR, &_syycMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables26DOCImmutableSidebarSection_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables26DOCImmutableSidebarSection_pGMR, &_s26DocumentManagerExecutables26DOCImmutableSidebarSection_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables14DOCSearchScope_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables14DOCSearchScope_pGMR, &_s26DocumentManagerExecutables14DOCSearchScope_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables11ViewSizable_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables11ViewSizable_pGMR, &_s26DocumentManagerExecutables11ViewSizable_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo10UIDragItemC_So7DOCNode_ptGMd, &_ss23_ContiguousArrayStorageCySo10UIDragItemC_So7DOCNode_ptGMR, &_sSo10UIDragItemC_So7DOCNode_ptMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo8FPActionaGMd, &_ss23_ContiguousArrayStorageCySo8FPActionaGMR, type metadata accessor for FPAction);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay26DocumentManagerExecutables11ViewSizable_pGGMd, &_ss23_ContiguousArrayStorageCySay26DocumentManagerExecutables11ViewSizable_pGGMR, &_sSay26DocumentManagerExecutables11ViewSizable_pGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables17DOCTextFieldToken_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables17DOCTextFieldToken_pGMR, &_s26DocumentManagerExecutables17DOCTextFieldToken_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd, &_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMR, type metadata accessor for DOCDocumentSourceIdentifier);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySo13UIMenuElementCGGMd, &_ss23_ContiguousArrayStorageCySaySo13UIMenuElementCGGMR, &_sSaySo13UIMenuElementCGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCGoToFolderCandidate_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCGoToFolderCandidate_pGMR, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay26DocumentManagerExecutables14DOCSidebarItemO17ContextMenuAction33_D63B287DBBDE5D5BECE3D243A69AB259LLOGGMd, &_ss23_ContiguousArrayStorageCySay26DocumentManagerExecutables14DOCSidebarItemO17ContextMenuAction33_D63B287DBBDE5D5BECE3D243A69AB259LLOGGMR, &_sSay26DocumentManagerExecutables14DOCSidebarItemO17ContextMenuAction33_D63B287DBBDE5D5BECE3D243A69AB259LLOGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyy26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBaseC15ThreadSafeState33_C73757633E7D839A94E1E3578A8DC4C3LLVzcGMd, &_ss23_ContiguousArrayStorageCyy26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBaseC15ThreadSafeState33_C73757633E7D839A94E1E3578A8DC4C3LLVzcGMR, &_syycMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables29DOCProgressProvidingOperation_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables29DOCProgressProvidingOperation_pGMR, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo14NSItemProviderC_So7DOCNode_ptGMd, &_ss23_ContiguousArrayStorageCySo14NSItemProviderC_So7DOCNode_ptGMR, &_sSo14NSItemProviderC_So7DOCNode_ptMd);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo7DOCNode_p_SitGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p_SitMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS5label_SS5valuetGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5label_SS5valuetMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXl6client_y26DocumentManagerExecutables45DOCProgressProvidingOperationCollectionSource_pc7handlertGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXl6client_yyc7handlertMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6FPItemC4item_Sd5scoretGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemC4item_Sd5scoretMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables15DOCHashableNodeC_SStGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCHashableNodeC_SStMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVyAC29DOCProgressProvidingOperation_pGSgGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, void (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        outlined copy of ColumnType(*v11, v13);
        specialized Set._Variant.remove(_:)(v12, v13, &v14);
        outlined consume of ColumnType(v12, v13);
        result = outlined consume of ColumnType?(v14, *(&v14 + 1));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        specialized Set._Variant.remove(_:)(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void specialized Set._subtract<A>(_:)(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
    lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type UITouch and conformance NSObject, &lazy cache variable for type metadata for UITouch);
    Set.Iterator.init(_cocoa:)();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
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

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      outlined consume of Set<UITouch>.Iterator._Variant();
      return;
    }

    while (1)
    {
      v16 = specialized Set._Variant.remove(_:)(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v83 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v65 = 0;
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = -1 << *(a1 + 32);
  v70 = ~v5;
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v8 = (63 - v5) >> 6;
  v76 = (a2 + 56);
  v10 = v78;
  v9 = v79;
  v11 = v80;
  v12 = v81;
  v13 = v82;

  v16 = 0;
  v75 = v2;
  v72 = v14;
  v73 = v4;
  for (i = v8; ; v8 = i)
  {
    if (v7)
    {
      v17 = v16;
    }

    else
    {
      v18 = v16;
      do
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_180;
        }

        if (v19 >= v8)
        {
          v78 = v10;
          v79 = v9;
          v80 = v11;
          v81 = v12;
          v82 = v13;
          goto LABEL_177;
        }

        v7 = *(v4 + 8 * v19);
        ++v18;
      }

      while (!v7);
      v17 = v19;
    }

    v20 = (*(v14 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v7)))));
    v9 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();
    v74 = v17;
    if (v21 <= 3)
    {
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v22 = 3;
        }

        else
        {
          v22 = 4;
        }

        goto LABEL_33;
      }

      if (!v21)
      {
        v22 = 0;
        goto LABEL_33;
      }

      if (v21 == 1)
      {
        v22 = 2;
        goto LABEL_33;
      }
    }

    else
    {
      if (v21 <= 5)
      {
        if (v21 == 4)
        {
          v22 = 5;
        }

        else
        {
          v22 = 6;
        }

        goto LABEL_33;
      }

      switch(v21)
      {
        case 6:
          v22 = 7;
          goto LABEL_33;
        case 7:
          v22 = 8;
          goto LABEL_33;
        case 8:
          v22 = 9;
LABEL_33:
          MEMORY[0x24C1FCBD0](v22);
          goto LABEL_34;
      }
    }

    MEMORY[0x24C1FCBD0](1);
    outlined copy of ColumnType(v9, v21);
    String.hash(into:)();
LABEL_34:
    v13 = (v7 - 1) & v7;
    v23 = Hasher._finalize()();
    v24 = -1 << *(v2 + 32);
    v11 = v23 & ~v24;
    v10 = v11 >> 6;
    v8 = 1 << v11;
    if (((1 << v11) & v76[v11 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    outlined consume of ColumnType(v9, v21);
    v11 = v70;
    v14 = v72;
    v4 = v73;
    v9 = v73;
    v10 = v72;
    v12 = v74;
    v16 = v74;
    v7 = v13;
  }

  v25 = ~v24;
  while (1)
  {
    v26 = (*(v2 + 48) + 16 * v11);
    v27 = *v26;
    v12 = v26[1];
    if (v12 <= 3)
    {
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          if (v21 == 2)
          {
            v78 = v72;
            v79 = v73;
            v80 = v70;
            v81 = v74;
            v82 = v13;
            v30 = v27;
            v4 = v72;
            v31 = 2;
            goto LABEL_88;
          }

          outlined copy of ColumnType(v9, v21);
          v12 = 2;
        }

        else
        {
          if (v21 == 3)
          {
            v78 = v72;
            v79 = v73;
            v80 = v70;
            v81 = v74;
            v82 = v13;
            v30 = v27;
            v4 = v72;
            v31 = 3;
            goto LABEL_88;
          }

          outlined copy of ColumnType(v9, v21);
          v12 = 3;
        }

        goto LABEL_66;
      }

      if (!v12)
      {
        if (!v21)
        {
          v78 = v72;
          v79 = v73;
          v80 = v70;
          v81 = v74;
          v82 = v13;
          v30 = v27;
          v4 = v72;
          v31 = 0;
          goto LABEL_88;
        }

        outlined copy of ColumnType(v9, v21);
        v12 = 0;
        goto LABEL_66;
      }

      if (v12 == 1)
      {
        if (v21 == 1)
        {
          v78 = v72;
          v79 = v73;
          v80 = v70;
          v81 = v74;
          v82 = v13;
          v30 = v27;
          v4 = v72;
          v31 = 1;
          goto LABEL_88;
        }

        outlined copy of ColumnType(v9, v21);
        v12 = 1;
        goto LABEL_66;
      }
    }

    else
    {
      if (v12 <= 5)
      {
        if (v12 == 4)
        {
          if (v21 == 4)
          {
            v78 = v72;
            v79 = v73;
            v80 = v70;
            v81 = v74;
            v82 = v13;
            v30 = v27;
            v4 = v72;
            v31 = 4;
            goto LABEL_88;
          }

          outlined copy of ColumnType(v9, v21);
          v12 = 4;
        }

        else
        {
          if (v21 == 5)
          {
            v78 = v72;
            v79 = v73;
            v80 = v70;
            v81 = v74;
            v82 = v13;
            v30 = v27;
            v4 = v72;
            v31 = 5;
            goto LABEL_88;
          }

          outlined copy of ColumnType(v9, v21);
          v12 = 5;
        }

        goto LABEL_66;
      }

      switch(v12)
      {
        case 6:
          if (v21 == 6)
          {
            v78 = v72;
            v79 = v73;
            v80 = v70;
            v81 = v74;
            v82 = v13;
            v30 = v27;
            v4 = v72;
            v31 = 6;
            goto LABEL_88;
          }

          outlined copy of ColumnType(v9, v21);
          v12 = 6;
          goto LABEL_66;
        case 7:
          if (v21 == 7)
          {
            v78 = v72;
            v79 = v73;
            v80 = v70;
            v81 = v74;
            v82 = v13;
            v30 = v27;
            v4 = v72;
            v31 = 7;
            goto LABEL_88;
          }

          outlined copy of ColumnType(v9, v21);
          v12 = 7;
          goto LABEL_66;
        case 8:
          if (v21 == 8)
          {
            v78 = v72;
            v79 = v73;
            v80 = v70;
            v81 = v74;
            v82 = v13;
            v30 = v27;
            v4 = v72;
            v31 = 8;
            goto LABEL_88;
          }

          outlined copy of ColumnType(v9, v21);
          v12 = 8;
          goto LABEL_66;
      }
    }

    if (v21 < 9)
    {
      outlined copy of ColumnType(v9, v21);
      outlined copy of ColumnType(v27, v12);
LABEL_66:
      outlined consume of ColumnType(v27, v12);
      outlined consume of ColumnType(v9, v21);
      goto LABEL_67;
    }

    v28 = v27 == v9 && v12 == v21;
    if (v28)
    {
      break;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of ColumnType(v9, v21);
    outlined copy of ColumnType(v27, v12);
    outlined consume of ColumnType(v27, v12);
    outlined consume of ColumnType(v9, v21);
    if (v29)
    {
      v4 = v72;
      v78 = v72;
      v79 = v73;
      v2 = v75;
      v80 = v70;
      v81 = v74;
      v82 = v13;
      goto LABEL_89;
    }

LABEL_67:
    v11 = (v11 + 1) & v25;
    v10 = v11 >> 6;
    v2 = v75;
    v8 = 1 << v11;
    if ((v76[v11 >> 6] & (1 << v11)) == 0)
    {
      goto LABEL_6;
    }
  }

  v4 = v72;
  v78 = v72;
  v79 = v73;
  v80 = v70;
  v81 = v74;
  v82 = v13;

  v30 = v9;
  v31 = v21;
LABEL_88:
  outlined consume of ColumnType(v30, v31);
LABEL_89:
  v32 = outlined consume of ColumnType(v9, v21);
  v34 = *(v2 + 32);
  v66 = ((1 << v34) + 63) >> 6;
  v15 = 8 * v66;
  if ((v34 & 0x3Fu) > 0xD)
  {
    goto LABEL_181;
  }

  while (2)
  {
    v67 = &v64;
    MEMORY[0x28223BE20](v32, v33);
    v36 = &v64 - ((v35 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v36, v76, v35);
    v37 = *&v36[8 * v10] & ~v8;
    v38 = *(v2 + 16);
    v69 = v36;
    *&v36[8 * v10] = v37;
    v39 = v38 - 1;
    v40 = v73;
    v10 = v74;
    v41 = i;
LABEL_91:
    v68 = v39;
LABEL_93:
    while (2)
    {
      if (v13)
      {
LABEL_99:
        v44 = (*(v4 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v13)))));
        v9 = *v44;
        v45 = v44[1];
        Hasher.init(_seed:)();
        v74 = v10;
        if (v45 <= 3)
        {
          if (v45 > 1)
          {
            v11 = v77;
            if (v45 == 2)
            {
              v46 = 3;
            }

            else
            {
              v46 = 4;
            }

            goto LABEL_118;
          }

          if (!v45)
          {
            v11 = v77;
            v46 = 0;
            goto LABEL_118;
          }

          if (v45 == 1)
          {
            v11 = v77;
            v46 = 2;
            goto LABEL_118;
          }
        }

        else
        {
          if (v45 <= 5)
          {
            v11 = v77;
            if (v45 == 4)
            {
              v46 = 5;
            }

            else
            {
              v46 = 6;
            }

            goto LABEL_118;
          }

          switch(v45)
          {
            case 6:
              v11 = v77;
              v46 = 7;
              goto LABEL_118;
            case 7:
              v11 = v77;
              v46 = 8;
              goto LABEL_118;
            case 8:
              v11 = v77;
              v46 = 9;
LABEL_118:
              MEMORY[0x24C1FCBD0](v46);
LABEL_119:
              v13 &= v13 - 1;
              v47 = Hasher._finalize()();
              v48 = -1 << *(v2 + 32);
              v49 = v47 & ~v48;
              v8 = v49 >> 6;
              v50 = 1 << v49;
              if (((1 << v49) & v76[v49 >> 6]) == 0)
              {
LABEL_92:
                outlined consume of ColumnType(v9, v45);
                v4 = v72;
                v40 = v73;
                v10 = v74;
                v41 = i;
                continue;
              }

              v51 = ~v48;
              while (1)
              {
                v52 = (*(v2 + 48) + 16 * v49);
                v11 = *v52;
                v12 = v52[1];
                if (v12 <= 3)
                {
                  if (v12 > 1)
                  {
                    if (v12 == 2)
                    {
                      if (v45 == 2)
                      {
                        v57 = *v52;
                        v58 = 2;
                        goto LABEL_171;
                      }

                      outlined copy of ColumnType(v9, v45);
                      v53 = 2;
                    }

                    else
                    {
                      if (v45 == 3)
                      {
                        v57 = *v52;
                        v58 = 3;
                        goto LABEL_171;
                      }

                      outlined copy of ColumnType(v9, v45);
                      v53 = 3;
                    }

                    goto LABEL_151;
                  }

                  if (!v12)
                  {
                    if (!v45)
                    {
                      v57 = *v52;
                      v58 = 0;
                      goto LABEL_171;
                    }

                    outlined copy of ColumnType(v9, v45);
                    v53 = 0;
                    goto LABEL_151;
                  }

                  if (v12 == 1)
                  {
                    if (v45 == 1)
                    {
                      v57 = *v52;
                      v58 = 1;
                      goto LABEL_171;
                    }

                    outlined copy of ColumnType(v9, v45);
                    v53 = 1;
                    goto LABEL_151;
                  }
                }

                else
                {
                  if (v12 <= 5)
                  {
                    if (v12 == 4)
                    {
                      if (v45 == 4)
                      {
                        v57 = *v52;
                        v58 = 4;
                        goto LABEL_171;
                      }

                      outlined copy of ColumnType(v9, v45);
                      v53 = 4;
                    }

                    else
                    {
                      if (v45 == 5)
                      {
                        v57 = *v52;
                        v58 = 5;
                        goto LABEL_171;
                      }

                      outlined copy of ColumnType(v9, v45);
                      v53 = 5;
                    }

                    goto LABEL_151;
                  }

                  switch(v12)
                  {
                    case 6:
                      if (v45 == 6)
                      {
                        v57 = *v52;
                        v58 = 6;
                        goto LABEL_171;
                      }

                      outlined copy of ColumnType(v9, v45);
                      v53 = 6;
                      goto LABEL_151;
                    case 7:
                      if (v45 == 7)
                      {
                        v57 = *v52;
                        v58 = 7;
                        goto LABEL_171;
                      }

                      outlined copy of ColumnType(v9, v45);
                      v53 = 7;
                      goto LABEL_151;
                    case 8:
                      if (v45 == 8)
                      {
                        v57 = *v52;
                        v58 = 8;
                        goto LABEL_171;
                      }

                      outlined copy of ColumnType(v9, v45);
                      v53 = 8;
                      goto LABEL_151;
                  }
                }

                if (v45 < 9)
                {
                  outlined copy of ColumnType(v9, v45);
                  outlined copy of ColumnType(v11, v12);
                  v53 = v12;
LABEL_151:
                  outlined consume of ColumnType(v11, v53);
                  outlined consume of ColumnType(v9, v45);
                  goto LABEL_152;
                }

                if (v11 == v9 && v12 == v45)
                {

                  v57 = v9;
                  v58 = v45;
LABEL_171:
                  outlined consume of ColumnType(v57, v58);
LABEL_172:
                  outlined consume of ColumnType(v9, v45);
                  v59 = v69[v8];
                  v69[v8] = v59 & ~v50;
                  v28 = (v59 & v50) == 0;
                  v4 = v72;
                  v40 = v73;
                  v10 = v74;
                  v41 = i;
                  if (!v28)
                  {
                    v39 = v68 - 1;
                    if (__OFSUB__(v68, 1))
                    {
                      __break(1u);
                    }

                    if (v68 == 1)
                    {

                      v2 = MEMORY[0x277D84FA0];
                      goto LABEL_177;
                    }

                    goto LABEL_91;
                  }

                  goto LABEL_93;
                }

                v55 = v52[1];
                v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
                outlined copy of ColumnType(v9, v45);
                outlined copy of ColumnType(v11, v55);
                v56 = v55;
                v2 = v75;
                outlined consume of ColumnType(v11, v56);
                outlined consume of ColumnType(v9, v45);
                if (v12)
                {
                  goto LABEL_172;
                }

LABEL_152:
                v49 = (v49 + 1) & v51;
                v8 = v49 >> 6;
                v50 = 1 << v49;
                if ((v76[v49 >> 6] & (1 << v49)) == 0)
                {
                  goto LABEL_92;
                }
              }
          }
        }

        v11 = v77;
        MEMORY[0x24C1FCBD0](1);
        outlined copy of ColumnType(v9, v45);
        String.hash(into:)();
        goto LABEL_119;
      }

      break;
    }

    v42 = v10;
    while (1)
    {
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v43 >= v41)
      {
        v2 = specialized _NativeSet.extractSubset(using:count:)(v69, v66, v68, v2);
        goto LABEL_177;
      }

      v13 = *(v40 + 8 * v43);
      ++v42;
      if (v13)
      {
        v10 = v43;
        goto LABEL_99;
      }
    }

    __break(1u);
LABEL_180:
    v78 = v10;
    v79 = v9;
    v80 = v11;
    v81 = v12;
    v82 = v13;
    __break(1u);
LABEL_181:
    v9 = v15;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v61 = swift_slowAlloc();
  memcpy(v61, v76, v9);
  v62 = v65;
  v63 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v61, v66, v2, v11, &v78);

  if (v62)
  {

    result = MEMORY[0x24C1FE850](v61, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C1FE850](v61, -1, -1);
    v70 = v80;
    v2 = v63;
LABEL_177:
    outlined consume of Set<UITouch>.Iterator._Variant();
    return v2;
  }

  return result;
}

{
  v5 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v30 = *(v5 + 32);
  v55 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v55;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x28223BE20](v28, v29);
    v2 = &v54 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v57 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v27;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = specialized _NativeSet.extractSubset(using:count:)(v59, v55, v57, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v27 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v61 = v27;
            v40 = (v39 + ((v27 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v42 = Hasher._finalize()();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v41 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v41 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v35 = v59[v2];
          v59[v2] = v35 & ~v44;
          v26 = (v35 & v44) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v50 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v50);
  v52 = v54;
  v53 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v51, v55, v5, v2, v63);

  if (!v52)
  {

    MEMORY[0x24C1FE850](v51, -1, -1);
    v58 = v64;
    v5 = v53;
LABEL_52:
    outlined consume of Set<UITouch>.Iterator._Variant();
    return v5;
  }

  result = MEMORY[0x24C1FE850](v51, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v33 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v34 = a5;
  v35 = a3 + 56;
LABEL_2:
  v32 = v6;
LABEL_4:
  while (2)
  {
    v7 = a5[3];
    v8 = a5[4];
    if (v8)
    {
      v9 = a5[3];
LABEL_10:
      v12 = (*(*a5 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v8)))));
      v13 = *v12;
      v14 = v12[1];
      a5[3] = v9;
      a5[4] = (v8 - 1) & v8;
      Hasher.init(_seed:)();
      if (v14 <= 3)
      {
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            v15 = 3;
          }

          else
          {
            v15 = 4;
          }

          goto LABEL_29;
        }

        if (!v14)
        {
          v15 = 0;
          goto LABEL_29;
        }

        if (v14 == 1)
        {
          v15 = 2;
          goto LABEL_29;
        }
      }

      else
      {
        if (v14 <= 5)
        {
          if (v14 == 4)
          {
            v15 = 5;
          }

          else
          {
            v15 = 6;
          }

          goto LABEL_29;
        }

        switch(v14)
        {
          case 6:
            v15 = 7;
            goto LABEL_29;
          case 7:
            v15 = 8;
            goto LABEL_29;
          case 8:
            v15 = 9;
LABEL_29:
            MEMORY[0x24C1FCBD0](v15);
LABEL_30:
            v16 = Hasher._finalize()();
            v17 = -1 << *(a3 + 32);
            v18 = v16 & ~v17;
            v19 = v18 >> 6;
            v20 = 1 << v18;
            if (((1 << v18) & *(v35 + 8 * (v18 >> 6))) == 0)
            {
LABEL_3:
              result = outlined consume of ColumnType(v13, v14);
              a5 = v34;
              continue;
            }

            v21 = ~v17;
            while (1)
            {
              v22 = (*(a3 + 48) + 16 * v18);
              v24 = *v22;
              v23 = v22[1];
              if (v23 <= 3)
              {
                if (v23 > 1)
                {
                  if (v23 == 2)
                  {
                    if (v14 == 2)
                    {
                      v27 = *v22;
                      v28 = 2;
                      goto LABEL_82;
                    }

                    outlined copy of ColumnType(v13, v14);
                    v23 = 2;
                  }

                  else
                  {
                    if (v14 == 3)
                    {
                      v27 = *v22;
                      v28 = 3;
                      goto LABEL_82;
                    }

                    outlined copy of ColumnType(v13, v14);
                    v23 = 3;
                  }

                  goto LABEL_62;
                }

                if (!v23)
                {
                  if (!v14)
                  {
                    v27 = *v22;
                    v28 = 0;
                    goto LABEL_82;
                  }

                  outlined copy of ColumnType(v13, v14);
                  v23 = 0;
                  goto LABEL_62;
                }

                if (v23 == 1)
                {
                  if (v14 == 1)
                  {
                    v27 = *v22;
                    v28 = 1;
                    goto LABEL_82;
                  }

                  outlined copy of ColumnType(v13, v14);
                  v23 = 1;
                  goto LABEL_62;
                }
              }

              else
              {
                if (v23 <= 5)
                {
                  if (v23 == 4)
                  {
                    if (v14 == 4)
                    {
                      v27 = *v22;
                      v28 = 4;
                      goto LABEL_82;
                    }

                    outlined copy of ColumnType(v13, v14);
                    v23 = 4;
                  }

                  else
                  {
                    if (v14 == 5)
                    {
                      v27 = *v22;
                      v28 = 5;
                      goto LABEL_82;
                    }

                    outlined copy of ColumnType(v13, v14);
                    v23 = 5;
                  }

                  goto LABEL_62;
                }

                switch(v23)
                {
                  case 6:
                    if (v14 == 6)
                    {
                      v27 = *v22;
                      v28 = 6;
                      goto LABEL_82;
                    }

                    outlined copy of ColumnType(v13, v14);
                    v23 = 6;
                    goto LABEL_62;
                  case 7:
                    if (v14 == 7)
                    {
                      v27 = *v22;
                      v28 = 7;
                      goto LABEL_82;
                    }

                    outlined copy of ColumnType(v13, v14);
                    v23 = 7;
                    goto LABEL_62;
                  case 8:
                    if (v14 == 8)
                    {
                      v27 = *v22;
                      v28 = 8;
                      goto LABEL_82;
                    }

                    outlined copy of ColumnType(v13, v14);
                    v23 = 8;
                    goto LABEL_62;
                }
              }

              if (v14 < 9)
              {
                outlined copy of ColumnType(v13, v14);
                outlined copy of ColumnType(v24, v23);
LABEL_62:
                outlined consume of ColumnType(v24, v23);
                outlined consume of ColumnType(v13, v14);
                goto LABEL_63;
              }

              if (v24 == v13 && v23 == v14)
              {

                v27 = v13;
                v28 = v14;
LABEL_82:
                outlined consume of ColumnType(v27, v28);
LABEL_83:
                result = outlined consume of ColumnType(v13, v14);
                a5 = v34;
                v29 = v33[v19];
                v33[v19] = v29 & ~v20;
                if ((v29 & v20) != 0)
                {
                  v6 = v32 - 1;
                  if (__OFSUB__(v32, 1))
                  {
LABEL_92:
                    __break(1u);
                    return result;
                  }

                  if (v32 == 1)
                  {
                    return MEMORY[0x277D84FA0];
                  }

                  goto LABEL_2;
                }

                goto LABEL_4;
              }

              v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
              outlined copy of ColumnType(v13, v14);
              outlined copy of ColumnType(v24, v23);
              outlined consume of ColumnType(v24, v23);
              outlined consume of ColumnType(v13, v14);
              if (v26)
              {
                goto LABEL_83;
              }

LABEL_63:
              v18 = (v18 + 1) & v21;
              v19 = v18 >> 6;
              v20 = 1 << v18;
              if ((*(v35 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
              {
                goto LABEL_3;
              }
            }
        }
      }

      MEMORY[0x24C1FCBD0](1);
      outlined copy of ColumnType(v13, v14);
      String.hash(into:)();
      goto LABEL_30;
    }

    break;
  }

  v10 = (a5[2] + 64) >> 6;
  v11 = a5[3];
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_92;
    }

    if (v9 >= v10)
    {
      break;
    }

    v8 = *(a5[1] + 8 * v9);
    ++v11;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  if (v10 <= v7 + 1)
  {
    v30 = v7 + 1;
  }

  else
  {
    v30 = (a5[2] + 64) >> 6;
  }

  a5[3] = v30 - 1;
  a5[4] = 0;

  return specialized _NativeSet.extractSubset(using:count:)(v33, a2, v32, a3);
}

{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return specialized _NativeSet.extractSubset(using:count:)(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables15DOCItemSortModeOGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCySaySiGGMd, &_ss23_ContiguousArrayStorageCySaySiGGMR, &_sSaySiGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables26DOCImmutableSidebarSection_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables26DOCImmutableSidebarSection_pGMR, &_s26DocumentManagerExecutables26DOCImmutableSidebarSection_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables11ViewSizable_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables11ViewSizable_pGMR, &_s26DocumentManagerExecutables11ViewSizable_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables17DOCTextFieldToken_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables17DOCTextFieldToken_pGMR, &_s26DocumentManagerExecutables17DOCTextFieldToken_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCGoToFolderCandidate_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCGoToFolderCandidate_pGMR, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables29DOCProgressProvidingOperation_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables29DOCProgressProvidingOperation_pGMR, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pMd);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMR, type metadata accessor for DOCBrowserHistoryItem);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCFileOperationVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCFileOperationVGMR, type metadata accessor for DOCFileOperation);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(__int128 *a1, __int128 *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return specialized static ColumnType.== infix(_:_:)(&v5, &v4) & 1;
}

uint64_t specialized static OutlineColumnData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  v5 = a2[3];
  v4 = a2[4];
  v6 = a2[2];
  v7 = a1[2];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(a1[1], a2[1]) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ26DocumentManagerExecutables10ColumnTypeO_AC10FormattersOTt1g5(v7, v6) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v3, v5) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v2, v4);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC26DocumentManagerExecutables10ColumnTypeO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type ColumnType and conformance ColumnType();
  result = MEMORY[0x24C1FB4D0](v2, &type metadata for ColumnType, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      outlined copy of ColumnType(v7, *v5);
      specialized Set._Variant.insert(_:)(v8, v7, v6);
      outlined consume of ColumnType(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

void specialized static OutlineColumnData.userDefault()()
{
  v0 = static OutlineColumnData.userDefaultsCache;
  if (static OutlineColumnData.userDefaultsCache)
  {
    goto LABEL_4;
  }

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x24C1FAD20](v1, v3);

  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = static OutlineColumnData.userDefaultsCache;
    static OutlineColumnData.userDefaultsCache = v6;
    v6;

    v0 = 0;
LABEL_4:
    v8 = v0;
    return;
  }

  __break(1u);
}

_OWORD *specialized static OutlineColumnData.fetchVisibleColumnTypes(defaultSortMode:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for cachedVisibleColumns != -1)
  {
    swift_once();
  }

  v2 = static OutlineColumnData.cachedVisibleColumns;
  if (*(static OutlineColumnData.cachedVisibleColumns + 2))
  {
  }

  else
  {
    specialized static OutlineColumnData.userDefault()();
    v4 = v3;
    v5 = MEMORY[0x24C1FAD20](0xD00000000000001ALL, 0x8000000249BC85F0);
    v6 = [v4 dataForKey_];

    if (v6)
    {
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      outlined copy of Data._Representation(v7, v9);
      PropertyListDecoder.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables10ColumnTypeOGMd);
      lazy protocol witness table accessor for type [ColumnType] and conformance <A> [A](&lazy protocol witness table cache variable for type [ColumnType] and conformance <A> [A], lazy protocol witness table accessor for type ColumnType and conformance ColumnType);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      v2 = v12;
      if (v12[2])
      {
        static OutlineColumnData.cachedVisibleColumns = v12;

        outlined consume of Data._Representation(v7, v9);
        outlined consume of Data._Representation(v7, v9);
        return v2;
      }

      outlined consume of Data._Representation(v7, v9);
    }

    else
    {
      v7 = 0;
      v9 = 0xF000000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
    v2 = swift_allocObject();
    v2[1] = xmmword_249B9FA70;
    *(v2 + 4) = 0;
    *(v2 + 5) = 0;
    *(v2 + 6) = 0;
    *(v2 + 7) = 1;
    if (v1 <= 9 && ((0x23Du >> v1) & 1) != 0)
    {
      v10 = qword_249BA0240[v1];
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, v2, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
      *(v2 + 2) = 3;
      *(v2 + 8) = 0;
      *(v2 + 9) = v10;
    }

    static OutlineColumnData.cachedVisibleColumns = v2;

    outlined consume of Data?(v7, v9);
  }

  return v2;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(__int128 *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *a1;
  v4 = **(v1 + 16);
  v5 = v2;
  return specialized static ColumnType.== infix(_:_:)(&v5, &v4) & 1;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
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

uint64_t outlined init with copy of DOCBrowserHistoryItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCBrowserHistoryItem(uint64_t a1)
{
  v2 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs11AnyHashableV_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C1FB4D0](v2, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      outlined init with copy of AnyHashable(v4, v5);
      specialized Set._Variant.insert(_:)(v6, v5);
      outlined destroy of AnyHashable(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for DOCDocumentSourceIdentifier(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DOCDocumentSourceIdentifier and conformance DOCDocumentSourceIdentifier, type metadata accessor for DOCDocumentSourceIdentifier);
  result = MEMORY[0x24C1FB4D0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory();
  result = MEMORY[0x24C1FB4D0](v2, &type metadata for DOCItemFileTypeGroupCategory, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      outlined copy of DOCItemFileTypeGroupCategory(v7, *v5);
      specialized Set._Variant.insert(_:)(v8, v7, v6);
      outlined consume of DOCItemFileTypeGroupCategory(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8FPActiona_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for FPAction(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
  result = MEMORY[0x24C1FB4D0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo12FPProviderIDa_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for FPProviderID(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type FPProviderID and conformance FPProviderID, type metadata accessor for FPProviderID);
  result = MEMORY[0x24C1FB4D0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C1FB4D0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo11PermissionsV_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Permissions(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Permissions and conformance Permissions, type metadata accessor for Permissions);
  result = MEMORY[0x24C1FB4D0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17DesktopServicesUI20DSLightweightTagInfoC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for DSLightweightTagInfo();
  v5 = lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo();
  result = MEMORY[0x24C1FB4D0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC26DocumentManagerExecutables27DOCIdentityHashableLocationV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation();
  result = MEMORY[0x24C1FB4D0](v2, &type metadata for DOCIdentityHashableLocation, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      outlined init with copy of DOCIdentityHashableLocation(v5, v6);
      specialized Set._Variant.insert(_:)(v7, v6);
      outlined destroy of DOCIdentityHashableLocation(v7);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC26DocumentManagerExecutables21DOCSidebarSectionKindO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind();
  result = MEMORY[0x24C1FB4D0](v2, &type metadata for DOCSidebarSectionKind, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20UICollectionViewCellC_SayAEGTt0g5Tf4g_nTm(unint64_t a1, unint64_t *j, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v11 = type metadata accessor for NSMutableAttributedString(0, j);
    v12 = lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(a4, j);
    result = MEMORY[0x24C1FB4D0](i, v11, v12);
    v17 = result;
    if (v9)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; j = (j + 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C1FC540](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a4 = &v17;
      a5(&v16, v15);

      if (v9 == v14)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v14 = __CocoaSet.count.getter();
  result = a4;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSMutableAttributedString(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  if (a5 >> 1 != a4)
  {
    if (a4 <= v6)
    {
      v8 = a5 >> 1;
    }

    else
    {
      v8 = a4;
    }

    v9 = v8 - a4;
    v10 = (a3 + 8 * a4);
    v11 = ~a4 + v6;
    while (v9)
    {
      v15 = *v10;
      v12 = v15;
      v13 = a1(&v15);

      if (!v5)
      {
        v14 = v11 != 0;
        --v9;
        ++v10;
        --v11;
        if (v14 & ~v13)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory()
{
  result = lazy protocol witness table cache variable for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory;
  if (!lazy protocol witness table cache variable for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory;
  if (!lazy protocol witness table cache variable for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind()
{
  result = lazy protocol witness table cache variable for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind;
  if (!lazy protocol witness table cache variable for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind;
  if (!lazy protocol witness table cache variable for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo()
{
  result = lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo;
  if (!lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo)
  {
    type metadata accessor for DSLightweightTagInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation()
{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation);
  }

  return result;
}

id outlined copy of DOCSidebarItem?(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return outlined copy of DOCSidebarItem(result, a2, a3, a4, a5, a6);
  }

  return result;
}

id outlined copy of DOCSidebarItem(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 2u)
  {
    if (a6 == 3)
    {
      v6 = result;
LABEL_10:
    }

    if (a6 != 4)
    {
      if (a6 != 5)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  return result;
}

void outlined consume of DOCSidebarItem?(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    outlined consume of DOCSidebarItem(a1, a2, a3, a4, a5, a6);
  }
}

void outlined consume of DOCSidebarItem(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 2u)
  {
    if (a6 == 3)
    {

LABEL_10:

      return;
    }

    if (a6 != 4)
    {
      if (a6 != 5)
      {
        return;
      }

      goto LABEL_10;
    }
  }
}

uint64_t outlined consume of ColumnType?(uint64_t a1, unint64_t a2)
{
  if (a2 != 9)
  {
    return outlined consume of ColumnType(a1, a2);
  }

  return a1;
}

uint64_t lazy protocol witness table accessor for type [ColumnType] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables10ColumnTypeOGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
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

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(__int128 *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say26DocumentManagerExecutables10ColumnTypeOG_TG5TA_0(a1) & 1;
}

NSString *one-time initialization function for DOCNotificationDidUpdateSmartFolders()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC88A0);
  DOCNotificationDidUpdateSmartFolders = result;
  return result;
}

NSNotificationName DOCNotificationDidUpdateSmartFolders.getter()
{
  if (one-time initialization token for DOCNotificationDidUpdateSmartFolders != -1)
  {
    swift_once();
  }

  v1 = DOCNotificationDidUpdateSmartFolders;

  return v1;
}

uint64_t DOCSmartFolderInputFile.filename.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DOCSmartFolderInputFile.filetype.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DOCSmartFolderInputFile() + 20);
  v4 = type metadata accessor for UTType();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DOCSmartFolderInputFile()
{
  result = type metadata singleton initialization cache for DOCSmartFolderInputFile;
  if (!type metadata singleton initialization cache for DOCSmartFolderInputFile)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DOCSmartFolderInputFile.dateSaved.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DOCSmartFolderInputFile() + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DOCSmartFolderInputFile.init(filename:filetype:dateSaved:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for DOCSmartFolderInputFile();
  v9 = *(v8 + 20);
  v10 = type metadata accessor for UTType();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  v11 = *(v8 + 24);
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v11], a4, v12);
}

void *DOCSmartFolderManager.currentUserActivity.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_currentUserActivity;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSmartFolderManager.currentUserActivity.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_currentUserActivity;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCSmartFolderManager.defaultSaveLocationItemId.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_defaultSaveLocationItemId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSmartFolderManager.defaultSaveLocationItemId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_defaultSaveLocationItemId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id one-time initialization function for sharedManager()
{
  v0 = type metadata accessor for DOCSmartFolderManager();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_currentUserActivity] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_defaultSaveLocationItemId] = 0;
  v2 = [objc_allocWithZone(MEMORY[0x277D05F00]) init];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database] = v2;
  v3 = v2;
  [v3 open];

  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_init);
  static DOCSmartFolderManager.sharedManager = result;
  return result;
}

id DOCSmartFolderManager.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized DOCSmartFolderManager.init(_:)(a1);

  return v4;
}

id static DOCSmartFolderManager.sharedManager.getter()
{
  if (one-time initialization token for sharedManager != -1)
  {
    swift_once();
  }

  v1 = static DOCSmartFolderManager.sharedManager;

  return v1;
}

id DOCSmartFolderManager.init(_:)(void *a1)
{
  v2 = specialized DOCSmartFolderManager.init(_:)(a1);

  return v2;
}

id DOCSmartFolderManager.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database] close];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSmartFolderManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DOCSmartFolderManager.refreshSmartFolders()()
{
  v0 = type metadata accessor for Notification();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for DOCNotificationDidUpdateSmartFolders != -1)
  {
    swift_once();
  }

  memset(v8, 0, sizeof(v8));
  v6 = DOCNotificationDidUpdateSmartFolders;
  Notification.init(name:object:userInfo:)();
  isa = Notification._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 postNotification_];
}

void DOCSmartFolderManager.register(savedFile:in:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DOCSmartFolderInputFile();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = [a2 providerDomainID];
  v11 = DOCProviderDomainIDIsRemovable();

  if ((v11 & 1) == 0)
  {
    v12 = *a1;
    v13 = a1[1];
    v32 = v3;
    v14 = objc_allocWithZone(MEMORY[0x277D05F08]);
    v31 = v7;
    v15 = MEMORY[0x24C1FAD20](v12, v13);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v33 = [v14 initWithFolder:a2 type:0 value:v15 lastUsedDate:isa frecency:1.0];

    v17 = UTType.identifier.getter();
    v19 = v18;
    v20 = objc_allocWithZone(MEMORY[0x277D05F08]);
    v21 = MEMORY[0x24C1FAD20](v17, v19);

    v22 = Date._bridgeToObjectiveC()().super.isa;
    v23 = a2;
    v24 = [v20 initWithFolder:a2 type:1 value:v21 lastUsedDate:v22 frecency:1.0];

    v25 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database);
    outlined init with copy of DOCSmartFolderInputFile(a1, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v27 = swift_allocObject();
    outlined init with take of DOCSmartFolderInputFile(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    aBlock[4] = partial apply for closure #1 in DOCSmartFolderManager.register(savedFile:in:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCSmartFolderHit) -> (@unowned Double);
    aBlock[3] = &block_descriptor_0;
    v28 = _Block_copy(aBlock);

    v29 = v33;
    [v25 registerFilenameHit:v33 fileTypeHit:v24 smartScoreBlock:v28];
    _Block_release(v28);
    (*((*MEMORY[0x277D85000] & *v3) + 0xA0))();
    _s26DocumentManagerExecutables25DOCUserActivityControllerC011publishUserE03for15activityHostingySo6FPItemC_AA0deK0_ptFZTf4nen_nAA014DOCSmartFolderB0C_Tt1g5(v23);
  }
}

uint64_t closure #1 in DOCSmartFolderManager.register(savedFile:in:)(void *a1)
{
  v1 = [a1 value];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (String.count.getter() <= 3)
  {
  }

  v5 = specialized Collection.prefix(_:)(4);
  v7 = v6;

  LOBYTE(v5) = specialized Sequence<>.starts<A>(with:)(v5, v7);

  if ((v5 & 1) == 0)
  {
  }

  v8._countAndFlagsBits = v2;
  v8._object = v4;
  String.doc_editDistance(from:)(v8);
  String.count.getter();
  String.count.getter();
}

double thunk for @escaping @callee_guaranteed (@guaranteed DOCSmartFolderHit) -> (@unowned Double)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void DOCSmartFolderManager.suggestions(for:configuration:managedPermission:)(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = type metadata accessor for Date();
  v8 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v9);
  v56 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = DOCSmartFolderLogHandle();
  static os_log_type_t.debug.getter();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v12 = swift_allocObject();
  v53 = xmmword_249B9FA70;
  *(v12 + 16) = xmmword_249B9FA70;
  v13 = *a1;
  v14 = a1[1];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v52 = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 64) = v52;
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  type metadata accessor for DOCSmartFolderInputFile();

  v58 = a1;
  isa = UTType._bridgeToObjectiveC()().super.isa;
  *(v12 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UTType);
  *(v12 + 104) = lazy protocol witness table accessor for type UTType and conformance NSObject();
  *(v12 + 72) = isa;
  os_log(_:dso:log:type:_:)();

  v16 = [*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database) previousHits];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCSmartFolderHit);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = specialized DOCSmartFolderManager.group(_:configuration:managedPermission:)(v17, a2, a3);

  v50 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v22 = (v19 + 63) >> 6;
  v55 = (v8 + 8);
  v59 = v18;

  v23 = 0;
  v49 = 0;
  v24 = 0.0;
  v51 = v22;
  while (v21)
  {
LABEL_12:
    v27 = (v23 << 9) | (8 * __clz(__rbit64(v21)));
    v28 = *(*(v59 + 56) + v27);
    v29 = *(*(v59 + 48) + v27);

    v30 = v56;
    v31 = Date.init()();
    MEMORY[0x28223BE20](v31, v32);
    *(&v49 - 2) = v58;
    *(&v49 - 1) = v30;
    v33 = specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in DOCSmartFolderManager.scoreForFolder(_:for:), 0.0, (&v49 - 4), v28);
    (*v55)(v30, v57);
    if (v28 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }
    }

    else if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    v60 = v28 & 0xC000000000000001;
    v61 = v29;
    if ((v28 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x24C1FC540](0, v28);
    }

    else
    {
      if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v34 = *(v28 + 32);
    }

    v35 = v34;
    v36 = [v34 folderItem];

    v37 = [v36 displayName];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = DOCSmartFolderLogHandle();
    static os_log_type_t.debug.getter();
    v42 = swift_allocObject();
    *(v42 + 16) = v53;
    *(v42 + 56) = MEMORY[0x277D839F8];
    *(v42 + 64) = MEMORY[0x277D83A80];
    *(v42 + 32) = v33;
    v43 = v52;
    *(v42 + 96) = MEMORY[0x277D837D0];
    *(v42 + 104) = v43;
    *(v42 + 72) = v38;
    *(v42 + 80) = v40;
    os_log(_:dso:log:type:_:)();

    if (v24 >= v33)
    {

LABEL_5:
      v25 = v61;
      goto LABEL_6;
    }

    if (v60)
    {
      v44 = MEMORY[0x24C1FC540](0, v28);
    }

    else
    {
      v44 = *(v28 + 32);
    }

    v45 = v44;
    v46 = [v44 folderItem];

    if (!v46)
    {
      goto LABEL_5;
    }

    v25 = v49;
    v24 = v33;
    v49 = v46;
    v50 = v61;
LABEL_6:
    v22 = v51;
    v21 &= v21 - 1;
  }

  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v26 >= v22)
    {
      break;
    }

    v21 = *(v18 + 64 + 8 * v26);
    ++v23;
    if (v21)
    {
      v23 = v26;
      goto LABEL_12;
    }
  }

  v47 = v49;
  if (v49)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_249BA0290;
    *(v48 + 32) = v47;
  }
}

double closure #1 in DOCSmartFolderManager.scoreForFolder(_:for:)@<D0>(double *a1@<X0>, id *a2@<X1>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = [*a2 type];
  if (v6 == 1)
  {
    type metadata accessor for DOCSmartFolderInputFile();
    v7 = UTType.identifier.getter();
    v9 = v8;
    v10 = [v5 value];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {

      v16 = 1.0;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }
    }
  }

  else
  {
    v43 = a3;
    if (v6)
    {
      v41 = [v5 type];
      type metadata accessor for DOCSmartFolderHitType(0);
      v44[3] = v42;
      v44[0] = v41;
      doc_fatalErrorUnrecognizedEnumValueEncountered(_:)(v44);
    }

    v17 = [v5 value];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (String.count.getter() > 3)
    {

      v22 = specialized Collection.prefix(_:)(4);
      v24 = v23;

      LOBYTE(v24) = specialized Sequence<>.starts<A>(with:)(v22, v24);

      if (v24)
      {
        v25._countAndFlagsBits = v18;
        v25._object = v20;
        v26 = String.doc_editDistance(from:)(v25);
        v27 = String.count.getter();
        v28 = String.count.getter();

        if (v28 <= v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = v28;
        }

        v21 = (v29 - v26) / v29;
      }

      else
      {

        v21 = 0.0;
      }

      a3 = v43;
    }

    else
    {

      v21 = 0.0;
      a3 = v43;
    }

    if (v21 <= 0.5)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v21;
    }
  }

  v30 = DOCSmartFolderLogHandle();
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_249B9FA70;
  v32 = MEMORY[0x277D83A80];
  *(v31 + 56) = MEMORY[0x277D839F8];
  *(v31 + 64) = v32;
  *(v31 + 32) = v16;
  v33 = [v5 value];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *(v31 + 96) = MEMORY[0x277D837D0];
  *(v31 + 104) = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 72) = v34;
  *(v31 + 80) = v36;
  os_log(_:dso:log:type:_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  [v5 frecencyScoreAtDate_];
  v39 = v38;

  result = v4 + v16 * v39;
  *a3 = result;
  return result;
}

double specialized Sequence.reduce<A>(_:_:)(void (*a1)(double *__return_ptr, double *, id *), double a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v8, a4);
      }

      else
      {
        if (v8 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v15 = v9;
      a1(&v14, &v16, &v15);

      if (!v4)
      {
        a2 = v14;
        v16 = v14;
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return a2;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return a2;
}

Swift::Void __swiftcall DOCSmartFolderManager.makeHostedActivityCurrent()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
  [v1 becomeCurrent];
}

id DOCSmartFolderManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void (*protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x78))();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

void protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void DOCSmartFolderManager.register(event:)(void *a1)
{
  v2 = DOCSmartFolderLogHandle();
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9FA70;
  v4 = [a1 folderItem];
  v5 = [v4 displayName];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v10 = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 64) = v10;
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  v11 = [a1 appBundleIdentifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v3 + 96) = v9;
  *(v3 + 104) = v10;
  *(v3 + 72) = v12;
  *(v3 + 80) = v14;
  os_log(_:dso:log:type:_:)();

  v15 = [a1 folderItem];
  v16 = [v15 isRootItem];

  if (v16)
  {
    return;
  }

  v17 = [a1 &selRef_searchResultsController + 4];
  v18 = [v17 providerDomainID];

  LOBYTE(v17) = DOCProviderDomainIDIsRemovable();
  if (v17)
  {
    return;
  }

  v19 = [a1 &selRef_searchResultsController + 4];
  v20 = [v19 itemIdentifier];

  v21 = MEMORY[0x277D85000];
  v22 = (*((*MEMORY[0x277D85000] & *v30) + 0x80))();
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
    if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
    {

      return;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      return;
    }
  }

  else
  {
  }

  (*((*v21 & *v30) + 0xA0))([*(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database) registerEvent_]);
  v29 = [a1 &selRef_searchResultsController + 4];
  _s26DocumentManagerExecutables25DOCUserActivityControllerC011publishUserE03for15activityHostingySo6FPItemC_AA0deK0_ptFZTf4nen_nAA014DOCSmartFolderB0C_Tt1g5(v29);
}

uint64_t DOCSmartFolderManager.delete(hotFolder:for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = DOCSmartFolderLogHandle();
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249B9FA70;
  v9 = [a1 displayName];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v14 = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  *(v8 + 96) = v13;
  *(v8 + 104) = v14;
  *(v8 + 64) = v14;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;

  os_log(_:dso:log:type:_:)();

  v15 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database);
  v16 = [a1 itemIdentifier];
  v17 = MEMORY[0x24C1FAD20](a2, a3);
  [v15 deleteFolderWithIdentifier:v16 appBundleIdentifier:v17];

  v18 = *((*MEMORY[0x277D85000] & *v3) + 0xA0);

  return v18();
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.read in conformance [A]specialized ()
{
}

{
  return swift_unknownObjectRelease();
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t _s26DocumentManagerExecutables25DOCUserActivityControllerC011publishUserE03for15activityHostingySo6FPItemC_AA0deK0_ptFZTf4nen_nAA014DOCSmartFolderB0C_Tt1g5(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = &protocol witness table for DOCSmartFolderManager;
  swift_unknownObjectWeakInit();

  v3 = [a1 itemID];
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = partial apply for closure #1 in static DOCUserActivityController.publishUserActivity(for:activityHosting:);
  v4[4] = v2;
  v8[4] = partial apply for closure #1 in static DOCUserActivityController.userActivityFor(item:completion:);
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
  v8[3] = &block_descriptor_16;
  v5 = _Block_copy(v8);
  v6 = a1;

  FPCrossDeviceItemIDForItemID();
  _Block_release(v5);
}