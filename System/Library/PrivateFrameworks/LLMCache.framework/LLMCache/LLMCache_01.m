unint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v59 = a6;
  v60 = a5;
  v61 = a3;
  v58 = type metadata accessor for AnnotatedCacheEntry(0);
  v11 = *(*(v58 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v58, v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v50 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v50 - v22;
  result = MEMORY[0x28223BE20](v21, v24);
  v27 = &v50 - v26;
  v57 = *(v28 + 72);
  if (!v57)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v57 == -1)
  {
    goto LABEL_66;
  }

  v29 = v61 - a2;
  if (v61 - a2 != 0x8000000000000000 || v57 != -1)
  {
    v30 = (a2 - a1) / v57;
    v64 = a1;
    v63 = a4;
    v56 = a1;
    if (v30 < v29 / v57)
    {
      v31 = v30 * v57;
      if (a4 < result || result + v31 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v56;
LABEL_17:
      v56 = a4 + v31;
      v62 = a4 + v31;
      if (v31 >= 1 && a2 < v61)
      {
        while (1)
        {
          v34 = result;
          outlined init with copy of ListRequest(a2, v27, type metadata accessor for AnnotatedCacheEntry);
          outlined init with copy of ListRequest(a4, v23, type metadata accessor for AnnotatedCacheEntry);
          v35 = v60(v27, v23);
          if (v7)
          {
            break;
          }

          v36 = v35;
          v37 = a4;
          outlined destroy of ListRequest(v23, type metadata accessor for AnnotatedCacheEntry);
          outlined destroy of ListRequest(v27, type metadata accessor for AnnotatedCacheEntry);
          if (v36)
          {
            v38 = v57;
            v39 = v34;
            if (v34 < a2 || v34 >= a2 + v57)
            {
              swift_arrayInitWithTakeFrontToBack();
              v39 = v34;
              a2 += v38;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v34 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v39 = v34;
              }

              a2 += v38;
            }
          }

          else
          {
            v40 = a4;
            v38 = v57;
            a4 += v57;
            v39 = v34;
            if (v34 < v37 || v34 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v39 = v34;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v34 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
                v39 = v34;
              }
            }

            v63 = a4;
          }

          result = v39 + v38;
          v64 = result;
          if (a4 >= v56 || a2 >= v61)
          {
            goto LABEL_64;
          }
        }

        outlined destroy of ListRequest(v23, type metadata accessor for AnnotatedCacheEntry);
        outlined destroy of ListRequest(v27, type metadata accessor for AnnotatedCacheEntry);
      }

LABEL_64:
      specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v64, &v63, &v62);
      return 1;
    }

    v32 = v29 / v57 * v57;
    if (a4 < a2 || a2 + v32 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v41 = a4 + v32;
        if (v32 >= 1)
        {
          v42 = -v57;
          v43 = v41;
          v52 = v19;
          v53 = v15;
          do
          {
            v50 = v41;
            v44 = a2;
            v54 = a2;
            v55 = a2 + v42;
            while (1)
            {
              v45 = v61;
              if (v44 <= result)
              {
                v64 = v44;
                v62 = v50;
                goto LABEL_64;
              }

              v51 = v41;
              v57 = v43;
              v46 = v43 + v42;
              outlined init with copy of ListRequest(v43 + v42, v19, type metadata accessor for AnnotatedCacheEntry);
              outlined init with copy of ListRequest(v55, v15, type metadata accessor for AnnotatedCacheEntry);
              v47 = v60(v19, v15);
              if (v7)
              {
                outlined destroy of ListRequest(v15, type metadata accessor for AnnotatedCacheEntry);
                outlined destroy of ListRequest(v19, type metadata accessor for AnnotatedCacheEntry);
                v64 = v54;
                v62 = v51;
                goto LABEL_64;
              }

              v48 = v47;
              v61 = v45 + v42;
              outlined destroy of ListRequest(v15, type metadata accessor for AnnotatedCacheEntry);
              outlined destroy of ListRequest(v19, type metadata accessor for AnnotatedCacheEntry);
              if (v48)
              {
                break;
              }

              v41 = v46;
              if (v45 < v57 || v61 >= v57)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v45 != v57)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v43 = v46;
              result = v56;
              v19 = v52;
              v15 = v53;
              v44 = v54;
              if (v46 <= a4)
              {
                a2 = v54;
                goto LABEL_63;
              }
            }

            if (v45 < v54 || v61 >= v54)
            {
              a2 = v55;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v41 = v51;
            }

            else
            {
              v49 = v45 == v54;
              a2 = v55;
              v7 = 0;
              v41 = v51;
              if (!v49)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v56;
            v43 = v57;
            v19 = v52;
            v15 = v53;
          }

          while (v57 > a4);
        }

LABEL_63:
        v64 = a2;
        v62 = v41;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v56;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for AnnotatedCacheEntry(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
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

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR);
  v10 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
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
  v15 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
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

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8LLMCache10CacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache10CacheEntryVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_255A4CA80;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_255A4CA80;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x259C46E70]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t specialized LLMCacheManager.__allocating_init(namespace:databaseAccess:ttl:logEmitter:)(_BYTE *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a7;
  v20 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a2, a7);
  type metadata accessor for LLMCacheManager();
  v15 = swift_allocObject();
  LOBYTE(a2) = *a1;
  swift_defaultActor_initialize();
  *(v15 + 112) = a2;
  _s8LLMCache13CacheDatabase_pWOb_0(&v18, v15 + 120);
  v16 = *&a3;
  if (a4)
  {
    v16 = 15552000.0;
  }

  *(v15 + 160) = v16;
  *(v15 + 168) = a5;
  return v15;
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

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      type metadata accessor for Insecure.SHA1();
      lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598]);
      result = dispatch thunk of HashFunction.update(bufferPointer:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x259C46E70]();
      type metadata accessor for Insecure.SHA1();
      lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized static LLMCacheManager.sortAndFilterListResult(_:request:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  v18 = a1;

  specialized MutableCollection<>.sort(by:)(partial apply for closure #1 in static LLMCacheManager.sortAndFilterListResult(_:request:), v17);
  v3 = v18;
  v4 = type metadata accessor for ListRequest();
  v8 = specialized Collection.prefix(_:)(*(a2 + *(v4 + 28)), v3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_2;
  }

  v11 = v7;
  v12 = v6;
  v13 = v5;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x277D84F90];
  }

  v15 = *(v14 + 16);

  if (__OFSUB__(v11 >> 1, v12))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v15 != (v11 >> 1) - v12)
  {
LABEL_12:
    swift_unknownObjectRelease();
    v7 = v11;
    v6 = v12;
    v5 = v13;
LABEL_2:
    specialized _copyCollectionToContiguousArray<A>(_:)(v8, v5, v6, v7);
    v10 = v9;
LABEL_9:
    swift_unknownObjectRelease();
    return v10;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v10)
  {
    v10 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  return v10;
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

uint64_t outlined destroy of ListRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ListRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized static LLMCacheManager.generateEntryId(searchKey:llmOutput:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for Insecure.SHA1();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Insecure.SHA1Digest();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v55 = a2;

  MEMORY[0x259C47680](45, 0xE100000000000000);
  MEMORY[0x259C47680](a3, a4);
  v19 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v54, v55);
  v21 = v20;
  lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v19, v21);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v19, v21);
  outlined consume of Data._Representation(v19, v21);
  dispatch thunk of HashFunction.finalize()();
  outlined consume of Data._Representation(v19, v21);
  (*(v51 + 8))(v12, v8);
  v56 = v13;
  v57 = lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1Digest and conformance Insecure.SHA1Digest, MEMORY[0x277CC5578]);
  v22 = __swift_allocate_boxed_opaque_existential_1(&v54);
  (*(v14 + 16))(v22, v18, v13);
  __swift_project_boxed_opaque_existential_1(&v54, v56);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v14 + 8))(v18, v13);
  v23 = v52;
  v24 = v53;
  outlined copy of Data._Representation(v52, v53);
  __swift_destroy_boxed_opaque_existential_0Tm(&v54);
  v25 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v25 + 16) = 8;
  *(v25 + 32) = 0;
  v26 = v25 + 32;
  v27 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v27 != 2)
    {
      goto LABEL_30;
    }

    v28 = *(v23 + 16);
    v29 = *(v23 + 24);
  }

  else
  {
    if (!v27)
    {
      v28 = 0;
      v29 = BYTE6(v24);
      goto LABEL_8;
    }

    v28 = v23;
    v29 = v23 >> 32;
  }

  if (v29 < v28)
  {
    goto LABEL_41;
  }

LABEL_8:
  if (v28 != v29)
  {
    v50 = BYTE6(v24);
    v51 = v23;
    v48 = v23 >> 8;
    v49 = v23 >> 32;
    v46 = v23 >> 24;
    v47 = v23 >> 16;
    v44 = v23 >> 40;
    v45 = HIDWORD(v23);
    v42 = HIBYTE(v23);
    v43 = HIWORD(v23);
    while (1)
    {
      if (v28 >= v29)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
      }

      v30 = *(v25 + 16);
      if (!v30)
      {
        goto LABEL_32;
      }

      if (v27 == 2)
      {
        break;
      }

      if (v27 == 1)
      {
        if (v28 < v51 || v28 >= v49)
        {
          goto LABEL_37;
        }

        v31 = __DataStorage._bytes.getter();
        if (!v31)
        {
          goto LABEL_42;
        }

        v32 = v31;
        v33 = __DataStorage._offset.getter();
        v34 = v28 - v33;
        if (__OFSUB__(v28, v33))
        {
          goto LABEL_39;
        }

LABEL_24:
        v37 = *(v32 + v34);
        goto LABEL_27;
      }

      if (v28 >= v50)
      {
        goto LABEL_36;
      }

      LOBYTE(v54) = v23;
      BYTE1(v54) = v48;
      BYTE2(v54) = v47;
      BYTE3(v54) = v46;
      BYTE4(v54) = v45;
      BYTE5(v54) = v44;
      BYTE6(v54) = v43;
      HIBYTE(v54) = v42;
      LOWORD(v55) = v24;
      BYTE2(v55) = BYTE2(v24);
      BYTE3(v55) = BYTE3(v24);
      BYTE4(v55) = BYTE4(v24);
      BYTE5(v55) = BYTE5(v24);
      v37 = *(&v54 + v28);
LABEL_27:
      v38 = v28 % v30;
      if (v28 % v30 < 0)
      {
        goto LABEL_33;
      }

      if (v38 >= *(v25 + 16))
      {
        goto LABEL_34;
      }

      ++v28;
      *(v26 + v38) ^= v37;
      if (v29 == v28)
      {
        goto LABEL_30;
      }
    }

    if (v28 < *(v23 + 16))
    {
      goto LABEL_35;
    }

    if (v28 >= *(v23 + 24))
    {
      goto LABEL_38;
    }

    v35 = __DataStorage._bytes.getter();
    if (!v35)
    {
      goto LABEL_43;
    }

    v32 = v35;
    v36 = __DataStorage._offset.getter();
    v34 = v28 - v36;
    if (__OFSUB__(v28, v36))
    {
      goto LABEL_40;
    }

    goto LABEL_24;
  }

