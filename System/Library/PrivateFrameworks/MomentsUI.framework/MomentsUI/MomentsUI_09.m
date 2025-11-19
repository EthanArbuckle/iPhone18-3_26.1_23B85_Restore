uint64_t InterstitialSelectionTracker.isSelected(assetWithUUID:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  v12 = (*(*v1 + 128))(v9);
  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v14 & 1) != 0))
  {
    (*(v5 + 16))(v8, *(v12 + 56) + *(v5 + 72) * v13, v4);

    v15 = (*(v5 + 32))(v11, v8, v4);
    v16 = (*(*v2 + 248))(v15);
    if (*(v16 + 16))
    {
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v18)
      {
        v19 = *(*(v16 + 56) + 8 * v17);

        v20 = specialized Set.contains(_:)(a1, v19);

        (*(v5 + 8))(v11, v4);
        return v20 & 1;
      }
    }

    v21 = (*(v5 + 8))(v11, v4);
  }

  else
  {
  }

  if (*((*(*v2 + 248))(v21) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1);
    v20 = v22;
  }

  else
  {

    v20 = 0;
  }

  return v20 & 1;
}

uint64_t InterstitialSelectionTracker.isGroup(assetWithUUID:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = (*(*v1 + 128))(v4);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = type metadata accessor for UUID();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v6, v11 + *(v13 + 72) * v10, v12);

    v14 = 1;
    (*(v13 + 56))(v6, 0, 1, v12);
  }

  else
  {

    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v14 = 0;
  }

  outlined destroy of UTType?(v6, &_s10Foundation4UUIDVSgMd);
  return v14;
}

uint64_t InterstitialSelectionTracker.deinit()
{

  return v0;
}

uint64_t InterstitialSelectionTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySay10Foundation4UUIDVGSgGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy9MomentsUI12DBAssetModelC5StyleOGMd);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCys5Int64VGMd);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy9MomentsUI11DBAssetDataCGMd);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySiGMd);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI18HashableCoordinateVGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI18ProtectedAppSourceVGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy9MomentsUI12DBSuggestionCGMd);
}

void *specialized _NativeSet.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        *(*(v5 + 48) + 8 * (v15 | (v9 << 6))) = *(*(v3 + 48) + 8 * (v15 | (v9 << 6)));
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id specialized _NativeSet.copy()()
{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo14CKRecordZoneIDCGMd);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo10CKRecordIDCGMd);
}

id specialized _NativeSet.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ShyACGtSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v49 - v12;
  v14 = -1 << *(a1 + 32);
  v15 = ~v14;
  v16 = *(a1 + 56);
  v17 = -v14;
  *&v57 = a1;
  *(&v57 + 1) = a1 + 56;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v58 = v15;
  *v59 = v18 & v16;
  *&v59[8] = a2;
  *&v59[16] = 0;
  v59[24] = 0;
  v52 = a1;

  v51 = a2;

  specialized Zip2Sequence.Iterator.next()(v13);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ShyACGtMd);
  if ((*(*(v19 - 8) + 48))(v13, 1, v19) == 1)
  {
LABEL_5:
    v54 = v57;
    v55 = v58;
    v56[0] = *v59;
    *(v56 + 9) = *&v59[9];
    outlined destroy of UTType?(&v54, &_ss12Zip2SequenceV8IteratorVyShy10Foundation4UUIDVGSayAHG_GMd);

    return;
  }

  v20 = (v53 + 32);
  v21 = *(v19 + 48);
  v50 = *(v53 + 32);
  v50(v10, v13, v8);
  v22 = *&v13[v21];
  v23 = *a4;
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
  v26 = v23[2];
  v27 = (v25 & 1) == 0;
  v28 = __OFADD__(v26, v27);
  v29 = v26 + v27;
  if (v28)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  LOBYTE(v30) = v25;
  if (v23[3] < v29)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    if ((v30 & 1) == (v31 & 1))
    {
      goto LABEL_11;
    }

LABEL_9:
    v24 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (a3)
  {
LABEL_11:
    if (v30)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v49 = v24;
  specialized _NativeDictionary.copy()();
  v24 = v49;
  if ((v30 & 1) == 0)
  {
LABEL_15:
    v34 = *a4;
    *(*a4 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v35 = v24;
    v50((v34[6] + *(v53 + 72) * v24), v10, v8);
    *(v34[7] + 8 * v35) = v22;
    while (1)
    {
      v37 = v34[2];
      v36 = v34 + 2;
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_24;
      }

      *v36 = v38;
      specialized Zip2Sequence.Iterator.next()(v13);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ShyACGtMd);
      if ((*(*(v39 - 8) + 48))(v13, 1, v39) == 1)
      {
        goto LABEL_5;
      }

      v40 = *(v39 + 48);
      v30 = *v20;
      (*v20)(v10, v13, v8);
      v22 = *&v13[v40];
      v41 = *a4;
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v28 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v28)
      {
        goto LABEL_23;
      }

      a3 = v43;
      if (v41[3] < v46)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, 1);
        v42 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
        if ((a3 & 1) != (v47 & 1))
        {
          goto LABEL_9;
        }
      }

      if (a3)
      {
        break;
      }

      v34 = *a4;
      *(*a4 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v48 = v42;
      v30((v34[6] + *(v53 + 72) * v42), v10, v8);
      *(v34[7] + 8 * v48) = v22;
    }
  }

LABEL_12:
  v32 = swift_allocError();
  swift_willThrow();
  v60 = v32;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v53 + 8))(v10, v8);
    v54 = v57;
    v55 = v58;
    v56[0] = *v59;
    *(v56 + 9) = *&v59[9];
    outlined destroy of UTType?(&v54, &_ss12Zip2SequenceV8IteratorVyShy10Foundation4UUIDVGSayAHG_GMd);

    return;
  }

LABEL_25:
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x21CE92100](0xD00000000000001BLL, 0x800000021657A870);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x21CE92100](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = *v1;
  Hasher.init(_seed:)();
  specialized Optional<A>.hash(into:)(v44, a1);
  v11 = Hasher._finalize()();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 1;
  }

  v15 = v10;
  v36 = a1;
  v37 = v1;
  v16 = ~v13;
  v17 = v5 + 8;
  v18 = v5;
  v34 = v12;
  v35 = v15;
  v33 = ~v13;
  v39 = v5 + 16;
  while (1)
  {
    v43 = *(*(v15 + 48) + 8 * v14);
    if (v43)
    {
      break;
    }

    if (!a1)
    {
      goto LABEL_18;
    }

LABEL_4:
    v14 = (v14 + 1) & v16;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 1;
    }
  }

  if (!a1)
  {
    goto LABEL_4;
  }

  v19 = *(v43 + 16);
  if (v19 != *(a1 + 16))
  {
    goto LABEL_4;
  }

  if (v19 && v43 != a1)
  {
    v38 = v14;
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v40 = a1 + v20;
    v41 = v43 + v20;

    v21 = 0;
    while (v21 < *(v43 + 16))
    {
      v22 = *(v18 + 72) * v21;
      v23 = v18;
      v24 = *(v18 + 16);
      v24(v9, v41 + v22, v4);
      if (v19 == v21)
      {
        goto LABEL_22;
      }

      v2 = v42;
      v24(v42, v40 + v22, v4);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *v17;
      (*v17)(v2, v4);
      v26(v9, v4);
      if ((v25 & 1) == 0)
      {

        v15 = v35;
        a1 = v36;
        v18 = v23;
        v14 = v38;
        v16 = v33;
        v12 = v34;
        goto LABEL_4;
      }

      ++v21;
      v18 = v23;
      if (v19 == v21)
      {

        v14 = v38;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_18:
  v17 = v14;
  v2 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v2;
  v44[0] = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_19;
  }

LABEL_23:
  specialized _NativeSet.copy()();
  v29 = v44[0];
LABEL_19:
  v30 = v17;
  v27 = *(*(v29 + 48) + 8 * v17);
  specialized _NativeSet._delete(at:)(v30);
  *v2 = v44[0];
  return v27;
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  result = specialized RawRepresentable<>._rawHashValue(seed:)();
  v6 = -1 << *(v4 + 32);
  v7 = result & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v32 = ~v6;
    v8 = 0x626E4F726576656ELL;
    v33 = a1;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      v34 = v7;
      if (v9 > 3)
      {
        if (*(*(v4 + 48) + v7) > 5u)
        {
          if (v9 == 6)
          {
            v14 = 0x756F527465737361;
            v15 = 0xEE00626F6C426574;
          }

          else
          {
            v14 = 0x6174536775626564;
            v15 = 0xEA0000000000656CLL;
          }
        }

        else
        {
          if (v9 == 4)
          {
            v14 = 1280328553;
          }

          else
          {
            v14 = 0x68746C616548;
          }

          if (v9 == 4)
          {
            v15 = 0xE400000000000000;
          }

          else
          {
            v15 = 0xE600000000000000;
          }
        }
      }

      else
      {
        if (v9 == 2)
        {
          v10 = 0x64756F6C43776F6CLL;
        }

        else
        {
          v10 = 0x6469766F72506F6ELL;
        }

        if (v9 == 2)
        {
          v11 = 0xEF656761726F7453;
        }

        else
        {
          v11 = 0xEB00000000737265;
        }

        if (*(*(v4 + 48) + v7))
        {
          v12 = 0x6C61636F4C776F6CLL;
        }

        else
        {
          v12 = v8;
        }

        if (v9)
        {
          v13 = 0xEF656761726F7453;
        }

        else
        {
          v13 = 0xEE0064656472616FLL;
        }

        if (v9 <= 1)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }

        if (v9 <= 1)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }
      }

      v16 = 0x756F527465737361;
      if (v33 != 6)
      {
        v16 = 0x6174536775626564;
      }

      v17 = 0xEE00626F6C426574;
      if (v33 != 6)
      {
        v17 = 0xEA0000000000656CLL;
      }

      v18 = 0x68746C616548;
      if (v33 == 4)
      {
        v18 = 1280328553;
      }

      v19 = 0xE400000000000000;
      if (v33 != 4)
      {
        v19 = 0xE600000000000000;
      }

      if (v33 <= 5)
      {
        v16 = v18;
        v17 = v19;
      }

      if (v33 == 2)
      {
        v20 = 0x64756F6C43776F6CLL;
      }

      else
      {
        v20 = 0x6469766F72506F6ELL;
      }

      if (v33 == 2)
      {
        v21 = 0xEF656761726F7453;
      }

      else
      {
        v21 = 0xEB00000000737265;
      }

      if (v33)
      {
        v22 = 0x6C61636F4C776F6CLL;
      }

      else
      {
        v22 = v8;
      }

      if (v33)
      {
        v23 = 0xEF656761726F7453;
      }

      else
      {
        v23 = 0xEE0064656472616FLL;
      }

      if (v33 <= 1)
      {
        v20 = v22;
        v21 = v23;
      }

      v24 = v33 <= 3 ? v20 : v16;
      v25 = v33 <= 3 ? v21 : v17;
      if (v14 == v24 && v15 == v25)
      {
        break;
      }

      v26 = v8;
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_68;
      }

      v7 = (v34 + 1) & v32;
      v8 = v26;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

LABEL_68:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v30;
    v35 = *v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(&_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd);
      v29 = v35;
    }

    *a2 = *(*(v29 + 48) + v34);
    result = specialized _NativeSet._delete(at:)(v34);
    *v30 = v35;
  }

  else
  {
LABEL_66:
    *a2 = 8;
  }

  return result;
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  if (a2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a2;
  }

  MEMORY[0x21CE937F0](*&v8);
  if (a3 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a3;
  }

  MEMORY[0x21CE937F0](*&v9);
  result = Hasher._finalize()();
  v11 = -1 << *(v7 + 32);
  v12 = result & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = (*(v7 + 48) + 16 * v12);
      if (*v14 == a2 && v14[1] == a3)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v18 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v17 = v18;
    }

    *a1 = *(*(v17 + 48) + 16 * v12);
    result = specialized _NativeSet._delete(at:)(v12);
    *v3 = v18;
    *(a1 + 16) = 0;
  }

  else
  {
LABEL_14:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

uint64_t specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v33 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = (v33 + 8);
      v31 = v8;
      v32 = v7;
      v36 = (v12 + 1) & v11;
      v37 = v11;
      do
      {
        v14 = *(v7 + 48);
        v38 = v10;
        v15 = *(v14 + 8 * v10);
        Hasher.init(_seed:)();
        if (v15)
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x21CE937C0](*(v15 + 16));
          v16 = *(v15 + 16);
          if (v16)
          {
            v34 = v15;
            v35 = a1;
            v17 = v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
            v18 = *(v33 + 72);
            v19 = *(v33 + 16);

            do
            {
              v19(v6, v17, v3);
              lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
              dispatch thunk of Hashable.hash(into:)();
              (*v13)(v6, v3);
              v17 += v18;
              --v16;
            }

            while (v16);

            v8 = v31;
            v7 = v32;
            a1 = v35;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v20 = Hasher._finalize()();
        v21 = v37;
        v22 = v20 & v37;
        if (a1 >= v36)
        {
          v23 = v38;
          if (v22 < v36)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v23 = v38;
          if (v22 >= v36)
          {
            goto LABEL_17;
          }
        }

        if (a1 >= v22)
        {
LABEL_17:
          v24 = *(v7 + 48);
          v25 = (v24 + 8 * a1);
          v26 = (v24 + 8 * v23);
          if (a1 != v23 || v25 >= v26 + 1)
          {
            *v25 = *v26;
            a1 = v23;
          }
        }

LABEL_5:
        v10 = (v23 + 1) & v21;
      }

      while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v27 = *(v7 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v29;
    ++*(v7 + 36);
  }

  return result;
}

{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v35 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v16 = v12;
      v17 = *(v14 + 56);
      v36 = v14;
      v33 = (v14 - 8);
      v34 = v15;
      do
      {
        v18 = v9;
        v19 = v17;
        v20 = v17 * v11;
        v34(v7, *(v8 + 48) + v17 * v11, v3);
        v21 = v8;
        v22 = v16;
        v23 = v21;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v16 = v22;
        if (a1 >= v35)
        {
          if (v25 >= v35 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v19;
            v29 = v19 * a1;
            if (v19 * a1 < v20 || v28 + v19 * a1 >= (v28 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v35 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v19;
LABEL_5:
        v11 = (v11 + 1) & v16;
        v9 = v18;
      }

      while (((*(v18 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        Hasher.init(_seed:)();
        if (v11 == 0.0)
        {
          v13 = 0.0;
        }

        else
        {
          v13 = v11;
        }

        MEMORY[0x21CE937F0](*&v13);
        if (v12 == 0.0)
        {
          v14 = 0.0;
        }

        else
        {
          v14 = v12;
        }

        MEMORY[0x21CE937F0](*&v14);
        v15 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v15 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v9)
        {
          goto LABEL_17;
        }

        if (v2 >= v15)
        {
LABEL_17:
          v16 = *(v3 + 48);
          v17 = (v16 + 16 * v2);
          v18 = (v16 + 16 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t specialized Zip2Sequence.Iterator.next()@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 56) != 1)
  {
    v13 = *v1;
    v14 = v1[1];
    v16 = v1[2];
    v15 = v1[3];
    v17 = v1[4];
    v33 = v10;
    v34 = a1;
    if (v17)
    {
      v18 = v15;
LABEL_14:
      v22 = (v17 - 1) & v17;
      (*(v7 + 16))(v5, *(v13 + 48) + *(v7 + 72) * (__clz(__rbit64(v17)) | (v18 << 6)), v6);
      (*(v7 + 56))(v5, 0, 1, v6);
      v21 = v18;
LABEL_15:
      *v1 = v13;
      v1[1] = v14;
      v1[2] = v16;
      v1[3] = v21;
      v1[4] = v22;
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        outlined destroy of UTType?(v5, &_s10Foundation4UUIDVSgMd);
        v23 = v34;
LABEL_19:
        *(v1 + 56) = 1;
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ShyACGtMd);
        return (*(*(v29 - 8) + 56))(v23, 1, 1, v29);
      }

      v24 = *(v7 + 32);
      v25 = v33;
      result = v24(v33, v5, v6);
      v26 = v1[5];
      v27 = v1[6];
      v28 = *(v26 + 16);
      v23 = v34;
      if (v27 == v28)
      {
        (*(v7 + 8))(v25, v6);
        goto LABEL_19;
      }

      if (v27 < v28)
      {
        v30 = *(v26 + 8 * v27 + 32);
        v1[6] = v27 + 1;
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ShyACGtMd);
        v32 = *(v31 + 48);
        v24(v23, v25, v6);
        *&v23[v32] = v30;
        (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
      }
    }

    else
    {
      v19 = (v16 + 64) >> 6;
      if (v19 <= v15 + 1)
      {
        v20 = v15 + 1;
      }

      else
      {
        v20 = (v16 + 64) >> 6;
      }

      v21 = v20 - 1;
      while (1)
      {
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v18 >= v19)
        {
          (*(v7 + 56))(v5, 1, 1, v6);
          v22 = 0;
          goto LABEL_15;
        }

        v17 = *(v14 + 8 * v18);
        ++v15;
        if (v17)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ShyACGtMd);
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, 1, 1, v11);
}

uint64_t _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC10Foundation4UUIDV_ShyAGGs12Zip2SequenceVyAHSayAHGGTt0g5Tf4g_n(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVShyAEGGMd);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v7 = v5;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, a2, 1, &v7);
  return v7;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCShy10Foundation4UUIDVG_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10Foundation4UUIDVGMd);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t MapItem.data.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  outlined copy of Data?(v1, *(v0 + 24));
  return v1;
}

uint64_t MapItem.data.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return outlined consume of Data?(v5, v6);
}

uint64_t MapItem.isDryHandle.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t MapItem.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MapItem.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MapItem.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E61487972447369;
  v4 = 0xEB00000000656C64;
  if (v2 != 1)
  {
    v3 = 0x696669746E656469;
    v4 = 0xEA00000000007265;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1635017060;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6E61487972447369;
  v8 = 0xEB00000000656C64;
  if (*a2 != 1)
  {
    v7 = 0x696669746E656469;
    v8 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1635017060;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MapItem.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MapItem.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MapItem.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MapItem.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MapItem.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MapItem.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEB00000000656C64;
  v5 = 0x6E61487972447369;
  if (v2 != 1)
  {
    v5 = 0x696669746E656469;
    v4 = 0xEA00000000007265;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1635017060;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MapItem.CodingKeys()
{
  v1 = 0x6E61487972447369;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1635017060;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance MapItem.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized MapItem.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MapItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MapItem.CodingKeys and conformance MapItem.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MapItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MapItem.CodingKeys and conformance MapItem.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapItem.mkMapItem()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = MapItem.mkMapItem();

  return MapItem.geoMapItem()();
}

{
  v1 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithGeoMapItem:*(v0 + 24) isPlaceHolderPlace:0];
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t MapItem.mkMapItem()(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x2822009F8](MapItem.mkMapItem(), 0, 0);
}

uint64_t MapItem.__allocating_init(mkMapItem:)(void *a1)
{
  v2 = swift_allocObject();
  MapItem.init(mkMapItem:)(a1);
  return v2;
}

uint64_t MapItem.init(mkMapItem:)(void *a1)
{
  *(v1 + 16) = xmmword_21658E040;
  *(v1 + 32) = 2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  if (a1)
  {
    v3 = objc_allocWithZone(MEMORY[0x277D0EBD0]);
    v4 = a1;
    v5 = [v3 init];
    v6 = [v5 handleForMapItem_];
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
    }

    else
    {

      v7 = 0;
      v9 = 0xF000000000000000;
    }

    swift_beginAccess();
    v10 = *(v1 + 16);
    v11 = *(v1 + 24);
    *(v1 + 16) = v7;
    *(v1 + 24) = v9;
    outlined consume of Data?(v10, v11);
    swift_beginAccess();
    *(v1 + 32) = 1;
  }

  return v1;
}

uint64_t MapItem.__allocating_init(data:isDryHandle:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21658E040;
  *(v6 + 32) = 2;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  outlined copy of Data?(a1, a2);
  outlined consume of Data?(v7, v8);
  outlined consume of Data?(a1, a2);
  swift_beginAccess();
  *(v6 + 32) = a3;
  return v6;
}

uint64_t MapItem.init(data:isDryHandle:)(uint64_t a1, unint64_t a2, char a3)
{
  *(v3 + 16) = xmmword_21658E040;
  *(v3 + 32) = 2;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  outlined copy of Data?(a1, a2);
  outlined consume of Data?(v7, v8);
  outlined consume of Data?(a1, a2);
  swift_beginAccess();
  *(v3 + 32) = a3;
  return v3;
}

void MapItem.hash(into:)()
{
  v1 = (*(*v0 + 104))();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = v1;
    v5 = v2;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    v3 = outlined consume of Data?(v4, v5);
  }

  v6 = (*(*v0 + 128))(v3);
  if (v6 == 2)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    Hasher._combine(_:)(1u);
    v7 = v8 & 1;
  }

  Hasher._combine(_:)(v7);
}

