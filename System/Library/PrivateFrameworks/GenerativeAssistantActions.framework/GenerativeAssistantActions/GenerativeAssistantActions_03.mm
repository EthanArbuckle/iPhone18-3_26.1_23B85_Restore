uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for OnScreenContentType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440]);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for OnScreenContentType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMd, &_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for OnScreenContentType();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMd, &_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC21UIIntelligenceSupport17IntelligenceImageV14RepresentationV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceImage.Representation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMd, &_ss11_SetStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMR);
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
      lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type IntelligenceImage.Representation and conformance IntelligenceImage.Representation, MEMORY[0x277D74500]);
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
          lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type IntelligenceImage.Representation and conformance IntelligenceImage.Representation, MEMORY[0x277D74500]);
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

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC23IntelligenceFlowContext19OnScreenContentTypeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for OnScreenContentType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMd, &_ss11_SetStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMR);
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
      lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440]);
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
          lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440]);
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

uint64_t specialized ContentLoader.getContentTypes(representations:)()
{
  v0 = type metadata accessor for OnScreenContentType();
  v68 = *(v0 - 8);
  v2 = v68;
  v1 = v68;
  v3 = *(v68 + 64);
  v4 = MEMORY[0x28223BE20](v0);
  v66 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v65 = v60 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v70 = *(v64 - 8);
  v71 = v70;
  v7 = *(v70 + 64);
  v8 = MEMORY[0x28223BE20](v64);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v73 = v60 - v11;
  v60[0] = type metadata accessor for UTType();
  v69 = *(v60[0] - 8);
  v12 = *(v69 + 64);
  v13 = MEMORY[0x28223BE20](v60[0]);
  v72 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMd, &_ss23_ContiguousArrayStorageCy23IntelligenceFlowContext19OnScreenContentTypeOGMR);
  v67 = *(v1 + 72);
  v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v16 = swift_allocObject();
  v63 = xmmword_24FE1A8C0;
  *(v16 + 16) = xmmword_24FE1A8C0;
  v61 = (v16 + v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMd, &_ss23_ContiguousArrayStorageCy21UIIntelligenceSupport17IntelligenceImageV14RepresentationVGMR);
  v17 = *(type metadata accessor for IntelligenceImage.Representation() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v63;
  v21 = &_s22UniformTypeIdentifiers6UTTypeVSgMR;
  static ContentLoader.fullRepresentation.getter(2048, MEMORY[0x277D744E8], 768, MEMORY[0x277D744F0]);
  static ContentLoader.fullRepresentation.getter(256, MEMORY[0x277D744D8], 256, MEMORY[0x277D744E0]);
  v22 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC21UIIntelligenceSupport17IntelligenceImageV14RepresentationV_Tt0g5Tf4g_n(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v23 = v61;
  *v61 = v22;
  v24 = v60[0];
  v25 = v68 + 104;
  v26 = *(v68 + 104);
  v26(v23, *MEMORY[0x277D1D428], v0);
  v27 = *MEMORY[0x277D1D430];
  v62 = v26;
  *&v63 = v25;
  v26(&v23[v67], v27, v0);
  v28 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC23IntelligenceFlowContext19OnScreenContentTypeO_Tt0g5Tf4g_n(v16);
  swift_setDeallocating();
  v67 = v0;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v75 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVSgGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVSgGMR);
  v29 = *(v70 + 72);
  v30 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v61 = swift_allocObject();
  v31 = v61 + v30;
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.vCard.getter();
  v32 = *(v69 + 56);
  v32(&v31[4 * v29], 0, 1, v24);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.html.getter();
  v32(&v31[7 * v29], 0, 1, v24);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.xml.getter();
  v32(&v31[10 * v29], 0, 1, v24);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.javaScript.getter();
  v32(&v31[14 * v29], 0, 1, v24);
  static UTType.cHeader.getter();
  v32(&v31[15 * v29], 0, 1, v24);
  static UTType.cSource.getter();
  v32(&v31[16 * v29], 0, 1, v24);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.cPlusPlusHeader.getter();
  v32(&v31[18 * v29], 0, 1, v24);
  static UTType.cPlusPlusSource.getter();
  v32(&v31[19 * v29], 0, 1, v24);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.phpScript.getter();
  v32(&v31[23 * v29], 0, 1, v24);
  static UTType.pythonScript.getter();
  v32(&v31[24 * v29], 0, 1, v24);
  static UTType.rubyScript.getter();
  v32(&v31[25 * v29], 0, 1, v24);
  static UTType.shellScript.getter();
  v32(&v31[26 * v29], 0, 1, v24);
  static UTType.pdf.getter();
  v32(&v31[27 * v29], 0, 1, v24);
  static UTType.commaSeparatedText.getter();
  v32(&v31[28 * v29], 0, 1, v24);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.json.getter();
  v32(&v31[31 * v29], 0, 1, v24);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.rtf.getter();
  v32(&v31[33 * v29], 0, 1, v24);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.plainText.getter();
  v32(&v31[35 * v29], 0, 1, v24);
  static UTType.tarArchive.getter();
  v32(&v31[36 * v29], 0, 1, v24);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  static UTType.zip.getter();
  v32(&v31[38 * v29], 0, 1, v24);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  v33 = 40;
  v34 = (v69 + 48);
  v71 = v69 + 32;
  v35 = MEMORY[0x277D84F90];
  v60[1] = v31;
  v36 = v31;
  do
  {
    v37 = v73;
    outlined init with copy of Date?(v36, v73, &_s22UniformTypeIdentifiers6UTTypeVSgMd, v21);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v37, v10, &_s22UniformTypeIdentifiers6UTTypeVSgMd, v21);
    if ((*v34)(v10, 1, v24) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v10, &_s22UniformTypeIdentifiers6UTTypeVSgMd, v21);
    }

    else
    {
      v70 = v33;
      v38 = v29;
      v39 = v24;
      v40 = v21;
      v41 = *v71;
      v42 = v10;
      v43 = v10;
      v44 = v39;
      (*v71)(v72, v43);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
      }

      v46 = v35[2];
      v45 = v35[3];
      if (v46 >= v45 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1, v35);
      }

      v35[2] = v46 + 1;
      (v41)(v35 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v46, v72, v44);
      v21 = v40;
      v24 = v44;
      v10 = v42;
      v29 = v38;
      v33 = v70;
    }

    v36 += v29;
    --v33;
  }

  while (v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v47 = v66;
  v48 = v67;
  *v66 = v35;
  v62(v47, *MEMORY[0x277D1D438], v48);
  v49 = v65;
  specialized Set._Variant.insert(_:)(v65, v47);
  (*(v68 + 8))(v49, v48);
  if (one-time initialization token for contextRetrieval != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logger.contextRetrieval);
  v51 = v75;

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v74 = v55;
    *v54 = 136315650;
    *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x4C746E65746E6F43, 0xED0000726564616FLL, &v74);
    *(v54 + 12) = 2080;
    *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000024FE205A0, &v74);
    *(v54 + 22) = 2080;
    lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(&lazy protocol witness table cache variable for type OnScreenContentType and conformance OnScreenContentType, MEMORY[0x277D1D440]);
    v56 = Set.description.getter();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v74);

    *(v54 + 24) = v58;
    _os_log_impl(&dword_24FD67000, v52, v53, "%s.%s Context Retrieval should return the following content types: %s", v54, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v55, -1, -1);
    MEMORY[0x253057F40](v54, -1, -1);
  }

  return v51;
}

uint64_t lazy protocol witness table accessor for type OnScreenContentSources and conformance OnScreenContentSources(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

Swift::Bool __swiftcall String.isLongerThan(num:unit:)(Swift::Int num, NLTokenUnit unit)
{
  v4 = v3;
  v5 = v2;
  v7 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v8 = MEMORY[0x253056EA0](v5, v4);
  [v7 setString_];

  NLTokenizer.enumerateTokens(in:using:)();
  return num < 0;
}

uint64_t String.withoutEmoji.getter(uint64_t a1, unint64_t a2)
{

  v4 = specialized RangeReplaceableCollection.filter(_:)(a1, a2);
  v6 = v5;

  specialized Sequence.reduce<A>(into:_:)(0, 0xE000000000000000, v4, v6);

  return 0;
}

uint64_t closure #1 in String.withoutEmoji.getter(int *a1)
{
  v2 = type metadata accessor for Unicode.NumericType();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSg_AEtMd, &_ss7UnicodeO11NumericTypeOSg_AEtMR);
  v5 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v12);
  v46 = &v41 - v15;
  v16 = type metadata accessor for Unicode.Scalar.Properties();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  v24 = *a1;
  Unicode.Scalar.properties.getter();
  v25 = Unicode.Scalar.Properties.isEmojiPresentation.getter();
  v26 = *(v17 + 8);
  v26(v23, v16);
  if ((v25 & 1) == 0)
  {
    Unicode.Scalar.properties.getter();
    v27 = Unicode.Scalar.Properties.isEmoji.getter();
    v26(v23, v16);
    if ((v27 & 1) == 0)
    {
      Unicode.Scalar.properties.getter();
      v36 = Unicode.Scalar.Properties.isVariationSelector.getter();
      v26(v23, v16);
      if ((v36 & 1) == 0 && v24 != 8205)
      {
        goto LABEL_11;
      }
    }
  }

  Unicode.Scalar.properties.getter();
  v28 = v46;
  Unicode.Scalar.Properties.numericType.getter();
  v29 = v28;
  v26(v21, v16);
  v31 = v44;
  v30 = v45;
  (*(v44 + 104))(v14, *MEMORY[0x277D84E00], v45);
  (*(v31 + 56))(v14, 0, 1, v30);
  v32 = *(v43 + 48);
  outlined init with copy of Unicode.NumericType?(v28, v7);
  outlined init with copy of Unicode.NumericType?(v14, &v7[v32]);
  v33 = *(v31 + 48);
  if (v33(v7, 1, v30) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v14, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
    outlined destroy of OnScreenContent.Document?(v29, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
    if (v33(&v7[v32], 1, v30) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v7, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
LABEL_11:
      v35 = 1;
      return v35 & 1;
    }
  }

  else
  {
    v34 = v42;
    outlined init with copy of Unicode.NumericType?(v7, v42);
    if (v33(&v7[v32], 1, v30) != 1)
    {
      v37 = v41;
      (*(v31 + 32))(v41, &v7[v32], v30);
      v38 = v34;
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v31 + 8);
      v39(v37, v30);
      outlined destroy of OnScreenContent.Document?(v14, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
      outlined destroy of OnScreenContent.Document?(v46, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
      v39(v38, v30);
      outlined destroy of OnScreenContent.Document?(v7, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
      return v35 & 1;
    }

    outlined destroy of OnScreenContent.Document?(v14, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
    outlined destroy of OnScreenContent.Document?(v46, &_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
    (*(v31 + 8))(v34, v30);
  }

  outlined destroy of OnScreenContent.Document?(v7, &_ss7UnicodeO11NumericTypeOSg_AEtMd, &_ss7UnicodeO11NumericTypeOSg_AEtMR);
  v35 = 0;
  return v35 & 1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> specialized Sequence.reduce<A>(into:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19[3] = a2;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v7 = 0;
    v20 = a4 & 0xFFFFFFFFFFFFFFLL;
    v18 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    do
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v19[0] = a3;
          v19[1] = v20;
          v9 = v19 + v7;
        }

        else
        {
          v8 = v18;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v8 = _StringObject.sharedUTF8.getter();
          }

          v9 = (v8 + v7);
        }

        v10 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v14 = (__clz(v10 ^ 0xFF) - 24);
        if (v14 <= 2)
        {
          if (v14 != 1)
          {
            v10 = v9[1] & 0x3F | ((v10 & 0x1F) << 6);
            v11 = 2;
            goto LABEL_15;
          }

LABEL_14:
          v11 = 1;
          goto LABEL_15;
        }

        if (v14 == 3)
        {
          v10 = ((v10 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
          v11 = 3;
        }

        else
        {
          v10 = ((v10 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
          v11 = 4;
        }
      }

LABEL_15:
      if (v10 > 0x7F)
      {
        v15 = (v10 & 0x3F) << 8;
        if (v10 >= 0x800)
        {
          v16 = (v15 | (v10 >> 6) & 0x3F) << 8;
          v17 = (((v16 | (v10 >> 12) & 0x3F) << 8) | (v10 >> 18)) - 2122219023;
          v12 = (v10 >> 12) + v16 + 8487393;
          if (HIWORD(v10))
          {
            v12 = v17;
          }
        }

        else
        {
          v12 = (v10 >> 6) + v15 + 33217;
        }
      }

      else
      {
        v12 = v10 + 1;
      }

      v7 += v11;
      v19[0] = (v12 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v12) >> 3))));
      v13 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x253056FE0](v13);
    }

    while (v7 < v4);
  }
}

double closure #1 in String.withoutMarkdownURLs.getter@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GMR);
  Regex.Match.output.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t String.asDisplayURL.getter(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v58 - v6;
  URL.init(string:)();
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_17:
    if (one-time initialization token for intent != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.intent);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v59 = v56;
      *v55 = 136315138;
      *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v59);
      _os_log_impl(&dword_24FD67000, v53, v54, "Url is invalid: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x253057F40](v56, -1, -1);
      MEMORY[0x253057F40](v55, -1, -1);
    }

    return 0;
  }

  v10 = URL.host.getter();
  v12 = v11;
  (*(v9 + 8))(v7, v8);
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = specialized String.withCString<A>(_:)(v10, v12, v10);
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17._countAndFlagsBits = v13;
    v17._object = v15;
    v18 = String.hasSuffix(_:)(v17);

    v19 = v10;
    v20 = v12;
    if (v18)
    {
      v21 = String.count.getter();
      v22 = specialized BidirectionalCollection.dropLast(_:)(v21);
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v19 = MEMORY[0x253056F50](v22, v24, v26, v28);
      v20 = v29;
    }

    v30 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v30 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {

      v31._countAndFlagsBits = 46;
      v31._object = 0xE100000000000000;
      v32 = String.hasSuffix(_:)(v31);
      if (v32)
      {
        v33 = String.count.getter();
        v34 = specialized BidirectionalCollection.dropLast(_:)(v33);
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v19 = MEMORY[0x253056F50](v34, v36, v38, v40);
        v20 = v41;
      }

      v59 = 46;
      v60 = 0xE100000000000000;
      MEMORY[0x28223BE20](v32);
      *(&v58 - 2) = &v59;
      specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v58 - 4), v19, v20);
      if ((v42 & 1) == 0)
      {
        v43 = String.index(after:)();
        v44 = specialized Collection.suffix(from:)(v43, v19, v20);
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v19 = MEMORY[0x253056F50](v44, v46, v48, v50);
        v20 = v51;
      }

      v59 = v19;
      v60 = v20;

      MEMORY[0x253056FE0](46, 0xE100000000000000);

      MEMORY[0x253056FE0](v13, v15);

      return v59;
    }

    else
    {
    }
  }

  else
  {
  }

  return v10;
}

uint64_t closure #1 in String.asDisplayURL.getter@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  strlen(a1);
  if (_CFHostGetTopLevelDomain())
  {
    result = String.init(cString:)();
    a2 = result;
    a3 = v8;
  }

  else
  {
  }

  *a4 = a2;
  a4[1] = a3;
  return result;
}

Swift::String __swiftcall String.createBreadcrumbURL(_:)(Swift::Bool a1)
{
  v3 = v2;
  v4 = v1;
  v5 = a1;
  v132 = type metadata accessor for CharacterSet();
  v6 = *(v132 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
  v126 = *(v134 - 8);
  v9 = *(v126 + 64);
  MEMORY[0x28223BE20](v134);
  v133 = &v119 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v119 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v119 - v21;
  URL.init(string:)();
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v22, v14, v15);
    v28 = URL.host.getter();
    if (!v29)
    {
      if (one-time initialization token for intent != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.intent);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v139 = v49;
        *v48 = 136315138;
        *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v139);
        _os_log_impl(&dword_24FD67000, v46, v47, "Invalid host: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x253057F40](v49, -1, -1);
        MEMORY[0x253057F40](v48, -1, -1);
      }

      (*(v16 + 8))(v22, v15);
      goto LABEL_14;
    }

    v30 = v28;
    v31 = v29;
    v32._countAndFlagsBits = 779581303;
    v32._object = 0xE400000000000000;
    v33 = String.hasPrefix(_:)(v32);
    v123 = v5;
    v125 = v6;
    if (v33)
    {
      v34 = String.count.getter();
      v35 = specialized Collection.dropFirst(_:)(v34, v30, v31);
      v37 = v36;
      v39 = v38;
      v40 = v22;
      v42 = v41;

      v43 = MEMORY[0x253056F50](v35, v37, v39, v42);
      v3 = v44;
      v22 = v40;
      v4 = v43;
    }

    else
    {
      v4 = v30;
      v3 = v31;
    }

    v52 = URL.pathComponents.getter();
    v53 = *(v52 + 16);
    if (v53 <= 1)
    {
      (*(v16 + 8))(v22, v15);

      goto LABEL_15;
    }

    v119 = v22;
    v120 = v4;
    v121 = v3;
    v122 = v16;
    v129 = v15;
    specialized _copyCollectionToContiguousArray<A>(_:)(v52, v52 + 32, 1, (2 * v53) | 1);
    v55 = v54;

    v56 = *(v55 + 2);

    v130 = v56;
    if (v56)
    {
      v57 = 0;
      v3 = 0;
      v4 = 0xE100000000000000;
      while (v3 < *(v55 + 2))
      {
        v58 = *&v55[v57 + 40];
        v139 = *&v55[v57 + 32];
        v140 = v58;
        v137 = 45;
        v138 = 0xE100000000000000;
        v135 = 32;
        v136 = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v59 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v61 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew()(v55);
        }

        if (v3 >= *(v55 + 2))
        {
          goto LABEL_67;
        }

        v62 = &v55[v57];
        v63 = *&v55[v57 + 40];
        *(v62 + 4) = v59;
        *(v62 + 5) = v61;

        if (v3 >= *(v55 + 2))
        {
          goto LABEL_68;
        }

        v64 = *(v62 + 5);
        v139 = *(v62 + 4);
        v140 = v64;
        v137 = 95;
        v138 = 0xE100000000000000;
        v135 = 32;
        v136 = 0xE100000000000000;
        v65 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        if (v3 >= *(v55 + 2))
        {
          goto LABEL_69;
        }

        ++v3;
        v67 = *(v62 + 5);
        *(v62 + 4) = v65;
        *(v62 + 5) = v66;

        v57 += 16;
        if (v130 == v3)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_28:
    v130 = *(v55 + 2);
    if (v130)
    {
      v68 = 0;
      v69 = 0;
      v127 = "UI Hiearchy Content";
      v128 = (v122 + 8);
      ++v125;
      v126 += 8;
      v124 = v20;
      v4 = v134;
      while (v69 < *(v55 + 2))
      {
        v70 = *&v55[v68 + 32];
        v71 = *&v55[v68 + 40];

        URL.init(fileURLWithPath:)();

        v72 = URL.lastPathComponent.getter();
        v74 = v73;
        v75._countAndFlagsBits = URL.pathExtension.getter();
        if (String.hasSuffix(_:)(v75))
        {
          v76 = String.count.getter();

          if (v76 < 0)
          {
            goto LABEL_77;
          }

          String.index(_:offsetBy:limitedBy:)();
          v77 = String.subscript.getter();
          v79 = v78;
          v81 = v80;
          v3 = v82;

          v72 = MEMORY[0x253056F50](v77, v79, v81, v3);
          v74 = v83;

          (*v128)(v20, v129);
        }

        else
        {
          (*v128)(v20, v129);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew()(v55);
        }

        if (v69 >= *(v55 + 2))
        {
          goto LABEL_71;
        }

        v3 = &v55[v68];
        v84 = *&v55[v68 + 40];
        *(v3 + 32) = v72;
        *(v3 + 40) = v74;

        if (v69 >= *(v55 + 2))
        {
          goto LABEL_72;
        }

        v85 = *(v3 + 40);
        v137 = *(v3 + 32);
        v138 = v85;

        v86 = v133;
        Regex.init(_regexString:version:)();
        v135 = 32;
        v136 = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        lazy protocol witness table accessor for type String and conformance String();
        lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>, &_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
        RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();
        (*v126)(v86, v4);

        if (v69 >= *(v55 + 2))
        {
          goto LABEL_73;
        }

        v87 = v140;
        v88 = *(v3 + 40);
        *(v3 + 32) = v139;
        *(v3 + 40) = v87;

        if (v69 >= *(v55 + 2))
        {
          goto LABEL_74;
        }

        v89 = *(v3 + 40);
        v139 = *(v3 + 32);
        v140 = v89;

        v90 = v131;
        static CharacterSet.whitespaces.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v91 = StringProtocol.trimmingCharacters(in:)();
        v93 = v92;
        (*v125)(v90, v132);

        if (v69 >= *(v55 + 2))
        {
          goto LABEL_75;
        }

        ++v69;
        v94 = *(v3 + 40);
        *(v3 + 32) = v91;
        *(v3 + 40) = v93;

        v68 += 16;
        v20 = v124;
        if (v130 == v69)
        {
          v95 = *(v55 + 2);
          if (!v95)
          {
            goto LABEL_56;
          }

          v3 = 0;
          v96 = v55 + 40;
          v97 = (v95 - 1);
          v98 = MEMORY[0x277D84F90];
LABEL_45:
          v99 = &v96[16 * v3];
          v4 = v3;
          while (v4 < *(v55 + 2))
          {
            v101 = *(v99 - 1);
            v100 = *v99;
            v3 = v4 + 1;

            if (String.count.getter() > 1)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v139 = v98;
              v133 = v97;
              v134 = v96;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v98 + 2) + 1, 1);
                v98 = v139;
              }

              v104 = *(v98 + 2);
              v103 = *(v98 + 3);
              if (v104 >= v103 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1);
                v98 = v139;
              }

              *(v98 + 2) = v104 + 1;
              v105 = &v98[16 * v104];
              *(v105 + 4) = v101;
              *(v105 + 5) = v100;
              v97 = v133;
              v96 = v134;
              if (v133 != v4)
              {
                goto LABEL_45;
              }

              goto LABEL_57;
            }

            v99 += 16;
            ++v4;
            if (v95 == v3)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_76;
        }
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

LABEL_56:
    v98 = MEMORY[0x277D84F90];
LABEL_57:
    v106 = v121;
    v107 = v122;

    v108 = *(v98 + 2);
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v98;
    v110 = v129;
    v111 = v120;
    if (!v109 || v108 >= *(v98 + 3) >> 1)
    {
      v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v109, v108 + 1, 1, v98);
      v141 = v98;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v111, v106);

    v139 = v98;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v4 = BidirectionalCollection<>.joined(separator:)();
    v3 = v112;

    if (*(v98 + 2) >= 3uLL && v123)
    {

      if (*(v98 + 2))
      {
        v113 = *(v98 + 5);
        v139 = *(v98 + 4);
        v140 = v113;

        MEMORY[0x253056FE0](32, 0xE100000000000000);

        MEMORY[0x253056FE0](12222690, 0xA300000000000000);

        MEMORY[0x253056FE0](32, 0xE100000000000000);

        MEMORY[0x253056FE0](3026478, 0xE300000000000000);

        MEMORY[0x253056FE0](32, 0xE100000000000000);

        MEMORY[0x253056FE0](12222690, 0xA300000000000000);

        MEMORY[0x253056FE0](32, 0xE100000000000000);

        v114 = *(v98 + 2);
        if (v114)
        {
          v115 = &v98[16 * v114 + 32];
          v116 = *(v115 - 16);
          v117 = *(v115 - 8);

          MEMORY[0x253056FE0](v116, v117);

          v4 = v139;
          v3 = v140;
          goto LABEL_65;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_81;
    }

LABEL_65:
    (*(v107 + 8))(v119, v110);

    goto LABEL_15;
  }

  outlined destroy of OnScreenContent.Document?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (one-time initialization token for intent != -1)
  {
LABEL_78:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.intent);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v139 = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v139);
    _os_log_impl(&dword_24FD67000, v24, v25, "Url is invalid: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x253057F40](v27, -1, -1);
    MEMORY[0x253057F40](v26, -1, -1);
  }

