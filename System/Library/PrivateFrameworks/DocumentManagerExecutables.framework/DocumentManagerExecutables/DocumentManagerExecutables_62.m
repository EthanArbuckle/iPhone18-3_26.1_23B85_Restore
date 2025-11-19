unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v4, &v11, &_sSo21NSAttributedStringKeya_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void specialized static DOCFastLabel.TextDrawInformation.lineMetrics(for:font:leadingAttachmentOffset:trailingAttachmentOffset:layoutDirection:scale:)(unint64_t a1, CTFontRef font, double a3, double a4)
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  CTFontGetAscent(font);
  CTFontGetDescent(font);
  Leading = CTFontGetLeading(font);
  if (!v10)
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_15:
    v15 = MEMORY[0x277D84F90];
    v19 = *(MEMORY[0x277D84F90] + 16);
    if (!v19)
    {
      UICeilToScale();
LABEL_48:

      return;
    }

LABEL_16:
    v20 = (v11 - 1);
    if (__OFSUB__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      v21 = a4;
      if (v11 != 1)
      {
        a4 = 0.0;
      }

      v22 = *(v15 + 4) + a3 + a4;
      if (v22 < 0.0)
      {
        v22 = 0.0;
      }

      v23 = v19 - 1;
      if (v19 != 1)
      {
        v24 = v11 - 2;
        v25 = (v15 + 40);
        do
        {
          v26 = *v25++;
          v27 = v26;
          if (v24)
          {
            v28 = 0.0;
          }

          else
          {
            v28 = v21;
          }

          v29 = v27 + 0.0 + v28;
          if (v22 <= v29)
          {
            v22 = v29;
          }

          --v24;
          --v23;
        }

        while (v23);
      }

      UICeilToScale();
      UIRectIntegralWithScale();
      a3 = v30;
      Leading = v31;
      TypographicBounds = v32;
      TrailingWhitespaceWidth = v33;
      v20 = MEMORY[0x277D84F90];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_30;
      }
    }

    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
LABEL_30:
    v35 = *(v20 + 2);
    v34 = *(v20 + 3);
    if (v35 >= v34 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v20);
    }

    *(v20 + 2) = v35 + 1;
    v36 = &v20[32 * v35];
    v36[4] = a3;
    v36[5] = Leading;
    v36[6] = TypographicBounds;
    v36[7] = TrailingWhitespaceWidth;
    v37 = v19 - 1;
    if (v37)
    {
      v38 = v11 - 2;
      v39 = 40;
      do
      {
        UIRectIntegralWithScale();
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
        }

        v49 = *(v20 + 2);
        v48 = *(v20 + 3);
        if (v49 >= v48 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v20);
        }

        *(v20 + 2) = v49 + 1;
        v50 = &v20[32 * v49];
        *(v50 + 4) = v41;
        *(v50 + 5) = v43;
        *(v50 + 6) = v45;
        *(v50 + 7) = v47;
        --v38;
        v39 += 8;
        --v37;
      }

      while (v37);
    }

    goto LABEL_48;
  }

  v13 = __CocoaSet.count.getter();
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (v13 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = 0;
      v15 = MEMORY[0x277D84F90];
      do
      {
        v16 = MEMORY[0x24C1FC540](v14, a1);
        TypographicBounds = CTLineGetTypographicBounds(v16, 0, 0, 0);
        TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
        }

        v18 = *(v15 + 2);
        v17 = *(v15 + 3);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
        }

        ++v14;
        swift_unknownObjectRelease();
        *(v15 + 2) = v19;
        *&v15[8 * v18 + 32] = TypographicBounds - TrailingWhitespaceWidth;
      }

      while (v13 != v14);
    }

    else
    {
      v51 = (a1 + 32);
      v15 = MEMORY[0x277D84F90];
      do
      {
        v52 = *v51;
        TypographicBounds = CTLineGetTypographicBounds(v52, 0, 0, 0);
        TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(v52);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
        }

        v54 = *(v15 + 2);
        v53 = *(v15 + 3);
        v19 = v54 + 1;
        if (v54 >= v53 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v15);
        }

        *(v15 + 2) = v19;
        *&v15[8 * v54 + 32] = TypographicBounds - TrailingWhitespaceWidth;
        ++v51;
        --v13;
      }

      while (v13);
    }

    goto LABEL_16;
  }

  __break(1u);
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables10FormattersO_AC10DateResultVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables10FormattersOAC10DateResultVGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v7;
  v13 = (a1 + 104);
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + v11) = v4;
    v14 = v3[7] + 32 * v11;
    *v14 = v5;
    *(v14 + 8) = v6;
    *(v14 + 16) = v8;
    *(v14 + 24) = result;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 5;
    v4 = *(v13 - 32);
    v5 = *(v13 - 24);
    v6 = *(v13 - 2);
    v8 = *(v13 - 1);
    v19 = *v13;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables10ColumnTypeO_AC10FormattersOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables10ColumnTypeOAC10FormattersOGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      outlined copy of ColumnType(v5, v6);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21UIContentSizeCategorya_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21UIContentSizeCategorya12CoreGraphics7CGFloatVGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables24DOCFileOperationProgressCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = a1 + 32;

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v8, v17, a4);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if (v10)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v7[6] + 40 * result;
      v12 = v17[0];
      v13 = v17[1];
      *(v11 + 32) = v18;
      *v11 = v12;
      *(v11 + 16) = v13;
      *(v7[7] + 8 * result) = v19;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      v8 += 48;
      if (!--v4)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15DOCHashableNodeC_10Foundation3URLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCHashableNodeC_10Foundation3URLVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables15DOCHashableNodeC10Foundation3URLVGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s26DocumentManagerExecutables15DOCHashableNodeC_10Foundation3URLVtMd);
      v12 = *v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for URL();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_So7DOCNode_pTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7DOCNode_ptMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation3URLVSo7DOCNode_pGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s10Foundation3URLV_So7DOCNode_ptMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for URL();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      outlined copy of Data._Representation(v7, v8);
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
      *v12 = v7;
      v12[1] = v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables20DOCCollectionSectionV_SayAC21DOCItemCollectionCellCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables20DOCCollectionSectionVSayAC21DOCItemCollectionCellCGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 1);
      v8 = *i;
      *&v17 = *(i - 5);
      *(&v17 + 1) = v5;
      *&v18 = v6;
      *(&v18 + 1) = v7;
      v19 = v9;

      result = specialized __RawDictionaryStorage.find<A>(_:)(&v17);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 40 * result;
      v13 = v18;
      *v12 = v17;
      *(v12 + 16) = v13;
      *(v12 + 32) = v19;
      *(v3[7] + 8 * result) = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables31DOCItemCollectionViewControllerC26RestorableSettingsCacheKeyO_AC0jK033_45098A9DF3FF02797EF1E06F74668D65LLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC26RestorableSettingsCacheKeyO_AA0hI033_45098A9DF3FF02797EF1E06F74668D65LLVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables31DOCItemCollectionViewControllerC26RestorableSettingsCacheKeyOAC0jK033_45098A9DF3FF02797EF1E06F74668D65LLVGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC26RestorableSettingsCacheKeyO_AA0hI033_45098A9DF3FF02797EF1E06F74668D65LLVtMd);
      v12 = *v6;
      v13 = v6[8];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v8[6] + 16 * result;
      *v17 = v12;
      *(v17 + 8) = v13;
      v18 = v8[7];
      v19 = type metadata accessor for RestorableSettings(0);
      result = outlined init with take of DOCFastLabel.LabelInformation(&v6[v9], v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for RestorableSettings);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables32DOCItemCollectionCellContentPoolC0jK7PromiseOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableV26DocumentManagerExecutables32DOCItemCollectionCellContentPoolC0jK7PromiseOGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v4, v15, &_ss11AnyHashableV_26DocumentManagerExecutables32DOCItemCollectionCellContentPoolC0hI7PromiseOtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = v3[7] + 24 * result;
      v11 = v18;
      *v10 = v17;
      *(v10 + 16) = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 64;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_So7DOCNode_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVSo7DOCNode_pGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v4, v13, &_ss11AnyHashableV_So7DOCNode_ptMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      outlined copy of DOCItemFileTypeGroupCategory(v7, v8);
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
      *v12 = v7;
      v12[1] = v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOSSGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      outlined copy of DOCItemFileTypeGroupCategory(v5, v6);

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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOSaySSGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      outlined copy of DOCItemFileTypeGroupCategory(v5, v6);

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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables24DOCItemDateGroupCategoryO_AC20DOCCollectionSectionVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables24DOCItemDateGroupCategoryOAC20DOCCollectionSectionVGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = a1 + 48; ; i += 64)
    {
      v20 = v1;
      v5 = *(i - 16);
      v6 = *(i - 8);
      v7 = *i;
      v9 = *(i + 8);
      v8 = *(i + 16);
      v10 = *(i + 24);
      v11 = *(i + 32);
      v12 = *(i + 40);
      outlined copy of DOCItemDateGroupCategory(v5, v6, *i);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v3[6] + 24 * result;
      *v15 = v5;
      *(v15 + 8) = v6;
      *(v15 + 16) = v7;
      v16 = (v3[7] + 40 * result);
      *v16 = v9;
      v16[1] = v8;
      v16[2] = v10;
      v16[3] = v11;
      v16[4] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables24DOCItemDateGroupCategoryO_10Foundation0G0VTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO_10Foundation0E0VtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables24DOCItemDateGroupCategoryO10Foundation0G0VGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v24 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v9, v6, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO_10Foundation0E0VtMd);
      v11 = *v6;
      v12 = *(v6 + 1);
      v13 = v6[16];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v12, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v8[6] + 24 * result;
      *v17 = v11;
      *(v17 + 8) = v12;
      *(v17 + 16) = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Date();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, &v6[v24], v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v9 += v10;
      if (!--v7)
      {

        return v8;
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables24DOCItemSizeGroupCategoryO_AC20DOCCollectionSectionVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables24DOCItemSizeGroupCategoryOAC20DOCCollectionSectionVGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = *(a1 + 72);
  v25 = *(a1 + 80);
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5, v6);
  v11 = v25;
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = v10;
  result = v7;
  v15 = (a1 + 144);
  while (1)
  {
    *(v3 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v16 = v3[6] + 24 * v13;
    *v16 = v4;
    *(v16 + 8) = v5;
    *(v16 + 16) = v6;
    v17 = v3[7] + 40 * v13;
    *v17 = v8;
    *(v17 + 8) = result;
    *(v17 + 16) = v9;
    *(v17 + 24) = v11;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = v15 + 4;
    v4 = *(v15 - 6);
    v5 = *(v15 - 5);
    v6 = *(v15 - 32);
    v8 = *(v15 - 3);
    v22 = *(v15 - 2);
    v9 = *(v15 - 1);
    v24 = *v15;

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5, v6);
    v15 = v21;
    result = v22;
    v11 = v24;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables24DOCItemSizeGroupCategoryO_s5Int64VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables24DOCItemSizeGroupCategoryOs5Int64VGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_AC20DOCCollectionSectionVTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 7)
    {
      v9 = *(i - 6);
      v10 = *(i - 5);
      v11 = *(i - 4);
      v12 = *(i - 3);
      v14 = *(i - 2);
      v13 = *(i - 1);
      v15 = *i;
      a4(v9, v10);

      result = a5(v9, v10);
      if (v17)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v7[6] + 16 * result);
      *v18 = v9;
      v18[1] = v10;
      v19 = (v7[7] + 40 * result);
      *v19 = v11;
      v19[1] = v12;
      v19[2] = v14;
      v19[3] = v13;
      v19[4] = v15;
      v20 = v7[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v7[2] = v22;
      if (!--v5)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemSharedByGroupCategoryO_So7DOCNode_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables28DOCItemSharedByGroupCategoryOSo7DOCNode_pGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      outlined copy of DOCItemSharedByGroupCategory(v5, v6);
      swift_unknownObjectRetain();
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaSo0C6WeightaGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_26DocumentManagerExecutables21DOCItemCollectionCellCmTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS26DocumentManagerExecutables21DOCItemCollectionCellCmGMd);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables21DOCGoToRecentLocationC_AC0fG15FolderCandidate_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables21DOCGoToRecentLocationCAC0fG15FolderCandidate_pGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v4, &v11, &_s26DocumentManagerExecutables21DOCGoToRecentLocationC_AA0dE15FolderCandidate_ptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of DOCGoToFolderCandidate(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo17DOCFolderIconTypeV_SSTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo17DOCFolderIconTypeVSSGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
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
      *(v3[7] + result) = v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v4, v13, &_ss11AnyHashableV_yptMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_SSTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation3URLVSSGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s10Foundation3URLV_SStMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for URL();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables19NavigationDirectionO_10AppIntents21DisplayRepresentationVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables19NavigationDirectionO_10AppIntents21DisplayRepresentationVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables19NavigationDirectionO10AppIntents21DisplayRepresentationVGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s26DocumentManagerExecutables19NavigationDirectionO_10AppIntents21DisplayRepresentationVtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_26DocumentManagerExecutables0D10CalculatorCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_26DocumentManagerExecutables0B10CalculatorCtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DateV26DocumentManagerExecutables0D10CalculatorCGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s10Foundation4DateV_26DocumentManagerExecutables0B10CalculatorCtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Date();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v4, &v13, &_sSS_yptMd);
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
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables21DOCSourceOutlineStyleO_SDySo21UIContentSizeCategorya12CoreGraphics7CGFloatVGTt0g5Tf4g_nTm(void *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v8 = a1[4];
  v9 = a1[5];
  v10 = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  result = v9;
  v14 = a1 + 7;
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v7[6] + 8 * v12) = v8;
    *(v7[7] + 8 * v12) = result;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v7[2] = v17;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v18 = v14 + 2;
    v8 = *(v14 - 1);
    v19 = *v14;

    v12 = a4(v8);
    v14 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_26DocumentManagerExecutables08ProviderD5State33_3BE26F1974CD6E1EBDD377CC4F0D2DE9LLCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *i;
      v7 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v7;
      *(v4[7] + 8 * result) = v6;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
      if (!--v2)
      {

        return v4;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18FPProviderDomainIDaSbGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15USBFormatOptionO_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables15USBFormatOptionOSbGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables9USBFormatO_SDyAC0F6OptionOSbGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 8);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + result) = v6;
      *(v4[7] + 8 * result) = v7;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
      if (!--v2)
      {

        return v4;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables25DOCItemCollectionListSpecV0F24HeightDeterminingFactors33_007BF96B63A761DA9097C9AAC5823B90LLV_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables25DOCItemCollectionListSpecV0F24HeightDeterminingFactors33_007BF96B63A761DA9097C9AAC5823B90LLV12CoreGraphics7CGFloatVGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[7];
      v7 = v4[9];
      v36 = v4[8];
      v37 = v7;
      v8 = v4[9];
      v38 = v4[10];
      v9 = v4[3];
      v10 = v4[5];
      v32 = v4[4];
      v33 = v10;
      v11 = v4[5];
      v12 = v4[7];
      v34 = v4[6];
      v35 = v12;
      v13 = v4[1];
      v29[0] = *v4;
      v29[1] = v13;
      v14 = v4[3];
      v16 = *v4;
      v15 = v4[1];
      v30 = v4[2];
      v31 = v14;
      v47 = v36;
      v48 = v8;
      v43 = v32;
      v44 = v11;
      v45 = v34;
      v46 = v6;
      v39 = v16;
      v40 = v15;
      v49 = *(v4 + 20);
      v41 = v30;
      v42 = v9;
      outlined init with copy of DOCGridLayout.Spec?(v29, &v28, &_s26DocumentManagerExecutables25DOCItemCollectionListSpecV0D24HeightDeterminingFactors33_007BF96B63A761DA9097C9AAC5823B90LLV_12CoreGraphics7CGFloatVtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v39);
      if (v18)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v3[6] + 168 * result;
      v20 = v48;
      *(v19 + 128) = v47;
      *(v19 + 144) = v20;
      *(v19 + 160) = v49;
      v21 = v44;
      *(v19 + 64) = v43;
      *(v19 + 80) = v21;
      v22 = v46;
      *(v19 + 96) = v45;
      *(v19 + 112) = v22;
      v23 = v40;
      *v19 = v39;
      *(v19 + 16) = v23;
      v24 = v42;
      *(v19 + 32) = v41;
      *(v19 + 48) = v24;
      *(v3[7] + 8 * result) = *(&v38 + 1);
      v25 = v3[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_11;
      }

      v3[2] = v27;
      if (!i)
      {

        return v3;
      }

      v4 += 11;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ySucTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOySucGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaSgSSGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = v5;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables12GroupingModeO_10AppIntents21DisplayRepresentationVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12GroupingModeO_10AppIntents21DisplayRepresentationVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables12GroupingModeO10AppIntents21DisplayRepresentationVGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s26DocumentManagerExecutables12GroupingModeO_10AppIntents21DisplayRepresentationVtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables14DOCSidebarItemO_SDySo7UIColorCSo6CGSizeV13requestedSize_AC0F4IconV4icontGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables14DOCSidebarItemOSDySo7UIColorCSo6CGSizeV13requestedSize_AC0F4IconV4icontGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 2);
      v16 = *(i - 3);
      v17[0] = v5;
      *(v17 + 9) = *(i - 23);
      v6 = *i;
      outlined init with copy of DOCSidebarItem(&v16, &v15);

      result = specialized __RawDictionaryStorage.find<A>(_:)(&v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 48 * result);
      v10 = v16;
      v11 = v17[0];
      *(v9 + 25) = *(v17 + 9);
      *v9 = v10;
      v9[1] = v11;
      *(v3[7] + 8 * result) = v6;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo7UIColorC_So6CGSizeV13requestedSize_26DocumentManagerExecutables14DOCSidebarIconV4icontTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo7UIColorCSo6CGSizeV13requestedSize_26DocumentManagerExecutables14DOCSidebarIconV4icontGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 4);
      v10 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v13 = v3[7] + 32 * result;
      *v13 = v5;
      *(v13 + 8) = v6;
      *(v13 + 16) = v10;
      *(v13 + 24) = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables26DOCItemCollectionSizeClassO_So6CGSizeVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables26DOCItemCollectionSizeClassOSo6CGSizeVGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8FPItemIDC_So7DOCNode_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8FPItemIDCSo7DOCNode_pGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28NSFileProviderItemIdentifiera_SaySo17DOCSmartFolderHitCGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *i;
      v7 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v7;
      *(v4[7] + 8 * result) = v6;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
      if (!--v2)
      {

        return v4;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So6CGRectVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So6CGRectVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo6CGRectVGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s10Foundation4UUIDV_So6CGRectVtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 32 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables27DOCIdentityHashableLocationV_AETt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables27DOCIdentityHashableLocationVAEGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v4, v18, &_s26DocumentManagerExecutables27DOCIdentityHashableLocationV_ACtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 56 * result;
      v8 = v18[0];
      v9 = v18[1];
      v10 = v18[2];
      *(v7 + 48) = v19;
      *(v7 + 16) = v9;
      *(v7 + 32) = v10;
      *v7 = v8;
      v11 = v3[7] + 56 * result;
      v12 = v20;
      v13 = v21;
      v14 = v22;
      *(v11 + 48) = v23;
      *(v11 + 16) = v13;
      *(v11 + 32) = v14;
      *v11 = v12;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 112;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables14DOCItemRowViewC14ColumnCacheKey33_1E39830950AB61652482D17E5CCE08ADLLV_AC0I0OTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCItemRowViewC14ColumnCacheKey33_1E39830950AB61652482D17E5CCE08ADLLV_AA0G0OtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables14DOCItemRowViewC14ColumnCacheKey33_1E39830950AB61652482D17E5CCE08ADLLVAC0I0OGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s26DocumentManagerExecutables14DOCItemRowViewC14ColumnCacheKey33_1E39830950AB61652482D17E5CCE08ADLLV_AA0G0OtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v6[1], v6[2], v6[3]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v8[6] + 32 * result);
      v16 = *(v6 + 1);
      *v15 = *v6;
      v15[1] = v16;
      v17 = v8[7];
      v18 = type metadata accessor for Column(0);
      result = outlined init with take of DOCFastLabel.LabelInformation(v6 + v9, v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for Column);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8FPItemIDC_ADTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables17ShowHideOperationO_10AppIntents21DisplayRepresentationVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17ShowHideOperationO_10AppIntents21DisplayRepresentationVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables17ShowHideOperationO10AppIntents21DisplayRepresentationVGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s26DocumentManagerExecutables17ShowHideOperationO_10AppIntents21DisplayRepresentationVtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables29DOCBrowserContainerControllerC_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables29DOCBrowserContainerControllerCSbGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15DOCHashableNodeC_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables15DOCHashableNodeCSSGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo27DOCDocumentSourceIdentifiera_So6DOCTabVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo27DOCDocumentSourceIdentifieraSo6DOCTabVGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22PDFDocumentWriteOptiona_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo22PDFDocumentWriteOptionaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v4, &v11, &_sSo22PDFDocumentWriteOptiona_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo7DOCNode_pGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObject_pTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables23FavoriteFolderOperationO_10AppIntents21DisplayRepresentationVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23FavoriteFolderOperationO_10AppIntents21DisplayRepresentationVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables23FavoriteFolderOperationO10AppIntents21DisplayRepresentationVGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s26DocumentManagerExecutables23FavoriteFolderOperationO_10AppIntents21DisplayRepresentationVtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21UIContentSizeCategorya_So6UIFontCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So35UIDocumentBrowserActionAvailabilityVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo35UIDocumentBrowserActionAvailabilityVGMd);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So36UIDocumentBrowserActionMenuSortOrderVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo36UIDocumentBrowserActionMenuSortOrderVGMd);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables17CompressionFormatO_10AppIntents21DisplayRepresentationVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17CompressionFormatO_10AppIntents21DisplayRepresentationVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables17CompressionFormatO10AppIntents21DisplayRepresentationVGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s26DocumentManagerExecutables17CompressionFormatO_10AppIntents21DisplayRepresentationVtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24FPActionOperationLocatorC_s5Error_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo24FPActionOperationLocatorCs5Error_pGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void specialized DOCFastLabel.init(coder:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_disableWorkaroundFor160718780;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = MEMORY[0x24C1FAD20](0xD00000000000001DLL, 0x8000000249BF7350);
  v4 = [v2 BOOLForKey_];

  *(v0 + v1) = v4;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_textLayer;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for DOCFastLabel.FastLabelLayer(0)) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined assign with copy of DOCFastLabel.LabelInformation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of DOCFastLabel.TextDrawInformation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double specialized DOCFastLabel.textRect(forBounds:limitedToNumberOfLines:)()
{
  v1 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v16 - v13;
  (*((*MEMORY[0x277D85000] & *v0) + 0x68))(v12);
  if ((*(v6 + 48))(v14, 1, v5))
  {
    outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  }

  else
  {
    outlined init with copy of DOCFastLabel.TextDrawInformation(v14, v9, type metadata accessor for DOCFastLabel.LabelInformation);
    outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    outlined init with copy of DOCFastLabel.TextDrawInformation(&v9[*(v5 + 20)], v4, type metadata accessor for DOCFastLabel.TextDrawInformation);
    outlined destroy of DOCFastLabel.LabelInformation(v9, type metadata accessor for DOCFastLabel.LabelInformation);
    outlined destroy of DOCFastLabel.LabelInformation(v4, type metadata accessor for DOCFastLabel.TextDrawInformation);
  }

  return 0.0;
}