uint64_t MapItem.coordinate()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = MapItem.coordinate();

  return v4();
}

{
  v1 = *(v0 + 24);
  if (v1)
  {
    [*(v0 + 24) _coordinate];
    v3 = v2;
    v5 = v4;

    v6 = v3;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v6, v7, v1 == 0);
}

uint64_t MapItem.coordinate()(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x2822009F8](MapItem.coordinate(), 0, 0);
}

uint64_t MapItem.deinit()
{
  outlined consume of Data?(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t MapItem.__deallocating_deinit()
{
  outlined consume of Data?(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t MapItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI7MapItemC10CodingKeys33_E7F516DD28EC966869D5D53FD043D35BLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MapItem.CodingKeys and conformance MapItem.CodingKeys();
  v9 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (*(*v3 + 104))(v9);
  v16 = v10;
  v14[15] = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v11 = outlined consume of Data?(v15, v16);
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(*v3 + 128))(v11);
  LOBYTE(v15) = 1;
  v12 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  (*(*v3 + 152))(v12);
  LOBYTE(v15) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
}

Swift::Int MapItem.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 200))(v2);
  return Hasher._finalize()();
}

uint64_t MapItem.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  MapItem.init(from:)(a1);
  return v2;
}

uint64_t MapItem.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI7MapItemC10CodingKeys33_E7F516DD28EC966869D5D53FD043D35BLLOGMd);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  *(v3 + 16) = xmmword_21658E040;
  *(v3 + 32) = 2;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  v8 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type MapItem.CodingKeys and conformance MapItem.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
  }

  else
  {
    v19 = v3 + 40;
    v9 = v20;
    v25 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = v23;
    v11 = v24;
    swift_beginAccess();
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    *(v3 + 16) = v10;
    *(v3 + 24) = v11;
    v14 = v21;
    outlined consume of Data?(v12, v13);
    LOBYTE(v23) = 1;
    LOBYTE(v11) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    swift_beginAccess();
    *(v3 + 32) = v11;
    v22 = 2;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v17;
    (*(v9 + 8))(v7, v14);
    swift_beginAccess();
    *(v3 + 40) = v16;
    *(v3 + 48) = v18;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MapItem@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 232))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MapItem()
{
  Hasher.init(_seed:)();
  (*(**v0 + 200))(v2);
  return Hasher._finalize()();
}

uint64_t specialized static MapItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 128))();
  result = (*(*a2 + 128))();
  v6 = result;
  if (v4 == 2)
  {
    if (result != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v6 == 2 || ((v6 ^ v4) & 1) != 0)
    {
      return result;
    }
  }

  v7 = (*(*a1 + 104))(result);
  v9 = v8;
  v11 = (*(*a2 + 104))();
  v12 = v10;
  if (v9 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      outlined consume of Data?(v7, v9);
      return 1;
    }

    goto LABEL_10;
  }

  if (v10 >> 60 == 15)
  {
LABEL_10:
    outlined consume of Data?(v7, v9);
    outlined consume of Data?(v11, v12);
    return 0;
  }

  outlined copy of Data?(v7, v9);
  outlined copy of Data?(v11, v12);
  v13 = specialized static Data.== infix(_:_:)(v7, v9, v11, v12);
  outlined consume of Data?(v11, v12);
  outlined consume of Data?(v11, v12);
  outlined consume of Data?(v7, v9);
  outlined consume of Data?(v7, v9);
  return v13 & 1;
}

unint64_t lazy protocol witness table accessor for type MapItem.CodingKeys and conformance MapItem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MapItem.CodingKeys and conformance MapItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type MapItem.CodingKeys and conformance MapItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapItem.CodingKeys and conformance MapItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MapItem.CodingKeys and conformance MapItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type MapItem.CodingKeys and conformance MapItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapItem.CodingKeys and conformance MapItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MapItem.CodingKeys and conformance MapItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type MapItem.CodingKeys and conformance MapItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapItem.CodingKeys and conformance MapItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MapItem.CodingKeys and conformance MapItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type MapItem.CodingKeys and conformance MapItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapItem.CodingKeys and conformance MapItem.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MapItem and conformance MapItem()
{
  result = lazy protocol witness table cache variable for type MapItem and conformance MapItem;
  if (!lazy protocol witness table cache variable for type MapItem and conformance MapItem)
  {
    type metadata accessor for MapItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapItem and conformance MapItem);
  }

  return result;
}

uint64_t dispatch thunk of MapItem.mkMapItem()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v4();
}

uint64_t dispatch thunk of MapItem.coordinate()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of MapItem.coordinate();

  return v4();
}

uint64_t dispatch thunk of MapItem.coordinate()(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3 & 1);
}

unint64_t specialized MapItem.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MapItem.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void *NotificationAnalyticsManager.NotificationEvent.suggestion.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t NotificationAnalyticsManager.NotificationEvent.postDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NotificationAnalyticsManager.NotificationEvent() + 24);

  return outlined init with copy of Date?(v3, a1);
}

uint64_t type metadata accessor for NotificationAnalyticsManager.NotificationEvent()
{
  result = type metadata singleton initialization cache for NotificationAnalyticsManager.NotificationEvent;
  if (!type metadata singleton initialization cache for NotificationAnalyticsManager.NotificationEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NotificationAnalyticsManager.NotificationEvent.postDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NotificationAnalyticsManager.NotificationEvent() + 24);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NotificationAnalyticsManager.NotificationEvent.userInfo.getter()
{
  type metadata accessor for NotificationAnalyticsManager.NotificationEvent();
}

uint64_t NotificationAnalyticsManager.NotificationEvent.userInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationAnalyticsManager.NotificationEvent() + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NotificationAnalyticsManager.NotificationEvent.init(notificationSuggestion:eventTrigger:postingDate:userInfoDict:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for NotificationAnalyticsManager.NotificationEvent();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = *(v10 + 28);
  *a5 = v9;
  *(a5 + 8) = a1;
  result = outlined assign with take of Date?(a3, a5 + v11);
  *(a5 + v13) = a4;
  return result;
}

Swift::Void __swiftcall NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v170 = &v169 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v180 = (&v169 - v3);
  v177 = type metadata accessor for DateComponents();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v183 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for Calendar();
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v6 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v185 = v7;
  v186 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v172 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v169 = &v169 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v171 = &v169 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v169 - v15;
  v17 = swift_allocObject();
  v182 = v17;
  *(v17 + 16) = MEMORY[0x277D84F98];
  v179 = (v17 + 16);
  static Date.now.getter();
  static Calendar.current.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd);
  v18 = type metadata accessor for Calendar.Component();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21658E7C0;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, *MEMORY[0x277CC9988], v18);
  v24(v23 + v20, *MEMORY[0x277CC9998], v18);
  v24(v23 + 2 * v20, *MEMORY[0x277CC9968], v18);
  v24(v23 + 3 * v20, *MEMORY[0x277CC9980], v18);
  v24(v23 + 4 * v20, *MEMORY[0x277CC99A0], v18);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v181 = v16;
  v25 = v179;
  v173 = v6;
  Calendar.dateComponents(_:from:)();

  v26 = DateComponents.year.getter();
  if ((v27 & 1) == 0)
  {
    v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, 0xD000000000000012, 0x800000021657AE70, isUniquelyReferenced_nonNull_native);
    *v25 = aBlock;
  }

  v30 = DateComponents.month.getter();
  if ((v31 & 1) == 0)
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v33 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, 0xD000000000000013, 0x800000021657AE50, v33);
    *v25 = aBlock;
  }

  v34 = DateComponents.day.getter();
  v35 = v184;
  v36 = v185;
  if ((v37 & 1) == 0)
  {
    v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v39 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, 0xD000000000000011, 0x800000021657AE30, v39);
    *v25 = aBlock;
  }

  v40 = DateComponents.hour.getter();
  if ((v41 & 1) == 0)
  {
    v42 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, 0xD000000000000012, 0x800000021657AE10, v43);
    *v25 = aBlock;
  }

  v44 = DateComponents.minute.getter();
  if ((v45 & 1) == 0)
  {
    v46 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v47 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, 0xD000000000000014, 0x800000021657ADF0, v47);
    *v25 = aBlock;
  }

  v48 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v49 = swift_isUniquelyReferenced_nonNull_native();
  aBlock = *v25;
  *v25 = -0.0;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, 0xD00000000000001BLL, 0x800000021657ABA0, v49);
  *v25 = aBlock;
  v178 = type metadata accessor for NotificationAnalyticsManager.NotificationEvent();
  v50 = *&v35[*(v178 + 28)];
  if (!v50)
  {
    v194 = 0u;
    v195 = 0u;
    outlined destroy of UTType?(&v194, &_sypSgMd);
    v194 = 0u;
    v195 = 0u;
    outlined destroy of UTType?(&v194, &_sypSgMd);
    v194 = 0u;
    v195 = 0u;
    outlined destroy of UTType?(&v194, &_sypSgMd);
    v194 = 0u;
    v195 = 0u;
    outlined destroy of UTType?(&v194, &_sypSgMd);
    v194 = 0u;
    v195 = 0u;
    outlined destroy of UTType?(&v194, &_sypSgMd);
    v194 = 0u;
    v195 = 0u;
    outlined destroy of UTType?(&v194, &_sypSgMd);
    v194 = 0u;
    v195 = 0u;
    outlined destroy of UTType?(&v194, &_sypSgMd);
    v194 = 0u;
    v195 = 0u;
    outlined destroy of UTType?(&v194, &_sypSgMd);
    v194 = 0u;
    v195 = 0u;
    outlined destroy of UTType?(&v194, &_sypSgMd);
    v194 = 0u;
    v195 = 0u;
    outlined destroy of UTType?(&v194, &_sypSgMd);
    v194 = 0u;
    v195 = 0u;
    v84 = v180;
    goto LABEL_92;
  }

  strcpy(v187, "suggestionID");
  BYTE5(v187[1]) = 0;
  HIWORD(v187[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (!*(v50 + 16) || (v51 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v52 & 1) == 0))
  {
    outlined destroy of AnyHashable(&aBlock);
    v194 = 0u;
    v195 = 0u;
    goto LABEL_18;
  }

  outlined init with copy of Any(*(v50 + 56) + 32 * v51, &v194);
  outlined destroy of AnyHashable(&aBlock);
  if (!*(&v195 + 1))
  {
LABEL_18:
    outlined destroy of UTType?(&v194, &_sypSgMd);
    goto LABEL_19;
  }

  if (swift_dynamicCast())
  {
    v53 = aBlock;
    v54 = v189;
    v55 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v56 = MEMORY[0x21CE91FC0](*&v53, v54);

    v57 = [v55 initWithString_];

    v58 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, 0x6974736567677573, 0xEC00000044496E6FLL, v58);
    *v25 = aBlock;
  }

LABEL_19:
  strcpy(v187, "goodnessScore");
  HIWORD(v187[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (!*(v50 + 16) || (v59 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v60 & 1) == 0))
  {
    outlined destroy of AnyHashable(&aBlock);
    v194 = 0u;
    v195 = 0u;
    goto LABEL_28;
  }

  outlined init with copy of Any(*(v50 + 56) + 32 * v59, &v194);
  outlined destroy of AnyHashable(&aBlock);
  if (!*(&v195 + 1))
  {
LABEL_28:
    outlined destroy of UTType?(&v194, &_sypSgMd);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    v61 = aBlock * 10000.0;
    if (COERCE__INT64(fabs(aBlock * 10000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (v61 <= -9.22337204e18)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v61 >= 9.22337204e18)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v62 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v63 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, 0x7373656E646F6F67, 0xED000065726F6353, v63);
    *v25 = aBlock;
  }

LABEL_29:
  strcpy(v187, "interfaceType");
  HIWORD(v187[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (!*(v50 + 16) || (v64 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v65 & 1) == 0))
  {
    outlined destroy of AnyHashable(&aBlock);
    v194 = 0u;
    v195 = 0u;
    goto LABEL_35;
  }

  outlined init with copy of Any(*(v50 + 56) + 32 * v64, &v194);
  outlined destroy of AnyHashable(&aBlock);
  if (!*(&v195 + 1))
  {
LABEL_35:
    outlined destroy of UTType?(&v194, &_sypSgMd);
    goto LABEL_36;
  }

  if (swift_dynamicCast())
  {
    v66 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v67 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, 0x6361667265746E69, 0xED00006570795465, v67);
    *v25 = aBlock;
  }

LABEL_36:
  strcpy(v187, "subType");
  v187[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v50 + 16) || (v68 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v69 & 1) == 0))
  {
    outlined destroy of AnyHashable(&aBlock);
    v194 = 0u;
    v195 = 0u;
    goto LABEL_42;
  }

  outlined init with copy of Any(*(v50 + 56) + 32 * v68, &v194);
  outlined destroy of AnyHashable(&aBlock);
  if (!*(&v195 + 1))
  {
LABEL_42:
    outlined destroy of UTType?(&v194, &_sypSgMd);
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    v70 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v71 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, 0x65707954627573, 0xE700000000000000, v71);
    *v25 = aBlock;
  }

LABEL_43:
  v187[0] = 0xD000000000000015;
  v187[1] = 0x800000021657ADD0;
  AnyHashable.init<A>(_:)();
  if (!*(v50 + 16) || (v72 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v73 & 1) == 0))
  {
    outlined destroy of AnyHashable(&aBlock);
    v194 = 0u;
    v195 = 0u;
    goto LABEL_49;
  }

  outlined init with copy of Any(*(v50 + 56) + 32 * v72, &v194);
  outlined destroy of AnyHashable(&aBlock);
  if (!*(&v195 + 1))
  {
LABEL_49:
    outlined destroy of UTType?(&v194, &_sypSgMd);
    goto LABEL_50;
  }

  if (swift_dynamicCast())
  {
    v74 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v75 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v74, 0xD000000000000015, 0x800000021657ADD0, v75);
    *v25 = aBlock;
  }

LABEL_50:
  v187[0] = 0xD000000000000016;
  v187[1] = 0x800000021657ADB0;
  AnyHashable.init<A>(_:)();
  if (!*(v50 + 16) || (v76 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v77 & 1) == 0))
  {
    outlined destroy of AnyHashable(&aBlock);
    v194 = 0u;
    v195 = 0u;
    goto LABEL_56;
  }

  outlined init with copy of Any(*(v50 + 56) + 32 * v76, &v194);
  outlined destroy of AnyHashable(&aBlock);
  if (!*(&v195 + 1))
  {
LABEL_56:
    outlined destroy of UTType?(&v194, &_sypSgMd);
    goto LABEL_57;
  }

  if (swift_dynamicCast())
  {
    v78 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v79 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v78, 0xD000000000000016, 0x800000021657ADB0, v79);
    *v25 = aBlock;
  }

LABEL_57:
  v187[0] = 0xD000000000000014;
  v187[1] = 0x800000021657AD90;
  AnyHashable.init<A>(_:)();
  if (!*(v50 + 16) || (v80 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v81 & 1) == 0))
  {
    outlined destroy of AnyHashable(&aBlock);
    v194 = 0u;
    v195 = 0u;
    goto LABEL_63;
  }

  outlined init with copy of Any(*(v50 + 56) + 32 * v80, &v194);
  outlined destroy of AnyHashable(&aBlock);
  if (!*(&v195 + 1))
  {
LABEL_63:
    outlined destroy of UTType?(&v194, &_sypSgMd);
    goto LABEL_64;
  }

  if (swift_dynamicCast())
  {
    v82 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v83 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v82, 0xD000000000000014, 0x800000021657AD90, v83);
    *v25 = aBlock;
  }

LABEL_64:
  v187[0] = 0xD000000000000015;
  v187[1] = 0x800000021657AD70;
  AnyHashable.init<A>(_:)();
  v84 = v180;
  if (!*(v50 + 16) || (v85 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v86 & 1) == 0))
  {
    outlined destroy of AnyHashable(&aBlock);
    v194 = 0u;
    v195 = 0u;
    goto LABEL_70;
  }

  outlined init with copy of Any(*(v50 + 56) + 32 * v85, &v194);
  outlined destroy of AnyHashable(&aBlock);
  if (!*(&v195 + 1))
  {
LABEL_70:
    outlined destroy of UTType?(&v194, &_sypSgMd);
    goto LABEL_71;
  }

  if (swift_dynamicCast())
  {
    v87 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v88 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    v89 = v87;
    v84 = v180;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0xD000000000000015, 0x800000021657AD70, v88);
    *v25 = aBlock;
  }

LABEL_71:
  v187[0] = 0xD000000000000016;
  v187[1] = 0x800000021657AD50;
  AnyHashable.init<A>(_:)();
  if (!*(v50 + 16) || (v90 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v91 & 1) == 0))
  {
    outlined destroy of AnyHashable(&aBlock);
    v194 = 0u;
    v195 = 0u;
    goto LABEL_77;
  }

  outlined init with copy of Any(*(v50 + 56) + 32 * v90, &v194);
  outlined destroy of AnyHashable(&aBlock);
  if (!*(&v195 + 1))
  {
LABEL_77:
    outlined destroy of UTType?(&v194, &_sypSgMd);
    goto LABEL_78;
  }

  if (swift_dynamicCast())
  {
    v92 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v93 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    v94 = v92;
    v84 = v180;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000016, 0x800000021657AD50, v93);
    *v25 = aBlock;
  }

LABEL_78:
  v187[0] = 0xD00000000000001CLL;
  v187[1] = 0x800000021657AD30;
  AnyHashable.init<A>(_:)();
  if (!*(v50 + 16) || (v95 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v96 & 1) == 0))
  {
    outlined destroy of AnyHashable(&aBlock);
    v194 = 0u;
    v195 = 0u;
    goto LABEL_84;
  }

  outlined init with copy of Any(*(v50 + 56) + 32 * v95, &v194);
  outlined destroy of AnyHashable(&aBlock);
  if (!*(&v195 + 1))
  {
LABEL_84:
    outlined destroy of UTType?(&v194, &_sypSgMd);
    goto LABEL_85;
  }

  if (swift_dynamicCast())
  {
    v97 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v98 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    v99 = v97;
    v84 = v180;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v99, 0xD00000000000001CLL, 0x800000021657AD30, v98);
    *v25 = aBlock;
  }

LABEL_85:
  v187[0] = 0xD000000000000018;
  v187[1] = 0x800000021657ACF0;
  AnyHashable.init<A>(_:)();
  if (!*(v50 + 16) || (v100 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v101 & 1) == 0))
  {
    outlined destroy of AnyHashable(&aBlock);
    v194 = 0u;
    v195 = 0u;
    goto LABEL_92;
  }

  outlined init with copy of Any(*(v50 + 56) + 32 * v100, &v194);
  outlined destroy of AnyHashable(&aBlock);
  if (!*(&v195 + 1))
  {
LABEL_92:
    outlined destroy of UTType?(&v194, &_sypSgMd);
    goto LABEL_93;
  }

  type metadata accessor for MONotificationScheduleType(0);
  if (swift_dynamicCast())
  {
    v102 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v103 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v102, 0xD000000000000018, 0x800000021657ACF0, v103);
    *v25 = aBlock;
    v104 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v105 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *v25;
    *v25 = -0.0;
    v35 = v184;
    v106 = v104;
    v84 = v180;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v106, 0xD000000000000010, 0x800000021657AD10, v105);
    *v25 = aBlock;
  }