LABEL_14:

LABEL_15:
  v50 = v4;
  v51 = v3;
LABEL_81:
  result._object = v51;
  result._countAndFlagsBits = v50;
  return result;
}

uint64_t String.numberOfLines(attributes:width:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v8 = MEMORY[0x253056EA0](a3, a4);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10 = [v7 initWithString:v8 attributes:isa];

  v11 = [objc_allocWithZone(MEMORY[0x277D74278]) initWithSize_];
  [v11 setLineFragmentPadding_];
  [v11 setMaximumNumberOfLines_];
  v12 = [objc_allocWithZone(MEMORY[0x277D74238]) init];
  [v12 addTextContainer_];
  v13 = [objc_allocWithZone(MEMORY[0x277D742D8]) initWithAttributedString_];
  [v13 addLayoutManager_];
  [v12 glyphRangeForTextContainer_];
  if ([v12 numberOfGlyphs] >= 1)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v24 = 0;
      v25 = 0;
      [v12 lineFragmentRectForGlyphAtIndex:v15 effectiveRange:&v24];
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v15 = v25 + v24;
      ++v14;
      if (v15 >= [v12 numberOfGlyphs])
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = 0;
LABEL_7:
  v17 = MEMORY[0x253056EA0](a3, a4);
  v18 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v17 sizeWithAttributes_];
  v20 = v19;

  v21 = v20 / a1;
  if (COERCE__INT64(fabs(v20 / a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (__OFADD__(v21, 1))
  {
    goto LABEL_19;
  }

  if (v21 + 1 <= v16)
  {
    result = v16;
  }

  else
  {
    result = v21 + 1;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized RangeReplaceableCollection.filter(_:)(uint64_t a1, unint64_t a2)
{
  v16 = 0;
  v17 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v6 = 0;
    v18 = a2 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v11 = v10;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v15[0] = a1;
          v15[1] = v18;
          v8 = v15 + v6;
        }

        else
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v7 = _StringObject.sharedUTF8.getter();
          }

          v8 = (v7 + v6);
        }

        v9 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = (__clz(v9 ^ 0xFF) - 24);
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v9 = ((v9 & 0xF) << 12) | ((v8[1] & 0x3F) << 6) | v8[2] & 0x3F;
            v11 = 3;
          }

          else
          {
            v9 = ((v9 & 0xF) << 18) | ((v8[1] & 0x3F) << 12) | ((v8[2] & 0x3F) << 6) | v8[3] & 0x3F;
            v11 = 4;
          }

          goto LABEL_16;
        }

        if (v13 == 1)
        {
LABEL_15:
          v11 = 1;
        }

        else
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
          v11 = 2;
        }
      }

LABEL_16:
      LODWORD(v15[0]) = v9;
      v12 = closure #1 in String.withoutEmoji.getter(v15);
      if (v2)
      {
      }

      if (v12)
      {
        String.UnicodeScalarView.append(_:)();
      }

      v6 += v11;
      if (v6 >= v4)
      {
        return v16;
      }
    }
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__s = a1;
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      strlen(__s);
LABEL_6:
      if (_CFHostGetTopLevelDomain())
      {
        return String.init(cString:)();
      }

      return a3;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      strlen(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
      goto LABEL_6;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return a3;
}

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t specialized Collection.suffix(from:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

BOOL partial apply for closure #1 in String.isLongerThan(num:unit:)()
{
  v1 = *(v0 + 16);
  v2 = *v1 + 1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 24);
    *v1 = v2;
    return v2 <= v3;
  }

  return result;
}

uint64_t outlined init with copy of Unicode.NumericType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSgMd, _ss7UnicodeO11NumericTypeOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static IntentDialogUtils.getDialog(catID:response:partnerName:currentPartnerName:requestedPartnerName:appName:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = *a1;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v27 = v18;
  v19 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v19 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v20;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a3, 0x65736E6F70736572, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v27 = v20;
  }

  if (a5)
  {

    specialized Dictionary.subscript.setter(a4, a5, 0xD000000000000013, 0x800000024FE20070);
  }

  if (a9)
  {

    specialized Dictionary.subscript.setter(a8, a9, 0xD000000000000014, 0x800000024FE20650);
  }

  if (a7)
  {

    specialized Dictionary.subscript.setter(a6, a7, 0xD000000000000012, 0x800000024FE20630);
  }

  if (a11)
  {

    specialized Dictionary.subscript.setter(a10, a11, 0x656D614E707061, 0xE700000000000000);
  }

  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v26) = v25;
  v22 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v27);

  v23.value._countAndFlagsBits = a4;
  v23.value._object = a5;
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v26, v23, v22);

  return IntentDialog.init(stringLiteral:)();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        specialized _NativeDictionary.copy()();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = specialized _NativeDictionary._delete(at:)(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = *v3;
  if (a2 == 1)
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v7)
    {
      v8 = result;
      v9 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v4;
      v17 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v11 = v17;
      }

      v12 = *(*(v11 + 56) + 16 * v8 + 8);

      result = specialized _NativeDictionary._delete(at:)(v8, v11);
      *v4 = v11;
    }
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, v16);
    *v4 = v18;
  }

  return result;
}

uint64_t static IntentDialogUtils.getDialogAndInsertToFeatureStore(requestID:catID:responseDialog:responseText:alternativeExecutorRequired:userQuery:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v14 = *a3;
  v15 = a7;
  if (!a7)
  {

    a6 = a4;
    v15 = a5;
  }

  v27 = v14;
  v16 = CatId.rawValue.getter();
  v26 = a4;
  v18 = v17;
  *&v30 = 0xD000000000000019;
  *(&v30 + 1) = 0x800000024FE20670;

  MEMORY[0x253056FE0](v16, v18);

  *&v31 = a1;
  *(&v31 + 1) = a2;
  *&v32 = a6;
  *(&v32 + 1) = v15;
  LOBYTE(v33) = a8 & 1;
  *(&v33 + 1) = a9;
  v34 = a10;
  type metadata accessor for FeatureStoreService();
  v28[2] = v32;
  v28[3] = v33;
  v29 = a10;
  v28[0] = v30;
  v28[1] = v31;
  lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult();
  lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult();

  static FeatureStoreService.insert<A>(interactionId:item:)();
  outlined destroy of IntentDialogUtils.GenerativeAssistantToolResult(&v30);
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v20 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v20 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v28[0] = v19;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, a5, 0x65736E6F70736572, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v28[0]) = v27;
  v22 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);

  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v28, 0, v22);

  return IntentDialog.init(stringLiteral:)();
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        outlined init with take of Any(&v27, v29);
        outlined init with take of Any(v29, v30);
        outlined init with take of Any(v30, &v28);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = outlined init with take of Any(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = outlined init with take of Any(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6449746163;
  v3 = 0x65736E6F70736572;
  v4 = 0xD00000000000001BLL;
  if (v1 != 3)
  {
    v4 = 0x7265755172657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4974736575716572;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntentDialogUtils.GenerativeAssistantToolResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26GenerativeAssistantActions17IntentDialogUtilsC0dE10ToolResultV10CodingKeys33_F234445D88D707135CA51548BC1CF2CDLLOGMd, &_ss22KeyedEncodingContainerVy26GenerativeAssistantActions17IntentDialogUtilsC0dE10ToolResultV10CodingKeys33_F234445D88D707135CA51548BC1CF2CDLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v21[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v21[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = *(v3 + 48);
  v21[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v3[7];
  v20 = v3[8];
  v21[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

__n128 protocol witness for Decodable.init(from:) in conformance IntentDialogUtils.GenerativeAssistantToolResult@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized IntentDialogUtils.GenerativeAssistantToolResult.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return outlined init with take of Any(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
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
    v22 = *v6;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v24);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
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
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v22);
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7ToolKit25TypedValueAsyncResolvable_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7ToolKit25TypedValueAsyncResolvable_pGMd, &_ss18_DictionaryStorageCySS7ToolKit25TypedValueAsyncResolvable_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v4, &v13, &_sSS_7ToolKit25TypedValueAsyncResolvable_ptMd, &_sSS_7ToolKit25TypedValueAsyncResolvable_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of TypedValueAsyncResolvable(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult()
{
  result = lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult;
  if (!lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult;
  if (!lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult and conformance IntentDialogUtils.GenerativeAssistantToolResult);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IntentDialogUtils.GenerativeAssistantToolResult(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for IntentDialogUtils.GenerativeAssistantToolResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26GenerativeAssistantActions22ExtendedAttributeUtilsO_SSSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsOSSSgGMd, &_ss18_DictionaryStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsOSSSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t specialized IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746163 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024FE206D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265755172657375 && a2 == 0xE900000000000079)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized IntentDialogUtils.GenerativeAssistantToolResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26GenerativeAssistantActions17IntentDialogUtilsC0dE10ToolResultV10CodingKeys33_F234445D88D707135CA51548BC1CF2CDLLOGMd, &_ss22KeyedDecodingContainerVy26GenerativeAssistantActions17IntentDialogUtilsC0dE10ToolResultV10CodingKeys33_F234445D88D707135CA51548BC1CF2CDLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v39[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v12;
  LOBYTE(v39[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v14;
  v30 = v13;
  LOBYTE(v39[0]) = 2;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v15;
  LOBYTE(v39[0]) = 3;
  LODWORD(v28) = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = 4;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v28 & 1;
  v18 = *(v6 + 8);
  v19 = v16;
  v28 = v20;
  v18(v9, v5);
  v21 = v32;
  *&v34 = v11;
  *(&v34 + 1) = v33;
  *&v35 = v30;
  *(&v35 + 1) = v32;
  v22 = v31;
  *&v36 = v29;
  *(&v36 + 1) = v31;
  LOBYTE(v37) = v17;
  v23 = v28;
  *(&v37 + 1) = v19;
  v38 = v28;
  outlined init with copy of IntentDialogUtils.GenerativeAssistantToolResult(&v34, v39);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v39[0] = v11;
  v39[1] = v33;
  v39[2] = v30;
  v39[3] = v21;
  v39[4] = v29;
  v39[5] = v22;
  v40 = v17;
  v41 = v19;
  v42 = v23;
  result = outlined destroy of IntentDialogUtils.GenerativeAssistantToolResult(v39);
  v25 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v25;
  *(a2 + 64) = v38;
  v26 = v35;
  *a2 = v34;
  *(a2 + 16) = v26;
  return result;
}

unint64_t lazy protocol witness table accessor for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys and conformance IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of TypedValueAsyncResolvable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

void *IntelligenceFile.snippetPreviewFile()()
{
  v2 = v0;
  v31 = *v0;
  v3 = type metadata accessor for IntelligenceFile.SandboxExtensionType();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IntelligenceFile.Attributes();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  IntelligenceFile.fileURL.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of URL?(v11);
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    v27 = URL.startAccessingSecurityScopedResource()();
    (*(v13 + 16))(v17, v19, v12);
    IntelligenceFile.name.getter();
    v26 = v1;
    IntelligenceFile.attributes.getter();
    v2 = v30;
    (*(v28 + 104))(v30, *MEMORY[0x277D74490], v29);
    v20 = *(v31 + 48);
    v21 = *(v31 + 52);
    swift_allocObject();
    v22 = v26;
    v23 = IntelligenceFile.init(fileURL:name:attributes:automaticallyDelete:sandboxExtensionType:)();
    if (v22)
    {
      if (v27)
      {
        URL.stopAccessingSecurityScopedResource()();
      }
    }

    else
    {
      v2 = v23;
      if (v27)
      {
        URL.stopAccessingSecurityScopedResource()();
      }
    }

    (*(v13 + 8))(v19, v12);
  }

  return v2;
}

UIImage_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFile.getImage()()
{
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v48[-v5];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v48[-v13];
  IntelligenceFile.fileURL.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of URL?(v6);
    if (one-time initialization token for contextRetrieval != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.contextRetrieval);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v52 = v6;
      *v18 = 136315394;
      v19 = _typeName(_:qualified:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v52);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6567616D49746567, 0xEA00000000002928, &v52);
      _os_log_impl(&dword_24FD67000, v16, v17, "%s.%s Creating the PlatformImage with the file's data", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v6, -1, -1);
      MEMORY[0x253057F40](v18, -1, -1);
    }

    v22 = IntelligenceFile.data.getter();
    if (!v1)
    {
      v43 = v22;
      v44 = v23;
      v45 = objc_allocWithZone(MEMORY[0x277D755B8]);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v6 = [v45 initWithData_];

      outlined consume of Data._Representation(v43, v44);
    }
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    if (one-time initialization token for contextRetrieval != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.contextRetrieval);
    (*(v8 + 16))(v12, v14, v7);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v51 = v1;
      v28 = v27;
      v50 = swift_slowAlloc();
      v52 = v50;
      *v28 = 136315650;
      v29 = _typeName(_:qualified:)();
      v49 = v26;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v52);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6567616D49746567, 0xEA00000000002928, &v52);
      *(v28 + 22) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL();
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v35 = v12;
      v36 = *(v8 + 8);
      v36(v35, v7);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v52);

      *(v28 + 24) = v37;
      _os_log_impl(&dword_24FD67000, v25, v49, "%s.%s Creating the PlatformImage with the file's url: %s", v28, 0x20u);
      v38 = v50;
      swift_arrayDestroy();
      MEMORY[0x253057F40](v38, -1, -1);
      MEMORY[0x253057F40](v28, -1, -1);
    }

    else
    {

      v39 = v12;
      v36 = *(v8 + 8);
      v36(v39, v7);
    }

    URL.startAccessingSecurityScopedResource()();
    v40 = URL.path(percentEncoded:)(0);
    v41 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v42 = MEMORY[0x253056EA0](v40._countAndFlagsBits, v40._object);

    v6 = [v41 initWithContentsOfFile_];

    URL.stopAccessingSecurityScopedResource()();
    v36(v14, v7);
  }

  v47 = v6;
  result.is_nil = v23;
  result.value.super.isa = v47;
  return result;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ForegroundAppDetector.getForegroundAppBundleID()()
{
  v28 = type metadata accessor for DispatchTime();
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v28);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - v5;
  v7 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  v9 = v8 + 16;
  v10 = dispatch_semaphore_create(0);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  aBlock[4] = partial apply for closure #1 in ForegroundAppDetector.getForegroundAppBundleID();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed FBSDisplayLayoutMonitor, @guaranteed FBSDisplayLayout?, @guaranteed FBSDisplayLayoutTransitionContext?) -> ();
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);

  v13 = v10;

  [v7 setTransitionHandler_];
  _Block_release(v12);
  v14 = objc_opt_self();
  v27 = v7;
  v15 = [v14 monitorWithConfiguration_];
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v0 + 8);
  v17 = v4;
  v18 = v28;
  v16(v17, v28);
  MEMORY[0x2530572A0](v6);
  v16(v6, v18);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    lazy protocol witness table accessor for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError();
    swift_allocError();
    swift_willThrow();
    [v15 invalidate];
  }

  else
  {
    v19 = v15;
    v20 = v27;
    swift_beginAccess();
    v21 = *(*v9 + 16);
    if (v21)
    {
      v22 = *v9 + 16 + 16 * v21;
      v15 = *v22;
      v6 = *(v22 + 8);
    }

    else
    {
      v15 = 0;
      v6 = 0;
    }

    [v19 invalidate];
  }

  v23 = v15;
  v24 = v6;
  result.value._object = v24;
  result.value._countAndFlagsBits = v23;
  return result;
}

uint64_t sub_24FDB9A80()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void closure #1 in ForegroundAppDetector.getForegroundAppBundleID()(int a1, id a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a2)
  {
    v8 = a2;
    v9 = &unk_279699000;
    v10 = [a2 elements];
    type metadata accessor for FBSDisplayLayoutElement();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
LABEL_28:
      if (v11 < 0)
      {
        v27 = v11;
      }

      else
      {
        v27 = v11 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = MEMORY[0x253057520](v27);
      if (v12)
      {
LABEL_4:
        v13 = v12 - 1;
        if (__OFSUB__(v12, 1))
        {
          __break(1u);
        }

        else if ((v11 & 0xC000000000000001) == 0)
        {
          if ((v13 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_38;
          }

          v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (v13 >= v14)
          {
            __break(1u);
            return;
          }

LABEL_8:
          v15 = [v8 v9[135]];
          v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v5 = v8 & 0xFFFFFFFFFFFFFF8;
          if (!(v8 >> 62))
          {
            v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v32 = a4;
            if (v16)
            {
              goto LABEL_10;
            }

            goto LABEL_42;
          }

LABEL_38:
          if (v8 < 0)
          {
            v28 = v8;
          }

          else
          {
            v28 = v5;
          }

          v16 = MEMORY[0x253057520](v28);
          v32 = a4;
          if (v16)
          {
LABEL_10:
            v9 = 0;
            v17 = MEMORY[0x277D84F90];
            a4 = &unk_279699000;
            do
            {
              v11 = v9;
              while (1)
              {
                if ((v8 & 0xC000000000000001) != 0)
                {
                  v18 = MEMORY[0x2530574C0](v11, v8);
                }

                else
                {
                  if (v11 >= *(v5 + 16))
                  {
                    goto LABEL_27;
                  }

                  v18 = *(v8 + 8 * v11 + 32);
                }

                v19 = v18;
                v9 = (v11 + 1);
                if (__OFADD__(v11, 1))
                {
                  __break(1u);
LABEL_27:
                  __break(1u);
                  goto LABEL_28;
                }

                v20 = [v18 bundleIdentifier];
                if (v20)
                {
                  break;
                }

                ++v11;
                if (v9 == v16)
                {
                  goto LABEL_43;
                }
              }

              v31 = a5;
              v21 = v20;
              v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = v23;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
              }

              v25 = *(v17 + 2);
              v24 = *(v17 + 3);
              if (v25 >= v24 >> 1)
              {
                v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v17);
              }

              *(v17 + 2) = v25 + 1;
              v26 = &v17[16 * v25];
              a5 = v31;
              *(v26 + 4) = v22;
              *(v26 + 5) = v30;
            }

            while (v9 != v16);
            goto LABEL_43;
          }

LABEL_42:
          v17 = MEMORY[0x277D84F90];
LABEL_43:

          swift_beginAccess();
          v29 = v32[2];
          v32[2] = v17;

          OS_dispatch_semaphore.signal()();
          return;
        }

        MEMORY[0x2530574C0](v12 - 1, v11);
        swift_unknownObjectRelease();

        goto LABEL_8;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_4;
      }
    }
  }
}

uint64_t sub_24FDB9DA8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void thunk for @escaping @callee_guaranteed (@guaranteed FBSDisplayLayoutMonitor, @guaranteed FBSDisplayLayout?, @guaranteed FBSDisplayLayoutTransitionContext?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError()
{
  result = lazy protocol witness table cache variable for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError;
  if (!lazy protocol witness table cache variable for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError;
  if (!lazy protocol witness table cache variable for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError);
  }

  return result;
}

unint64_t type metadata accessor for FBSDisplayLayoutElement()
{
  result = lazy cache variable for type metadata for FBSDisplayLayoutElement;
  if (!lazy cache variable for type metadata for FBSDisplayLayoutElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FBSDisplayLayoutElement);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ForegroundAppDetector.DetectorError()
{
  Hasher.init(_seed:)();
  MEMORY[0x253057730](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ForegroundAppDetector.DetectorError()
{
  Hasher.init(_seed:)();
  MEMORY[0x253057730](0);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for instance()
{
  v2 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v3 = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1(&v1);
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  return outlined init with take of TypedValueAsyncResolvable(&v1, &static DefaultPromptFactory.instance);
}

uint64_t static DefaultPromptFactory.instance.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of DefaultPromptFactory(&static DefaultPromptFactory.instance, v2);
}

uint64_t DefaultPromptFactory.createPrompt(appBundleID:interactionMode:directInvocationClientId:sessionID:partnerInfo:isExplicitRequest:isFirstRequest:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8, char a9)
{
  v11 = v10;
  v12 = v9;
  v81 = a8;
  v19 = type metadata accessor for String.Encoding();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v85 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for URL();
  v86 = *(v22 - 8);
  v23 = *(v86 + 64);
  MEMORY[0x28223BE20](v22);
  v87 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v84) = *a3;
  v82 = a1;
  v83 = a2;
  v25 = specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(a1, a2);
  v78 = a5;
  v79 = a4;
  if (v25)
  {
    v26 = 1;
  }

  else
  {
    v26 = specialized static VisualIntelligenceUtils.isVisualIntelligenceSession(sessionID:directInvocationClientID:)(a5, a6, a4);
  }

  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.modelInteraction);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  v31 = os_log_type_enabled(v29, v30);
  v80 = a6;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v77 = v12;
    v33 = v32;
    v34 = swift_slowAlloc();
    v76 = v28;
    v35 = v34;
    v88 = v34;
    *v33 = 136315650;
    a6 = v22;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v88);
    *(v33 + 12) = 2080;
    *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x800000024FE21CC0, &v88);
    *(v33 + 22) = 2080;
    if (v26)
    {
      v36 = 0xD000000000000012;
    }

    else
    {
      v36 = 0x6D6574737973;
    }

    if (v26)
    {
      v37 = 0x800000024FE32F90;
    }

    else
    {
      v37 = 0xE600000000000000;
    }

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v88);
    v22 = a6;

    *(v33 + 24) = v38;
    v11 = v10;
    _os_log_impl(&dword_24FD67000, v29, v30, "%s.%s Prompt type used %s", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v35, -1, -1);
    v39 = v33;
    v12 = v77;
    MEMORY[0x253057F40](v39, -1, -1);
  }

  DefaultPromptFactory.getOverridePath(from:)(v26 & 1);
  if (v40)
  {
    v41 = v87;
    URL.init(fileURLWithPath:)();

    static String.Encoding.utf8.getter();
    v42 = String.init(contentsOf:encoding:)();
    if (v11)
    {
      (*(v86 + 8))(v41, v22);
    }

    else
    {
      a6 = v42;

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v88 = v83;
        *v49 = 136315650;
        *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v88);
        v84 = v22;
        *(v49 + 12) = 2080;
        *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x800000024FE21CC0, &v88);
        *(v49 + 22) = 2080;

        v50 = specialized Collection.prefix(_:)(100);
        v85 = 0;
        v52 = v51;
        v54 = v53;
        v56 = v55;

        v57 = MEMORY[0x253056F50](v50, v52, v54, v56);
        v59 = v58;

        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v88);

        *(v49 + 24) = v60;
        _os_log_impl(&dword_24FD67000, v47, v48, "%s.%s Prompt loaded:  %s...", v49, 0x20u);
        v61 = v83;
        swift_arrayDestroy();
        MEMORY[0x253057F40](v61, -1, -1);
        MEMORY[0x253057F40](v49, -1, -1);

        (*(v86 + 8))(v87, v84);
      }

      else
      {

        (*(v86 + 8))(v41, v22);
      }
    }
  }

  else if (v26)
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v88 = v46;
      *v45 = 136315394;
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v88);
      *(v45 + 12) = 2080;
      *(v45 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x800000024FE21CC0, &v88);
      _os_log_impl(&dword_24FD67000, v43, v44, "%s.%s Using tamale prompt", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v46, -1, -1);
      MEMORY[0x253057F40](v45, -1, -1);
    }

    return 0x100000000000156BLL;
  }

  else
  {
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.info.getter();
    v64 = os_log_type_enabled(v62, v63);
    if (v84 > 1)
    {
      if (v64)
      {
        v70 = swift_slowAlloc();
        v71 = v12;
        v72 = swift_slowAlloc();
        v88 = v72;
        *v70 = 136315394;
        *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v88);
        *(v70 + 12) = 2080;
        *(v70 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x800000024FE21CC0, &v88);
        _os_log_impl(&dword_24FD67000, v62, v63, "%s.%s Using default system prompt", v70, 0x16u);
        swift_arrayDestroy();
        v73 = v72;
        v12 = v71;
        MEMORY[0x253057F40](v73, -1, -1);
        MEMORY[0x253057F40](v70, -1, -1);
      }

      a6 = 0x10000000000015BDLL;
      if ((specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(v82, v83) & 1) == 0 && (specialized static VisualIntelligenceUtils.isVisualIntelligenceSession(sessionID:directInvocationClientID:)(v78, v80, v79) & 1) == 0)
      {
        v74 = v12[4];
        __swift_project_boxed_opaque_existential_1(v12, v12[3]);
        if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isBoomerangEnabled.getter() & 1) != 0 && (v81 & 1) == 0 && (a9 & 1) == 0)
        {
          return 0x1000000000007858;
        }
      }
    }

    else
    {
      if (v64)
      {
        v65 = swift_slowAlloc();
        v66 = v12;
        v67 = swift_slowAlloc();
        v88 = v67;
        *v65 = 136315394;
        *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v88);
        *(v65 + 12) = 2080;
        *(v65 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x800000024FE21CC0, &v88);
        _os_log_impl(&dword_24FD67000, v62, v63, "%s.%s Using voice-forward/voice-only prompt", v65, 0x16u);
        swift_arrayDestroy();
        v68 = v67;
        v12 = v66;
        MEMORY[0x253057F40](v68, -1, -1);
        MEMORY[0x253057F40](v65, -1, -1);
      }

      v69 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isBoomerangEnabled.getter() & 1) == 0 || (v81)
      {
        return 0xD000000000001074;
      }

      else
      {
        return 0x10000000000073ACLL;
      }
    }
  }

  return a6;
}