uint64_t getEnumTagSinglePayload for DOCFastLabel.AttachmentRenderer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCFastLabel.AttachmentRenderer(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t type metadata completion function for DOCFastLabel.LabelInformation()
{
  result = type metadata accessor for NSMutableAttributedString(319, &lazy cache variable for type metadata for UIFont);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DOCFastLabel.TextDrawInformation(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for DOCFastLabel.TextDrawInformation()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for NSMutableAttributedString(319, &lazy cache variable for type metadata for NSAttributedString);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [CTLineRef](319, &lazy cache variable for type metadata for [CTLineRef], type metadata accessor for CTLineRef, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [CTLineRef](319, &lazy cache variable for type metadata for [CGRect], type metadata accessor for CGRect, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [CTLineRef](319, &lazy cache variable for type metadata for IndexSet?, MEMORY[0x277CC9A28], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for DOCFastLabel.AttachmentRenderer?();
            if (v5 <= 0x3F)
            {
              type metadata accessor for UIUserInterfaceLayoutDirection(319);
              if (v6 <= 0x3F)
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

void type metadata accessor for [CTLineRef](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for DOCFastLabel.AttachmentRenderer?()
{
  if (!lazy cache variable for type metadata for DOCFastLabel.AttachmentRenderer?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DOCFastLabel.AttachmentRenderer?);
    }
  }
}

void type metadata completion function for DOCFastLabel.FastLabelLayer()
{
  type metadata accessor for [CTLineRef](319, &lazy cache variable for type metadata for DOCFastLabel.LabelInformation?, type metadata accessor for DOCFastLabel.LabelInformation, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t outlined assign with take of DOCFastLabel.LabelInformation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>;
  if (!lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySS5IndexVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>);
  }

  return result;
}

uint64_t outlined init with take of DOCFastLabel.LabelInformation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id DOCFullDocumentManagerViewController.containerControllerForResponderEstablishing()()
{
  v1 = v0;
  v2 = [v0 dataSource];
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x188))();

  if (v4 >= 3)
  {
    if (v4 != 3)
    {
      goto LABEL_33;
    }

    v11 = [v1 internalNavigationController];
    v7 = [v11 topViewController];

    if (v7)
    {
      type metadata accessor for DOCColumnViewController(0);
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = *((*v3 & *v12) + 0xB0);
        v14 = v13();
        if (v14 >> 62)
        {
          v15 = __CocoaSet.count.getter();
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v15 < 1)
        {
          goto LABEL_27;
        }

        if (v15 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 = v15 - 2;
        }

        v18 = (v13)(v16);
        if ((v18 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x24C1FC540](v17, v18);
          goto LABEL_20;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v17 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v19 = *(v18 + 8 * v17 + 32);
LABEL_20:
          v20 = v19;

          return v20;
        }

        __break(1u);
LABEL_33:
        result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return result;
      }
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.UI);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_27;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "No column view controller available to establish first responder";
    goto LABEL_26;
  }

  result = [v1 effectiveBrowserViewController];
  if (result)
  {
    return result;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "No effective browser view controller available to establish first responder";
LABEL_26:
    _os_log_impl(&dword_2493AC000, v7, v8, v10, v9, 2u);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

LABEL_27:

  return 0;
}

id DOCFullDocumentManagerViewController.tabbedBrowserController.getter()
{
  v1 = objc_opt_self();
  v2 = [v0 configuration];
  v3 = [v2 sceneIdentifier];

  v4 = [v1 globalTabbedBrowserControllerForIdentifier_];
  return v4;
}

void *DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter()
{
  result = [v0 effectiveBrowserViewController];
  if (result)
  {
    v2 = result;
    v3 = (*((*MEMORY[0x277D85000] & *result) + 0xE8))();

    if (v3)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DOCFullDocumentManagerViewController.docInternalNavigationController.getter()
{
  v1 = [v0 internalNavigationController];
  type metadata accessor for DOCFullDocumentManagerNavigationController();

  return swift_dynamicCastClassUnconditional();
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.clearHistory()()
{
  v1 = [v0 dataSource];
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xA8))();

  (*((*v2 & *v3) + 0x188))();
}

id DOCFullDocumentManagerViewController.sidebarViewController.getter()
{
  v1 = objc_opt_self();
  v2 = [v0 configuration];
  v3 = [v2 sceneIdentifier];

  v4 = [v1 globalTabbedBrowserControllerForIdentifier_];
  if (!v4 || (v5 = [v4 splitBrowserViewController], v4, v6 = objc_msgSend(v5, sel_sidebarViewController), v5, (result = v6) == 0))
  {
    result = [v0 splitViewController];
    if (result)
    {
      v8 = result;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = [v9 sidebarViewController];

        return v10;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

id DOCSearchController.isActiveShowingNoResults.getter()
{
  result = [v0 isActive];
  if (result)
  {
    v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController];
    result = [v2 viewIfLoaded];
    if (result)
    {
      v3 = result;
      v4 = [result isHidden];

      if (v4)
      {
        return 0;
      }

      else
      {
        result = [v2 viewIfLoaded];
        if (result)
        {
          v5 = result;
          v6 = [result isHidden];

          return v6;
        }
      }
    }
  }

  return result;
}

id DOCSearchController.isActiveAndResultsHidden.getter()
{
  result = [v0 isActive];
  if (result)
  {
    result = [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController] viewIfLoaded];
    if (result)
    {
      v2 = result;
      v3 = [result isHidden];

      return v3;
    }
  }

  return result;
}

void DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  specialized DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(a1, a2, a3, a4, v4);
}

uint64_t DOCFullDocumentManagerViewController.displayMode()()
{
  v1 = [v0 dataSource];
  v2 = (*((*MEMORY[0x277D85000] & *v1) + 0x188))();

  return v2;
}

void DOCFullDocumentManagerViewController.deselectOtherColumnsIfNeeded(_:)(void *a1)
{
  v2 = v1;
  v4 = [v1 dataSource];
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x188))();

  if (v6 != 3)
  {
    return;
  }

  v7 = [v2 internalNavigationController];
  v31 = [v7 topViewController];

  if (!v31)
  {
    return;
  }

  type metadata accessor for DOCColumnViewController(0);
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = v8;
  if (![v8 isEditing])
  {
    goto LABEL_28;
  }

  v27 = v9;
  v10 = (*((*v5 & *v9) + 0xB0))();
  v11 = v10;
  v28 = a1;
  if (v10 >> 62)
  {
LABEL_35:
    v12 = __CocoaSet.count.getter();
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_36:

    return;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_36;
  }

LABEL_7:
  v13 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x24C1FC540](v13, v11);
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v15 = *(v11 + 8 * v13 + 32);
    }

    v14 = v15;
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v17 = *((*v5 & *v15) + 0xE8);
    v18 = v17();
    if (v18)
    {
      break;
    }

LABEL_10:

    ++v13;
    if (v16 == v12)
    {
      goto LABEL_36;
    }
  }

  v19 = v18;
  v29 = v17;
  type metadata accessor for DOCItemCollectionViewController(0);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {

    v14 = v19;
    goto LABEL_10;
  }

  v21 = [v20 isEditing];

  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

  v26 = v14;
  v30 = v29();

  if (!v30)
  {

    v25 = v26;
    goto LABEL_29;
  }

  if (!swift_dynamicCastClass())
  {

    v25 = v30;
    goto LABEL_29;
  }

  if (v28 && (v22 = v30, v23 = v28, v24 = static NSObject.== infix(_:_:)(), v22, v23, (v24 & 1) != 0))
  {
  }

  else
  {
    [v27 setEditing:0 animated:0];
  }

LABEL_28:
  v25 = v31;
LABEL_29:
}