LABEL_93:
  outlined init with copy of Date?(&v35[*(v178 + 24)], v84);
  v107 = v186;
  v108 = *(v186 + 48);
  if (v108(v84, 1, v36) == 1)
  {
    v109 = v84;
    v110 = v107;
    goto LABEL_116;
  }

  v111 = v36;
  v112 = *(v107 + 32);
  v113 = v84;
  v114 = v171;
  v112(v171, v113, v111);
  v115 = *v35;
  if ((v115 - 5) >= 2)
  {
    v118 = v114;
    if (v115 != 1)
    {
      goto LABEL_106;
    }

    Date.timeIntervalSince(_:)();
    v124 = floor(v123 / 60.0);
    if ((*&v124 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v124 > -9.22337204e18)
      {
        if (v124 < 9.22337204e18)
        {
          v119 = "suggestionNotificationLatency";
          v120 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v121 = swift_isUniquelyReferenced_nonNull_native();
          aBlock = *v25;
          *v25 = -0.0;
          v122 = 0xD000000000000013;
          goto LABEL_105;
        }

        goto LABEL_140;
      }

LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  Date.timeIntervalSince(_:)();
  v117 = floor(v116 / 60.0);
  if ((*&v117 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_136;
  }

  if (v117 <= -9.22337204e18)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v117 >= 9.22337204e18)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v118 = v114;
  v119 = "queuePostingLatency";
  v120 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v121 = swift_isUniquelyReferenced_nonNull_native();
  aBlock = *v25;
  *v25 = -0.0;
  v122 = 0xD000000000000011;
LABEL_105:
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v120, v122, v119 | 0x8000000000000000, v121);
  *v25 = aBlock;
LABEL_106:
  if (v50)
  {
    v180 = v112;
    strcpy(v187, "bundleEndDate");
    HIWORD(v187[1]) = -4864;
    AnyHashable.init<A>(_:)();
    v125 = v186;
    v109 = v170;
    if (*(v50 + 16) && (v126 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v127 & 1) != 0))
    {
      outlined init with copy of Any(*(v50 + 56) + 32 * v126, &v194);
      outlined destroy of AnyHashable(&aBlock);
      if (*(&v195 + 1))
      {
        v128 = v185;
        v129 = swift_dynamicCast();
        v130 = v125;
        (*(v125 + 56))(v109, v129 ^ 1u, 1, v128);
        if (v108(v109, 1, v128) == 1)
        {
          (*(v125 + 8))(v118, v128);
          v36 = v128;
          v110 = v130;
          goto LABEL_116;
        }

        v163 = v169;
        v180(v169, v109, v128);
        Date.timeIntervalSince(_:)();
        v165 = floor(v164 / 60.0);
        if ((*&v165 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v165 > -9.22337204e18)
          {
            v110 = v125;
            v36 = v185;
            if (v165 < 9.22337204e18)
            {
              v166 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
              v167 = swift_isUniquelyReferenced_nonNull_native();
              aBlock = *v25;
              *v25 = -0.0;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v166, 0xD00000000000001DLL, 0x800000021657AC90, v167);
              *v25 = aBlock;
              v168 = *(v110 + 8);
              v168(v163, v36);
              v168(v171, v36);
              goto LABEL_117;
            }

LABEL_146:
            __break(1u);
            return;
          }

LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

LABEL_144:
        __break(1u);
        goto LABEL_145;
      }
    }

    else
    {
      outlined destroy of AnyHashable(&aBlock);
      v194 = 0u;
      v195 = 0u;
    }

    v110 = v125;
    v131 = *(v125 + 8);
    v36 = v185;
    v131(v118, v185);
  }

  else
  {
    v36 = v185;
    v110 = v186;
    (*(v186 + 8))(v118, v185);
    v194 = 0u;
    v195 = 0u;
    v109 = v170;
  }

  outlined destroy of UTType?(&v194, &_sypSgMd);
  (*(v110 + 56))(v109, 1, 1, v36);
LABEL_116:
  outlined destroy of UTType?(v109, &_s10Foundation4DateVSgMd);
  if (!v50)
  {
LABEL_123:
    v194 = 0u;
    v195 = 0u;
    goto LABEL_124;
  }

LABEL_117:
  v187[0] = 0xD000000000000018;
  v187[1] = 0x800000021657AC70;
  AnyHashable.init<A>(_:)();
  if (!*(v50 + 16) || (v132 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v133 & 1) == 0))
  {
    outlined destroy of AnyHashable(&aBlock);
    goto LABEL_123;
  }

  outlined init with copy of Any(*(v50 + 56) + 32 * v132, &v194);
  outlined destroy of AnyHashable(&aBlock);
  if (*(&v195 + 1))
  {
    if (swift_dynamicCast())
    {
      v134 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v135 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = *v25;
      *v25 = -0.0;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v134, 0xD000000000000018, 0x800000021657AC70, v135);
      *v25 = aBlock;
    }

    goto LABEL_125;
  }

LABEL_124:
  outlined destroy of UTType?(&v194, &_sypSgMd);
LABEL_125:
  v136 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x80000002165766D0);
  v192 = partial apply for closure #1 in NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent();
  v193 = v182;
  aBlock = MEMORY[0x277D85DD0];
  v189 = 1107296256;
  v190 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v191 = &block_descriptor_8;
  v137 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v137);

  v138 = specialized MOAngelDefaultsManager.notificationReporterIdentification.getter();
  if (v139)
  {
    v140 = v138;
    v141 = v139;
    v142 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v143 = MEMORY[0x21CE91FC0](v140, v141);

    v144 = [v142 initWithString_];

    swift_beginAccess();
    v145 = swift_isUniquelyReferenced_nonNull_native();
    *&v194 = *v25;
    *v25 = -0.0;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v144, 0x726574726F706572, 0xEC00000044495555, v145);
    *v25 = v194;
    swift_endAccess();
  }

  v146 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v147 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x800000021657ABE0);
  [v146 setDateFormat_];

  v148 = v172;
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v150 = *(v110 + 8);
  v186 = v110 + 8;
  v180 = v150;
  (v150)(v148, v36);
  v151 = [v146 stringFromDate_];

  if (!v151)
  {
    v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v151 = MEMORY[0x21CE91FC0](v152);
  }

  v153 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

  swift_beginAccess();
  v154 = v182;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  *&v194 = *(v154 + 16);
  *(v154 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v153, 0xD000000000000013, 0x800000021657AC00, v155);
  *(v154 + 16) = v194;
  swift_endAccess();
  v156 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v157 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x800000021657AC40);
  v158 = [v156 initWithString_];

  swift_beginAccess();
  v159 = swift_isUniquelyReferenced_nonNull_native();
  *&v194 = *(v154 + 16);
  *(v154 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v158, 0xD000000000000016, 0x800000021657AC20, v159);
  *(v154 + 16) = v194;
  swift_endAccess();
  v160 = MEMORY[0x21CE91FC0](0xD000000000000039, 0x80000002165766F0);
  v192 = partial apply for closure #2 in NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent();
  v193 = v154;
  aBlock = MEMORY[0x277D85DD0];
  v189 = 1107296256;
  v190 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v191 = &block_descriptor_3_0;
  v161 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v161);

  NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:)(v162);

  (*(v176 + 8))(v183, v177);
  (*(v174 + 8))(v173, v175);
  (v180)(v181, v185);
}

Swift::Int __swiftcall NotificationAnalyticsManager.NotificationEvent.calculateNumScheduledDays()()
{
  v0 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if ((v1 & 1) == 0 && v0 == 2 && (v2 = specialized static DefaultsManager.MomentsUIDomain.arrayValueFor(_:)()) != 0 && (v3 = specialized _arrayConditionalCast<A, B>(_:)(v2), , v3))
  {
    v4 = *(v3 + 16);

    return v4;
  }

  else
  {
    v6 = specialized static MOAngelDefaultsManager.arrayValueFor(_:)(0xD000000000000026, 0x800000021657AEB0);
    if (!v6)
    {
      return 0;
    }

    v7 = specialized _arrayConditionalCast<A, B>(_:)(v6);

    if (!v7)
    {
      return 0;
    }

    v8 = *(v7 + 16);

    result = v8;
    if (!v8)
    {
      return 0;
    }
  }

  return result;
}

uint64_t NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v33 - v3;
  if (a1[2] && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x726574726F706572, 0xEC00000044495555), (v6 & 1) != 0) && (v7 = *(a1[7] + 8 * v5), objc_opt_self(), swift_dynamicCastObjCClass()) && (v36 = 0, v37 = 0, v8 = v7, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v8, (v9 = v37) != 0))
  {
    v33[0] = v36;
    if (!a1[2])
    {
LABEL_17:
      v18 = 0;
      v17 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v10 = specialized MOAngelDefaultsManager.notificationReporterIdentification.getter();
    v12 = 0x6E776F6E6B6E75;
    if (v11)
    {
      v12 = v10;
    }

    v33[0] = v12;
    if (v11)
    {
      v9 = v11;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    if (!a1[2])
    {
      goto LABEL_17;
    }
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(0x6974736567677573, 0xEC00000044496E6FLL);
  if ((v14 & 1) == 0)
  {
    goto LABEL_17;
  }

  v15 = *(a1[7] + 8 * v13);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_17;
  }

  v36 = 0;
  v37 = 0;
  v16 = v15;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  v17 = v37;
  if (!v37)
  {
    goto LABEL_17;
  }

  v18 = v36;
LABEL_18:
  v19 = closure #1 in NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:)(a1);
  v21 = v20;
  closure #2 in NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:)(a1, &v36);
  v22 = v36;
  if (a1[2] && (specialized __RawDictionaryStorage.find<A>(_:)(0x6361667265746E69, 0xED00006570795465), (v23 & 1) != 0) && (objc_opt_self(), (v24 = swift_dynamicCastObjCClass()) != 0))
  {
    InterfaceType.init(rawValue:)([v24 integerValue]);
    v25 = v44;
  }

  else
  {
    v25 = 18;
    v44 = 18;
  }

  closure #4 in NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:)(a1, &v36);
  v26 = v36;
  closure #5 in NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:)(a1, &v36);
  v27 = v36;
  v28 = *v33[1];
  v36 = v33[0];
  v37 = v9;
  v38 = v28;
  v39 = v18;
  v40 = v17;
  v41 = v19;
  v43 = v27;
  v42 = (v25 << 16) | (v22 << 8) | (v26 << 24) | v21 & 1;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v29 = specialized static NotificationBiomeManager.generateNotificationBiomeEvent(engagementEvent:realTimeCheckEvent:)(&v36, v34);
  outlined consume of NotificationEventData?(v36, v37);
  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v29;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #6 in NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:), v31);
}

void *closure #1 in NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0x7373656E646F6F67, 0xED000065726F6353);
    if (v1)
    {
      objc_opt_self();
      *&result = COERCE_DOUBLE(swift_dynamicCastObjCClass());
      if (*&result != 0.0)
      {
        [result doubleValue];
        *&result = v3 / 10000.0;
      }
    }

    else
    {
      *&result = 0.0;
    }
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void *closure #2 in NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:)@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (result[2] && (result = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000021657AD50), (v3 & 1) != 0) && (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
  {
    result = [result integerValue];
    v4 = 4;
    if (result < 4)
    {
      v4 = result;
    }
  }

  else
  {
    v4 = 4;
  }

  *a2 = v4;
  return result;
}

void *closure #4 in NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:)@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (result[2] && (result = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x800000021657AD30), (v3 & 1) != 0) && (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
  {
    result = [result integerValue];
    v4 = 3;
    if (result < 3)
    {
      v4 = result;
    }
  }

  else
  {
    v4 = 3;
  }

  *a2 = v4;
  return result;
}

void *closure #5 in NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:)@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (result[2] && (result = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000021657AC70), (v3 & 1) != 0) && (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
  {
    result = [result integerValue];
    v4 = 3;
    if (result < 3)
    {
      v4 = result;
    }
  }

  else
  {
    v4 = 3;
  }

  *a2 = v4;
  return result;
}

uint64_t closure #6 in NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = closure #6 in NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:);
  v2 = *(v0 + 16);

  return NotificationBiomeManager.donateEvent(_:)(v2);
}

{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #6 in NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  if (one-time initialization token for NotificationBiome != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.NotificationBiome);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21607C000, v4, v5, "Failed to donate biome event: %@", v8, 0xCu);
    outlined destroy of UTType?(v9, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v9, -1, -1);
    MEMORY[0x21CE94770](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  v4 = v11;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CE93180](i, a1);
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      *(v11 + 8 * v8 + 32) = v10;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = __CocoaSet.count.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v13 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  v4 = v13;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CE93180](i, a1);
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v13 + 16) = v8 + 1;
      v9 = v13 + 16 * v8;
      *(v9 + 32) = v11;
      *(v9 + 40) = v12;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = __CocoaSet.count.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v15 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  v4 = v15;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CE93180](i, a1);
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = swift_unknownObjectRetain();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      v13 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NSFetchRequestResult_pMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudRecord_pMd);
      if ((swift_dynamicCast() & 1) == 0)
      {

        v12 = 0;
        memset(v11, 0, sizeof(v11));
        outlined destroy of UTType?(v11, &_s9MomentsUI11CloudRecord_pSgMd);
        return 0;
      }

      outlined init with take of MusicPlaybackCoordinatorDelegate(v11, v14);
      outlined init with take of MusicPlaybackCoordinatorDelegate(v14, v11);
      v15 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v4 = v15;
      }

      *(v4 + 16) = v9 + 1;
      outlined init with take of MusicPlaybackCoordinatorDelegate(v11, v4 + 40 * v9 + 32);
      if (v7 == v2)
      {
        return v4;
      }
    }
  }

  v2 = __CocoaSet.count.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, type metadata accessor for CGColorRef);
}

{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, type metadata accessor for AssetViewModel);
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, void (*a2)(void))
{
  v8 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v4)
  {
    return v8;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v7);
    a2(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t partial apply for closure #1 in NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()()
{
  specialized closure #1 in NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()(v0, "[Notification Analytics] result=%s");
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #2 in NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()()
{
  specialized closure #1 in NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()(v0, "[Notification Analytics] internal analytics result=%s");
}

void type metadata completion function for NotificationAnalyticsManager.NotificationEvent()
{
  type metadata accessor for Suggestion?(319, &lazy cache variable for type metadata for Suggestion?, type metadata accessor for Suggestion);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Suggestion?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [AnyHashable : Any]?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Suggestion?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined consume of NotificationEventData?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t partial apply for closure #6 in NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #6 in NotificationAnalyticsManager.NotificationEvent.donateToBiome(analyticsResult:)(a1, v4, v5, v6);
}

uint64_t specialized closure #1 in NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()(uint64_t a1, const char *a2)
{
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static CommonLogger.notification);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315138;
    swift_beginAccess();
    type metadata accessor for NSObject();

    v9 = Dictionary.description.getter();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_21607C000, v5, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CE94770](v8, -1, -1);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  swift_beginAccess();
  return *(a1 + 16);
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

MomentsUI::MediaCategory_optional __swiftcall MediaCategory.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void *MutableMediaFirstPartyViewModel.albumArt.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void one-time initialization function for empty()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v3 = static ScreenSize.zero;
  v4 = type metadata accessor for DateInterval();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v9 = 0;
  v5 = objc_allocWithZone(type metadata accessor for MutableMediaFirstPartyViewModel());
  v6 = v3;
  v7 = specialized MutableMediaFirstPartyViewModel.init(viewport:styles:image:title:subtitle:trackIdentifier:mediaCategory:dateInterval:)(v6, &outlined read-only object #0 of one-time initialization function for empty, 0, 0, 0, 0, 0, 0, 0, &v9, v2);

  static MutableMediaFirstPartyViewModel.empty = v7;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v3 = static ScreenSize.zero;
  v4 = type metadata accessor for DateInterval();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  type metadata accessor for DBAssetModel();
  v5 = type metadata accessor for AssetViewModel();
  v6 = v3;
  static DBAssetModel.subscript.getter(v5, &v11);
  v10 = v11;
  v7 = objc_allocWithZone(v5);
  v8 = specialized AssetViewModel.init(intendedViewport:supportedStyles:baseImage:baseTitle:baseDateInterval:assetClass:)(v6, &outlined read-only object #0 of one-time initialization function for empty, 0, 0, 0, v2, &v10);

  static MutableStateOfMindViewModel.empty = v8;
}

{
  v0 = type metadata accessor for DateInterval();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v3 = static ScreenSize.zero;
  DateInterval.init()();
  v4 = objc_allocWithZone(type metadata accessor for MutableContactViewModel());
  v5 = specialized MutableContactViewModel.init(intendedViewport:supportedStyles:contactIdentifier:dateInterval:)(v3, MEMORY[0x277D84F90], 0, 0xE000000000000000, v2);

  static MutableContactViewModel.empty = v5;
}

{
  v0 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for DateInterval();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v8 = 0;
  v4 = static ScreenSize.zero;
  static Date.now.getter();
  DateInterval.init(start:duration:)();
  v5 = objc_allocWithZone(type metadata accessor for MutableMediaThirdPartyViewModel());
  v6 = specialized MutableMediaThirdPartyViewModel.init(intendedViewport:supportedStyles:appBundleId:trackTitle:artist:album:mediaCategory:backgroundColorString:dateInterval:)(v4, MEMORY[0x277D84F90], 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0, 0, 0, &v8, 0, v3);

  static MutableMediaThirdPartyViewModel.empty = v6;
}

{
  v0 = type metadata accessor for DateInterval();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v3 = static ScreenSize.zero;
  DateInterval.init()();
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v4 whiteColor];
  v7 = objc_allocWithZone(type metadata accessor for MutableReflectionViewModel());
  v8 = specialized MutableReflectionViewModel.init(intendedViewport:supportedStyles:prompts:promptIndex:dateInterval:lightBackgroundColor:darkBackgroundColor:)(v3, MEMORY[0x277D84F90], MEMORY[0x277D84F90], 0, v2, v5, v6);

  static MutableReflectionViewModel.empty = v8;
}

{
  v0 = type metadata accessor for DateInterval();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v6 = 0;
  v7 = 1;
  v3 = static ScreenSize.zero;
  DateInterval.init()();
  v4 = objc_allocWithZone(type metadata accessor for MutableMotionActivityViewModel());
  v5 = specialized MutableMotionActivityViewModel.init(intendedViewport:supportedStyles:image:motionActivity:steps:title:subtitle:dateInterval:)(v3, MEMORY[0x277D84F90], 0, &v6, 0, 0, 0, 0xE000000000000000, 0, 0xE000000000000000, v2);

  static MutableMotionActivityViewModel.empty = v5;
}

{
  v0 = type metadata accessor for DateInterval();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v3 = static ScreenSize.zero;
  DateInterval.init()();
  v4 = objc_allocWithZone(type metadata accessor for MutablePosterViewModel());
  v5 = specialized MutablePosterViewModel.init(intendedViewport:supportedStyles:spotlightIdentifier:bundleID:dateInterval:)(v3, MEMORY[0x277D84F90], 0, 0xE000000000000000, 0, 0xE000000000000000, v2);

  static MutablePosterViewModel.empty = v5;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v3 = static ScreenSize.zero;
  v4 = type metadata accessor for DateInterval();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  type metadata accessor for DBAssetModel();
  v5 = type metadata accessor for AssetViewModel();
  v6 = v3;
  static DBAssetModel.subscript.getter(v5, &v11);
  v10 = v11;
  v7 = objc_allocWithZone(v5);
  v8 = specialized AssetViewModel.init(intendedViewport:supportedStyles:baseImage:baseTitle:baseDateInterval:assetClass:)(v6, &outlined read-only object #0 of one-time initialization function for empty, 0, 0, 0, v2, &v10);

  static MutableWorkoutViewModel.empty = v8;
}

char *MutableMediaFirstPartyViewModel.__allocating_init(viewport:styles:image:title:subtitle:trackIdentifier:mediaCategory:dateInterval:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v19 = objc_allocWithZone(v10);
  v20 = specialized MutableMediaFirstPartyViewModel.init(viewport:styles:image:title:subtitle:trackIdentifier:mediaCategory:dateInterval:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, *(&a9 + 1), a10);

  return v20;
}

id static MutableMediaFirstPartyViewModel.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static MutableMediaFirstPartyViewModel.empty;

  return v1;
}

uint64_t MutableMediaFirstPartyViewModel.mediaCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t MutableMediaFirstPartyViewModel.listener.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_listener;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MutableMediaFirstPartyViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutableMediaFirstPartyViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t MutableMediaFirstPartyViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutableMediaFirstPartyViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

Swift::Void __swiftcall MutableMediaFirstPartyViewModel.registerForPlaybackUpdates()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v15 - v2;
  v4 = OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_listener;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5)
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in MutableMediaFirstPartyViewModel.registerForPlaybackUpdates(), v7);

    v8 = *(v0 + v4);
    if (v8)
    {
      v9 = one-time initialization token for shared;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = static MusicPlaybackCoordinatorService.shared;
      v15[3] = type metadata accessor for MediaPlaybackListener();
      v15[4] = &protocol witness table for MediaPlaybackListener;
      v15[0] = v5;
      v11 = *(*v10 + 352);

      v12 = v11(v15);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v13 = (*(*v8 + 176))(v15);
      *(v14 + 4) = v12 & 1;
      v13(v15, 0);
    }
  }
}