uint64_t DefaultPromptFactory.getOverridePath(from:)(char a1)
{
  if (a1)
  {
    if (one-time initialization token for _tamaleAppDebugPromptOverridePath != -1)
    {
      swift_once();
    }

    if (byte_27F39FBB0)
    {
      v1 = *(&xmmword_27F39FB98 + 1);
      v2 = static Overrides._tamaleAppDebugPromptOverridePath;

      v1(&v31, v2);

      v3 = v32;
      if (v32)
      {
        v4 = v31;
        v5 = [objc_opt_self() defaultManager];
        v6 = v4;
        v7 = MEMORY[0x253056EA0](v4, v3);
        v8 = [v5 fileExistsAtPath_];

        if (v8)
        {
          if (one-time initialization token for modelInteraction != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          __swift_project_value_buffer(v9, static Logger.modelInteraction);
          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v10, v11))
          {
            goto LABEL_27;
          }

          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v31 = v13;
          *v12 = 136315394;
          *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v31);
          *(v12 + 12) = 2080;
          *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE33080, &v31);
          v14 = "%s.%s Using AppDebugPath";
LABEL_26:
          _os_log_impl(&dword_24FD67000, v10, v11, v14, v12, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253057F40](v13, -1, -1);
          MEMORY[0x253057F40](v12, -1, -1);
LABEL_27:

          return v6;
        }
      }
    }

    if (one-time initialization token for _tamalePromptOverridePath != -1)
    {
      swift_once();
    }

    if (byte_27F39FB80)
    {
      v18 = unk_27F39FB70;
      v19 = static Overrides._tamalePromptOverridePath;

      v18(&v31, v19);

      v20 = v32;
      if (v32)
      {
        v21 = v31;
        v22 = [objc_opt_self() defaultManager];
        v6 = v21;
        v23 = MEMORY[0x253056EA0](v21, v20);
        v24 = [v22 fileExistsAtPath_];

        if (v24)
        {
          if (one-time initialization token for modelInteraction != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          __swift_project_value_buffer(v25, static Logger.modelInteraction);
          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v10, v11))
          {
            goto LABEL_27;
          }

          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v31 = v13;
          *v12 = 136315394;
          *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v31);
          *(v12 + 12) = 2080;
          *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE33080, &v31);
          v14 = "%s.%s Using PromptOverridePath";
          goto LABEL_26;
        }
      }
    }

    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.modelInteraction);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v29 = 136315394;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v31);
      *(v29 + 12) = 2080;
      *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE33080, &v31);
      _os_log_impl(&dword_24FD67000, v27, v28, "%s.%s Override path not available", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v30, -1, -1);
      MEMORY[0x253057F40](v29, -1, -1);
    }

    return 0;
  }

  else
  {
    if (one-time initialization token for _systemPromptOverridePath != -1)
    {
      swift_once();
    }

    if (byte_27F39FBE0 == 1)
    {
      v15 = unk_27F39FBD0;
      v16 = static Overrides._systemPromptOverridePath;

      v15(&v31, v16);

      return v31;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t DefaultPromptFactory.getTemplateID(appBundleID:interactionMode:directInvocationClientId:sessionID:isExplicitRequest:isFirstRequest:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, char a8)
{
  v9 = v8;
  v15 = *a3;
  if (specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(a1, a2) & 1) != 0 || (specialized static VisualIntelligenceUtils.isVisualIntelligenceSession(sessionID:directInvocationClientID:)(a5, a6, a4))
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.modelInteraction);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, v38);
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE32FD0, v38);
      _os_log_impl(&dword_24FD67000, v17, v18, "%s.%s Using visual intelligence template", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v20, -1, -1);
      MEMORY[0x253057F40](v19, -1, -1);
    }

    else
    {
    }

    v21 = "siri.voiceForward.noRTI";
    v22 = 0xD00000000000001DLL;
  }

  else if (v15 > 1)
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.modelInteraction);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38[0] = v35;
      *v34 = 136315394;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, v38);
      *(v34 + 12) = 2080;
      *(v34 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE32FD0, v38);
      _os_log_impl(&dword_24FD67000, v32, v33, "%s.%s Using default system template", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v35, -1, -1);
      MEMORY[0x253057F40](v34, -1, -1);
    }

    else
    {
    }

    v21 = "visualIntelligence";
    v22 = 0xD000000000000015;
  }

  else
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.modelInteraction);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38[0] = v30;
      *v29 = 136315394;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, v38);
      *(v29 + 12) = 2080;
      *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE32FD0, v38);
      _os_log_impl(&dword_24FD67000, v27, v28, "%s.%s Using voice-forward/voice-only template", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v30, -1, -1);
      MEMORY[0x253057F40](v29, -1, -1);
    }

    else
    {
    }

    v21 = "xplicitRequest:isFirstRequest:)";
    v22 = 0xD000000000000017;
  }

  v23 = v21 | 0x8000000000000000;
  if ((specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(a1, a2) & 1) == 0 && (specialized static VisualIntelligenceUtils.isVisualIntelligenceSession(sessionID:directInvocationClientID:)(a5, a6, a4) & 1) == 0)
  {
    v24 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isBoomerangEnabled.getter() & 1) != 0 && (a7 & 1) == 0 && (a8 & 1) == 0)
    {
      v38[0] = v22;
      v38[1] = v23;

      MEMORY[0x253056FE0](0x6172656D6F6F622ELL, 0xEA0000000000676ELL);

      return v38[0];
    }
  }

  return v22;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
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

uint64_t getEnumTagSinglePayload for DefaultPromptFactory(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DefaultPromptFactory(uint64_t result, int a2, int a3)
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

uint64_t one-time initialization function for contextRetrieval()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.contextRetrieval);
  __swift_project_value_buffer(v0, static Logger.contextRetrieval);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for foregroundAppDetector()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.foregroundAppDetector);
  __swift_project_value_buffer(v0, static Logger.foregroundAppDetector);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for generativeResponse()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.generativeResponse);
  __swift_project_value_buffer(v0, static Logger.generativeResponse);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for genFromMediaController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.genFromMediaController);
  __swift_project_value_buffer(v0, static Logger.genFromMediaController);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for genFromTextController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.genFromTextController);
  __swift_project_value_buffer(v0, static Logger.genFromTextController);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for kgFallback()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.kgFallback);
  __swift_project_value_buffer(v0, static Logger.kgFallback);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for invocationContextUtils()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.invocationContextUtils);
  __swift_project_value_buffer(v0, static Logger.invocationContextUtils);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for richContentLoader()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.richContentLoader);
  __swift_project_value_buffer(v0, static Logger.richContentLoader);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for managedConfiguration()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.managedConfiguration);
  __swift_project_value_buffer(v0, static Logger.managedConfiguration);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for modelInteraction()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.modelInteraction);
  __swift_project_value_buffer(v0, static Logger.modelInteraction);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for visualIntelligenceUtils()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.visualIntelligenceUtils);
  __swift_project_value_buffer(v0, static Logger.visualIntelligenceUtils);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for textAssistantHandoff()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.textAssistantHandoff);
  __swift_project_value_buffer(v0, static Logger.textAssistantHandoff);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for confirmationUtils()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.confirmationUtils);
  __swift_project_value_buffer(v0, static Logger.confirmationUtils);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for signposter()
{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static Logger.signposter);
  __swift_project_value_buffer(v0, static Logger.signposter);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t one-time initialization function for contentLoader(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.contentLoader.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t DummyEnum.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DummyEnum.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type DummyEnum and conformance DummyEnum()
{
  result = lazy protocol witness table cache variable for type DummyEnum and conformance DummyEnum;
  if (!lazy protocol witness table cache variable for type DummyEnum and conformance DummyEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DummyEnum and conformance DummyEnum);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DummyEnum()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DummyEnum()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DummyEnum@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance DummyEnum, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t GenerateTextController.init(featureFlagManager:attemptTextAssistantHandoff:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(a1, v10);
  v9[3] = &type metadata for DefaultModelSessionFactory;
  v9[4] = &protocol witness table for DefaultModelSessionFactory;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  *(a3 + 184) = &type metadata for TextAssistantHandoff;
  *(a3 + 192) = &protocol witness table for TextAssistantHandoff;
  v6 = swift_allocObject();
  *(a3 + 160) = v6;
  outlined init with copy of TextAssistantHandoff(&static TextAssistantHandoff.instance, v6 + 16);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v10, a3);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v9, a3 + 40);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v10, a3 + 120);
  *(a3 + 104) = &type metadata for DefaultPromptFactory;
  *(a3 + 112) = &protocol witness table for DefaultPromptFactory;
  v7 = swift_allocObject();
  *(a3 + 80) = v7;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(a3 + 120, v7 + 16);
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v10);
  result = __swift_destroy_boxed_opaque_existential_0(v9);
  *(a3 + 200) = a2 & 1;
  return result;
}

uint64_t sub_24FDBCFF4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_24FDBD090()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 344) = v32;
  *(v9 + 352) = v8;
  *(v9 + 328) = a7;
  *(v9 + 336) = a8;
  *(v9 + 600) = a6;
  *(v9 + 312) = a3;
  *(v9 + 320) = a4;
  *(v9 + 296) = a1;
  *(v9 + 304) = a2;
  v11 = type metadata accessor for GATError();
  *(v9 + 360) = v11;
  v12 = *(v11 - 8);
  *(v9 + 368) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 376) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  *(v9 + 384) = swift_task_alloc();
  v15 = type metadata accessor for ConfirmationActionName();
  *(v9 + 392) = v15;
  v16 = *(v15 - 8);
  *(v9 + 400) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 408) = swift_task_alloc();
  v18 = type metadata accessor for IntentDialog();
  *(v9 + 416) = v18;
  v19 = *(v18 - 8);
  *(v9 + 424) = v19;
  v20 = *(v19 + 64) + 15;
  *(v9 + 432) = swift_task_alloc();
  v21 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.ResponseType();
  *(v9 + 440) = v21;
  v22 = *(v21 - 8);
  *(v9 + 448) = v22;
  v23 = *(v22 + 64) + 15;
  *(v9 + 456) = swift_task_alloc();
  v24 = *(a5 + 16);
  *(v9 + 152) = *a5;
  *(v9 + 168) = v24;
  *(v9 + 184) = *(a5 + 32);
  v25 = *(a5 + 40);
  *(v9 + 232) = *(a5 + 56);
  *(v9 + 248) = *(a5 + 72);
  v26 = *(a5 + 88);
  *(v9 + 464) = v25;
  *(v9 + 480) = v26;
  v27 = *(a5 + 120);
  *(v9 + 264) = *(a5 + 104);
  *(v9 + 280) = v27;
  type metadata accessor for MainActor();
  *(v9 + 496) = static MainActor.shared.getter();
  v29 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 504) = v29;
  *(v9 + 512) = v28;

  return MEMORY[0x2822009F8](GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:), v29, v28);
}

uint64_t GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:)()
{
  v102 = v0;
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 440);
  (*(v2 + 16))(v1, *(v0 + 344), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D0D788])
  {
    v5 = *(v0 + 496);

    if (one-time initialization token for genFromTextController != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.genFromTextController);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v101[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v101);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, v101);
      _os_log_impl(&dword_24FD67000, v7, v8, "%s.%s Fallback to SiriX.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v10, -1, -1);
      MEMORY[0x253057F40](v9, -1, -1);
    }

    v12 = *(v0 + 368);
    v11 = *(v0 + 376);
    v13 = *(v0 + 360);
    *v11 = 0xD000000000000043;
    v11[1] = 0x800000024FE1FF90;
    v14 = *MEMORY[0x277D0D710];
    (*(v12 + 104))();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 376);
    v16 = GATError.errorCode.getter();
    if (v16 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v16 <= 0x7FFFFFFF)
    {
      v18 = *(v0 + 368);
      v17 = *(v0 + 376);
      v19 = *(v0 + 360);
      SELFUtils.recordRequestFailed(code:domain:)(v16, 4);
      lazy protocol witness table accessor for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
      swift_allocError();
      (*(v18 + 32))(v20, v17, v19);
      swift_willThrow();
      v21 = *(v0 + 456);
      v22 = *(v0 + 432);
      v23 = *(v0 + 408);
      v25 = *(v0 + 376);
      v24 = *(v0 + 384);

      v26 = *(v0 + 8);
LABEL_59:

      return v26();
    }

    __break(1u);
    goto LABEL_69;
  }

  if (v4 == *MEMORY[0x277D0D798])
  {
    if (*(v0 + 600) != 1)
    {
      if (one-time initialization token for genFromTextController != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      *(v0 + 520) = __swift_project_value_buffer(v45, static Logger.genFromTextController);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v101[0] = v49;
        *v48 = 136315394;
        *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v101);
        *(v48 + 12) = 2080;
        *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, v101);
        _os_log_impl(&dword_24FD67000, v46, v47, "%s.%s Requesting confirmation", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v49, -1, -1);
        MEMORY[0x253057F40](v48, -1, -1);
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v50 = *(v0 + 464);
      v51 = *(v0 + 424);
      v52 = *(v0 + 432);
      v53 = *(v0 + 416);
      v98 = *(v0 + 408);
      v55 = *(v0 + 328);
      v54 = *(v0 + 336);
      *(v0 + 528) = static MetricsUtils.shared;
      MetricsUtils.recordSignpostBegin(for:)("WaitUserConfirmToContinue.Time", 30, 2);
      specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F600);
      v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101[0] = v56;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, v54, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
      v58 = v101[0];
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      LOBYTE(v101[0]) = 38;
      v59 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v58);

      v60.value._countAndFlagsBits = v55;
      v60.value._object = v54;
      DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v101, v60, v59);

      IntentDialog.init(stringLiteral:)();
      *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMR);
      *(v0 + 224) = lazy protocol witness table accessor for type IntentResultContainer<Never, Never, Never, IntentDialog> and conformance IntentResultContainer<A, B, C, D>();
      __swift_allocate_boxed_opaque_existential_1((v0 + 192));
      static IntentResult.result<>(dialog:)();
      (*(v51 + 8))(v52, v53);
      static ConfirmationButtonActionUtils.getTextConfirmationButtonActions(partnerName:)(v55, v54);
      v99 = (v50 + *v50);
      v61 = v50[1];
      v62 = swift_task_alloc();
      *(v0 + 536) = v62;
      *v62 = v0;
      v62[1] = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
      v63 = *(v0 + 472);
      v64 = *(v0 + 408);

      return v99(v0 + 192, v64, 1);
    }

    if (one-time initialization token for genFromTextController == -1)
    {
LABEL_14:
      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.genFromTextController);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v101[0] = v31;
        *v30 = 136315394;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v101);
        *(v30 + 12) = 2080;
        *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, v101);
        v32 = "%s.%s Skipping confirmation: All knowledge confirmation prompts are presented in SiriX.";
LABEL_40:
        _os_log_impl(&dword_24FD67000, v28, v29, v32, v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v31, -1, -1);
        MEMORY[0x253057F40](v30, -1, -1);
        goto LABEL_41;
      }

      goto LABEL_41;
    }

LABEL_69:
    swift_once();
    goto LABEL_14;
  }

  if (v4 == *MEMORY[0x277D0D790])
  {
    if (one-time initialization token for genFromTextController != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.genFromTextController);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_24FD67000, v34, v35, "Enablement prompt is needed. Checking if this is a remote request...", v36, 2u);
      MEMORY[0x253057F40](v36, -1, -1);
    }

    v37 = *(v0 + 600);

    if (v37 == 1 && *(*(v0 + 320) + 40) != 1)
    {
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v101[0] = v94;
        *v93 = 136315394;
        *(v93 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v101);
        *(v93 + 12) = 2080;
        *(v93 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, v101);
        _os_log_impl(&dword_24FD67000, v91, v92, "%s.%s User Confirmed Showing JIT Enablement.", v93, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v94, -1, -1);
        MEMORY[0x253057F40](v93, -1, -1);
      }

      v100 = (*(v0 + 480) + **(v0 + 480));
      v95 = *(*(v0 + 480) + 4);
      v96 = swift_task_alloc();
      *(v0 + 568) = v96;
      *v96 = v0;
      v96[1] = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
      v97 = *(v0 + 488);

      return v100();
    }

    else
    {
      v38 = *(v0 + 168);
      *(v0 + 16) = *(v0 + 152);
      *(v0 + 32) = v38;
      v39 = *(v0 + 480);
      *(v0 + 56) = *(v0 + 464);
      *(v0 + 72) = *(v0 + 232);
      *(v0 + 88) = *(v0 + 248);
      *(v0 + 104) = v39;
      v40 = *(v0 + 264);
      *(v0 + 136) = *(v0 + 280);
      *(v0 + 48) = *(v0 + 184);
      *(v0 + 120) = v40;
      v41 = swift_task_alloc();
      *(v0 + 552) = v41;
      *v41 = v0;
      v41[1] = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
      v42 = *(v0 + 352);
      v43 = *(v0 + 320);

      return GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:)(v43, v0 + 16);
    }
  }

  if (v4 != *MEMORY[0x277D0D780])
  {
    if (one-time initialization token for genFromTextController != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.genFromTextController);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v101[0] = v70;
      *v69 = 136315394;
      *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v101);
      *(v69 + 12) = 2080;
      *(v69 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, v101);
      _os_log_impl(&dword_24FD67000, v67, v68, "%s.%s Unkown Default when checking for confirmation vs enablement vs SiriX", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v70, -1, -1);
      MEMORY[0x253057F40](v69, -1, -1);
    }

    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
    goto LABEL_47;
  }

  if (one-time initialization token for genFromTextController != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  __swift_project_value_buffer(v65, static Logger.genFromTextController);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v101[0] = v31;
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v101);
    *(v30 + 12) = 2080;
    *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, v101);
    v32 = "%s.%s Skipping confirmation: explicit invocation or user set skip confirmation or previously communicated with GMS in this session";
    goto LABEL_40;
  }

LABEL_41:

LABEL_47:
  v71 = *(v0 + 352);
  if (*(v71 + 200) != 1)
  {
    v75 = *(v0 + 496);

    v76 = *(v0 + 320);
    v77 = (v76 + *(type metadata accessor for GenerativeRequestMetadata() + 52));
    if (v77[1])
    {
      v78 = *v77;
      static SessionPersistenceUtils.setConfirmation(forTextSession:)();
    }

    else
    {
      if (one-time initialization token for genFromTextController != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      __swift_project_value_buffer(v79, static Logger.genFromTextController);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v101[0] = v83;
        *v82 = 136315394;
        *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v101);
        *(v82 + 12) = 2080;
        *(v82 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, v101);
        _os_log_impl(&dword_24FD67000, v80, v81, "%s.%s Attempting to save the current sessionID but found nil", v82, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v83, -1, -1);
        MEMORY[0x253057F40](v82, -1, -1);
      }
    }

    v84 = *(v0 + 456);
    v85 = *(v0 + 432);
    v86 = *(v0 + 408);
    v88 = *(v0 + 376);
    v87 = *(v0 + 384);
    v89 = *(v0 + 296);
    v90 = type metadata accessor for GeneratedResponse(0);
    (*(*(v90 - 8) + 56))(v89, 1, 1, v90);

    v26 = *(v0 + 8);
    goto LABEL_59;
  }

  __swift_project_boxed_opaque_existential_1((v71 + 160), *(v71 + 184));
  v72 = swift_task_alloc();
  *(v0 + 584) = v72;
  *v72 = v0;
  v72[1] = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  v74 = *(v0 + 304);
  v73 = *(v0 + 312);

  return TextAssistantHandoff.attemptHandoff(userQuery:)(v74, v73);
}

{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  else
  {
    v3 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  (*(v0[50] + 8))(v0[51], v0[49]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  v1 = v0[63];
  v2 = v0[64];

  return MEMORY[0x2822009F8](GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:), v1, v2);
}

{
  v32 = v0;
  v1 = v0[65];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v31 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v31);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, &v31);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s User confirmed", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v6 = v0[66];
  v7 = v0[48];
  v8 = type metadata accessor for OSSignpostID();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("WaitUserConfirmToContinue.Time", 30, 2, v7);
  outlined destroy of OnScreenContent.Document?(v7, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  if ((MEMORY[0x253056490]() & 1) == 0)
  {
    static GenerativeAssistantSettingsUserDefaults.logConfirmationCount()();
  }

  v9 = v0[44];
  if (*(v9 + 200) == 1)
  {
    __swift_project_boxed_opaque_existential_1((v9 + 160), *(v9 + 184));
    v10 = swift_task_alloc();
    v0[73] = v10;
    *v10 = v0;
    v10[1] = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
    v12 = v0[38];
    v11 = v0[39];

    return TextAssistantHandoff.attemptHandoff(userQuery:)(v12, v11);
  }

  else
  {
    v14 = v0[62];

    v15 = v0[40];
    v16 = (v15 + *(type metadata accessor for GenerativeRequestMetadata() + 52));
    if (v16[1])
    {
      v17 = *v16;
      static SessionPersistenceUtils.setConfirmation(forTextSession:)();
    }

    else
    {
      if (one-time initialization token for genFromTextController != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.genFromTextController);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v31 = v22;
        *v21 = 136315394;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v31);
        *(v21 + 12) = 2080;
        *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, &v31);
        _os_log_impl(&dword_24FD67000, v19, v20, "%s.%s Attempting to save the current sessionID but found nil", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v22, -1, -1);
        MEMORY[0x253057F40](v21, -1, -1);
      }
    }

    v23 = v0[57];
    v24 = v0[54];
    v25 = v0[51];
    v27 = v0[47];
    v26 = v0[48];
    v28 = v0[37];
    v29 = type metadata accessor for GeneratedResponse(0);
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);

    v30 = v0[1];

    return v30();
  }
}