id DOCFullDocumentManagerViewController.postSearchInitializationBuffer.getter()
{
  if ([v0 _postSearchInitializationBufferStorage])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v4, v5);
    outlined init with take of Any(v5, v4);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCPostSearchInitializationBuffer);
    swift_dynamicCast();
    return v3;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D06230]) init];
    [v0 set:v2 postSearchInitializationBufferStorage:?];
    return v2;
  }
}

id DOCSearchController.isActiveShowingResults.getter()
{
  result = [v0 isActive];
  if (result)
  {
    v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController];
    result = [v2 viewIfLoaded];
    if (result)
    {
      v3 = result;
      v4 = [result isHidden];

      if (v4)
      {
        return 0;
      }

      else
      {
        v5 = (*((*MEMORY[0x277D85000] & *v2) + 0xCB8))();
        if (v5 >> 62)
        {
          v6 = __CocoaSet.count.getter();
        }

        else
        {
          v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        return (v6 > 0);
      }
    }
  }

  return result;
}

id DOCFullDocumentManagerViewController.ownedSearchController.getter()
{
  v1 = [v0 internalNavigationController];
  v2 = [v1 topViewController];

  if (v2)
  {
    v3 = [v2 navigationItem];

    v2 = [v3 searchController];
  }

  return v2;
}

void *DOCFullDocumentManagerViewController.itemCollectionViewController(_:responderForAction:sender:)(void *a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of DOCGridLayout.Spec?(a3, v20, &_sypSgMd);
  if (v21)
  {
    if (swift_dynamicCast())
    {
      if (v18 == 0xD000000000000014 && 0x8000000249BF7680 == v19)
      {

        v6 = 1;
        goto LABEL_13;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        v6 = 1;
        goto LABEL_13;
      }
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v20, &_sypSgMd);
  }

  outlined init with copy of DOCGridLayout.Spec?(a3, v20, &_sypSgMd);
  if (!v21)
  {
    outlined destroy of CharacterSet?(v20, &_sypSgMd);
    goto LABEL_12;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v6 = a1 == 0;
    goto LABEL_13;
  }

  if (a1)
  {
    v7 = a1;
    v6 = static NSObject.== infix(_:_:)();
  }

  else
  {

    v6 = 0;
  }

LABEL_13:
  outlined init with copy of DOCGridLayout.Spec?(a3, v20, &_sypSgMd);
  if (v21)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
    if (swift_dynamicCast())
    {

      goto LABEL_18;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v20, &_sypSgMd);
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v8 = static Selector.== infix(_:_:)();
  v9 = [v3 effectiveBrowserViewController];
  v10 = v9;
  if (v8)
  {
    if (!v9 || (v11 = MEMORY[0x277D85000], v12 = (*((*MEMORY[0x277D85000] & *v9) + 0xE8))(), v10, !v12))
    {
LABEL_24:
      if (a1)
      {
        v14 = a1;
        return a1;
      }

      return 0;
    }

    type metadata accessor for DOCItemCollectionViewController(0);
    v13 = swift_dynamicCastClass();
    if (!v13 || (v10 = v13, ((*((*v11 & *v13) + 0x1368))() & 1) == 0))
    {

      goto LABEL_24;
    }
  }

  else
  {
    if (!v9)
    {
      return v10;
    }

    v15 = (*((*MEMORY[0x277D85000] & *v9) + 0xE8))();

    if (!v15)
    {
      return 0;
    }

    type metadata accessor for DOCItemCollectionViewController(0);
    v10 = swift_dynamicCastClass();
    if (!v10)
    {
    }
  }

  return v10;
}

uint64_t DOCFullDocumentManagerViewController.canPerformHistoryShift(direction:amount:)(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = [v2 traitCollection];
  v6 = [v5 supportHistoryNavigation];

  if (v6)
  {
    if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    v7 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v2, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath, v9);
    v13 = v2;
    (*((*MEMORY[0x277D85000] & *v7) + 0x90))(&v15, v10);

    v14 = v4;
    v11 = (*(*v15 + 264))(&v14, a2);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void DOCFullDocumentManagerViewController.performHistoryShift(direction:amount:)(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = [v2 traitCollection];
  v6 = [v5 supportHistoryNavigation];

  if (v6)
  {
    if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    v7 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v2, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath, v9);
    (*((*MEMORY[0x277D85000] & *v7) + 0x90))(&v12, v10);

    v11 = v4;
    (*(*v12 + 272))(&v11, a2);
  }
}

uint64_t DOCFullDocumentManagerViewController.groupBehavior(changeTo:for:)(char *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315650;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BF76A0, &v22);
    *(v10 + 12) = 2080;
    v12 = String.init<A>(describing:)();
    v21 = v5;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v22);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2080;
    v15 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27DOCDocumentSourceIdentifieraSgMd);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v22);

    *(v10 + 24) = v18;
    v5 = v21;
    _os_log_impl(&dword_2493AC000, v8, v9, "%s to: %s for identifier: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  LOBYTE(v22) = v5;
  v19 = [v3 configuration];
  specialized static DOCUserInterfaceStateStore.saveDefaultGroupingBehavior(_:for:configuration:)(&v22, a2, v19);

  LOBYTE(v22) = v5;
  return DOCFullDocumentManagerViewController.updateGroupingBehavior(_:)(&v22);
}

void *DOCFullDocumentManagerViewController.availableDisplayModes()()
{
  if (![v0 environmentSupportsColumnView])
  {
    return &outlined read-only object #1 of DOCFullDocumentManagerViewController.availableDisplayModes();
  }

  v1 = [v0 configuration];
  v2 = [v1 supportsColumnView];

  result = &outlined read-only object #1 of DOCFullDocumentManagerViewController.availableDisplayModes();
  if (v2)
  {
    v4 = [v0 configuration];
    v5 = [v4 isPickerUI];

    if (v5)
    {
      return &outlined read-only object #1 of DOCFullDocumentManagerViewController.availableDisplayModes();
    }

    else
    {
      return &outlined read-only object #0 of DOCFullDocumentManagerViewController.availableDisplayModes();
    }
  }

  return result;
}

__n128 DOCFullDocumentManagerViewController.sortDescriptor(with:for:)@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = [v2 effectiveBrowserViewController];
  if (!v5)
  {
    goto LABEL_74;
  }

  v7 = v5;
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v5) + 0xE8))();

  if (!v9)
  {
    goto LABEL_74;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    goto LABEL_74;
  }

  v11 = (*((*v8 & *v10) + 0xA68))();

  v12 = (*((*v8 & *v11) + 0x1D0))();
  v13 = *(v12 + 16);
  if (!v13)
  {
LABEL_71:

    if (one-time initialization token for UI != -1)
    {
      goto LABEL_78;
    }

    goto LABEL_72;
  }

  v14 = 0;
  while (v14 < *(v12 + 16))
  {
    v15 = *(v12 + v14 + 32);
    if (v15 > 4)
    {
      if (*(v12 + v14 + 32) <= 6u)
      {
        if (v15 == 5)
        {
          v19 = 1684957547;
        }

        else
        {
          v19 = 0x7942646572616873;
        }

        if (v15 == 5)
        {
          v20 = 0xE400000000000000;
        }

        else
        {
          v20 = 0xE800000000000000;
        }

        if (v4 > 4)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v15 == 7)
        {
          v19 = 0x6E6F697461657263;
          v25 = 1702125892;
        }

        else
        {
          if (v15 == 8)
          {
            v19 = 0x6564644165746164;
            v20 = 0xE900000000000064;
            if (v4 > 4)
            {
              goto LABEL_51;
            }

            goto LABEL_23;
          }

          v19 = 0x745364756F6C6369;
          v25 = 1937077345;
        }

        v20 = v25 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v4 > 4)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v16 = 1936154996;
      if (v15 != 3)
      {
        v16 = 1702521203;
      }

      if (v15 == 2)
      {
        v16 = 1701667182;
      }

      v17 = 0xD000000000000010;
      if (*(v12 + v14 + 32))
      {
        v17 = 0x646573557473616CLL;
      }

      v18 = 0xEC00000065746144;
      if (!*(v12 + v14 + 32))
      {
        v18 = 0x8000000249BC5DF0;
      }

      if (*(v12 + v14 + 32) <= 1u)
      {
        v19 = v17;
      }

      else
      {
        v19 = v16;
      }

      if (*(v12 + v14 + 32) <= 1u)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xE400000000000000;
      }

      if (v4 > 4)
      {
LABEL_51:
        v26 = 0x745364756F6C6369;
        if (v4 == 8)
        {
          v26 = 0x6564644165746164;
        }

        v27 = 0xEC00000073757461;
        if (v4 == 8)
        {
          v27 = 0xE900000000000064;
        }

        if (v4 == 7)
        {
          v26 = 0x6E6F697461657263;
          v27 = 0xEC00000065746144;
        }

        v28 = 0x7942646572616873;
        if (v4 == 5)
        {
          v28 = 1684957547;
        }

        v29 = 0xE800000000000000;
        if (v4 == 5)
        {
          v29 = 0xE400000000000000;
        }

        if (v4 <= 6)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        if (v4 <= 6)
        {
          v23 = v29;
        }

        else
        {
          v23 = v27;
        }

        if (v19 != v30)
        {
          goto LABEL_69;
        }

        goto LABEL_68;
      }
    }

LABEL_23:
    if (v4 <= 1)
    {
      v24 = 0x646573557473616CLL;
      v23 = 0xEC00000065746144;
      if (!v4)
      {
        v24 = 0xD000000000000010;
        v23 = 0x8000000249BC5DF0;
      }

      if (v19 != v24)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v21 = 1936154996;
      if (v4 != 3)
      {
        v21 = 1702521203;
      }

      if (v4 == 2)
      {
        v22 = 1701667182;
      }

      else
      {
        v22 = v21;
      }

      v23 = 0xE400000000000000;
      if (v19 != v22)
      {
        goto LABEL_69;
      }
    }

LABEL_68:
    if (v20 == v23)
    {

LABEL_76:

      v37 = v15;
      DOCItemSortDescriptor.init(type:isReversed:)(&v37, 0, v38);
      v36 = v40;
      result = v39;
      *a2 = v38[0];
      *(a2 + 8) = result;
      *(a2 + 24) = v36;
      return result;
    }

LABEL_69:
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_76;
    }

    if (v13 == ++v14)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_78:
  swift_once();
LABEL_72:
  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_249B9A480;
  v38[0] = v4;
  v33 = String.init<A>(describing:)();
  v35 = v34;
  *(v32 + 56) = MEMORY[0x277D837D0];
  *(v32 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  os_log(_:dso:log:type:_:)();

LABEL_74:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return result;
}

void DOCFullDocumentManagerViewController.groupingBehavior(with:for:)(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = [v2 effectiveBrowserViewController];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v5) + 0xE8))();

    if (v8)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = (*((*v7 & *v9) + 0xA68))();

        v11 = (*((*v7 & *v10) + 0x218))();
        v12 = *(v11 + 16);
        if (v12)
        {
          for (i = 0; v12 != i; ++i)
          {
            if (i >= *(v11 + 16))
            {
              __break(1u);
              return;
            }

            v14 = *(v11 + i + 32);
            v15 = 0xE400000000000000;
            if (v14 > 4)
            {
              if (*(v11 + i + 32) <= 6u)
              {
                if (v14 == 5)
                {
                  v18 = 1684957547;
                }

                else
                {
                  v18 = 0x7942646572616873;
                }

                if (v14 == 5)
                {
                  v15 = 0xE400000000000000;
                }

                else
                {
                  v15 = 0xE800000000000000;
                }

                if (v4 > 2)
                {
                  goto LABEL_21;
                }
              }

              else
              {
                v18 = 1702125924;
                if (v14 - 7 >= 2)
                {
                  v18 = 0x745364756F6C6369;
                  v15 = 0xEC00000073757461;
                }

                if (v4 > 2)
                {
LABEL_21:
                  v19 = 0x7942646572616873;
                  if (v4 != 5)
                  {
                    v19 = 0x745364756F6C6369;
                  }

                  v20 = 0xEC00000073757461;
                  if (v4 == 5)
                  {
                    v20 = 0xE800000000000000;
                  }

                  v21 = 1702521203;
                  if (v4 != 3)
                  {
                    v21 = 1684957547;
                  }

                  if (v4 <= 4)
                  {
                    v22 = v21;
                  }

                  else
                  {
                    v22 = v19;
                  }

                  if (v4 <= 4)
                  {
                    v23 = 0xE400000000000000;
                  }

                  else
                  {
                    v23 = v20;
                  }

                  if (v18 != v22)
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_49;
                }
              }
            }

            else
            {
              v16 = 1936154996;
              if (v14 != 3)
              {
                v16 = 1702521203;
              }

              v17 = 1702125924;
              if (v14 >= 2)
              {
                v17 = 1701667182;
              }

              if (*(v11 + i + 32) <= 2u)
              {
                v18 = v17;
              }

              else
              {
                v18 = v16;
              }

              v15 = 0xE400000000000000;
              if (v4 > 2)
              {
                goto LABEL_21;
              }
            }

            if (v4)
            {
              if (v4 == 1)
              {
                v24 = 1701667182;
              }

              else
              {
                v24 = 1936154996;
              }

              v23 = 0xE400000000000000;
              if (v18 != v24)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v23 = 0xE400000000000000;
              if (v18 != 1702125924)
              {
                goto LABEL_50;
              }
            }

LABEL_49:
            if (v15 == v23)
            {

LABEL_57:

              goto LABEL_55;
            }

LABEL_50:
            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v25)
            {
              goto LABEL_57;
            }
          }
        }
      }

      else
      {
      }
    }
  }

  LOBYTE(v14) = 11;