char *MutableMediaFirstPartyViewModel.init(viewport:styles:image:title:subtitle:trackIdentifier:mediaCategory:dateInterval:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11)
{
  v13 = specialized MutableMediaFirstPartyViewModel.init(viewport:styles:image:title:subtitle:trackIdentifier:mediaCategory:dateInterval:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  return v13;
}

void MutableMediaFirstPartyViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory] = 4;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableMediaFirstPartyViewModel.init(from:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_subtitle);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_trackIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory) = 4;
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_listener) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableMediaFirstPartyViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory] = 4;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableMediaFirstPartyViewModel.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_subtitle);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_trackIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory) = 4;
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_listener) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutableMediaFirstPartyViewModel.render()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterImage(imageSource:outputURL:);

  return MutableMediaFirstPartyViewModel.createCoverArtImage()();
}

uint64_t MutableMediaFirstPartyViewModel.createCoverArtImage()()
{
  *(v1 + 64) = v0;
  return MEMORY[0x2822009F8](MutableMediaFirstPartyViewModel.createCoverArtImage(), 0, 0);
}

{
  v1 = (v0[8] + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_trackIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v0[9] = v2;
  if (!v2)
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static CommonLogger.viewModel);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_20;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Missing trackIdentifier";
    goto LABEL_19;
  }

  v4 = v0[8];
  v5 = OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v8 = 0x80000002165763C0;
      v22 = one-time initialization token for sharedPodcastProvider;

      v9 = 0xD000000000000012;
      v10 = &static MediaFirstPartyFetchServiceProviders.sharedPodcastProvider;
      if (v22 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if (v6 - 1 < 2)
  {
    v7 = one-time initialization token for sharedSongProvider;

    v8 = 0xEF636973754D2E65;
    v9 = 0x6C7070612E6D6F63;
    v10 = &static MediaFirstPartyFetchServiceProviders.sharedSongProvider;
    if (v7 == -1)
    {
LABEL_5:
      v0[10] = v8;
      v11 = v0[8];
      v12 = *v10;
      v0[11] = *v10;
      v13 = swift_allocObject();
      v0[12] = v13;
      *(v13 + 16) = 0;

      v14 = swift_task_alloc();
      v0[13] = v14;
      v14[2] = v12;
      v14[3] = v3;
      v14[4] = v2;
      v14[5] = v9;
      v14[6] = v8;
      v14[7] = v11;
      v14[8] = v13;
      v15 = swift_task_alloc();
      v0[14] = v15;
      *v15 = v0;
      v15[1] = MutableMediaFirstPartyViewModel.createCoverArtImage();
      v16 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822007B8](v15, 0, 0, 0xD000000000000015, 0x800000021657AF60, partial apply for closure #1 in MutableMediaFirstPartyViewModel.createCoverArtImage(), v14, v16);
    }

LABEL_14:
    swift_once();
    goto LABEL_5;
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static CommonLogger.viewModel);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Missing bundleIdentifier";
LABEL_19:
    _os_log_impl(&dword_21607C000, v18, v19, v21, v20, 2u);
    MEMORY[0x21CE94770](v20, -1, -1);
  }

LABEL_20:

  v24 = v0[1];

  return v24();
}

{

  return MEMORY[0x2822009F8](MutableMediaFirstPartyViewModel.createCoverArtImage(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

BOOL MutableMediaFirstPartyViewModel.isRenderedBasedOnProperties.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = Image.uiImage.getter();

  if (!v5)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory;
  swift_beginAccess();
  if (*(v1 + v6) == 4)
  {
    return 0;
  }

  v8 = v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle;
  swift_beginAccess();
  return *(v8 + 8) != 0;
}

Swift::Bool __swiftcall MutableMediaFirstPartyViewModel.clearCache()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  *v4 = 0;
  v4[1] = 0;

  v5 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_subtitle);
  swift_beginAccess();
  *v5 = 0;
  v5[1] = 0;

  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  outlined assign with take of DateInterval?(v3, v0 + v7);
  swift_endAccess();
  v8 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_trackIdentifier);
  swift_beginAccess();
  *v8 = 0;
  v8[1] = 0;

  v9 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v10 = *(v0 + v9);
  *(v0 + v9) = 0;

  v11 = OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory;
  swift_beginAccess();
  *(v0 + v11) = 4;
  return 1;
}

void *MutableMediaFirstPartyViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for MediaFirstPartyView());
  return MediaFirstPartyView.init(viewModel:style:)(v1, &v3);
}

uint64_t MutableMediaFirstPartyViewModel.__ivar_destroyer()
{

  swift_weakDestroy();
}

id MutableMediaFirstPartyViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for MediaFirstPartyViewModel.subtitle.getter in conformance MutableMediaFirstPartyViewModel(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t protocol witness for MediaFirstPartyViewModel.mediaCategory.getter in conformance MutableMediaFirstPartyViewModel@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t closure #1 in MutableMediaFirstPartyViewModel.createCoverArtImage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v24 = a5;
  v25 = a6;
  v22 = a3;
  v23 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *&a7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport];
  (*(v13 + 16))(&v22 - v14, a1, v12);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  *(v18 + 24) = a8;
  (*(v13 + 32))(v18 + v17, v15, v12);
  v19 = *(*a2 + 168);
  v20 = a7;

  v19(v22, v23, v24, v25, v16, partial apply for closure #1 in closure #1 in MutableMediaFirstPartyViewModel.createCoverArtImage(), v18);
}

uint64_t closure #1 in closure #1 in MutableMediaFirstPartyViewModel.createCoverArtImage()(void *a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static CommonLogger.viewModel);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21607C000, v7, v8, "Cover art batched fetch complete", v9, 2u);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  if (a1)
  {
    v10 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
    swift_beginAccess();
    v11 = *(a2 + v10);
    *(a2 + v10) = a1;
    v12 = a1;
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21607C000, v13, v14, "Invalid artworkImage", v15, 2u);
      MEMORY[0x21CE94770](v15, -1, -1);
    }
  }

  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
    return CheckedContinuation.resume(returning:)();
  }

  return result;
}

uint64_t specialized MutableMediaFirstPartyViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v27[3] = a3;
  v27[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_subtitle];
  *v8 = 0;
  v8[1] = 0;
  v9 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_trackIdentifier];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory;
  a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory] = 4;
  swift_weakInit();
  *&a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_listener] = 0;
  outlined init with copy of DBObject(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBMediaFirstPartyModel();
  if (swift_dynamicCast())
  {
    v12 = *(v25 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_subtitle);
    v11 = *(v25 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_subtitle + 8);
    swift_beginAccess();
    *v8 = v12;
    v8[1] = v11;

    v14 = *(v25 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier);
    v13 = *(v25 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier + 8);
    swift_beginAccess();
    *v9 = v14;
    v9[1] = v13;

    if (*(v25 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_mediaCategoryRawValue + 8))
    {
      v15 = 4;
    }

    else if (*(v25 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_mediaCategoryRawValue) >= 4uLL)
    {
      v15 = 4;
    }

    else
    {
      v15 = *(v25 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_mediaCategoryRawValue);
    }

    swift_beginAccess();
    a2[v10] = v15;
    swift_weakAssign();

    v17 = specialized AssetViewModel.init(dbObject:)(v16, a2);
    v18 = &v17[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_trackIdentifier];
    swift_beginAccess();
    v20 = *v18;
    v19 = *(v18 + 1);
    type metadata accessor for MediaPlaybackListener();
    v21 = swift_allocObject();
    *(v21 + 48) = 0;
    *(v21 + 52) = 0;
    *(v21 + 24) = 0;
    *(v21 + 16) = 0;
    *(v21 + 56) = MEMORY[0x277D84F90];
    swift_beginAccess();
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    *(v21 + 32) = v17;
    *(v21 + 40) = &protocol witness table for MutableMediaFirstPartyViewModel;
    v22 = OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_listener;
    swift_beginAccess();
    *&v17[v22] = v21;
    v23 = v17;

    MutableMediaFirstPartyViewModel.registerForPlaybackUpdates()();

    __swift_destroy_boxed_opaque_existential_1(v27);
    return v23;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *specialized MutableMediaFirstPartyViewModel.init(viewport:styles:image:title:subtitle:trackIdentifier:mediaCategory:dateInterval:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11)
{
  v12 = v11;
  v52 = a8;
  v44 = a7;
  v50 = a5;
  v49 = a4;
  v45 = a3;
  v48 = a2;
  v47 = a1;
  v51 = a11;
  v53 = a9;
  ObjectType = swift_getObjectType();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - v16;
  v18 = *a10;
  v19 = &v11[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_subtitle];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v11[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_trackIdentifier];
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory;
  v11[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory] = 4;
  swift_weakInit();
  *&v11[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_listener] = 0;
  swift_beginAccess();
  v22 = v44;
  *v19 = a6;
  v19[1] = v22;

  swift_beginAccess();
  v23 = v53;
  *v20 = a8;
  v20[1] = v23;

  swift_beginAccess();
  v11[v21] = v18;
  swift_weakAssign();
  outlined init with copy of DateInterval?(a11, v17);
  type metadata accessor for DBAssetModel();
  v24 = v45;
  v25 = v45;
  v26 = v47;
  v27 = ObjectType;
  static DBAssetModel.subscript.getter(ObjectType, v54);
  LODWORD(v47) = v54[0];
  v28 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v11[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v29 = &v11[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v31 = type metadata accessor for DateInterval();
  (*(*(v31 - 8) + 56))(&v12[v30], 1, 1, v31);
  UUID.init()();
  v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v26;
  *&v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v48;
  swift_beginAccess();
  v32 = *&v12[v28];
  *&v12[v28] = v24;
  v33 = v26;
  v34 = v25;

  swift_beginAccess();
  v35 = v50;
  *v29 = v49;
  v29[1] = v35;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v17, &v12[v30]);
  v36 = swift_endAccess();
  v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v47;
  (*(v27 + 328))(v56, v36);
  LOBYTE(v25) = v56[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v37 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v37 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v37 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v37 + 112) = v25;
  *&v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v37;
  v38 = type metadata accessor for AssetViewModel();
  v55.receiver = v12;
  v55.super_class = v38;
  v39 = objc_msgSendSuper2(&v55, sel_init);

  outlined destroy of DateInterval?(v17);
  type metadata accessor for MediaPlaybackListener();
  v40 = swift_allocObject();
  *(v40 + 48) = 0;
  *(v40 + 52) = 0;
  *(v40 + 24) = 0;
  *(v40 + 16) = 0;
  *(v40 + 56) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *(v40 + 16) = v52;
  *(v40 + 24) = v53;
  *(v40 + 32) = v39;
  *(v40 + 40) = &protocol witness table for MutableMediaFirstPartyViewModel;
  v41 = OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_listener;
  swift_beginAccess();
  *&v39[v41] = v40;
  v42 = v39;

  MutableMediaFirstPartyViewModel.registerForPlaybackUpdates()();

  outlined destroy of DateInterval?(v51);
  return v42;
}

uint64_t specialized MutableMediaFirstPartyViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return specialized MutableMediaFirstPartyViewModel.init(dbObject:)(v9, v11, a3, a4);
}

uint64_t partial apply for closure #1 in MutableMediaFirstPartyViewModel.registerForPlaybackUpdates()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in ClientMediaFirstPartyViewModel.init(dbObject:)(a1, v4, v5, v6);
}

uint64_t outlined assign with take of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MediaCategory and conformance MediaCategory()
{
  result = lazy protocol witness table cache variable for type MediaCategory and conformance MediaCategory;
  if (!lazy protocol witness table cache variable for type MediaCategory and conformance MediaCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaCategory and conformance MediaCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaCategory and conformance MediaCategory;
  if (!lazy protocol witness table cache variable for type MediaCategory and conformance MediaCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaCategory and conformance MediaCategory);
  }

  return result;
}

uint64_t type metadata accessor for MutableMediaFirstPartyViewModel()
{
  result = type metadata singleton initialization cache for MutableMediaFirstPartyViewModel;
  if (!type metadata singleton initialization cache for MutableMediaFirstPartyViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in MutableMediaFirstPartyViewModel.createCoverArtImage()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return closure #1 in closure #1 in MutableMediaFirstPartyViewModel.createCoverArtImage()(a1, v3, v4);
}

uint64_t *CommonTheme.Color.motionRedExtraFaded.unsafeMutableAddressor()
{
  if (one-time initialization token for motionRedExtraFaded != -1)
  {
    swift_once();
  }

  return &static CommonTheme.Color.motionRedExtraFaded;
}

uint64_t *CommonTheme.Color.motionRedFaded.unsafeMutableAddressor()
{
  if (one-time initialization token for motionRedFaded != -1)
  {
    swift_once();
  }

  return &static CommonTheme.Color.motionRedFaded;
}

id static CommonTheme.Color.keyColor(publicUI:)(char a1)
{
  v2 = objc_opt_self();
  v3 = &selRef_systemBlueColor;
  if ((a1 & 1) == 0)
  {
    v3 = &selRef_systemIndigoColor;
  }

  v4 = [v2 *v3];

  return v4;
}

Swift::Void __swiftcall UILabel.styleDateWithWeekday(weekday:)(Swift::String weekday)
{
  v2 = v1;
  object = weekday._object;
  countAndFlagsBits = weekday._countAndFlagsBits;
  v5 = [v2 attributedText];
  if (!v5)
  {
    return;
  }

  v6 = [v2 attributedText];
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v14 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

  v8 = [v2 font];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 fontDescriptor];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];

  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];

  v13._countAndFlagsBits = countAndFlagsBits;
  v13._object = object;
  NSMutableAttributedString.setPrefixFont(font:forText:)(v12, v13);

  [v2 setAttributedText_];
}

id static CommonTheme.Color.secondaryColor(publicUI:)(char a1)
{
  v2 = objc_opt_self();
  v3 = &selRef_systemBlueColor;
  if ((a1 & 1) == 0)
  {
    v3 = &selRef_systemIndigoColor;
  }

  v4 = [v2 *v3];
  v5 = [v4 colorWithAlphaComponent_];

  return v5;
}

id static CommonTheme.Color.textPrimary()()
{
  v0 = [objc_opt_self() labelColor];

  return v0;
}

id static CommonTheme.Color.textWhite()()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id one-time initialization function for exerciseGreen()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  static CommonTheme.Color.exerciseGreen = result;
  return result;
}

uint64_t *CommonTheme.Color.exerciseGreen.unsafeMutableAddressor()
{
  if (one-time initialization token for exerciseGreen != -1)
  {
    swift_once();
  }

  return &static CommonTheme.Color.exerciseGreen;
}

id one-time initialization function for exerciseGreenFaded()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:0.18];
  static CommonTheme.Color.exerciseGreenFaded = result;
  return result;
}

uint64_t *CommonTheme.Color.exerciseGreenFaded.unsafeMutableAddressor()
{
  if (one-time initialization token for exerciseGreenFaded != -1)
  {
    swift_once();
  }

  return &static CommonTheme.Color.exerciseGreenFaded;
}

id one-time initialization function for distanceBlue()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.349019608 green:0.666666667 blue:0.878431373 alpha:1.0];
  static CommonTheme.Color.distanceBlue = result;
  return result;
}

uint64_t *CommonTheme.Color.distanceBlue.unsafeMutableAddressor()
{
  if (one-time initialization token for distanceBlue != -1)
  {
    swift_once();
  }

  return &static CommonTheme.Color.distanceBlue;
}

id one-time initialization function for timeYellow()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.976470588 green:0.847058824 blue:0.28627451 alpha:1.0];
  static CommonTheme.Color.timeYellow = result;
  return result;
}

uint64_t *CommonTheme.Color.timeYellow.unsafeMutableAddressor()
{
  if (one-time initialization token for timeYellow != -1)
  {
    swift_once();
  }

  return &static CommonTheme.Color.timeYellow;
}

id one-time initialization function for movePink()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.980392157 green:0.0666666667 blue:0.309803922 alpha:1.0];
  static CommonTheme.Color.movePink = result;
  return result;
}

uint64_t *CommonTheme.Color.movePink.unsafeMutableAddressor()
{
  if (one-time initialization token for movePink != -1)
  {
    swift_once();
  }

  return &static CommonTheme.Color.movePink;
}

id one-time initialization function for heartRed()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.921568627 green:0.305882353 blue:0.243137255 alpha:1.0];
  static CommonTheme.Color.heartRed = result;
  return result;
}

uint64_t *CommonTheme.Color.heartRed.unsafeMutableAddressor()
{
  if (one-time initialization token for heartRed != -1)
  {
    swift_once();
  }

  return &static CommonTheme.Color.heartRed;
}

id one-time initialization function for motionRed()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.854901961 green:0.533333333 blue:0.533333333 alpha:1.0];
  static CommonTheme.Color.motionRed = result;
  return result;
}

uint64_t *CommonTheme.Color.motionRed.unsafeMutableAddressor()
{
  if (one-time initialization token for motionRed != -1)
  {
    swift_once();
  }

  return &static CommonTheme.Color.motionRed;
}

id one-time initialization function for motionRedExtraFaded()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.854901961 green:0.533333333 blue:0.533333333 alpha:0.2];
  static CommonTheme.Color.motionRedExtraFaded = result;
  return result;
}

id one-time initialization function for motionRedFaded()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.854901961 green:0.533333333 blue:0.533333333 alpha:0.3];
  static CommonTheme.Color.motionRedFaded = result;
  return result;
}

id static CommonTheme.Color.fadedPrimary.getter(SEL *a1, double a2)
{
  v3 = [objc_opt_self() *a1];
  v4 = [v3 colorWithAlphaComponent_];

  return v4;
}

UIFont __swiftcall UIFont.withWeight(_:)(UIFontWeight a1)
{
  v2 = v1;
  v4 = [v1 fontDescriptor];
  v5 = [v4 fontAttributes];

  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = v6;
  v7 = *MEMORY[0x277D74380];
  if (*(v6 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x277D74380]), (v9 & 1) != 0) && (outlined init with copy of Any(*(v6 + 56) + 32 * v8, &v29), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaypGMd), (swift_dynamicCast() & 1) != 0))
  {
    v10 = *&v28[0];
  }

  else
  {
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v11 = *MEMORY[0x277D74430];
  type metadata accessor for UIFontWeight(0);
  v30 = v12;
  *&v29 = a1;
  outlined init with take of Any(&v29, v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v11, isUniquelyReferenced_nonNull_native);
  specialized Dictionary._Variant.removeValue(forKey:)(*MEMORY[0x277D74340], &v29);
  outlined destroy of UTType?(&v29, &_sypSgMd);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaypGMd);
  *&v29 = v10;
  outlined init with take of Any(&v29, v28);
  v14 = v31;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v7, v15);
  v31 = v14;
  v16 = *MEMORY[0x277D74328];
  v17 = [v2 familyName];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v30 = MEMORY[0x277D837D0];
  *&v29 = v18;
  *(&v29 + 1) = v20;
  outlined init with take of Any(&v29, v28);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v16, v21);
  v22 = objc_allocWithZone(MEMORY[0x277D74310]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v24 = [v22 initWithFontAttributes_];

  [v2 pointSize];
  v26 = [objc_opt_self() fontWithDescriptor:v24 size:v25];

  return v26;
}

id static UIFont.tightLeadingBoldRounded(_:)(uint64_t a1)
{
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v2 = [v1 fontDescriptorWithSymbolicTraits_];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 fontDescriptorWithDesign_];

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];

  return v4;
}

UIFontDescriptor __swiftcall UIFontDescriptor.withWeight(_:)(UIFontWeight a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA50;
  v4 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
  v5 = swift_initStackObject();
  v6 = MEMORY[0x277D74430];
  *(v5 + 16) = xmmword_21658CA50;
  v7 = *v6;
  *(v5 + 32) = *v6;
  *(v5 + 40) = a1;
  v8 = v4;
  v9 = v7;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v5);
  swift_setDeallocating();
  outlined destroy of UTType?(v5 + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd);
  *(inited + 40) = v10;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UTType?(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v1 fontDescriptorByAddingAttributes_];

  return v12;
}

id static CommonTheme.Font.body.getter()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];

  return v0;
}

void static CommonTheme.Font.bodyBold.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle_];
  v2 = [v1 fontDescriptor];
  v3 = [v2 fontDescriptorWithSymbolicTraits_];

  if (v3)
  {
    [v0 fontWithDescriptor:v3 size:0.0];
  }

  else
  {
    __break(1u);
  }
}

UIFont_optional __swiftcall UIFont.withSymbolicTraits(_:)(UIFontDescriptorSymbolicTraits a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v1 fontDescriptor];
  v5 = [v4 symbolicTraits];

  v6 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v6)
  {
    v8 = [objc_opt_self() fontWithDescriptor:v6 size:0.0];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  result.value.super.isa = v9;
  result.is_nil = v7;
  return result;
}