LABEL_30:
  outlined consume of Data._Representation(v23, v24);
  v54 = 0;
  v39 = [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithBytes:v26 length:*(v25 + 16)];

  [v39 getBytes:&v54 length:8];

  outlined consume of Data._Representation(v23, v24);
  result = v54;
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of LLMCacheManaging.list(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LLMCacheManaging.insert(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of LLMCacheManaging.insert(searchKey:llmOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of LLMCacheManaging.deleteAll()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of LLMCacheManaging.warmup()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of LLMCacheManaging.pruneExpiredEntries()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of LLMCacheManager.list(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of LLMCacheManager.insert(searchKey:llmOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 152);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LLMCacheManager.insert(with:)(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v8(a1);
}

uint64_t dispatch thunk of LLMCacheManager.deleteAll()()
{
  v2 = *(*v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v6();
}

uint64_t dispatch thunk of LLMCacheManager.warmup()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v6();
}

uint64_t dispatch thunk of LLMCacheManager.pruneExpiredEntries()()
{
  v2 = *(*v0 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of CacheDatabase.delete(entries:);

  return v6();
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

uint64_t lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined destroy of AnnotatedCacheEntry?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t outlined consume of Data._Representation?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0(a1) & 1;
}

LLMCache::CacheNamespace_optional __swiftcall CacheNamespace.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CacheNamespace.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t CacheNamespace.rawValue.getter()
{
  v1 = 1819047270;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953718630;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CacheNamespace(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1819047270;
  v5 = 0x8000000255A4D5C0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x8000000255A4D5C0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1953718630;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1819047270;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1953718630;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t lazy protocol witness table accessor for type CacheNamespace and conformance CacheNamespace()
{
  result = lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace;
  if (!lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace;
  if (!lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace;
  if (!lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace;
  if (!lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CacheNamespace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CacheNamespace()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CacheNamespace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CacheNamespace(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1819047270;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000255A4D5C0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953718630;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t VectorDatabaseAccess.__allocating_init(path:embeddingProvider:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = VectorDatabaseAccess.__allocating_init(path:embeddingProvider:);

  return VectorDatabaseAccess.init(path:embeddingProvider:)(a1, a2);
}

uint64_t VectorDatabaseAccess.__allocating_init(path:embeddingProvider:)(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t one-time initialization function for jsonEncoder(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t *VectorDatabaseAccess.jsonDecoder.unsafeMutableAddressor()
{
  if (one-time initialization token for jsonDecoder != -1)
  {
    swift_once();
  }

  return &static VectorDatabaseAccess.jsonDecoder;
}

uint64_t static VectorDatabaseAccess.jsonDecoder.getter()
{
  if (one-time initialization token for jsonDecoder != -1)
  {
    swift_once();
  }
}

uint64_t VectorDatabaseAccess.init(path:embeddingProvider:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ColumnType();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for VectorDatabaseMetric();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for VectorDatabaseConfig();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v13 = type metadata accessor for VectorDatabaseDataType();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v16 = type metadata accessor for URL();
  v3[19] = v16;
  v17 = *(v16 - 8);
  v3[20] = v17;
  v18 = *(v17 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](VectorDatabaseAccess.init(path:embeddingProvider:), 0, 0);
}

uint64_t VectorDatabaseAccess.init(path:embeddingProvider:)()
{
  v30 = v0;
  v1 = v0[4];
  swift_defaultActor_initialize();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  v0[23] = __swift_project_value_buffer(v6, static Logger.logger);
  v7 = *(v4 + 16);
  v0[24] = v7;
  v0[25] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[22];
  v12 = v0[19];
  v13 = v0[20];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    v27 = URL.absoluteString.getter();
    v17 = v16;
    v18 = *(v13 + 8);
    v18(v11, v12);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v17, &v29);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_255A20000, v8, v9, "VectorDatabaseAccess directory: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x259C47EC0](v15, -1, -1);
    MEMORY[0x259C47EC0](v14, -1, -1);
  }

  else
  {

    v18 = *(v13 + 8);
    v18(v11, v12);
  }

  v0[26] = v18;
  v20 = v0[3];
  outlined init with copy of CacheDatabase(v20, v0[4] + 112);
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v23 = *(v22 + 8);
  v28 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  v0[27] = v25;
  *v25 = v0;
  v25[1] = VectorDatabaseAccess.init(path:embeddingProvider:);

  return v28(v21, v22);
}

{
  v1 = *(v0 + 184);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255A20000, v2, v3, "VectorDatabaseAccess using float16 data type for this hardware", v4, 2u);
    MEMORY[0x259C47EC0](v4, -1, -1);
  }

  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 16);

  (*(v7 + 104))(v5, *MEMORY[0x277D78210], v6);
  *(v0 + 240) = static VectorDatabaseConfig.getClientVersion(baseDirectory:)();
  *(v0 + 248) = v9;
  *(v0 + 232) = 0;
  v35 = *(v0 + 224);
  v10 = *(v0 + 200);
  v11 = *(v0 + 152);
  v30 = *(v0 + 144);
  v31 = *(v0 + 168);
  v12 = *(v0 + 128);
  v28 = *(v0 + 136);
  v29 = *(v0 + 120);
  v32 = *(v0 + 112);
  v33 = *(v0 + 104);
  v13 = *(v0 + 96);
  v34 = *(v0 + 88);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  v18 = *(v0 + 48);
  v27 = *(v0 + 40);
  v36 = *(v0 + 32);
  v19 = *(v0 + 16);
  (*(v0 + 192))();
  (*(v15 + 104))(v14, *MEMORY[0x277D781F8], v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12VectorSearch0D17DatabaseAttributeVGMd, &_ss23_ContiguousArrayStorageCy12VectorSearch0D17DatabaseAttributeVGMR);
  v20 = *(type metadata accessor for VectorDatabaseAttribute() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  *(swift_allocObject() + 16) = xmmword_255A4CA70;
  *v16 = 0;
  v16[1] = 0;
  (*(v18 + 104))(v16, *MEMORY[0x277D78268], v27);
  VectorDatabaseAttribute.init(name:columnType:)();
  (*(v12 + 16))(v28, v30, v29);

  VectorDatabaseConfig.init(baseDirectory:distanceMetric:filterableAttributes:dimension:averagePartitionSize:batchSize:batchFactor:tradeOffParameterBetweenClusteringAndBalance:enableFTS:dataType:maxIndexConstructionBatches:readOnly:pretokenizationEnabled:prefixIndices:perConnectionPeakMemory:clientVersion:)();
  (*(v13 + 16))(v33, v32, v34);
  v23 = type metadata accessor for VectorDatabaseClient();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(v36 + 152) = VectorDatabaseClient.init(config:)();

  return MEMORY[0x2822009F8](VectorDatabaseAccess.init(path:embeddingProvider:), v36, 0);
}

{
  v63 = v0;
  v1 = *(v0 + 232);
  specialized static VectorDatabaseAccess.updatePerisistedDimension(_:at:)(*(v0 + 224), *(v0 + 16));
  v2 = *(v0 + 248);
  if (v1)
  {
    v43 = *(v0 + 208);
    v46 = *(v0 + 176);
    v48 = *(v0 + 168);
    v4 = *(v0 + 152);
    v3 = *(v0 + 160);
    v5 = *(v0 + 144);
    v6 = *(v0 + 128);
    v7 = *(v0 + 112);
    v50 = *(v0 + 136);
    v52 = *(v0 + 104);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v54 = *(v0 + 80);
    v57 = *(v0 + 56);
    v10 = *(v0 + 32);
    v44 = *(v0 + 24);
    v45 = *(v0 + 120);
    v11 = *(v0 + 16);

    v43(v11, v4);
    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v5, v45);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 184);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 248);
    if (v17)
    {
      v19 = *(v0 + 240);
      v47 = *(v0 + 160);
      v49 = *(v0 + 152);
      v60 = *(v0 + 144);
      v20 = *(v0 + 128);
      v55 = *(v0 + 208);
      v58 = *(v0 + 120);
      v21 = *(v0 + 96);
      v51 = *(v0 + 88);
      v53 = *(v0 + 112);
      v22 = *(v0 + 16);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v62 = v24;
      *v23 = 136315138;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v62);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_255A20000, v15, v16, "VectorDatabaseAccess init completed with client version %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x259C47EC0](v24, -1, -1);
      MEMORY[0x259C47EC0](v23, -1, -1);

      v55(v22, v49);
      (*(v21 + 8))(v53, v51);
      (*(v20 + 8))(v60, v58);
    }

    else
    {
      v26 = *(v0 + 152);
      v27 = *(v0 + 160);
      v61 = *(v0 + 144);
      v28 = *(v0 + 128);
      v56 = *(v0 + 208);
      v59 = *(v0 + 120);
      v29 = *(v0 + 112);
      v30 = *(v0 + 88);
      v31 = *(v0 + 96);
      v32 = *(v0 + 16);

      v56(v32, v26);
      (*(v31 + 8))(v29, v30);
      (*(v28 + 8))(v61, v59);
    }

    v33 = *(v0 + 168);
    v34 = *(v0 + 176);
    v36 = *(v0 + 136);
    v35 = *(v0 + 144);
    v38 = *(v0 + 104);
    v37 = *(v0 + 112);
    v39 = *(v0 + 80);
    v40 = *(v0 + 56);
    __swift_destroy_boxed_opaque_existential_0Tm(*(v0 + 24));

    v41 = *(v0 + 8);
    v42 = *(v0 + 32);

    return v41(v42);
  }
}

uint64_t VectorDatabaseAccess.init(path:embeddingProvider:)(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](VectorDatabaseAccess.init(path:embeddingProvider:), 0, 0);
}

uint64_t VectorDatabaseAccess.deinit()
{
  v1 = v0;
  v2 = *(v0 + 152);

  dispatch thunk of VectorDatabaseClient.cooldown()();

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_255A20000, v4, v5, "VectorDatabaseAccess deinit completed", v6, 2u);
    MEMORY[0x259C47EC0](v6, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 112));
  v7 = *(v1 + 152);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t VectorDatabaseAccess.__deallocating_deinit()
{
  VectorDatabaseAccess.deinit();

  return MEMORY[0x282200960](v0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VectorDatabaseAccess.delete(entries:)(Swift::OpaquePointer entries)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for AnnotatedCacheEntry(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  MEMORY[0x28223BE20](v6 - 8, v9);
  v11 = (v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
LABEL_90:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v59 = __swift_project_value_buffer(v12, static Logger.logger);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_255A20000, v13, v14, "VectorDatabaseAccess entering delete...", v15, 2u);
    MEMORY[0x259C47EC0](v15, -1, -1);
  }

  v16 = *(entries._rawValue + 2);
  if (v16)
  {
    v57[2] = v4;
    v58 = v3;
    v4 = 0;
    v17 = v7[80];
    v57[1] = entries._rawValue;
    v3 = entries._rawValue + ((v17 + 32) & ~v17);
    entries._rawValue = *(v7 + 9);
    v60 = v61 + 1;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      outlined init with copy of AnnotatedCacheEntry(&v3[entries._rawValue * v4], v11);
      v19 = *v11;
      v18 = v11[1];
      v20 = HIBYTE(v18) & 0xF;
      v21 = *v11 & 0xFFFFFFFFFFFFLL;
      if ((v18 & 0x2000000000000000) != 0 ? HIBYTE(v18) & 0xF : *v11 & 0xFFFFFFFFFFFFLL)
      {
        break;
      }

      outlined destroy of AnnotatedCacheEntry(v11);
LABEL_7:
      if (++v4 == v16)
      {
        if (*(v7 + 2) == v16)
        {
          v50 = v58;
          v51 = VectorDatabaseAccess.delete(identifiers:)();
          if (!v50)
          {
            v52 = v51;

            v53 = Logger.logObject.getter();
            v54 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              *v55 = 134218240;
              *(v55 + 4) = v52;
              *(v55 + 12) = 2048;
              *(v55 + 14) = v16;

              _os_log_impl(&dword_255A20000, v53, v54, "Deleted %ld entries successfully when %ld were originally requested", v55, 0x16u);
              MEMORY[0x259C47EC0](v55, -1, -1);

              goto LABEL_85;
            }
          }
        }

        else
        {

          lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
          swift_allocError();
          *v56 = 0;
          swift_willThrow();
        }

        goto LABEL_85;
      }
    }

    if ((v18 & 0x1000000000000000) != 0)
    {
      v46 = v11[1];

      v25 = specialized _parseInteger<A, B>(ascii:radix:)(v19, v18, 10);
      v43 = v47;
LABEL_70:
      outlined destroy of AnnotatedCacheEntry(v11);

      if ((v43 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        }

        v45 = *(v7 + 2);
        v44 = *(v7 + 3);
        if (v45 >= v44 >> 1)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v7);
        }

        *(v7 + 2) = v45 + 1;
        *&v7[8 * v45 + 32] = v25;
      }

      goto LABEL_7;
    }

    if ((v18 & 0x2000000000000000) != 0)
    {
      v61[0] = *v11;
      v61[1] = v18 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (!v20)
        {
          goto LABEL_88;
        }

        if (--v20)
        {
          v25 = 0;
          v35 = v60;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              break;
            }

            v25 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            ++v35;
            if (!--v20)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else if (v19 == 45)
      {
        if (!v20)
        {
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        if (--v20)
        {
          v25 = 0;
          v29 = v60;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              break;
            }

            v25 = v31 - v30;
            if (__OFSUB__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v20)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else if (v20)
      {
        v25 = 0;
        v40 = v61;
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            break;
          }

          v42 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            break;
          }

          v25 = v42 + v41;
          if (__OFADD__(v42, v41))
          {
            break;
          }

          ++v40;
          if (!--v20)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if ((v19 & 0x1000000000000000) != 0)
    {
      v23 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v48 = *v11;
      v49 = v11[1];
      v23 = _StringObject.sharedUTF8.getter();
    }

    v24 = *v23;
    if (v24 == 43)
    {
      if (v21 < 1)
      {
        goto LABEL_87;
      }

      v20 = v21 - 1;
      if (v21 == 1)
      {
        goto LABEL_68;
      }

      v25 = 0;
      if (v23)
      {
        v32 = v23 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            goto LABEL_68;
          }

          v34 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            goto LABEL_68;
          }

          v25 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            goto LABEL_68;
          }

          ++v32;
          if (!--v20)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v24 == 45)
    {
      if (v21 < 1)
      {
        goto LABEL_89;
      }

      v20 = v21 - 1;
      if (v21 == 1)
      {
        goto LABEL_68;
      }

      v25 = 0;
      if (v23)
      {
        v26 = v23 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            goto LABEL_68;
          }

          v28 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            goto LABEL_68;
          }

          v25 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            goto LABEL_68;
          }

          ++v26;
          if (!--v20)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else
    {
      if (!v21)
      {
LABEL_68:
        v25 = 0;
        LOBYTE(v20) = 1;
        goto LABEL_69;
      }

      v25 = 0;
      if (v23)
      {
        do
        {
          v38 = *v23 - 48;
          if (v38 > 9)
          {
            goto LABEL_68;
          }

          v39 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            goto LABEL_68;
          }

          v25 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            goto LABEL_68;
          }

          ++v23;
        }

        while (--v21);
      }
    }

    LOBYTE(v20) = 0;
LABEL_69:
    v62 = v20;
    v43 = v20;

    goto LABEL_70;
  }

LABEL_85:
  $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving delete...");
}

uint64_t VectorDatabaseAccess.delete(identifiers:)()
{
  v2 = type metadata accessor for VectorDatabaseError();
  v53 = *(v2 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v13 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v14 = *(v0 + 152);
  v15 = dispatch thunk of VectorDatabaseClient.delete(identifiers:)();
  if (v1)
  {
    v55 = v1;
    v16 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v17 = v53;
      v18 = (*(v53 + 88))(v6, v2);
      if (v18 == *MEMORY[0x277D781C0])
      {
        v51 = v18;
        v52 = v7;

        (*(v17 + 96))(v6, v2);
        v19 = *v6;
        v20 = v6[1];
        v49 = v19;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.logger);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        v24 = os_log_type_enabled(v22, v23);
        v50 = v20;
        if (v24)
        {
          v25 = swift_slowAlloc();
          v48 = v15;
          v26 = v25;
          v27 = swift_slowAlloc();
          v54 = v27;
          *v26 = 136315138;
          v28 = v49;
          *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v54);
          _os_log_impl(&dword_255A20000, v22, v23, "Failed to delete assets due to deletion failure, error detail: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v27);
          v29 = v27;
          v17 = v53;
          MEMORY[0x259C47EC0](v29, -1, -1);
          v30 = v26;
          v15 = v48;
          MEMORY[0x259C47EC0](v30, -1, -1);

          v7 = v52;
        }

        else
        {

          v7 = v52;
          v28 = v49;
        }

        lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseError and conformance VectorDatabaseError, MEMORY[0x277D781D0]);
        swift_allocError();
        v43 = v50;
        *v44 = v28;
        v44[1] = v43;
        (*(v17 + 104))(v44, v51, v2);
LABEL_20:
        swift_willThrow();
        goto LABEL_21;
      }

      if (v18 == *MEMORY[0x277D781B8])
      {
        v51 = v18;
        v52 = v7;

        (*(v17 + 96))(v6, v2);
        v31 = *v6;
        v32 = v6[1];
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, static Logger.logger);

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v49 = v32;
          v50 = v31;
          v37 = v36;
          v38 = v34;
          v39 = swift_slowAlloc();
          v54 = v39;
          *v37 = 136315138;
          *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, &v54);
          v40 = v35;
          v41 = v38;
          _os_log_impl(&dword_255A20000, v38, v40, "Failed to delete assets due to client failure, error detail: %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v39);
          MEMORY[0x259C47EC0](v39, -1, -1);
          v42 = v37;
          v32 = v49;
          v31 = v50;
          MEMORY[0x259C47EC0](v42, -1, -1);
        }

        else
        {
        }

        v7 = v52;
        lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseError and conformance VectorDatabaseError, MEMORY[0x277D781D0]);
        swift_allocError();
        *v45 = v31;
        v45[1] = v32;
        (*(v53 + 104))(v45, v51, v2);
        goto LABEL_20;
      }

      (*(v17 + 8))(v6, v2);
    }