{
  (*(v0[50] + 8))(v0[51], v0[49]);
  v1 = v0[63];
  v2 = v0[64];

  return MEMORY[0x2822009F8](GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:), v1, v2);
}

{
  v23 = v0;
  v1 = v0[66];
  v2 = v0[62];

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  MetricsUtils.emitSignpostEvent(_:)("Event.UserCancelled", 19, 2);
  specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F660);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = v0[65];
  SELFUtils.recordRequestCanceled()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v22);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, &v22);
    _os_log_impl(&dword_24FD67000, v4, v5, "%s.%s User cancelled", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v7, -1, -1);
    MEMORY[0x253057F40](v6, -1, -1);
  }

  v8 = v0[68];
  v9 = v0[41];
  v10 = v0[42];
  v11 = v0[37];
  v21 = 21;
  static GeneratedResponse.failureResponse(_:partnerName:)(&v21, v9, v10, v11);

  v12 = v0[57];
  v13 = v0[54];
  v14 = v0[51];
  v16 = v0[47];
  v15 = v0[48];
  v17 = v0[37];
  v18 = type metadata accessor for GeneratedResponse(0);
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);

  v19 = v0[1];

  return v19();
}

{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v8 = *v1;
  *(*v1 + 560) = v0;

  v4 = *(v2 + 504);
  v5 = *(v2 + 512);
  if (v0)
  {
    v6 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  else
  {
    v6 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v24 = v0;
  v1 = v0[44];
  if (*(v1 + 200) == 1)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 160), *(v1 + 184));
    v2 = swift_task_alloc();
    v0[73] = v2;
    *v2 = v0;
    v2[1] = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
    v4 = v0[38];
    v3 = v0[39];

    return TextAssistantHandoff.attemptHandoff(userQuery:)(v4, v3);
  }

  else
  {
    v6 = v0[62];

    v7 = v0[40];
    v8 = (v7 + *(type metadata accessor for GenerativeRequestMetadata() + 52));
    if (v8[1])
    {
      v9 = *v8;
      static SessionPersistenceUtils.setConfirmation(forTextSession:)();
    }

    else
    {
      if (one-time initialization token for genFromTextController != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.genFromTextController);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23 = v14;
        *v13 = 136315394;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v23);
        *(v13 + 12) = 2080;
        *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, &v23);
        _os_log_impl(&dword_24FD67000, v11, v12, "%s.%s Attempting to save the current sessionID but found nil", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v14, -1, -1);
        MEMORY[0x253057F40](v13, -1, -1);
      }
    }

    v15 = v0[57];
    v16 = v0[54];
    v17 = v0[51];
    v19 = v0[47];
    v18 = v0[48];
    v20 = v0[37];
    v21 = type metadata accessor for GeneratedResponse(0);
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);

    v22 = v0[1];

    return v22();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *v1;
  *(*v1 + 576) = v0;

  v5 = *(v2 + 512);
  v6 = *(v2 + 504);
  if (v0)
  {
    v7 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  else
  {
    v7 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[62];

  v2 = v0[72];
  v3 = v0[57];
  v4 = v0[54];
  v5 = v0[51];
  v7 = v0[47];
  v6 = v0[48];

  v8 = v0[1];

  return v8();
}

{
  v25 = v0;
  v1 = *(v0 + 601);
  v2 = *(v0 + 496);

  if (v1 == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 328);
    v3 = *(v0 + 336);
    v5 = *(v0 + 296);
    SELFUtils.recordRequestHandoff()();
    static GeneratedResponse.dismissSiriUIResponse(partnerName:)(v4, v3, v5);
    v6 = 0;
  }

  else
  {
    v7 = *(v0 + 320);
    v8 = (v7 + *(type metadata accessor for GenerativeRequestMetadata() + 52));
    if (v8[1])
    {
      v9 = *v8;
      static SessionPersistenceUtils.setConfirmation(forTextSession:)();
    }

    else
    {
      if (one-time initialization token for genFromTextController != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.genFromTextController);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v24 = v14;
        *v13 = 136315394;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v24);
        *(v13 + 12) = 2080;
        *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, &v24);
        _os_log_impl(&dword_24FD67000, v11, v12, "%s.%s Attempting to save the current sessionID but found nil", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v14, -1, -1);
        MEMORY[0x253057F40](v13, -1, -1);
      }
    }

    v6 = 1;
  }

  v15 = *(v0 + 456);
  v16 = *(v0 + 432);
  v17 = *(v0 + 408);
  v19 = *(v0 + 376);
  v18 = *(v0 + 384);
  v20 = *(v0 + 296);
  v21 = type metadata accessor for GeneratedResponse(0);
  (*(*(v21 - 8) + 56))(v20, v6, 1, v21);

  v22 = *(v0 + 8);

  return v22();
}

{
  v30 = v0;
  v1 = v0[62];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  MetricsUtils.emitSignpostEvent(_:)("Error.TextAssistantHandoffError", 31, 2);
  if (one-time initialization token for genFromTextController != -1)
  {
    swift_once();
  }

  v2 = v0[74];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.genFromTextController);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[74];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24FD67000, v5, v6, "Error handing off to Text Assistant: %@", v9, 0xCu);
    outlined destroy of OnScreenContent.Document?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x253057F40](v10, -1, -1);
    MEMORY[0x253057F40](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[40];
  v14 = (v13 + *(type metadata accessor for GenerativeRequestMetadata() + 52));
  if (v14[1])
  {
    v15 = *v14;
    static SessionPersistenceUtils.setConfirmation(forTextSession:)();
  }

  else
  {
    if (one-time initialization token for genFromTextController != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, static Logger.genFromTextController);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315394;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v29);
      *(v18 + 12) = 2080;
      *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, &v29);
      _os_log_impl(&dword_24FD67000, v16, v17, "%s.%s Attempting to save the current sessionID but found nil", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v19, -1, -1);
      MEMORY[0x253057F40](v18, -1, -1);
    }
  }

  v20 = v0[57];
  v21 = v0[54];
  v22 = v0[51];
  v24 = v0[47];
  v23 = v0[48];
  v25 = v0[37];
  v26 = type metadata accessor for GeneratedResponse(0);
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);

  v27 = v0[1];

  return v27();
}

{
  v1 = v0[62];

  v2 = v0[70];
  v3 = v0[57];
  v4 = v0[54];
  v5 = v0[51];
  v7 = v0[47];
  v6 = v0[48];

  v8 = v0[1];

  return v8();
}

uint64_t GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 584);
  v6 = *v2;
  *(*v2 + 592) = v1;

  if (v1)
  {
    v7 = *(v4 + 504);
    v8 = *(v4 + 512);
    v9 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  else
  {
    *(v4 + 601) = a1 & 1;
    v7 = *(v4 + 504);
    v8 = *(v4 + 512);
    v9 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  v4 = type metadata accessor for ConfirmationActionName();
  *(v2 + 64) = v4;
  v5 = *(v4 - 8);
  *(v2 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v7 = type metadata accessor for IntentDialog();
  *(v2 + 88) = v7;
  v8 = *(v7 - 8);
  *(v2 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v10 = type metadata accessor for RequestType();
  *(v2 + 112) = v10;
  v11 = *(v10 - 8);
  *(v2 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v13 = type metadata accessor for Date();
  *(v2 + 136) = v13;
  v14 = *(v13 - 8);
  *(v2 + 144) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  v16 = *(a2 + 88);
  *(v2 + 160) = *(a2 + 40);
  *(v2 + 176) = v16;
  type metadata accessor for MainActor();
  *(v2 + 192) = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 200) = v18;
  *(v2 + 208) = v17;

  return MEMORY[0x2822009F8](GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:), v18, v17);
}

uint64_t GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:)()
{
  v30 = v0;
  if (one-time initialization token for genFromTextController != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 216) = __swift_project_value_buffer(v1, static Logger.genFromTextController);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v29 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v29);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000041, 0x800000024FE33320, &v29);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Confirming JIT enablement", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v6 = *(v0 + 152);
  v7 = *(v0 + 56);
  *(v0 + 224) = type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  static GenerativeAssistantSettingsUserDefaults.declineComposeViaSiriExpiration()();
  v8 = *(v7 + 40);
  *(v0 + 264) = v8;
  if (v8)
  {
    v9 = 32;
  }

  else
  {
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v12 = *(v0 + 112);
    (*(v11 + 104))(v10, *MEMORY[0x277D0D7B8], v12);
    MEMORY[0x253056460](v10);
    (*(v11 + 8))(v10, v12);
    v9 = 33;
  }

  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 160);
  v14 = *(v0 + 96);
  v15 = *(v0 + 104);
  v16 = *(v0 + 88);
  v27 = *(v0 + 80);
  v17 = static Disclaimer.partnerName;

  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v18;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17.value._countAndFlagsBits, v17.value._object, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
  v20 = v29;
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v29) = v9;
  v21 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v20);

  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v29, v17, v21);

  IntentDialog.init(stringLiteral:)();

  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMR);
  *(v0 + 48) = lazy protocol witness table accessor for type IntentResultContainer<Never, Never, Never, IntentDialog> and conformance IntentResultContainer<A, B, C, D>();
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  static IntentResult.result<>(dialog:)();
  (*(v14 + 8))(v15, v16);
  static ConfirmationButtonActionUtils.getJITEnablementButtonActions()();
  v28 = (v13 + *v13);
  v22 = v13[1];
  v23 = swift_task_alloc();
  *(v0 + 232) = v23;
  *v23 = v0;
  v23[1] = GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:);
  v24 = *(v0 + 168);
  v25 = *(v0 + 80);

  return v28(v0 + 16, v25, 1);
}

{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);
  }

  else
  {
    v3 = GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[25];
  v2 = v0[26];

  return MEMORY[0x2822009F8](GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:), v1, v2);
}

{
  v17 = v0;
  if ((*(v0 + 264) & 1) == 0)
  {
    v1 = *(v0 + 224);
    v2 = *(v0 + 152);
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);
    (*(v4 + 104))(v3, *MEMORY[0x277D0D7B8], v5);
    static GenerativeAssistantSettingsUserDefaults.decrementDecline(for:expirationDate:)();
    (*(v4 + 8))(v3, v5);
  }

  v6 = *(v0 + 216);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v16);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000041, 0x800000024FE33320, &v16);
    _os_log_impl(&dword_24FD67000, v7, v8, "%s.%s User Confirmed Showing JIT Enablement.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v10, -1, -1);
    MEMORY[0x253057F40](v9, -1, -1);
  }

  v15 = (*(v0 + 176) + **(v0 + 176));
  v11 = *(*(v0 + 176) + 4);
  v12 = swift_task_alloc();
  *(v0 + 248) = v12;
  *v12 = v0;
  v12[1] = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);
  v13 = *(v0 + 184);

  return v15();
}

uint64_t GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 856) = v5;
  *(v6 + 848) = a4;
  *(v6 + 840) = a3;
  *(v6 + 832) = a2;
  *(v6 + 824) = a1;
  v8 = type metadata accessor for GATError();
  *(v6 + 864) = v8;
  v9 = *(v8 - 8);
  *(v6 + 872) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 880) = swift_task_alloc();
  *(v6 + 888) = swift_task_alloc();
  v11 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  *(v6 + 896) = v11;
  v12 = *(v11 - 8);
  *(v6 + 904) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 912) = swift_task_alloc();
  *(v6 + 920) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  *(v6 + 928) = v14;
  v15 = *(v14 - 8);
  *(v6 + 936) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 944) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR) - 8) + 64) + 15;
  *(v6 + 952) = swift_task_alloc();
  *(v6 + 960) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  *(v6 + 968) = swift_task_alloc();
  v19 = type metadata accessor for SessionPersistenceUtils.SessionStoredValues();
  *(v6 + 976) = v19;
  v20 = *(v19 - 8);
  *(v6 + 984) = v20;
  v21 = *(v20 + 64) + 15;
  *(v6 + 992) = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR) - 8) + 64) + 15;
  *(v6 + 1000) = swift_task_alloc();
  v23 = type metadata accessor for ModelResponse();
  *(v6 + 1008) = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  *(v6 + 1016) = swift_task_alloc();
  *(v6 + 1024) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR) - 8) + 64) + 15;
  *(v6 + 1032) = swift_task_alloc();
  v26 = type metadata accessor for GeneratedResponse(0);
  *(v6 + 1040) = v26;
  v27 = *(v26 - 8);
  *(v6 + 1048) = v27;
  v28 = *(v27 + 64) + 15;
  *(v6 + 1056) = swift_task_alloc();
  *(v6 + 1064) = swift_task_alloc();
  v29 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.ResponseType();
  *(v6 + 1072) = v29;
  v30 = *(v29 - 8);
  *(v6 + 1080) = v30;
  v31 = *(v30 + 64) + 15;
  *(v6 + 1088) = swift_task_alloc();
  v32 = type metadata accessor for GenerativeRequestMetadata();
  *(v6 + 1096) = v32;
  v33 = *(*(v32 - 8) + 64) + 15;
  *(v6 + 1104) = swift_task_alloc();
  *(v6 + 1112) = swift_task_alloc();
  v34 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.RequestType();
  *(v6 + 1120) = v34;
  v35 = *(v34 - 8);
  *(v6 + 1128) = v35;
  v36 = *(v35 + 64) + 15;
  *(v6 + 1136) = swift_task_alloc();
  v37 = type metadata accessor for GenerativeAssistantUseCase();
  *(v6 + 1144) = v37;
  v38 = *(v37 - 8);
  *(v6 + 1152) = v38;
  v39 = *(v38 + 64) + 15;
  *(v6 + 1160) = swift_task_alloc();
  *(v6 + 1168) = swift_task_alloc();
  *(v6 + 1176) = swift_task_alloc();
  *(v6 + 1184) = swift_task_alloc();
  v40 = *(a5 + 104);
  *(v6 + 384) = *(a5 + 96);
  v41 = *(a5 + 80);
  *(v6 + 352) = *(a5 + 64);
  *(v6 + 368) = v41;
  v42 = *(a5 + 16);
  *(v6 + 288) = *a5;
  *(v6 + 304) = v42;
  v43 = *(a5 + 48);
  *(v6 + 320) = *(a5 + 32);
  *(v6 + 336) = v43;
  *(v6 + 1192) = v40;
  *(v6 + 1200) = *(a5 + 112);
  *(v6 + 672) = *(a5 + 120);
  type metadata accessor for MainActor();
  *(v6 + 1208) = static MainActor.shared.getter();
  v45 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 1216) = v45;
  *(v6 + 1224) = v44;

  return MEMORY[0x2822009F8](GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:), v45, v44);
}

uint64_t GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:)()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1144);
  v4 = *(v0 + 848);
  *(v0 + 580) = *(*(v0 + 1096) + 32);
  v5 = *(v2 + 104);
  v5(v1, *MEMORY[0x277D0D658], v3);
  lazy protocol witness table accessor for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase(&lazy protocol witness table cache variable for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase, MEMORY[0x277D0D660]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v0 + 688) == *(v0 + 704) && *(v0 + 696) == *(v0 + 712))
  {
    v6 = 1;
  }

  else
  {
    v7 = *(v0 + 696);
    v8 = *(v0 + 712);
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v9 = *(v0 + 1184);
  v10 = *(v0 + 1152);
  v11 = *(v0 + 1144);
  v12 = *(v10 + 8);
  *(v0 + 1232) = v12;
  *(v0 + 1240) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v11);

  v54 = v5;
  if (v6)
  {
    v13 = 1;
  }

  else
  {
    v5(*(v0 + 1176), *MEMORY[0x277D0D640], *(v0 + 1144));
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 720) == *(v0 + 736) && *(v0 + 728) == *(v0 + 744))
    {
      v13 = 1;
    }

    else
    {
      v14 = *(v0 + 728);
      v15 = *(v0 + 744);
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v12(*(v0 + 1176), *(v0 + 1144));
  }

  v56 = v13;
  *(v0 + 577) = v13 & 1;
  v54(*(v0 + 1168), *MEMORY[0x277D0D648], *(v0 + 1144));
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = *(v0 + 1168);
  v17 = *(v0 + 1144);
  if (*(v0 + 752) == *(v0 + 768) && *(v0 + 760) == *(v0 + 776))
  {
    v12(*(v0 + 1168), *(v0 + 1144));

LABEL_16:
    (*(*(v0 + 1128) + 104))(*(v0 + 1136), *MEMORY[0x277D0D770], *(v0 + 1120));
    goto LABEL_21;
  }

  v18 = *(v0 + 760);
  v19 = *(v0 + 776);
  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v12(v16, v17);

  if (v20)
  {
    goto LABEL_16;
  }

  if (v56)
  {
    v21 = MEMORY[0x277D0D768];
  }

  else
  {
    v21 = MEMORY[0x277D0D760];
  }

  (*(*(v0 + 1128) + 104))(*(v0 + 1136), *v21, *(v0 + 1120));
LABEL_21:
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v22 = static Disclaimer.partnerName;
  *(v0 + 1248) = static Disclaimer.partnerName;
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();

  v23 = static GenerativeAssistantSettingsUserDefaults.isEnabled()();
  if (one-time initialization token for genFromTextController != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 1112);
  v25 = *(v0 + 848);
  v26 = *(v0 + 840);
  v27 = type metadata accessor for Logger();
  *(v0 + 1264) = __swift_project_value_buffer(v27, static Logger.genFromTextController);
  outlined init with copy of GenerativeRequestMetadata(v25, v24, type metadata accessor for GenerativeRequestMetadata);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 1112);
  if (v30)
  {
    v53 = *(v0 + 840);
    v55 = v23;
    v32 = *(v0 + 832);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v59 = v34;
    *v33 = 136316418;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v59);
    *(v33 + 12) = 2080;
    *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, &v59);
    *(v33 + 22) = 2080;
    *(v33 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v53, &v59);
    *(v33 + 32) = 1024;
    LODWORD(v32) = *(v31 + 40);
    outlined destroy of GenerativeRequestMetadata(v31, type metadata accessor for GenerativeRequestMetadata);
    *(v33 + 34) = v32;
    *(v33 + 38) = 2080;
    *(v33 + 40) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, *(&v22 + 1), &v59);
    *(v33 + 48) = 1024;
    *(v33 + 50) = v55 & 1;
    _os_log_impl(&dword_24FD67000, v28, v29, "%s.%s [userQuery = %s] [isExplicitRequest: %{BOOL}d] [partner: %s] [isPartnerEnabled: %{BOOL}d", v33, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v34, -1, -1);
    MEMORY[0x253057F40](v33, -1, -1);
  }

  else
  {
    outlined destroy of GenerativeRequestMetadata(*(v0 + 1112), type metadata accessor for GenerativeRequestMetadata);
  }

  v35 = *(v0 + 1200);
  v36 = *(v0 + 1192);
  v37 = *(v0 + 1136);
  v38 = *(v0 + 1088);
  v39 = *(v0 + 848);
  v40 = *(v39 + 40);
  v41 = (v39 + *(*(v0 + 1096) + 52));
  *(v0 + 1272) = *v41;
  *(v0 + 1280) = v41[1];
  static GenerativeAssistantSettingsIntentHelper.responseType(for:isExplicitRequest:sessionId:)();
  v42 = *(v0 + 368);
  *(v0 + 80) = *(v0 + 352);
  *(v0 + 96) = v42;
  v43 = *(v0 + 384);
  v44 = *(v0 + 304);
  *(v0 + 16) = *(v0 + 288);
  *(v0 + 32) = v44;
  v45 = *(v0 + 336);
  *(v0 + 48) = *(v0 + 320);
  *(v0 + 64) = v45;
  *(v0 + 112) = v43;
  *(v0 + 120) = v36;
  *(v0 + 128) = v35;
  *(v0 + 136) = *(v0 + 672);
  v46 = swift_task_alloc();
  *(v0 + 1288) = v46;
  *v46 = v0;
  v46[1] = GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  v47 = *(v0 + 1032);
  v48 = *(v0 + 856);
  v49 = *(v0 + 848);
  v50 = *(v0 + 840);
  v51 = *(v0 + 832);
  v58 = *(v0 + 1088);

  return GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:)(v47, v51, v50, v49, v0 + 16, v56 & 1, v22, *(&v22 + 1));
}

{
  v2 = *v1;
  v3 = *(*v1 + 1288);
  v9 = *v1;
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v4 = v2[157];

    v5 = v2[153];
    v6 = v2[152];
    v7 = GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  else
  {
    v5 = v2[153];
    v6 = v2[152];
    v7 = GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v84 = v0;
  v1 = *(v0 + 1032);
  if ((*(*(v0 + 1048) + 48))(v1, 1, *(v0 + 1040)) == 1)
  {
    v2 = *(v0 + 1264);
    v3 = *(v0 + 1200);
    v4 = *(v0 + 1192);
    v5 = *(v0 + 1104);
    v6 = *(v0 + 848);
    outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v7 = *(v0 + 368);
    v75[4] = *(v0 + 352);
    v75[5] = v7;
    v8 = *(v0 + 384);
    v9 = *(v0 + 304);
    v75[0] = *(v0 + 288);
    v75[1] = v9;
    v10 = *(v0 + 336);
    v75[2] = *(v0 + 320);
    v75[3] = v10;
    v76 = v8;
    v77 = v4;
    v78 = v3;
    v79 = *(v0 + 672);
    v80 = v4;
    v81 = v3;
    v82 = 0;
    v83 = 3;
    swift_bridgeObjectRetain_n();
    IntentCallbackManager.updateIntentProgress(to:)(&v80);
    outlined consume of GenerativeAssistantProgressLevel(v80, v81, v82, v83);
    outlined init with copy of GenerativeRequestMetadata(v6, v5, type metadata accessor for GenerativeRequestMetadata);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1104);
    if (v13)
    {
      v15 = *(v0 + 1096);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v75[0] = v17;
      *v16 = 136315650;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v75);
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v75);
      *(v16 + 22) = 2080;
      v18 = v14 + *(v15 + 32);
      v19 = GenerativeAssistantUseCase.rawValue.getter();
      v21 = v20;
      outlined destroy of GenerativeRequestMetadata(v14, type metadata accessor for GenerativeRequestMetadata);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v75);

      *(v16 + 24) = v22;
      _os_log_impl(&dword_24FD67000, v11, v12, "%s.%s Calling model orchestrator with use case %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v17, -1, -1);
      MEMORY[0x253057F40](v16, -1, -1);
    }

    else
    {

      outlined destroy of GenerativeRequestMetadata(v14, type metadata accessor for GenerativeRequestMetadata);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v44 = static SELFUtils.shared + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
    swift_beginAccess();
    v45 = *v44;
    v46 = v44[4];
    *v44 = 4;
    v44[4] = 0;
    if ((v46 & 1) == 0 && v45 == 6)
    {
      *v44 = 6;
    }

    v47 = *(v0 + 1200);
    v48 = *(v0 + 1192);
    v49 = *(v0 + 1000);
    v50 = *(v0 + 856);
    v51 = type metadata accessor for UploadableMedia(0);
    (*(*(v51 - 8) + 56))(v49, 1, 1, v51);
    v52 = *(v0 + 320);
    *(v0 + 200) = *(v0 + 336);
    v53 = *(v0 + 368);
    *(v0 + 216) = *(v0 + 352);
    *(v0 + 232) = v53;
    v54 = *(v0 + 304);
    *(v0 + 152) = *(v0 + 288);
    *(v0 + 168) = v54;
    v55 = *(v0 + 384);
    *(v0 + 184) = v52;
    *(v0 + 248) = v55;
    *(v0 + 256) = v48;
    *(v0 + 264) = v47;
    *(v0 + 272) = *(v0 + 672);
    v56 = swift_task_alloc();
    *(v0 + 1304) = v56;
    *v56 = v0;
    v56[1] = GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
    v57 = *(v0 + 577);
    v58 = *(v0 + 1024);
    v59 = *(v0 + 1000);
    v60 = *(v0 + 848);
    v61 = *(v0 + 840);
    v62 = *(v0 + 832);
    v86 = 0;

    return ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(v58, v62, v61, v60, v59, v0 + 152, v57, 0);
  }

  else
  {
    v23 = *(v0 + 1256);
    v24 = *(v0 + 1208);
    v25 = *(v0 + 1136);
    v26 = *(v0 + 1128);
    v27 = *(v0 + 1120);
    v28 = *(v0 + 1088);
    v29 = *(v0 + 1080);
    v30 = *(v0 + 1072);
    v31 = *(v0 + 1064);
    v87 = *(v0 + 824);

    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
    _s26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOWObTm_0(v1, v31, type metadata accessor for GeneratedResponse);
    _s26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOWObTm_0(v31, v87, type metadata accessor for GeneratedResponse);
    v32 = *(v0 + 1184);
    v33 = *(v0 + 1176);
    v34 = *(v0 + 1168);
    v35 = *(v0 + 1160);
    v36 = *(v0 + 1136);
    v37 = *(v0 + 1112);
    v38 = *(v0 + 1104);
    v39 = *(v0 + 1088);
    v40 = *(v0 + 1064);
    v41 = *(v0 + 1056);
    v63 = *(v0 + 1032);
    v64 = *(v0 + 1024);
    v65 = *(v0 + 1016);
    v66 = *(v0 + 1000);
    v67 = *(v0 + 992);
    v68 = *(v0 + 968);
    v69 = *(v0 + 960);
    v70 = *(v0 + 952);
    v71 = *(v0 + 944);
    v72 = *(v0 + 920);
    v73 = *(v0 + 912);
    v74 = *(v0 + 888);
    v87 = *(v0 + 880);

    v42 = *(v0 + 8);

    return v42();
  }
}