void UIFont.bold.getter(uint64_t a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    [objc_opt_self() fontWithDescriptor:v4 size:0.0];
  }

  else
  {
    __break(1u);
  }
}

Class static CommonTheme.Font.footnoteEmphSemibold.getter(void *a1, UIFontWeight *a2)
{
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  isa = UIFont.withWeight(_:)(*a2).super.isa;

  return isa;
}

id static CommonTheme.Font.footnoteBoldTightLeading.getter()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v1 = [v0 fontDescriptorWithSymbolicTraits_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() fontWithDescriptor:v1 size:0.0];

  return v2;
}

id static UIFont.tightLeadingBold(_:)(uint64_t a1)
{
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v2 = [v1 fontDescriptorWithSymbolicTraits_];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_opt_self() fontWithDescriptor:v2 size:0.0];

  return v3;
}

id static CommonTheme.Font.subheadlineBoldRounded.getter(void *a1)
{
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v2 = [v1 fontDescriptorWithSymbolicTraits_];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 fontDescriptorWithDesign_];

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];

  return v4;
}

id static CommonTheme.Font.headline.getter(void *a1)
{
  v1 = [objc_opt_self() preferredFontForTextStyle_];

  return v1;
}

void static CommonTheme.Font.footnoteEmphasized.getter(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle_];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithSymbolicTraits_];

  if (v7)
  {
    [v4 fontWithDescriptor:v7 size:0.0];
  }

  else
  {
    __break(1u);
  }
}

UIFont __swiftcall UIFont.withTraits(traits:)(UIFontDescriptorSymbolicTraits traits)
{
  v2 = *&traits;
  v3 = [v1 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v6 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id UIFontDescriptor.tightLeadingBold.getter()
{
  v1 = [v0 fontDescriptorWithSymbolicTraits_];

  return v1;
}

id static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:a6];
  v11 = v10;
  if ((a3 & 0x100000000) == 0)
  {
    v12 = [v10 fontDescriptorWithSymbolicTraits_];
    if (v12)
    {
      v13 = v12;

      v11 = v13;
    }
  }

  if ((a5 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21658CA50;
    v15 = *MEMORY[0x277D74380];
    *(inited + 32) = *MEMORY[0x277D74380];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
    v16 = swift_initStackObject();
    v17 = MEMORY[0x277D74430];
    *(v16 + 16) = xmmword_21658CA50;
    v18 = *v17;
    *(v16 + 32) = *v17;
    *(v16 + 40) = a4;
    v19 = v15;
    v20 = v18;
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v16);
    swift_setDeallocating();
    outlined destroy of UTType?(v16 + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd);
    *(inited + 40) = v21;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of UTType?(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
    type metadata accessor for UIFontDescriptorAttributeName(0);
    lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v23 = [v11 fontDescriptorByAddingAttributes_];

    v11 = v23;
  }

  if (a2)
  {
    v24 = [v11 fontDescriptorWithDesign_];
    if (v24)
    {
      v25 = v24;

      v11 = v25;
    }
  }

  v26 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];

  return v26;
}

id closure #1 in static UIFont.preferredFont(forTextStyle:applying:compatibleWith:)@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6 > 1)
  {
    v30 = a3;
    if (v6 == 2)
    {
      v29 = a2[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21658CA50;
      v19 = *MEMORY[0x277D74338];
      *(inited + 32) = *MEMORY[0x277D74338];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySo26UIFontDescriptorFeatureKeyaSiGGMd);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21658CA50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26UIFontDescriptorFeatureKeya_SitGMd);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_21658CA60;
      v22 = *MEMORY[0x277D76908];
      *(v21 + 32) = *MEMORY[0x277D76908];
      v23 = *MEMORY[0x277D76900];
      *(v21 + 40) = v5;
      *(v21 + 48) = v23;
      *(v21 + 56) = v29;
      v24 = v19;
      v25 = v22;
      v26 = v23;
      v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_SiTt0g5Tf4g_n(v21);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26UIFontDescriptorFeatureKeya_SitMd);
      swift_arrayDestroy();
      *(v20 + 32) = v27;
      *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo26UIFontDescriptorFeatureKeyaSiGGMd);
      *(inited + 40) = v20;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of UTType?(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
      type metadata accessor for UIFontDescriptorAttributeName(0);
      lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
      v15.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v16 = [v4 fontDescriptorByAddingAttributes_];
    }

    else
    {
      if (v6 != 3)
      {
        result = [v4 fontDescriptorWithDesign_];
        if (!result)
        {
          result = v4;
        }

        goto LABEL_12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
      v7 = swift_initStackObject();
      *(v7 + 16) = xmmword_21658CA50;
      v8 = *MEMORY[0x277D74380];
      *(v7 + 32) = *MEMORY[0x277D74380];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
      v9 = swift_initStackObject();
      v10 = MEMORY[0x277D74430];
      *(v9 + 16) = xmmword_21658CA50;
      v11 = *v10;
      *(v9 + 32) = *v10;
      *(v9 + 40) = v5;
      v12 = v8;
      v13 = v11;
      v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v9);
      swift_setDeallocating();
      outlined destroy of UTType?(v9 + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
      *(v7 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd);
      *(v7 + 40) = v14;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(v7);
      swift_setDeallocating();
      outlined destroy of UTType?(v7 + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
      type metadata accessor for UIFontDescriptorAttributeName(0);
      lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
      v15.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v16 = [v4 fontDescriptorByAddingAttributes_];
    }

    v28 = v16;

    result = v28;
LABEL_12:
    a3 = v30;
    goto LABEL_13;
  }

  if (*(a2 + 16))
  {
    result = [v4 fontDescriptorWithSymbolicTraits_];
    if (result)
    {
      goto LABEL_13;
    }

LABEL_15:
    result = v4;
    goto LABEL_13;
  }

  result = [v4 fontDescriptorWithSymbolicTraits_];
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_13:
  *a3 = result;
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, type metadata accessor for CloudDevice, type metadata accessor for CloudDevice, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a3);
}

{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for UUID();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for UUID();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, type metadata accessor for CloudMetaDevice, type metadata accessor for CloudMetaDevice, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a3);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Decodable & Encodable((*(v10 + 56) + 48 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for IndexPath();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for IndexPath();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.ZoneConfiguration();
    v18 = *(Changes - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, Changes);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = Changes;
  }

  else
  {
    v16 = type metadata accessor for CKSyncEngine.FetchChangesOptions.ZoneConfiguration();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(unint64_t, uint64_t)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    outlined init with take of CloudDevice(v19 + *(v27 + 72) * v16, a7, a4);
    a5(v16, v18);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

id specialized static CommonTheme.Font.subheadlineMedium.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle_];
  v2 = [v1 fontDescriptor];
  v3 = *MEMORY[0x277D74410];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA50;
  v5 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
  v6 = swift_initStackObject();
  v7 = MEMORY[0x277D74430];
  *(v6 + 16) = xmmword_21658CA50;
  v8 = *v7;
  *(v6 + 32) = *v7;
  *(v6 + 40) = v3;
  v9 = v5;
  v10 = v8;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v6);
  swift_setDeallocating();
  outlined destroy of UTType?(v6 + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd);
  *(inited + 40) = v11;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UTType?(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v2 fontDescriptorByAddingAttributes_];

  [v1 pointSize];
  v14 = [v0 fontWithDescriptor:v13 size:?];

  return v14;
}

void specialized static CommonTheme.Font.footnoteEmphasizedFontSmallCaps.getter()
{
  v0 = objc_opt_self();
  v24 = *MEMORY[0x277D76968];
  v1 = [v0 preferredFontForTextStyle_];
  v2 = [v1 fontDescriptor];
  v3 = [v2 fontDescriptorWithSymbolicTraits_];

  if (v3)
  {
    v4 = [v0 fontWithDescriptor:v3 size:0.0];

    v5 = [v4 fontDescriptor];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21658CA50;
    v7 = *MEMORY[0x277D74338];
    *(inited + 32) = *MEMORY[0x277D74338];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySo26UIFontDescriptorFeatureKeyaSiGGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21658CA50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26UIFontDescriptorFeatureKeya_SitGMd);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_21658CA60;
    v10 = *MEMORY[0x277D76908];
    *(v9 + 32) = *MEMORY[0x277D76908];
    v11 = *MEMORY[0x277D76900];
    *(v9 + 40) = 38;
    *(v9 + 48) = v11;
    *(v9 + 56) = 1;
    v12 = v7;
    v13 = v10;
    v14 = v11;
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_SiTt0g5Tf4g_n(v9);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26UIFontDescriptorFeatureKeya_SitMd);
    swift_arrayDestroy();
    *(v8 + 32) = v15;
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo26UIFontDescriptorFeatureKeyaSiGGMd);
    *(inited + 40) = v8;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of UTType?(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
    type metadata accessor for UIFontDescriptorAttributeName(0);
    lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = [v5 fontDescriptorByAddingAttributes_];

    v18 = [v0 preferredFontForTextStyle_];
    v19 = [v18 fontDescriptor];
    v20 = [v19 fontDescriptorWithSymbolicTraits_];

    if (v20)
    {
      v21 = [v0 fontWithDescriptor:v20 size:0.0];

      [v21 pointSize];
      v23 = v22;

      [v0 fontWithDescriptor:v17 size:v23];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id specialized static CommonTheme.Font.footnoteShortFont()()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle_];
  v2 = [v1 fontDescriptor];
  v3 = [v1 fontDescriptor];
  v4 = [v3 symbolicTraits];

  v5 = [v2 fontDescriptorWithSymbolicTraits_];
  if (v5)
  {
    v6 = [v0 fontWithDescriptor:v5 size:0.0];
  }

  else
  {

    return 0;
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName()
{
  result = lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName;
  if (!lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName)
  {
    type metadata accessor for UIFontDescriptorAttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName);
  }

  return result;
}

id specialized static CommonTheme.Font.footnoteEmphShortFont()()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle_];
  v2.super.isa = UIFont.withWeight(_:)(*MEMORY[0x277D74420]).super.isa;

  v3 = [(objc_class *)v2.super.isa fontDescriptor];
  v4 = [(objc_class *)v2.super.isa fontDescriptor];
  v5 = [v4 symbolicTraits];

  v6 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v6)
  {
    v7 = [v0 fontWithDescriptor:v6 size:0.0];
  }

  else
  {

    return 0;
  }

  return v7;
}

void specialized static CommonTheme.Font.caption1BoldTightLeading.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle_];
  v2 = [v1 fontDescriptor];
  v3 = [v2 fontDescriptorWithSymbolicTraits_];

  if (v3)
  {
    v4 = [v0 fontWithDescriptor:v3 size:0.0];

    v5 = [v4 fontDescriptor];
    v6 = [v5 fontDescriptorWithSymbolicTraits_];

    if (v6)
    {
      [v0 fontWithDescriptor:v6 size:0.0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void specialized static CommonTheme.Styles.styleViewAsPlatter(view:traitCollection:)(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() whiteColor];
  v5 = v4;
  if (a2 == 2)
  {
    v6 = [v4 colorWithAlphaComponent_];

    v7 = 1050253722;
    v5 = v6;
  }

  else
  {
    v7 = 1041865114;
  }

  [a1 setBackgroundColor_];

  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [a1 layer];
  [v8 setMasksToBounds_];

  v9 = [a1 layer];
  [v9 setCornerRadius_];

  v10 = [a1 layer];
  v11 = [objc_opt_self() blackColor];
  v12 = [v11 CGColor];

  [v10 setShadowColor_];
  v13 = [a1 layer];
  LODWORD(v14) = v7;
  [v13 setShadowOpacity_];

  v15 = [a1 layer];
  [v15 setShadowOffset_];

  v16 = [a1 layer];
  [v16 setShadowRadius_];

  v17 = [a1 layer];
  [v17 setCornerCurve_];

  v18 = [a1 layer];
  [v18 setShadowPathIsBounds_];
}

id specialized static UIFont.preferredFont(forTextStyle:applying:compatibleWith:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:a3];
  v4 = *(a2 + 16);
  v5 = v15;
  v6 = v5;
  v7 = v5;
  if (v4)
  {
    v8 = (a2 + 48);
    v7 = v5;
    do
    {
      v9 = *v8;
      v13 = *(v8 - 1);
      v14 = v9;
      closure #1 in static UIFont.preferredFont(forTextStyle:applying:compatibleWith:)(&v15, &v13, &v12);

      v7 = v12;
      v15 = v12;
      v8 += 24;
      --v4;
    }

    while (v4);
  }

  v10 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  return v10;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UIFont.TextStyleOption(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UIFont.TextStyleOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t outlined init with take of CloudDevice(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

{
  return (*(a1 + 32))();
}

id PrivacyBadgeView.iconView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI16PrivacyBadgeView_iconView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyBadgeView.iconView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI16PrivacyBadgeView_iconView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void closure #1 in variable initialization expression of PrivacyBadgeView.label()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle_];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont_];
    type metadata accessor for PrivacyBadgeView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v12._object = 0x800000021657B0A0;
    v8._object = 0x8000000216577C20;
    v12._countAndFlagsBits = 0xD00000000000001DLL;
    v8._countAndFlagsBits = 0xD000000000000016;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v12);

    v11 = MEMORY[0x21CE91FC0](v10._countAndFlagsBits, v10._object);

    [v0 setText_];

    [v0 setAdjustsFontForContentSizeCategory_];
    [v0 setMaximumContentSizeCategory_];
  }

  else
  {
    __break(1u);
  }
}

id PrivacyBadgeView.label.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI16PrivacyBadgeView_label;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyBadgeView.label.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI16PrivacyBadgeView_label;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PrivacyBadgeView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PrivacyBadgeView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PrivacyBadgeView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI16PrivacyBadgeView_iconView;
  v2 = CGRectMake_0();
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for PrivacyBadgeIconView()) initWithFrame_];
  v6 = OBJC_IVAR____TtC9MomentsUI16PrivacyBadgeView_label;
  closure #1 in variable initialization expression of PrivacyBadgeView.label();
  *(v0 + v6) = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall PrivacyBadgeView.flipToPrivacyIconAndDismissAfterDelay()()
{
  v1 = v0;
  v2 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(0.33, 0.0);
  v4 = v3;
  v5 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(0.67, 1.0);
  v7 = v6;
  v8 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(0.8, 0.7);
  v10 = v9;
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
  (*((*v11 & *v12) + 0x70))();

  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  v14 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v27 = partial apply for closure #1 in PrivacyBadgeView.flipToPrivacyIconAndDismissAfterDelay();
  v28 = v13;
  v23 = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = thunk for @escaping @callee_guaranteed () -> ();
  v26 = &block_descriptor_9;
  v15 = _Block_copy(&v23);
  v16 = v1;

  v17 = [v14 initWithDuration:v15 controlPoint1:0.167 controlPoint2:v2 animations:{v4, v8, v10}];
  _Block_release(v15);
  [v17 startAnimationAfterDelay_];
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v27 = partial apply for closure #2 in PrivacyBadgeView.flipToPrivacyIconAndDismissAfterDelay();
  v28 = v18;
  v23 = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = thunk for @escaping @callee_guaranteed () -> ();
  v26 = &block_descriptor_6_1;
  v20 = _Block_copy(&v23);
  v21 = v16;

  v22 = [v19 initWithDuration:v20 controlPoint1:0.167 controlPoint2:v2 animations:{v4, v5, v7}];
  _Block_release(v20);
  [v22 startAnimationAfterDelay_];
}

uint64_t PrivacyBadgeView.labelText.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
  v2 = [v1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void PrivacyBadgeView.labelFont.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
  v2 = [v1 font];

  if (!v2)
  {
    __break(1u);
  }
}

double PrivacyBadgeView.imageFrame.getter()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v2 = v1();
  v3 = v1();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 convertRect:v0 toCoordinateSpace:{v5, v7, v9, v11}];
  v13 = v12;

  return v13;
}

double PrivacyBadgeView.labelFrame.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
  v3 = (*((*v1 & *v0) + 0x60))();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 convertRect:v0 toCoordinateSpace:{v5, v7, v9, v11}];
  v13 = v12;

  return v13;
}

id PrivacyBadgeView.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect_];

  return v3;
}

id PrivacyBadgeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrivacyBadgeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized PrivacyBadgeView.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI16PrivacyBadgeView_iconView;
  v2 = CGRectMake_0();
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for PrivacyBadgeIconView()) initWithFrame_];
  v6 = OBJC_IVAR____TtC9MomentsUI16PrivacyBadgeView_label;
  closure #1 in variable initialization expression of PrivacyBadgeView.label();
  *&v0[v6] = v7;
  v8 = [objc_opt_self() effectWithStyle_];
  v44.receiver = v0;
  v44.super_class = type metadata accessor for PrivacyBadgeView();
  v43 = v8;
  v9 = objc_msgSendSuper2(&v44, sel_initWithEffect_, v43);
  [v9 setEffect_];

  v10 = OBJC_IVAR____TtC9MomentsUI16PrivacyBadgeView_iconView;
  swift_beginAccess();
  [*&v9[v10] setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v9 contentView];
  [v11 addSubview_];

  v12 = [v9 contentView];
  v13 = OBJC_IVAR____TtC9MomentsUI16PrivacyBadgeView_label;
  swift_beginAccess();
  [v12 addSubview_];

  [v9 _setCornerRadius_];
  v42 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_216594730;
  v15 = [*&v9[v10] widthAnchor];
  v16 = [v15 constraintEqualToConstant_];

  *(v14 + 32) = v16;
  v17 = [*&v9[v10] heightAnchor];
  v18 = [v17 constraintEqualToConstant_];

  *(v14 + 40) = v18;
  v19 = [*&v9[v10] leadingAnchor];
  v20 = [v9 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:2.0];

  *(v14 + 48) = v21;
  v22 = [*&v9[v10] topAnchor];
  v23 = [v9 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:2.0];

  *(v14 + 56) = v24;
  v25 = [v9 bottomAnchor];
  v26 = [*&v9[v10] bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:2.0];

  *(v14 + 64) = v27;
  v28 = [*&v9[v13] leadingAnchor];
  v29 = [*&v9[v10] trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:3.0];

  *(v14 + 72) = v30;
  v31 = [*&v9[v13] topAnchor];
  v32 = [v9 topAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v14 + 80) = v33;
  v34 = [*&v9[v13] bottomAnchor];
  v35 = [v9 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v14 + 88) = v36;
  v37 = [v9 trailingAnchor];

  v38 = [*&v9[v13] trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:6.0];

  *(v14 + 96) = v39;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints_];

  return v9;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id MapLocation.location.getter()
{
  v1 = (*(*v0 + 168))();
  v2 = (*(*v0 + 192))();
  v3 = objc_allocWithZone(MEMORY[0x277CE41F8]);

  return [v3 initWithLatitude:v1 longitude:v2];
}

id PrivacyBadgeIconView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PrivacyBadgeIconView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall PrivacyBadgeIconView.flipToPrivacyIconAfterDelay()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  type metadata accessor for OS_dispatch_queue();
  v14 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v8 + 8);
  v18(v11, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in PrivacyBadgeIconView.flipToPrivacyIconAfterDelay();
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_10;
  v16 = _Block_copy(aBlock);
  v17 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x21CE929F0](v13, v6, v3, v16);
  _Block_release(v16);

  (*(v21 + 8))(v3, v1);
  (*(v19 + 8))(v6, v20);
  v18(v13, v7);
}

void closure #1 in PrivacyBadgeIconView.flipToPrivacyIconAfterDelay()(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_C1_1];
  v3 = *&a1[OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_C1_1 + 8];
  v4 = *&a1[OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_C1_2];
  v5 = *&a1[OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_C1_2 + 8];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = 2097408;
  v7 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v11[4] = partial apply for closure #1 in closure #1 in PrivacyBadgeIconView.flipToPrivacyIconAfterDelay();
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_7;
  v8 = _Block_copy(v11);
  v9 = a1;

  v10 = [v7 initWithDuration:v8 controlPoint1:0.5 controlPoint2:v2 animations:{v3, v4, v5}];
  _Block_release(v8);
  [v10 startAnimation];
}