LABEL_21:
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v8 + 8))(v12, v7);
  return v15;
}

uint64_t VectorDatabaseAccess.describe(identifier:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8LLMCache19AnnotatedCacheEntryVSgMd, &_s8LLMCache19AnnotatedCacheEntryVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v80 = &v76 - v8;
  v9 = type metadata accessor for Asset();
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v81 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OSSignpostID();
  v85 = *(v13 - 8);
  v14 = *(v85 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v18 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v19 = HIBYTE(a2) & 0xF;
  v20 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v21 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    goto LABEL_65;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v24 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
    v49 = v48;

    if (v49)
    {
      goto LABEL_65;
    }

    goto LABEL_72;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v86[0] = a1;
    v86[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (v19)
      {
        if (--v19)
        {
          v24 = 0;
          v34 = v86 + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            ++v34;
            if (!--v19)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (a1 != 45)
    {
      if (v19)
      {
        v24 = 0;
        v39 = v86;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          v41 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            break;
          }

          v39 = (v39 + 1);
          if (!--v19)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v19)
    {
      if (--v19)
      {
        v24 = 0;
        v28 = v86 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v30 - v29;
          if (__OFSUB__(v30, v29))
          {
            break;
          }

          ++v28;
          if (!--v19)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_91;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v22 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v22 = _StringObject.sharedUTF8.getter();
  }

  v23 = *v22;
  if (v23 == 43)
  {
    if (v20 >= 1)
    {
      v19 = v20 - 1;
      if (v20 != 1)
      {
        v24 = 0;
        if (v22)
        {
          v31 = v22 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              goto LABEL_63;
            }

            v33 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              goto LABEL_63;
            }

            v24 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              goto LABEL_63;
            }

            ++v31;
            if (!--v19)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_55;
      }

      goto LABEL_63;
    }

    goto LABEL_92;
  }

  if (v23 == 45)
  {
    if (v20 >= 1)
    {
      v19 = v20 - 1;
      if (v20 != 1)
      {
        v24 = 0;
        if (v22)
        {
          v25 = v22 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              goto LABEL_63;
            }

            v27 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              goto LABEL_63;
            }

            v24 = v27 - v26;
            if (__OFSUB__(v27, v26))
            {
              goto LABEL_63;
            }

            ++v25;
            if (!--v19)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v19) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v20)
  {
    v24 = 0;
    if (v22)
    {
      while (1)
      {
        v37 = *v22 - 48;
        if (v37 > 9)
        {
          goto LABEL_63;
        }

        v38 = 10 * v24;
        if ((v24 * 10) >> 64 != (10 * v24) >> 63)
        {
          goto LABEL_63;
        }

        v24 = v38 + v37;
        if (__OFADD__(v38, v37))
        {
          goto LABEL_63;
        }

        ++v22;
        if (!--v20)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_63:
  v24 = 0;
  LOBYTE(v19) = 1;
LABEL_64:
  v87 = v19;
  if (v19)
  {
LABEL_65:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.logger);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v86[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v86);
      _os_log_impl(&dword_255A20000, v43, v44, "Skip describing entry with invalid id %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x259C47EC0](v46, -1, -1);
      MEMORY[0x259C47EC0](v45, -1, -1);
    }

    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v47 = 0;
LABEL_70:
    swift_willThrow();
LABEL_83:
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    return (*(v85 + 8))(v17, v13);
  }

LABEL_72:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int64VGMd, &_ss23_ContiguousArrayStorageCys5Int64VGMR);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_255A4CA70;
  *(v50 + 32) = v24;
  v51 = v84;
  v52 = VectorDatabaseAccess.listAll(identifiers:pagination:)();
  if (v51)
  {

    goto LABEL_83;
  }

  v53 = v52;

  if (!*(v53 + 16))
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.logger);

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v78 = v13;
      v72 = v71;
      v86[0] = v71;
      *v70 = 136315138;
      *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v86);
      _os_log_impl(&dword_255A20000, v68, v69, "Entry with id %s is not found", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      v13 = v78;
      MEMORY[0x259C47EC0](v72, -1, -1);
      MEMORY[0x259C47EC0](v70, -1, -1);
    }

    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v73 = 2;
    goto LABEL_70;
  }

  (*(v82 + 16))(v81, v53 + ((*(v82 + 80) + 32) & ~*(v82 + 80)), v83);

  v54 = Asset.payload.getter();
  v78 = v13;
  if (v55 >> 60 == 15)
  {
    v59 = type metadata accessor for AnnotatedCacheEntry(0);
    v60 = v80;
    (*(*(v59 - 8) + 56))(v80, 1, 1, v59);
    outlined destroy of AnnotatedCacheEntry?(v60, &_s8LLMCache19AnnotatedCacheEntryVSgMd, &_s8LLMCache19AnnotatedCacheEntryVSgMR);
    if (one-time initialization token for logger == -1)
    {
LABEL_80:
      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, static Logger.logger);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v86[0] = v65;
        *v64 = 136315138;
        *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v86);
        _os_log_impl(&dword_255A20000, v62, v63, "Entry with id %s either does not have payload or payload fails to be decoded", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v65);
        v13 = v78;
        MEMORY[0x259C47EC0](v65, -1, -1);
        MEMORY[0x259C47EC0](v64, -1, -1);
      }

      lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
      swift_allocError();
      *v66 = 1;
      swift_willThrow();
      (*(v82 + 8))(v81, v83);
      goto LABEL_83;
    }

LABEL_94:
    swift_once();
    goto LABEL_80;
  }

  v56 = v55;
  v84 = v54;
  if (one-time initialization token for jsonDecoder != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for AnnotatedCacheEntry(0);
  lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry, type metadata accessor for AnnotatedCacheEntry);
  v58 = v84;
  v77 = v57;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  (*(v82 + 8))(v81, v83);
  outlined consume of Data._Representation?(v58, v56);
  v74 = v80;
  (*(*(v77 - 8) + 56))(v80, 0, 1);
  outlined init with take of AnnotatedCacheEntry(v74, v79);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v85 + 8))(v17, v78);
}

uint64_t Asset.toAnnotatedCachedEntry()@<X0>(uint64_t a1@<X8>)
{
  v2 = Asset.payload.getter();
  if (v3 >> 60 == 15)
  {
    v4 = type metadata accessor for AnnotatedCacheEntry(0);
    v5 = *(*(v4 - 8) + 56);
    v6 = v4;
    v7 = a1;
    v8 = 1;
  }

  else
  {
    v9 = v2;
    v10 = v3;
    if (one-time initialization token for jsonDecoder != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for AnnotatedCacheEntry(0);
    lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry, type metadata accessor for AnnotatedCacheEntry);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation?(v9, v10);
    v5 = *(*(v11 - 8) + 56);
    v7 = a1;
    v8 = 0;
    v6 = v11;
  }

  return v5(v7, v8, 1, v6);
}

uint64_t VectorDatabaseAccess.insert(entries:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Asset();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for ColumnType();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for AnnotatedCacheEntry(0);
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](VectorDatabaseAccess.insert(entries:), v1, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v10 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v5 = v3[21];
    v6 = v3[5];

    v7 = VectorDatabaseAccess.insert(entries:);
    v8 = v6;
  }

  else
  {
    v8 = v3[5];
    v7 = VectorDatabaseAccess.insert(entries:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

unsigned __int8 *VectorDatabaseAccess.insert(entries:)()
{
  v73 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 136) = __swift_project_value_buffer(v1, static Logger.logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255A20000, v2, v3, "VectorDatabaseAccess entering insert...", v4, 2u);
    MEMORY[0x259C47EC0](v4, -1, -1);
  }

  v5 = *(v0 + 32);

  v6 = *(v5 + 16);
  *(v0 + 144) = v6;
  if (!v6)
  {
    $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving insert...");
    v27 = *(v0 + 120);
    v26 = *(v0 + 128);
    v28 = *(v0 + 96);
    v30 = *(v0 + 64);
    v29 = *(v0 + 72);

    v31 = *(v0 + 8);
LABEL_73:

    return v31();
  }

  v7 = *(v0 + 128);
  v8 = *(v0 + 112);
  v9 = *(v0 + 32);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = *MEMORY[0x277D78268];
  *(v0 + 212) = *(v8 + 80);
  *(v0 + 216) = v11;
  *(v0 + 220) = *MEMORY[0x277D78288];
  v12 = *(v8 + 72);
  v13 = MEMORY[0x277D84F90];
  *(v0 + 160) = 0;
  *(v0 + 168) = v13;
  *(v0 + 152) = v12;
  result = outlined init with copy of AnnotatedCacheEntry(v9 + v10, v7);
  v16 = *v7;
  v15 = v7[1];
  v17 = HIBYTE(v15) & 0xF;
  v18 = v16 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
LABEL_69:
    v48 = *(v0 + 128);
    v49 = *(v0 + 136);
    v50 = *(v0 + 120);

    outlined init with copy of AnnotatedCacheEntry(v48, v50);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 120);
    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v72 = v56;
      *v55 = 136315138;
      v57 = *v54;
      v58 = v54[1];

      outlined destroy of AnnotatedCacheEntry(v54);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v72);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_255A20000, v51, v52, "Skip inserting entry with invalid id %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x259C47EC0](v56, -1, -1);
      MEMORY[0x259C47EC0](v55, -1, -1);
    }

    else
    {

      outlined destroy of AnnotatedCacheEntry(v54);
    }

    v60 = *(v0 + 128);
    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v61 = 0;
    swift_willThrow();
    outlined destroy of AnnotatedCacheEntry(v60);
    v63 = *(v0 + 120);
    v62 = *(v0 + 128);
    v64 = *(v0 + 96);
    v66 = *(v0 + 64);
    v65 = *(v0 + 72);
    $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving insert...");

    v31 = *(v0 + 8);
    goto LABEL_73;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {

    v22 = specialized _parseInteger<A, B>(ascii:radix:)(v16, v15, 10);
    v68 = v67;

    if (v68)
    {
      goto LABEL_69;
    }

    goto LABEL_77;
  }

  if ((v15 & 0x2000000000000000) != 0)
  {
    *(v0 + 16) = v16;
    *(v0 + 24) = v15 & 0xFFFFFFFFFFFFFFLL;
    if (v16 == 43)
    {
      if (v17)
      {
        v39 = v17 - 1;
        if (v39)
        {
          v22 = 0;
          v40 = (v0 + 17);
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              break;
            }

            LOBYTE(v21) = 0;
            ++v40;
            if (!--v39)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_84:
      __break(1u);
      return result;
    }

    if (v16 != 45)
    {
      if (v17)
      {
        v22 = 0;
        v45 = (v0 + 16);
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          v47 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v47 + v46;
          if (__OFADD__(v47, v46))
          {
            break;
          }

          LOBYTE(v21) = 0;
          ++v45;
          if (!--v17)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_67;
    }

    if (v17)
    {
      v32 = v17 - 1;
      if (v32)
      {
        v22 = 0;
        v33 = (v0 + 17);
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v35 - v34;
          if (__OFSUB__(v35, v34))
          {
            break;
          }

          LOBYTE(v21) = 0;
          ++v33;
          if (!--v32)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_67;
    }

    goto LABEL_82;
  }

  if ((v16 & 0x1000000000000000) != 0)
  {
    result = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v20 = *result;
  if (v20 == 43)
  {
    if (v18 >= 1)
    {
      v21 = v18 - 1;
      if (v18 != 1)
      {
        v22 = 0;
        if (result)
        {
          v36 = result + 1;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              goto LABEL_67;
            }

            v38 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_67;
            }

            v22 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              goto LABEL_67;
            }

            ++v36;
            if (!--v21)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_59;
      }

      goto LABEL_67;
    }

    goto LABEL_83;
  }

  if (v20 == 45)
  {
    if (v18 >= 1)
    {
      v21 = v18 - 1;
      if (v18 != 1)
      {
        v22 = 0;
        if (result)
        {
          v23 = result + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_67;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_67;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_67;
            }

            ++v23;
            if (!--v21)
            {
              goto LABEL_68;
            }
          }
        }

LABEL_59:
        LOBYTE(v21) = 0;
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v18)
  {
    v22 = 0;
    if (result)
    {
      while (1)
      {
        v43 = *result - 48;
        if (v43 > 9)
        {
          goto LABEL_67;
        }

        v44 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          goto LABEL_67;
        }

        v22 = v44 + v43;
        if (__OFADD__(v44, v43))
        {
          goto LABEL_67;
        }

        ++result;
        if (!--v18)
        {
          goto LABEL_59;
        }
      }
    }

    goto LABEL_59;
  }

LABEL_67:
  v22 = 0;
  LOBYTE(v21) = 1;
LABEL_68:
  *(v0 + 208) = v21;
  if (v21)
  {
    goto LABEL_69;
  }

LABEL_77:
  *(v0 + 176) = v22;
  v69 = *(*(v0 + 128) + *(*(v0 + 104) + 36));
  v70 = swift_task_alloc();
  *(v0 + 184) = v70;
  *v70 = v0;
  v70[1] = VectorDatabaseAccess.insert(entries:);
  v71 = *(v0 + 40);

  return VectorDatabaseAccess.searchKeyEmbeddings(_:)(v69);
}