{
  v2 = *v1;
  v3 = (*v1)[163];
  v10 = *v1;
  (*v1)[164] = v0;

  if (v0)
  {
    v4 = v2[150];
    v5 = v2[125];

    outlined destroy of OnScreenContent.Document?(v5, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v6 = v2[153];
    v7 = v2[152];
    v8 = GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  else
  {
    outlined destroy of OnScreenContent.Document?(v2[125], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v6 = v2[153];
    v7 = v2[152];
    v8 = GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v155 = v0;
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1200);
  v4 = *(v0 + 1192);

  v5 = *(v0 + 368);
  v146[4] = *(v0 + 352);
  v146[5] = v5;
  v6 = *(v0 + 384);
  v7 = *(v0 + 304);
  v146[0] = *(v0 + 288);
  v146[1] = v7;
  v8 = *(v0 + 336);
  v146[2] = *(v0 + 320);
  v146[3] = v8;
  v147 = v6;
  v148 = v4;
  v149 = v3;
  v150 = *(v0 + 672);
  v151 = v4;
  v152 = v3;
  v153 = 0;
  v154 = 4;
  IntentCallbackManager.updateIntentProgress(to:)(&v151);
  outlined consume of GenerativeAssistantProgressLevel(v151, v152, v153, v154);
  if (v1)
  {
    v9 = *(v0 + 1280);
    v10 = *(v0 + 1272);
    v11 = *(v0 + 992);
    v12 = *(v0 + 984);
    v13 = *(v0 + 976);
    static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
    v14 = SessionPersistenceUtils.SessionStoredValues.visualIntelligenceImageData.getter();
    v122 = v15;
    v125 = v14;
    (*(v12 + 8))(v11, v13);
  }

  else
  {
    v122 = 0xF000000000000000;
    v125 = 0;
  }

  v131 = *(v0 + 1256);
  partnerName = *(v0 + 1248);
  v16 = *(v0 + 580);
  v17 = *(v0 + 1160);
  v18 = *(v0 + 1152);
  v19 = *(v0 + 1144);
  v119 = *(v0 + 1096);
  v20 = *(v0 + 1056);
  v21 = *(v0 + 1040);
  v22 = *(v0 + 1016);
  v23 = *(v0 + 1008);
  partnerName_8 = *(v0 + 968);
  v24 = *(v0 + 848);
  outlined init with copy of GenerativeRequestMetadata(*(v0 + 1024), v22, type metadata accessor for ModelResponse);
  v128 = *(v24 + 41);
  (*(v18 + 16))(v17, v24 + v16, v19);
  v114 = *(v24 + *(v119 + 48));
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v146[0]) = 44;

  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v26.value._countAndFlagsBits = partnerName;
  v26.value._object = v131;
  v27 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v146, v26, v25);

  *(v0 + 392) = 100;
  *(v0 + 400) = xmmword_24FE1BD10;
  *(v0 + 416) = v27;
  *(v0 + 432) = partnerName;
  *(v0 + 440) = v131;
  outlined init with copy of DialogConfig(v0 + 392, v0 + 448);

  LOBYTE(v146[0]) = v128;
  v115 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v146, v17, v0 + 392, v114);
  outlined destroy of DialogConfig(v0 + 392);
  v28 = (v22 + v23[14]);
  v29 = v28[1];
  v104 = *v28;
  v99 = v29;
  v100 = v22[4];
  v129 = *v22;
  v30 = MEMORY[0x277D84F90];
  if (*(v22 + v23[9]))
  {
    v30 = *(v22 + v23[9]);
  }

  v103 = v30;
  outlined init with copy of URL?(v22 + v23[8], partnerName_8);
  v31 = v22[2];
  v112 = v22[1];
  v108 = *(v22 + v23[10]);
  v110 = *(v22 + v23[11]);
  v32 = (v22 + v23[12]);
  v33 = *v32;
  v101 = v32[1];
  v34 = (v22 + v23[13]);
  v105 = v33;
  v106 = *v34;
  v102 = v34[1];
  *(v0 + 528) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v0 + 536) = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1((v0 + 504));

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v35 = (v20 + v21[14]);
  swift_initStaticObject();
  LOBYTE(v146[0]) = 49;
  v36 = MEMORY[0x277D84F90];
  v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v38 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v146, 0, v37);

  *v35 = v38;
  *v20 = v104;
  *(v20 + 8) = v29;
  *(v20 + 16) = v129;
  *(v20 + 24) = v115;
  *(v20 + 32) = 64;
  *(v20 + 40) = v100;
  *(v20 + 48) = v36;
  *(v20 + v21[15]) = v103;
  *(v20 + v21[12]) = 0;
  v39 = (v20 + v21[13]);
  *v39 = partnerName;
  v39[1] = v131;
  outlined init with copy of URL?(partnerName_8, v20 + v21[10]);
  v40 = (v20 + v21[11]);
  *v40 = v112;
  v40[1] = v31;
  *(v20 + v21[16]) = v108;
  *(v20 + v21[17]) = v110;
  v41 = (v20 + v21[18]);
  *v41 = v105;
  v41[1] = v101;
  v42 = (v20 + v21[19]);
  *v42 = v106;
  v42[1] = v102;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 504, v20 + v21[21]);
  v43 = (v20 + v21[20]);
  *v43 = v125;
  v43[1] = v122;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_21:
    v70 = *(v0 + 1240);
    v71 = *(v0 + 1232);
    v72 = *(v0 + 1160);
    v73 = *(v0 + 1144);
    v74 = *(v0 + 1128);
    partnerNameb = *(v0 + 1120);
    partnerName_8b = *(v0 + 1136);
    v133 = *(v0 + 1088);
    v75 = *(v0 + 1080);
    v76 = *(v0 + 1072);
    v77 = *(v0 + 1024);
    v78 = *(v0 + 1016);
    outlined destroy of OnScreenContent.Document?(*(v0 + 968), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v71(v72, v73);
    outlined destroy of GenerativeRequestMetadata(v78, type metadata accessor for ModelResponse);
    outlined destroy of GenerativeRequestMetadata(v77, type metadata accessor for ModelResponse);
    (*(v75 + 8))(v133, v76);
    (*(v74 + 8))(partnerName_8b, partnerNameb);
LABEL_23:
    v87 = *(v0 + 1056);
    outlined init with copy of GenerativeRequestMetadata(v87, *(v0 + 824), type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 504));
    outlined destroy of GenerativeRequestMetadata(v87, type metadata accessor for GeneratedResponse);
    v88 = *(v0 + 1184);
    v89 = *(v0 + 1176);
    v90 = *(v0 + 1168);
    v91 = *(v0 + 1160);
    v92 = *(v0 + 1136);
    v93 = *(v0 + 1112);
    v94 = *(v0 + 1104);
    v95 = *(v0 + 1088);
    v96 = *(v0 + 1064);
    v97 = *(v0 + 1056);
    v107 = *(v0 + 1032);
    v109 = *(v0 + 1024);
    v111 = *(v0 + 1016);
    v113 = *(v0 + 1000);
    v116 = *(v0 + 992);
    v118 = *(v0 + 968);
    v121 = *(v0 + 960);
    v124 = *(v0 + 952);
    v127 = *(v0 + 944);
    v130 = *(v0 + 920);
    v135 = *(v0 + 912);
    partnerNamed = *(v0 + 888);
    partnerName_8d = *(v0 + 880);

    v98 = *(v0 + 8);

    return v98();
  }

  v44 = *(v0 + 1056);
  v45 = *(v0 + 936);
  v46 = *(v0 + 928);
  v132 = *(v0 + 912);
  partnerName_8a = *(v0 + 904);
  v47._countAndFlagsBits = v104;
  v47._object = v99;
  v48 = GeneratedResponse.updateText(_:)(v47);

  *v44 = v48._countAndFlagsBits;
  v120 = v20;
  *(v20 + 8) = v48._object;
  v49 = v129[2];
  v50 = (v45 + 56);
  v51 = (v45 + 48);

  v53 = 0;
  partnerNamea = v129;
  while (v53 == v49)
  {
    v54 = 1;
    v53 = v49;
LABEL_12:
    v59 = *(v0 + 960);
    v60 = *(v0 + 952);
    v61 = *(v0 + 928);
    (*v50)(v60, v54, 1, v61);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v60, v59, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v51)(v59, 1, v61) == 1)
    {
      v79 = *(v0 + 1240);
      v80 = *(v0 + 1232);
      v81 = *(v0 + 1160);
      v82 = *(v0 + 1144);
      v83 = *(v0 + 1128);
      partnerNamec = *(v0 + 1120);
      partnerName_8c = *(v0 + 1136);
      v134 = *(v0 + 1088);
      v84 = *(v0 + 1080);
      v123 = *(v0 + 1024);
      v126 = *(v0 + 1072);
      v85 = *(v0 + 1016);
      v86 = *(v0 + 968);

      outlined destroy of OnScreenContent.Document?(v86, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v80(v81, v82);
      outlined destroy of GenerativeRequestMetadata(v85, type metadata accessor for ModelResponse);
      outlined destroy of GenerativeRequestMetadata(v123, type metadata accessor for ModelResponse);
      (*(v84 + 8))(v134, v126);
      (*(v83 + 8))(partnerName_8c, partnerNamec);
      goto LABEL_23;
    }

    v62 = *(v0 + 960);
    v63 = *(v0 + 896);
    v64 = *v62;
    _s26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOWObTm_0(v62 + *(v46 + 48), *(v0 + 920), type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v66 = *(v0 + 920);
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of GenerativeRequestMetadata(v66, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    else
    {
      v67 = *(v0 + 912);
      v117 = *(v0 + 896);
      outlined destroy of GenerativeRequestMetadata(v66, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v67 = v48._countAndFlagsBits;
      *(v132 + 8) = v48._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v68 = partnerNamea;
        if ((v64 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(partnerNamea);
        v68 = result;
        if ((v64 & 0x8000000000000000) != 0)
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      if (v64 >= v68[2])
      {
        goto LABEL_27;
      }

      v69 = v68;
      result = outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 912), v68 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v64);
      partnerNamea = v69;
      *(v120 + 16) = v69;
    }
  }

  if (v53 < v129[2])
  {
    v55 = *(v0 + 952);
    v56 = *(v0 + 944);
    v57 = v129 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v53;
    v58 = *(v46 + 48);
    *v56 = v53;
    outlined init with copy of GenerativeRequestMetadata(v57, v56 + v58, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v56, v55, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v54 = 0;
    ++v53;
    goto LABEL_12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  v1 = v0[151];
  v2 = v0[142];
  v3 = v0[141];
  v4 = v0[140];
  v5 = v0[136];
  v6 = v0[135];
  v7 = v0[134];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v33 = v0[162];
  v8 = v0[148];
  v9 = v0[147];
  v10 = v0[146];
  v11 = v0[145];
  v12 = v0[142];
  v13 = v0[139];
  v14 = v0[138];
  v15 = v0[136];
  v16 = v0[133];
  v17 = v0[132];
  v20 = v0[129];
  v21 = v0[128];
  v22 = v0[127];
  v23 = v0[125];
  v24 = v0[124];
  v25 = v0[121];
  v26 = v0[120];
  v27 = v0[119];
  v28 = v0[118];
  v29 = v0[115];
  v30 = v0[114];
  v31 = v0[111];
  v32 = v0[110];

  v18 = v0[1];

  return v18();
}

{
  v148 = v0;
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 888);
  v4 = *(v0 + 864);

  *(v0 + 784) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 1312);
  if (v6)
  {
    v8 = *(v0 + 1256);
    v9 = *(v0 + 1248);
    v10 = *(v0 + 888);
    v11 = *(v0 + 880);
    v12 = *(v0 + 872);
    v13 = *(v0 + 864);
    v14 = *(v0 + 856);
    v15 = *(v0 + 824);

    (*(v12 + 32))(v11, v10, v13);
    specialized GenerateController.handleGATError(_:_:)(v11, v9, v8, v15);
    v16 = *(v0 + 1256);
    v144 = *(v0 + 1136);
    v17 = *(v0 + 1128);
    v18 = *(v0 + 1120);
    v19 = *(v0 + 1088);
    v20 = *(v0 + 1080);
    v21 = *(v0 + 1072);
    v22 = *(v0 + 880);
    v23 = *(v0 + 872);
    v24 = *(v0 + 864);

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
    (*(v17 + 8))(v144, v18);
    v63 = (v0 + 784);
LABEL_8:

    v64 = *(v0 + 1184);
    v65 = *(v0 + 1176);
    v66 = *(v0 + 1168);
    v67 = *(v0 + 1160);
    v68 = *(v0 + 1136);
    v69 = *(v0 + 1112);
    v70 = *(v0 + 1104);
    v71 = *(v0 + 1088);
    v72 = *(v0 + 1064);
    v73 = *(v0 + 1056);
    v110 = *(v0 + 1032);
    v112 = *(v0 + 1024);
    v114 = *(v0 + 1016);
    v116 = *(v0 + 1000);
    v118 = *(v0 + 992);
    v120 = *(v0 + 968);
    v123 = *(v0 + 960);
    v126 = *(v0 + 952);
    v129 = *(v0 + 944);
    v133 = *(v0 + 920);
    v137 = *(v0 + 912);
    v141 = *(v0 + 888);
    v145 = *(v0 + 880);

    v74 = *(v0 + 8);
    goto LABEL_15;
  }

  v63 = (v0 + 792);

  *(v0 + 792) = v7;
  v25 = v7;
  v26 = swift_dynamicCast();
  v27 = *(v0 + 1312);
  if (v26)
  {
    v28 = *(v0 + 1256);
    v29 = *(v0 + 1248);
    v30 = *(v0 + 856);
    v31 = *(v0 + 824);

    v32 = *(v0 + 600);
    *(v0 + 544) = *(v0 + 584);
    *(v0 + 560) = v32;
    *(v0 + 576) = *(v0 + 616);
    specialized GenerateController.handleModelOrchestratorError(error:partnerName:)(v0 + 544, v29, v28, v31);
    v33 = *(v0 + 1256);
    v34 = *(v0 + 1136);
    v35 = *(v0 + 1128);
    v36 = *(v0 + 1120);
    v37 = *(v0 + 1088);
    v38 = *(v0 + 1080);
    v39 = *(v0 + 1072);
    outlined destroy of ModelOrchestrator.Error(v0 + 544);

    (*(v38 + 8))(v37, v39);
    (*(v35 + 8))(v34, v36);
    goto LABEL_8;
  }

  v40 = (v0 + 800);

  *(v0 + 800) = v27;
  v41 = v27;
  v42 = type metadata accessor for CustomErrorWithLocalizedDescription();
  v43 = swift_dynamicCast();
  v44 = *(v0 + 1312);
  v45 = *(v0 + 1264);
  if (v43)
  {
    v46 = *(v0 + 1256);

    v47 = *(v0 + 808);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    v140 = v49;
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 1136);
    v52 = *(v0 + 1128);
    v53 = *(v0 + 1120);
    v54 = *(v0 + 1088);
    v55 = *(v0 + 1080);
    v56 = *(v0 + 1072);
    if (v50)
    {
      v136 = *(v0 + 1072);
      v57 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v147[0] = v125;
      *v57 = 136315650;
      v132 = v51;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v147);
      v128 = v53;
      *(v57 + 12) = 2080;
      *(v57 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v147);
      *(v57 + 22) = 2080;
      v58 = [v47 localizedDescription];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v54;
      v61 = v60;

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, v147);

      *(v57 + 24) = v62;
      _os_log_impl(&dword_24FD67000, v48, v140, "%s.%s [CustomErrorWithLocalizedDescription = %s]", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v125, -1, -1);
      MEMORY[0x253057F40](v57, -1, -1);

      swift_willThrow();
      (*(v55 + 8))(v122, v136);
      (*(v52 + 8))(v132, v128);
    }

    else
    {

      swift_willThrow();
      (*(v55 + 8))(v54, v56);
      (*(v52 + 8))(v51, v53);
    }
  }

  else
  {
    v146 = v42;

    v75 = v44;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = *(v0 + 1312);
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v147[0] = v80;
      *v79 = 136315650;
      *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v147);
      *(v79 + 12) = 2080;
      *(v79 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v147);
      *(v79 + 22) = 2080;
      swift_getErrorValue();
      v81 = *(v0 + 648);
      v82 = *(v0 + 656);
      v83 = *(v0 + 664);
      v84 = Error.localizedDescription.getter();
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v147);

      *(v79 + 24) = v86;
      _os_log_impl(&dword_24FD67000, v76, v77, "%s.%s [error = %s]", v79, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v80, -1, -1);
      MEMORY[0x253057F40](v79, -1, -1);
    }

    v87 = *(v0 + 1312);
    v88 = *(v0 + 1256);
    v89 = *(v0 + 1248);
    v90 = *(v0 + 1128);
    v138 = *(v0 + 1120);
    v142 = *(v0 + 1136);
    v91 = *(v0 + 1080);
    v130 = *(v0 + 1072);
    v134 = *(v0 + 1088);
    v92 = _convertErrorToNSError(_:)();
    v93 = [v92 domain];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = _convertErrorToNSError(_:)();
    [v94 code];

    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v147[0]) = 5;
    v95 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v96.value._countAndFlagsBits = v89;
    v96.value._object = v88;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v147, v96, v95);

    v97 = objc_allocWithZone(v146);
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();

    (*(v91 + 8))(v134, v130);
    (*(v90 + 8))(v142, v138);
  }

  v98 = *(v0 + 1184);
  v99 = *(v0 + 1176);
  v100 = *(v0 + 1168);
  v101 = *(v0 + 1160);
  v102 = *(v0 + 1136);
  v103 = *(v0 + 1112);
  v104 = *(v0 + 1104);
  v105 = *(v0 + 1088);
  v106 = *(v0 + 1064);
  v107 = *(v0 + 1056);
  v109 = *(v0 + 1032);
  v111 = *(v0 + 1024);
  v113 = *(v0 + 1016);
  v115 = *(v0 + 1000);
  v117 = *(v0 + 992);
  v119 = *(v0 + 968);
  v121 = *(v0 + 960);
  v124 = *(v0 + 952);
  v127 = *(v0 + 944);
  v131 = *(v0 + 920);
  v135 = *(v0 + 912);
  v139 = *(v0 + 888);
  v143 = *(v0 + 880);

  v74 = *(v0 + 8);
LABEL_15:

  return v74();
}

uint64_t GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 864) = v6;
  *(v7 + 856) = a6;
  *(v7 + 848) = a4;
  *(v7 + 840) = a3;
  *(v7 + 832) = a2;
  *(v7 + 824) = a1;
  v9 = type metadata accessor for GATError();
  *(v7 + 872) = v9;
  v10 = *(v9 - 8);
  *(v7 + 880) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 888) = swift_task_alloc();
  *(v7 + 896) = swift_task_alloc();
  v12 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  *(v7 + 904) = v12;
  v13 = *(v12 - 8);
  *(v7 + 912) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 920) = swift_task_alloc();
  *(v7 + 928) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  *(v7 + 936) = v15;
  v16 = *(v15 - 8);
  *(v7 + 944) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 952) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR) - 8) + 64) + 15;
  *(v7 + 960) = swift_task_alloc();
  *(v7 + 968) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  *(v7 + 976) = swift_task_alloc();
  v20 = type metadata accessor for SessionPersistenceUtils.SessionStoredValues();
  *(v7 + 984) = v20;
  v21 = *(v20 - 8);
  *(v7 + 992) = v21;
  v22 = *(v21 + 64) + 15;
  *(v7 + 1000) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR) - 8) + 64) + 15;
  *(v7 + 1008) = swift_task_alloc();
  v24 = type metadata accessor for ModelResponse();
  *(v7 + 1016) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v7 + 1024) = swift_task_alloc();
  *(v7 + 1032) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR) - 8) + 64) + 15;
  *(v7 + 1040) = swift_task_alloc();
  v27 = type metadata accessor for GeneratedResponse(0);
  *(v7 + 1048) = v27;
  v28 = *(v27 - 8);
  *(v7 + 1056) = v28;
  v29 = *(v28 + 64) + 15;
  *(v7 + 1064) = swift_task_alloc();
  *(v7 + 1072) = swift_task_alloc();
  v30 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.ResponseType();
  *(v7 + 1080) = v30;
  v31 = *(v30 - 8);
  *(v7 + 1088) = v31;
  v32 = *(v31 + 64) + 15;
  *(v7 + 1096) = swift_task_alloc();
  v33 = type metadata accessor for GenerativeRequestMetadata();
  *(v7 + 1104) = v33;
  v34 = *(*(v33 - 8) + 64) + 15;
  *(v7 + 1112) = swift_task_alloc();
  *(v7 + 1120) = swift_task_alloc();
  v35 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.RequestType();
  *(v7 + 1128) = v35;
  v36 = *(v35 - 8);
  *(v7 + 1136) = v36;
  v37 = *(v36 + 64) + 15;
  *(v7 + 1144) = swift_task_alloc();
  v38 = type metadata accessor for GenerativeAssistantUseCase();
  *(v7 + 1152) = v38;
  v39 = *(v38 - 8);
  *(v7 + 1160) = v39;
  v40 = *(v39 + 64) + 15;
  *(v7 + 1168) = swift_task_alloc();
  *(v7 + 1176) = swift_task_alloc();
  *(v7 + 1184) = swift_task_alloc();
  *(v7 + 1192) = swift_task_alloc();
  v41 = *(a5 + 104);
  *(v7 + 384) = *(a5 + 96);
  v42 = *(a5 + 80);
  *(v7 + 352) = *(a5 + 64);
  *(v7 + 368) = v42;
  v43 = *(a5 + 16);
  *(v7 + 288) = *a5;
  *(v7 + 304) = v43;
  v44 = *(a5 + 48);
  *(v7 + 320) = *(a5 + 32);
  *(v7 + 336) = v44;
  *(v7 + 1200) = v41;
  *(v7 + 1208) = *(a5 + 112);
  *(v7 + 672) = *(a5 + 120);
  type metadata accessor for MainActor();
  *(v7 + 1216) = static MainActor.shared.getter();
  v46 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 1224) = v46;
  *(v7 + 1232) = v45;

  return MEMORY[0x2822009F8](GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:), v46, v45);
}