id PrivacyBadgeIconView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrivacyBadgeIconView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized PrivacyBadgeIconView.init(frame:)()
{
  v1 = &v0[OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_C1_1];
  *v1 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(0.33, 0.0);
  *(v1 + 1) = v2;
  v3 = &v0[OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_C1_2];
  *v3 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(0.2, 1.0);
  *(v3 + 1) = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_suggestionsImageView;
  v6 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x800000021657B150);
  v7 = objc_opt_self();
  v8 = [v7 imageNamed_];

  v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v0[v5] = v9;
  v10 = OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_privacyImageView;
  v11 = MEMORY[0x21CE91FC0](0x4979636176697250, 0xEB000000006E6F63);
  v12 = [v7 imageNamed_];

  v13 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v0[v10] = v13;
  v14 = *MEMORY[0x277CBF3A0];
  v15 = *(MEMORY[0x277CBF3A0] + 8);
  v16 = *(MEMORY[0x277CBF3A0] + 16);
  v17 = *(MEMORY[0x277CBF3A0] + 24);
  v36.receiver = v0;
  v36.super_class = type metadata accessor for PrivacyBadgeIconView();
  v18 = objc_msgSendSuper2(&v36, sel_initWithFrame_, v14, v15, v16, v17);
  v19 = OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_suggestionsImageView;
  v20 = *&v18[OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_suggestionsImageView];
  v21 = v18;
  [v20 setAutoresizingMask_];
  v22 = *&v18[v19];
  v23 = v21;
  v24 = v22;
  [v23 bounds];
  [v24 setFrame_];

  [v23 addSubview_];
  v25 = OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_privacyImageView;
  [*&v23[OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_privacyImageView] setAutoresizingMask_];
  v26 = *&v23[v25];
  [v23 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [v26 setFrame_];
  [*&v23[v25] setHidden_];
  [v23 addSubview_];

  return v23;
}

void specialized PrivacyBadgeIconView.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_C1_1;
  *v1 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(0.33, 0.0);
  *(v1 + 8) = v2;
  v3 = v0 + OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_C1_2;
  *v3 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(0.2, 1.0);
  *(v3 + 8) = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_suggestionsImageView;
  v6 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x800000021657B150);
  v7 = objc_opt_self();
  v8 = [v7 imageNamed_];

  v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *(v0 + v5) = v9;
  v10 = OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_privacyImageView;
  v11 = MEMORY[0x21CE91FC0](0x4979636176697250, 0xEB000000006E6F63);
  v12 = [v7 imageNamed_];

  v13 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *(v0 + v10) = v13;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id partial apply for closure #1 in closure #1 in PrivacyBadgeIconView.flipToPrivacyIconAfterDelay()()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = objc_opt_self();
  v4 = *(v2 + OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_suggestionsImageView);
  v5 = *(v2 + OBJC_IVAR____TtC9MomentsUI20PrivacyBadgeIconView_privacyImageView);

  return [v3 transitionFromView:v4 toView:v5 duration:v1 options:0 completion:0.5];
}

void *WorkoutView.__allocating_init(viewModel:style:)(void *a1, char *a2)
{
  v5 = objc_allocWithZone(v2);
  v13 = *a2;
  v6 = a1;
  v7 = LabeledImageView.init(viewModel:style:)(v6, &v13);
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 systemBlackColor];
    [v9 setBackgroundColor_];

    if (one-time initialization token for accessibilityString != -1)
    {
      swift_once();
    }

    v11 = MEMORY[0x21CE91FC0](static Constants.accessibilityString, *(&static Constants.accessibilityString + 1));
    [v9 setAccessibilityLabel_];
  }

  return v7;
}

void WorkoutView.primaryLabelConfiguration.getter()
{
  [objc_opt_self() whiteColor];
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v1 = [v0 fontDescriptorWithSymbolicTraits_];

  if (v1)
  {
    [objc_opt_self() fontWithDescriptor:v1 size:0.0];
  }

  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle_];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits_];

  if (v5)
  {
    v6 = [v2 fontWithDescriptor:v5 size:0.0];
  }

  else
  {
    __break(1u);
  }
}

id WorkoutView.secondaryLabelConfiguration.getter()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = *MEMORY[0x277D76968];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontDescriptorWithTextStyle_];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  v5 = MEMORY[0x277D74368];
  if (v4)
  {
    v6 = [v4 fontDescriptorWithDesign_];

    if (v6)
    {
      [objc_opt_self() fontWithDescriptor:v6 size:0.0];
    }
  }

  v7 = [v2 preferredFontDescriptorWithTextStyle_];
  v8 = [v7 fontDescriptorWithSymbolicTraits_];

  if (v8)
  {
    v9 = [v8 fontDescriptorWithDesign_];

    if (v9)
    {
      [objc_opt_self() fontWithDescriptor:v9 size:0.0];
    }
  }

  return v0;
}

void *WorkoutView.init(viewModel:style:)(void *a1, char *a2)
{
  v9 = *a2;
  v2 = a1;
  v3 = LabeledImageView.init(viewModel:style:)(v2, &v9);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 systemBlackColor];
    [v5 setBackgroundColor_];

    if (one-time initialization token for accessibilityString != -1)
    {
      swift_once();
    }

    v7 = MEMORY[0x21CE91FC0](static Constants.accessibilityString, *(&static Constants.accessibilityString + 1));
    [v5 setAccessibilityLabel_];
  }

  return v3;
}

id WorkoutView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t WorkoutView.updateViews(for:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x2822009F8](WorkoutView.updateViews(for:), v4, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  *(*v1 + 160) = a1;

  v4 = *(v2 + 120);
  v5 = *(v2 + 112);

  return MEMORY[0x2822009F8](WorkoutView.updateViews(for:), v5, v4);
}

{
  v2 = *v1;
  *(*v1 + 184) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return MEMORY[0x2822009F8](WorkoutView.updateViews(for:), v4, v3);
}

uint64_t WorkoutView.updateViews(for:)()
{
  v27 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = Strong;
  if (!Strong)
  {
    goto LABEL_9;
  }

  v2 = Strong;
  ObjectType = swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (!v4)
  {

LABEL_9:

LABEL_10:
    v14 = *(v0 + 8);

    return v14();
  }

  v5 = v4;
  v6 = (*(v4 + 112))(ObjectType, v4);
  v7 = *(v0 + 96);
  if (v6)
  {
    *(v0 + 136) = *(v7 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_backgroundImageView);
    v8 = (*(v5 + 120))(ObjectType, v5);
    *(v0 + 144) = v8;
    if (v8)
    {
      v9 = *(v0 + 96);
      v10 = OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle;
      swift_beginAccess();
      *(v0 + 192) = v9[v10];
      v11 = [v9 traitCollection];
      v12 = [v11 horizontalSizeClass];

      if (v12 == 2)
      {
        v13 = 2;
      }

      else
      {
        v23 = [*(v0 + 96) traitCollection];
        v24 = [v23 verticalSizeClass];

        if (v24 == 2)
        {
          v13 = 2;
        }

        else
        {
          v13 = 1;
        }
      }

      v25 = swift_task_alloc();
      *(v0 + 152) = v25;
      *v25 = v0;
      v25[1] = WorkoutView.updateViews(for:);

      return Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)((v0 + 192), 1, v13, 0, 0xD000000000000011, 0x800000021657B1C0);
    }

    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v20 = *(v0 + 96);
    [v18 setImage_];
    [v18 setHidden_];
    v21 = *(v20 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_spotlightView);
    v22 = OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle;
    swift_beginAccess();
    v26 = *(v20 + v22);
    (*((*MEMORY[0x277D85000] & *v21) + 0x68))(&v26);
    [v21 setHidden_];
    [*(v20 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView) setHidden_];
    WorkoutView.adjustRouteContentRect()();

    goto LABEL_10;
  }

  *(v0 + 168) = *(v7 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView);
  v16 = swift_task_alloc();
  *(v0 + 176) = v16;
  *v16 = v0;
  v16[1] = WorkoutView.updateViews(for:);
  v17 = *(v0 + 88);

  return LabeledImageView.image(style:)(v17);
}

{
  v10 = v0;
  v1 = v0[20];

  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[12];
  [v2 setImage_];

  [v2 setHidden_];
  v5 = *(v4 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_spotlightView);
  v6 = OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle;
  swift_beginAccess();
  v9 = *(v4 + v6);
  (*((*MEMORY[0x277D85000] & *v5) + 0x68))(&v9);
  [v5 setHidden_];
  [*(v4 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView) setHidden_];
  WorkoutView.adjustRouteContentRect()();

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[23];
  v2 = v0[21];

  v3 = *(v2 + OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView);
  if (v1)
  {
    v1 = v0[23];
    v4 = v3;
    v5 = [v1 imageWithRenderingMode_];
  }

  else
  {
    v6 = v3;
    v5 = 0;
  }

  v7 = v0[21];
  v8 = v0[16];
  v9 = v0[12];
  [v3 setImage_];

  [*(v9 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_backgroundImageView) setHidden_];
  [*(v9 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_spotlightView) setHidden_];
  [v7 setHidden_];

  v10 = v0[1];

  return v10();
}

void WorkoutView.adjustRouteContentRect()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 0.15;
  v4 = 0.425;
  if (v2 <= 3)
  {
    v6 = v2 >= 2 && v2 == 2;
    v5 = 0.425;
    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_12:
    v3 = 0.25;
    v5 = 0.375;
    v4 = 0.4375;
    goto LABEL_14;
  }

  if (*(v0 + v1) <= 5u)
  {
    if (v2 != 4)
    {
      v5 = 0.0;
      v3 = 0.35;
      v4 = 0.61875;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v5 = 0.425;
  if (v2 - 6 < 2)
  {
LABEL_14:
    v7 = [*(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_backgroundImageView) layer];
    [v7 setContentsRect_];
  }
}

uint64_t WorkoutView.attributedSubtitle.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (!v3)
    {
      goto LABEL_48;
    }

    v4 = v3;
    v5 = OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle;
    swift_beginAccess();
    v6 = v0[v5];
    if (v6 <= 3)
    {
      if (v6 == 2)
      {
        ObjectType = swift_getObjectType();
        v29 = v4[7](ObjectType, v4);
        if (v30)
        {
          v31 = specialized static WorkoutView.attributedStringForDistance(_:)(v29, v30);
        }

        else
        {
          v60 = v4[11](ObjectType, v4);
          if (v61)
          {
            v31 = specialized static WorkoutView.attributedStringForDuration(_:)(v60, v61);
          }

          else
          {
            v66 = v4[5](ObjectType, v4);
            if (!v67)
            {
              goto LABEL_48;
            }

            v31 = specialized static WorkoutView.attributedStringForActiveEnergyBurned(_:)(v66, v67);
          }
        }

        v57 = v31;

        goto LABEL_53;
      }

      if (v6 != 3)
      {
LABEL_20:
        if (one-time initialization token for views != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, static CommonLogger.views);
        v33 = v0;
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v68 = v37;
          *v36 = 136315394;
          v38 = [v33 description];
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;

          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v68);

          *(v36 + 4) = v42;
          *(v36 + 12) = 2080;
          v43 = String.init<A>(describing:)();
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v68);

          *(v36 + 14) = v45;
          _os_log_impl(&dword_21607C000, v34, v35, "[%s] skipping updating data label for style=%s", v36, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v37, -1, -1);
          MEMORY[0x21CE94770](v36, -1, -1);
        }

        return 0;
      }

      v8 = swift_getObjectType();
      v20 = v4[7](v8, v4);
      if (v21)
      {
        v22 = v21;
        v23 = v20;
        v24 = v4[11];
        v25 = v24(v8, v4);
        if (v26)
        {
          v27 = specialized static WorkoutView.attributedStringForDistance(_:duration:)(v23, v22, v25, v26);
          goto LABEL_45;
        }

        v58 = v24(v8, v4);
      }

      else
      {
        v58 = v4[11](v8, v4);
      }

      if (!v59)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v6 - 4 >= 3 && v6 != 8)
      {
        goto LABEL_20;
      }

      v8 = swift_getObjectType();
      v9 = v4[7](v8, v4);
      if (v10)
      {
        v11 = v10;
        v12 = v9;
        v13 = v4[11](v8, v4);
        if (v14)
        {
          v15 = v13;
          v16 = v14;
          v17 = v4[5](v8, v4);
          if (v18)
          {
            v19 = specialized static WorkoutView.attributedStringForDistance(_:duration:activeEnergyBurned:)(v12, v11, v15, v16, v17, v18);
LABEL_31:
            v57 = v19;

LABEL_46:

LABEL_53:

            return v57;
          }
        }
      }

      v46 = v4[9](v8, v4);
      if (v47)
      {
        v48 = v46;
        v49 = v47;
        v50 = v4[11];
        v51 = v50(v8, v4);
        if (v52)
        {
          v53 = v52;
          v54 = v51;
          v55 = v4[5](v8, v4);
          if (v56)
          {
            v19 = specialized static WorkoutView.attributedStringForDuration(_:activeEnergyBurned:averageHeartRate:)(v54, v53, v55, v56, v48, v49);
            goto LABEL_31;
          }
        }

        v58 = v50(v8, v4);
      }

      else
      {
        v58 = v4[11](v8, v4);
      }

      if (!v59)
      {
LABEL_48:

        return 0;
      }
    }

    v62 = v59;
    v63 = v58;
    v64 = v4[5](v8, v4);
    if (!v65)
    {

      goto LABEL_48;
    }

    v27 = specialized static WorkoutView.attributedStringForDuration(_:activeEnergyBurned:)(v63, v62, v64, v65);
LABEL_45:
    v57 = v27;

    goto LABEL_46;
  }

  return result;
}

id WorkoutView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized static WorkoutView.attributedStringForDistance(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v48 = 0x800000021657B200;
  v55._object = 0x800000021657B200;
  v9._countAndFlagsBits = 16421;
  v9._object = 0xE200000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v55);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v11 = swift_allocObject();
  v46 = xmmword_21658CA50;
  *(v11 + 16) = xmmword_21658CA50;
  *(v11 + 56) = MEMORY[0x277D837D0];
  v47 = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 64) = v47;
  v49 = a1;
  v50 = a2;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v12 = static String.localizedStringWithFormat(_:_:)();
  v14 = v13;

  v15 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v16 = MEMORY[0x21CE91FC0](v12, v14);
  v17 = [v15 initWithString_];

  if (one-time initialization token for distanceBlue != -1)
  {
    swift_once();
  }

  v18 = static CommonTheme.Color.distanceBlue;
  v19 = *MEMORY[0x277D740C0];
  v20 = [v17 mutableString];
  v21 = MEMORY[0x21CE91FC0](v12, v14);

  v22 = [v20 rangeOfString:v21 options:1];
  v24 = v23;

  [v17 addAttribute:v19 value:v18 range:{v22, v24}];
  v25 = [v7 mainBundle];
  v56._object = v48;
  v26._countAndFlagsBits = 16421;
  v26._object = 0xE200000000000000;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v56);

  v28 = swift_allocObject();
  *(v28 + 16) = v46;
  v53 = v49;
  v54 = v50;
  CharacterSet.init(charactersIn:)();
  lazy protocol witness table accessor for type String and conformance String();
  v29 = MEMORY[0x277D837D0];
  v30 = StringProtocol.trimmingCharacters(in:)();
  v32 = v31;
  (*(v51 + 8))(v6, v52);
  v33 = v47;
  *(v28 + 56) = v29;
  *(v28 + 64) = v33;
  *(v28 + 32) = v30;
  *(v28 + 40) = v32;
  v34 = static String.localizedStringWithFormat(_:_:)();
  v36 = v35;

  specialized static CommonTheme.Font.footnoteEmphasizedFontSmallCaps.getter();
  v38 = v37;
  v39 = *MEMORY[0x277D740A8];
  v40 = [v17 mutableString];
  v41 = MEMORY[0x21CE91FC0](v34, v36);

  v42 = [v40 rangeOfString:v41 options:1];
  v44 = v43;

  [v17 addAttribute:v39 value:v38 range:{v42, v44}];
  return v17;
}

id specialized static WorkoutView.attributedStringForDuration(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v48 = 0x800000021657B220;
  v55._object = 0x800000021657B220;
  v9._countAndFlagsBits = 16421;
  v9._object = 0xE200000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v55);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v11 = swift_allocObject();
  v46 = xmmword_21658CA50;
  *(v11 + 16) = xmmword_21658CA50;
  *(v11 + 56) = MEMORY[0x277D837D0];
  v47 = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 64) = v47;
  v49 = a1;
  v50 = a2;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v12 = static String.localizedStringWithFormat(_:_:)();
  v14 = v13;

  v15 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v16 = MEMORY[0x21CE91FC0](v12, v14);
  v17 = [v15 initWithString_];

  if (one-time initialization token for timeYellow != -1)
  {
    swift_once();
  }

  v18 = static CommonTheme.Color.timeYellow;
  v19 = *MEMORY[0x277D740C0];
  v20 = [v17 mutableString];
  v21 = MEMORY[0x21CE91FC0](v12, v14);

  v22 = [v20 rangeOfString:v21 options:1];
  v24 = v23;

  [v17 addAttribute:v19 value:v18 range:{v22, v24}];
  v25 = [v7 mainBundle];
  v56._object = v48;
  v26._countAndFlagsBits = 16421;
  v26._object = 0xE200000000000000;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v56);

  v28 = swift_allocObject();
  *(v28 + 16) = v46;
  v53 = v49;
  v54 = v50;
  CharacterSet.init(charactersIn:)();
  lazy protocol witness table accessor for type String and conformance String();
  v29 = MEMORY[0x277D837D0];
  v30 = StringProtocol.trimmingCharacters(in:)();
  v32 = v31;
  (*(v51 + 8))(v6, v52);
  v33 = v47;
  *(v28 + 56) = v29;
  *(v28 + 64) = v33;
  *(v28 + 32) = v30;
  *(v28 + 40) = v32;
  v34 = static String.localizedStringWithFormat(_:_:)();
  v36 = v35;

  specialized static CommonTheme.Font.footnoteEmphasizedFontSmallCaps.getter();
  v38 = v37;
  v39 = *MEMORY[0x277D740A8];
  v40 = [v17 mutableString];
  v41 = MEMORY[0x21CE91FC0](v34, v36);

  v42 = [v40 rangeOfString:v41 options:1];
  v44 = v43;

  [v17 addAttribute:v39 value:v38 range:{v42, v44}];
  return v17;
}

id specialized static WorkoutView.attributedStringForActiveEnergyBurned(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v48 = 0x800000021657B240;
  v55._object = 0x800000021657B240;
  v9._countAndFlagsBits = 16421;
  v9._object = 0xE200000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0xD00000000000001CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v55);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v11 = swift_allocObject();
  v46 = xmmword_21658CA50;
  *(v11 + 16) = xmmword_21658CA50;
  *(v11 + 56) = MEMORY[0x277D837D0];
  v47 = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 64) = v47;
  v49 = a1;
  v50 = a2;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v12 = static String.localizedStringWithFormat(_:_:)();
  v14 = v13;

  v15 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v16 = MEMORY[0x21CE91FC0](v12, v14);
  v17 = [v15 initWithString_];

  if (one-time initialization token for movePink != -1)
  {
    swift_once();
  }

  v18 = static CommonTheme.Color.movePink;
  v19 = *MEMORY[0x277D740C0];
  v20 = [v17 mutableString];
  v21 = MEMORY[0x21CE91FC0](v12, v14);

  v22 = [v20 rangeOfString:v21 options:1];
  v24 = v23;

  [v17 addAttribute:v19 value:v18 range:{v22, v24}];
  v25 = [v7 mainBundle];
  v56._object = v48;
  v26._countAndFlagsBits = 16421;
  v26._object = 0xE200000000000000;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0xD00000000000001CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v56);

  v28 = swift_allocObject();
  *(v28 + 16) = v46;
  v53 = v49;
  v54 = v50;
  CharacterSet.init(charactersIn:)();
  lazy protocol witness table accessor for type String and conformance String();
  v29 = MEMORY[0x277D837D0];
  v30 = StringProtocol.trimmingCharacters(in:)();
  v32 = v31;
  (*(v51 + 8))(v6, v52);
  v33 = v47;
  *(v28 + 56) = v29;
  *(v28 + 64) = v33;
  *(v28 + 32) = v30;
  *(v28 + 40) = v32;
  v34 = static String.localizedStringWithFormat(_:_:)();
  v36 = v35;

  specialized static CommonTheme.Font.footnoteEmphasizedFontSmallCaps.getter();
  v38 = v37;
  v39 = *MEMORY[0x277D740A8];
  v40 = [v17 mutableString];
  v41 = MEMORY[0x21CE91FC0](v34, v36);

  v42 = [v40 rangeOfString:v41 options:1];
  v44 = v43;

  [v17 addAttribute:v39 value:v38 range:{v42, v44}];
  return v17;
}