{
  v119 = v0;
  v1 = *(v0 + 216);
  v115 = *(v0 + 220);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12VectorSearch0D17DatabaseAttributeV_AC0F5ValueOtGMd, &_ss23_ContiguousArrayStorageCy12VectorSearch0D17DatabaseAttributeV_AC0F5ValueOtGMR);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMd, &_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMR) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_255A4CA70;
  v11 = v10 + v9;
  v12 = (v11 + v7[14]);
  *v3 = 0;
  v3[1] = 0;
  (*(v5 + 104))(v3, v1, v6);
  VectorDatabaseAttribute.init(name:columnType:)();
  v13 = v2 + *(v4 + 44);
  *v12 = UserID.sharedUserId.getter();
  v12[1] = v14;
  v15 = type metadata accessor for DatabaseValue();
  (*(*(v15 - 8) + 104))(v12, v115, v15);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12VectorSearch0C17DatabaseAttributeV_AC0E5ValueOTt0g5Tf4g_n(v10);
  swift_setDeallocating();
  outlined destroy of AnnotatedCacheEntry?(v11, &_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMd, &_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMR);
  swift_deallocClassInstance();
  if (one-time initialization token for jsonEncoder != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 200);
  v17 = *(v0 + 128);
  v18 = *(v0 + 104);
  lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry, type metadata accessor for AnnotatedCacheEntry);
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v21 = *(v0 + 192);
  if (v16)
  {
    v22 = *(v0 + 168);
    v23 = *(v0 + 128);
    v24 = *(v0 + 192);

    v25 = v23;
LABEL_5:
    outlined destroy of AnnotatedCacheEntry(v25);
    v26 = *(v0 + 120);
    v27 = *(v0 + 128);
    v28 = *(v0 + 96);
    v30 = *(v0 + 64);
    v29 = *(v0 + 72);
    $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving insert...");

    v31 = *(v0 + 8);
    goto LABEL_6;
  }

  v33 = v19;
  v34 = v20;
  v35 = *(v0 + 176);
  v116 = *(v0 + 168);
  v37 = *(v0 + 64);
  v36 = *(v0 + 72);
  v39 = *(v0 + 48);
  v38 = *(v0 + 56);
  outlined copy of Data._Representation(v19, v20);
  Asset.init(identifier:vectors:attributes:payload:)();
  (*(v38 + 16))(v37, v36, v39);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v0 + 168);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, *(v0 + 168));
  }

  v43 = v41[2];
  v42 = v41[3];
  if (v43 >= v42 >> 1)
  {
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1, v41);
  }

  v114 = *(v0 + 128);
  v117 = *(v0 + 144);
  v45 = *(v0 + 64);
  v44 = *(v0 + 72);
  v47 = *(v0 + 48);
  v46 = *(v0 + 56);
  v113 = *(v0 + 160) + 1;
  outlined consume of Data._Representation(v33, v34);
  (*(v46 + 8))(v44, v47);
  v41[2] = v43 + 1;
  (*(v46 + 32))(v41 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43, v45, v47);
  outlined destroy of AnnotatedCacheEntry(v114);
  if (v113 == v117)
  {
    v48 = *(v0 + 40);
    v67 = VectorDatabaseAccess.insert(assets:)();
    v68 = *(v0 + 136);
    v69 = *(v0 + 32);

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v73 = *(v0 + 144);
      v74 = *(v0 + 32);
      v75 = swift_slowAlloc();
      *v75 = 134218240;
      *(v75 + 4) = v67;
      *(v75 + 12) = 2048;
      *(v75 + 14) = v73;

      _os_log_impl(&dword_255A20000, v70, v71, "Inserted %ld entries successfully when %ld were originally requested", v75, 0x16u);
      MEMORY[0x259C47EC0](v75, -1, -1);
    }

    else
    {
      v76 = *(v0 + 32);
    }

    $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving insert...");
    v78 = *(v0 + 120);
    v77 = *(v0 + 128);
    v79 = *(v0 + 96);
    v81 = *(v0 + 64);
    v80 = *(v0 + 72);

    v31 = *(v0 + 8);
LABEL_6:

    return v31();
  }

  v49 = *(v0 + 152);
  v50 = *(v0 + 160) + 1;
  *(v0 + 160) = v50;
  *(v0 + 168) = v41;
  v51 = *(v0 + 128);
  result = outlined init with copy of AnnotatedCacheEntry(*(v0 + 32) + ((*(v0 + 212) + 32) & ~*(v0 + 212)) + v49 * v50, v51);
  v52 = *v51;
  v53 = v51[1];
  v54 = HIBYTE(v53) & 0xF;
  v55 = v52 & 0xFFFFFFFFFFFFLL;
  if ((v53 & 0x2000000000000000) != 0)
  {
    v56 = HIBYTE(v53) & 0xF;
  }

  else
  {
    v56 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {
LABEL_81:
    v95 = *(v0 + 128);
    v94 = *(v0 + 136);
    v96 = *(v0 + 120);

    outlined init with copy of AnnotatedCacheEntry(v95, v96);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    v99 = os_log_type_enabled(v97, v98);
    v100 = *(v0 + 120);
    if (v99)
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v118 = v102;
      *v101 = 136315138;
      v103 = *v100;
      v104 = v100[1];

      outlined destroy of AnnotatedCacheEntry(v100);
      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, &v118);

      *(v101 + 4) = v105;
      _os_log_impl(&dword_255A20000, v97, v98, "Skip inserting entry with invalid id %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v102);
      MEMORY[0x259C47EC0](v102, -1, -1);
      MEMORY[0x259C47EC0](v101, -1, -1);
    }

    else
    {

      outlined destroy of AnnotatedCacheEntry(v100);
    }

    v106 = *(v0 + 128);
    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v107 = 0;
    swift_willThrow();
    v25 = v106;
    goto LABEL_5;
  }

  if ((v53 & 0x1000000000000000) != 0)
  {

    v59 = specialized _parseInteger<A, B>(ascii:radix:)(v52, v53, 10);
    v109 = v108;

    if (v109)
    {
      goto LABEL_81;
    }

    goto LABEL_86;
  }

  if ((v53 & 0x2000000000000000) != 0)
  {
    *(v0 + 16) = v52;
    *(v0 + 24) = v53 & 0xFFFFFFFFFFFFFFLL;
    if (v52 == 43)
    {
      if (v54)
      {
        v85 = v54 - 1;
        if (v85)
        {
          v59 = 0;
          v86 = (v0 + 17);
          while (1)
          {
            v87 = *v86 - 48;
            if (v87 > 9)
            {
              break;
            }

            v88 = 10 * v59;
            if ((v59 * 10) >> 64 != (10 * v59) >> 63)
            {
              break;
            }

            v59 = v88 + v87;
            if (__OFADD__(v88, v87))
            {
              break;
            }

            LOBYTE(v58) = 0;
            ++v86;
            if (!--v85)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }

LABEL_93:
      __break(1u);
      return result;
    }

    if (v52 != 45)
    {
      if (v54)
      {
        v59 = 0;
        v91 = (v0 + 16);
        while (1)
        {
          v92 = *v91 - 48;
          if (v92 > 9)
          {
            break;
          }

          v93 = 10 * v59;
          if ((v59 * 10) >> 64 != (10 * v59) >> 63)
          {
            break;
          }

          v59 = v93 + v92;
          if (__OFADD__(v93, v92))
          {
            break;
          }

          LOBYTE(v58) = 0;
          ++v91;
          if (!--v54)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    if (v54)
    {
      v63 = v54 - 1;
      if (v63)
      {
        v59 = 0;
        v64 = (v0 + 17);
        while (1)
        {
          v65 = *v64 - 48;
          if (v65 > 9)
          {
            break;
          }

          v66 = 10 * v59;
          if ((v59 * 10) >> 64 != (10 * v59) >> 63)
          {
            break;
          }

          v59 = v66 - v65;
          if (__OFSUB__(v66, v65))
          {
            break;
          }

          LOBYTE(v58) = 0;
          ++v64;
          if (!--v63)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    goto LABEL_91;
  }

  if ((v52 & 0x1000000000000000) != 0)
  {
    result = ((v53 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v57 = *result;
  if (v57 == 43)
  {
    if (v55 >= 1)
    {
      v58 = v55 - 1;
      if (v55 != 1)
      {
        v59 = 0;
        if (result)
        {
          v82 = result + 1;
          while (1)
          {
            v83 = *v82 - 48;
            if (v83 > 9)
            {
              goto LABEL_79;
            }

            v84 = 10 * v59;
            if ((v59 * 10) >> 64 != (10 * v59) >> 63)
            {
              goto LABEL_79;
            }

            v59 = v84 + v83;
            if (__OFADD__(v84, v83))
            {
              goto LABEL_79;
            }

            ++v82;
            if (!--v58)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_71;
      }

      goto LABEL_79;
    }

    goto LABEL_92;
  }

  if (v57 == 45)
  {
    if (v55 >= 1)
    {
      v58 = v55 - 1;
      if (v55 != 1)
      {
        v59 = 0;
        if (result)
        {
          v60 = result + 1;
          while (1)
          {
            v61 = *v60 - 48;
            if (v61 > 9)
            {
              goto LABEL_79;
            }

            v62 = 10 * v59;
            if ((v59 * 10) >> 64 != (10 * v59) >> 63)
            {
              goto LABEL_79;
            }

            v59 = v62 - v61;
            if (__OFSUB__(v62, v61))
            {
              goto LABEL_79;
            }

            ++v60;
            if (!--v58)
            {
              goto LABEL_80;
            }
          }
        }

LABEL_71:
        LOBYTE(v58) = 0;
        goto LABEL_80;
      }

      goto LABEL_79;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v55)
  {
    v59 = 0;
    if (result)
    {
      while (1)
      {
        v89 = *result - 48;
        if (v89 > 9)
        {
          goto LABEL_79;
        }

        v90 = 10 * v59;
        if ((v59 * 10) >> 64 != (10 * v59) >> 63)
        {
          goto LABEL_79;
        }

        v59 = v90 + v89;
        if (__OFADD__(v90, v89))
        {
          goto LABEL_79;
        }

        ++result;
        if (!--v55)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_79:
  v59 = 0;
  LOBYTE(v58) = 1;
LABEL_80:
  *(v0 + 208) = v58;
  if (v58)
  {
    goto LABEL_81;
  }

LABEL_86:
  *(v0 + 176) = v59;
  v110 = *(*(v0 + 128) + *(*(v0 + 104) + 36));
  v111 = swift_task_alloc();
  *(v0 + 184) = v111;
  *v111 = v0;
  v111[1] = VectorDatabaseAccess.insert(entries:);
  v112 = *(v0 + 40);

  return VectorDatabaseAccess.searchKeyEmbeddings(_:)(v110);
}

uint64_t VectorDatabaseAccess.insert(entries:)()
{
  outlined destroy of AnnotatedCacheEntry(v0[16]);
  v1 = v0[25];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving insert...");

  v7 = v0[1];

  return v7();
}

uint64_t VectorDatabaseAccess.searchKeyEmbeddings(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](VectorDatabaseAccess.searchKeyEmbeddings(_:), v1, 0);
}

uint64_t VectorDatabaseAccess.searchKeyEmbeddings(_:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v2[2];
  v0[4] = v3;
  if (v3)
  {
    v0[5] = MEMORY[0x277D84F90];
    v0[6] = 0;
    v4 = v2[5];
    v0[7] = v4;
    v5 = v2[4];
    v6 = v1[17];
    v7 = v1[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v6);
    v8 = *(v7 + 24);

    v14 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = VectorDatabaseAccess.searchKeyEmbeddings(_:);

    return v14(v5, v4, v6, v7);
  }

  else
  {
    v12 = v0[1];
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

{
  v1 = *(v0 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 40);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 32);
  v7 = *(v0 + 48) + 1;
  v8 = *(v0 + 72);
  *(v3 + 2) = v5 + 1;
  *&v3[16 * v5 + 32] = v8;
  if (v7 == v6)
  {
    v9 = *(v0 + 8);

    return v9(v3);
  }

  else
  {
    v11 = *(v0 + 48) + 1;
    *(v0 + 40) = v3;
    *(v0 + 48) = v11;
    v12 = *(v0 + 24);
    v13 = *(v0 + 16) + 16 * v11;
    v14 = *(v13 + 40);
    *(v0 + 56) = v14;
    v15 = *(v13 + 32);
    v16 = v12[17];
    v17 = v12[18];
    __swift_project_boxed_opaque_existential_1(v12 + 14, v16);
    v18 = *(v17 + 24);

    v21 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    *(v0 + 64) = v20;
    *v20 = v0;
    v20[1] = VectorDatabaseAccess.searchKeyEmbeddings(_:);

    return v21(v15, v14, v16, v17);
  }
}

uint64_t VectorDatabaseAccess.searchKeyEmbeddings(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 64);
  v7 = *v3;
  v5[9] = a1;
  v5[10] = a2;

  v8 = v4[7];
  if (v2)
  {
    v9 = v5[5];

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    v12 = v5[3];

    return MEMORY[0x2822009F8](VectorDatabaseAccess.searchKeyEmbeddings(_:), v12, 0);
  }
}

uint64_t VectorDatabaseAccess.insert(assets:)()
{
  v2 = type metadata accessor for VectorDatabaseError();
  v53 = *(v2 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v13 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v14 = *(v0 + 152);
  v15 = dispatch thunk of VectorDatabaseClient.insert(assets:)();
  if (v1)
  {
    v55 = v1;
    v16 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v17 = v53;
      v18 = (*(v53 + 88))(v6, v2);
      if (v18 == *MEMORY[0x277D781C8])
      {
        v51 = v18;
        v52 = v7;

        (*(v17 + 96))(v6, v2);
        v19 = *v6;
        v20 = v6[1];
        v49 = v19;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.logger);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        v24 = os_log_type_enabled(v22, v23);
        v50 = v20;
        if (v24)
        {
          v25 = swift_slowAlloc();
          v48 = v15;
          v26 = v25;
          v27 = swift_slowAlloc();
          v54 = v27;
          *v26 = 136315138;
          v28 = v49;
          *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v54);
          _os_log_impl(&dword_255A20000, v22, v23, "Failed to insert assets due to insertion failure, error detail: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v27);
          v29 = v27;
          v17 = v53;
          MEMORY[0x259C47EC0](v29, -1, -1);
          v30 = v26;
          v15 = v48;
          MEMORY[0x259C47EC0](v30, -1, -1);

          v7 = v52;
        }

        else
        {

          v7 = v52;
          v28 = v49;
        }

        lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseError and conformance VectorDatabaseError, MEMORY[0x277D781D0]);
        swift_allocError();
        v43 = v50;
        *v44 = v28;
        v44[1] = v43;
        (*(v17 + 104))(v44, v51, v2);
LABEL_20:
        swift_willThrow();
        goto LABEL_21;
      }

      if (v18 == *MEMORY[0x277D781B8])
      {
        v51 = v18;
        v52 = v7;

        (*(v17 + 96))(v6, v2);
        v31 = *v6;
        v32 = v6[1];
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, static Logger.logger);

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v49 = v32;
          v50 = v31;
          v37 = v36;
          v38 = v34;
          v39 = swift_slowAlloc();
          v54 = v39;
          *v37 = 136315138;
          *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, &v54);
          v40 = v35;
          v41 = v38;
          _os_log_impl(&dword_255A20000, v38, v40, "Failed to insert assets due to client failure, error detail: %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v39);
          MEMORY[0x259C47EC0](v39, -1, -1);
          v42 = v37;
          v32 = v49;
          v31 = v50;
          MEMORY[0x259C47EC0](v42, -1, -1);
        }

        else
        {
        }

        v7 = v52;
        lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseError and conformance VectorDatabaseError, MEMORY[0x277D781D0]);
        swift_allocError();
        *v45 = v31;
        v45[1] = v32;
        (*(v53 + 104))(v45, v51, v2);
        goto LABEL_20;
      }

      (*(v17 + 8))(v6, v2);
    }

LABEL_21:
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v8 + 8))(v12, v7);
  return v15;
}

uint64_t VectorDatabaseAccess.list(namespace:searchKey:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  *(v4 + 64) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8LLMCache19AnnotatedCacheEntryVSgMd, &_s8LLMCache19AnnotatedCacheEntryVSgMR) - 8) + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v7 = type metadata accessor for AnnotatedCacheEntry(0);
  *(v4 + 96) = v7;
  v8 = *(v7 - 8);
  *(v4 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v10 = type metadata accessor for VectorDatabaseResult();
  *(v4 + 128) = v10;
  v11 = *(v10 - 8);
  *(v4 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 200) = *a1;

  return MEMORY[0x2822009F8](VectorDatabaseAccess.list(namespace:searchKey:), v3, 0);
}

uint64_t VectorDatabaseAccess.list(namespace:searchKey:)()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v1, static Logger.logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255A20000, v2, v3, "VectorDatabaseAccess entering list...", v4, 2u);
    MEMORY[0x259C47EC0](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  v0[21] = inited;
  *(inited + 16) = xmmword_255A4CA70;
  *(inited + 32) = v6;
  *(inited + 40) = v5;

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = VectorDatabaseAccess.list(namespace:searchKey:);
  v9 = v0[10];

  return VectorDatabaseAccess.searchKeyEmbeddings(_:)(inited);
}

{
  v91 = v0;
  v1 = *(v0 + 184);
  if (!v1[2])
  {
    v7 = *(v0 + 160);
    v8 = *(v0 + 72);
    v9 = *(v0 + 184);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 64);
      v12 = *(v0 + 72);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v90[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, v90);
      _os_log_impl(&dword_255A20000, v10, v11, "Failed to compute embedding for search key %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x259C47EC0](v15, -1, -1);
      MEMORY[0x259C47EC0](v14, -1, -1);
    }

    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    goto LABEL_7;
  }

  v2 = *(v0 + 192);
  v3 = *(v0 + 80);
  v5 = v1[4];
  v4 = v1[5];
  outlined copy of Data._Representation(v5, v4);

  result = VectorDatabaseAccess.search(byVector:)();
  if (v2)
  {
    outlined consume of Data._Representation(v5, v4);
LABEL_7:
    v17 = *(v0 + 144);
    v18 = *(v0 + 152);
    v20 = *(v0 + 112);
    v19 = *(v0 + 120);
    v21 = *(v0 + 88);
    $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving list...");

    v22 = *(v0 + 8);

    return v22();
  }

  v81 = v5;
  v82 = v4;
  v23 = result;
  v88 = *(result + 16);
  if (v88)
  {
    v24 = 0;
    v25 = *(v0 + 136);
    v86 = result + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v83 = *(v0 + 104);
    v26 = MEMORY[0x277D84F90];
    v87 = v25;
    v89 = (v25 + 8);
    v84 = result;
    v85 = MEMORY[0x277D84F90];
    while (v24 < *(v23 + 16))
    {
      v27 = *(v87 + 16);
      v27(*(v0 + 152), v86 + *(v87 + 72) * v24, *(v0 + 128));
      v28 = VectorDatabaseResult.payload.getter();
      if (v29 >> 60 == 15)
      {
        v34 = *(v0 + 160);
        v27(*(v0 + 144), *(v0 + 152), *(v0 + 128));
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();
        v37 = os_log_type_enabled(v35, v36);
        v38 = *(v0 + 144);
        v39 = *(v0 + 128);
        if (v37)
        {
          v40 = swift_slowAlloc();
          *v40 = 134217984;
          v41 = VectorDatabaseResult.assetIdentifier.getter();
          v42 = *v89;
          (*v89)(v38, v39);
          *(v40 + 4) = v41;
          v23 = v84;
          _os_log_impl(&dword_255A20000, v35, v36, "Asset with id %lld either does not have payload or payload fails to be decoded", v40, 0xCu);
          MEMORY[0x259C47EC0](v40, -1, -1);
        }

        else
        {
          v42 = *v89;
          (*v89)(*(v0 + 144), *(v0 + 128));
        }

        v43 = *(v0 + 152);

        v44 = VectorDatabaseResult.assetIdentifier.getter();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v46 = *(v26 + 2);
        v45 = *(v26 + 3);
        if (v46 >= v45 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v26);
        }

        result = (v42)(*(v0 + 152), *(v0 + 128));
        *(v26 + 2) = v46 + 1;
        *&v26[8 * v46 + 32] = v44;
      }

      else
      {
        v30 = v28;
        v31 = v29;
        if (one-time initialization token for jsonDecoder != -1)
        {
          swift_once();
        }

        v32 = *(v0 + 88);
        v33 = *(v0 + 96);
        lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry, type metadata accessor for AnnotatedCacheEntry);
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        v47 = *(v0 + 152);
        v49 = *(v0 + 112);
        v48 = *(v0 + 120);
        v50 = *(v0 + 88);
        (*(v83 + 56))(v50, 0, 1, *(v0 + 96));
        outlined init with take of AnnotatedCacheEntry(v50, v48);
        v51 = AnnotatedCacheEntry.builder()();
        VectorDatabaseResult.value.getter();
        v53 = (*(*v51 + 432))(v52, 0);

        (*(*v53 + 440))(v54);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v85[2] + 1, 1, v85);
        }

        v57 = v85[2];
        v56 = v85[3];
        if (v57 >= v56 >> 1)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v56 > 1, v57 + 1, 1, v85);
        }

        v58 = *(v0 + 152);
        v60 = *(v0 + 120);
        v59 = *(v0 + 128);
        v61 = *(v0 + 112);
        outlined consume of Data._Representation?(v30, v31);
        outlined destroy of AnnotatedCacheEntry(v60);
        (*v89)(v58, v59);
        v85[2] = v57 + 1;
        result = outlined init with take of AnnotatedCacheEntry(v61, v85 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v57);
        v23 = v84;
      }

      if (v88 == ++v24)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
    v85 = MEMORY[0x277D84F90];
LABEL_32:

    if (*(v26 + 2))
    {
      v62 = *(v0 + 80);
      VectorDatabaseAccess.delete(identifiers:)();
    }

    v63 = *(v0 + 160);

    v64 = v85;

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = *(v0 + 200);
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v90[0] = v69;
      *v68 = 134218242;
      *(v68 + 4) = v85[2];
      *(v68 + 12) = 2080;
      v70 = 0xE400000000000000;
      v71 = 1819047270;
      if (v67 != 1)
      {
        v71 = 0xD000000000000012;
        v70 = 0x8000000255A4D5C0;
      }

      if (v67)
      {
        v72 = v71;
      }

      else
      {
        v72 = 1953718630;
      }

      if (v67)
      {
        v73 = v70;
      }

      else
      {
        v73 = 0xE400000000000000;
      }

      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v90);

      *(v68 + 14) = v74;

      _os_log_impl(&dword_255A20000, v65, v66, "Found %ld entries that match the requested search key and namespace %s", v68, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      MEMORY[0x259C47EC0](v69, -1, -1);
      MEMORY[0x259C47EC0](v68, -1, -1);

      outlined consume of Data._Representation(v81, v82);
      v64 = v85;
    }

    else
    {
      outlined consume of Data._Representation(v81, v82);
    }

    v75 = *(v0 + 144);
    v76 = *(v0 + 152);
    v78 = *(v0 + 112);
    v77 = *(v0 + 120);
    v79 = *(v0 + 88);
    $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving list...");

    v80 = *(v0 + 8);

    return v80(v64);
  }

  return result;
}