LABEL_55:
  *a2 = v14;
}

void DOCFullDocumentManagerViewController.userDidChangeDisplayMode(to:for:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v43 - v13;
  v15 = [v3 view];
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 window];

  v44 = a1;
  if (v17 && (v18 = [v17 windowScene], v17, v18))
  {
    v19 = [v18 activationState];

    v20 = v19 != 2;
  }

  else
  {
    v20 = 1;
  }

  v21 = [v3 hierarchyController];
  v22 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v21 + v22, v9, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v23 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v9, 1, v23) == 1)
  {
    v26 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v21 + v26, v14, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);

    if (v25(v9, 1, v23) != 1)
    {
      outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }
  }

  else
  {

    outlined init with take of DOCHierarchyController.FetchingOperationToken(v9, v14);
    (*(v24 + 56))(v14, 0, 1, v23);
  }

  if (v25(v14, 1, v23) == 1)
  {
    outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  }

  else
  {
    v27 = v14[*(v23 + 24)];
    _s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVWOhTm_0(v14, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    if (v27)
    {
      return;
    }
  }

  if (one-time initialization token for StateStore != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.StateStore);
  v29 = a2;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v44;
  if (v32)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v35;
    *v34 = 136315650;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF7720, &v46);
    *(v34 + 12) = 2080;
    v45 = v33;
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v46);

    *(v34 + 14) = v38;
    *(v34 + 22) = 2080;
    v45 = a2;
    v39 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27DOCDocumentSourceIdentifieraSgMd);
    v40 = String.init<A>(describing:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v46);
    v33 = v44;

    *(v34 + 24) = v42;
    _os_log_impl(&dword_2493AC000, v30, v31, "%s to: %s for source: %s", v34, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v35, -1, -1);
    MEMORY[0x24C1FE850](v34, -1, -1);
  }

  DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)(v33, v20, a2);
}

uint64_t DOCFullDocumentManagerViewController.currentSizeSetting.getter()
{
  v1 = [v0 configuration];
  v2 = specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSetting(configuration:)(v1);

  return v2;
}

uint64_t DOCFullDocumentManagerViewController.currentSizeSliderValue.getter()
{
  v1 = [v0 configuration];
  v2 = specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSliderValue(configuration:)(v1);

  return v2;
}

void DOCFullDocumentManagerViewController.currentSizeSliderValue.setter(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 viewOptionsResizableIcon];
  v5 = [v4 isEnabled];

  if ((v5 & 1) != 0 || (v6 = [v3 viewOptionsResizableList], v7 = objc_msgSend(v6, sel_isEnabled), v6, v7))
  {
    v8 = [v1 configuration];
    v9 = specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSliderValue(configuration:)(v8);

    if (v9 != a1)
    {
      v10 = [v1 configuration];
      specialized static DOCUserInterfaceStateStore.saveDefaultSizeSliderValue(_:configuration:)(a1, v10);

      DOCFullDocumentManagerViewController.updateBrowserLayoutConfigurationTraits()();
    }
  }
}

void DOCFullDocumentManagerViewController.currentSizeSetting.setter(uint64_t a1)
{
  v3 = [objc_opt_self() viewOptionsSizeSetting];
  v4 = [v3 isEnabled];

  if (v4)
  {
    v5 = [v1 configuration];
    v6 = specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSetting(configuration:)(v5);

    if (qword_249BBB148[a1] != qword_249BBB148[v6])
    {
      v7 = [v1 configuration];
      specialized static DOCUserInterfaceStateStore.saveDefaultSizeSetting(_:configuration:)(a1, v7);

      DOCFullDocumentManagerViewController.updateBrowserLayoutConfigurationTraits()();
    }
  }
}

void DOCFullDocumentManagerViewController.sortDescriptor(changeTo:)(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7[0] = *a1;
  v2 = v7[0];
  v8 = v3;
  v9 = v4;
  v10 = v5;
  DOCFullDocumentManagerViewController.updateSorting(_:)(v7);
  v7[0] = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = [v1 configuration];
  specialized static DOCUserInterfaceStateStore.saveDefaultSortMode(_:configuration:)(v7, v6);
}

uint64_t DOCFullDocumentManagerViewController.topMostColumnViewController.getter()
{
  v1 = [v0 internalNavigationController];
  v2 = [v1 topViewController];

  if (v2)
  {
    type metadata accessor for DOCColumnViewController(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t DOCFullDocumentManagerViewController.isInUserTriggeredSelectionMode.getter()
{
  if (![v0 isEditing])
  {
    return 0;
  }

  v1 = [v0 effectiveBrowserViewController];
  if (!v1)
  {
    return 0;
  }

  v2 = MEMORY[0x277D85000];
  v3 = v1;
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();

  if (!v4)
  {
    return 0;
  }

  v5 = (*((*v2 & *v4) + 0x160))();

  return v5 & 1;
}

uint64_t DOCFullDocumentManagerViewController.searchResultsItemCollectionViewControllers.getter()
{
  v1 = [v0 dataSource];
  v2 = (*((*MEMORY[0x277D85000] & *v1) + 0xF0))();

  v21 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_22:
    v3 = __CocoaSet.count.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v20 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v20 = MEMORY[0x277D84F90];
  do
  {
    v5 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = [v6 navigationItem];
      v9 = [v8 searchController];

      if (v9)
      {
        v10 = [v9 searchResultsController];

        if (!v10)
        {
          goto LABEL_6;
        }

        type metadata accessor for DOCItemCollectionViewController(0);
        v7 = v10;
        if (swift_dynamicCastClass())
        {
          break;
        }
      }

LABEL_6:
      ++v5;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    MEMORY[0x24C1FB090]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = v21;
  }

  while (v4 != v3);
LABEL_24:

  v11 = v20;
  v12 = DOCFullDocumentManagerViewController.sidebarViewController.getter();
  if (!v12)
  {
    return v11;
  }

  v13 = v12;
  v14 = [v12 presentedViewController];
  if (!v14)
  {

    return v11;
  }

  v15 = v14;
  type metadata accessor for DOCSearchController();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {

    return v11;
  }

  v17 = *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
  if (!(v20 >> 62) || (result = __CocoaSet.count.getter(), (result & 0x8000000000000000) == 0))
  {
    v18 = v17;
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v18);

    return v20;
  }

  __break(1u);
  return result;
}

void *DOCFullDocumentManagerViewController.topMostKeyboardFocusableItemCollectionViewController.getter()
{
  v1 = [v0 dataSource];
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x108))();

  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_21:

    return 0;
  }

  while (1)
  {
    while (__OFSUB__(v4--, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v4 = __CocoaSet.count.getter();
      if (!v4)
      {
        goto LABEL_21;
      }
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v4, v3);
      goto LABEL_12;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v7 = *(v3 + 32 + 8 * v4);
LABEL_12:
    v5 = v7;
    v8 = (*((*v2 & *v7) + 0xE8))();
    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = v8;
    v10 = swift_dynamicCastObjCProtocolConditional();
    if (v10)
    {
      break;
    }

    v5 = v9;
LABEL_5:

    if (!v4)
    {
      goto LABEL_21;
    }
  }

  v11 = v10;
  v12 = [v10 acceptsKeyboardFocus];

  v5 = v9;
  if (!v12)
  {
    goto LABEL_5;
  }

  return v11;
}

void *DOCFullDocumentManagerViewController.inlineEditingViewController.getter()
{
  v1 = [v0 dataSource];
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x108))();

  v16 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = MEMORY[0x277D84F90];
    while (!__OFSUB__(i--, 1))
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](i, v3);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }

        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v3 + 32 + 8 * i);
      }

      v8 = v7;
      v9 = (*((*v2 & *v7) + 0xE8))();

      if (v9)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        if (!swift_dynamicCastClass())
        {

          goto LABEL_5;
        }

        MEMORY[0x24C1FB090]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = v16;
        if (!i)
        {
          goto LABEL_23;
        }
      }

      else
      {
LABEL_5:
        if (!i)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_23:

  if (v5 >> 62)
  {
    goto LABEL_37;
  }

  for (j = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = __CocoaSet.count.getter())
  {
    v11 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v11, v5);
      }

      else
      {
        if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v12 = *(v5 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((*((*v2 & *v12) + 0x1498))())
      {

        return v13;
      }

      ++v11;
      if (v14 == j)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_38:

  return 0;
}

void DOCFullDocumentManagerViewController.didSelect(_:at:wasAlreadySelected:onlyRevealIfColumnMode:)(void *a1, void *a2, int a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  isa = v10[-1].isa;
  v114 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v111 = &v102[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = type metadata accessor for DispatchQoS();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v13);
  v109 = &v102[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v107 = *(v15 - 8);
  v108 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v106 = &v102[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for Date();
  v104 = *(v18 - 8);
  *&v105 = v18;
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v102[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a2)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v24 = [a2 sourceIdentifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {

    v29 = 0;
    a1 = v23;
    goto LABEL_7;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v29 = 0;
  a1 = v23;
  if ((v30 & 1) == 0)
  {
LABEL_6:
    v31 = [v5 dataSource];
    v32 = (*((*MEMORY[0x277D85000] & *v31) + 0x188))();

    v29 = (v32 == 3) & (a3 ^ 1);
  }

LABEL_7:
  if ([v5 isEditing])
  {
    if (!v29)
    {
      return;
    }

    v33 = [v5 configuration];
    v34 = [v33 sceneIdentifier];

    v35 = specialized static DOCInteractionManager.sharedManager(for:)(v34);
    (*((*MEMORY[0x277D85000] & *v35) + 0x68))(0);

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.UI);
    v114 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v114, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2493AC000, v114, v37, "[Interaction] Clearing last opened item in 'didSelect:wasAlreadySelected:onlyRevealIfColumnMode:': Showing column mode in edition", v38, 2u);
      MEMORY[0x24C1FE850](v38, -1, -1);
    }

    goto LABEL_19;
  }

  if (v29)
  {
    v39 = [a1 providerDomainID];
    v40 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v39 node:a1];

    v41 = a2;
    v114 = v40;
    DOCFullDocumentManagerViewController.performLocationChangeRequest(_:)(v114, a2);

    v42 = [v5 configuration];
    v43 = [v42 sceneIdentifier];

    v44 = specialized static DOCInteractionManager.sharedManager(for:)(v43);
    (*((*MEMORY[0x277D85000] & *v44) + 0x68))(0);

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.UI);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2493AC000, v46, v47, "[Interaction] Clearing last opened item in 'didSelect:wasAlreadySelected:onlyRevealIfColumnMode:': Showing column mode NOT in edition", v48, 2u);
      MEMORY[0x24C1FE850](v48, -1, -1);
    }