id specialized static WorkoutView.attributedStringForDistance(_:duration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v108 = a3;
  v105 = type metadata accessor for CharacterSet();
  v109 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v101 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v112._object = 0x800000021657B260;
  v10._countAndFlagsBits = 0x402520B7C2204025;
  v112._countAndFlagsBits = 0xD00000000000001DLL;
  v10._object = 0xA800000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v112);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21658CA60;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v15 = v14;
  v16 = lazy protocol witness table accessor for type String and conformance String();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 96) = v15;
  *(v13 + 104) = v16;
  v17 = v108;
  *(v13 + 64) = v16;
  *(v13 + 72) = v17;
  *(v13 + 80) = a4;

  v104 = a4;

  v18 = static String.localizedStringWithFormat(_:_:)();
  v20 = v19;

  v21 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v22 = MEMORY[0x21CE91FC0](v18, v20);

  v23 = [v21 initWithString_];

  v102 = v8;
  v24 = [v8 mainBundle];
  v99 = 0x800000021657B200;
  v113._object = 0x800000021657B200;
  v25._countAndFlagsBits = 16421;
  v25._object = 0xE200000000000000;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v113._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v113);

  v107 = v12;
  v27 = swift_allocObject();
  v106 = xmmword_21658CA50;
  *(v27 + 16) = xmmword_21658CA50;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = v16;
  v103 = v16;
  v28 = a1;
  *(v27 + 32) = a1;
  *(v27 + 40) = a2;

  v29 = static String.localizedStringWithFormat(_:_:)();
  v31 = v30;

  if (one-time initialization token for distanceBlue != -1)
  {
    swift_once();
  }

  v32 = static CommonTheme.Color.distanceBlue;
  v33 = *MEMORY[0x277D740C0];
  v34 = [v23 mutableString];
  v35 = MEMORY[0x21CE91FC0](v29, v31);

  v36 = [v34 rangeOfString:v35 options:1];
  v38 = v37;

  v100 = v33;
  [v23 addAttribute:v33 value:v32 range:{v36, v38}];
  v39 = [v102 mainBundle];
  v114._object = v99;
  v40._countAndFlagsBits = 16421;
  v40._object = 0xE200000000000000;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v114._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v114);

  v42 = swift_allocObject();
  *(v42 + 16) = v106;
  v110 = v28;
  v111 = a2;
  v43 = v101;
  CharacterSet.init(charactersIn:)();
  v44 = lazy protocol witness table accessor for type String and conformance String();
  v45 = MEMORY[0x277D837D0];
  v98 = v44;
  v46 = StringProtocol.trimmingCharacters(in:)();
  v48 = v47;
  v49 = *(v109 + 8);
  v109 += 8;
  v97 = v49;
  v49(v43, v105);
  *(v42 + 56) = v45;
  v50 = v103;
  *(v42 + 64) = v103;
  *(v42 + 32) = v46;
  *(v42 + 40) = v48;
  v51 = static String.localizedStringWithFormat(_:_:)();
  v53 = v52;

  specialized static CommonTheme.Font.footnoteEmphasizedFontSmallCaps.getter();
  v55 = v54;
  v56 = *MEMORY[0x277D740A8];
  v57 = [v23 mutableString];
  v58 = MEMORY[0x21CE91FC0](v51, v53);

  v59 = [v57 rangeOfString:v58 options:1];
  v61 = v60;

  v99 = v56;
  [v23 addAttribute:v56 value:v55 range:{v59, v61}];

  v62 = v102;
  v63 = [v102 mainBundle];
  v115._object = 0x800000021657B220;
  v64._countAndFlagsBits = 16421;
  v64._object = 0xE200000000000000;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  v115._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v64, 0, v63, v65, v115);

  v66 = swift_allocObject();
  *(v66 + 16) = v106;
  *(v66 + 56) = MEMORY[0x277D837D0];
  *(v66 + 64) = v50;
  *(v66 + 32) = v108;
  *(v66 + 40) = v104;

  v67 = static String.localizedStringWithFormat(_:_:)();
  v69 = v68;

  if (one-time initialization token for timeYellow != -1)
  {
    swift_once();
  }

  v70 = static CommonTheme.Color.timeYellow;
  v71 = [v23 mutableString];
  v72 = MEMORY[0x21CE91FC0](v67, v69);

  v73 = [v71 rangeOfString:v72 options:1];
  v75 = v74;

  [v23 addAttribute:v100 value:v70 range:{v73, v75}];
  v76 = [v62 mainBundle];
  v116._object = 0x800000021657B220;
  v77._countAndFlagsBits = 16421;
  v77._object = 0xE200000000000000;
  v78._countAndFlagsBits = 0;
  v78._object = 0xE000000000000000;
  v116._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v77, 0, v76, v78, v116);

  v79 = swift_allocObject();
  *(v79 + 16) = v106;
  v110 = v108;
  v111 = v104;
  CharacterSet.init(charactersIn:)();
  v80 = MEMORY[0x277D837D0];
  v81 = StringProtocol.trimmingCharacters(in:)();
  v83 = v82;
  v97(v43, v105);
  v84 = v103;
  *(v79 + 56) = v80;
  *(v79 + 64) = v84;
  *(v79 + 32) = v81;
  *(v79 + 40) = v83;
  v85 = static String.localizedStringWithFormat(_:_:)();
  v87 = v86;

  specialized static CommonTheme.Font.footnoteEmphasizedFontSmallCaps.getter();
  v89 = v88;
  v90 = [v23 mutableString];
  v91 = MEMORY[0x21CE91FC0](v85, v87);

  v92 = [v90 rangeOfString:v91 options:1];
  v94 = v93;

  [v23 addAttribute:v99 value:v89 range:{v92, v94}];
  return v23;
}

id specialized static WorkoutView.attributedStringForDuration(_:activeEnergyBurned:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v110 = a3;
  v100 = a1;
  v108 = type metadata accessor for CharacterSet();
  v111 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v114._object = 0x800000021657B300;
  v9._countAndFlagsBits = 0x402520B7C2204025;
  v114._countAndFlagsBits = 0xD000000000000029;
  v9._object = 0xA800000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v114);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21658CA60;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = lazy protocol witness table accessor for type String and conformance String();
  v15 = v100;
  *(v12 + 32) = v100;
  *(v12 + 40) = a2;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  v16 = v110;
  *(v12 + 64) = v14;
  *(v12 + 72) = v16;
  *(v12 + 80) = a4;

  v107 = a4;

  v17 = static String.localizedStringWithFormat(_:_:)();
  v19 = v18;

  v20 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v21 = MEMORY[0x21CE91FC0](v17, v19);

  v104 = [v20 initWithString_];

  v106 = v7;
  v22 = [v7 mainBundle];
  v115._object = 0x800000021657B220;
  v23._countAndFlagsBits = 16421;
  v23._object = 0xE200000000000000;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v115._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v115);

  v102 = v11;
  v25 = swift_allocObject();
  v109 = xmmword_21658CA50;
  *(v25 + 16) = xmmword_21658CA50;
  *(v25 + 56) = MEMORY[0x277D837D0];
  *(v25 + 64) = v14;
  v103 = v14;
  *(v25 + 32) = v15;
  *(v25 + 40) = a2;
  v26 = a2;

  v27 = static String.localizedStringWithFormat(_:_:)();
  v29 = v28;

  if (one-time initialization token for timeYellow != -1)
  {
    swift_once();
  }

  v30 = static CommonTheme.Color.timeYellow;
  v31 = *MEMORY[0x277D740C0];
  v32 = v104;
  v33 = [v104 mutableString];
  v34 = MEMORY[0x21CE91FC0](v27, v29);

  v35 = [v33 rangeOfString:v34 options:1];
  v37 = v36;

  v101 = v31;
  [v32 addAttribute:v31 value:v30 range:{v35, v37}];
  v38 = v106;
  v39 = [v106 mainBundle];
  v116._object = 0x800000021657B220;
  v40._countAndFlagsBits = 16421;
  v40._object = 0xE200000000000000;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v116._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v116);

  v42 = swift_allocObject();
  *(v42 + 16) = v109;
  v112 = v15;
  v113 = v26;
  v43 = v105;
  CharacterSet.init(charactersIn:)();
  v44 = lazy protocol witness table accessor for type String and conformance String();
  v45 = MEMORY[0x277D837D0];
  v99 = v44;
  v46 = StringProtocol.trimmingCharacters(in:)();
  v48 = v47;
  v49 = *(v111 + 8);
  v111 += 8;
  v98 = v49;
  v49(v43, v108);
  *(v42 + 56) = v45;
  v50 = v103;
  *(v42 + 64) = v103;
  *(v42 + 32) = v46;
  *(v42 + 40) = v48;
  v51 = static String.localizedStringWithFormat(_:_:)();
  v53 = v52;

  specialized static CommonTheme.Font.footnoteEmphasizedFontSmallCaps.getter();
  v55 = v54;
  v56 = *MEMORY[0x277D740A8];
  v57 = [v32 mutableString];
  v58 = MEMORY[0x21CE91FC0](v51, v53);

  v59 = [v57 rangeOfString:v58 options:1];
  v61 = v60;

  v100 = v56;
  [v32 addAttribute:v56 value:v55 range:{v59, v61}];

  v62 = [v38 mainBundle];
  v117._object = 0x800000021657B240;
  v117._countAndFlagsBits = 0xD00000000000001CLL;
  v63._countAndFlagsBits = 16421;
  v63._object = 0xE200000000000000;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v63, 0, v62, v64, v117);

  v65 = swift_allocObject();
  *(v65 + 16) = v109;
  *(v65 + 56) = MEMORY[0x277D837D0];
  *(v65 + 64) = v50;
  *(v65 + 32) = v110;
  *(v65 + 40) = v107;

  v66 = static String.localizedStringWithFormat(_:_:)();
  v68 = v67;

  v69 = v50;
  if (one-time initialization token for movePink != -1)
  {
    swift_once();
  }

  v70 = static CommonTheme.Color.movePink;
  v71 = v104;
  v72 = [v104 mutableString];
  v73 = MEMORY[0x21CE91FC0](v66, v68);

  v74 = [v72 rangeOfString:v73 options:1];
  v76 = v75;

  [v71 addAttribute:v101 value:v70 range:{v74, v76}];
  v77 = [v106 mainBundle];
  v118._object = 0x800000021657B240;
  v118._countAndFlagsBits = 0xD00000000000001CLL;
  v78._countAndFlagsBits = 16421;
  v78._object = 0xE200000000000000;
  v79._countAndFlagsBits = 0;
  v79._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v78, 0, v77, v79, v118);

  v80 = swift_allocObject();
  *(v80 + 16) = v109;
  v112 = v110;
  v113 = v107;
  v81 = v105;
  CharacterSet.init(charactersIn:)();
  v82 = MEMORY[0x277D837D0];
  v83 = StringProtocol.trimmingCharacters(in:)();
  v85 = v84;
  v98(v81, v108);
  *(v80 + 56) = v82;
  *(v80 + 64) = v69;
  *(v80 + 32) = v83;
  *(v80 + 40) = v85;
  v86 = static String.localizedStringWithFormat(_:_:)();
  v88 = v87;

  specialized static CommonTheme.Font.footnoteEmphasizedFontSmallCaps.getter();
  v90 = v89;
  v91 = [v71 mutableString];
  v92 = MEMORY[0x21CE91FC0](v86, v88);

  v93 = [v91 rangeOfString:v92 options:1];
  v95 = v94;

  [v71 addAttribute:v100 value:v90 range:{v93, v95}];
  return v71;
}

void *specialized static WorkoutView.attributedStringForDistance(_:duration:activeEnergyBurned:)(void *a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6)
{
  v142 = a1;
  v143 = a5;
  v145 = a3;
  v139 = a2;
  v144 = type metadata accessor for CharacterSet();
  v148 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v135 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v152._object = 0x800000021657B280;
  v12._countAndFlagsBits = 0x402520B7C2204025;
  v12._object = 0xAE00402520B7C220;
  v152._countAndFlagsBits = 0xD000000000000033;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v152);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21658E190;
  v16 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v17 = lazy protocol witness table accessor for type String and conformance String();
  v18 = v139;
  *(v15 + 32) = a1;
  *(v15 + 40) = v18;
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  v19 = v145;
  *(v15 + 64) = v17;
  *(v15 + 72) = v19;
  *(v15 + 80) = a4;
  *(v15 + 136) = v16;
  *(v15 + 144) = v17;
  *(v15 + 112) = v143;
  *(v15 + 120) = a6;

  v141 = a4;

  v136 = a6;

  v20 = static String.localizedStringWithFormat(_:_:)();
  v22 = v21;

  v23 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v24 = MEMORY[0x21CE91FC0](v20, v22);

  v134 = [v23 initWithString_];

  v147 = v10;
  v25 = [v10 mainBundle];
  v153._object = 0x800000021657B200;
  v26._countAndFlagsBits = 16421;
  v26._object = 0xE200000000000000;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v153._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v153);

  v146 = v14;
  v28 = swift_allocObject();
  v149 = xmmword_21658CA50;
  *(v28 + 16) = xmmword_21658CA50;
  *(v28 + 56) = v16;
  *(v28 + 64) = v17;
  v29 = v139;
  v137 = v17;
  *(v28 + 32) = v142;
  *(v28 + 40) = v29;

  v30 = static String.localizedStringWithFormat(_:_:)();
  v32 = v31;

  if (one-time initialization token for distanceBlue != -1)
  {
    swift_once();
  }

  v33 = static CommonTheme.Color.distanceBlue;
  v34 = *MEMORY[0x277D740C0];
  v35 = v134;
  v36 = [v134 mutableString];
  v37 = MEMORY[0x21CE91FC0](v30, v32);

  v38 = [v36 rangeOfString:v37 options:1];
  v40 = v39;

  v140 = v34;
  [v35 addAttribute:v34 value:v33 range:{v38, v40}];
  v41 = [v147 mainBundle];
  v154._object = 0x800000021657B200;
  v42._countAndFlagsBits = 16421;
  v42._object = 0xE200000000000000;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v154._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v154);

  v44 = swift_allocObject();
  *(v44 + 16) = v149;
  v150 = v142;
  v151 = v29;
  v45 = v135;
  CharacterSet.init(charactersIn:)();
  v46 = lazy protocol witness table accessor for type String and conformance String();
  v47 = MEMORY[0x277D837D0];
  v139 = v46;
  v48 = StringProtocol.trimmingCharacters(in:)();
  v50 = v49;
  v51 = *(v148 + 8);
  v52 = v35;
  v148 += 8;
  v138 = v51;
  v51(v45, v144);
  v53 = v137;
  *(v44 + 56) = v47;
  *(v44 + 64) = v53;
  *(v44 + 32) = v48;
  *(v44 + 40) = v50;
  v54 = static String.localizedStringWithFormat(_:_:)();
  v56 = v55;

  specialized static CommonTheme.Font.footnoteEmphasizedFontSmallCaps.getter();
  v58 = v57;
  v59 = *MEMORY[0x277D740A8];
  v60 = [v52 mutableString];
  v61 = MEMORY[0x21CE91FC0](v54, v56);

  v62 = [v60 rangeOfString:v61 options:1];
  v64 = v63;

  v142 = v59;
  [v52 addAttribute:v59 value:v58 range:{v62, v64}];

  v65 = [v147 mainBundle];
  v155._object = 0x800000021657B220;
  v66._countAndFlagsBits = 16421;
  v66._object = 0xE200000000000000;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  v155._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, v65, v67, v155);

  v68 = swift_allocObject();
  *(v68 + 16) = v149;
  *(v68 + 56) = MEMORY[0x277D837D0];
  *(v68 + 64) = v53;
  *(v68 + 32) = v145;
  *(v68 + 40) = v141;

  v69 = static String.localizedStringWithFormat(_:_:)();
  v71 = v70;

  if (one-time initialization token for timeYellow != -1)
  {
    swift_once();
  }

  v72 = static CommonTheme.Color.timeYellow;
  v73 = [v52 mutableString];
  v74 = MEMORY[0x21CE91FC0](v69, v71);

  v75 = [v73 rangeOfString:v74 options:1];
  v77 = v76;

  [v52 addAttribute:v140 value:v72 range:{v75, v77}];
  v78 = v147;
  v79 = [v147 mainBundle];
  v156._object = 0x800000021657B220;
  v80._countAndFlagsBits = 16421;
  v80._object = 0xE200000000000000;
  v81._countAndFlagsBits = 0;
  v81._object = 0xE000000000000000;
  v156._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v80, 0, v79, v81, v156);

  v82 = swift_allocObject();
  *(v82 + 16) = v149;
  v150 = v145;
  v151 = v141;
  CharacterSet.init(charactersIn:)();
  v83 = MEMORY[0x277D837D0];
  v84 = StringProtocol.trimmingCharacters(in:)();
  v86 = v85;
  v138(v45, v144);
  *(v82 + 56) = v83;
  v87 = v137;
  *(v82 + 64) = v137;
  *(v82 + 32) = v84;
  *(v82 + 40) = v86;
  v88 = static String.localizedStringWithFormat(_:_:)();
  v90 = v89;

  specialized static CommonTheme.Font.footnoteEmphasizedFontSmallCaps.getter();
  v92 = v91;
  v93 = [v52 mutableString];
  v94 = MEMORY[0x21CE91FC0](v88, v90);

  v95 = [v93 rangeOfString:v94 options:1];
  v97 = v96;

  [v52 addAttribute:v142 value:v92 range:{v95, v97}];
  v98 = [v78 mainBundle];
  v145 = 0x800000021657B240;
  v157._object = 0x800000021657B240;
  v157._countAndFlagsBits = 0xD00000000000001CLL;
  v99._countAndFlagsBits = 16421;
  v99._object = 0xE200000000000000;
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v99, 0, v98, v100, v157);

  v101 = swift_allocObject();
  *(v101 + 16) = v149;
  *(v101 + 56) = MEMORY[0x277D837D0];
  *(v101 + 64) = v87;
  v102 = v45;
  v103 = v143;
  v104 = v136;
  *(v101 + 32) = v143;
  *(v101 + 40) = v104;

  v105 = static String.localizedStringWithFormat(_:_:)();
  v107 = v106;

  if (one-time initialization token for movePink != -1)
  {
    swift_once();
  }

  v108 = static CommonTheme.Color.movePink;
  v109 = [v52 mutableString];
  v110 = MEMORY[0x21CE91FC0](v105, v107);

  v111 = [v109 rangeOfString:v110 options:1];
  v113 = v112;

  [v52 addAttribute:v140 value:v108 range:{v111, v113}];
  v114 = [v147 mainBundle];
  v158._object = v145;
  v158._countAndFlagsBits = 0xD00000000000001CLL;
  v115._countAndFlagsBits = 16421;
  v115._object = 0xE200000000000000;
  v116._countAndFlagsBits = 0;
  v116._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v115, 0, v114, v116, v158);

  v117 = swift_allocObject();
  *(v117 + 16) = v149;
  v150 = v103;
  v151 = v104;
  CharacterSet.init(charactersIn:)();
  v118 = MEMORY[0x277D837D0];
  v119 = StringProtocol.trimmingCharacters(in:)();
  v121 = v120;
  v138(v102, v144);
  *(v117 + 56) = v118;
  *(v117 + 64) = v87;
  *(v117 + 32) = v119;
  *(v117 + 40) = v121;
  v122 = static String.localizedStringWithFormat(_:_:)();
  v124 = v123;

  specialized static CommonTheme.Font.footnoteEmphasizedFontSmallCaps.getter();
  v126 = v125;
  v127 = [v52 mutableString];
  v128 = MEMORY[0x21CE91FC0](v122, v124);

  v129 = [v127 rangeOfString:v128 options:1];
  v131 = v130;

  [v52 addAttribute:v142 value:v126 range:{v129, v131}];
  return v52;
}