{
  v1 = v0[21];
  swift_setDeallocating();
  outlined destroy of String(v1 + 32);
  v2 = v0[24];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[11];
  $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving list...");

  v8 = v0[1];

  return v8();
}

uint64_t VectorDatabaseAccess.list(namespace:searchKey:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v10 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {
    v5 = v3[10];
    v6 = VectorDatabaseAccess.list(namespace:searchKey:);
  }

  else
  {
    v7 = v3[21];
    v8 = v3[10];
    swift_setDeallocating();
    outlined destroy of String(v7 + 32);
    v6 = VectorDatabaseAccess.list(namespace:searchKey:);
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t VectorDatabaseAccess.search(byVector:)()
{
  v44 = type metadata accessor for VectorDatabaseError();
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v44, v4);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for OSSignpostID();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v12 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v13 = *(v0 + 152);
  v14 = dispatch thunk of VectorDatabaseClient.search(byVector:attributeFilters:limit:includePayload:numberOfProbes:batchSize:numConcurrentReaders:)();
  if (v1)
  {
    v48 = v1;
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v16 = v44;
    if (swift_dynamicCast())
    {
      v17 = v2;
      v18 = (*(v2 + 88))(v6, v16);
      v19 = *MEMORY[0x277D781B0];
      v43 = v18;
      if (v18 == v19)
      {

        (*(v2 + 96))(v6, v16);
        v20 = *v6;
        v21 = v6[1];
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Logger.logger);

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v42 = v14;
          v26 = v25;
          v27 = swift_slowAlloc();
          v47 = v27;
          *v26 = 136315138;
          *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v47);
          _os_log_impl(&dword_255A20000, v23, v24, "Failed to search assets due to search failure, error detail: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v27);
          v28 = v27;
          v16 = v44;
          MEMORY[0x259C47EC0](v28, -1, -1);
          v29 = v26;
          v14 = v42;
          MEMORY[0x259C47EC0](v29, -1, -1);
        }
      }

      else
      {
        if (v43 != *MEMORY[0x277D781B8])
        {
          (*(v2 + 8))(v6, v16);
          goto LABEL_19;
        }

        (*(v2 + 96))(v6, v16);
        v30 = *v6;
        v21 = v6[1];
        v42 = v30;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.logger);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v41 = v21;
          v35 = v34;
          v36 = swift_slowAlloc();
          v47 = v36;
          *v35 = 136315138;
          *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, &v47);
          _os_log_impl(&dword_255A20000, v32, v33, "Failed to search assets due to client failure, error detail: %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v36);
          MEMORY[0x259C47EC0](v36, -1, -1);
          v37 = v35;
          v21 = v41;
          MEMORY[0x259C47EC0](v37, -1, -1);
        }

        v20 = v42;
      }

      lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseError and conformance VectorDatabaseError, MEMORY[0x277D781D0]);
      swift_allocError();
      *v38 = v20;
      v38[1] = v21;
      (*(v17 + 104))(v38, v43, v16);
      swift_willThrow();
    }

LABEL_19:
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v45 + 8))(v11, v46);
  return v14;
}