uint64_t GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:)()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 848);
  *(v0 + 580) = *(*(v0 + 1104) + 32);
  v5 = *(v2 + 104);
  v5(v1, *MEMORY[0x277D0D658], v3);
  lazy protocol witness table accessor for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase(&lazy protocol witness table cache variable for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase, MEMORY[0x277D0D660]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v0 + 688) == *(v0 + 704) && *(v0 + 696) == *(v0 + 712))
  {
    v6 = 1;
  }

  else
  {
    v7 = *(v0 + 696);
    v8 = *(v0 + 712);
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v9 = *(v0 + 1192);
  v10 = *(v0 + 1160);
  v11 = *(v0 + 1152);
  v12 = *(v10 + 8);
  *(v0 + 1240) = v12;
  *(v0 + 1248) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v11);

  v54 = v5;
  if (v6)
  {
    v13 = 1;
  }

  else
  {
    v5(*(v0 + 1184), *MEMORY[0x277D0D640], *(v0 + 1152));
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 720) == *(v0 + 736) && *(v0 + 728) == *(v0 + 744))
    {
      v13 = 1;
    }

    else
    {
      v14 = *(v0 + 728);
      v15 = *(v0 + 744);
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v12(*(v0 + 1184), *(v0 + 1152));
  }

  v56 = v13;
  *(v0 + 577) = v13 & 1;
  v54(*(v0 + 1176), *MEMORY[0x277D0D648], *(v0 + 1152));
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = *(v0 + 1176);
  v17 = *(v0 + 1152);
  if (*(v0 + 752) == *(v0 + 768) && *(v0 + 760) == *(v0 + 776))
  {
    v12(*(v0 + 1176), *(v0 + 1152));

LABEL_16:
    (*(*(v0 + 1136) + 104))(*(v0 + 1144), *MEMORY[0x277D0D770], *(v0 + 1128));
    goto LABEL_21;
  }

  v18 = *(v0 + 760);
  v19 = *(v0 + 776);
  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v12(v16, v17);

  if (v20)
  {
    goto LABEL_16;
  }

  if (v56)
  {
    v21 = MEMORY[0x277D0D768];
  }

  else
  {
    v21 = MEMORY[0x277D0D760];
  }

  (*(*(v0 + 1136) + 104))(*(v0 + 1144), *v21, *(v0 + 1128));
LABEL_21:
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v22 = static Disclaimer.partnerName;
  *(v0 + 1256) = static Disclaimer.partnerName;
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();

  v23 = static GenerativeAssistantSettingsUserDefaults.isEnabled()();
  if (one-time initialization token for genFromTextController != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 1120);
  v25 = *(v0 + 848);
  v26 = *(v0 + 840);
  v27 = type metadata accessor for Logger();
  *(v0 + 1272) = __swift_project_value_buffer(v27, static Logger.genFromTextController);
  outlined init with copy of GenerativeRequestMetadata(v25, v24, type metadata accessor for GenerativeRequestMetadata);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 1120);
  if (v30)
  {
    v53 = *(v0 + 840);
    v55 = v23;
    v32 = *(v0 + 832);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v59 = v34;
    *v33 = 136316418;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v59);
    *(v33 + 12) = 2080;
    *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006BLL, 0x800000024FE33240, &v59);
    *(v33 + 22) = 2080;
    *(v33 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v53, &v59);
    *(v33 + 32) = 1024;
    LODWORD(v32) = *(v31 + 40);
    outlined destroy of GenerativeRequestMetadata(v31, type metadata accessor for GenerativeRequestMetadata);
    *(v33 + 34) = v32;
    *(v33 + 38) = 2080;
    *(v33 + 40) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, *(&v22 + 1), &v59);
    *(v33 + 48) = 1024;
    *(v33 + 50) = v55 & 1;
    _os_log_impl(&dword_24FD67000, v28, v29, "%s.%s [userQuery = %s] [isExplicitRequest: %{BOOL}d] [partner: %s] [isPartnerEnabled: %{BOOL}d", v33, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v34, -1, -1);
    MEMORY[0x253057F40](v33, -1, -1);
  }

  else
  {
    outlined destroy of GenerativeRequestMetadata(*(v0 + 1120), type metadata accessor for GenerativeRequestMetadata);
  }

  v35 = *(v0 + 1208);
  v36 = *(v0 + 1200);
  v37 = *(v0 + 1144);
  v38 = *(v0 + 1096);
  v39 = *(v0 + 848);
  v40 = *(v39 + 40);
  v41 = (v39 + *(*(v0 + 1104) + 52));
  *(v0 + 1280) = *v41;
  *(v0 + 1288) = v41[1];
  static GenerativeAssistantSettingsIntentHelper.responseType(for:isExplicitRequest:sessionId:)();
  v42 = *(v0 + 368);
  *(v0 + 80) = *(v0 + 352);
  *(v0 + 96) = v42;
  v43 = *(v0 + 384);
  v44 = *(v0 + 304);
  *(v0 + 16) = *(v0 + 288);
  *(v0 + 32) = v44;
  v45 = *(v0 + 336);
  *(v0 + 48) = *(v0 + 320);
  *(v0 + 64) = v45;
  *(v0 + 112) = v43;
  *(v0 + 120) = v36;
  *(v0 + 128) = v35;
  *(v0 + 136) = *(v0 + 672);
  v46 = swift_task_alloc();
  *(v0 + 1296) = v46;
  *v46 = v0;
  v46[1] = GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:);
  v47 = *(v0 + 1040);
  v48 = *(v0 + 864);
  v49 = *(v0 + 848);
  v50 = *(v0 + 840);
  v51 = *(v0 + 832);
  v58 = *(v0 + 1096);

  return GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:)(v47, v51, v50, v49, v0 + 16, v56 & 1, v22, *(&v22 + 1));
}

{
  v2 = *v1;
  v3 = *(*v1 + 1296);
  v9 = *v1;
  *(*v1 + 1304) = v0;

  if (v0)
  {
    v4 = v2[158];

    v5 = v2[154];
    v6 = v2[153];
    v7 = GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:);
  }

  else
  {
    v5 = v2[154];
    v6 = v2[153];
    v7 = GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v87 = v0;
  v1 = *(v0 + 1040);
  if ((*(*(v0 + 1056) + 48))(v1, 1, *(v0 + 1048)) == 1)
  {
    v2 = *(v0 + 1272);
    v3 = *(v0 + 1208);
    v4 = *(v0 + 1200);
    v5 = *(v0 + 1112);
    v6 = *(v0 + 848);
    outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v7 = *(v0 + 368);
    v78[4] = *(v0 + 352);
    v78[5] = v7;
    v8 = *(v0 + 384);
    v9 = *(v0 + 304);
    v78[0] = *(v0 + 288);
    v78[1] = v9;
    v10 = *(v0 + 336);
    v78[2] = *(v0 + 320);
    v78[3] = v10;
    v79 = v8;
    v80 = v4;
    v81 = v3;
    v82 = *(v0 + 672);
    v83 = v4;
    v84 = v3;
    v85 = 0;
    v86 = 3;

    IntentCallbackManager.updateIntentProgress(to:)(&v83);
    outlined consume of GenerativeAssistantProgressLevel(v83, v84, v85, v86);
    outlined init with copy of GenerativeRequestMetadata(v6, v5, type metadata accessor for GenerativeRequestMetadata);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1112);
    if (v13)
    {
      v15 = *(v0 + 1104);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v78[0] = v17;
      *v16 = 136315650;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v78);
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006BLL, 0x800000024FE33240, v78);
      *(v16 + 22) = 2080;
      v18 = v14 + *(v15 + 32);
      v19 = GenerativeAssistantUseCase.rawValue.getter();
      v21 = v20;
      outlined destroy of GenerativeRequestMetadata(v14, type metadata accessor for GenerativeRequestMetadata);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v78);

      *(v16 + 24) = v22;
      _os_log_impl(&dword_24FD67000, v11, v12, "%s.%s Calling model orchestrator with use case %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v17, -1, -1);
      MEMORY[0x253057F40](v16, -1, -1);
    }

    else
    {

      outlined destroy of GenerativeRequestMetadata(v14, type metadata accessor for GenerativeRequestMetadata);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v44 = static SELFUtils.shared + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
    swift_beginAccess();
    v45 = *v44;
    v46 = v44[4];
    *v44 = 4;
    v44[4] = 0;
    if ((v46 & 1) == 0 && v45 == 6)
    {
      *v44 = 6;
    }

    v47 = *(v0 + 1208);
    v48 = *(v0 + 1200);
    v49 = *(v0 + 1008);
    v50 = *(v0 + 864);
    v51 = type metadata accessor for UploadableMedia(0);
    (*(*(v51 - 8) + 56))(v49, 1, 1, v51);
    v52 = *(v0 + 320);
    *(v0 + 200) = *(v0 + 336);
    v53 = *(v0 + 368);
    *(v0 + 216) = *(v0 + 352);
    *(v0 + 232) = v53;
    v54 = *(v0 + 304);
    *(v0 + 152) = *(v0 + 288);
    *(v0 + 168) = v54;
    v55 = *(v0 + 384);
    *(v0 + 184) = v52;
    *(v0 + 248) = v55;
    *(v0 + 256) = v48;
    *(v0 + 264) = v47;
    *(v0 + 272) = *(v0 + 672);
    v56 = swift_task_alloc();
    *(v0 + 1312) = v56;
    *v56 = v0;
    v56[1] = GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:);
    v57 = *(v0 + 577);
    v58 = *(v0 + 1032);
    v59 = *(v0 + 1008);
    v60 = *(v0 + 856);
    v61 = *(v0 + 848);
    v62 = *(v0 + 840);
    v63 = *(v0 + 832);
    v89 = 0;
    v90 = v60;

    return ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:)(v58, v63, v62, v61, v59, v0 + 152, v57, 0);
  }

  else
  {
    v23 = *(v0 + 1264);
    v24 = *(v0 + 1216);
    v25 = *(v0 + 1144);
    v26 = *(v0 + 1136);
    v27 = *(v0 + 1128);
    v28 = *(v0 + 1096);
    v29 = *(v0 + 1088);
    v30 = *(v0 + 1080);
    v31 = *(v0 + 1072);
    v76 = *(v0 + 824);

    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
    _s26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOWObTm_0(v1, v31, type metadata accessor for GeneratedResponse);
    _s26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOWObTm_0(v31, v76, type metadata accessor for GeneratedResponse);
    v32 = *(v0 + 1192);
    v33 = *(v0 + 1184);
    v34 = *(v0 + 1176);
    v35 = *(v0 + 1168);
    v36 = *(v0 + 1144);
    v37 = *(v0 + 1120);
    v38 = *(v0 + 1112);
    v39 = *(v0 + 1096);
    v40 = *(v0 + 1072);
    v41 = *(v0 + 1064);
    v64 = *(v0 + 1040);
    v65 = *(v0 + 1032);
    v66 = *(v0 + 1024);
    v67 = *(v0 + 1008);
    v68 = *(v0 + 1000);
    v69 = *(v0 + 976);
    v70 = *(v0 + 968);
    v71 = *(v0 + 960);
    v72 = *(v0 + 952);
    v73 = *(v0 + 928);
    v74 = *(v0 + 920);
    v75 = *(v0 + 896);
    v77 = *(v0 + 888);

    v42 = *(v0 + 8);

    return v42();
  }
}

{
  v2 = *v1;
  v3 = (*v1)[164];
  v8 = *v1;
  (*v1)[165] = v0;

  outlined destroy of OnScreenContent.Document?(v2[126], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
  v4 = v2[154];
  v5 = v2[153];
  if (v0)
  {
    v6 = GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:);
  }

  else
  {
    v6 = GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v156 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1264);
  v3 = *(v0 + 1256);
  v4 = *(v0 + 1216);
  v5 = *(v0 + 1208);
  v6 = *(v0 + 1200);

  v7 = *(v0 + 368);
  v147[4] = *(v0 + 352);
  v147[5] = v7;
  v8 = *(v0 + 384);
  v9 = *(v0 + 304);
  v147[0] = *(v0 + 288);
  v147[1] = v9;
  v10 = *(v0 + 336);
  v147[2] = *(v0 + 320);
  v147[3] = v10;
  v148 = v8;
  v149 = v6;
  v150 = v5;
  v151 = *(v0 + 672);
  v152 = v3;
  v153 = v2;
  v154 = 0;
  v155 = 4;
  partnerName = v2;

  IntentCallbackManager.updateIntentProgress(to:)(&v152);
  outlined consume of GenerativeAssistantProgressLevel(v152, v153, v154, v155);
  if (v1)
  {
    v11 = *(v0 + 1288);
    v12 = *(v0 + 1280);
    v13 = *(v0 + 1000);
    v14 = *(v0 + 992);
    v15 = *(v0 + 984);
    static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
    v16 = SessionPersistenceUtils.SessionStoredValues.visualIntelligenceImageData.getter();
    v124 = v17;
    v126 = v16;
    (*(v14 + 8))(v13, v15);
  }

  else
  {
    v124 = 0xF000000000000000;
    v126 = 0;
  }

  v132 = *(v0 + 1264);
  v137 = *(v0 + 1256);
  v18 = *(v0 + 580);
  v19 = *(v0 + 1168);
  v20 = *(v0 + 1160);
  v21 = *(v0 + 1152);
  v22 = *(v0 + 1104);
  v129 = *(v0 + 1064);
  v23 = *(v0 + 1048);
  v24 = *(v0 + 1024);
  v25 = *(v0 + 1016);
  v142 = *(v0 + 976);
  v26 = *(v0 + 848);
  outlined init with copy of GenerativeRequestMetadata(*(v0 + 1032), v24, type metadata accessor for ModelResponse);
  v117 = *(v26 + 41);
  (*(v20 + 16))(v19, v26 + v18, v21);
  v112 = *(v26 + *(v22 + 48));
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v147[0]) = 44;

  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v28.value._countAndFlagsBits = v137;
  v28.value._object = partnerName;
  v29 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v147, v28, v27);

  *(v0 + 392) = 100;
  *(v0 + 400) = xmmword_24FE1BD10;
  *(v0 + 416) = v29;
  *(v0 + 432) = v137;
  *(v0 + 440) = partnerName;
  outlined init with copy of DialogConfig(v0 + 392, v0 + 448);

  LOBYTE(v147[0]) = v117;
  v118 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v147, v19, v0 + 392, v112);
  outlined destroy of DialogConfig(v0 + 392);
  v103 = v24[4];
  v30 = (v24 + v25[14]);
  v31 = v30[1];
  v105 = *v30;
  v32 = *v24;
  v33 = MEMORY[0x277D84F90];
  if (*(v24 + v25[9]))
  {
    v33 = *(v24 + v25[9]);
  }

  v106 = v33;
  outlined init with copy of URL?(v24 + v25[8], v142);
  v34 = v24[2];
  v115 = v24[1];
  v110 = *(v24 + v25[10]);
  v113 = *(v24 + v25[11]);
  v35 = (v24 + v25[12]);
  v36 = *v35;
  v37 = v35[1];
  v38 = (v24 + v25[13]);
  v107 = v36;
  v108 = *v38;
  v104 = v38[1];
  *(v0 + 528) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v0 + 536) = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1((v0 + 504));

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v39 = (v129 + v23[14]);
  swift_initStaticObject();
  LOBYTE(v147[0]) = 49;
  v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v41 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v147, 0, v40);

  *v39 = v41;
  v42 = v32;
  *v129 = v105;
  *(v129 + 8) = v31;
  *(v129 + 16) = v32;
  *(v129 + 24) = v118;
  *(v129 + 32) = 64;
  *(v129 + 40) = v103;
  *(v129 + 48) = MEMORY[0x277D84F90];
  *(v129 + v23[15]) = v106;
  *(v129 + v23[12]) = 0;
  v43 = (v129 + v23[13]);
  *v43 = v137;
  v43[1] = v132;
  outlined init with copy of URL?(v142, v129 + v23[10]);
  v44 = (v129 + v23[11]);
  *v44 = v115;
  v44[1] = v34;
  *(v129 + v23[16]) = v110;
  *(v129 + v23[17]) = v113;
  v45 = (v129 + v23[18]);
  *v45 = v107;
  v45[1] = v37;
  v46 = (v129 + v23[19]);
  *v46 = v108;
  v46[1] = v104;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 504, v129 + v23[21]);
  v47 = (v129 + v23[20]);
  *v47 = v126;
  v47[1] = v124;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_21:
    v74 = *(v0 + 1248);
    v75 = *(v0 + 1240);
    v76 = *(v0 + 1168);
    v77 = *(v0 + 1152);
    v78 = *(v0 + 1136);
    v139 = *(v0 + 1128);
    v144 = *(v0 + 1144);
    v134 = *(v0 + 1096);
    v79 = *(v0 + 1088);
    v80 = *(v0 + 1080);
    v81 = *(v0 + 1032);
    v82 = *(v0 + 1024);
    outlined destroy of OnScreenContent.Document?(*(v0 + 976), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v75(v76, v77);
    outlined destroy of GenerativeRequestMetadata(v82, type metadata accessor for ModelResponse);
    outlined destroy of GenerativeRequestMetadata(v81, type metadata accessor for ModelResponse);
    (*(v79 + 8))(v134, v80);
    (*(v78 + 8))(v144, v139);
LABEL_23:
    v91 = *(v0 + 1064);
    outlined init with copy of GenerativeRequestMetadata(v91, *(v0 + 824), type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 504));
    outlined destroy of GenerativeRequestMetadata(v91, type metadata accessor for GeneratedResponse);
    v92 = *(v0 + 1192);
    v93 = *(v0 + 1184);
    v94 = *(v0 + 1176);
    v95 = *(v0 + 1168);
    v96 = *(v0 + 1144);
    v97 = *(v0 + 1120);
    v98 = *(v0 + 1112);
    v99 = *(v0 + 1096);
    v100 = *(v0 + 1072);
    v101 = *(v0 + 1064);
    v109 = *(v0 + 1040);
    v111 = *(v0 + 1032);
    v114 = *(v0 + 1024);
    v116 = *(v0 + 1008);
    v119 = *(v0 + 1000);
    v120 = *(v0 + 976);
    partnerNameb = *(v0 + 968);
    v125 = *(v0 + 960);
    v128 = *(v0 + 952);
    v131 = *(v0 + 928);
    v136 = *(v0 + 920);
    v141 = *(v0 + 896);
    v146 = *(v0 + 888);

    v102 = *(v0 + 8);

    return v102();
  }

  v48 = *(v0 + 1064);
  v49 = *(v0 + 944);
  v50 = *(v0 + 936);
  v133 = *(v0 + 920);
  v143 = *(v0 + 912);
  v51._countAndFlagsBits = v105;
  v51._object = v31;
  v52 = GeneratedResponse.updateText(_:)(v51);

  *v48 = v52._countAndFlagsBits;
  *(v129 + 8) = v52._object;
  v53 = v32[2];
  v54 = (v49 + 56);
  v55 = (v49 + 48);

  v57 = 0;
  v138 = v42;
  while (v57 == v53)
  {
    v58 = 1;
    v57 = v53;
LABEL_12:
    v63 = *(v0 + 968);
    v64 = *(v0 + 960);
    v65 = *(v0 + 936);
    (*v54)(v64, v58, 1, v65);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v64, v63, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v55)(v63, 1, v65) == 1)
    {
      v83 = *(v0 + 1248);
      v84 = *(v0 + 1240);
      v85 = *(v0 + 1168);
      v86 = *(v0 + 1152);
      v87 = *(v0 + 1136);
      v140 = *(v0 + 1128);
      v145 = *(v0 + 1144);
      v88 = *(v0 + 1088);
      v130 = *(v0 + 1080);
      v135 = *(v0 + 1096);
      v127 = *(v0 + 1032);
      v89 = *(v0 + 1024);
      v90 = *(v0 + 976);

      outlined destroy of OnScreenContent.Document?(v90, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v84(v85, v86);
      outlined destroy of GenerativeRequestMetadata(v89, type metadata accessor for ModelResponse);
      outlined destroy of GenerativeRequestMetadata(v127, type metadata accessor for ModelResponse);
      (*(v88 + 8))(v135, v130);
      (*(v87 + 8))(v145, v140);
      goto LABEL_23;
    }

    v66 = *(v0 + 968);
    v67 = *(v0 + 904);
    v68 = *v66;
    _s26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOWObTm_0(v66 + *(v50 + 48), *(v0 + 928), type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v70 = *(v0 + 928);
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of GenerativeRequestMetadata(v70, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    else
    {
      v71 = *(v0 + 920);
      partnerNamea = *(v0 + 904);
      outlined destroy of GenerativeRequestMetadata(v70, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v71 = v52._countAndFlagsBits;
      *(v133 + 8) = v52._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v72 = v138;
        if ((v68 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v138);
        v72 = result;
        if ((v68 & 0x8000000000000000) != 0)
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      if (v68 >= v72[2])
      {
        goto LABEL_27;
      }

      v73 = v72;
      result = outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 920), v72 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v68);
      v138 = v73;
      *(v129 + 16) = v73;
    }
  }

  if (v57 < v42[2])
  {
    v59 = *(v0 + 960);
    v60 = *(v0 + 952);
    v61 = v42 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v57;
    v62 = *(v50 + 48);
    *v60 = v57;
    outlined init with copy of GenerativeRequestMetadata(v61, v60 + v62, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v60, v59, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v58 = 0;
    ++v57;
    goto LABEL_12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  v1 = v0[152];
  v2 = v0[143];
  v3 = v0[142];
  v4 = v0[141];
  v5 = v0[137];
  v6 = v0[136];
  v7 = v0[135];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v33 = v0[163];
  v8 = v0[149];
  v9 = v0[148];
  v10 = v0[147];
  v11 = v0[146];
  v12 = v0[143];
  v13 = v0[140];
  v14 = v0[139];
  v15 = v0[137];
  v16 = v0[134];
  v17 = v0[133];
  v20 = v0[130];
  v21 = v0[129];
  v22 = v0[128];
  v23 = v0[126];
  v24 = v0[125];
  v25 = v0[122];
  v26 = v0[121];
  v27 = v0[120];
  v28 = v0[119];
  v29 = v0[116];
  v30 = v0[115];
  v31 = v0[112];
  v32 = v0[111];

  v18 = v0[1];

  return v18();
}

{
  v148 = v0;
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1216);
  v3 = *(v0 + 896);
  v4 = *(v0 + 872);

  *(v0 + 784) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 1320);
  if (v6)
  {
    v8 = *(v0 + 1264);
    v9 = *(v0 + 1256);
    v10 = *(v0 + 896);
    v11 = *(v0 + 888);
    v12 = *(v0 + 880);
    v13 = *(v0 + 872);
    v14 = *(v0 + 864);
    v15 = *(v0 + 824);

    (*(v12 + 32))(v11, v10, v13);
    specialized GenerateController.handleGATError(_:_:)(v11, v9, v8, v15);
    v16 = *(v0 + 1264);
    v144 = *(v0 + 1144);
    v17 = *(v0 + 1136);
    v18 = *(v0 + 1128);
    v19 = *(v0 + 1096);
    v20 = *(v0 + 1088);
    v21 = *(v0 + 1080);
    v22 = *(v0 + 888);
    v23 = *(v0 + 880);
    v24 = *(v0 + 872);

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
    (*(v17 + 8))(v144, v18);
    v63 = (v0 + 784);
LABEL_8:

    v64 = *(v0 + 1192);
    v65 = *(v0 + 1184);
    v66 = *(v0 + 1176);
    v67 = *(v0 + 1168);
    v68 = *(v0 + 1144);
    v69 = *(v0 + 1120);
    v70 = *(v0 + 1112);
    v71 = *(v0 + 1096);
    v72 = *(v0 + 1072);
    v73 = *(v0 + 1064);
    v110 = *(v0 + 1040);
    v112 = *(v0 + 1032);
    v114 = *(v0 + 1024);
    v116 = *(v0 + 1008);
    v118 = *(v0 + 1000);
    v120 = *(v0 + 976);
    v123 = *(v0 + 968);
    v126 = *(v0 + 960);
    v129 = *(v0 + 952);
    v133 = *(v0 + 928);
    v137 = *(v0 + 920);
    v141 = *(v0 + 896);
    v145 = *(v0 + 888);

    v74 = *(v0 + 8);
    goto LABEL_15;
  }

  v63 = (v0 + 792);

  *(v0 + 792) = v7;
  v25 = v7;
  v26 = swift_dynamicCast();
  v27 = *(v0 + 1320);
  if (v26)
  {
    v28 = *(v0 + 1264);
    v29 = *(v0 + 1256);
    v30 = *(v0 + 864);
    v31 = *(v0 + 824);

    v32 = *(v0 + 600);
    *(v0 + 544) = *(v0 + 584);
    *(v0 + 560) = v32;
    *(v0 + 576) = *(v0 + 616);
    specialized GenerateController.handleModelOrchestratorError(error:partnerName:)(v0 + 544, v29, v28, v31);
    v33 = *(v0 + 1264);
    v34 = *(v0 + 1144);
    v35 = *(v0 + 1136);
    v36 = *(v0 + 1128);
    v37 = *(v0 + 1096);
    v38 = *(v0 + 1088);
    v39 = *(v0 + 1080);
    outlined destroy of ModelOrchestrator.Error(v0 + 544);

    (*(v38 + 8))(v37, v39);
    (*(v35 + 8))(v34, v36);
    goto LABEL_8;
  }

  v40 = (v0 + 800);

  *(v0 + 800) = v27;
  v41 = v27;
  v42 = type metadata accessor for CustomErrorWithLocalizedDescription();
  v43 = swift_dynamicCast();
  v44 = *(v0 + 1320);
  v45 = *(v0 + 1272);
  if (v43)
  {
    v46 = *(v0 + 1264);

    v47 = *(v0 + 808);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    v140 = v49;
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 1144);
    v52 = *(v0 + 1136);
    v53 = *(v0 + 1128);
    v54 = *(v0 + 1096);
    v55 = *(v0 + 1088);
    v56 = *(v0 + 1080);
    if (v50)
    {
      v136 = *(v0 + 1080);
      v57 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v147[0] = v125;
      *v57 = 136315650;
      v132 = v51;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v147);
      v128 = v53;
      *(v57 + 12) = 2080;
      *(v57 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006BLL, 0x800000024FE33240, v147);
      *(v57 + 22) = 2080;
      v58 = [v47 localizedDescription];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v54;
      v61 = v60;

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, v147);

      *(v57 + 24) = v62;
      _os_log_impl(&dword_24FD67000, v48, v140, "%s.%s [CustomErrorWithLocalizedDescription = %s]", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v125, -1, -1);
      MEMORY[0x253057F40](v57, -1, -1);

      swift_willThrow();
      (*(v55 + 8))(v122, v136);
      (*(v52 + 8))(v132, v128);
    }

    else
    {

      swift_willThrow();
      (*(v55 + 8))(v54, v56);
      (*(v52 + 8))(v51, v53);
    }
  }

  else
  {
    v146 = v42;

    v75 = v44;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = *(v0 + 1320);
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v147[0] = v80;
      *v79 = 136315650;
      *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v147);
      *(v79 + 12) = 2080;
      *(v79 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006BLL, 0x800000024FE33240, v147);
      *(v79 + 22) = 2080;
      swift_getErrorValue();
      v81 = *(v0 + 648);
      v82 = *(v0 + 656);
      v83 = *(v0 + 664);
      v84 = Error.localizedDescription.getter();
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v147);

      *(v79 + 24) = v86;
      _os_log_impl(&dword_24FD67000, v76, v77, "%s.%s [error = %s]", v79, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v80, -1, -1);
      MEMORY[0x253057F40](v79, -1, -1);
    }

    v87 = *(v0 + 1320);
    v88 = *(v0 + 1264);
    v89 = *(v0 + 1256);
    v90 = *(v0 + 1136);
    v138 = *(v0 + 1128);
    v142 = *(v0 + 1144);
    v91 = *(v0 + 1088);
    v130 = *(v0 + 1080);
    v134 = *(v0 + 1096);
    v92 = _convertErrorToNSError(_:)();
    v93 = [v92 domain];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = _convertErrorToNSError(_:)();
    [v94 code];

    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v147[0]) = 5;
    v95 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v96.value._countAndFlagsBits = v89;
    v96.value._object = v88;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v147, v96, v95);

    v97 = objc_allocWithZone(v146);
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();

    (*(v91 + 8))(v134, v130);
    (*(v90 + 8))(v142, v138);
  }

  v98 = *(v0 + 1192);
  v99 = *(v0 + 1184);
  v100 = *(v0 + 1176);
  v101 = *(v0 + 1168);
  v102 = *(v0 + 1144);
  v103 = *(v0 + 1120);
  v104 = *(v0 + 1112);
  v105 = *(v0 + 1096);
  v106 = *(v0 + 1072);
  v107 = *(v0 + 1064);
  v109 = *(v0 + 1040);
  v111 = *(v0 + 1032);
  v113 = *(v0 + 1024);
  v115 = *(v0 + 1008);
  v117 = *(v0 + 1000);
  v119 = *(v0 + 976);
  v121 = *(v0 + 968);
  v124 = *(v0 + 960);
  v127 = *(v0 + 952);
  v131 = *(v0 + 928);
  v135 = *(v0 + 920);
  v139 = *(v0 + 896);
  v143 = *(v0 + 888);

  v74 = *(v0 + 8);