LABEL_19:
    v49 = v114;

    return;
  }

  if (a4)
  {
    return;
  }

  if (![v5 delegate])
  {
    goto LABEL_30;
  }

  objc_opt_self();
  v50 = swift_dynamicCastObjCClass();
  if (!v50)
  {
    swift_unknownObjectRelease();
LABEL_30:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.UI);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2493AC000, v62, v63, "empty delegate", v64, 2u);
      MEMORY[0x24C1FE850](v64, -1, -1);
    }

    goto LABEL_36;
  }

  v51 = v50;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static Logger.UI);
  v53 = a1;
  swift_unknownObjectRetain();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  v56 = v54;
  if (os_log_type_enabled(v54, v55))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v103 = v55;
    v59 = v58;
    *v57 = 138412546;
    *(v57 + 4) = v53;
    *(v57 + 12) = 2112;
    *(v57 + 14) = v51;
    *v58 = v53;
    v58[1] = v51;
    v60 = v53;
    swift_unknownObjectRetain();
    _os_log_impl(&dword_2493AC000, v56, v103, "[Interaction] selecting item %@, going to delegate %@", v57, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v59, -1, -1);
    MEMORY[0x24C1FE850](v57, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_36:
  v65 = [v5 configuration];
  v66 = [v65 pickingItemsShouldBumpLastOpenDate];

  if (v66)
  {
    Date.init()();
    FPItem.setLastOpenDate(_:delay:)(v22, 3.0);
    (*(v104 + 8))(v22, v105);
  }

  v67 = [v5 configuration];
  v68 = [v67 isPickerUI];

  if (a2)
  {
    if (v68)
    {
      v69 = [a2 fileProviderItem];
      if (v69)
      {
        v70 = v69;
        specialized DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:)(v70, v5);
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v71 = swift_allocObject();
  v105 = xmmword_249BA0290;
  *(v71 + 16) = xmmword_249BA0290;
  *(v71 + 32) = a1;
  v72 = a1;
  v73 = [v5 effectiveBrowserViewController];
  if (v73 && (v74 = v73, v75 = (*((*MEMORY[0x277D85000] & *v73) + 0xE8))(), v74, v75))
  {
    type metadata accessor for DOCItemCollectionViewController(0);
    v76 = swift_dynamicCastClass();
    if (v76)
    {
      v77 = *(v76 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
      v78 = v77;
    }

    else
    {
      v77 = 0;
    }
  }

  else
  {
    v77 = 0;
  }

  v104 = type metadata accessor for DOCRelatedNodeMatcher();
  v79 = [v5 configuration];
  v80 = swift_allocObject();
  v80[2] = v72;
  v80[3] = a2;
  v80[4] = v5;
  v81 = a2;
  v82 = v72;
  v83 = v5;
  if ([v79 supportsRelatedFilesInPicker])
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v85 = v106;
    v84 = v107;
    v86 = v108;
    (*(v107 + 104))(v106, *MEMORY[0x277D851B8], v108);
    v87 = static OS_dispatch_queue.global(qos:)();
    (*(v84 + 8))(v85, v86);
    v88 = swift_allocObject();
    v88[2] = v77;
    v88[3] = v71;
    v88[4] = v104;
    v88[5] = partial apply for closure #1 in DOCFullDocumentManagerViewController.didSelect(_:at:wasAlreadySelected:onlyRevealIfColumnMode:);
    v88[6] = v80;
    aBlock[4] = partial apply for closure #1 in static DOCRelatedNodeMatcher.findRelatedNodes(for:currentNodeCollection:configuration:completion:);
    aBlock[5] = v88;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_138;
    v89 = _Block_copy(aBlock);
    v90 = v77;

    v91 = v79;
    v92 = v109;
    static DispatchQoS.unspecified.getter();
    v115 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_13(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v93 = v111;
    v94 = v114;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v92, v93, v89);
    _Block_release(v89);

    (*(isa + 1))(v93, v94);
    (*(v110 + 8))(v92, v112);
  }

  else
  {

    v95 = swift_allocObject();
    *(v95 + 16) = v105;
    *(v95 + 32) = v82;
    aBlock[0] = v95;
    v96 = v82;
    specialized Array.append<A>(contentsOf:)(MEMORY[0x277D84F90]);
    v97 = aBlock[0];
    v98 = swift_allocObject();
    v98[2] = a2;
    v98[3] = v83;
    v98[4] = v97;
    v99 = swift_allocObject();
    *(v99 + 16) = partial apply for closure #2 in closure #1 in DOCFullDocumentManagerViewController.didSelect(_:at:wasAlreadySelected:onlyRevealIfColumnMode:);
    *(v99 + 24) = v98;
    v100 = v81;
    v101 = v83;

    specialized Array<A>.fetchURLPairs(_:)(partial apply for closure #1 in Array<A>.fetchURLs(_:), v99, v97);
  }
}

void DOCFullDocumentManagerViewController.performLocationChangeRequest(_:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D85000];
  if (a2)
  {
    v7 = a2;
    v8 = [v2 dataSource];
    v9 = (*((*v6 & *v8) + 0x188))();

    if (v9 == 3)
    {
      v10 = [v3 locationChangePacer];
      v11 = (*((*v6 & *v10) + 0x68))();
      v13 = v12;

      if (v11)
      {
        v14 = v13;
        outlined consume of DOCLocationChange?(v11, v13);
        if (v13)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
          v7 = v7;
          v15 = static NSObject.== infix(_:_:)();

          if (v15)
          {
            v16 = [v3 internalNavigationController];
            v17 = [v16 topViewController];

            if (v17)
            {
              type metadata accessor for DOCColumnViewController(0);
              v18 = swift_dynamicCastClass();
              if (v18)
              {
                (*((*v6 & *v18) + 0x120))(v7);
                v19 = v17;
              }

              else
              {
                v19 = v7;
                v7 = v17;
              }
            }
          }
        }
      }
    }
  }

  v20 = [v3 locationChangePacer];
  (*((*v6 & *v20) + 0xA8))(a1, a2);
}

uint64_t closure #1 in DOCFullDocumentManagerViewController.didSelect(_:at:wasAlreadySelected:onlyRevealIfColumnMode:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249BA0290;
  *(v7 + 32) = a2;
  v15 = v7;
  v8 = a2;

  specialized Array.append<A>(contentsOf:)(v9);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v15;
  v11 = swift_allocObject();
  *(v11 + 16) = closure #2 in closure #1 in DOCFullDocumentManagerViewController.didSelect(_:at:wasAlreadySelected:onlyRevealIfColumnMode:)partial apply;
  *(v11 + 24) = v10;
  v12 = a3;
  v13 = a4;

  specialized Array<A>.fetchURLPairs(_:)(closure #1 in Array<A>.fetchURLs(_:)partial apply, v11, v15);
}

uint64_t closure #2 in closure #1 in DOCFullDocumentManagerViewController.didSelect(_:at:wasAlreadySelected:onlyRevealIfColumnMode:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v52 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = [a2 fileProviderItem];
    if (v13)
    {
      v14 = v13;
      if (one-time initialization token for sharedManager != -1)
      {
        swift_once();
      }

      v51 = static DOCSmartFolderManager.sharedManager;
      v15 = [a3 configuration];
      v16 = [v15 hostIdentifier];

      if (!v16)
      {
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = MEMORY[0x24C1FAD20](v17);
      }

      v18 = v14;
      Date.init()();
      v19 = objc_allocWithZone(MEMORY[0x277D05ED0]);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v21 = [v19 initWithAppBundleIdentifier:v16 folderItem:v18 type:0 lastUsedDate:isa frecency:1.0];

      (*(v8 + 8))(v12, v7);
      DOCSmartFolderManager.register(event:)(v21);
    }
  }

  v22 = [a3 configuration];

  v51 = a4;
  DOCAnalyticsActionEvent.FileProvider.init(nodes:)(v23);
  v50 = v54[1];
  v24 = objc_opt_self();
  v25 = [v24 mainBundle];

  if (a2)
  {
    DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)([a2 sourceIdentifier]);
    v26 = v55[0];
  }

  else
  {
    v26 = 0;
  }

  v27 = [a3 dataSource];
  v28 = (*((*MEMORY[0x277D85000] & *v27) + 0x188))();

  if (v28 >= 4)
  {
    v55[0] = v28;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v29 = 0x3020201u >> (8 * v28);
    v30 = [v24 mainBundle];
    v31 = [v30 bundleIdentifier];

    if (v31)
    {
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v35 = v22;
    DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v35, v32, v34, v55);
    v36 = v55[0];
    v37 = v35;
    DOCAnalyticsActionEvent.SortMode.init(configuration:)(v37, v54);
    v38 = v54[0];
    v39 = v37;
    DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v39, &v53);
    v40 = v53;
    v41 = [v39 hostIdentifier];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v55[0] = 0xD000000000000032;
    v55[1] = 0x8000000249BCDC20;
    v55[2] = v42;
    v55[3] = v44;
    v56 = 2;
    v57 = v36;
    v58 = v50;
    v59 = v26;
    v60 = v29;
    v61 = v38;
    v62 = v40;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    specialized DOCAnalyticsManager.sendEvent(_:)(v55, static DOCAnalyticsManager.shared);
    outlined destroy of DOCAnalyticsActionEvent(v55);
    v45 = swift_allocObject();
    v46 = v52;
    v45[2] = v51;
    v45[3] = a3;
    v45[4] = v46;

    v47 = a3;

    DOCRunInMainThread(_:)();
  }

  return result;
}

void closure #2 in closure #2 in closure #1 in DOCFullDocumentManagerViewController.didSelect(_:at:wasAlreadySelected:onlyRevealIfColumnMode:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [objc_opt_self() defaultPermission];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v10[4] = partial apply for closure #1 in closure #2 in closure #2 in closure #1 in DOCFullDocumentManagerViewController.didSelect(_:at:wasAlreadySelected:onlyRevealIfColumnMode:);
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v10[3] = &block_descriptor_309;
  v8 = _Block_copy(v10);
  v9 = a2;

  [v5 adoptPersonaFromNodes:isa andPerformBlock:v8];
  _Block_release(v8);
}