void *VectorDatabaseAccess.listAll(namespace:nextToken:)(unsigned __int8 *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8LLMCache19AnnotatedCacheEntryVSgMd, &_s8LLMCache19AnnotatedCacheEntryVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v71 - v8;
  v78 = type metadata accessor for AnnotatedCacheEntry(0);
  v74 = *(v78 - 8);
  v10 = *(v74 + 64);
  v12 = MEMORY[0x28223BE20](v78, v11);
  v77 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v76 = &v71 - v15;
  v91 = type metadata accessor for Asset();
  v82 = *(v91 - 8);
  v16 = *(v82 + 64);
  v18 = MEMORY[0x28223BE20](v91, v17);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v86 = &v71 - v22;
  v23 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v80 = v20;
  v24 = type metadata accessor for Logger();
  v81 = __swift_project_value_buffer(v24, static Logger.logger);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_255A20000, v25, v26, "VectorDatabaseAccess entering listAll...", v27, 2u);
    MEMORY[0x259C47EC0](v27, -1, -1);
  }

  v28 = VectorDatabaseAccess.listAll(identifiers:pagination:)();
  v89 = v2;
  if (v2)
  {
LABEL_6:
    $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving listAll...");
    return v79;
  }

  v72 = v23;
  v73 = v3;
  v30 = *(v28 + 16);
  if (!v30)
  {

    v57 = MEMORY[0x277D84F90];
    v79 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v88 = *(v82 + 16);
  v31 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v71 = v28;
  v32 = v28 + v31;
  v33 = *(v82 + 72);
  v83 = (v74 + 56);
  v84 = v33;
  v87 = (v82 + 8);
  *&v29 = 134217984;
  v75 = v29;
  v79 = MEMORY[0x277D84F90];
  v85 = MEMORY[0x277D84F90];
  v34 = v78;
  v35 = v91;
  v36 = v86;
  v82 += 16;
  do
  {
    v90 = v30;
    v88(v36, v32, v35);
    v37 = Asset.payload.getter();
    if (v38 >> 60 == 15)
    {
      goto LABEL_16;
    }

    v39 = v37;
    v40 = v38;
    if (one-time initialization token for jsonDecoder != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry, type metadata accessor for AnnotatedCacheEntry);
    v41 = v89;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v89 = v41;
    if (v41)
    {

      outlined consume of Data._Representation?(v39, v40);
      v89 = 0;
LABEL_16:
      (*v83)(v9, 1, 1, v34);
      outlined destroy of AnnotatedCacheEntry?(v9, &_s8LLMCache19AnnotatedCacheEntryVSgMd, &_s8LLMCache19AnnotatedCacheEntryVSgMR);
      v42 = v80;
      v88(v80, v86, v35);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = v75;
        v46 = Asset.identifier.getter();
        v47 = *v87;
        (*v87)(v42, v35);
        *(v45 + 4) = v46;
        _os_log_impl(&dword_255A20000, v43, v44, "Asset with id %lld either does not have payload or payload fails to be decoded", v45, 0xCu);
        v48 = v45;
        v34 = v78;
        MEMORY[0x259C47EC0](v48, -1, -1);
      }

      else
      {
        v47 = *v87;
        (*v87)(v42, v35);
      }

      v36 = v86;
      v49 = Asset.identifier.getter();
      v50 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
      }

      v52 = *(v50 + 2);
      v51 = *(v50 + 3);
      if (v52 >= v51 >> 1)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v50);
      }

      v47(v36, v91);
      *(v50 + 2) = v52 + 1;
      v85 = v50;
      *&v50[8 * v52 + 32] = v49;
      goto LABEL_10;
    }

    outlined consume of Data._Representation?(v39, v40);
    (*v83)(v9, 0, 1, v34);
    v53 = v76;
    outlined init with take of AnnotatedCacheEntry(v9, v76);
    outlined init with copy of AnnotatedCacheEntry(v53, v77);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79[2] + 1, 1, v79);
    }

    v55 = v79[2];
    v54 = v79[3];
    if (v55 >= v54 >> 1)
    {
      v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v55 + 1, 1, v79);
    }

    outlined destroy of AnnotatedCacheEntry(v76);
    (*v87)(v36, v91);
    v56 = v79;
    v79[2] = v55 + 1;
    outlined init with take of AnnotatedCacheEntry(v77, v56 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v55);
LABEL_10:
    v32 += v84;
    v35 = v91;
    v30 = v90 - 1;
  }

  while (v90 != 1);

  v57 = v85;
LABEL_30:
  if (*(v57 + 2))
  {
    v58 = v89;
    VectorDatabaseAccess.delete(identifiers:)();
    v89 = v58;
    if (v58)
    {

      goto LABEL_6;
    }
  }

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = v79;
    v64 = v62;
    v92 = v62;
    *v61 = 134218242;
    *(v61 + 4) = v63[2];
    *(v61 + 12) = 2080;
    v65 = 0xE400000000000000;
    v66 = 1819047270;
    if (v72 != 1)
    {
      v66 = 0xD000000000000012;
      v65 = 0x8000000255A4D5C0;
    }

    if (v72)
    {
      v67 = v66;
    }

    else
    {
      v67 = 1953718630;
    }

    if (v72)
    {
      v68 = v65;
    }

    else
    {
      v68 = 0xE400000000000000;
    }

    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v92);

    *(v61 + 14) = v69;

    _os_log_impl(&dword_255A20000, v59, v60, "Found %ld entries that match the requested namespace %s", v61, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    MEMORY[0x259C47EC0](v64, -1, -1);
    MEMORY[0x259C47EC0](v61, -1, -1);
  }

  else
  {
  }

  $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving listAll...");
  return v79;
}

uint64_t VectorDatabaseAccess.listAll(identifiers:pagination:)()
{
  v2 = type metadata accessor for VectorDatabaseError();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for OSSignpostID();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v12 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v13 = *(v0 + 152);
  v14 = dispatch thunk of VectorDatabaseClient.getAssets(identifiers:attributeFilters:pagination:orderBy:includeVectors:)();
  if (v1)
  {
    v37 = v1;
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v16 = v33;
    if (swift_dynamicCast())
    {
      v17 = v32;
      v18 = (*(v32 + 88))(v6, v16);
      if (v18 == *MEMORY[0x277D781B8])
      {
        v31 = v18;

        (*(v17 + 96))(v6, v16);
        v19 = *v6;
        v20 = v6[1];
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.logger);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v36 = v25;
          *v24 = 136315138;
          *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v36);
          _os_log_impl(&dword_255A20000, v22, v23, "Failed to get all assets, error detail: %s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v25);
          v26 = v25;
          v17 = v32;
          MEMORY[0x259C47EC0](v26, -1, -1);
          v27 = v24;
          v16 = v33;
          MEMORY[0x259C47EC0](v27, -1, -1);
        }

        lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseError and conformance VectorDatabaseError, MEMORY[0x277D781D0]);
        swift_allocError();
        *v28 = v19;
        v28[1] = v20;
        (*(v17 + 104))(v28, v31, v16);
        swift_willThrow();
      }

      else
      {
        (*(v17 + 8))(v6, v16);
      }
    }
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v34 + 8))(v11, v35);
  return v14;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VectorDatabaseAccess.deleteAll(namespace:)(LLMCache::CacheNamespace a1)
{
  v3 = v1;
  v4 = type metadata accessor for VectorDatabaseError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_255A20000, v11, v12, "VectorDatabaseAccess entering deleteAll...", v13, 2u);
    MEMORY[0x259C47EC0](v13, -1, -1);
  }

  v14 = *(v3 + 152);
  dispatch thunk of VectorDatabaseClient.deleteAll()();
  if (v2)
  {
    v27 = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v16 = (*(v5 + 88))(v9, v4);
      if (v16 == *MEMORY[0x277D781B8])
      {
        v17 = v16;

        (*(v5 + 96))(v9, v4);
        v19 = *v9;
        v18 = v9[1];

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v26 = v23;
          *v22 = 136315138;
          *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v26);
          _os_log_impl(&dword_255A20000, v20, v21, "Failed to delete all assets, error detail: %s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v23);
          MEMORY[0x259C47EC0](v23, -1, -1);
          MEMORY[0x259C47EC0](v22, -1, -1);
        }

        lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseError and conformance VectorDatabaseError, MEMORY[0x277D781D0]);
        swift_allocError();
        *v24 = v19;
        v24[1] = v18;
        (*(v5 + 104))(v24, v17, v4);
        swift_willThrow();
      }

      else
      {
        (*(v5 + 8))(v9, v4);
      }
    }
  }

  $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving deleteAll...");
}

void $defer #1 () in VectorDatabaseAccess.delete(entries:)(const char *a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.logger);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255A20000, oslog, v3, a1, v4, 2u);
    MEMORY[0x259C47EC0](v4, -1, -1);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VectorDatabaseAccess.warmup()()
{
  v1 = v0;
  v12 = type metadata accessor for OSSignpostID();
  v2 = *(v12 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v12, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v7 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v8 = v0[19];
  dispatch thunk of VectorDatabaseClient.warmup(numConcurrentReaders:)();
  v10 = v1[17];
  v9 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v10);
  (*(v9 + 16))(v10, v9);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v2 + 8))(v6, v12);
}

uint64_t protocol witness for CacheDatabase.delete(entries:) in conformance VectorDatabaseAccess(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](protocol witness for CacheDatabase.delete(entries:) in conformance VectorDatabaseAccess, v3, 0);
}

uint64_t protocol witness for CacheDatabase.delete(entries:) in conformance VectorDatabaseAccess()
{
  rawValue = v0[3]._rawValue;
  VectorDatabaseAccess.delete(entries:)(v0[2]);
  v2 = v0[1]._rawValue;

  return v2();
}

uint64_t protocol witness for CacheDatabase.describe(identifier:) in conformance VectorDatabaseAccess(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](protocol witness for CacheDatabase.describe(identifier:) in conformance VectorDatabaseAccess, v5, 0);
}

uint64_t protocol witness for CacheDatabase.describe(identifier:) in conformance VectorDatabaseAccess()
{
  v1 = v0[5];
  VectorDatabaseAccess.describe(identifier:)(v0[3], v0[4], v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t protocol witness for CacheDatabase.insert(entries:) in conformance VectorDatabaseAccess(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of CacheDatabase.delete(entries:);

  return VectorDatabaseAccess.insert(entries:)(a1);
}

uint64_t protocol witness for CacheDatabase.list(namespace:searchKey:) in conformance VectorDatabaseAccess(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for CacheDatabase.list(namespace:searchKey:) in conformance VectorDatabaseAccess;

  return VectorDatabaseAccess.list(namespace:searchKey:)(a1, a2, a3);
}

uint64_t protocol witness for CacheDatabase.listAll(namespace:nextToken:) in conformance VectorDatabaseAccess(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](protocol witness for CacheDatabase.listAll(namespace:nextToken:) in conformance VectorDatabaseAccess, v5, 0);
}

uint64_t protocol witness for CacheDatabase.listAll(namespace:nextToken:) in conformance VectorDatabaseAccess()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = VectorDatabaseAccess.listAll(namespace:nextToken:)(*(v0 + 16));
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t protocol witness for CacheDatabase.deleteAll(namespace:) in conformance VectorDatabaseAccess(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](protocol witness for CacheDatabase.deleteAll(namespace:) in conformance VectorDatabaseAccess, v3, 0);
}

uint64_t protocol witness for CacheDatabase.deleteAll(namespace:) in conformance VectorDatabaseAccess(LLMCache::CacheNamespace a1)
{
  v2 = *(v1 + 24);
  VectorDatabaseAccess.deleteAll(namespace:)(a1);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t protocol witness for CacheDatabase.warmup() in conformance VectorDatabaseAccess()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](protocol witness for CacheDatabase.warmup() in conformance VectorDatabaseAccess, v2, 0);
}

{
  v1 = *(v0 + 16);
  VectorDatabaseAccess.warmup()();
  v2 = *(v0 + 8);

  return v2();
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

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C476B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for VectorDatabaseAttribute();
  lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseAttribute and conformance VectorDatabaseAttribute, MEMORY[0x277D78248]);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for VectorDatabaseAttribute();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseAttribute and conformance VectorDatabaseAttribute, MEMORY[0x277D78248]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t specialized static VectorDatabaseAccess.persistDimension(_:at:)(uint64_t a1)
{
  v65 = a1;
  v1 = type metadata accessor for String.Encoding();
  v62 = *(v1 - 8);
  v63 = v1;
  v2 = *(v62 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for URL();
  v64 = *(v66 - 8);
  v12 = *(v64 + 64);
  v14 = MEMORY[0x28223BE20](v66, v13);
  v60 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v60 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v60 - v21;
  strcpy(v67, "dimension.txt");
  HIWORD(v67[1]) = -4864;
  (*(v7 + 104))(v11, *MEMORY[0x277CC91D8], v6);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v7 + 8))(v11, v6);
  v67[0] = v65;
  v67[0] = dispatch thunk of CustomStringConvertible.description.getter();
  v67[1] = v23;
  static String.Encoding.utf8.getter();
  v24 = v61;
  StringProtocol.write(to:atomically:encoding:)();
  if (v24)
  {
    (*(v62 + 8))(v5, v63);

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.logger);
    v26 = v64;
    v27 = v60;
    v28 = v66;
    (*(v64 + 16))(v60, v22, v66);
    v29 = v24;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v61 = v24;
      v33 = v26;
      v34 = v32;
      v63 = swift_slowAlloc();
      v67[0] = v63;
      *v34 = 134218498;
      *(v34 + 4) = v65;
      *(v34 + 12) = 2080;
      v35 = URL.absoluteString.getter();
      v37 = v36;
      v38 = *(v33 + 8);
      v38(v27, v66);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v67);

      *(v34 + 14) = v39;
      *(v34 + 22) = 2080;
      swift_getErrorValue();
      v40 = Error.localizedDescription.getter();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v67);

      *(v34 + 24) = v42;
      _os_log_impl(&dword_255A20000, v30, v31, "Failed to persist dimension %ld at path %s, file cannot be created, error: %s", v34, 0x20u);
      v43 = v63;
      swift_arrayDestroy();
      MEMORY[0x259C47EC0](v43, -1, -1);
      v28 = v66;
      MEMORY[0x259C47EC0](v34, -1, -1);
    }

    else
    {

      v38 = *(v26 + 8);
      v38(v27, v28);
    }

    swift_willThrow();
    return (v38)(v22, v28);
  }

  else
  {
    v61 = 0;
    (*(v62 + 8))(v5, v63);

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.logger);
    v45 = v64;
    v46 = v66;
    (*(v64 + 16))(v19, v22, v66);
    v47 = v22;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v67[0] = v51;
      *v50 = 134218242;
      *(v50 + 4) = v65;
      *(v50 + 12) = 2080;
      v65 = v47;
      v52 = URL.absoluteString.getter();
      v53 = v45;
      v55 = v54;
      v56 = *(v53 + 8);
      v56(v19, v46);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v55, v67);

      *(v50 + 14) = v57;
      _os_log_impl(&dword_255A20000, v48, v49, "Persisted dimension %ld at path %s, new file created", v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x259C47EC0](v51, -1, -1);
      MEMORY[0x259C47EC0](v50, -1, -1);

      return (v56)(v65, v46);
    }

    else
    {

      v59 = *(v45 + 8);
      v59(v19, v46);
      return (v59)(v47, v46);
    }
  }
}