LABEL_15:

  return v74();
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of GenerativeRequestMetadata(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of GenerativeRequestMetadata(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy201_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GenerateTextController(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
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

uint64_t storeEnumTagSinglePayload for GenerateTextController(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type IntentResultContainer<Never, Never, Never, IntentDialog> and conformance IntentResultContainer<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, Never, IntentDialog> and conformance IntentResultContainer<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, Never, IntentDialog> and conformance IntentResultContainer<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, Never, IntentDialog> and conformance IntentResultContainer<A, B, C, D>);
  }

  return result;
}

uint64_t dispatch thunk of ModelSession.registerDocument(_:uploadProgressCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of ContentLoaderProviding.load();

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ModelSession.registerImage(_:uploadProgressCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ModelSession.generate(userQuery:useCaseID:keepAliveCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 32);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = dispatch thunk of ContentLoaderProviding.load();

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of ModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 40);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = dispatch thunk of ContentLoaderProviding.load();

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of ModelSession.registerImageInLineAndGenerateResponse(userQuery:image:useCaseID:keepAliveCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 48);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = dispatch thunk of ContentLoaderProviding.load();

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

char *DefaultModelSession.init(systemPrompt:tools:requestMetadata:enableBrowserTool:templateID:featureFlagManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v192 = a8;
  v189 = a7;
  v185 = a6;
  v193 = a5;
  v208 = a4;
  v200 = a3;
  v188 = a2;
  v184 = a1;
  v199 = *v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v187 = &v164 - v12;
  v13 = type metadata accessor for ToolChoice();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v168 = &v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for GenerativeRequestMetadata();
  v16 = *(*(v210 - 1) + 64);
  MEMORY[0x28223BE20](v210);
  v186 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for ChatMessageRole();
  v179 = *(v180 - 8);
  v18 = *(v179 + 64);
  MEMORY[0x28223BE20](v180);
  v181 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ChatMessagePrompt();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v183 = &v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CachePolicy();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v173 = &v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for UUID();
  v170 = *(v171 - 8);
  v26 = *(v170 + 64);
  MEMORY[0x28223BE20](v171);
  v169 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for SessionConfiguration();
  v197 = *(v182 - 8);
  v28 = *(v197 + 64);
  v29 = MEMORY[0x28223BE20](v182);
  v175 = &v164 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v194 = &v164 - v31;
  v32 = type metadata accessor for GenerativeAssistantUseCase();
  v195 = *(v32 - 8);
  v196 = v32;
  v33 = *(v195 + 64);
  MEMORY[0x28223BE20](v32);
  v205 = &v164 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for SessionConfiguration();
  v176 = *(v178 - 8);
  v35 = *(v176 + 64);
  v36 = MEMORY[0x28223BE20](v178);
  v174 = &v164 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v177 = &v164 - v38;
  v39 = type metadata accessor for ModelBundle();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v204 = &v164 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v164 - v45;
  MEMORY[0x28223BE20](v44);
  v215 = &v164 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v52 = &v164 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v54 = &v164 - v53;
  v55 = type metadata accessor for SamplingParameters();
  v201 = *(v55 - 8);
  v202 = v55;
  v56 = *(v201 + 64);
  v57 = MEMORY[0x28223BE20](v55);
  v172 = (&v164 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v57);
  v60 = &v164 - v59;
  v209 = v8;
  *&v8[OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_timeoutDurationInSeconds] = 60;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v190 = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("SessionCreation.Time", 20, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v191 = static SELFUtils.shared;
  SELFUtils.recordCreateSessionStarted()();
  v61 = type metadata accessor for SamplingStrategy();
  (*(*(v61 - 8) + 56))(v54, 1, 1, v61);
  if (one-time initialization token for _temperature != -1)
  {
    swift_once();
  }

  v206 = v9;
  v198 = v46;
  if (byte_27F39FA30 == 1)
  {
    v62 = unk_27F39FA20;
    v63 = static Overrides._temperature;

    v62(&v213, v63);

    v207 = v213;
    v64 = v214;
  }

  else
  {
    v207 = 0;
    v64 = 1;
  }

  LODWORD(v203) = v64;
  if (one-time initialization token for _modelMaximumTokens != -1)
  {
    swift_once();
  }

  v211 = v40;
  v212 = v39;
  if (byte_27F39F9D0 == 1)
  {
    v65 = unk_27F39F9C0;
    v66 = static Overrides._modelMaximumTokens;

    v65(&v213, v66);
  }

  if (one-time initialization token for _modelRandomSeed != -1)
  {
    swift_once();
  }

  if (byte_27F39FA00 == 1)
  {
    v67 = unk_27F39F9F0;
    v68 = static Overrides._modelRandomSeed;

    v67(&v213, v68);
  }

  outlined init with copy of Date?(v54, v52, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();
  outlined destroy of OnScreenContent.Document?(v54, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  v69 = OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters;
  v70 = v209;
  (*(v201 + 32))(&v209[OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters], v60, v202);
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  v72 = __swift_project_value_buffer(v71, static Logger.modelInteraction);

  v203 = v72;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();

  v75 = os_log_type_enabled(v73, v74);
  v76 = v211;
  v167 = v69;
  if (v75)
  {
    v77 = v211;
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v213 = v79;
    *v78 = 136315650;
    v80 = _typeName(_:qualified:)();
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v213);

    *(v78 + 4) = v82;
    *(v78 + 12) = 2080;
    *(v78 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000059, 0x800000024FE336D0, &v213);
    *(v78 + 22) = 2080;
    (*(v201 + 16))(v172, &v70[v69], v202);
    v83 = String.init<A>(describing:)();
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v213);

    *(v78 + 24) = v85;
    _os_log_impl(&dword_24FD67000, v73, v74, "%s.%s Using sampling parameters: %s", v78, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v79, -1, -1);
    v86 = v78;
    v76 = v77;
    MEMORY[0x253057F40](v86, -1, -1);
  }

  v87 = v212;
  v88 = v198;
  v89 = v208;
  v90 = v208 + v210[9];
  v166 = OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_siriLocale;
  outlined init with copy of Date?(v90, &v70[OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_siriLocale], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  type metadata accessor for GenerativeAssistantSettingsProvider();
  static GenerativeAssistantSettingsProvider.shared.getter();
  v91 = v215;
  dispatch thunk of GenerativeAssistantSettingsProvider.modelBundle()();

  v207 = *(v76 + 16);
  v207(v88, v91, v87);
  v92 = v76;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = v92;
    v172 = swift_slowAlloc();
    v213 = v172;
    *v95 = 136315650;
    v97 = _typeName(_:qualified:)();
    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, &v213);

    *(v95 + 4) = v99;
    *(v95 + 12) = 2080;
    *(v95 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000059, 0x800000024FE336D0, &v213);
    *(v95 + 22) = 2080;
    v100 = URL.absoluteString.getter();
    v102 = v101;
    v103 = v96;
    v70 = v209;
    v198 = *(v103 + 8);
    v198(v88, v87);
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, &v213);

    *(v95 + 24) = v104;
    _os_log_impl(&dword_24FD67000, v93, v94, "%s.%s Using model bundle: %s", v95, 0x20u);
    v105 = v172;
    swift_arrayDestroy();
    MEMORY[0x253057F40](v105, -1, -1);
    v106 = v95;
    v89 = v208;
    MEMORY[0x253057F40](v106, -1, -1);
  }

  else
  {

    v198 = *(v92 + 8);
    v198(v88, v87);
  }

  v107 = OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_modelBundle;
  v207(&v70[OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_modelBundle], v215, v87);
  v108 = (v89 + v210[13]);
  v110 = *v108;
  v109 = v108[1];
  if (v109)
  {
    type metadata accessor for GenerativeExperiencesSession();
    specialized static DefaultModelSession.getTools(tooling:enableBrowserTool:)(v200, v193 & 1);
    v111 = static GenerativeExperiencesSession.retrieveSession(with:reattaching:)();

    if (v111)
    {

      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v172 = v110;
        v116 = v115;
        v213 = v115;
        *v114 = 136315650;
        v117 = _typeName(_:qualified:)();
        v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, &v213);

        *(v114 + 4) = v119;
        v70 = v209;
        *(v114 + 12) = 2080;
        *(v114 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000059, 0x800000024FE336D0, &v213);
        *(v114 + 22) = 2080;
        v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v109, &v213);

        *(v114 + 24) = v120;
        _os_log_impl(&dword_24FD67000, v112, v113, "%s.%s Using existing session, id: %s", v114, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v116, -1, -1);
        MEMORY[0x253057F40](v114, -1, -1);
      }

      else
      {
      }

      v157 = v212;
      v158 = v198;
LABEL_41:
      *(v70 + 2) = v111;
      v159 = type metadata accessor for OSSignpostID();
      v160 = v187;
      (*(*(v159 - 8) + 56))(v187, 1, 1, v159);
      MetricsUtils.recordSignpostEnd(for:signPostID:)("SessionCreation.Time", 20, 2, v160);
      outlined destroy of OnScreenContent.Document?(v160, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
      SELFUtils.recordCreateSessionEnded()();
      v158(v215, v157);
      outlined destroy of UploadableDocumentData(v89, type metadata accessor for GenerativeRequestMetadata);
      v161 = OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_featureFlagManager;
      v162 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
      (*(*(v162 - 8) + 32))(&v70[v161], v192, v162);
      return v70;
    }
  }

  v165 = v107;
  (*(v195 + 16))(v205, v89 + v210[8], v196);
  v207(v204, v215, v212);
  v172 = v110;
  if (!v109)
  {
    v121 = v169;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v170 + 8))(v121, v171);
  }

  swift_bridgeObjectRetain_n();
  GenerativeAssistantUseCase.rawValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMR);
  v122 = *(v211 + 72);
  v123 = (*(v211 + 80) + 32) & ~*(v211 + 80);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_24FE1A560;
  v207((v124 + v123), v204, v212);
  static CachePolicy.inMemory.getter();
  getProcessIdenitifierForSiri()();
  v125 = v194;
  SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:parentOfOnBehalfOf:)();
  v126 = v182;
  (*(v197 + 16))(v175, v125, v182);
  v127 = (*(v179 + 104))(v181, *MEMORY[0x277D42E48], v180);
  MEMORY[0x28223BE20](v127);
  v128 = v206;
  ChatMessagePrompt.init(role:prompt:)();
  v206 = v128;

  if (!v109)
  {
    v130 = v169;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v170 + 8))(v130, v171);
  }

  v129 = v174;
  SessionConfiguration.init(tokenGeneratorConfig:identifier:instructions:templateID:)();
  v89 = v208;
  v131 = v186;
  (*(v197 + 8))(v194, v126);
  v132 = v212;
  v133 = v198;
  v198(v204, v212);
  (*(v195 + 8))(v205, v196);
  (*(v176 + 32))(v177, v129, v178);
  v134 = type metadata accessor for GenerativeExperiencesSession();
  v135 = *(v134 + 48);
  v136 = *(v134 + 52);
  swift_allocObject();
  v137 = GenerativeExperiencesSession.init(configuration:)();
  if (v137)
  {
    v111 = v137;
    outlined init with copy of UploadableMedia.Source(v89, v131, type metadata accessor for GenerativeRequestMetadata);

    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v213 = v141;
      *v140 = 136315906;
      v142 = _typeName(_:qualified:)();
      v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v143, &v213);

      *(v140 + 4) = v144;
      *(v140 + 12) = 2080;
      *(v140 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000059, 0x800000024FE336D0, &v213);
      *(v140 + 22) = 2080;
      v145 = v131 + v210[8];
      v146 = GenerativeAssistantUseCase.rawValue.getter();
      v148 = v147;
      outlined destroy of UploadableDocumentData(v131, type metadata accessor for GenerativeRequestMetadata);
      v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v148, &v213);

      *(v140 + 24) = v149;
      *(v140 + 32) = 2080;
      v150 = GenerativeExperiencesSession.sessionIdentifier()();
      v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150._countAndFlagsBits, v150._object, &v213);

      *(v140 + 34) = v151;
      _os_log_impl(&dword_24FD67000, v138, v139, "%s.%s Created a new session for %s, id: %s", v140, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v141, -1, -1);
      v152 = v140;
      v89 = v208;
      MEMORY[0x253057F40](v152, -1, -1);
    }

    else
    {

      outlined destroy of UploadableDocumentData(v131, type metadata accessor for GenerativeRequestMetadata);
    }

    v158 = v198;
    specialized static DefaultModelSession.getTools(tooling:enableBrowserTool:)(v200, v193 & 1);

    GenerativeExperiencesSession.tools.setter();
    static ToolChoice.automatic.getter();
    GenerativeExperiencesSession.toolChoice.setter();
    v157 = v212;
    v70 = v209;
    goto LABEL_41;
  }

  MetricsUtils.emitSignpostEvent(_:)("Error.SessionCreation", 21, 2);
  SELFUtils.recordCreateSessionFailed(code:domain:)(0, 3);
  SELFUtils.recordCreateSessionFailed(code:domain:)(0, 3);
  SELFUtils.recordRequestFailed(code:domain:)(0, 3);
  lazy protocol witness table accessor for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError();
  swift_allocError();
  *v153 = 0;
  swift_willThrow();
  v154 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  (*(*(v154 - 8) + 8))(v192, v154);
  v133(v215, v132);
  outlined destroy of UploadableDocumentData(v89, type metadata accessor for GenerativeRequestMetadata);
  v70 = v209;
  (*(v201 + 8))(&v209[v167], v202);
  outlined destroy of OnScreenContent.Document?(&v70[v166], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v133(&v70[v165], v132);
  v155 = *(*v70 + 48);
  v156 = *(*v70 + 52);
  swift_deallocPartialClassInstance();
  return v70;
}

uint64_t closure #1 in DefaultModelSession.registerImageInLineAndGenerateResponse(userQuery:image:useCaseID:keepAliveCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v26 = a2;
  v27 = a3;
  v36 = a5;
  v31 = type metadata accessor for User();
  v28 = *(v31 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChatMessagePrompt();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ChatMessagesPrompt();
  v14 = *(v30 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v30);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = v26;
  v35 = v27;
  v18 = v29;
  User.init(_:)();
  v29 = v18;
  MEMORY[0x253056D90](v32 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_siriLocale);
  (*(v28 + 8))(v8, v31);
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v10 + 8))(v13, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v19 = *(v14 + 72);
  v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24FE1A560;
  v22 = v21 + v20;
  v23 = v30;
  (*(v14 + 16))(v22, v17, v30);
  MEMORY[0x253056D00](v21);

  return (*(v14 + 8))(v17, v23);
}

uint64_t DefaultModelSession.getModelResponse(from:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[19] = a2;
  v3[20] = v4;
  v3[18] = a1;
  v5 = type metadata accessor for ExternalPartnerAuthenticator();
  v3[21] = v5;
  v6 = *(v5 - 8);
  v3[22] = v6;
  v7 = *(v6 + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5Anvil16RateLimitBudgetsVSgMd, &_s5Anvil16RateLimitBudgetsVSgMR) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v9 = type metadata accessor for RateLimitBudgets();
  v3[25] = v9;
  v10 = *(v9 - 8);
  v3[26] = v10;
  v11 = *(v10 + 64) + 15;
  v3[27] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5Anvil28ExternalPartnerAuthenticatorVSgMd, &_s5Anvil28ExternalPartnerAuthenticatorVSgMR) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v13 = type metadata accessor for PromptCompletion.Annotation();
  v3[30] = v13;
  v14 = *(v13 - 8);
  v3[31] = v14;
  v15 = *(v14 + 64) + 15;
  v3[32] = swift_task_alloc();
  v16 = type metadata accessor for PromptCompletion.FileContent();
  v3[33] = v16;
  v17 = *(v16 - 8);
  v3[34] = v17;
  v18 = *(v17 + 64) + 15;
  v3[35] = swift_task_alloc();
  v19 = type metadata accessor for String.Encoding();
  v3[36] = v19;
  v20 = *(v19 - 8);
  v3[37] = v20;
  v21 = *(v20 + 64) + 15;
  v3[38] = swift_task_alloc();
  v22 = type metadata accessor for PromptCompletion.TextContent();
  v3[39] = v22;
  v23 = *(v22 - 8);
  v3[40] = v23;
  v24 = *(v23 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v25 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v3[44] = v25;
  v26 = *(v25 - 8);
  v3[45] = v26;
  v27 = *(v26 + 64) + 15;
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v28 = type metadata accessor for PromptCompletion.ImageContent();
  v3[49] = v28;
  v29 = *(v28 - 8);
  v3[50] = v29;
  v3[51] = *(v29 + 64);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v30 = type metadata accessor for PromptCompletion.Content();
  v3[54] = v30;
  v31 = *(v30 - 8);
  v3[55] = v31;
  v32 = *(v31 + 64) + 15;
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v33 = type metadata accessor for PromptCompletion.Segment();
  v3[58] = v33;
  v34 = *(v33 - 8);
  v3[59] = v34;
  v35 = *(v34 + 64) + 15;
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v36 = type metadata accessor for PromptCompletion.Candidate();
  v3[62] = v36;
  v37 = *(v36 - 8);
  v3[63] = v37;
  v38 = *(v37 + 64) + 15;
  v3[64] = swift_task_alloc();
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[67] = static MainActor.shared.getter();
  v41 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DefaultModelSession.getModelResponse(from:), v41, v40);
}