void closure #1 in closure #2 in closure #2 in closure #1 in DOCFullDocumentManagerViewController.didSelect(_:at:wasAlreadySelected:onlyRevealIfColumnMode:)(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = &selRef__setLocationsInBrowseTab_;
  if (![a1 delegate])
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_8:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.UI);

    v8 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315138;
      v23 = type metadata accessor for URL();
      v24 = MEMORY[0x24C1FB0D0](a2, v23);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v31);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2493AC000, v8, v20, "[Interaction] empty delegate for urls %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C1FE850](v22, -1, -1);
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    goto LABEL_13;
  }

  v6 = v5;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.UI);

  swift_unknownObjectRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v3;
    v31 = swift_slowAlloc();
    v12 = v31;
    *v10 = 136315394;
    v13 = type metadata accessor for URL();
    v14 = MEMORY[0x24C1FB0D0](a2, v13);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v31);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v6;
    *v11 = v6;
    swift_unknownObjectRetain();
    _os_log_impl(&dword_2493AC000, v8, v9, "[Interaction] did pick urls %s, going to delegate %@", v10, 0x16u);
    outlined destroy of CharacterSet?(v11, &_sSo8NSObjectCSgMd);
    v17 = v11;
    v4 = &selRef__setLocationsInBrowseTab_;
    MEMORY[0x24C1FE850](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v18 = v12;
    v3 = v29;
    MEMORY[0x24C1FE850](v18, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  swift_unknownObjectRelease();
LABEL_13:

LABEL_14:
  v27 = [v3 v4[285]];
  if (v27)
  {
    v28 = v27;
    if ([v27 respondsToSelector_])
    {
      type metadata accessor for URL();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v28 documentBrowser:v3 didPickDocumentsAtURLs:isa];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.didSelect(_:at:)(DOCConcreteLocation *_, DOCConcreteLocation_optional *at)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v50 - v13;
  if ([v2 delegate])
  {
    v53 = &unk_285D09428;
    v15 = swift_dynamicCastObjCProtocolConditional();
    v16 = v15;
    if (v15)
    {
      if (([v15 respondsToSelector_] & 1) != 0 && (objc_msgSend(v16, sel_documentBrowser_shouldHandleLocation_, v2, _) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_opt_self() searchLocation];
  v18 = v17;
  if (!at)
  {
    if (!v17)
    {
      goto LABEL_16;
    }

LABEL_14:
    DOCFullDocumentManagerViewController.performLocationChangeRequest(_:)(_, at);
    goto LABEL_15;
  }

  if (!v17)
  {
    goto LABEL_14;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v19 = at;
  v20 = static NSObject.== infix(_:_:)();

  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_16:
  v52 = v16;
  v21 = [v3 hierarchyController];
  v22 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v21 + v22, v9, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v23 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v9, 1, v23) == 1)
  {
    v26 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v21 + v26, v14, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);

    if (v25(v9, 1, v23) != 1)
    {
      outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    }
  }

  else
  {

    outlined init with take of DOCHierarchyController.FetchingOperationToken(v9, v14);
    (*(v24 + 56))(v14, 0, 1, v23);
  }

  if (v25(v14, 1, v23) == 1)
  {
    outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  }

  else
  {
    v27 = v14[*(v23 + 24)];
    _s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVWOhTm_0(v14, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    if (v27)
    {
      if (one-time initialization token for UI != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_24;
    }
  }

  v32 = [v3 hierarchyController];
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v34 = *&v32[v33];
  if (v34 >> 62)
  {
    goto LABEL_62;
  }

  v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
LABEL_63:

    v48 = [v3 locationChangePacer];
    (*((*MEMORY[0x277D85000] & *v48) + 0xA8))(_, 0);
    swift_unknownObjectRelease();

    return;
  }

  while (1)
  {
    v36 = v35 - 1;
    if (__OFSUB__(v35, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if ((v34 & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_65:

    v49 = MEMORY[0x24C1FC540](v36, v34);

    v32 = v49;
LABEL_34:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_63;
    }

    v38 = [v3 dataSource];
    _ = (*((*MEMORY[0x277D85000] & *v38) + 0xF0))();

    v54 = MEMORY[0x277D84F90];
    v51 = v32;
    if (_ >> 62)
    {
      v3 = __CocoaSet.count.getter();
    }

    else
    {
      v3 = *((_ & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = 0;
    v32 = (_ & 0xC000000000000001);
    v34 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v3 == v39)
      {

        if (v34 >> 62)
        {
          _ = __CocoaSet.count.getter();
          if (_)
          {
LABEL_50:
            v3 = 0;
            v32 = (v34 & 0xFFFFFFFFFFFFFF8);
            do
            {
              if ((v34 & 0xC000000000000001) != 0)
              {
                v45 = MEMORY[0x24C1FC540](v3, v34);
              }

              else
              {
                if (v3 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_61;
                }

                v45 = *(v34 + 8 * v3 + 32);
              }

              v46 = v45;
              v47 = (v3 + 1);
              if (__OFADD__(v3, 1))
              {
                goto LABEL_60;
              }

              [v45 setActive_];

              ++v3;
            }

            while (v47 != _);
          }
        }

        else
        {
          _ = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (_)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_15;
      }

      if (v32)
      {
        v40 = MEMORY[0x24C1FC540](v39, _);
      }

      else
      {
        if (v39 >= *((_ & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v40 = *(&_->_promptText + v39);
      }

      v41 = v40;
      v42 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v43 = [v40 navigationItem];
      v44 = [v43 searchController];

      ++v39;
      if (v44)
      {
        MEMORY[0x24C1FB090]();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v34 = v54;
        v39 = v42;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    v35 = __CocoaSet.count.getter();
    if (!v35)
    {
      goto LABEL_63;
    }
  }

  if ((v36 & 0x8000000000000000) == 0)
  {
    if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_67;
    }

    v37 = *(v34 + 8 * v36 + 32);

    v32 = v37;
    goto LABEL_34;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  swift_once();
LABEL_24:
  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.UI);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2493AC000, v29, v30, "The hierarchy controller is fetching location. Skipping the browsing.", v31, 2u);
    MEMORY[0x24C1FE850](v31, -1, -1);
  }

LABEL_15:
  swift_unknownObjectRelease();
}

void DOCFullDocumentManagerViewController.didCommitPreview(of:)(void *a1)
{
  v3 = [objc_opt_self() defaultManager];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v8[4] = partial apply for closure #1 in DOCFullDocumentManagerViewController.didCommitPreview(of:);
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v8[3] = &block_descriptor_17_3;
  v5 = _Block_copy(v8);
  v6 = a1;
  v7 = v1;

  [v3 fetchURLForItem:v6 completionHandler:v5];
  _Block_release(v5);
}

uint64_t closure #1 in DOCFullDocumentManagerViewController.didCommitPreview(of:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v29 - v19;
  if (a2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_249B9FA70;
    *(v21 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    *(v21 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
    *(v21 + 32) = a3;
    v22 = a3;
    v23 = _convertErrorToNSError(_:)();
    *(v21 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    *(v21 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
    *(v21 + 72) = v23;
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(a1, v11, &_s10Foundation3URLVSgMd);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
      if (one-time initialization token for UI != -1)
      {
        goto LABEL_11;
      }

      while (1)
      {
        static os_log_type_t.error.getter();
        __break(1u);
LABEL_11:
        swift_once();
      }
    }

    v25 = *(v13 + 32);
    v25(v20, v11, v12);
    (*(v13 + 16))(v16, v20, v12);
    v26 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = a4;
    v25((v27 + v26), v16, v12);
    v28 = a4;
    DOCRunInMainThread(_:)();

    return (*(v13 + 8))(v20, v12);
  }
}

void closure #1 in closure #1 in DOCFullDocumentManagerViewController.didCommitPreview(of:)(void *a1, uint64_t a2)
{
  v4 = [a1 delegate];
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector_] & 1) != 0 && (objc_msgSend(v5, sel_respondsToSelector_, sel_documentBrowser_didPickDocumentsAtURLs_))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
      v6 = type metadata accessor for URL();
      v7 = *(v6 - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_249B9A480;
      (*(v7 + 16))(v9 + v8, a2, v6);
      swift_unknownObjectRetain();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 documentBrowser:a1 didPickDocumentsAtURLs:isa];
      swift_unknownObjectRelease_n();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void *isColumnMode #1 () in DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(void *result)
{
  if (result)
  {
    v1 = [result splitBrowserViewController];
    v2 = [v1 fullDocumentManagerViewController];

    v3 = [v2 effectiveBrowserViewController];
    if (v3)
    {
      v4 = MEMORY[0x277D85000];
      v5 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();

      if (v5)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          v7 = (*((*v4 & *v6) + 0xBD8))();

          return (v7 == 3);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t closure #2 in DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v50 = a4;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v51 = *(v16 - 8);
  v52 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v49 = v12;
    v20 = a5;
    swift_unknownObjectRetain();
    if ([a3 isTrashed])
    {
      v21 = [objc_opt_self() trashedItemsLocation];
    }

    else
    {
      swift_getObjectType();
      v41 = DOCNode.sourceIdentifier.getter();
      v21 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v41 node:a1];
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v38 = static OS_dispatch_queue.main.getter();
    v42 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v44 = swift_allocObject();
    v44[2] = a7;
    v44[3] = v21;
    v44[4] = v42;
    v44[5] = a3;
    v44[6] = v50;
    v44[7] = v20;
    v59 = partial apply for closure #2 in closure #2 in DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:);
    v60 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v56 = 1107296256;
    v57 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v58 = &block_descriptor_162;
    v45 = _Block_copy(&aBlock);
    v46 = v21;
    swift_unknownObjectRetain();

    v47 = a7;

    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_13(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v12 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v19, v15, v45);
    _Block_release(v45);

    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.UI);
    swift_unknownObjectRetain();
    v23 = a2;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49 = v12;
      v28 = a5;
      v29 = v27;
      aBlock = v27;
      *v26 = 136315394;
      v54 = a3;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v30 = String.init<A>(describing:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &aBlock);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      v54 = a2;
      v33 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v34 = String.init<A>(describing:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &aBlock);

      *(v26 + 14) = v36;
      _os_log_impl(&dword_2493AC000, v24, v25, "Cannot load parent: Error fetching parent of node %s error %s", v26, 0x16u);
      swift_arrayDestroy();
      v37 = v29;
      a5 = v28;
      v12 = v49;
      MEMORY[0x24C1FE850](v37, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v38 = static OS_dispatch_queue.main.getter();
    v39 = swift_allocObject();
    *(v39 + 16) = v50;
    *(v39 + 24) = a5;
    v59 = partial apply for closure #1 in closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.listLayoutConfiguration.getter;
    v60 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v56 = 1107296256;
    v57 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v58 = &block_descriptor_155_0;
    v40 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_13(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v19, v15, v40);
    _Block_release(v40);
  }

  (*(v53 + 8))(v15, v12);
  return (*(v51 + 8))(v19, v52);
}

void closure #2 in closure #2 in DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v14[4] = partial apply for closure #1 in closure #2 in closure #2 in DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:);
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v14[3] = &block_descriptor_168_0;
  v13 = _Block_copy(v14);

  swift_unknownObjectRetain();

  [a1 revealLocation:a2 animated:0 completion:v13];
  _Block_release(v13);
}

uint64_t closure #1 in closure #2 in closure #2 in DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v11 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #2 in closure #2 in DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_175_0;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_13(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v14, v10, v19);
  _Block_release(v19);

  (*(v23 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v22);
}

void closure #1 in closure #1 in closure #2 in closure #2 in DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong effectiveBrowserViewController];
    if (v9)
    {
      v10 = v9;
      v11 = (*((*MEMORY[0x277D85000] & *v9) + 0xE8))();

      if (v11)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v12 = swift_dynamicCastClass();
        if (v12)
        {
          v13 = v12;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_249BA0290;
          *(v14 + 32) = a2;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
          isa = Array._bridgeToObjectiveC()().super.isa;

          aBlock[4] = a3;
          aBlock[5] = a4;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
          aBlock[3] = &block_descriptor_178_0;
          v16 = _Block_copy(aBlock);

          [v13 revealWithNodes:isa selectEvenIfVisible:0 completionBlock:v16];
          _Block_release(v16);

          return;
        }

        v8 = v11;
      }
    }
  }

  a3(0);
}

void DOCFullDocumentManagerViewController.didTapLocation(of:)(void *a1)
{
  v3 = [v1 presentedViewController];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    v12[4] = partial apply for closure #1 in DOCFullDocumentManagerViewController.didTapLocation(of:);
    v12[5] = v5;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v12[3] = &block_descriptor_26_3;
    v6 = _Block_copy(v12);
    v7 = v1;
    v8 = a1;

    [v4 dismissViewControllerAnimated:1 completion:v6];
    _Block_release(v6);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = a1;
    v10 = v1;
    v11 = a1;
    DOCFullDocumentManagerViewController.dismissSharedSearchControllerIfNeeded(animated:completion:)(1, partial apply for reveal #1 () in DOCFullDocumentManagerViewController.didTapLocation(of:), v9);
  }
}

void closure #1 in DOCFullDocumentManagerViewController.didTapLocation(of:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;
  v6 = a2;
  v7 = v5;
  v8 = v6;
  v9 = v7;
  v10 = v8;
  v11 = [v9 effectiveSearchController];
  if (v11)
  {
    v12 = v11;

    if ([v12 isActive])
    {

      v13 = [v12 searchBar];
      v14 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
      [v13 setText_];

      v15 = swift_allocObject();
      *(v15 + 16) = reveal #1 () in DOCFullDocumentManagerViewController.didTapLocation(of:)partial apply;
      *(v15 + 24) = v4;
      v17[4] = closure #1 in DOCFullDocumentManagerViewController.dismissSharedSearchControllerIfNeeded(animated:completion:)partial apply;
      v17[5] = v15;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 1107296256;
      v17[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v17[3] = &block_descriptor_290_1;
      v16 = _Block_copy(v17);

      [v12 dismissViewControllerAnimated:1 completion:v16];

      _Block_release(v16);
      return;
    }

    specialized DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(v10, 0, DOCGridLayout.specIconWidth.modify, 0, v9);
  }

  else
  {
    specialized DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(v10, 0, DOCGridLayout.specIconWidth.modify, 0, v9);
  }
}

void DOCFullDocumentManagerViewController.dismissSharedSearchControllerIfNeeded(animated:completion:)(char a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = [v4 effectiveSearchController];
  if (v8)
  {
    v13 = v8;
    if ([v8 isActive])
    {
      v9 = [v13 searchBar];
      v10 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
      [v9 setText_];

      v11 = swift_allocObject();
      *(v11 + 16) = a2;
      *(v11 + 24) = a3;
      aBlock[4] = partial apply for closure #1 in DOCFullDocumentManagerViewController.dismissSharedSearchControllerIfNeeded(animated:completion:);
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_32_3;
      v12 = _Block_copy(aBlock);
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);

      [v13 dismissViewControllerAnimated:a1 & 1 completion:v12];

      _Block_release(v12);
    }

    else
    {
      if (a2)
      {
        a2();
      }
    }
  }

  else if (a2)
  {
    a2();
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.didIndicateCancelPicker()()
{
  v1 = [v0 configuration];
  v2 = [v1 isPickerUI];

  if (v2)
  {
    if ([v0 delegate])
    {
      v15 = &unk_285D09428;
      v3 = swift_dynamicCastObjCProtocolConditional();
      if (v3)
      {
        v4 = v3;
        if ([v3 respondsToSelector_])
        {
          if ([v4 respondsToSelector_])
          {
            [v4 documentManagerWasCancelled_];
          }
        }
      }

      swift_unknownObjectRelease();
    }

    v5 = [v0 delegate];
    if (v5 && (v6 = [v5 respondsToSelector_], swift_unknownObjectRelease(), v6))
    {
      v7 = [v0 delegate];
      if (v7)
      {
        v8 = v7;
        if ([v7 respondsToSelector_])
        {
          type metadata accessor for URL();
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v8 documentBrowser:v0 didPickDocumentsAtURLs:isa];
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.UI);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v16 = v14;
        *v13 = 136315138;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BF7750, &v16);
        _os_log_impl(&dword_2493AC000, v11, v12, "%s no delegate method implemented to handle cancel picker", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x24C1FE850](v14, -1, -1);
        MEMORY[0x24C1FE850](v13, -1, -1);
      }
    }
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.didFinishGatheringItemsAndThumbnails(sender:)(UIViewController_optional *sender)
{
  v3 = [v1 fullDocumentManagerDelegate];
  if (v3)
  {
    [v3 fullDocumentManagerDidFinishGatheringItemsAndThumbnails_];
    swift_unknownObjectRelease();
  }

  if ([v1 delegate])
  {
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      [v4 fullDocumentManagerDidFinishGatheringItemsAndThumbnails_];
    }

    swift_unknownObjectRelease();
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = sender;
  aBlock[4] = partial apply for closure #2 in DOCFullDocumentManagerViewController.didFinishGatheringItemsAndThumbnails(sender:);
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_38_5;
  v7 = _Block_copy(aBlock);
  v8 = sender;

  [v5 performAfterCATransactionCommits_];
  _Block_release(v7);
}

void closure #2 in DOCFullDocumentManagerViewController.didFinishGatheringItemsAndThumbnails(sender:)(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 postNotificationName:@"DOCFullDocumentManagerViewControllerDidFinishLoadingNotificationName" object:a1];
}

Swift::Bool __swiftcall DOCFullDocumentManagerViewController.canLoadAdditionalParents()()
{
  v1 = [v0 hierarchyController];
  IsHidingParent = DOCHierarchyController.effectiveRootLocationIsHidingParentLocations.getter();

  return IsHidingParent & 1;
}

uint64_t DOCFullDocumentManagerViewController.beginLoadingAdditionalParents(_:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 hierarchyController];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  DOCHierarchyController.loadAllParentsHiddenByEffectiveRootLocation(_:)(partial apply for closure #1 in closure #1 in FavoritesSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:), v6);
}

uint64_t DOCFullDocumentManagerViewController.isBrowserCurrentLocation(_:)()
{
  v1 = [v0 hierarchyController];
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:

    goto LABEL_12;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_15:

    v6 = MEMORY[0x24C1FC540](v5, v3);

LABEL_8:
    v7 = [v6 node];

    if (v7)
    {
      swift_getObjectType();
      v8 = DOCNode.isEqualTo(node:)();
      swift_unknownObjectRelease();
      return v8 & 1;
    }

LABEL_12:
    v8 = 0;
    return v8 & 1;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall DOCFullDocumentManagerViewController.infoPanelPreviewingMultipleItems()()
{
  v1 = v0;
  v2 = [v0 dataSource];
  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0x188))();

  if (v3 == 3)
  {
    v4 = [v1 hierarchyController];
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v6 = *&v4[v5];
    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
      if (v7)
      {
LABEL_4:
        v8 = v7 - 1;
        if (__OFSUB__(v7, 1))
        {
          __break(1u);
        }

        else if ((v6 & 0xC000000000000001) == 0)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v9 = *(v6 + 8 * v8 + 32);

            v4 = v9;
LABEL_9:
            type metadata accessor for DOCConcreteSelectionLocation();
            v10 = swift_dynamicCastClass() != 0;
LABEL_13:

            goto LABEL_14;
          }

          __break(1u);
          return v7;
        }

        v11 = MEMORY[0x24C1FC540](v8, v6);

        v4 = v11;
        goto LABEL_9;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v10 = 0;
    goto LABEL_13;
  }

  v10 = 0;
LABEL_14:
  LOBYTE(v7) = v10;
  return v7;
}

void DOCFullDocumentManagerViewController.beginRename(of:)(void *a1)
{
  v3 = [objc_opt_self() defaultManager];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = v1;
  v9[4] = partial apply for closure #1 in DOCFullDocumentManagerViewController.beginRename(of:);
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_50_5;
  v6 = _Block_copy(v9);
  v7 = a1;
  v8 = v1;

  [v3 fetchURLForItem:v7 completionHandler:v6];
  _Block_release(v6);
}

uint64_t performRename #1 (of:in:) in DOCFullDocumentManagerViewController.beginRename(of:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v65 - v9;
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *a2) + 0xCB8))(v8);
  swift_getObjectType();
  v13 = specialized Array<A>.contains(node:)(a1, v12);

  if (!v13)
  {
    if (one-time initialization token for UI == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  v14 = (*((*v11 & *a2) + 0x18D0))(a1);
  if (!v14)
  {
    if (one-time initialization token for UI == -1)
    {
LABEL_17:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_249B9A480;
      v53 = DOCNode.nodeDescription.getter();
      v55 = v54;
      *(v52 + 56) = MEMORY[0x277D837D0];
      *(v52 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;
      os_log(_:dso:log:type:_:)();
      goto LABEL_18;
    }

LABEL_30:
    swift_once();
    goto LABEL_17;
  }

  v15 = *((*v11 & *a2) + 0x19C0);
  v16 = v14;
  v17 = v14;
  LOBYTE(v16) = v15(v16);

  if (v16)
  {
    type metadata accessor for DOCInlineRenameController();
    v18 = swift_allocObject();
    v19 = v17;
    v20 = a2;
    v68 = v10;
    v21 = v20;
    swift_unknownObjectRetain();
    v22 = specialized DOCInlineRenameController.init(delegate:cell:node:)(v21, v19, a1, v18);
    v70 = v19;

    v23 = swift_unknownObjectRelease();
    v24 = *((*v11 & *v21) + 0xBD8);
    v25 = (v24)(v23) == 0;
    (*(*v22 + 232))(v25);
    v26 = *v11 & *v21;
    v27 = v11;
    v28 = a3;
    v29 = *(v26 + 5280);

    v69 = v22;
    v31 = v21;
    v29(v30);
    v32 = v28;
    v33 = v27;
    v34 = [v32 traitCollection];
    v35 = [v34 horizontalSizeClass];

    v36 = v68;
    v37 = (*((*v27 & *v31) + 0xB20))();
    if (v37)
    {
      v38 = v37;
      if (v24() == 2 && v35 != 1)
      {
        v39 = v38;
        if ([v39 isScrollEnabled])
        {
          [v39 contentSize];
          v41 = v40;

          [v39 bounds];
          if (CGRectGetWidth(v72) < v41)
          {
            v42 = v70;
            v67 = [v42 indentationLevel];
            v43 = [v32 configuration];
            v66 = specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSetting(configuration:)(v43);

            v44 = dbl_249BBB160[v66];
            v45 = [v32 traitCollection];
            v46 = [v45 preferredContentSizeCategory];

            LOBYTE(v45) = UIContentSizeCategory.isAccessibilityCategory.getter();
            if (v45)
            {
              v47 = [objc_opt_self() defaultMetrics];
              [v47 scaledValueForValue_];
              v44 = v48;
            }

            v49 = vcvtd_n_f64_s64(v67, 1uLL) * v44;
            v50 = [v42 indentationLevel];

            v51 = v49 + 10.0;
            if (!v50)
            {
              v51 = 0.0;
            }

            [v39 setContentOffset:1 animated:v51];
          }
        }

        else
        {
        }
      }
    }

    v59 = type metadata accessor for IndexPath();
    (*(*(v59 - 8) + 56))(v36, 1, 1, v59);
    DOCItemCollectionViewController.rememberLastFocusedItem(_:)(v36);
    outlined destroy of CharacterSet?(v36, &_s10Foundation9IndexPathVSgMd);
    v60 = *((*v33 & *v31) + 0x8D8);
    v61 = v69;

    v63 = v60(v62);
    if (v63)
    {

      v64 = *((*v33 & *v31) + 0x910);

      v64(partial apply for closure #1 in closure #1 in closure #1 in static UIDocumentBrowserAction.renameAction(), v61);
    }

    else
    {
      (*(*v61 + 432))();
    }
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_249B9A480;
  *(v57 + 56) = type metadata accessor for DOCItemCollectionCell();
  *(v57 + 64) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_13(&lazy protocol witness table cache variable for type DOCItemCollectionCell and conformance NSObject, type metadata accessor for DOCItemCollectionCell);
  *(v57 + 32) = v17;
  v58 = v17;
  os_log(_:dso:log:type:_:)();

LABEL_18:
}

uint64_t closure #1 in DOCFullDocumentManagerViewController.beginRename(of:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v38 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v36 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    outlined init with copy of DOCGridLayout.Spec?(a1, v11, &_s10Foundation3URLVSgMd);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_249B9A480;
      if (a2)
      {
        swift_getErrorValue();
        a2 = Error.localizedDescription.getter();
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
      v34 = 4271950;
      if (v25)
      {
        v34 = a2;
      }

      v35 = 0xE300000000000000;
      if (v25)
      {
        v35 = v25;
      }

      *(v23 + 32) = v34;
      *(v23 + 40) = v35;
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      v36 = *(v13 + 32);
      v37 = a5;
      v36(v20, v11, v12);
      (*(v13 + 16))(v16, v20, v12);
      v26 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v22;
      v28 = v22;
      v29 = v38;
      *(v27 + 24) = v38;
      v36((v27 + v26), v16, v12);
      v30 = v37;
      *(v27 + ((v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;
      v31 = v28;
      v32 = v29;
      v33 = v30;
      DOCRunInMainThread(_:)();

      return (*(v13 + 8))(v20, v12);
    }
  }

  return result;
}

void closure #1 in closure #1 in DOCFullDocumentManagerViewController.beginRename(of:)(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v50 - v11;
  v13 = [a1 effectiveBrowserViewController];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = MEMORY[0x277D85000];
  v55 = (*((*MEMORY[0x277D85000] & *v13) + 0xE8))();

  if (!v55)
  {
    return;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = type metadata accessor for URL();
    v19 = a3;
    v20 = *(v18 - 8);
    v21 = *(v20 + 16);
    v54 = v19;
    v21(v12);
    (*(v20 + 56))(v12, 0, 1, v18);
    v22 = (*((*v15 & *v17) + 0xDA0))(a2, v12);
    v23 = outlined destroy of CharacterSet?(v12, &_s10Foundation3URLVSgMd);
    if (v22)
    {
      v24 = a2;
      v25 = (*((*v15 & *v17) + 0xCB8))(v23);
      swift_getObjectType();
      v26 = swift_unknownObjectRetain();
      v27 = specialized Array<A>.contains(node:)(v26, v25);

      swift_unknownObjectRelease();
      if (v27)
      {
        performRename #1 (of:in:) in DOCFullDocumentManagerViewController.beginRename(of:)(v22, v17, a4);
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
      a2 = v24;
    }

    v29 = [a1 dataSource];
    v30 = (*((*v15 & *v29) + 0x108))();

    v56 = MEMORY[0x277D84F90];
    if (v30 >> 62)
    {
LABEL_32:
      v31 = __CocoaSet.count.getter();
      v51 = a4;
      if (v31)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v51 = a4;
      if (v31)
      {
LABEL_13:
        v32 = 0;
        a4 = (v30 & 0xC000000000000001);
        v52 = a2;
        v53 = MEMORY[0x277D84F90];
        while (1)
        {
          a2 = v32;
          while (1)
          {
            if (a4)
            {
              v33 = MEMORY[0x24C1FC540](a2, v30);
            }

            else
            {
              if (a2 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_31;
              }

              v33 = *(v30 + 8 * a2 + 32);
            }

            v34 = v33;
            v32 = (a2 + 1);
            if (__OFADD__(a2, 1))
            {
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

            v35 = (*((*v15 & *v33) + 0xE8))();

            if (v35)
            {
              break;
            }

LABEL_16:
            ++a2;
            if (v32 == v31)
            {
              a2 = v52;
              goto LABEL_34;
            }
          }

          if (!swift_dynamicCastClass())
          {
            break;
          }

          MEMORY[0x24C1FB090]();
          if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v53 = v56;
          a2 = v52;
          if (v32 == v31)
          {
LABEL_34:

            v56 = 0;
            MEMORY[0x28223BE20](v36, v37);
            *(&v50 - 4) = &v56;
            *(&v50 - 3) = a2;
            v38 = v53;
            *(&v50 - 2) = v54;
            v39 = specialized Sequence.first(where:)(partial apply for closure #2 in closure #1 in closure #1 in DOCFullDocumentManagerViewController.beginRename(of:), (&v50 - 6), v38);

            if (v39 && v56)
            {
              v40 = swift_unknownObjectRetain();
              performRename #1 (of:in:) in DOCFullDocumentManagerViewController.beginRename(of:)(v40, v39, v51);

              swift_unknownObjectRelease();
              v39 = v55;
            }

            else
            {
              if (one-time initialization token for UI != -1)
              {
                swift_once();
              }

              static os_log_type_t.error.getter();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
              v41 = swift_allocObject();
              *(v41 + 16) = xmmword_249B9A480;
              objc_opt_self();
              v42 = swift_dynamicCastObjCClass();
              if (v42)
              {
                v43 = v42;
                v44 = a2;
                v45 = [v43 description];
                v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v48 = v47;
              }

              else
              {
                v45 = [a2 displayName];
                v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v48 = v49;
              }

              *(v41 + 56) = MEMORY[0x277D837D0];
              *(v41 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v41 + 32) = v46;
              *(v41 + 40) = v48;
              os_log(_:dso:log:type:_:)();
            }

            swift_unknownObjectRelease();
            return;
          }
        }

        goto LABEL_16;
      }
    }

    v53 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v28 = v55;
}

BOOL closure #2 in closure #1 in closure #1 in DOCFullDocumentManagerViewController.beginRename(of:)(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v22 - v10;
  v12 = *a1;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a4, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  v15 = MEMORY[0x277D85000];
  v16 = (*((*MEMORY[0x277D85000] & *v12) + 0xDA0))(a3, v11);
  outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
  *a2 = v16;
  swift_unknownObjectRetain();
  v17 = swift_unknownObjectRelease();
  if (v16)
  {
    v18 = (*((*v15 & *v12) + 0xCB8))(v17);
    swift_getObjectType();
    v19 = swift_unknownObjectRetain();
    v20 = specialized Array<A>.contains(node:)(v19, v18);

    swift_unknownObjectRelease_n();
  }

  else
  {
    return 0;
  }

  return v20;
}

void DOCFullDocumentManagerViewController.createNewFolder(in:moving:)(uint64_t a1, unint64_t a2)
{
  v5 = [v2 effectiveBrowserViewController];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x277D85000];
    v11 = (*((*MEMORY[0x277D85000] & *v5) + 0xE8))();

    if (v11)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;
        if (a2)
        {

          if (a2 >> 62)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
            v10 = _bridgeCocoaArray<A>(_:)();

            a2 = v10;
          }

          else
          {
            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          }
        }

        (*((*v7 & *v9) + 0x1558))(a1, a2);
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.dismissInlineRename()()
{
  v0 = DOCFullDocumentManagerViewController.inlineEditingViewController.getter();
  if (v0)
  {
    v1 = v0;
    v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1498))();

    if (v2)
    {
      (*(*v2 + 472))();
    }
  }
}

uint64_t DOCFullDocumentManagerViewController.updateSorting(_:)(unsigned __int8 *a1)
{
  v2 = v1;
  v27 = *a1;
  v3 = *(a1 + 2);
  v26 = *(a1 + 1);
  v25 = a1[24];
  v4 = DOCFullDocumentManagerViewController.inlineEditingViewController.getter();
  v5 = MEMORY[0x277D85000];
  if (v4)
  {
    v6 = v4;
    v7 = (*((*MEMORY[0x277D85000] & *v4) + 0x1498))();

    if (v7)
    {
      (*(*v7 + 472))();
    }
  }

  v8 = [v2 dataSource];
  v9 = (*((*v5 & *v8) + 0x108))();

  v28[0] = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
LABEL_25:
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_26:
    v24 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_26;
  }

LABEL_6:
  v11 = 0;
  v24 = MEMORY[0x277D84F90];
  do
  {
    v12 = v11;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C1FC540](v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v15 = (*((*v5 & *v13) + 0xE8))();

      if (v15)
      {
        break;
      }

LABEL_9:
      ++v12;
      if (v11 == v10)
      {
        goto LABEL_27;
      }
    }

    type metadata accessor for DOCItemCollectionViewController(0);
    if (!swift_dynamicCastClass())
    {

      goto LABEL_9;
    }

    MEMORY[0x24C1FB090]();
    if (*((v28[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v24 = v28[0];
  }

  while (v11 != v10);
LABEL_27:

  v16 = DOCFullDocumentManagerViewController.searchResultsItemCollectionViewControllers.getter();
  v28[0] = v24;
  specialized Array.append<A>(contentsOf:)(v16);
  if (v24 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v28[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v18 = 0;
    while ((v24 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x24C1FC540](v18, v24);
      v19 = MEMORY[0x277D85000];
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_37;
      }

LABEL_33:
      v28[0] = v27;
      v28[1] = v26;
      v28[2] = v3;
      v29 = v25;
      v22 = *((*v19 & *v20) + 0x1168);

      v22(v28);

      ++v18;
      if (v21 == i)
      {
        goto LABEL_40;
      }
    }

    v19 = MEMORY[0x277D85000];
    if (v18 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    v20 = *(v24 + 8 * v18 + 32);
    v21 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_33;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_40:
}

void DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(uint64_t a1, void *a2, char a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v12 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    importUsingPicker #1 (at:) in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(a1, v3, a2);
    return;
  }

  v51 = v11;
  v14 = [v3 hierarchyController];
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v16 = *&v14[v15];
  if (v16 >> 62)
  {
    v17 = __CocoaSet.count.getter();
    v18 = &selRef__setLocationsInBrowseTab_;
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = &selRef__setLocationsInBrowseTab_;
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  v19 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
    __break(1u);
  }

  else if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v16 + 8 * v19 + 32);

      v14 = v20;
      goto LABEL_9;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v47 = MEMORY[0x24C1FC540](v19, v16);

  v14 = v47;
LABEL_9:
  v21 = [v14 v18[408]];
  if (v21)
  {
    v22 = v21;
    v50 = v8;
    v23 = *MEMORY[0x277CC6028];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v22;
    v25 = v22;
    LOBYTE(v23) = specialized static DOCActionManager.canPerform(_:on:)(v23, inited);
    swift_setDeallocating();
    swift_arrayDestroy();

    if (v23)
    {
      v26 = [v3 documentManager];
      v27 = swift_allocObject();
      *(v27 + 16) = a2;
      *(v27 + 24) = v3;
      v28 = *((*MEMORY[0x277D85000] & *v26) + 0x120);
      v29 = a2;
      v30 = v3;
      v28(a1, 2, partial apply for closure #1 in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:), v27);

      return;
    }

    v8 = v50;
    v18 = &selRef__setLocationsInBrowseTab_;
  }

LABEL_16:

  v14 = [v3 hierarchyController];
  v31 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v19 = *&v14[v31];
  if (v19 >> 62)
  {
    v32 = __CocoaSet.count.getter();
    if (!v32)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v32 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v32)
    {
LABEL_27:

      importUsingPicker #1 (at:) in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(a1, v3, a2);
      return;
    }
  }

  v16 = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    goto LABEL_37;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_38:

    v33 = MEMORY[0x24C1FC540](v16, v19);

    goto LABEL_23;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v16 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_40:
    __break(1u);
    return;
  }

  v33 = *(v19 + 8 * v16 + 32);

LABEL_23:
  v34 = [v33 v18[408]];
  if (!v34)
  {
    v14 = v33;
    goto LABEL_27;
  }

  v14 = v34;
  if ([v34 isFolder])
  {

    goto LABEL_27;
  }

  v50 = [objc_opt_self() defaultManager];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = a1;
  v37 = v51;
  (v8[2])(&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v51);
  v38 = *(v8 + 80);
  v48 = a2;
  v49 = v33;
  v39 = (v38 + 24) & ~v38;
  v40 = (v9 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = v35;
  (v8[4])(v41 + v39, v13, v37);
  v42 = v48;
  *(v41 + v40) = v48;
  *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;
  aBlock[4] = partial apply for closure #2 in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:);
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_57_4;
  v43 = _Block_copy(aBlock);
  v44 = v42;
  v45 = v3;

  v46 = v50;
  [v50 fetchURLForItem:v14 completionHandler:v43];
  _Block_release(v43);
}

void closure #1 in revealAndRename #1 (at:) in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    URL._bridgeToObjectiveC()(v1);
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    aBlock[4] = partial apply for closure #1 in closure #1 in revealAndRename #1 (at:) in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:);
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_247;
    v6 = _Block_copy(aBlock);
    v7 = v2;

    [v7 revealDocumentAtURL:v4 importIfNeeded:0 updateLastUsedDate:0 completion:v6];
    _Block_release(v6);
  }
}

uint64_t closure #1 in closure #1 in revealAndRename #1 (at:) in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = aBlock - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v8, &_s10Foundation3URLVSgMd);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd);
  }

  (*(v10 + 32))(v13, v8, v9);
  v15 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in revealAndRename #1 (at:) in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_253_2;
  v20 = _Block_copy(aBlock);
  v21 = a3;

  [v15 fetchItemForURL:v18 completionHandler:v20];
  _Block_release(v20);

  return (*(v10 + 8))(v13, v9);
}

void closure #1 in closure #1 in closure #1 in revealAndRename #1 (at:) in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = v13;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v16 = a1;
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = v16;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in revealAndRename #1 (at:) in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_259;
    v19 = _Block_copy(aBlock);
    v20 = v16;
    v21 = a3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_13(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v15, v9, v19);
    _Block_release(v19);

    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v15, v23);
  }
}

void importUsingPicker #1 (at:) in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(uint64_t a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249B9A480;
  (*(v7 + 16))(v9 + v8, a1, v6);
  v10 = objc_allocWithZone(MEMORY[0x277D75458]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initForExportingURLs:isa asCopy:1];

  [v12 setDelegate_];
  [a2 setPickerPresentingController_];
  [a3 presentViewController:v12 animated:1 completion:0];
}

uint64_t closure #2 in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v47 = a6;
  v53 = a4;
  v54 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v46 - v10;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v22 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v46 - v25;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;
    if (a2)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v29 = static OS_dispatch_queue.main.getter();
      (*(v19 + 16))(v26, v53, v18);
      v30 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v31 = (v20 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = swift_allocObject();
      (*(v19 + 32))(v32 + v30, v26, v18);
      *(v32 + v31) = v28;
      v33 = v54;
      *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v54;
      aBlock[4] = partial apply for closure #1 in closure #2 in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:);
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_268_1;
      v34 = _Block_copy(aBlock);
      v35 = v28;
      v36 = v33;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_13(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v37 = v49;
      v38 = v52;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v17, v37, v34);
      _Block_release(v34);

      (*(v51 + 8))(v37, v38);
      return (*(v48 + 8))(v17, v50);
    }

    else
    {
      outlined init with copy of DOCGridLayout.Spec?(a1, v11, &_s10Foundation3URLVSgMd);
      if ((*(v19 + 48))(v11, 1, v18) == 1)
      {

        return outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
      }

      else
      {
        (*(v19 + 32))(v22, v11, v18);
        v39 = [v28 documentManager];
        v40 = swift_allocObject();
        v41 = v54;
        v42 = v47;
        *(v40 + 16) = v54;
        *(v40 + 24) = v42;
        v43 = *((*MEMORY[0x277D85000] & *v39) + 0x100);
        v44 = v41;
        v45 = v42;
        v43(v53, v22, 2, partial apply for closure #2 in closure #2 in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:), v40);

        return (*(v19 + 8))(v22, v18);
      }
    }
  }

  return result;
}

void closure #1 in closure #2 in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(uint64_t a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249B9A480;
  (*(v7 + 16))(v9 + v8, a1, v6);
  v10 = objc_allocWithZone(MEMORY[0x277D75458]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initForExportingURLs_];

  [v12 setDelegate_];
  [a2 setPickerPresentingController_];
  [a3 presentViewController:v12 animated:1 completion:0];
}