uint64_t specialized static VectorDatabaseAccess.updatePerisistedDimension(_:at:)(uint64_t a1, uint64_t a2)
{
  v93[2] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for String.Encoding();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v91 = *(v14 - 8);
  v92 = v14;
  v15 = *(v91 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v89 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v90 = (&v86 - v21);
  MEMORY[0x28223BE20](v20, v22);
  v24 = (&v86 - v23);
  strcpy(v93, "dimension.txt");
  HIWORD(v93[1]) = -4864;
  (*(v9 + 104))(v13, *MEMORY[0x277CC91D8], v8);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v9 + 8))(v13, v8);
  v25 = objc_opt_self();
  v26 = [v25 defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v28 = MEMORY[0x259C47620](countAndFlagsBits);

  v29 = [v26 fileExistsAtPath_];

  if (!v29)
  {
    specialized static VectorDatabaseAccess.persistDimension(_:at:)(a1);
    goto LABEL_7;
  }

  v88 = a2;
  static String.Encoding.utf8.getter();
  v30 = String.init(contentsOf:encoding:)();
  if (v2)
  {
LABEL_7:
    result = (*(v91 + 8))(v24, v92);
    goto LABEL_15;
  }

  v32 = v30;
  v33 = v31;
  v93[0] = a1;
  if (v30 == dispatch thunk of CustomStringConvertible.description.getter() && v33 == v34)
  {

    v35 = v92;
    v36 = v90;
LABEL_10:

    v39 = v91;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.logger);
    (*(v39 + 16))(v36, v24, v35);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      LODWORD(v92) = v42;
      v44 = v43;
      v90 = swift_slowAlloc();
      v93[0] = v90;
      *v44 = 134218242;
      *(v44 + 4) = a1;
      *(v44 + 12) = 2080;
      v45 = URL.absoluteString.getter();
      v46 = v39;
      v48 = v47;
      v49 = *(v46 + 8);
      v49(v36);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v48, v93);

      *(v44 + 14) = v50;
      _os_log_impl(&dword_255A20000, v41, v92, "Dimension %ld at path %s has not changed", v44, 0x16u);
      v51 = v90;
      __swift_destroy_boxed_opaque_existential_0Tm(v90);
      MEMORY[0x259C47EC0](v51, -1, -1);
      MEMORY[0x259C47EC0](v44, -1, -1);

      result = (v49)(v24, v35);
    }

    else
    {

      v52 = *(v39 + 8);
      v52(v36, v35);
      result = (v52)(v24, v35);
    }

    goto LABEL_15;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v36 = v90;
  if (v38)
  {
    v35 = v92;
    goto LABEL_10;
  }

  v87 = v32;
  v90 = v24;
  v54 = [v25 defaultManager];
  v55 = v88;
  URL._bridgeToObjectiveC()(v56);
  v58 = v57;
  v93[0] = 0;
  v59 = [v54 removeItemAtURL:v57 error:v93];

  v60 = v93[0];
  if (!v59)
  {
    goto LABEL_22;
  }

  v61 = v93[0];
  v62 = [v25 defaultManager];
  URL._bridgeToObjectiveC()(v63);
  v65 = v64;
  v93[0] = 0;
  v66 = [v62 createDirectoryAtURL:v64 withIntermediateDirectories:1 attributes:0 error:v93];

  v60 = v93[0];
  if (v66)
  {
    v67 = one-time initialization token for logger;
    v68 = v93[0];
    v69 = v91;
    if (v67 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Logger.logger);
    v71 = v89;
    (*(v69 + 16))(v89, v55, v92);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();

    v74 = os_log_type_enabled(v72, v73);
    v75 = v87;
    if (v74)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v93[0] = v77;
      *v76 = 136315394;
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v33, v93);

      *(v76 + 4) = v78;
      *(v76 + 12) = 2080;
      v79 = URL.absoluteString.getter();
      v81 = v80;
      LODWORD(v87) = v73;
      v82 = *(v91 + 8);
      v82(v71, v92);
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v93);

      *(v76 + 14) = v83;
      _os_log_impl(&dword_255A20000, v72, v87, "Removed previous dimension %s and db file at path %s", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C47EC0](v77, -1, -1);
      MEMORY[0x259C47EC0](v76, -1, -1);
    }

    else
    {

      v82 = *(v69 + 8);
      v82(v71, v92);
    }

    v85 = v90;
    specialized static VectorDatabaseAccess.persistDimension(_:at:)(a1);
    result = (v82)(v85, v92);
  }

  else
  {
LABEL_22:
    v84 = v60;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = (*(v91 + 8))(v90, v92);
  }

LABEL_15:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12VectorSearch0C17DatabaseAttributeV_AC0E5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMd, &_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy12VectorSearch0C17DatabaseAttributeVAC0E5ValueOGMd, &_ss18_DictionaryStorageCy12VectorSearch0C17DatabaseAttributeVAC0E5ValueOGMR);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (VectorDatabaseAttribute, DatabaseValue)(v11, v7);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = type metadata accessor for VectorDatabaseAttribute();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7];
      v19 = type metadata accessor for DatabaseValue();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v15, &v7[v10], v19);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

uint64_t dispatch thunk of VectorDatabaseAccess.__allocating_init(path:embeddingProvider:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of CacheDatabase.listAll(namespace:nextToken:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of VectorDatabaseAccess.insert(entries:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of CacheDatabase.delete(entries:);

  return v8(a1);
}

uint64_t dispatch thunk of VectorDatabaseAccess.list(namespace:searchKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 160);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of CacheDatabase.list(namespace:searchKey:);

  return v12(a1, a2, a3);
}

uint64_t outlined init with copy of (VectorDatabaseAttribute, DatabaseValue)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMd, &_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int EmbeddingError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C479E0](a1);
  return Hasher._finalize()();
}

uint64_t dispatch thunk of EmbeddingProviding.dimension()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for EmbeddingProviding.dimension() in conformance UniversalEmbeddingProvider;

  return v9(a1, a2);
}