id specialized static WorkoutView.attributedStringForDuration(_:activeEnergyBurned:averageHeartRate:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v147 = a5;
  v153 = a3;
  v145 = a1;
  v9 = type metadata accessor for CharacterSet();
  v10 = *(v9 - 8);
  v149 = v9;
  v150 = v10;
  MEMORY[0x28223BE20](v9);
  v140 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = [v12 mainBundle];
  v157._object = 0x800000021657B280;
  v14._countAndFlagsBits = 0x402520B7C2204025;
  v14._object = 0xAE00402520B7C220;
  v157._countAndFlagsBits = 0xD000000000000033;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v157);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21658E190;
  v18 = MEMORY[0x277D837D0];
  *(v17 + 56) = MEMORY[0x277D837D0];
  v19 = lazy protocol witness table accessor for type String and conformance String();
  *(v17 + 32) = v145;
  *(v17 + 40) = a2;
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  v20 = v153;
  *(v17 + 64) = v19;
  *(v17 + 72) = v20;
  *(v17 + 80) = a4;
  *(v17 + 136) = v18;
  *(v17 + 144) = v19;
  *(v17 + 112) = v147;
  *(v17 + 120) = a6;

  v151 = a4;

  v139 = a6;

  v21 = static String.localizedStringWithFormat(_:_:)();
  v23 = v22;

  v24 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v25 = MEMORY[0x21CE91FC0](v21, v23);

  v26 = [v24 initWithString_];

  v152 = v12;
  v27 = [v12 mainBundle];
  v158._object = 0x800000021657B220;
  v28._countAndFlagsBits = 16421;
  v28._object = 0xE200000000000000;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v158._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v158);

  v146 = v16;
  v30 = swift_allocObject();
  v154 = xmmword_21658CA50;
  *(v30 + 16) = xmmword_21658CA50;
  *(v30 + 56) = v18;
  *(v30 + 64) = v19;
  v148 = v19;
  v31 = v145;
  *(v30 + 32) = v145;
  *(v30 + 40) = a2;
  v32 = a2;

  v33 = static String.localizedStringWithFormat(_:_:)();
  v35 = v34;

  if (one-time initialization token for timeYellow != -1)
  {
    swift_once();
  }

  v36 = static CommonTheme.Color.timeYellow;
  v37 = *MEMORY[0x277D740C0];
  v38 = [v26 mutableString];
  v39 = MEMORY[0x21CE91FC0](v33, v35);

  v40 = [v38 rangeOfString:v39 options:1];
  v41 = v26;
  v43 = v42;

  v144 = v37;
  [v41 addAttribute:v37 value:v36 range:{v40, v43}];
  v44 = [v152 mainBundle];
  v159._object = 0x800000021657B220;
  v45._countAndFlagsBits = 16421;
  v45._object = 0xE200000000000000;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v159._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v159);

  v47 = swift_allocObject();
  *(v47 + 16) = v154;
  v155 = v31;
  v156 = v32;
  v48 = v140;
  CharacterSet.init(charactersIn:)();
  v49 = lazy protocol witness table accessor for type String and conformance String();
  v50 = MEMORY[0x277D837D0];
  v142 = v49;
  v51 = StringProtocol.trimmingCharacters(in:)();
  v53 = v52;
  v54 = *(v150 + 8);
  v150 += 8;
  v141 = v54;
  v54(v48, v149);
  *(v47 + 56) = v50;
  v55 = v148;
  *(v47 + 64) = v148;
  *(v47 + 32) = v51;
  *(v47 + 40) = v53;
  v56 = static String.localizedStringWithFormat(_:_:)();
  v58 = v57;

  specialized static CommonTheme.Font.footnoteEmphasizedFontSmallCaps.getter();
  v60 = v59;
  v61 = *MEMORY[0x277D740A8];
  v62 = [v41 mutableString];
  v63 = MEMORY[0x21CE91FC0](v56, v58);

  v64 = [v62 rangeOfString:v63 options:1];
  v66 = v65;

  v145 = v41;
  v143 = v61;
  [v41 addAttribute:v61 value:v60 range:{v64, v66}];

  v67 = [v152 mainBundle];
  v160._object = 0x800000021657B240;
  v160._countAndFlagsBits = 0xD00000000000001CLL;
  v68._countAndFlagsBits = 16421;
  v68._object = 0xE200000000000000;
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v68, 0, v67, v69, v160);

  v70 = swift_allocObject();
  *(v70 + 16) = v154;
  *(v70 + 56) = MEMORY[0x277D837D0];
  *(v70 + 64) = v55;
  *(v70 + 32) = v153;
  *(v70 + 40) = v151;

  v71 = static String.localizedStringWithFormat(_:_:)();
  v73 = v72;

  v74 = v48;
  if (one-time initialization token for movePink != -1)
  {
    swift_once();
  }

  v75 = static CommonTheme.Color.movePink;
  v76 = v145;
  v77 = [v145 mutableString];
  v78 = MEMORY[0x21CE91FC0](v71, v73);

  v79 = [v77 rangeOfString:v78 options:1];
  v81 = v80;

  [v76 addAttribute:v144 value:v75 range:{v79, v81}];
  v82 = v152;
  v83 = [v152 mainBundle];
  v161._object = 0x800000021657B240;
  v161._countAndFlagsBits = 0xD00000000000001CLL;
  v84._countAndFlagsBits = 16421;
  v84._object = 0xE200000000000000;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v84, 0, v83, v85, v161);

  v86 = swift_allocObject();
  *(v86 + 16) = v154;
  v155 = v153;
  v156 = v151;
  CharacterSet.init(charactersIn:)();
  v87 = v74;
  v88 = MEMORY[0x277D837D0];
  v89 = StringProtocol.trimmingCharacters(in:)();
  v91 = v90;
  v141(v87, v149);
  *(v86 + 56) = v88;
  v92 = v148;
  *(v86 + 64) = v148;
  *(v86 + 32) = v89;
  *(v86 + 40) = v91;
  v93 = static String.localizedStringWithFormat(_:_:)();
  v95 = v94;

  specialized static CommonTheme.Font.footnoteEmphasizedFontSmallCaps.getter();
  v97 = v96;
  v98 = [v76 mutableString];
  v99 = MEMORY[0x21CE91FC0](v93, v95);

  v100 = [v98 rangeOfString:v99 options:1];
  v102 = v101;

  [v76 addAttribute:v143 value:v97 range:{v100, v102}];
  v103 = [v82 mainBundle];
  v162._object = 0x800000021657B2C0;
  v162._countAndFlagsBits = 0xD000000000000012;
  v104._countAndFlagsBits = 16421;
  v104._object = 0xE200000000000000;
  v105._countAndFlagsBits = 0;
  v105._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v104, 0, v103, v105, v162);

  v106 = swift_allocObject();
  *(v106 + 16) = v154;
  *(v106 + 56) = MEMORY[0x277D837D0];
  *(v106 + 64) = v92;
  *(v106 + 32) = v147;
  *(v106 + 40) = v139;

  v107 = static String.localizedStringWithFormat(_:_:)();
  v109 = v108;

  if (one-time initialization token for heartRed != -1)
  {
    swift_once();
  }

  v110 = static CommonTheme.Color.heartRed;
  v111 = v145;
  v112 = [v145 mutableString];
  v113 = MEMORY[0x21CE91FC0](v107, v109);

  v114 = [v112 rangeOfString:v113 options:1];
  v116 = v115;

  [v111 addAttribute:v144 value:v110 range:{v114, v116}];
  v117 = [v152 mainBundle];
  v163._object = 0x800000021657B2E0;
  v163._countAndFlagsBits = 0xD000000000000012;
  v118._countAndFlagsBits = 16421;
  v118._object = 0xE200000000000000;
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v118, 0, v117, v119, v163);

  v120 = swift_allocObject();
  *(v120 + 16) = v154;
  v155 = v153;
  v156 = v151;
  v121 = v140;
  CharacterSet.init(charactersIn:)();
  v122 = MEMORY[0x277D837D0];
  v123 = StringProtocol.trimmingCharacters(in:)();
  v125 = v124;
  v141(v121, v149);
  v126 = v148;
  *(v120 + 56) = v122;
  *(v120 + 64) = v126;
  *(v120 + 32) = v123;
  *(v120 + 40) = v125;
  v127 = static String.localizedStringWithFormat(_:_:)();
  v129 = v128;

  specialized static CommonTheme.Font.footnoteEmphasizedFontSmallCaps.getter();
  v131 = v130;
  v132 = [v111 mutableString];
  v133 = MEMORY[0x21CE91FC0](v127, v129);

  v134 = [v132 rangeOfString:v133 options:1];
  v136 = v135;

  [v111 addAttribute:v143 value:v131 range:{v134, v136}];
  return v111;
}

uint64_t type metadata accessor for WorkoutView()
{
  result = type metadata singleton initialization cache for WorkoutView;
  if (!type metadata singleton initialization cache for WorkoutView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Interstitial.AssetMetadata.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t specialized Interstitial.AssetMetadata.init(assetViewModel:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v190 = &v181 - v3;
  v4 = type metadata accessor for AttributedString();
  v192 = *(v4 - 8);
  v193 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v182 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v191 = &v181 - v7;
  v8 = type metadata accessor for DateInterval();
  v198 = *(v8 - 8);
  v199 = v8;
  MEMORY[0x28223BE20](v8);
  v189 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v183 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v194 = &v181 - v14;
  MEMORY[0x28223BE20](v13);
  v185 = &v181 - v15;
  v200 = type metadata accessor for Date();
  v197 = *(v200 - 8);
  v16 = MEMORY[0x28223BE20](v200);
  v181 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v195 = &v181 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v187 = &v181 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v186 = &v181 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v181 - v25;
  MEMORY[0x28223BE20](v24);
  v196 = &v181 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v184 = &v181 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v181 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v181 - v35;
  v37 = MEMORY[0x277D85000];
  v38 = *((*MEMORY[0x277D85000] & *a1) + 0xE8);
  (v38)(v34);
  v201 = specialized static MomentDateFormatter.Interstitial.generateFormattedDate(dateInterval:)(v36);
  v202 = v39;
  v188 = v36;
  outlined destroy of UTType?(v36, &_s10Foundation12DateIntervalVSgMd);
  swift_getObjectType();
  v40 = swift_conformsToProtocol2();
  if (v40 && a1)
  {
    v41 = v40;
    ObjectType = swift_getObjectType();
    v43 = *(v41 + 32);
    v44 = a1;
    countAndFlagsBits = v43(ObjectType, v41);
    object = v46;

    goto LABEL_4;
  }

  v59 = swift_conformsToProtocol2();
  if (v59 && a1)
  {
    v60 = v59;
    v61 = (*((*v37 & *a1) + 0xD0))();
    if (v62)
    {
      v63 = v61;
      v64 = v62;
      v65 = HIBYTE(v62) & 0xF;
      if ((v62 & 0x2000000000000000) == 0)
      {
        v65 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (v65)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        v68 = *(v66 + 2);
        v67 = *(v66 + 3);
        if (v68 >= v67 >> 1)
        {
          v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v66);
        }

        *(v66 + 2) = v68 + 1;
        v69 = &v66[16 * v68];
        *(v69 + 4) = v63;
        *(v69 + 5) = v64;
      }

      else
      {

        v66 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v66 = MEMORY[0x277D84F90];
    }

    v76 = swift_getObjectType();
    v77 = (*(v60 + 16))(v76, v60);
    if (v78)
    {
      v79 = v77;
      v80 = v78;
      v81 = HIBYTE(v78) & 0xF;
      if ((v78 & 0x2000000000000000) == 0)
      {
        v81 = v77 & 0xFFFFFFFFFFFFLL;
      }

      if (v81)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 2) + 1, 1, v66);
        }

        v83 = *(v66 + 2);
        v82 = *(v66 + 3);
        if (v83 >= v82 >> 1)
        {
          v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v66);
        }

        *(v66 + 2) = v83 + 1;
        v84 = &v66[16 * v83];
        *(v84 + 4) = v79;
        *(v84 + 5) = v80;
      }

      else
      {
      }
    }

    v203 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

    goto LABEL_40;
  }

  if (swift_conformsToProtocol2() && a1 || swift_conformsToProtocol2() && a1 || swift_conformsToProtocol2() && a1)
  {
    v70 = AssetType.assetTypeAsPluralString(count:includeCount:)(1, 0);
    v71 = StaticString.description.getter();
    v73 = v72;
    v74 = [objc_opt_self() mainBundle];
    v204._object = v73;
    v75._countAndFlagsBits = 0;
    v75._object = 0xE000000000000000;
    v204._countAndFlagsBits = v71;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, 0, v74, v75, v204)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (swift_conformsToProtocol2() && a1)
  {
    v86 = *((*v37 & *a1) + 0xD0);
    v87 = v86();
    if (!v88)
    {
      goto LABEL_55;
    }

    v89 = v87;
    v90 = v88;

    v92 = HIBYTE(v90) & 0xF;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v92 = v89 & 0xFFFFFFFFFFFFLL;
    }

    if (v92)
    {
      countAndFlagsBits = (v86)(v91);
      object = v93;
    }

    else
    {
LABEL_55:
      type metadata accessor for InterstitialListViewController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v115 = objc_opt_self();
      v116 = [v115 bundleForClass_];
      v206._object = 0x800000021657B360;
      v117._countAndFlagsBits = 0x6E6F697461636F4CLL;
      v117._object = 0xE800000000000000;
      v118._countAndFlagsBits = 0;
      v118._object = 0xE000000000000000;
      v206._countAndFlagsBits = 0xD00000000000001ALL;
      v119 = NSLocalizedString(_:tableName:bundle:value:comment:)(v117, 0, v116, v118, v206);

      v195 = StaticString.description.getter();
      v121 = v120;
      v122 = [v115 mainBundle];
      v207._object = v121;
      v123._countAndFlagsBits = 0;
      v123._object = 0xE000000000000000;
      v207._countAndFlagsBits = v195;
      v124 = NSLocalizedString(_:tableName:bundle:value:comment:)(v119, 0, v122, v123, v207);
      countAndFlagsBits = v124._countAndFlagsBits;
      object = v124._object;
    }

    v38();
    v125 = *(v198 + 48);
    if (v125(v33, 1, v199))
    {
      outlined destroy of UTType?(v33, &_s10Foundation12DateIntervalVSgMd);
    }

    else
    {
      DateInterval.start.getter();
      outlined destroy of UTType?(v33, &_s10Foundation12DateIntervalVSgMd);
      v127 = v197;
      v128 = (*(v197 + 32))(v196, v26, v200);
      v129 = v184;
      (v38)(v128);
      v130 = v129;
      v131 = v199;
      if (!v125(v130, 1, v199))
      {

        v146 = v185;
        DateInterval.end.getter();
        outlined destroy of UTType?(v130, &_s10Foundation12DateIntervalVSgMd);
        v147 = v200;
        (*(v127 + 56))(v146, 0, 1, v200);
        outlined destroy of UTType?(v146, &_s10Foundation4DateVSgMd);
        v148 = *(v127 + 16);
        v149 = v196;
        v148(v186, v196, v147);
        v202 = countAndFlagsBits;
        v148(v187, v149, v147);
        v150 = v189;
        DateInterval.init(start:end:)();
        v151 = v198;
        v152 = v188;
        (*(v198 + 16))(v188, v150, v131);
        (*(v151 + 56))(v152, 0, 1, v131);
        v201 = specialized static MomentDateFormatter.Interstitial.generateFormattedDate(dateInterval:)(v152);
        outlined destroy of UTType?(v152, &_s10Foundation12DateIntervalVSgMd);
        (*(v151 + 8))(v150, v131);
        (*(v127 + 8))(v149, v147);
        countAndFlagsBits = v202;
        if (!object)
        {
          goto LABEL_5;
        }

        goto LABEL_40;
      }

      v132 = v200;
      (*(v127 + 8))(v196, v200);
      outlined destroy of UTType?(v130, &_s10Foundation12DateIntervalVSgMd);
      v133 = v185;
      (*(v127 + 56))(v185, 1, 1, v132);
      outlined destroy of UTType?(v133, &_s10Foundation4DateVSgMd);
    }

LABEL_4:
    if (!object)
    {
LABEL_5:

      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      __swift_project_value_buffer(v48, static CommonLogger.assets);
      v49 = a1;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v203 = v53;
        *v52 = 136315138;
        v49 = v49;
        v54 = [v49 description];
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v203);

        *(v52 + 4) = v58;
        _os_log_impl(&dword_21607C000, v50, v51, "Unable to create metadata for asset view model=%s: title is nil", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x21CE94770](v53, -1, -1);
        MEMORY[0x21CE94770](v52, -1, -1);
      }

      return 0;
    }

LABEL_40:

    return countAndFlagsBits;
  }

  v94 = swift_conformsToProtocol2();
  if (!v94 || !a1)
  {
    countAndFlagsBits = (*((*v37 & *a1) + 0xD0))();
    object = v126;
    goto LABEL_4;
  }

  v95 = v94;
  v96 = AssetType.assetTypeAsPluralString(count:includeCount:)(1, 0);
  v97 = StaticString.description.getter();
  v99 = v98;
  v100 = [objc_opt_self() mainBundle];
  v205._object = v99;
  v101._countAndFlagsBits = 0;
  v101._object = 0xE000000000000000;
  v205._countAndFlagsBits = v97;
  v102 = NSLocalizedString(_:tableName:bundle:value:comment:)(v96, 0, v100, v101, v205);
  v103 = v102._object;

  v104 = swift_getObjectType();
  v105 = *(v95 + 24);
  v106 = v190;
  v196 = v104;
  v105(v104, v95);
  v108 = v192;
  v107 = v193;
  if ((*(v192 + 48))(v106, 1, v193) == 1)
  {
    v109 = v102._countAndFlagsBits;
    outlined destroy of UTType?(v106, &_s10Foundation16AttributedStringVSgMd);
    v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v112 = *(v110 + 2);
    v111 = *(v110 + 3);
    v113 = v112 + 1;
    if (v112 >= v111 >> 1)
    {
      v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v110);
    }
  }

  else
  {

    v134 = v191;
    (*(v108 + 32))(v191, v106, v107);
    type metadata accessor for NSAttributedString();
    (*(v108 + 16))(v182, v134, v107);
    v135 = NSAttributedString.init(_:)();
    v136 = [v135 string];

    v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v137;

    v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v112 = *(v110 + 2);
    v138 = *(v110 + 3);
    v113 = v112 + 1;
    if (v112 >= v138 >> 1)
    {
      v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v138 > 1), v112 + 1, 1, v110);
    }

    (*(v108 + 8))(v191, v107);
  }

  *(v110 + 2) = v113;
  v139 = &v110[16 * v112];
  *(v139 + 4) = v109;
  *(v139 + 5) = v103;
  v140 = (*(v95 + 32))(v196, v95);
  if (v141)
  {
    v142 = HIBYTE(v141) & 0xF;
    if ((v141 & 0x2000000000000000) == 0)
    {
      v142 = v140 & 0xFFFFFFFFFFFFLL;
    }

    if (v142)
    {
      v144 = *(v110 + 2);
      v143 = *(v110 + 3);
      if (v144 >= v143 >> 1)
      {
        v178 = v140;
        v179 = v141;
        v180 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v143 > 1), v144 + 1, 1, v110);
        v141 = v179;
        v110 = v180;
        v140 = v178;
      }

      *(v110 + 2) = v144 + 1;
      v145 = &v110[16 * v144];
      *(v145 + 4) = v140;
      *(v145 + 5) = v141;
    }

    else
    {
    }
  }

  v203 = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

  v153 = v194;
  (*(v95 + 40))(v196, v95);
  v154 = v197;
  v155 = *(v197 + 48);
  if (v155(v153, 1, v200) == 1)
  {

    outlined destroy of UTType?(v153, &_s10Foundation4DateVSgMd);
  }

  else
  {
    v202 = countAndFlagsBits;

    v158 = *(v154 + 32);
    v157 = v154 + 32;
    v156 = v158;
    v159 = v200;
    v158(v195, v153, v200);
    v160 = v183;
    (*(v95 + 48))(v196, v95);
    v161 = v155(v160, 1, v159);
    v162 = (v157 - 16);
    v163 = (v198 + 16);
    v164 = (v198 + 56);
    v198 += 8;
    v201 = (v157 - 24);
    if (v161 == 1)
    {
      outlined destroy of UTType?(v160, &_s10Foundation4DateVSgMd);
      v165 = *v162;
      v166 = v195;
      v167 = v200;
      (*v162)(v186, v195, v200);
      v165(v187, v166, v167);
      v168 = v189;
      DateInterval.init(start:end:)();
      v169 = v188;
      v170 = v199;
      (*v163)(v188, v168, v199);
      (*v164)(v169, 0, 1, v170);
      specialized static MomentDateFormatter.Interstitial.generateFormattedDate(dateInterval:)(v169);

      outlined destroy of UTType?(v169, &_s10Foundation12DateIntervalVSgMd);
      (*v198)(v168, v170);
      (*v201)(v166, v167);
    }

    else
    {
      v171 = v181;
      v172 = v200;
      v156(v181, v160, v200);
      v173 = *v162;
      (*v162)(v186, v195, v172);
      v173(v187, v171, v172);
      v174 = v189;
      DateInterval.init(start:end:)();
      v175 = v188;
      v176 = v199;
      (*v163)(v188, v174, v199);
      (*v164)(v175, 0, 1, v176);
      specialized static MomentDateFormatter.Interstitial.generateFormattedDate(dateInterval:)(v175);

      outlined destroy of UTType?(v175, &_s10Foundation12DateIntervalVSgMd);
      (*v198)(v174, v176);
      v177 = *v201;
      (*v201)(v171, v172);
      v177(v195, v172);
    }

    return v202;
  }

  return countAndFlagsBits;
}

unint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedString);
  }

  return result;
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  if (Range.contains(_:)())
  {
    Array.subscript.getter();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return (*(*(a1 - 8) + 56))(a2, v4, 1, a1);
}