id closure #1 in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a6;
  v33 = a7;
  v30 = a4;
  v31 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v17 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v28 - v20;
  outlined init with copy of DOCGridLayout.Spec?(a1, v12, &_s10Foundation3URLVSgMd);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v12, &_s10Foundation3URLVSgMd);
    return [a3 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v29 = a3;
    v23 = *(v14 + 32);
    v23(v21, v12, v13);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v14 + 16))(v17, v21, v13);
    v25 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v23((v26 + v25), v17, v13);
    aBlock[4] = v32;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = v33;
    v27 = _Block_copy(aBlock);

    [v29 dismissViewControllerAnimated:1 completion:v27];
    _Block_release(v27);
    return (*(v14 + 8))(v21, v13);
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.documentPickerWasCancelled(_:)(UIDocumentPickerViewController *a1)
{
  if (specialized static DOCDocumentScannerUtil.canPresentScanner.getter())
  {
    v2 = [v1 pickerPresentingController];
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        [v4 removeSaveActionBlockerForFiles];
      }
    }
  }

  [v1 setPickerPresentingController_];
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.documentPicker(_:didPickDocumentsAt:)(UIDocumentPickerViewController *_, Swift::OpaquePointer didPickDocumentsAt)
{
  v3 = [v2 pickerPresentingController];
  if (v3)
  {
    v4 = v3;
    [v3 dismissViewControllerAnimated:1 completion:0];
  }

  [v2 setPickerPresentingController_];
}