uint64_t dispatch thunk of EmbeddingProviding.embedding(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of EmbeddingProviding.embedding(input:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EmbeddingProviding.embedding(input:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for NextToken(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NextToken(uint64_t result, int a2, int a3)
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

uint64_t AnnotatedCacheEntry.builder()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v76 = v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v62 - v8;
  v10 = v0[1];
  v66 = *v0;
  v62[1] = v10;
  v77 = v0;
  v11 = type metadata accessor for AnnotatedCacheEntry(0);
  v65 = *(v0 + v11[7]);
  v12 = type metadata accessor for AnnotatedCacheEntryBuilder(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime;
  v64 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v63 = v19;
  v19(v15 + v16, 1, 1, v17);
  v75 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime;
  v19(v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime, 1, 1, v17);
  v20 = (v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
  v67 = (v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
  *v20 = 0;
  v20[1] = 0;
  v21 = v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_ttl;
  *v21 = 0;
  v71 = v21;
  *(v21 + 8) = 1;
  v22 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_userId;
  v23 = type metadata accessor for UserID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v74 = v22;
  v72 = v23;
  v70 = v24 + 56;
  v68 = v24;
  v69 = v25;
  (v25)(v15 + v22, 1, 1);
  v26 = v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_score;
  *v26 = 0;
  v73 = v26;
  *(v26 + 8) = 1;
  *(v15 + 16) = v66;
  *(v15 + 24) = v10;
  *(v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_namespace) = v65;
  v27 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys;
  *(v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys) = MEMORY[0x277D84F90];
  v28 = v11[5];
  v29 = *(v18 + 16);
  v66 = v18 + 16;
  v30 = v77;
  v31 = v9;
  v29(v9, &v77[v28], v17);
  v32 = v63;
  v63(v9, 0, 1, v17);
  v33 = v64;
  swift_beginAccess();

  outlined assign with take of Date?(v31, v15 + v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
  v29(v31, &v30[v11[6]], v17);
  v32(v31, 0, 1, v17);
  v34 = v75;
  swift_beginAccess();
  outlined assign with take of Date?(v31, v15 + v34, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
  v35 = &v30[v11[8]];
  v37 = *v35;
  v36 = v35[1];
  v38 = v67;
  swift_beginAccess();
  *v38 = v37;
  v38[1] = v36;
  v75 = v11;
  v39 = *&v30[v11[9]];
  v40 = *(v39 + 16);
  if (v40)
  {

    v43 = (v39 + 40);
    v44 = MEMORY[0x277D84F90];
    do
    {
      v46 = *(v43 - 1);
      v45 = *v43;
      v78[0] = v46;
      v78[1] = v45;
      MEMORY[0x28223BE20](v41, v42);
      v62[-2] = v78;

      v47 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, &v62[-4], v44);

      if (v47)
      {
      }

      else
      {
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
        }

        v49 = *(v44 + 2);
        v48 = *(v44 + 3);
        if (v49 >= v48 >> 1)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v44);
        }

        *(v44 + 2) = v49 + 1;
        v50 = &v44[16 * v49];
        *(v50 + 4) = v46;
        *(v50 + 5) = v45;
        *(v15 + v27) = v44;
        v41 = swift_endAccess();
      }

      v43 += 2;
      --v40;
    }

    while (v40);
  }

  else
  {
  }

  v51 = v75;
  v52 = v77;
  v53 = *&v77[*(v75 + 40)];
  v54 = v71;
  swift_beginAccess();
  *v54 = v53;
  *(v54 + 8) = 0;
  v55 = v76;
  v56 = v72;
  (*(v68 + 16))(v76, &v52[*(v51 + 44)], v72);
  v69(v55, 0, 1, v56);
  v57 = v74;
  swift_beginAccess();
  outlined assign with take of Date?(v55, v15 + v57, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  swift_endAccess();
  v58 = &v52[*(v51 + 48)];
  v59 = *v58;
  LOBYTE(v52) = v58[8];
  v60 = v73;
  swift_beginAccess();
  *v60 = v59;
  *(v60 + 8) = v52;
  return v15;
}

LLMCache::CacheEntry __swiftcall AnnotatedCacheEntry.toCacheEntry(searchKey:)(Swift::String searchKey)
{
  object = searchKey._object;
  countAndFlagsBits = searchKey._countAndFlagsBits;
  v5 = v1;
  v6 = type metadata accessor for AnnotatedCacheEntry(0);
  v7 = (v2 + *(v6 + 32));
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v2 + *(v6 + 36));
  v15[0] = countAndFlagsBits;
  v15[1] = object;
  v14[2] = v15;

  v11 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v14, v10);
  *v5 = v9;
  *(v5 + 8) = v8;
  *(v5 + 16) = v11 & 1;
  result.llmOutput._object = v12;
  result.llmOutput._countAndFlagsBits = v11;
  result.isExactMatch = v13;
  return result;
}

uint64_t AnnotatedCacheEntryBuilder.__allocating_init(id:namespace:)(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  AnnotatedCacheEntryBuilder.init(id:namespace:)(a1, a2, a3);
  return v9;
}

id one-time initialization function for dateFormatter()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  static AnnotatedCacheEntry.dateFormatter = result;
  return result;
}

uint64_t *AnnotatedCacheEntry.dateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  return &static AnnotatedCacheEntry.dateFormatter;
}

id static AnnotatedCacheEntry.dateFormatter.getter()
{
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v1 = static AnnotatedCacheEntry.dateFormatter;

  return v1;
}

uint64_t AnnotatedCacheEntry.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AnnotatedCacheEntry.lastAccessedTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotatedCacheEntry(0) + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotatedCacheEntry.lastCreatedTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotatedCacheEntry(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotatedCacheEntry.namespace.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AnnotatedCacheEntry(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AnnotatedCacheEntry.llmOutput.getter()
{
  v1 = (v0 + *(type metadata accessor for AnnotatedCacheEntry(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AnnotatedCacheEntry.searchKeys.getter()
{
  v1 = *(v0 + *(type metadata accessor for AnnotatedCacheEntry(0) + 36));
}

uint64_t AnnotatedCacheEntry.userId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotatedCacheEntry(0) + 44);
  v4 = type metadata accessor for UserID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotatedCacheEntry.score.getter()
{
  v1 = (v0 + *(type metadata accessor for AnnotatedCacheEntry(0) + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

Swift::String __swiftcall AnnotatedCacheEntry.getLastAccessedTimeString()()
{
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v1 = static AnnotatedCacheEntry.dateFormatter;
  v2 = v0 + *(type metadata accessor for AnnotatedCacheEntry(0) + 20);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v4 = [v1 stringFromDate_];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::String __swiftcall AnnotatedCacheEntry.getLastCreatedTimeString()()
{
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v1 = static AnnotatedCacheEntry.dateFormatter;
  v2 = v0 + *(type metadata accessor for AnnotatedCacheEntry(0) + 24);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v4 = [v1 stringFromDate_];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
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

unint64_t AnnotatedCacheEntry.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x616572437473616CLL;
    if (a1 != 2)
    {
      v6 = 0x63617073656D616ELL;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 7107700;
    v2 = 0x644972657375;
    if (a1 != 7)
    {
      v2 = 0x65726F6373;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x757074754F6D6C6CLL;
    if (a1 != 4)
    {
      v3 = 0x654B686372616573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnnotatedCacheEntry.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AnnotatedCacheEntry.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnotatedCacheEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnotatedCacheEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnnotatedCacheEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8LLMCache19AnnotatedCacheEntryV10CodingKeys33_DD1C39F3D48E32627515FE9C24F7DFB9LLOGMd, &_ss22KeyedEncodingContainerVy8LLMCache19AnnotatedCacheEntryV10CodingKeys33_DD1C39F3D48E32627515FE9C24F7DFB9LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v27) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = type metadata accessor for AnnotatedCacheEntry(0);
    v15 = v14[5];
    LOBYTE(v27) = 1;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v14[6];
    LOBYTE(v27) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v27) = *(v3 + v14[7]);
    v28 = 3;
    lazy protocol witness table accessor for type CacheNamespace and conformance CacheNamespace();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = (v3 + v14[8]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v27) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = *(v3 + v14[9]);
    v28 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = *(v3 + v14[10]);
    LOBYTE(v27) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v14[11];
    LOBYTE(v27) = 7;
    type metadata accessor for UserID();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x277D5D298]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v3 + v14[12];
    v23 = *v22;
    v24 = v22[8];
    LOBYTE(v27) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t AnnotatedCacheEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for UserID();
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v57 = *(v8 - 8);
  v9 = *(v57 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v50 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8LLMCache19AnnotatedCacheEntryV10CodingKeys33_DD1C39F3D48E32627515FE9C24F7DFB9LLOGMd, &_ss22KeyedDecodingContainerVy8LLMCache19AnnotatedCacheEntryV10CodingKeys33_DD1C39F3D48E32627515FE9C24F7DFB9LLOGMR);
  v55 = *(v58 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v58, v18);
  v20 = &v50 - v19;
  v21 = type metadata accessor for AnnotatedCacheEntry(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = (&v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = a1[3];
  v26 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  lazy protocol witness table accessor for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys();
  v56 = v20;
  v28 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }

  v29 = v13;
  v50 = v21;
  v59 = v25;
  v30 = v57;
  LOBYTE(v61) = 0;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v59;
  *v59 = v31;
  v32[1] = v33;
  LOBYTE(v61) = 1;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v16;
  v35 = *(v30 + 32);
  v35(v32 + v50[5], v34, v8);
  LOBYTE(v61) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v50;
  v35(v32 + v50[6], v29, v8);
  v63 = 3;
  lazy protocol witness table accessor for type CacheNamespace and conformance CacheNamespace();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = v55;
  *(v32 + v36[7]) = v61;
  LOBYTE(v61) = 4;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = (v32 + v36[8]);
  *v39 = v38;
  v39[1] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v63 = 5;
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v62 = 1;
  *(v32 + v36[9]) = v61;
  LOBYTE(v61) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v32;
  *(v32 + v36[10]) = v42;
  LOBYTE(v61) = 7;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x277D5D298]);
  v43 = v52;
  v44 = v53;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v54 + 32))(v41 + v36[11], v43, v44);
  LOBYTE(v61) = 8;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = v46;
  (*(v37 + 8))(v56, v58);
  v48 = v41 + v36[12];
  *v48 = v45;
  *(v48 + 8) = v47 & 1;
  outlined init with copy of AnnotatedCacheEntry(v41, v51);
  __swift_destroy_boxed_opaque_existential_0Tm(v60);
  return outlined destroy of AnnotatedCacheEntry(v41);
}

uint64_t AnnotatedCacheEntry.init(id:lastAccessedTime:lastCreatedTime:namespace:llmOutput:searchKeys:ttl:userId:score:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, char a13)
{
  v18 = *a5;
  *a9 = a1;
  *(a9 + 1) = a2;
  v19 = type metadata accessor for AnnotatedCacheEntry(0);
  v20 = v19[5];
  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 32);
  v22(&a9[v20], a3, v21);
  v22(&a9[v19[6]], a4, v21);
  a9[v19[7]] = v18;
  v23 = &a9[v19[8]];
  *v23 = a6;
  *(v23 + 1) = a7;
  *&a9[v19[9]] = a8;
  *&a9[v19[10]] = a10;
  v24 = v19[11];
  v25 = type metadata accessor for UserID();
  result = (*(*(v25 - 8) + 32))(&a9[v24], a11, v25);
  v27 = &a9[v19[12]];
  *v27 = a12;
  v27[8] = a13 & 1;
  return result;
}

uint64_t key path setter for AnnotatedCacheEntryBuilder.id : AnnotatedCacheEntryBuilder(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t AnnotatedCacheEntryBuilder.id.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t key path setter for AnnotatedCacheEntryBuilder.lastAccessedTime : AnnotatedCacheEntryBuilder(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v18 - v13;
  outlined init with copy of Date?(a1, &v18 - v13, a5, a6);
  v15 = *a2;
  v16 = *a7;
  swift_beginAccess();
  outlined assign with take of Date?(v14, v15 + v16, a5, a6);
  return swift_endAccess();
}

uint64_t AnnotatedCacheEntryBuilder.lastAccessedTime.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v4 + v8, a4, a2, a3);
}

uint64_t AnnotatedCacheEntryBuilder.namespace.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_namespace;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t key path setter for AnnotatedCacheEntryBuilder.llmOutput : AnnotatedCacheEntryBuilder(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t AnnotatedCacheEntryBuilder.llmOutput.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t key path setter for AnnotatedCacheEntryBuilder.searchKeys : AnnotatedCacheEntryBuilder(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t AnnotatedCacheEntryBuilder.searchKeys.getter()
{
  v1 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t AnnotatedCacheEntryBuilder.ttl.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t AnnotatedCacheEntryBuilder.init(id:namespace:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime;
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 56);
  v9(v3 + v7, 1, 1, v8);
  v9(v3 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime, 1, 1, v8);
  v10 = (v3 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
  *v10 = 0;
  v10[1] = 0;
  v11 = v3 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_ttl;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_userId;
  v13 = type metadata accessor for UserID();
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v14 = v3 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_score;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_namespace) = v6;
  *(v3 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys) = MEMORY[0x277D84F90];
  return v3;
}

uint64_t AnnotatedCacheEntryBuilder.withLastAccessedTime(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v20 - v14;
  v16 = a4(0);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a1, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = *a5;
  swift_beginAccess();
  outlined assign with take of Date?(v15, v5 + v18, a2, a3);
  swift_endAccess();
}

uint64_t AnnotatedCacheEntryBuilder.withLlmOutput(_:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t AnnotatedCacheEntryBuilder.appendSearchKey(_:)(uint64_t a1, uint64_t a2)
{
  specialized AnnotatedCacheEntryBuilder.appendSearchKey(_:)(a1, a2);
}

uint64_t AnnotatedCacheEntryBuilder.withSearchKeys(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(*v1 + 400);
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      v3(v5, v6);

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t AnnotatedCacheEntryBuilder.withTtl(_:)(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_ttl;
  swift_beginAccess();
  *v3 = a1;
  *(v3 + 8) = 0;
}

uint64_t type metadata accessor for AnnotatedCacheEntry(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnnotatedCacheEntryBuilder.withScore(_:)(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_score;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t AnnotatedCacheEntryBuilder.build()@<X0>(char *a1@<X8>)
{
  v116 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v107 - v5;
  v7 = type metadata accessor for UserID();
  v119 = *(v7 - 8);
  v120 = v7;
  v8 = *(v119 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v118 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v107 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v24 = MEMORY[0x28223BE20](v20, v23);
  v121 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v107 - v28;
  (*(*v1 + 176))(v27);
  v30 = v21[6];
  if (v30(v19, 1, v20) == 1)
  {
    outlined destroy of AnnotatedCacheEntry?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_255A20000, v32, v33, "Required cache entry parameter lastAccessedTime is not specified", v34, 2u);
      MEMORY[0x259C47EC0](v34, -1, -1);
    }

    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v35 = 1;
    return swift_willThrow();
  }

  v115 = v21;
  v37 = v29;
  v38 = v21[4];
  v117 = v37;
  v39 = v38();
  (*(*v1 + 200))(v39);
  if (v30(v16, 1, v20) == 1)
  {
    v40 = v20;
    outlined destroy of AnnotatedCacheEntry?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.logger);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v115;
    v46 = v117;
    if (v44)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_255A20000, v42, v43, "Required cache entry parameter lastCreatedTime is not specified", v47, 2u);
      MEMORY[0x259C47EC0](v47, -1, -1);
    }

    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();
    return (v45[1])(v46, v40);
  }

  v49 = (v38)(v121, v16, v20);
  v50 = (*(*v1 + 248))(v49);
  if (v51)
  {
    v52 = v50;
    v53 = v51;
    v114 = v20;
    v54 = (*v1 + 272);
    v55 = *v54;
    v56 = *((*v54)() + 16);

    v58 = v117;
    if (v56)
    {
      v59 = (*(*v1 + 296))(v57);
      if (v60)
      {

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v61 = type metadata accessor for Logger();
        __swift_project_value_buffer(v61, static Logger.logger);
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v62, v63))
        {
          goto LABEL_35;
        }

        v64 = swift_slowAlloc();
        *v64 = 0;
        v65 = "Required cache entry parameter ttl is not specified";
      }

      else
      {
        v113 = v59;
        (*(*v1 + 320))();
        v78 = v119;
        v77 = v120;
        if ((*(v119 + 48))(v6, 1, v120) != 1)
        {
          v83 = (*(v78 + 32))(v118, v6, v77);
          v84 = (*(*v1 + 152))(v83);
          v111 = v85;
          v112 = v84;
          v86 = type metadata accessor for AnnotatedCacheEntry(0);
          v87 = v86[5];
          v88 = v58;
          v89 = v114;
          v90 = v115;
          v109 = v52;
          v110 = v53;
          v91 = v115[2];
          v92 = v116;
          v91(&v116[v87], v88, v114);
          v93 = (v91)(&v92[v86[6]], v121, v89);
          v94 = (*(*v1 + 224))(&v123, v93);
          v122 = v123;
          v108 = (v55)(v94);
          v96 = v118;
          v95 = v119;
          v97 = v120;
          v98 = (*(v119 + 16))(&v92[v86[11]], v118, v120);
          v99 = (*(*v1 + 344))(v98);
          v101 = v100;
          (*(v95 + 8))(v96, v97);
          v102 = v90[1];
          v102(v121, v89);
          result = (v102)(v117, v89);
          v103 = v111;
          *v92 = v112;
          *(v92 + 1) = v103;
          v92[v86[7]] = v122;
          v104 = &v92[v86[8]];
          v105 = v110;
          *v104 = v109;
          v104[1] = v105;
          *&v92[v86[9]] = v108;
          *&v92[v86[10]] = v113;
          v106 = &v92[v86[12]];
          *v106 = v99;
          v106[8] = v101 & 1;
          return result;
        }

        outlined destroy of AnnotatedCacheEntry?(v6, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v79 = type metadata accessor for Logger();
        __swift_project_value_buffer(v79, static Logger.logger);
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v62, v63))
        {
LABEL_35:

          lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
          swift_allocError();
          *v80 = 1;
          swift_willThrow();
          v81 = v114;
          v82 = v115[1];
          v82(v121, v114);
          return (v82)(v58, v81);
        }

        v64 = swift_slowAlloc();
        *v64 = 0;
        v65 = "Required cache entry parameter userId is not specified";
      }
    }

    else
    {

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      __swift_project_value_buffer(v76, static Logger.logger);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v62, v63))
      {
        goto LABEL_35;
      }

      v64 = swift_slowAlloc();
      *v64 = 0;
      v65 = "Required cache entry parameter searchKeys should have at least one value";
    }

    _os_log_impl(&dword_255A20000, v62, v63, v65, v64, 2u);
    MEMORY[0x259C47EC0](v64, -1, -1);
    goto LABEL_35;
  }

  v66 = v20;
  v67 = v117;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Logger.logger);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();
  v71 = os_log_type_enabled(v69, v70);
  v72 = v115;
  if (v71)
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_255A20000, v69, v70, "Required cache entry parameter llmOutput is not specified", v73, 2u);
    MEMORY[0x259C47EC0](v73, -1, -1);
  }

  lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
  swift_allocError();
  *v74 = 1;
  swift_willThrow();
  v75 = v72[1];
  v75(v121, v66);
  return (v75)(v67, v66);
}

uint64_t AnnotatedCacheEntryBuilder.deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of AnnotatedCacheEntry?(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of AnnotatedCacheEntry?(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys);

  outlined destroy of AnnotatedCacheEntry?(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_userId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  return v0;
}

uint64_t AnnotatedCacheEntryBuilder.__deallocating_deinit()
{
  v1 = v0[3];

  outlined destroy of AnnotatedCacheEntry?(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of AnnotatedCacheEntry?(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys);

  outlined destroy of AnnotatedCacheEntry?(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_userId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t specialized static AnnotatedCacheEntry.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for AnnotatedCacheEntry(0);
  v6 = v5[5];
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = v5[6];
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = v5[7];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9)
  {
    if (v9 == 1)
    {
      v11 = 0xE400000000000000;
      v12 = 1819047270;
      if (v10)
      {
        goto LABEL_11;
      }

LABEL_15:
      v13 = 0xE400000000000000;
      if (v12 != 1953718630)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v12 = 0xD000000000000012;
    v11 = 0x8000000255A4D5C0;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    v12 = 1953718630;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  if (v10 == 1)
  {
    v13 = 0xE400000000000000;
    if (v12 != 1819047270)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = 0x8000000255A4D5C0;
    if (v12 != 0xD000000000000012)
    {
      goto LABEL_22;
    }
  }

LABEL_20:
  if (v11 == v13)
  {

    goto LABEL_23;
  }

LABEL_22:
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v15 = v5[8];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  if ((v16 != *v18 || v17 != v18[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(a1 + v5[9]), *(a2 + v5[9])) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[10]) != *(a2 + v5[10]))
  {
    return 0;
  }

  v19 = v5[11];
  if ((static UserID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v20 = v5[12];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys);
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

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t specialized AnnotatedCacheEntryBuilder.appendSearchKey(_:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + 272))();
  v15[0] = a1;
  v15[1] = a2;
  v14[2] = v15;
  v6 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v14, v5);

  if ((v6 & 1) == 0)
  {
    v7 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = a1;
    *(v12 + 5) = a2;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return v2;
}

uint64_t keypath_set_13Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

void type metadata completion function for AnnotatedCacheEntry()
{
  v0 = MEMORY[0x277D837D0];
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String](319, &lazy cache variable for type metadata for [String], v0, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UserID();
      if (v3 <= 0x3F)
      {
        type metadata accessor for [String](319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata completion function for AnnotatedCacheEntryBuilder()
{
  type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Date?(319, &lazy cache variable for type metadata for UserID?, MEMORY[0x277D5D298]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AnnotatedCacheEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnotatedCacheEntry.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized AnnotatedCacheEntry.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000255A4D990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616572437473616CLL && a2 == 0xEF656D6954646574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x757074754F6D6C6CLL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654B686372616573 && a2 == 0xEA00000000007379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7107700 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x644972657375 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t InsertRequest.init(searchKey:llmOutput:loggingTraceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for InsertRequest() + 24);
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t type metadata accessor for InsertRequest()
{
  result = type metadata singleton initialization cache for InsertRequest;
  if (!type metadata singleton initialization cache for InsertRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InsertRequest.searchKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InsertRequest.llmOutput.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InsertRequest.loggingTraceId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InsertRequest() + 24);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata completion function for InsertRequest()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static LLMCacheManagerFeatureFlags.forceEnabled.setter(char a1)
{
  result = swift_beginAccess();
  static LLMCacheManagerFeatureFlags.forceEnabled = a1;
  return result;
}

const char *LLMCacheManagerFeatureFlags.feature.getter()
{
  v1 = "FullPlanner";
  if (*v0 != 1)
  {
    v1 = "ResponseGeneration";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "FastPlanner";
  }
}

Swift::Int LLMCacheManagerFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C479E0](v1);
  return Hasher._finalize()();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA08]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB48]();
}