uint64_t DefaultModelSession.getModelResponse(from:)()
{
  v308 = v0;
  v2 = *(v0 + 528);
  v3 = *(v0 + 152);
  v303 = MEMORY[0x277D84F90];
  v4 = type metadata accessor for URL();
  v237 = *(*(v4 - 8) + 56);
  v238 = v4;
  v237(v2, 1, 1);
  v5 = PromptCompletion.candidates.getter();
  v243 = *(v5 + 16);
  if (!v243)
  {

    v257 = 0xE000000000000000;
    v245 = 2;
    v246 = 0;
    v168 = MEMORY[0x277D84F90];
    v301 = MEMORY[0x277D84F90];
    v169 = *(MEMORY[0x277D84F90] + 16);
    if (!v169)
    {
      goto LABEL_78;
    }

LABEL_65:
    v170 = 0;
    v171 = *(v302 + 248);
    v1 = (v169 - 1);
    v300 = MEMORY[0x277D84F90];
LABEL_66:
    v172 = v170;
    while (v172 < *(v168 + 16))
    {
      v173 = *(v302 + 256);
      (*(v171 + 16))(v173, v168 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v172, *(v302 + 240));
      closure #1 in DefaultModelSession.getModelResponse(from:)(v173, &v304);
      (*(v171 + 8))(*(v302 + 256), *(v302 + 240));
      v174 = v305;
      if (v305)
      {
        v295 = v306;
        v298 = v304;
        v292 = v307;
        v175 = v1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v300 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v300 + 2) + 1, 1, v300);
        }

        v176 = v298;
        v178 = *(v300 + 2);
        v177 = *(v300 + 3);
        v179 = v292;
        v180 = v295;
        if (v178 >= v177 >> 1)
        {
          v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v177 > 1), v178 + 1, 1, v300);
          v179 = v292;
          v180 = v295;
          v300 = v182;
          v176 = v298;
        }

        v170 = (v172 + 1);
        *(v300 + 2) = v178 + 1;
        v181 = &v300[32 * v178];
        *(v181 + 4) = v176;
        *(v181 + 5) = v174;
        *(v181 + 6) = v180;
        *(v181 + 7) = v179;
        v1 = v175;
        if (v175 != v172)
        {
          goto LABEL_66;
        }

        goto LABEL_79;
      }

      v172 = (v172 + 1);
      outlined consume of Attribution?(v304, 0);
      if (v169 == v172)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_116;
  }

  v246 = 0;
  v6 = 0;
  v7 = *(v302 + 504);
  v241 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v8 = *(v302 + 440);
  v294 = *(v302 + 472);
  v287 = (v8 + 88);
  v289 = (v294 + 8);
  v250 = (v8 + 8);
  v9 = *(v302 + 272);
  v10 = (v8 + 96);
  v249 = (v9 + 32);
  v11 = *(v302 + 400);
  v248 = (v9 + 8);
  v272 = (v11 + 32);
  v274 = v10;
  v12 = *(v302 + 320);
  v254 = v11;
  v253 = (v11 + 8);
  v270 = (v12 + 32);
  v278 = (v12 + 16);
  v285 = *MEMORY[0x277D71C10];
  v283 = (v12 + 8);
  v268 = (*(v302 + 296) + 8);
  v242 = v7;
  v239 = (v7 + 8);
  v301 = MEMORY[0x277D84F90];
  v266 = *MEMORY[0x277D71C20];
  v257 = 0xE000000000000000;
  v245 = 2;
  v252 = *MEMORY[0x277D71C08];
  v251 = *(v302 + 384);
  v244 = *(v302 + 376);
  v264 = *(v302 + 360);
  v240 = v5;
  do
  {
    if (v6 >= *(v5 + 16))
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      swift_once();
      goto LABEL_85;
    }

    v247 = v6;
    (*(v242 + 16))(*(v302 + 512), v241 + *(v242 + 72) * v6, *(v302 + 496));
    v15 = PromptCompletion.Candidate.segments.getter();
    v1 = v15;
    v297 = *(v15 + 16);
    if (v297)
    {
      v16 = 0;
      v291 = v15 + ((*(v294 + 80) + 32) & ~*(v294 + 80));
      v276 = v15;
      do
      {
        if (v16 >= v1[2])
        {
          __break(1u);
LABEL_107:
          v217 = *(v302 + 200);
          v218 = *(v302 + 208);
          v219 = *(v302 + 184);
          v220 = *(v302 + 192);
          v221 = *(v302 + 168);
          v222 = *(v302 + 176);
          (*(v222 + 16))(v219, *(v302 + 232), v221);
          ExternalPartnerAuthenticator.lastRateLimitBudgets.getter();
          (*(v222 + 8))(v219, v221);
          if ((*(v218 + 48))(v220, 1, v217) == 1)
          {
            goto LABEL_108;
          }

          v235 = *(v302 + 208);
          v234 = *(v302 + 216);
          v236 = *(v302 + 200);
          (*(v235 + 32))(v234, *(v302 + 192), v236);
          v216 = RateLimitBudgets.isRateLimited.getter();
          (*(v235 + 8))(v234, v236);
          goto LABEL_109;
        }

        v17 = *(v302 + 456);
        v18 = *(v302 + 432);
        v19 = *(v294 + 16);
        v19(*(v302 + 488), v291 + *(v294 + 72) * v16, *(v302 + 464));
        PromptCompletion.Segment.content.getter();
        v20 = (*v287)(v17, v18);
        if (v20 == v285)
        {
          v21 = *(v302 + 456);
          v22 = *(v302 + 344);
          v23 = *(v302 + 312);
          (*v274)(v21, *(v302 + 432));
          (*v270)(v22, v21, v23);
          if (one-time initialization token for modelInteraction != -1)
          {
            swift_once();
          }

          v24 = *(v302 + 336);
          v25 = *(v302 + 344);
          v26 = *(v302 + 312);
          v27 = type metadata accessor for Logger();
          __swift_project_value_buffer(v27, static Logger.modelInteraction);
          v28 = *v278;
          (*v278)(v24, v25, v26);
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.info.getter();
          v31 = os_log_type_enabled(v29, v30);
          v32 = *(v302 + 336);
          v33 = *(v302 + 312);
          v300 = v16;
          if (v31)
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v304 = v35;
            *v34 = 136315138;
            v36 = PromptCompletion.TextContent.value.getter();
            v38 = v37;
            v281 = *v283;
            (*v283)(v32, v33);
            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v304);

            *(v34 + 4) = v39;
            _os_log_impl(&dword_24FD67000, v29, v30, "Text content: %s", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v35);
            MEMORY[0x253057F40](v35, -1, -1);
            MEMORY[0x253057F40](v34, -1, -1);
          }

          else
          {

            v281 = *v283;
            (*v283)(v32, v33);
          }

          v66 = *(v302 + 344);
          v67 = *(v302 + 304);
          v68 = *(v302 + 288);
          PromptCompletion.TextContent.value.getter();
          static String.Encoding.utf8.getter();
          v69 = String.data(using:allowLossyConversion:)();
          v71 = v70;

          (*v268)(v67, v68);
          if (v71 >> 60 == 15)
          {
            v28(*(v302 + 328), *(v302 + 344), *(v302 + 312));
            v75 = Logger.logObject.getter();
            v76 = static os_log_type_t.error.getter();
            v77 = os_log_type_enabled(v75, v76);
            v78 = *(v302 + 488);
            v79 = *(v302 + 464);
            v80 = *(v302 + 344);
            v81 = *(v302 + 328);
            v82 = *(v302 + 312);
            if (v77)
            {
              v261 = *(v302 + 488);
              v83 = *(v302 + 160);
              v259 = *(v302 + 344);
              v84 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v304 = v85;
              *v84 = 136315650;
              v86 = _typeName(_:qualified:)();
              v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, &v304);

              *(v84 + 4) = v88;
              *(v84 + 12) = 2080;
              *(v84 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE33680, &v304);
              *(v84 + 22) = 2080;
              v89 = PromptCompletion.TextContent.value.getter();
              v91 = v90;
              v281(v81, v82);
              v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, &v304);

              *(v84 + 24) = v92;
              _os_log_impl(&dword_24FD67000, v75, v76, "%s.%s Failed to decode into JSON: %s", v84, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x253057F40](v85, -1, -1);
              MEMORY[0x253057F40](v84, -1, -1);

              v281(v259, v82);
              (*v289)(v261, v79);
            }

            else
            {

              v281(v81, v82);
              v281(v80, v82);
              (*v289)(v78, v79);
            }
          }

          else
          {
            v72 = type metadata accessor for JSONDecoder();
            v73 = *(v72 + 48);
            v74 = *(v72 + 52);
            swift_allocObject();
            JSONDecoder.init()();
            lazy protocol witness table accessor for type ModelResponseText and conformance ModelResponseText();
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            v137 = *(v302 + 376);
            v138 = *(v302 + 352);

            v140 = *(v302 + 16);
            v139 = *(v302 + 24);
            v141 = *(v302 + 40);
            v245 = *(v302 + 48);
            v246 = *(v302 + 32);
            MEMORY[0x253056FE0](v140, v139);
            *v137 = v140;
            *(v244 + 8) = v139;
            swift_storeEnumTagMultiPayload();
            v257 = v141;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v301 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v301[2] + 1, 1, v301);
            }

            v144 = v301[2];
            v143 = v301[3];
            if (v144 >= v143 >> 1)
            {
              v301 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v143 > 1, v144 + 1, 1, v301);
            }

            v145 = *(v302 + 488);
            v146 = *(v302 + 464);
            v147 = *(v302 + 376);
            v148 = *(v302 + 344);
            v149 = *(v302 + 312);

            v301[2] = v144 + 1;
            outlined init with take of ModelResponse(v147, v301 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v144, type metadata accessor for GeneratedResponse.RichContentEntity);
            v150 = PromptCompletion.TextContent.annotations.getter();
            specialized Array.append<A>(contentsOf:)(v150, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277D71BF0]);
            outlined consume of Data?(v69, v71);
            v281(v148, v149);
            (*v289)(v145, v146);
          }

          v1 = v276;
          v16 = v300;
        }

        else
        {
          if (v20 == v266)
          {
            v40 = *(v302 + 456);
            v41 = *(v302 + 424);
            v42 = *(v302 + 392);
            (*v274)(v40, *(v302 + 432));
            v43 = *v272;
            (*v272)(v41, v40, v42);
            if (one-time initialization token for modelInteraction != -1)
            {
              swift_once();
            }

            v44 = v16;
            v45 = type metadata accessor for Logger();
            __swift_project_value_buffer(v45, static Logger.modelInteraction);
            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              *v48 = 0;
              _os_log_impl(&dword_24FD67000, v46, v47, "[Generated image] Generated image response received. Wait for further logs to see if the image data is loaded successfully.", v48, 2u);
              MEMORY[0x253057F40](v48, -1, -1);
            }

            v50 = *(v302 + 416);
            v49 = *(v302 + 424);
            v51 = *(v302 + 408);
            v53 = *(v302 + 384);
            v52 = *(v302 + 392);
            v54 = *(v302 + 352);

            (*(v254 + 16))(v50, v49, v52);
            v55 = (*(v254 + 80) + 16) & ~*(v254 + 80);
            v56 = swift_allocObject();
            v43(v56 + v55, v50, v52);
            *v53 = &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:);
            *(v251 + 8) = v56;
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v301 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v301[2] + 1, 1, v301);
            }

            v1 = v276;
            v16 = v44;
            v58 = v301[2];
            v57 = v301[3];
            v59 = v58 + 1;
            if (v58 >= v57 >> 1)
            {
              v301 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1, v301);
            }

            v60 = *(v302 + 488);
            v61 = *(v302 + 464);
            v62 = *(v302 + 424);
            v64 = *(v302 + 384);
            v63 = *(v302 + 392);
            v65 = v253;
          }

          else
          {
            if (v20 != v252)
            {
              if (one-time initialization token for modelInteraction != -1)
              {
                swift_once();
              }

              v115 = *(v302 + 480);
              v116 = *(v302 + 488);
              v117 = *(v302 + 464);
              v118 = type metadata accessor for Logger();
              __swift_project_value_buffer(v118, static Logger.modelInteraction);
              v19(v115, v116, v117);
              v119 = Logger.logObject.getter();
              v120 = static os_log_type_t.error.getter();
              v121 = os_log_type_enabled(v119, v120);
              v122 = *(v302 + 480);
              v123 = *(v302 + 488);
              v124 = *(v302 + 464);
              if (v121)
              {
                v125 = *(v302 + 448);
                v262 = *(v302 + 432);
                v300 = v16;
                v126 = *(v302 + 160);
                v127 = swift_slowAlloc();
                v128 = swift_slowAlloc();
                v304 = v128;
                *v127 = 136315650;
                v129 = _typeName(_:qualified:)();
                v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, &v304);

                *(v127 + 4) = v131;
                *(v127 + 12) = 2080;
                *(v127 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE33680, &v304);
                *(v127 + 22) = 2080;
                PromptCompletion.Segment.content.getter();
                v132 = String.init<A>(describing:)();
                v134 = v133;
                v135 = *v289;
                (*v289)(v122, v124);
                v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, &v304);
                v16 = v300;

                *(v127 + 24) = v136;
                _os_log_impl(&dword_24FD67000, v119, v120, "%s.%s Unhandled segment content type: %s", v127, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x253057F40](v128, -1, -1);
                MEMORY[0x253057F40](v127, -1, -1);

                v135(v123, v124);
              }

              else
              {

                v151 = *v289;
                (*v289)(v122, v124);
                v151(v123, v124);
              }

              (*v250)(*(v302 + 456), *(v302 + 432));
              v1 = v276;
              goto LABEL_10;
            }

            v93 = *(v302 + 456);
            v94 = *(v302 + 280);
            v95 = *(v302 + 264);
            (*v274)(v93, *(v302 + 432));
            (*v249)(v94, v93, v95);
            if (one-time initialization token for modelInteraction != -1)
            {
              swift_once();
            }

            v96 = v16;
            v97 = type metadata accessor for Logger();
            __swift_project_value_buffer(v97, static Logger.modelInteraction);
            v98 = Logger.logObject.getter();
            v99 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              *v100 = 0;
              _os_log_impl(&dword_24FD67000, v98, v99, "[Generated File] Generated file response received", v100, 2u);
              MEMORY[0x253057F40](v100, -1, -1);
            }

            v101 = *(v302 + 368);
            v102 = *(v302 + 352);
            v103 = *(v302 + 280);

            PromptCompletion.FileContent.url.getter();
            v104 = PromptCompletion.FileContent.name.getter();
            v106 = v105;
            v107 = PromptCompletion.FileContent.mimeType.getter();
            v109 = v108;
            v110 = PromptCompletion.FileContent.size.getter();
            v111 = type metadata accessor for GeneratedFileContent(0);
            v112 = (v101 + v111[5]);
            *v112 = v104;
            v112[1] = v106;
            v113 = (v101 + v111[6]);
            *v113 = v107;
            v113[1] = v109;
            *(v101 + v111[7]) = v110;
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v301 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v301[2] + 1, 1, v301);
            }

            v16 = v96;
            v58 = v301[2];
            v114 = v301[3];
            v59 = v58 + 1;
            if (v58 >= v114 >> 1)
            {
              v301 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v114 > 1, v58 + 1, 1, v301);
            }

            v60 = *(v302 + 488);
            v61 = *(v302 + 464);
            v64 = *(v302 + 368);
            v62 = *(v302 + 280);
            v63 = *(v302 + 264);
            v65 = v248;
          }

          (*v65)(v62, v63);
          (*v289)(v60, v61);
          v301[2] = v59;
          outlined init with take of ModelResponse(v64, v301 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v58, type metadata accessor for GeneratedResponse.RichContentEntity);
        }

LABEL_10:
        ++v16;
      }

      while (v297 != v16);
    }

    v152 = *(v302 + 512);

    v153 = PromptCompletion.Candidate.metadata.getter();
    if (*(v153 + 16) && (v154 = specialized __RawDictionaryStorage.find<A>(_:)(0x61756E69746E6F43, 0xEF4C52556E6F6974), (v155 & 1) != 0))
    {
      outlined init with copy of Any(*(v153 + 56) + 32 * v154, v302 + 56);

      if (swift_dynamicCast())
      {
        v156 = *(v302 + 528);
        v157 = *(v302 + 520);
        v159 = *(v302 + 120);
        v158 = *(v302 + 128);
        URL.init(string:)();
        outlined destroy of OnScreenContent.Document?(v156, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined init with take of URL?(v157, v156);
        if (one-time initialization token for modelInteraction != -1)
        {
          swift_once();
        }

        v160 = type metadata accessor for Logger();
        __swift_project_value_buffer(v160, static Logger.modelInteraction);

        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.info.getter();

        v163 = os_log_type_enabled(v161, v162);
        v164 = *(v302 + 512);
        v165 = *(v302 + 496);
        if (v163)
        {
          v166 = swift_slowAlloc();
          v1 = swift_slowAlloc();
          v304 = v1;
          *v166 = 136315138;
          v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v158, &v304);

          *(v166 + 4) = v167;
          _os_log_impl(&dword_24FD67000, v161, v162, "Received punch out url %s", v166, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v1);
          MEMORY[0x253057F40](v1, -1, -1);
          MEMORY[0x253057F40](v166, -1, -1);
        }

        else
        {
        }

        (*v239)(v164, v165);
      }

      else
      {
        (*v239)(*(v302 + 512), *(v302 + 496));
      }
    }

    else
    {
      v13 = *(v302 + 512);
      v14 = *(v302 + 496);

      (*v239)(v13, v14);
    }

    v6 = v247 + 1;
    v5 = v240;
  }

  while (v247 + 1 != v243);

  v168 = v303;
  v169 = *(v303 + 16);
  if (v169)
  {
    goto LABEL_65;
  }

LABEL_78:
  v300 = MEMORY[0x277D84F90];
LABEL_79:
  v183 = *(v302 + 536);
  v184 = *(v302 + 152);

  v185 = PromptCompletion.metadata.getter();
  if (!*(v185 + 16) || (v186 = specialized __RawDictionaryStorage.find<A>(_:)(0x73656369746F4ELL, 0xE700000000000000), (v187 & 1) == 0))
  {

LABEL_91:
    v188 = MEMORY[0x277D84F90];
    v189 = *(MEMORY[0x277D84F90] + 16);
    if (!v189)
    {
      goto LABEL_83;
    }

    goto LABEL_92;
  }

  outlined init with copy of Any(*(v185 + 56) + 32 * v186, v302 + 88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_91;
  }

  v188 = *(v302 + 136);
  v189 = *(v188 + 16);
  if (v189)
  {
LABEL_92:
    v203 = 0;
    v1 = MEMORY[0x277D84F90];
LABEL_93:
    v204 = v203;
    while (v204 < *(v188 + 16))
    {
      v205 = *(v188 + 32 + 8 * v204);
      if (*(v205 + 16))
      {
        v206 = *(v188 + 32 + 8 * v204);

        v207 = specialized __RawDictionaryStorage.find<A>(_:)(0x6567617373656DLL, 0xE700000000000000);
        if (v208)
        {
          v209 = (*(v205 + 56) + 16 * v207);
          v210 = v209[1];
          v299 = *v209;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
          }

          v211 = v1;
          v212 = v1[2];
          v213 = v211;
          v214 = v211[3];
          if (v212 >= v214 >> 1)
          {
            v213 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v214 > 1), v212 + 1, 1, v213);
          }

          v203 = v204 + 1;
          *(v213 + 2) = v212 + 1;
          v215 = &v213[16 * v212];
          v1 = v213;
          *(v215 + 4) = v299;
          *(v215 + 5) = v210;
          if (v189 - 1 != v204)
          {
            goto LABEL_93;
          }

          goto LABEL_84;
        }
      }

      if (v189 == ++v204)
      {
        goto LABEL_84;
      }
    }

    goto LABEL_115;
  }

LABEL_83:
  v1 = MEMORY[0x277D84F90];
LABEL_84:

  if (one-time initialization token for modelInteraction != -1)
  {
    goto LABEL_117;
  }

LABEL_85:
  v190 = type metadata accessor for Logger();
  __swift_project_value_buffer(v190, static Logger.modelInteraction);

  v191 = Logger.logObject.getter();
  v192 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v304 = v194;
    *v193 = 136315138;
    v195 = MEMORY[0x2530570A0](v1, MEMORY[0x277D837D0]);
    v197 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v195, v196, &v304);

    *(v193 + 4) = v197;
    _os_log_impl(&dword_24FD67000, v191, v192, "Received notice(s) %s", v193, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v194);
    MEMORY[0x253057F40](v194, -1, -1);
    MEMORY[0x253057F40](v193, -1, -1);
  }

  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  v198 = MEMORY[0x253056470]();
  v297 = v1;
  if (v198 == 2)
  {
    v200 = *(v302 + 224);
    v199 = *(v302 + 232);
    v201 = *(v302 + 168);
    v202 = *(v302 + 176);
    (*(v202 + 56))(v199, 1, 1, v201);
    type metadata accessor for GenerativeAssistantProvider();
    static GenerativeAssistantProvider.shared.getter();
    dispatch thunk of GenerativeAssistantProvider.authenticator()();

    outlined assign with take of ExternalPartnerAuthenticator?(v200, v199);
    if (!(*(v202 + 48))(v199, 1, v201))
    {
      goto LABEL_107;
    }

    (*(*(v302 + 208) + 56))(*(v302 + 192), 1, 1, *(v302 + 200));
LABEL_108:
    outlined destroy of OnScreenContent.Document?(*(v302 + 192), &_s5Anvil16RateLimitBudgetsVSgMd, &_s5Anvil16RateLimitBudgetsVSgMR);
    v216 = 0;
LABEL_109:
    outlined destroy of OnScreenContent.Document?(*(v302 + 232), &_s5Anvil28ExternalPartnerAuthenticatorVSgMd, &_s5Anvil28ExternalPartnerAuthenticatorVSgMR);
  }

  else
  {
    v216 = v198;
  }

  v223 = *(v302 + 528);
  v224 = *(v302 + 520);
  v255 = *(v302 + 512);
  v256 = *(v302 + 488);
  v258 = *(v302 + 480);
  v260 = *(v302 + 456);
  v263 = *(v302 + 448);
  v265 = *(v302 + 424);
  v267 = *(v302 + 416);
  v269 = *(v302 + 384);
  v271 = *(v302 + 376);
  v273 = *(v302 + 368);
  v275 = *(v302 + 344);
  v277 = *(v302 + 336);
  v279 = *(v302 + 328);
  v280 = *(v302 + 304);
  v282 = *(v302 + 280);
  v284 = *(v302 + 256);
  v286 = *(v302 + 232);
  v288 = *(v302 + 224);
  v290 = *(v302 + 216);
  v293 = *(v302 + 192);
  v296 = *(v302 + 184);
  v225 = *(v302 + 144);
  outlined init with copy of Date?(v223, v224, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v226 = type metadata accessor for ModelResponse();
  v227 = v226[8];
  (v237)(v225 + v227, 1, 1, v238);
  v228 = v226[9];
  *v225 = v301;
  *(v225 + 8) = v246;
  *(v225 + 16) = v257;
  outlined assign with copy of URL?(v224, v225 + v227);
  *(v225 + v228) = v297;
  *(v225 + 32) = v300;
  v229 = (v225 + v226[14]);
  *v229 = 0;
  v229[1] = 0xE000000000000000;
  *(v225 + v226[10]) = v216 & 1;
  *(v225 + v226[11]) = 0;
  v230 = (v225 + v226[12]);
  *v230 = 0;
  v230[1] = 0xE000000000000000;
  outlined destroy of OnScreenContent.Document?(v224, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of OnScreenContent.Document?(v223, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v231 = (v225 + v226[13]);
  *v231 = 0;
  v231[1] = 0xE000000000000000;
  *(v225 + 24) = v245;

  v232 = *(v302 + 8);

  return v232();
}