void DOCFullDocumentManagerViewController.itemCollectionViewController(_:didScanDocumentAt:)(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v3 = v2;
  [v1 importScannedDocumentAt:v2 presentingController:v1 importToCurrentLocation:1];
}

uint64_t DOCFullDocumentManagerViewController.isTopMostItemCollectionViewController(_:)(void *a1)
{
  v3 = [v1 effectiveBrowserViewController];
  if (v3 && (v4 = v3, v5 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))(), v4, v5))
  {
    type metadata accessor for DOCItemCollectionViewController(0);
    if (swift_dynamicCastClass())
    {
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      v5 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t DOCFullDocumentManagerViewController.isActiveColumnItemCollectionViewController(_:)()
{
  v1 = [v0 internalNavigationController];
  v2 = [v1 topViewController];

  if (!v2)
  {
LABEL_18:
    if (one-time initialization token for UI == -1)
    {
LABEL_19:
      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.UI);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = v19;
        *v18 = 136315138;
        *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BF7770, &v20);
        _os_log_impl(&dword_2493AC000, v16, v17, "%s No column view controller available", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x24C1FE850](v19, -1, -1);
        MEMORY[0x24C1FE850](v18, -1, -1);
      }

      return 0;
    }

LABEL_26:
    swift_once();
    goto LABEL_19;
  }

  type metadata accessor for DOCColumnViewController(0);
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

    goto LABEL_18;
  }

  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v3) + 0xB0))();
  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

  v7 = __CocoaSet.count.getter();
  if (v7)
  {
LABEL_7:
    while (!__OFSUB__(v7--, 1))
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v7, v6);
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v9 = *(v6 + 32 + 8 * v7);
      }

      v10 = v9;
      v11 = (*((*v4 & *v9) + 0xE8))();
      if (v11)
      {
        v12 = v11;
        type metadata accessor for DOCItemCollectionViewController(0);
        if (swift_dynamicCastClass())
        {

          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
          v13 = static NSObject.== infix(_:_:)();

          return v13 & 1;
        }

        v10 = v12;
      }

      if (!v7)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_28:

  return 0;
}

uint64_t protocol witness for DOCItemCollectionViewControllerInteractionDelegate.isTopMostItemCollectionViewController(_:) in conformance DOCFullDocumentManagerViewController(void *a1)
{
  v3 = [v1 effectiveBrowserViewController];
  if (v3 && (v4 = v3, v5 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))(), v4, v5))
  {
    type metadata accessor for DOCItemCollectionViewController(0);
    if (swift_dynamicCastClass())
    {
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      v5 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

Swift::Bool __swiftcall DOCFullDocumentManagerViewController.establishFirstResponderIfNeeded()()
{
  v1 = [v0 needsFirstResponder];
  if (v1)
  {
    v1 = [v0 establishFirstResponder];
    if (v1)
    {
      [v0 setNeedsFirstResponder_];
      LOBYTE(v1) = 1;
    }
  }

  return v1;
}

Swift::Bool __swiftcall DOCFullDocumentManagerViewController.establishFirstResponder()()
{
  v1 = [v0 dataSource];
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x188))();

  if (v3 < 3)
  {
    v4 = DOCFullDocumentManagerViewController.containerControllerForResponderEstablishing()();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 establishFirstResponder];
LABEL_23:

      return v6;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.UI);
    v5 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2493AC000, v5, v8, "No effective browser view controller available to establish first responder", v9, 2u);
      MEMORY[0x24C1FE850](v9, -1, -1);
    }

    goto LABEL_22;
  }

  if (v3 != 3)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  v10 = DOCFullDocumentManagerViewController.containerControllerForResponderEstablishing()();
  if (v10)
  {
    v11 = v10;
    v12 = (*((*v2 & v10->isa) + 0xE8))();
    if (!v12)
    {
      v6 = 0;
      v5 = v11;
      goto LABEL_23;
    }

    v5 = v12;
    type metadata accessor for DOCItemCollectionViewController(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      if ([v13 acceptsKeyboardFocus])
      {
        v15 = DOCFullDocumentManagerViewController.sidebarViewController.getter();
        if (v15)
        {
          v16 = v15;
          v17 = (*((*v2 & *v15) + 0x1D0))();

          if ((v17 & 1) == 0 && ([v11 establishFirstResponder]& 1) != 0)
          {

            v6 = 1;
            goto LABEL_23;
          }
        }
      }

      (*((*v2 & *v14) + 0xED8))(1);
    }

LABEL_22:
    v6 = 0;
    goto LABEL_23;
  }

  return 0;
}

id DOCFullDocumentManagerViewController.displayMode(changeTo:for:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DOCUIPBrowserState();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 displayModeHandler];
  (*((*MEMORY[0x277D85000] & *v12) + 0x60))(a1, 0);

  DOCFullDocumentManagerViewController.updateDisplayModeState(userSelectedDisplayMode:for:)(a1, a2);
  DOCFullDocumentManagerViewController.userDidChangeDisplayMode(to:for:)(a1, a2);
  result = [v3 enclosedInUIPDocumentLanding];
  if (result && a1 == 3)
  {
    DOCUIPBrowserState.init()();
    DOCUIPBrowserState.documentLandingMode.setter();
    v14 = objc_opt_self();
    v15 = [v3 configuration];
    v16 = [v15 sceneIdentifier];

    v17 = [v14 globalTabbedBrowserControllerForIdentifier_];
    if (v17)
    {
      v18 = DOCUIPBrowserState._bridgeToObjectiveC()();
      [v17 performBrowserStateChange_];
    }

    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

void DOCFullDocumentManagerViewController.updateDisplayModeState(userSelectedDisplayMode:for:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedStore];
  v7 = [v3 configuration];
  v8 = [v6 interfaceStateForConfiguration_];

  if (v8)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    if (one-time initialization token for StateStore != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.StateStore);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v38 = a1;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40[0] = v15;
      *v14 = 136315138;
      v36 = v8;
      v16 = v11;
      v17 = v11;
      v18 = v3;
      v19 = [v17 description];
      v37 = a2;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v11 = v16;
      v8 = v36;

      v3 = v18;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v40);

      *(v14 + 4) = v23;
      a2 = v37;
      _os_log_impl(&dword_2493AC000, v12, v13, "updateUserDefaults for userSelecteDisplayMode: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1FE850](v15, -1, -1);
      v24 = v14;
      a1 = v38;
      MEMORY[0x24C1FE850](v24, -1, -1);
    }

    v25 = [v3 configuration];
    v26 = specialized static DOCUserInterfaceStateStore.displayModeStateIdentifier(for:configuration:)(a2, v25);
    v28 = v27;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
    v41 = MEMORY[0x277D83B88];
    v40[0] = a1;
    outlined init with take of Any(v40, v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, v29, v31, isUniquelyReferenced_nonNull_native);

    v33 = [v8 displayModes];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v35 = MEMORY[0x24C1FAD20](v26, v28);

    [v33 setValue:isa forKey:v35];
  }
}

uint64_t DOCFullDocumentManagerViewController.updateGroupingBehavior(_:)(char *a1)
{
  v2 = v1;
  v3 = *a1;
  if (one-time initialization token for UI != -1)
  {
LABEL_28:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BF77A0, &v34);
    *(v7 + 12) = 2080;
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v34);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_2493AC000, v5, v6, "%s %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v12 = DOCFullDocumentManagerViewController.inlineEditingViewController.getter();
  v13 = MEMORY[0x277D85000];
  if (v12)
  {
    v14 = v12;
    v15 = (*((*MEMORY[0x277D85000] & *v12) + 0x1498))();

    if (v15)
    {
      (*(*v15 + 472))();
    }
  }

  v16 = [v2 dataSource];
  v17 = (*((*v13 & *v16) + 0x108))();

  v34 = MEMORY[0x277D84F90];
  v2 = (v17 & 0xFFFFFFFFFFFFFF8);
  if (v17 >> 62)
  {
    v18 = __CocoaSet.count.getter();
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_30:
    v20 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_30;
  }

LABEL_9:
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  do
  {
    v33 = v20;
    v21 = v19;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C1FC540](v21, v17);
      }

      else
      {
        if (v21 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v22 = *(v17 + 8 * v21 + 32);
      }

      v23 = v22;
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v24 = (*((*v13 & *v22) + 0xE8))();

      if (v24)
      {
        break;
      }

LABEL_12:
      ++v21;
      if (v19 == v18)
      {
        v20 = v33;
        goto LABEL_31;
      }
    }

    type metadata accessor for DOCItemCollectionViewController(0);
    if (!swift_dynamicCastClass())
    {

      goto LABEL_12;
    }

    MEMORY[0x24C1FB090]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = v34;
  }

  while (v19 != v18);
LABEL_31:

  v25 = DOCFullDocumentManagerViewController.searchResultsItemCollectionViewControllers.getter();
  v34 = v20;
  specialized Array.append<A>(contentsOf:)(v25);
  v26 = v34;
  if (v34 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x24C1FC540](j, v26);
      }

      else
      {
        if (j >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v29 = *(v26 + 8 * j + 32);
      }

      v30 = v29;
      v31 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      LOBYTE(v34) = v3;
      (*((*v13 & *v29) + 0xCF0))(&v34);

      if (v31 == i)
      {
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }
}