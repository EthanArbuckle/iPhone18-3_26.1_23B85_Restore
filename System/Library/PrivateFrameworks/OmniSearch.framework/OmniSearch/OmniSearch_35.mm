uint64_t static InAppSearchStringGeneratorUtils.add(preferredTypes:supportedPreferredTypes:searchString:separators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v7 = a5;
    v9 = *(a1 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v20 = a2;
      v22 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_65_21();
      v10 = v22;
      v11 = (a1 + 32);
      do
      {
        v12 = *v11++;
        v13 = PreferredType.rawValue.getter();
        v15 = v14;
        v17 = *(v22 + 16);
        v16 = *(v22 + 24);
        if (v17 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1);
        }

        *(v22 + 16) = v17 + 1;
        v18 = v22 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        --v9;
      }

      while (v9);
      a2 = v20;
      v7 = a5;
    }

    static InAppSearchStringGeneratorUtils.add(types:typeOptions:searchString:useMultiple:separators:)(v10, a2, a3, a4, 0, v7);
  }

  else
  {
  }

  return OUTLINED_FUNCTION_119();
}

uint64_t static InAppSearchStringGeneratorUtils.add(types:typeOptions:searchString:useMultiple:separators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  if (!a2)
  {
LABEL_20:

    return a3;
  }

  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v7 + 16);
  if (!v8)
  {

    goto LABEL_20;
  }

  v9 = a2;

  v11 = 0;
  v12 = (v7 + 40);
  v37 = v7;
  v38 = v8;
  v36 = v9;
  while (v11 < *(v7 + 16))
  {
    if (*(v9 + 16))
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      OUTLINED_FUNCTION_72_2();
      v15 = specialized __RawDictionaryStorage.find<A>(_:)();
      v17 = v16;

      if (v17)
      {
        v18 = (*(v9 + 56) + 16 * v15);
        v20 = *v18;
        v19 = v18[1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v21 = swift_allocObject();
        v22 = a3;
        v23 = v21;
        *(v21 + 16) = xmmword_25DBC8180;
        *(v21 + 32) = v20;
        *(v21 + 40) = v19;
        v42 = v22;
        v24 = a6[4];
        OUTLINED_FUNCTION_218(a6, a6[3]);
        v41 = *(v24 + 8);

        v25 = OUTLINED_FUNCTION_121_0();
        v26 = v41(v25);
        v28 = v27;
        v29 = a6[4];
        __swift_project_boxed_opaque_existential_1(a6, a6[3]);
        v30 = OUTLINED_FUNCTION_4_60(v29);
        v31(v30, v29);
        if (*(v23 + 16))
        {
          OUTLINED_FUNCTION_35_29();
          if (v32)
          {
            MEMORY[0x25F89F6C0](v26, v28);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          OUTLINED_FUNCTION_53_3();
          v33 = BidirectionalCollection<>.joined(separator:)();
          v35 = v34;

          MEMORY[0x25F89F6C0](v33, v35);
        }

        else
        {
        }

        v8 = v38;

        a3 = v42;
        v7 = v37;
        if ((a5 & 1) == 0)
        {
LABEL_18:

          return a3;
        }

        v9 = v36;
      }
    }

    ++v11;
    v12 += 2;
    if (v8 == v11)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t static InAppSearchStringGeneratorUtils.add(filterTypes:supportedFilterTypes:searchString:separators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v7 = a5;
    v9 = *(a1 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v24 = a2;
      v26 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_65_21();
      OUTLINED_FUNCTION_44_26();
      v13 = (a1 + 32);
      do
      {
        v14 = *v13++;
        v15 = 0xE500000000000000;
        v16 = 0x6D72616C61;
        switch(v14)
        {
          case 1:
            v15 = 0xE400000000000000;
            v16 = 1802465122;
            break;
          case 2:
            v15 = 0xE800000000000000;
            goto LABEL_21;
          case 3:
            v15 = 0xE700000000000000;
            v16 = 0x746361746E6F63;
            break;
          case 4:
            v15 = 0xEC0000006E6F6974;
            v16 = 0x61737265766E6F63;
            break;
          case 5:
            v15 = 0xED0000656C694673;
            goto LABEL_34;
          case 6:
            v15 = 0xEF7265646C6F4673;
LABEL_34:
            v16 = 0x746E656D75636F64;
            break;
          case 7:
            v15 = 0xE800000000000000;
            v16 = 0x6D726F6665657266;
            break;
          case 8:
            v15 = 0xE700000000000000;
            v16 = 0x6C616E72756F6ALL;
            break;
          case 9:
            v15 = 0xE700000000000000;
            v18 = 0x746F6E79656BLL;
            goto LABEL_45;
          case 10:
            v15 = 0xE400000000000000;
            v16 = 1818845549;
            break;
          case 11:
            v15 = 0xE600000000000000;
            v16 = 0x79726F6D656DLL;
            break;
          case 12:
            v15 = 0xE700000000000000;
            v18 = 0x67617373656DLL;
            goto LABEL_45;
          case 13:
            v15 = 0xE400000000000000;
            v16 = 1702129518;
            break;
          case 14:
            v15 = v11 + 1264;
            v16 = 0x646C6F4665746F6ELL;
            break;
          case 15:
            v15 = 0xEB00000000656C69;
            v16 = 0x46737265626D756ELL;
            break;
          case 16:
            v16 = 0x6C69467365676170;
            v15 = 0xE900000000000065;
            break;
          case 17:
            v17 = 1852794992;
            goto LABEL_27;
          case 18:
            v19 = 1953458288;
            goto LABEL_40;
          case 19:
            v16 = 0x626C416F746F6870;
            v15 = 0xEA00000000006D75;
            break;
          case 20:
            v15 = 0xE800000000000000;
            goto LABEL_31;
          case 21:
            v15 = 0xEC0000007473694CLL;
LABEL_31:
            v16 = 0x7265646E696D6572;
            break;
          case 22:
            v15 = 0xE300000000000000;
            v16 = 6447476;
            break;
          case 23:
            v16 = 0x72656D6974;
            break;
          case 24:
            v19 = 1701079414;
            goto LABEL_40;
          case 25:
            v15 = v12 + 7;
            v16 = 0x69616D6563696F76;
            break;
          case 26:
            v15 = v12 + 10;
            goto LABEL_49;
          case 27:
            v15 = 0xE600000000000000;
            v16 = 0x74656C6C6177;
            break;
          case 28:
            v15 = 0xE700000000000000;
            v18 = 0x746973626577;
LABEL_45:
            v16 = v18 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
            break;
          case 29:
            v15 = 0xE800000000000000;
            v16 = 0x616D61726F6E6170;
            break;
          case 30:
            v15 = v11 + 1786;
            v16 = 0x68736E6565726373;
            break;
          case 31:
            v15 = 0xE600000000000000;
            v16 = 0x6569666C6573;
            break;
          case 32:
            v19 = 1836018803;
LABEL_40:
            v16 = v19 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
            break;
          case 33:
            v15 = 0xEC0000006F656469;
            v16 = 0x566C616974617073;
            break;
          case 34:
            v15 = 0xED0000746E657645;
LABEL_21:
            v16 = 0x7261646E656C6163;
            break;
          case 35:
            v15 = 0xE400000000000000;
            v16 = 1802398060;
            break;
          case 36:
            v17 = 1769369453;
LABEL_27:
            v16 = v17 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
            break;
          case 37:
            v15 = 0xE600000000000000;
            v16 = 0x697261666173;
            break;
          case 38:
            v15 = v11 + 1530;
LABEL_49:
            v16 = 0x6D654D6563696F76;
            break;
          default:
            break;
        }

        v26 = v10;
        v21 = v10[2];
        v20 = v10[3];
        if (v21 >= v20 >> 1)
        {
          v10 = &v26;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
          OUTLINED_FUNCTION_44_26();
        }

        v10[2] = v21 + 1;
        v22 = &v10[2 * v21];
        v22[4] = v16;
        v22[5] = v15;
        --v9;
      }

      while (v9);
      a2 = v24;
      v7 = a5;
    }

    static InAppSearchStringGeneratorUtils.add(types:typeOptions:searchString:useMultiple:separators:)(v10, a2, a3, a4, 0, v7);
  }

  else
  {
  }

  return OUTLINED_FUNCTION_119();
}

uint64_t static InAppSearchStringGeneratorUtils.add(time:messageTime:leadingSep:delimSep:searchString:separators:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = a4;
    v13 = a3;
  }

  else
  {
    v14 = a9[3];
    v15 = a9[4];
    __swift_project_boxed_opaque_existential_1(a9, v14);
    OUTLINED_FUNCTION_11_50(v15);
    v13 = v16(v14, v15);
    v12 = v17;
  }

  OUTLINED_FUNCTION_21_34();
  if (v18)
  {

    if (a2)
    {
      goto LABEL_8;
    }

LABEL_11:
    if (!a1)
    {

LABEL_33:

      return OUTLINED_FUNCTION_121_0();
    }

    OUTLINED_FUNCTION_33_31();
    if (v23)
    {

      v24 = v12;
    }

    else
    {
      v34 = a9[3];
      v35 = a9[4];
      OUTLINED_FUNCTION_218(a9, v34);
      v36 = *(v35 + 8);

      v13 = v36(v34, v35);
      v24 = v37;
    }

    OUTLINED_FUNCTION_21_34();
    if (v38)
    {
    }

    else
    {
      v39 = a9[4];
      __swift_project_boxed_opaque_existential_1(a9, a9[3]);
      v40 = OUTLINED_FUNCTION_2_70(v39);
      v41(v40, v39);
    }

    if (*(a1 + 16))
    {
      OUTLINED_FUNCTION_22_29();
      if (v42)
      {
        MEMORY[0x25F89F6C0](v13, v24);
      }

      goto LABEL_31;
    }

LABEL_32:

    goto LABEL_33;
  }

  v20 = a9[4];
  __swift_project_boxed_opaque_existential_1(a9, a9[3]);
  v21 = OUTLINED_FUNCTION_4_60(v20);
  v22(v21, v20);
  if (!a2)
  {
    goto LABEL_11;
  }

LABEL_8:
  OUTLINED_FUNCTION_33_31();
  if (v19)
  {
  }

  else
  {
    v25 = a9[4];
    OUTLINED_FUNCTION_218(a9, a9[3]);
    v26 = *(v25 + 8);

    v27 = OUTLINED_FUNCTION_32_3();
    v26(v27);
  }

  OUTLINED_FUNCTION_21_34();
  if (v28)
  {
  }

  else
  {
    v30 = a9[3];
    v29 = a9[4];
    __swift_project_boxed_opaque_existential_1(a9, v30);
    OUTLINED_FUNCTION_11_50(v29);
    v31(v30, v29);
  }

  if (!*(a2 + 16))
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_22_29();
  if (v32)
  {
    v33 = OUTLINED_FUNCTION_32_3();
    MEMORY[0x25F89F6C0](v33);
  }

LABEL_31:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();

  v43 = OUTLINED_FUNCTION_121_0();
  MEMORY[0x25F89F6C0](v43);

  return OUTLINED_FUNCTION_121_0();
}

uint64_t static InAppSearchStringGeneratorUtils.add(searchTerms:termsToExclude:leadingSep:delimSep:searchString:separators:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  if (result)
  {
    v11 = a4;
    v12 = a2;
    v13 = result;
    v14 = HIBYTE(a4) & 0xF;
    v71 = a3;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v14 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
    }

    else
    {
      v16 = a9[3];
      v17 = a9[4];
      __swift_project_boxed_opaque_existential_1(a9, v16);
      OUTLINED_FUNCTION_11_50(v17);
      v18 = v17;
      v12 = a2;
      v71 = v19(v16, v18);
      v11 = v20;
    }

    OUTLINED_FUNCTION_20_29();
    if (v21)
    {
    }

    else
    {
      v22 = v12;
      v23 = a9[4];
      __swift_project_boxed_opaque_existential_1(a9, a9[3]);
      v24 = OUTLINED_FUNCTION_1_82();
      v12 = v22;
      result = v25(v24);
    }

    v69 = a8;
    v70 = v11;
    if (v12)
    {
      v68 = a7;
      v26 = 0;
      v27 = *(v13 + 16);
      v72 = (v12 + 40);
      v73 = v13 + 32;
      v28 = MEMORY[0x277D84F90];
      while (1)
      {
        v29 = v26;
LABEL_14:
        if (v29 == v27)
        {
          break;
        }

        if (v29 >= v27)
        {
          __break(1u);
LABEL_55:
          __break(1u);
          return result;
        }

        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_55;
        }

        v30 = (v73 + 16 * v29);
        v32 = *v30;
        v31 = v30[1];
        v33 = v12;
        v34 = *(v12 + 16);

        v35 = v34 + 1;
        v36 = v72;
        while (--v35)
        {
          v37 = v36 + 2;
          v74 = *(v36 - 1);
          v75 = *v36;
          lazy protocol witness table accessor for type String and conformance String();
          v38 = StringProtocol.contains<A>(_:)();
          v36 = v37;
          if (v38)
          {

            v29 = v26;
            v12 = v33;
            goto LABEL_14;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1);
        }

        v40 = *(v28 + 16);
        v39 = *(v28 + 24);
        if (v40 >= v39 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1);
        }

        *(v28 + 16) = v40 + 1;
        v41 = v28 + 16 * v40;
        *(v41 + 32) = v32;
        *(v41 + 40) = v31;
        v12 = v33;
      }

      v42 = v70;
      v76 = v68;
      v43 = v71;
      OUTLINED_FUNCTION_35_29();
      if (v44)
      {
      }

      else
      {
        v46 = a9[3];
        v47 = a9[4];
        OUTLINED_FUNCTION_218(a9, v46);
        v48 = *(v47 + 8);

        v43 = v48(v46, v47);
        v42 = v49;
      }

      OUTLINED_FUNCTION_26_29();
      if (v50)
      {
      }

      else
      {
        v51 = a9[4];
        __swift_project_boxed_opaque_existential_1(a9, a9[3]);
        v52 = OUTLINED_FUNCTION_0_94();
        v53(v52);
      }

      if (*(v28 + 16))
      {
        v54 = HIBYTE(v69) & 0xF;
        if ((v69 & 0x2000000000000000) == 0)
        {
          v54 = v68 & 0xFFFFFFFFFFFFLL;
        }

        if (v54)
        {
          MEMORY[0x25F89F6C0](v43, v42);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v55 = BidirectionalCollection<>.joined(separator:)();
        v57 = v56;

        MEMORY[0x25F89F6C0](v55, v57);
      }

      else
      {
      }

      return v76;
    }

    v76 = a7;
    OUTLINED_FUNCTION_33_31();
    if (v45)
    {
    }

    else
    {
      v58 = a9[3];
      v59 = a9[4];
      OUTLINED_FUNCTION_218(a9, v58);
      v60 = *(v59 + 8);

      v71 = v60(v58, v59);
      v11 = v61;
    }

    OUTLINED_FUNCTION_20_29();
    if (v62)
    {
    }

    else
    {
      v63 = a9[4];
      __swift_project_boxed_opaque_existential_1(a9, a9[3]);
      v64 = OUTLINED_FUNCTION_0_94();
      v65(v64);
      OUTLINED_FUNCTION_53_19();
    }

    if (*(v13 + 16))
    {
      v66 = HIBYTE(v69) & 0xF;
      if ((v69 & 0x2000000000000000) == 0)
      {
        v66 = a7 & 0xFFFFFFFFFFFFLL;
      }

      if (v66)
      {
        MEMORY[0x25F89F6C0](v71, v11);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      BidirectionalCollection<>.joined(separator:)();

      v67 = OUTLINED_FUNCTION_121_0();
      MEMORY[0x25F89F6C0](v67);

      return v76;
    }

    return a7;
  }

  return result;
}

uint64_t one-time initialization function for supportedFilterTypes()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static PhotosInAppSearchStringGenerator.supportedFilterTypes = result;
  return result;
}

uint64_t *PhotosInAppSearchStringGenerator.supportedFilterTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedFilterTypes != -1)
  {
    OUTLINED_FUNCTION_9_49();
  }

  return &static PhotosInAppSearchStringGenerator.supportedFilterTypes;
}

uint64_t (*static PhotosInAppSearchStringGenerator.supportedFilterTypes.modify())()
{
  if (one-time initialization token for supportedFilterTypes != -1)
  {
    OUTLINED_FUNCTION_9_49();
  }

  OUTLINED_FUNCTION_48_1();
  return static FlightSnippet.Status.allCases.modify;
}

void PhotosInAppSearchStringGenerator.generateInAppSearchString(structured:ecrResults:locale:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = OUTLINED_FUNCTION_29_23();
  v8 = OUTLINED_FUNCTION_17(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v13 = v12 - v11;
  outlined init with copy of StructuredQueryEntity?(v4, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
  {
    outlined destroy of StructuredQueryEntity?(v0);
  }

  else
  {
    outlined init with take of StructuredQueryEntity(v0, v13);
    static SeparatorsFactory.make(with:)(v75);
    OUTLINED_FUNCTION_49_23(v7[16]);
    v14 = static InAppSearchStringGeneratorUtils.parse(people:)(v74);

    if (v14)
    {
      MEMORY[0x28223BE20](v15);
      OUTLINED_FUNCTION_10_47();
      *(v16 - 32) = v75;
      *(v16 - 24) = 256;
      *(v16 - 16) = v2;
      *(v16 - 8) = 0;
      v18 = specialized Sequence.compactMap<A>(_:)(closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)partial apply, v17, v14);
    }

    else
    {

      v18 = 0;
    }

    OUTLINED_FUNCTION_34_8();
    v19 = OUTLINED_FUNCTION_1_82();
    v20(v19);
    v21 = v77;
    OUTLINED_FUNCTION_34_8();
    v22 = *(v21 + 16);
    v23 = OUTLINED_FUNCTION_112_2();
    v25 = v24(v23, v21);
    if (v18)
    {
      v26 = v25;
      v74 = 0;
      OUTLINED_FUNCTION_22_29();
      if (v27)
      {
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v75, v76);
        v28 = OUTLINED_FUNCTION_0_94();
        v29(v28);
      }

      OUTLINED_FUNCTION_35_29();
      if (v30)
      {
      }

      else
      {
        OUTLINED_FUNCTION_34_8();
        v31 = OUTLINED_FUNCTION_1_82();
        v26 = v32(v31);
      }

      if (*(v18 + 16))
      {

        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_72_2();
        BidirectionalCollection<>.joined(separator:)();
        OUTLINED_FUNCTION_53_19();

        MEMORY[0x25F89F6C0](v26, v33);
      }

      else
      {
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_49_23(v7[12]);
    v34 = v77;
    OUTLINED_FUNCTION_218(v75, v76);
    v35 = *(v34 + 8);

    v36 = OUTLINED_FUNCTION_72_2();
    v37 = v35(v36);
    v39 = v38;
    v40 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v41 = OUTLINED_FUNCTION_2_70(v40);
    v42(v41, v40);
    if (*(v74 + 16))
    {
      OUTLINED_FUNCTION_33_31();
      if (v43)
      {
        MEMORY[0x25F89F6C0](v37, v39);
      }

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v45 = OUTLINED_FUNCTION_69_17();
      OUTLINED_FUNCTION_70_14();
      MEMORY[0x25F89F6C0](v45, v44);
    }

    else
    {
    }

    v73 = v7;
    OUTLINED_FUNCTION_49_23(v7[13]);
    static InAppSearchStringGeneratorUtils.parse(locations:)();
    v47 = v46;

    v48 = v77;
    OUTLINED_FUNCTION_34_8();
    v49 = *(v48 + 24);
    v50 = OUTLINED_FUNCTION_112_2();
    v51(v50, v48);
    OUTLINED_FUNCTION_53_19();
    v52 = v76;
    v53 = v77;
    OUTLINED_FUNCTION_68_19();
    OUTLINED_FUNCTION_24_29(v53);
    v54(v52, v53);
    if (v47)
    {
      OUTLINED_FUNCTION_36_25();
      if (v55)
      {
      }

      else
      {
        v56 = v76;
        v57 = v77;
        OUTLINED_FUNCTION_218(v75, v76);
        v58 = *(v57 + 8);

        v58(v56, v57);
        OUTLINED_FUNCTION_52_22();
      }

      OUTLINED_FUNCTION_56_16();
      if (v59)
      {
      }

      else
      {
        v60 = v76;
        v61 = v77;
        OUTLINED_FUNCTION_68_19();
        OUTLINED_FUNCTION_11_50(v61);
        v62(v60, v61);
      }

      if (*(v47 + 16))
      {
        OUTLINED_FUNCTION_63_20();
        if (v63)
        {
          OUTLINED_FUNCTION_32_32();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_46_24();
        OUTLINED_FUNCTION_52_22();

        OUTLINED_FUNCTION_32_32();
      }

      else
      {
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_49_23(v73[14]);
    v64 = v77;
    OUTLINED_FUNCTION_34_8();
    v65 = *(v64 + 48);
    v66 = OUTLINED_FUNCTION_112_2();
    v67(v66, v64);
    OUTLINED_FUNCTION_53_19();
    v68 = v76;
    v69 = v77;
    OUTLINED_FUNCTION_68_19();
    OUTLINED_FUNCTION_24_29(v69);
    v70(v68, v69);

    OUTLINED_FUNCTION_49_23(v73[6]);
    if (one-time initialization token for supportedFilterTypes != -1)
    {
      OUTLINED_FUNCTION_9_49();
    }

    OUTLINED_FUNCTION_30_28();
    v71 = static PhotosInAppSearchStringGenerator.supportedFilterTypes;

    static InAppSearchStringGeneratorUtils.add(filterTypes:supportedFilterTypes:searchString:separators:)(0, v71, 0, 0xE000000000000000, v75);

    OUTLINED_FUNCTION_3_66();
    _s10OmniSearch17PersonQueryEntityVWOhTm_0(v13, v72);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t one-time initialization function for supportedPreferredTypes()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static MailAndNotesInAppSearchStringGenerator.supportedPreferredTypes = result;
  return result;
}

{
  result = Dictionary.init(dictionaryLiteral:)();
  static DefaultInAppSearchStringGenerator.supportedPreferredTypes = result;
  return result;
}

uint64_t *MailAndNotesInAppSearchStringGenerator.supportedPreferredTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedPreferredTypes != -1)
  {
    OUTLINED_FUNCTION_8_51();
  }

  return &static MailAndNotesInAppSearchStringGenerator.supportedPreferredTypes;
}

uint64_t (*static MailAndNotesInAppSearchStringGenerator.supportedPreferredTypes.modify())()
{
  if (one-time initialization token for supportedPreferredTypes != -1)
  {
    OUTLINED_FUNCTION_8_51();
  }

  OUTLINED_FUNCTION_48_1();
  return static ExtractedInfo.kExtractedInfoKey.modify;
}

void MailAndNotesInAppSearchStringGenerator.generateInAppSearchString(structured:ecrResults:locale:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = OUTLINED_FUNCTION_29_23();
  v8 = OUTLINED_FUNCTION_17(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v13 = v12 - v11;
  outlined init with copy of StructuredQueryEntity?(v4, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
  {
    outlined destroy of StructuredQueryEntity?(v0);
  }

  else
  {
    outlined init with take of StructuredQueryEntity(v0, v13);
    static SeparatorsFactory.make(with:)(v151);
    v14 = *(v13 + v7[7]);
    EntityProperty.wrappedValue.getter();
    if (one-time initialization token for supportedPreferredTypes != -1)
    {
      OUTLINED_FUNCTION_8_51();
    }

    OUTLINED_FUNCTION_30_28();

    v15 = OUTLINED_FUNCTION_12_45();
    v20 = static InAppSearchStringGeneratorUtils.add(preferredTypes:supportedPreferredTypes:searchString:separators:)(v15, v16, v17, v18, v19);
    v146 = v21;

    v22 = *(v13 + v7[16]);
    EntityProperty.wrappedValue.getter();
    v23 = OUTLINED_FUNCTION_57_18();
    v24 = static InAppSearchStringGeneratorUtils.parse(people:)(v23);
    v145 = v25;
    v143 = v26;

    v148 = v13;
    if (v24)
    {
      OUTLINED_FUNCTION_42_25();
      MEMORY[0x28223BE20](v27);
      OUTLINED_FUNCTION_10_47();
      *(v28 - 32) = v151;
      OUTLINED_FUNCTION_39_25(v28);
      v30 = specialized Sequence.compactMap<A>(_:)(closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)partial apply, v29, v24);
    }

    else
    {
      v30 = 0;
    }

    OUTLINED_FUNCTION_17_39();
    v31 = OUTLINED_FUNCTION_1_82();
    v33 = v32(v31);
    v35 = v34;
    v36 = v152;
    v37 = v153;
    __swift_project_boxed_opaque_existential_1(v151, v152);
    OUTLINED_FUNCTION_24_29(v37);
    v38(v36, v37);
    v144 = v2;
    if (v30)
    {
      v39 = v30;
      v149 = v20;
      OUTLINED_FUNCTION_26_29();
      v142 = v30;
      if (v40)
      {

        v41 = v35;
      }

      else
      {
        v45 = v152;
        v46 = v153;
        OUTLINED_FUNCTION_218(v151, v152);
        v47 = v7;
        v48 = *(v46 + 8);

        v49 = v48(v45, v46);
        v39 = v142;
        v7 = v47;
        v33 = v49;
        v41 = v50;
      }

      OUTLINED_FUNCTION_59_17();
      if (v51)
      {
      }

      else
      {
        v52 = v153;
        __swift_project_boxed_opaque_existential_1(v151, v152);
        OUTLINED_FUNCTION_11_50(v52);
        v53 = OUTLINED_FUNCTION_32_3();
        v54(v53);
        v39 = v142;
      }

      if (*(v39 + 16))
      {
        OUTLINED_FUNCTION_35_29();
        if (v55)
        {
          MEMORY[0x25F89F6C0](v33, v41);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_32_3();
        v56 = BidirectionalCollection<>.joined(separator:)();
        v58 = v57;

        MEMORY[0x25F89F6C0](v56, v58);
      }

      else
      {
      }

      v20 = v149;
      v44 = v146;
      v43 = v148;
      v42 = v144;
    }

    else
    {

      v42 = v2;
      v44 = v146;
      v43 = v148;
    }

    v147 = v7;
    v59 = *(v43 + v7[12]);
    EntityProperty.wrappedValue.getter();

    _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD6ValuesVyS2S_GTt0g5(v60);
    v61 = OUTLINED_FUNCTION_12_45();
    v65 = static InAppSearchStringGeneratorUtils.add(searchTerms:termsToExclude:leadingSep:delimSep:searchString:separators:)(v61, v62, v63, v64, 0, 0xE000000000000000, v20, v44, v151);
    v67 = v66;

    if (v145)
    {
      OUTLINED_FUNCTION_42_25();
      MEMORY[0x28223BE20](v68);
      OUTLINED_FUNCTION_10_47();
      *(v69 - 32) = v151;
      *(v69 - 24) = 256;
      *(v69 - 16) = v42;
      *(v69 - 8) = 1;
      v72 = specialized Sequence.compactMap<A>(_:)(closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)partial apply, v70, v71);
    }

    else
    {
      v72 = 0;
    }

    OUTLINED_FUNCTION_6_48();
    v74 = *(v73 + 32);
    v75 = OUTLINED_FUNCTION_5_52();
    v76(v75);
    v78 = v77;
    OUTLINED_FUNCTION_6_48();
    v80 = *(v79 + 16);
    v81 = OUTLINED_FUNCTION_5_52();
    v82(v81);
    if (v72)
    {
      v150 = v67;
      OUTLINED_FUNCTION_35_29();
      if (v83)
      {

        v84 = v78;
      }

      else
      {
        OUTLINED_FUNCTION_37_22();
        v85 = OUTLINED_FUNCTION_0_94();
        v86(v85);
        v84 = v87;
      }

      OUTLINED_FUNCTION_20_29();
      if (v88)
      {
      }

      else
      {
        v89 = v153;
        __swift_project_boxed_opaque_existential_1(v151, v152);
        v90 = OUTLINED_FUNCTION_4_60(v89);
        v91(v90, v89);
      }

      if (*(v72 + 16))
      {
        v92 = OUTLINED_FUNCTION_54_25();
        MEMORY[0x25F89F6C0](v92, v84);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_25_30();
        BidirectionalCollection<>.joined(separator:)();

        v93 = OUTLINED_FUNCTION_72_2();
        MEMORY[0x25F89F6C0](v93);
      }

      else
      {
      }

      v67 = v150;
    }

    else
    {
    }

    if (v143)
    {
      OUTLINED_FUNCTION_42_25();
      MEMORY[0x28223BE20](v94);
      OUTLINED_FUNCTION_10_47();
      *(v95 - 32) = v151;
      *(v95 - 24) = 256;
      *(v95 - 16) = v96;
      *(v95 - 8) = 1;
      v98 = specialized Sequence.compactMap<A>(_:)(closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)partial apply, v97, v143);
    }

    else
    {

      v98 = 0;
    }

    OUTLINED_FUNCTION_6_48();
    v100 = *(v99 + 40);
    v101 = OUTLINED_FUNCTION_5_52();
    v102(v101);
    v104 = v103;
    OUTLINED_FUNCTION_6_48();
    v106 = *(v105 + 16);
    v107 = OUTLINED_FUNCTION_5_52();
    v108(v107);
    v110 = v109;
    if (v98)
    {
      OUTLINED_FUNCTION_59_17();
      if (v111)
      {

        v112 = v104;
      }

      else
      {
        OUTLINED_FUNCTION_37_22();
        v114 = OUTLINED_FUNCTION_0_94();
        v115(v114);
        v112 = v116;
      }

      OUTLINED_FUNCTION_35_29();
      if (v117)
      {
      }

      else
      {
        v118 = v153;
        __swift_project_boxed_opaque_existential_1(v151, v152);
        v119 = OUTLINED_FUNCTION_4_60(v118);
        v120(v119, v118);
      }

      if (*(v98 + 16))
      {
        v121 = OUTLINED_FUNCTION_54_25();
        MEMORY[0x25F89F6C0](v121, v112);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_25_30();
        BidirectionalCollection<>.joined(separator:)();

        v122 = OUTLINED_FUNCTION_72_2();
        MEMORY[0x25F89F6C0](v122);
      }

      else
      {
      }

      v113 = v148;
    }

    else
    {

      v113 = v148;
    }

    v123 = *(v113 + v147[13]);
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_57_18();
    static InAppSearchStringGeneratorUtils.parse(locations:)();
    v125 = v124;

    v126 = People.getAllPeople()();

    if (v126)
    {
      OUTLINED_FUNCTION_17_39();
      OUTLINED_FUNCTION_66_17();
      v127 = OUTLINED_FUNCTION_72_2();
      v110(v127);
      OUTLINED_FUNCTION_28_28();
      v129 = OUTLINED_FUNCTION_2_70(v128);
      v130(v129, v125);
      if (*(v126 + 16))
      {
        v131 = HIBYTE(v67) & 0xF;
        if ((v67 & 0x2000000000000000) == 0)
        {
          v131 = v65 & 0xFFFFFFFFFFFFLL;
        }

        if (v131)
        {
          OUTLINED_FUNCTION_45_20();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_69_17();
        OUTLINED_FUNCTION_70_14();
        v132 = OUTLINED_FUNCTION_53_3();
        MEMORY[0x25F89F6C0](v132);
      }

      else
      {
      }
    }

    v133 = *(v113 + v147[14]);
    EntityProperty.wrappedValue.getter();
    v134 = *(v113 + v147[15]);
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_13_36();
    static InAppSearchStringGeneratorUtils.add(time:messageTime:leadingSep:delimSep:searchString:separators:)(v135, v136, v137, v138, v139, v140, v65, v67, v151);

    OUTLINED_FUNCTION_3_66();
    _s10OmniSearch17PersonQueryEntityVWOhTm_0(v113, v141);
    __swift_destroy_boxed_opaque_existential_1Tm(v151);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t *DefaultInAppSearchStringGenerator.supportedPreferredTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedPreferredTypes != -1)
  {
    OUTLINED_FUNCTION_7_49();
  }

  return &static DefaultInAppSearchStringGenerator.supportedPreferredTypes;
}

uint64_t static PhotosInAppSearchStringGenerator.supportedFilterTypes.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_230_0();
  swift_beginAccess();
  v3 = *a2;
}

uint64_t static PhotosInAppSearchStringGenerator.supportedFilterTypes.setter(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_230_0();
  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static DefaultInAppSearchStringGenerator.supportedPreferredTypes.modify())()
{
  if (one-time initialization token for supportedPreferredTypes != -1)
  {
    OUTLINED_FUNCTION_7_49();
  }

  OUTLINED_FUNCTION_48_1();
  return static ExtractedInfo.kExtractedInfoKey.modify;
}

uint64_t key path getter for static PhotosInAppSearchStringGenerator.supportedFilterTypes : PhotosInAppSearchStringGenerator.Type@<X0>(void (*a1)(void)@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  a1();
  OUTLINED_FUNCTION_230_0();
  swift_beginAccess();
  *a3 = *a2;
}

uint64_t key path setter for static PhotosInAppSearchStringGenerator.supportedFilterTypes : PhotosInAppSearchStringGenerator.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t *a6)
{
  v8 = *a1;

  a5(v9);
  OUTLINED_FUNCTION_230_0();
  swift_beginAccess();
  v10 = *a6;
  *a6 = v8;
}

void DefaultInAppSearchStringGenerator.generateInAppSearchString(structured:ecrResults:locale:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = OUTLINED_FUNCTION_29_23();
  v8 = OUTLINED_FUNCTION_17(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v13 = v12 - v11;
  outlined init with copy of StructuredQueryEntity?(v4, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
  {
    outlined destroy of StructuredQueryEntity?(v0);
  }

  else
  {
    outlined init with take of StructuredQueryEntity(v0, v13);
    static SeparatorsFactory.make(with:)(v99);
    v14 = *(v13 + *(v7 + 28));
    EntityProperty.wrappedValue.getter();
    if (one-time initialization token for supportedPreferredTypes != -1)
    {
      OUTLINED_FUNCTION_7_49();
    }

    OUTLINED_FUNCTION_30_28();

    v15 = OUTLINED_FUNCTION_12_45();
    v20 = static InAppSearchStringGeneratorUtils.add(preferredTypes:supportedPreferredTypes:searchString:separators:)(v15, v16, v17, v18, v19);
    v22 = v21;

    OUTLINED_FUNCTION_50_18(*(v7 + 64));
    v23 = OUTLINED_FUNCTION_57_18();
    v24 = static InAppSearchStringGeneratorUtils.parse(people:)(v23);

    v96 = v20;
    v97 = v7;
    if (v24)
    {
      OUTLINED_FUNCTION_42_25();
      MEMORY[0x28223BE20](v25);
      OUTLINED_FUNCTION_10_47();
      *(v26 - 32) = v99;
      OUTLINED_FUNCTION_39_25(v26);
      v28 = specialized Sequence.compactMap<A>(_:)(closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)partial apply, v27, v24);
    }

    else
    {
      v28 = 0;
    }

    OUTLINED_FUNCTION_17_39();
    v29 = OUTLINED_FUNCTION_1_82();
    v30(v29);
    OUTLINED_FUNCTION_28_28();
    OUTLINED_FUNCTION_24_29(v31);
    v32 = OUTLINED_FUNCTION_121_0();
    v34 = v33(v32);
    v36 = v35;
    if (v28)
    {
      v37 = v34;
      v95 = v13;
      OUTLINED_FUNCTION_26_29();
      if (v38)
      {

        v39 = v98;
      }

      else
      {
        v41 = v100;
        v42 = v101;
        OUTLINED_FUNCTION_218(v99, v100);
        v94 = v28;
        v43 = v2;
        v44 = *(v42 + 8);

        v44(v41, v42);
        v2 = v43;
        v28 = v94;
        v39 = v45;
      }

      v46 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v46 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v46)
      {
      }

      else
      {
        v47 = v101;
        __swift_project_boxed_opaque_existential_1(v99, v100);
        v48 = OUTLINED_FUNCTION_2_70(v47);
        v49(v48, v47);
      }

      if (*(v28 + 16))
      {
        v50 = HIBYTE(v22) & 0xF;
        if ((v22 & 0x2000000000000000) == 0)
        {
          v50 = v96 & 0xFFFFFFFFFFFFLL;
        }

        if (v50)
        {
          v51 = OUTLINED_FUNCTION_54_25();
          MEMORY[0x25F89F6C0](v51, v39);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_25_30();
        BidirectionalCollection<>.joined(separator:)();
        v53 = v52;

        v54 = OUTLINED_FUNCTION_54_25();
        MEMORY[0x25F89F6C0](v54, v53);
      }

      else
      {

        v36 = v22;
      }

      v40 = v96;
      v13 = v95;
    }

    else
    {

      v40 = v96;
    }

    v55 = People.getSendersAndReceivers()();

    if (v55)
    {
      MEMORY[0x28223BE20](v56);
      OUTLINED_FUNCTION_10_47();
      *(v57 - 32) = v99;
      OUTLINED_FUNCTION_39_25(v57);
      v59 = specialized Sequence.compactMap<A>(_:)(closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)partial apply, v58, v55);

      OUTLINED_FUNCTION_17_39();
      OUTLINED_FUNCTION_66_17();
      v60 = OUTLINED_FUNCTION_72_2();
      v2(v60);
      OUTLINED_FUNCTION_28_28();
      v62 = OUTLINED_FUNCTION_2_70(v61);
      v63(v62, v36);
      if (*(v59 + 16))
      {
        v64 = HIBYTE(v22) & 0xF;
        if ((v22 & 0x2000000000000000) == 0)
        {
          v64 = v40 & 0xFFFFFFFFFFFFLL;
        }

        if (v64)
        {
          OUTLINED_FUNCTION_45_20();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_69_17();
        OUTLINED_FUNCTION_70_14();
        v65 = OUTLINED_FUNCTION_53_3();
        MEMORY[0x25F89F6C0](v65);
      }

      else
      {
      }

      v66 = v97;
    }

    else
    {
      v66 = v97;
    }

    OUTLINED_FUNCTION_50_18(*(v66 + 48));

    _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD6ValuesVyS2S_GTt0g5(v67);
    v68 = OUTLINED_FUNCTION_12_45();
    v72 = static InAppSearchStringGeneratorUtils.add(searchTerms:termsToExclude:leadingSep:delimSep:searchString:separators:)(v68, v69, v70, v71, 0, 0xE000000000000000, v40, v22, v99);
    v74 = v73;

    OUTLINED_FUNCTION_50_18(*(v66 + 52));
    OUTLINED_FUNCTION_57_18();
    static InAppSearchStringGeneratorUtils.parse(locations:)();
    v76 = v75;

    v77 = People.getAllPeople()();

    if (v77)
    {
      v78 = v13;
      OUTLINED_FUNCTION_17_39();
      v79 = *(v76 + 8);

      v80 = OUTLINED_FUNCTION_72_2();
      v81 = v79(v80);
      v83 = v82;
      OUTLINED_FUNCTION_37_22();
      v84 = OUTLINED_FUNCTION_0_94();
      v85(v84);
      if (*(v77 + 16))
      {
        OUTLINED_FUNCTION_33_31();
        if (v86)
        {
          MEMORY[0x25F89F6C0](v81, v83);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_69_17();
        OUTLINED_FUNCTION_70_14();
        OUTLINED_FUNCTION_45_20();
      }

      else
      {
      }

      v13 = v78;
    }

    OUTLINED_FUNCTION_50_18(*(v97 + 56));
    OUTLINED_FUNCTION_50_18(*(v97 + 60));
    OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_13_36();
    static InAppSearchStringGeneratorUtils.add(time:messageTime:leadingSep:delimSep:searchString:separators:)(v87, v88, v89, v90, v91, v92, v72, v74, v99);

    OUTLINED_FUNCTION_3_66();
    _s10OmniSearch17PersonQueryEntityVWOhTm_0(v13, v93);
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t partial apply for closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  return partial apply for closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)(a1, a2);
}

{
  return closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)(a1, *(v2 + 16), *(v2 + 24), *(v2 + 25), *(v2 + 32), *(v2 + 40), a2);
}

uint64_t outlined init with copy of PersonQueryEntity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t _s10OmniSearch17PersonQueryEntityVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for People(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for People(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_49()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_51()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_49()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_17_39()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 104);

  return __swift_project_boxed_opaque_existential_1((v0 - 128), v3);
}

uint64_t OUTLINED_FUNCTION_29_23()
{

  return type metadata accessor for StructuredQueryEntity(0);
}

uint64_t OUTLINED_FUNCTION_30_28()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_32_32()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_34_30()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *OUTLINED_FUNCTION_37_22()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 104);

  return __swift_project_boxed_opaque_existential_1((v0 - 128), v3);
}

void OUTLINED_FUNCTION_39_25(uint64_t a1@<X8>)
{
  *(a1 - 24) = v1;
  *(a1 - 16) = v2;
  *(a1 - 8) = 0;
}

void OUTLINED_FUNCTION_45_20()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_46_24()
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t OUTLINED_FUNCTION_49_23@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_50_18@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_65_21()
{

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_66_17()
{
  v2 = *(v0 + 8);
}

void *OUTLINED_FUNCTION_68_19()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 120), v0);
}

uint64_t OUTLINED_FUNCTION_69_17()
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t OUTLINED_FUNCTION_70_14()
{
}

uint64_t specialized AppEntity.propertyDescription.getter(uint64_t (*a1)(void, __n128), uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v31 = a4;
  v8 = type metadata accessor for Mirror();
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1(0, v14);
  *(&v35 + 1) = v17;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v34);
  _s10OmniSearch0B6ResultVWOcTm_11(v4, boxed_opaque_existential_1Tm, a2);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v11 + 8))(v16, v8);
  dispatch thunk of _AnySequenceBox._makeIterator()();
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!*(&v36 + 1))
    {
      break;
    }

    v32 = v34;
    v33[0] = v35;
    v33[1] = v36;
    v20 = v34;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    if (*(&v20 + 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = *(v19 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = v23;
      }

      v21 = *(v19 + 16);
      if (v21 >= *(v19 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = v24;
      }

      *(v19 + 16) = v21 + 1;
      *(v19 + 16 * v21 + 32) = v20;
    }
  }

  *&v34 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v25 = BidirectionalCollection<>.joined(separator:)();
  v27 = v26;

  *&v34 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, v31);
  *&v34 = String.init<A>(describing:)();
  *(&v34 + 1) = v28;
  MEMORY[0x25F89F6C0](2314, 0xE200000000000000);
  MEMORY[0x25F89F6C0](v25, v27);

  return v34;
}

uint64_t LLMSearchResult.init(_:)(uint64_t a1)
{
  v1 = *(a1 + 8);

  type metadata accessor for LLMSearchResult();
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t LLMSearchResult.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v288 = a2;
  v289 = a1;
  v256 = type metadata accessor for SearchPreExtractedCardStandardRepresentation();
  v2 = OUTLINED_FUNCTION_17(v256);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v282 = &v254 - v10;
  v283 = type metadata accessor for IdCardEntity();
  v11 = OUTLINED_FUNCTION_17(v283);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v14);
  v269 = type metadata accessor for UUID();
  v15 = OUTLINED_FUNCTION_14(v269);
  v268 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_28_2(&v254 - v20);
  v258 = type metadata accessor for SearchPreExtractedEventStandardRepresentation();
  v21 = OUTLINED_FUNCTION_17(v258);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
  OUTLINED_FUNCTION_114(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  v284 = &v254 - v29;
  v285 = type metadata accessor for EventEntity();
  v30 = OUTLINED_FUNCTION_17(v285);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes0B10ToolDialogVSgMd, &_s15OmniSearchTypes0B10ToolDialogVSgMR);
  OUTLINED_FUNCTION_114(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v37);
  v39 = OUTLINED_FUNCTION_28_2(&v254 - v38);
  v40 = type metadata accessor for SearchResultItem(v39);
  v41 = OUTLINED_FUNCTION_114(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v46 = OUTLINED_FUNCTION_114(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_28_2(&v254 - v51);
  v260 = type metadata accessor for SearchSpotlightStandardRepresentation();
  v52 = OUTLINED_FUNCTION_17(v260);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  v57 = OUTLINED_FUNCTION_114(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v61);
  v63 = (&v254 - v62);
  v286 = type metadata accessor for TypedValue();
  v64 = OUTLINED_FUNCTION_14(v286);
  v281 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_15_4(&v254 - v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  OUTLINED_FUNCTION_114(v74);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v77);
  v79 = &v254 - v78;
  v80 = type metadata accessor for SearchAppEntity(0);
  v81 = OUTLINED_FUNCTION_17(v80);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_2_3();
  v85 = OUTLINED_FUNCTION_28_2(v84);
  v277 = type metadata accessor for SearchResult(v85);
  v86 = OUTLINED_FUNCTION_17(v277);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  v90 = &v254 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  v92 = OUTLINED_FUNCTION_114(v91);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  v96 = &v254 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v99 = &v254 - v98;
  MEMORY[0x28223BE20](v100);
  v102 = &v254 - v101;
  MEMORY[0x28223BE20](v103);
  v105 = &v254 - v104;
  v287 = type metadata accessor for LLMSearchResult();
  v106 = OUTLINED_FUNCTION_14(v287);
  v278 = v107;
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v110);
  _s10OmniSearch0B6ResultVWOcTm_11(v289, v90, type metadata accessor for SearchResult);
  SearchEntity.init(result:)();
  v111 = v105;
  outlined init with copy of Date?(v105, v102, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  v112 = type metadata accessor for SearchEntity(0);
  if (__swift_getEnumTagSinglePayload(v102, 1, v112) == 1)
  {
    outlined destroy of IntentApplication?(v102, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v80);
LABEL_5:
    outlined destroy of IntentApplication?(v79, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
    v144 = v286;
    goto LABEL_6;
  }

  v116 = *(v102 + 2);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_4_61();
  _s10OmniSearch0B6ResultVWOhTm_10(v102, v117);
  OUTLINED_FUNCTION_166(v79, 1, v80);
  if (v145)
  {
    goto LABEL_5;
  }

  v143 = v280;
  outlined init with take of IdCardEntity(v79, v280, type metadata accessor for SearchAppEntity);
  _s15OmniSearchTypes15LLMSearchResultV0aB0E19convertToTypedValue33_33502D4E8B2A1AFC285785940C04AED0LL_16bundleIdentifier7ToolKit0hI0OSgx_SSt10AppIntents09TransientU6EntityRzlFZAD0buX0V_Tt2g5(v143, 0xD000000000000028, 0x800000025DBF6C30, v63);
  v144 = v286;
  OUTLINED_FUNCTION_166(v63, 1, v286);
  if (!v145)
  {
    v156 = v281;
    v157 = v274;
    (*(v281 + 32))(v274, v63, v144);
    v158 = v275;
    v159 = v143;
    SearchAppEntity.convertToSystemIntentValue()();
    v160 = *v143;
    EntityProperty.wrappedValue.getter();
    v161 = v292[0];
    v162 = v292[1];
    (*(v156 + 16))(v273, v157, v144);
    v293 = v260;
    v294 = lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation and conformance SearchSpotlightStandardRepresentation, type metadata accessor for SearchSpotlightStandardRepresentation);
    v295 = OUTLINED_FUNCTION_22_30(&lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation and conformance SearchSpotlightStandardRepresentation);
    v296 = OUTLINED_FUNCTION_22_30(&lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation and conformance SearchSpotlightStandardRepresentation);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v292);
    _s10OmniSearch0B6ResultVWOcTm_11(v158, boxed_opaque_existential_1Tm, type metadata accessor for SearchSpotlightStandardRepresentation);
    v164 = v261;
    outlined init with copy of Date?(v159 + *(v80 + 40), v261, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    OUTLINED_FUNCTION_166(v164, 1, v277);
    if (v165)
    {
      outlined destroy of IntentApplication?(v164, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_5_53();
      v204 = v262;
      _s10OmniSearch0B6ResultVWOcTm_11(v164, v262, v205);
      OUTLINED_FUNCTION_0_95();
      _s10OmniSearch0B6ResultVWOhTm_10(v164, v206);
      SearchResultItem.associatedValue.getter(&v290);
      v207 = v291;
      OUTLINED_FUNCTION_25_31();
      v208 = OUTLINED_FUNCTION_16_41(v207);
      v209(v208);
      OUTLINED_FUNCTION_2_71();
      _s10OmniSearch0B6ResultVWOhTm_10(v204, v210);
      __swift_destroy_boxed_opaque_existential_1Tm(&v290);
    }

    v211 = v111;
    type metadata accessor for SearchToolDialog();
    v212 = v279;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v213, v214, v215, v216);
    OUTLINED_FUNCTION_7_50();
    OUTLINED_FUNCTION_15_42(v161, v162, v217, v218);
    OUTLINED_FUNCTION_0_95();
    _s10OmniSearch0B6ResultVWOhTm_10(v289, v219);
    _s10OmniSearch0B6ResultVWOhTm_10(v275, type metadata accessor for SearchSpotlightStandardRepresentation);
    (*(v156 + 8))(v274, v144);
    outlined destroy of IntentApplication?(v211, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    OUTLINED_FUNCTION_12_46();
    v221 = &v298;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_12_46();
  _s10OmniSearch0B6ResultVWOhTm_10(v143, v146);
  outlined destroy of IntentApplication?(v63, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
LABEL_6:
  v118 = v105;
  outlined init with copy of Date?(v105, v99, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_166(v99, 1, v112);
  if (v145)
  {
    outlined destroy of IntentApplication?(v99, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    v124 = v284;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v122);
LABEL_11:
    v127 = &_s10OmniSearch11EventEntityVSgMd;
    v128 = &_s10OmniSearch11EventEntityVSgMR;
    v129 = v124;
    goto LABEL_12;
  }

  v123 = *(v99 + 6);
  v124 = v284;
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_4_61();
  _s10OmniSearch0B6ResultVWOhTm_10(v99, v125);
  OUTLINED_FUNCTION_166(v124, 1, v285);
  if (v126)
  {
    goto LABEL_11;
  }

  v147 = v276;
  outlined init with take of IdCardEntity(v124, v276, type metadata accessor for EventEntity);
  v148 = v270;
  _s15OmniSearchTypes15LLMSearchResultV0aB0E19convertToTypedValue33_33502D4E8B2A1AFC285785940C04AED0LL_16bundleIdentifier7ToolKit0hI0OSgx_SSt10AppIntents09TransientU6EntityRzlFZAD05EventX0V_Tt2g5(v147, 0xD000000000000028, 0x800000025DBF6C30, v270);
  OUTLINED_FUNCTION_166(v148, 1, v144);
  if (!v149)
  {
    v166 = v281;
    v167 = v272;
    (*(v281 + 32))(v272, v148, v144);
    v168 = *v147;
    EntityProperty.wrappedValue.getter();
    v169 = v292[0];
    v170 = v258;
    v171 = v147;
    v172 = v147 + *(v285 + 56);
    v173 = *(v285 + 56);
    v174 = v259;
    outlined init with copy of Date?(v172, &v259[*(v258 + 20)], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v175 = v171[9];
    v176 = v171[10];
    *v174 = v169;
    v177 = &v174[*(v170 + 24)];
    *v177 = v175;
    v177[1] = v176;
    outlined copy of Data?(v175, v176);
    lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type EventEntity and conformance EventEntity, type metadata accessor for EventEntity);
    UUID.init()();
    v178 = UUID.uuidString.getter();
    v180 = OUTLINED_FUNCTION_18_27(v178, v179);
    v181(v180);
    v183 = *(v166 + 16);
    v182 = v166 + 16;
    v183(v271, v167, v144);
    v293 = v170;
    v294 = lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation and conformance SearchPreExtractedEventStandardRepresentation, type metadata accessor for SearchPreExtractedEventStandardRepresentation);
    v295 = OUTLINED_FUNCTION_22_30(&lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation and conformance SearchPreExtractedEventStandardRepresentation);
    v296 = OUTLINED_FUNCTION_22_30(&lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation and conformance SearchPreExtractedEventStandardRepresentation);
    v184 = __swift_allocate_boxed_opaque_existential_1Tm(v292);
    _s10OmniSearch0B6ResultVWOcTm_11(v174, v184, type metadata accessor for SearchPreExtractedEventStandardRepresentation);
    v185 = v257;
    outlined init with copy of Date?(v171 + v173, v257, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    OUTLINED_FUNCTION_166(v185, 1, v277);
    if (v186)
    {
      outlined destroy of IntentApplication?(v185, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_5_53();
      OUTLINED_FUNCTION_24_30(v222, v223, v224);
      OUTLINED_FUNCTION_0_95();
      _s10OmniSearch0B6ResultVWOhTm_10(v185, v225);
      SearchResultItem.associatedValue.getter(&v290);
      v226 = v291;
      OUTLINED_FUNCTION_25_31();
      v227 = OUTLINED_FUNCTION_16_41(v226);
      v228(v227);
      OUTLINED_FUNCTION_2_71();
      _s10OmniSearch0B6ResultVWOhTm_10(v182, v229);
      __swift_destroy_boxed_opaque_existential_1Tm(&v290);
    }

    type metadata accessor for SearchToolDialog();
    v212 = v279;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v230, v231, v232, v233);
    OUTLINED_FUNCTION_7_50();
    OUTLINED_FUNCTION_15_42(v286, v285, v234, v235);
    OUTLINED_FUNCTION_0_95();
    _s10OmniSearch0B6ResultVWOhTm_10(v289, v236);
    _s10OmniSearch0B6ResultVWOhTm_10(v174, type metadata accessor for SearchPreExtractedEventStandardRepresentation);
    (*(v281 + 8))(v272, v144);
    outlined destroy of IntentApplication?(v118, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    OUTLINED_FUNCTION_14_34();
    v221 = &v297;
LABEL_39:
    v237 = *(v221 - 32);
LABEL_41:
    _s10OmniSearch0B6ResultVWOhTm_10(v237, v220);
    v141 = v287;
    v140 = v288;
    (*(v278 + 32))(v288, v212, v287);
    v142 = 0;
    return __swift_storeEnumTagSinglePayload(v140, v142, 1, v141);
  }

  OUTLINED_FUNCTION_14_34();
  _s10OmniSearch0B6ResultVWOhTm_10(v147, v150);
  v127 = &_s7ToolKit10TypedValueOSgMd;
  v128 = &_s7ToolKit10TypedValueOSgMR;
  v129 = v148;
LABEL_12:
  outlined destroy of IntentApplication?(v129, v127, v128);
  outlined init with copy of Date?(v105, v96, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_166(v96, 1, v112);
  if (v145)
  {
    OUTLINED_FUNCTION_0_95();
    _s10OmniSearch0B6ResultVWOhTm_10(v289, v130);
    outlined destroy of IntentApplication?(v105, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    outlined destroy of IntentApplication?(v96, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    v136 = v282;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
LABEL_18:
    v141 = v287;
    v140 = v288;
    outlined destroy of IntentApplication?(v136, &_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
    v142 = 1;
    return __swift_storeEnumTagSinglePayload(v140, v142, 1, v141);
  }

  v135 = *(v96 + 7);
  v136 = v282;
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_4_61();
  _s10OmniSearch0B6ResultVWOhTm_10(v96, v137);
  OUTLINED_FUNCTION_166(v136, 1, v283);
  if (v138)
  {
    OUTLINED_FUNCTION_0_95();
    _s10OmniSearch0B6ResultVWOhTm_10(v289, v139);
    outlined destroy of IntentApplication?(v105, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    goto LABEL_18;
  }

  v151 = v267;
  outlined init with take of IdCardEntity(v136, v267, type metadata accessor for IdCardEntity);
  v152 = v263;
  _s15OmniSearchTypes15LLMSearchResultV0aB0E19convertToTypedValue33_33502D4E8B2A1AFC285785940C04AED0LL_16bundleIdentifier7ToolKit0hI0OSgx_SSt10AppIntents09TransientU6EntityRzlFZAD06IdCardX0V_Tt2g5(v151, 0xD000000000000028, 0x800000025DBF6C30, v263);
  OUTLINED_FUNCTION_166(v152, 1, v144);
  if (!v153)
  {
    v187 = v281;
    v188 = v265;
    (*(v281 + 32))(v265, v152, v144);
    v189 = *v151;
    EntityProperty.wrappedValue.getter();
    v190 = v292[0];
    v191 = *(v283 + 32);
    v192 = v256;
    v193 = v266;
    outlined init with copy of Date?(v151 + v191, &v266[*(v256 + 20)], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v194 = v151[3];
    v195 = v151[4];
    *v193 = v190;
    v196 = &v193[*(v192 + 24)];
    *v196 = v194;
    v196[1] = v195;
    outlined copy of Data?(v194, v195);
    lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type IdCardEntity and conformance IdCardEntity, type metadata accessor for IdCardEntity);
    UUID.init()();
    v197 = UUID.uuidString.getter();
    v199 = OUTLINED_FUNCTION_18_27(v197, v198);
    v200(v199);
    (*(v187 + 16))(v264, v188, v144);
    v293 = v192;
    v294 = lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation and conformance SearchPreExtractedCardStandardRepresentation, type metadata accessor for SearchPreExtractedCardStandardRepresentation);
    v295 = OUTLINED_FUNCTION_22_30(&lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation and conformance SearchPreExtractedCardStandardRepresentation);
    v296 = OUTLINED_FUNCTION_22_30(&lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation and conformance SearchPreExtractedCardStandardRepresentation);
    v201 = __swift_allocate_boxed_opaque_existential_1Tm(v292);
    _s10OmniSearch0B6ResultVWOcTm_11(v193, v201, type metadata accessor for SearchPreExtractedCardStandardRepresentation);
    v202 = v255;
    outlined init with copy of Date?(v151 + v191, v255, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    OUTLINED_FUNCTION_166(v202, 1, v277);
    if (v203)
    {
      outlined destroy of IntentApplication?(v202, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_5_53();
      OUTLINED_FUNCTION_24_30(v238, v239, v240);
      OUTLINED_FUNCTION_0_95();
      _s10OmniSearch0B6ResultVWOhTm_10(v202, v241);
      SearchResultItem.associatedValue.getter(&v290);
      v242 = v291;
      OUTLINED_FUNCTION_25_31();
      v243 = OUTLINED_FUNCTION_16_41(v242);
      v244(v243);
      OUTLINED_FUNCTION_2_71();
      _s10OmniSearch0B6ResultVWOhTm_10(v191, v245);
      __swift_destroy_boxed_opaque_existential_1Tm(&v290);
    }

    type metadata accessor for SearchToolDialog();
    v212 = v279;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v246, v247, v248, v249);
    OUTLINED_FUNCTION_7_50();
    OUTLINED_FUNCTION_15_42(v286, v285, v250, v251);
    OUTLINED_FUNCTION_0_95();
    _s10OmniSearch0B6ResultVWOhTm_10(v289, v252);
    _s10OmniSearch0B6ResultVWOhTm_10(v266, type metadata accessor for SearchPreExtractedCardStandardRepresentation);
    (*(v187 + 8))(v265, v144);
    outlined destroy of IntentApplication?(v118, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    OUTLINED_FUNCTION_13_37();
    v237 = v151;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_0_95();
  _s10OmniSearch0B6ResultVWOhTm_10(v289, v154);
  outlined destroy of IntentApplication?(v118, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_13_37();
  _s10OmniSearch0B6ResultVWOhTm_10(v151, v155);
  outlined destroy of IntentApplication?(v152, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  v142 = 1;
  v141 = v287;
  v140 = v288;
  return __swift_storeEnumTagSinglePayload(v140, v142, 1, v141);
}

uint64_t _s15OmniSearchTypes15LLMSearchResultV0aB0E19convertToTypedValue33_33502D4E8B2A1AFC285785940C04AED0LL_16bundleIdentifier7ToolKit0hI0OSgx_SSt10AppIntents09TransientU6EntityRzlFZAD0buX0V_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for SearchAppEntity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TypeIdentifier();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type SearchAppEntity and conformance SearchAppEntity, type metadata accessor for SearchAppEntity);
  v17 = AppEntity.asValue.getter();
  v18 = [v17 value];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for LNEntity();
  if (swift_dynamicCast())
  {
    v19 = v39[1];
    type metadata accessor for TypedValue.EntityValue();
    v39[0] = swift_allocBox();
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;

    v21 = [v19 identifier];
    v22 = [v21 typeIdentifier];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = a4;
    v26 = v25;

    v20[4] = v23;
    v20[5] = v26;
    *v16 = v20;
    (*(v13 + 104))(v16, *MEMORY[0x277D72D28], v12);
    TypedValue.EntityValue.init(type:transientAppEntity:)();
    *v24 = v39[0];
    v27 = *MEMORY[0x277D72A38];
    v28 = type metadata accessor for TypedValue();
    (*(*(v28 - 8) + 104))(v24, v27, v28);
    v29 = v24;
    v30 = 0;
    v31 = v28;
  }

  else
  {
    if (one-time initialization token for utilities != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logging.utilities);
    _s10OmniSearch0B6ResultVWOcTm_11(a1, v11, type metadata accessor for SearchAppEntity);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39[2] = v36;
      *v35 = 136315138;
      specialized AppEntity.propertyDescription.getter(type metadata accessor for SearchAppEntity, type metadata accessor for SearchAppEntity, &_s10OmniSearch0B9AppEntityVmMd, &_s10OmniSearch0B9AppEntityVmMR);
      _s10OmniSearch0B6ResultVWOhTm_10(v11, type metadata accessor for SearchAppEntity);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v35 + 4) = v37;
      _os_log_impl(&dword_25D85C000, v33, v34, "Error when converting this entity to TypedValue: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x25F8A1050](v36, -1, -1);
      MEMORY[0x25F8A1050](v35, -1, -1);
    }

    else
    {

      _s10OmniSearch0B6ResultVWOhTm_10(v11, type metadata accessor for SearchAppEntity);
    }

    v31 = type metadata accessor for TypedValue();
    v29 = a4;
    v30 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v29, v30, 1, v31);
}

uint64_t _s15OmniSearchTypes15LLMSearchResultV0aB0E19convertToTypedValue33_33502D4E8B2A1AFC285785940C04AED0LL_16bundleIdentifier7ToolKit0hI0OSgx_SSt10AppIntents09TransientU6EntityRzlFZAD05EventX0V_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for EventEntity();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TypeIdentifier();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type EventEntity and conformance EventEntity, type metadata accessor for EventEntity);
  v17 = AppEntity.asValue.getter();
  v18 = [v17 value];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for LNEntity();
  if (swift_dynamicCast())
  {
    v19 = v39[1];
    type metadata accessor for TypedValue.EntityValue();
    v39[0] = swift_allocBox();
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;

    v21 = [v19 identifier];
    v22 = [v21 typeIdentifier];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = a4;
    v26 = v25;

    v20[4] = v23;
    v20[5] = v26;
    *v16 = v20;
    (*(v13 + 104))(v16, *MEMORY[0x277D72D28], v12);
    TypedValue.EntityValue.init(type:transientAppEntity:)();
    *v24 = v39[0];
    v27 = *MEMORY[0x277D72A38];
    v28 = type metadata accessor for TypedValue();
    (*(*(v28 - 8) + 104))(v24, v27, v28);
    v29 = v24;
    v30 = 0;
    v31 = v28;
  }

  else
  {
    if (one-time initialization token for utilities != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logging.utilities);
    _s10OmniSearch0B6ResultVWOcTm_11(a1, v11, type metadata accessor for EventEntity);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39[2] = v36;
      *v35 = 136315138;
      specialized AppEntity.propertyDescription.getter(type metadata accessor for EventEntity, type metadata accessor for EventEntity, &_s10OmniSearch11EventEntityVmMd, &_s10OmniSearch11EventEntityVmMR);
      _s10OmniSearch0B6ResultVWOhTm_10(v11, type metadata accessor for EventEntity);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v35 + 4) = v37;
      _os_log_impl(&dword_25D85C000, v33, v34, "Error when converting this entity to TypedValue: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x25F8A1050](v36, -1, -1);
      MEMORY[0x25F8A1050](v35, -1, -1);
    }

    else
    {

      _s10OmniSearch0B6ResultVWOhTm_10(v11, type metadata accessor for EventEntity);
    }

    v31 = type metadata accessor for TypedValue();
    v29 = a4;
    v30 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v29, v30, 1, v31);
}

uint64_t _s15OmniSearchTypes15LLMSearchResultV0aB0E19convertToTypedValue33_33502D4E8B2A1AFC285785940C04AED0LL_16bundleIdentifier7ToolKit0hI0OSgx_SSt10AppIntents09TransientU6EntityRzlFZAD06IdCardX0V_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for IdCardEntity();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TypeIdentifier();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type IdCardEntity and conformance IdCardEntity, type metadata accessor for IdCardEntity);
  v17 = AppEntity.asValue.getter();
  v18 = [v17 value];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for LNEntity();
  if (swift_dynamicCast())
  {
    v19 = v39[1];
    type metadata accessor for TypedValue.EntityValue();
    v39[0] = swift_allocBox();
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;

    v21 = [v19 identifier];
    v22 = [v21 typeIdentifier];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = a4;
    v26 = v25;

    v20[4] = v23;
    v20[5] = v26;
    *v16 = v20;
    (*(v13 + 104))(v16, *MEMORY[0x277D72D28], v12);
    TypedValue.EntityValue.init(type:transientAppEntity:)();
    *v24 = v39[0];
    v27 = *MEMORY[0x277D72A38];
    v28 = type metadata accessor for TypedValue();
    (*(*(v28 - 8) + 104))(v24, v27, v28);
    v29 = v24;
    v30 = 0;
    v31 = v28;
  }

  else
  {
    if (one-time initialization token for utilities != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logging.utilities);
    _s10OmniSearch0B6ResultVWOcTm_11(a1, v11, type metadata accessor for IdCardEntity);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39[2] = v36;
      *v35 = 136315138;
      specialized AppEntity.propertyDescription.getter(type metadata accessor for IdCardEntity, type metadata accessor for IdCardEntity, &_s10OmniSearch12IdCardEntityVmMd, &_s10OmniSearch12IdCardEntityVmMR);
      _s10OmniSearch0B6ResultVWOhTm_10(v11, type metadata accessor for IdCardEntity);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v35 + 4) = v37;
      _os_log_impl(&dword_25D85C000, v33, v34, "Error when converting this entity to TypedValue: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x25F8A1050](v36, -1, -1);
      MEMORY[0x25F8A1050](v35, -1, -1);
    }

    else
    {

      _s10OmniSearch0B6ResultVWOhTm_10(v11, type metadata accessor for IdCardEntity);
    }

    v31 = type metadata accessor for TypedValue();
    v29 = a4;
    v30 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v29, v30, 1, v31);
}

uint64_t outlined init with take of IdCardEntity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t type metadata accessor for LNEntity()
{
  result = lazy cache variable for type metadata for LNEntity;
  if (!lazy cache variable for type metadata for LNEntity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNEntity);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10OmniSearch0B6ResultVWOcTm_11(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_15_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 - 256);

  return MEMORY[0x282196B00](a1, a2, v8, a4, 0, 0xF000000000000000, v5, v6);
}

uint64_t OUTLINED_FUNCTION_18_27(uint64_t a1, uint64_t a2)
{
  *(v3 - 224) = a2;
  *(v3 - 216) = a1;
  v4 = *(*(v3 - 368) + 8);
  result = v2;
  v6 = *(v3 - 360);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_30(unint64_t *a1)
{

  return lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(a1, v1);
}

uint64_t OUTLINED_FUNCTION_24_30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(v4 - 416);

  return _s10OmniSearch0B6ResultVWOcTm_11(v3, v6, a3);
}

uint64_t static LocalizedString.localizedString(forKey:arguments:)(uint64_t a1, uint64_t a2)
{
  static LocalizedString.localizedString(forKey:)(a1, a2);

  v2 = String.init(format:_:)();

  return v2;
}

uint64_t static LocalizedString.localizedString(forKey:)(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = MEMORY[0x25F89F4C0](a1, a2);
  v7 = MEMORY[0x25F89F4C0](a1, a2);
  v8 = MEMORY[0x25F89F4C0](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

id LocalizedString.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocalizedString.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalizedString();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LocalizedString.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LocalizedString.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocalizedString();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LocalizedString.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalizedString();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *MetricsLogger.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  return &static MetricsLogger.shared;
}

uint64_t static MetricsLogger.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }
}

uint64_t key path getter for MetricsLogger.metricsStream : MetricsLogger@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(**a1 + 88))();
  result = type metadata accessor for Library.Streams.IntelligenceFlow.SearchToolTelemetry();
  *a2 = result;
  return result;
}

void specialized MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v3 = type metadata accessor for IntelligenceFlowSearchToolTelemetry();
  v4 = OUTLINED_FUNCTION_1_83(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v11 = v10 - v9;
  static Buildable.with(_:)();
  closure #3 in MetricsLogger.logSearchToolGeneralSearchStarted(clientId:preWarmed:)(v11, v2);
  (*(v6 + 8))(v11, v0);

  OUTLINED_FUNCTION_148();
}

uint64_t specialized closure #1 in MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v30 = type metadata accessor for Mirror();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v30);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMd, &_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF13EventMetadataVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF13EventMetadataVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v24 - v17;
  v19 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata();
  v27 = a2;
  v28 = a3;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
  IntelligenceFlowSearchToolTelemetry.eventMetadata.setter();
  static MonotonicTimestamp.nowForSuspendingClock()();
  v20 = type metadata accessor for MonotonicTimestamp();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v20);
  IntelligenceFlowSearchToolTelemetry.monotonicTimestamp.setter();
  v21 = type metadata accessor for IntelligenceFlowSearchToolTelemetry();
  v29[3] = v21;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v29);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm, v25, v21);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v7 + 8))(v10, v30);
  v26 = a1;
  dispatch thunk of _AnySequenceBox._forEach(_:)();
}

uint64_t UUID.asAIMLUUID()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_114(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  AIML.UUID.init()();
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_17(v7);
  (*(v8 + 16))(v6, v0, v7);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
  return AIML.UUID.value.setter();
}

uint64_t closure #2 in closure #1 in MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF17RequestInvocationVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF17RequestInvocationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE10EndedTier1VSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE10EndedTier1VSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF29HallucinationDetectionContextVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF29HallucinationDetectionContextVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v71 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF24LLMQUQueryArgumentsTier1VSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF24LLMQUQueryArgumentsTier1VSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v71 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v71 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v71 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v71 - v34;
  outlined init with copy of Date?(a1, &v78, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
  v36 = v79;
  if (v79)
  {
    v76 = v2;
    v37 = v78;
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    outlined init with copy of Date?(a1, &v78, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

    outlined init with take of Any(v80, v77);
    v38 = v37 == 0xD00000000000001ELL && 0x800000025DBF98F0 == v36;
    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      outlined init with copy of Any(v77, &v78);
      v39 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext();
      v40 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v35, v40 ^ 1u, 1, v39);
      IntelligenceFlowSearchToolTelemetry.searchToolGeneralSearchContext.setter();
    }

    else
    {
      v42 = v37 == 0xD000000000000026 && 0x800000025DBF9910 == v36;
      if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        outlined init with copy of Any(v77, &v78);
        v43 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext();
        v44 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v31, v44 ^ 1u, 1, v43);
        IntelligenceFlowSearchToolTelemetry.searchToolLLMQueryUnderstandingContext.setter();
      }

      else
      {
        v45 = v37 == 0xD00000000000001ALL && 0x800000025DBF9940 == v36;
        if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          outlined init with copy of Any(v77, &v78);
          v46 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightContext();
          v47 = swift_dynamicCast();
          __swift_storeEnumTagSinglePayload(v27, v47 ^ 1u, 1, v46);
          IntelligenceFlowSearchToolTelemetry.searchToolSpotlightContext.setter();
        }

        else
        {
          v48 = v37 == 0xD000000000000020 && 0x800000025DBF9960 == v36;
          if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            outlined init with copy of Any(v77, &v78);
            v49 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisContext();
            v50 = swift_dynamicCast();
            __swift_storeEnumTagSinglePayload(v23, v50 ^ 1u, 1, v49);
            IntelligenceFlowSearchToolTelemetry.searchToolAnswerSynthesisContext.setter();
          }

          else
          {
            v51 = v37 == 0xD00000000000001DLL && 0x800000025DBF9990 == v36;
            if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              outlined init with copy of Any(v77, &v78);
              v52 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchContext();
              v53 = swift_dynamicCast();
              __swift_storeEnumTagSinglePayload(v19, v53 ^ 1u, 1, v52);
              IntelligenceFlowSearchToolTelemetry.searchToolGlobalSearchContext.setter();
            }

            else
            {
              v54 = v37 == 0xD000000000000022 && 0x800000025DBF99B0 == v36;
              if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                outlined init with copy of Any(v77, &v78);
                v55 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1();
                v56 = v75;
                v57 = swift_dynamicCast();
                __swift_storeEnumTagSinglePayload(v56, v57 ^ 1u, 1, v55);
                IntelligenceFlowSearchToolTelemetry.searchToolLLMQUQueryArgumentsTier1.setter();
              }

              else
              {
                v58 = v37 == 0xD000000000000027 && 0x800000025DBF99E0 == v36;
                if (v58 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  outlined init with copy of Any(v77, &v78);
                  v59 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext();
                  v60 = v74;
                  v61 = swift_dynamicCast();
                  __swift_storeEnumTagSinglePayload(v60, v61 ^ 1u, 1, v59);
                  IntelligenceFlowSearchToolTelemetry.searchToolHallucinationDetectionContext.setter();
                }

                else
                {
                  v62 = v37 == 0xD000000000000011 && 0x800000025DBF9A10 == v36;
                  if (!v62 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    if (v37 == 0x697461636F766E69 && v36 == 0xEA00000000006E6FLL)
                    {
                    }

                    else
                    {
                      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v67 & 1) == 0)
                      {
                        return __swift_destroy_boxed_opaque_existential_1Tm(v77);
                      }
                    }

                    outlined init with copy of Any(v77, &v78);
                    v68 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation();
                    v69 = v72;
                    v70 = swift_dynamicCast();
                    __swift_storeEnumTagSinglePayload(v69, v70 ^ 1u, 1, v68);
                    IntelligenceFlowSearchToolTelemetry.invocation.setter();
                    return __swift_destroy_boxed_opaque_existential_1Tm(v77);
                  }

                  outlined init with copy of Any(v77, &v78);
                  v63 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1();
                  v64 = v73;
                  v65 = swift_dynamicCast();
                  __swift_storeEnumTagSinglePayload(v64, v65 ^ 1u, 1, v63);
                  IntelligenceFlowSearchToolTelemetry.requestEndedTier1.setter();
                }
              }
            }
          }
        }
      }
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v77);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v80);
}

Swift::Void __swiftcall MetricsLogger.logSearchToolGeneralSearchStarted(clientId:preWarmed:)(Swift::String clientId, Swift::Bool preWarmed)
{
  OUTLINED_FUNCTION_155();
  v2 = OUTLINED_FUNCTION_30_29();
  v3 = OUTLINED_FUNCTION_1_83(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted();
  v7 = OUTLINED_FUNCTION_3_67(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v10 = OUTLINED_FUNCTION_9_50();
  v11(v10);
  v12 = OUTLINED_FUNCTION_8_52();
  v13(v12);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in MetricsLogger.logSearchToolGeneralSearchStarted(clientId:preWarmed:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FD70];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolGeneralSearchContext.setter();
}

Swift::Void __swiftcall MetricsLogger.logSearchToolRequestInvocation(traceId:clientId:)(Swift::String traceId, Swift::String clientId)
{
  v2 = OUTLINED_FUNCTION_30_29();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_18_28();
  static Buildable.with(_:)();

  specialized MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)();
  (*(v5 + 8))(v10, v2);
}

uint64_t closure #1 in MetricsLogger.logSearchToolRequestInvocation(traceId:clientId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF17RequestInvocationVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF17RequestInvocationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11[-v7];
  v9 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation();
  v12 = a2;
  v13 = a3;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  return IntelligenceFlowSearchToolTelemetry.invocation.setter();
}

uint64_t closure #1 in closure #1 in MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = OUTLINED_FUNCTION_114(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_109();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  OUTLINED_FUNCTION_114(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_182();
  UUID.init(uuidString:)();
  v20 = type metadata accessor for UUID();
  if (__swift_getEnumTagSinglePayload(v15, 1, v20) == 1)
  {
    outlined destroy of IntentApplication?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v21 = 1;
  }

  else
  {
    AIML.UUID.init()();
    OUTLINED_FUNCTION_40_25();
    v23 = v22;
    (*(v24 + 16))(v12, v15, v20);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
    AIML.UUID.value.setter();
    (*(v23 + 8))(v15, v20);
    v21 = 0;
  }

  v28 = type metadata accessor for AIML.UUID();
  __swift_storeEnumTagSinglePayload(v4, v21, 1, v28);
  return a4(v4);
}

uint64_t closure #3 in MetricsLogger.logSearchToolGeneralSearchStarted(clientId:preWarmed:)(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 88))();
  type metadata accessor for Library.Streams.IntelligenceFlow.SearchToolTelemetry();
  lazy protocol witness table accessor for type Library.Streams.IntelligenceFlow.SearchToolTelemetry and conformance Library.Streams.IntelligenceFlow.SearchToolTelemetry();
  result = static StreamResource.source()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    dispatch thunk of Source.sendEvent(_:)();
    return __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  return result;
}

Swift::Void __swiftcall MetricsLogger.logSearchToolLLMQURequestStarted(clientId:)(Swift::String clientId)
{
  OUTLINED_FUNCTION_155();
  v3 = OUTLINED_FUNCTION_23_27(v1, v2);
  v4 = OUTLINED_FUNCTION_1_83(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_96();
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestStarted();
  v8 = OUTLINED_FUNCTION_3_67(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_16_42();
  OUTLINED_FUNCTION_18_28();
  OUTLINED_FUNCTION_17_40();

  OUTLINED_FUNCTION_15_43();
  v11 = OUTLINED_FUNCTION_9_50();
  v12(v11);
  v13 = OUTLINED_FUNCTION_8_52();
  v14(v13);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in MetricsLogger.logSearchToolLLMQURequestStarted(clientId:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestStarted();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FC78];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolLLMQueryUnderstandingContext.setter();
}

void MetricsLogger.logSearchToolLLMQURequestEnded(clientId:llmQUResult:)()
{
  OUTLINED_FUNCTION_155();
  v70 = v0;
  v2 = v1;
  v81 = v3;
  v77 = v4;
  v5 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1();
  v6 = OUTLINED_FUNCTION_14(v5);
  v78 = v7;
  v79 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v76 = v11 - v10;
  OUTLINED_FUNCTION_78_0();
  v75 = type metadata accessor for IntelligenceFlowSearchToolTelemetry();
  v12 = OUTLINED_FUNCTION_14(v75);
  v73 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v71 = v17 - v16;
  OUTLINED_FUNCTION_78_0();
  v74 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded();
  v18 = OUTLINED_FUNCTION_14(v74);
  v72 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v80 = v23 - v22;
  OUTLINED_FUNCTION_78_0();
  v24 = type metadata accessor for UUID();
  v25 = OUTLINED_FUNCTION_14(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v31 = OUTLINED_FUNCTION_114(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_109();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v68 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  OUTLINED_FUNCTION_114(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v43);
  v45 = &v68 - v44;
  memcpy(v83, v2, sizeof(v83));
  UUID.init()();
  UUID.uuidString.getter();
  v68 = v27;
  v46 = *(v27 + 8);
  v47 = OUTLINED_FUNCTION_88();
  v46(v47);
  UUID.init(uuidString:)();

  if (__swift_getEnumTagSinglePayload(v39, 1, v24) == 1)
  {
    outlined destroy of IntentApplication?(v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v48 = 1;
  }

  else
  {
    AIML.UUID.init()();
    (*(v68 + 16))(v36, v39, v24);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v24);
    AIML.UUID.value.setter();
    (v46)(v39, v24);
    v48 = 0;
  }

  v69 = v45;
  v52 = type metadata accessor for AIML.UUID();
  __swift_storeEnumTagSinglePayload(v45, v48, 1, v52);
  memcpy(v82, v83, sizeof(v82));
  v53 = v70;
  v54 = *(*v70 + 288);
  v55 = v80;
  v56 = OUTLINED_FUNCTION_38_27();
  v58 = v57(v56);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_32_33();
  *(v59 - 16) = v55;
  v60 = v71;
  v61 = v75;
  static Buildable.with(_:)();

  OUTLINED_FUNCTION_33_32();
  v73 = *(v73 + 8);
  (v73)(v60, v61);
  v62 = *(*v53 + 296);
  v63 = v76;
  v64 = OUTLINED_FUNCTION_38_27();
  v66 = v65(v64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_32_33();
  *(v67 - 16) = v63;
  static Buildable.with(_:)();

  OUTLINED_FUNCTION_33_32();
  (v73)(v60, v61);
  outlined destroy of IntentApplication?(v69, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  (*(v78 + 8))(v63, v79);
  (*(v72 + 8))(v80, v74);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolLLMQURequestEnded(clientId:llmQUResult:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FC80];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolLLMQueryUnderstandingContext.setter();
}

void MetricsLogger.logSearchToolLLMQURequestFailed(clientId:stError:)()
{
  OUTLINED_FUNCTION_155();
  v2 = OUTLINED_FUNCTION_13_38(v0, v1);
  v3 = OUTLINED_FUNCTION_1_83(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestFailed();
  v7 = OUTLINED_FUNCTION_3_67(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v10 = OUTLINED_FUNCTION_9_50();
  v11(v10);
  v12 = OUTLINED_FUNCTION_8_52();
  v13(v12);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolLLMQURequestFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF18LLMQUFailureReasonOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF18LLMQUFailureReasonOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v15 - v9;
  *(v15 - v9) = 0;
  v11 = *MEMORY[0x277D1FBD8];
  v12 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUFailureReason();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  MEMORY[0x25F89E3D0](v10);
  v13 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  (*(*(v13 - 8) + 16))(v6, a2, v13);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v13);
  return MEMORY[0x25F89E3C0](v6);
}

uint64_t closure #2 in MetricsLogger.logSearchToolLLMQURequestFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestFailed();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FC88];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolLLMQueryUnderstandingContext.setter();
}

Swift::Void __swiftcall MetricsLogger.logSearchToolSpotlightRequestStarted(clientId:)(Swift::String clientId)
{
  OUTLINED_FUNCTION_155();
  v3 = OUTLINED_FUNCTION_23_27(v1, v2);
  v4 = OUTLINED_FUNCTION_1_83(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_96();
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestStarted();
  v8 = OUTLINED_FUNCTION_3_67(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_16_42();
  OUTLINED_FUNCTION_18_28();
  OUTLINED_FUNCTION_17_40();

  OUTLINED_FUNCTION_15_43();
  v11 = OUTLINED_FUNCTION_9_50();
  v12(v11);
  v13 = OUTLINED_FUNCTION_8_52();
  v14(v13);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in MetricsLogger.logSearchToolSpotlightRequestStarted(clientId:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestStarted();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FBB0];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolSpotlightContext.setter();
}

Swift::Void __swiftcall MetricsLogger.logSearchToolSpotlightRequestEnded(clientId:metrics:)(Swift::String clientId, Swift::OpaquePointer_optional metrics)
{
  OUTLINED_FUNCTION_155();
  v4 = OUTLINED_FUNCTION_13_38(v2, v3);
  v5 = OUTLINED_FUNCTION_1_83(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_96();
  v8 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded();
  v9 = OUTLINED_FUNCTION_3_67(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v12 = OUTLINED_FUNCTION_9_50();
  v13(v12);
  v14 = OUTLINED_FUNCTION_8_52();
  v15(v14);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolSpotlightRequestEnded(clientId:metrics:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV0hI15SpotlightResultVGMd, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV0hI15SpotlightResultVGMR);
    v2 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult() - 8);
    v3 = *(v2 + 72);
    v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    *(swift_allocObject() + 16) = xmmword_25DBC8180;
    IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.init()();
  }

  return IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded.result.setter();
}

uint64_t closure #2 in MetricsLogger.logSearchToolSpotlightRequestEnded(clientId:metrics:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FBB8];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolSpotlightContext.setter();
}

void MetricsLogger.logSearchToolSpotlightRequestFailed(clientId:stError:)()
{
  OUTLINED_FUNCTION_155();
  v2 = OUTLINED_FUNCTION_13_38(v0, v1);
  v3 = OUTLINED_FUNCTION_1_83(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestFailed();
  v7 = OUTLINED_FUNCTION_3_67(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v10 = OUTLINED_FUNCTION_9_50();
  v11(v10);
  v12 = OUTLINED_FUNCTION_8_52();
  v13(v12);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolSpotlightRequestFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22SpotlightFailureReasonOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22SpotlightFailureReasonOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v15 - v9;
  *(v15 - v9) = 0;
  v11 = *MEMORY[0x277D1FC10];
  v12 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightFailureReason();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  MEMORY[0x25F89E4E0](v10);
  v13 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  (*(*(v13 - 8) + 16))(v6, a2, v13);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v13);
  return MEMORY[0x25F89E4D0](v6);
}

uint64_t closure #2 in MetricsLogger.logSearchToolSpotlightRequestFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestFailed();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FBC0];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolSpotlightContext.setter();
}

Swift::Void __swiftcall MetricsLogger.logSearchToolAnswerSynthesisRequestStarted(clientId:)(Swift::String clientId)
{
  OUTLINED_FUNCTION_155();
  v3 = OUTLINED_FUNCTION_23_27(v1, v2);
  v4 = OUTLINED_FUNCTION_1_83(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_96();
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestStarted();
  v8 = OUTLINED_FUNCTION_3_67(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_16_42();
  OUTLINED_FUNCTION_18_28();
  OUTLINED_FUNCTION_17_40();

  OUTLINED_FUNCTION_15_43();
  v11 = OUTLINED_FUNCTION_9_50();
  v12(v11);
  v13 = OUTLINED_FUNCTION_8_52();
  v14(v13);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in MetricsLogger.logSearchToolAnswerSynthesisRequestStarted(clientId:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestStarted();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FBF8];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolAnswerSynthesisContext.setter();
}

void MetricsLogger.logSearchToolAnswerSynthesisRequestEnded(clientId:answerSynthesisResult:)()
{
  OUTLINED_FUNCTION_155();
  v2 = OUTLINED_FUNCTION_13_38(v0, v1);
  v3 = OUTLINED_FUNCTION_1_83(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestEnded();
  v7 = OUTLINED_FUNCTION_3_67(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v10 = OUTLINED_FUNCTION_9_50();
  v11(v10);
  v12 = OUTLINED_FUNCTION_8_52();
  v13(v12);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolAnswerSynthesisRequestEnded(clientId:answerSynthesisResult:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV0hI21AnswerSynthesisResultVGMd, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV0hI21AnswerSynthesisResultVGMR);
  v3 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25DBC8180;
  (*(v4 + 16))(v7 + v6, a2, v3);
  return IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded.result.setter();
}

uint64_t closure #2 in MetricsLogger.logSearchToolAnswerSynthesisRequestEnded(clientId:answerSynthesisResult:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestEnded();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FC00];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolAnswerSynthesisContext.setter();
}

void MetricsLogger.logSearchToolAnswerSynthesisRequestFailed(clientId:stError:)()
{
  OUTLINED_FUNCTION_155();
  v2 = OUTLINED_FUNCTION_13_38(v0, v1);
  v3 = OUTLINED_FUNCTION_1_83(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestFailed();
  v7 = OUTLINED_FUNCTION_3_67(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v10 = OUTLINED_FUNCTION_9_50();
  v11(v10);
  v12 = OUTLINED_FUNCTION_8_52();
  v13(v12);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolAnswerSynthesisRequestFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28AnswerSynthesisFailureReasonOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28AnswerSynthesisFailureReasonOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v15 - v9;
  *(v15 - v9) = 0;
  v11 = *MEMORY[0x277D1FC48];
  v12 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisFailureReason();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  MEMORY[0x25F89E6F0](v10);
  v13 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  (*(*(v13 - 8) + 16))(v6, a2, v13);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v13);
  return MEMORY[0x25F89E6E0](v6);
}

uint64_t closure #2 in MetricsLogger.logSearchToolAnswerSynthesisRequestFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestFailed();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FC08];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolAnswerSynthesisContext.setter();
}

Swift::Void __swiftcall MetricsLogger.logSearchToolGlobalSearchStarted(clientId:)(Swift::String clientId)
{
  OUTLINED_FUNCTION_155();
  v3 = OUTLINED_FUNCTION_23_27(v1, v2);
  v4 = OUTLINED_FUNCTION_1_83(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_96();
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestStarted();
  v8 = OUTLINED_FUNCTION_3_67(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_16_42();
  OUTLINED_FUNCTION_18_28();
  OUTLINED_FUNCTION_17_40();

  OUTLINED_FUNCTION_15_43();
  v11 = OUTLINED_FUNCTION_9_50();
  v12(v11);
  v13 = OUTLINED_FUNCTION_8_52();
  v14(v13);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in MetricsLogger.logSearchToolGlobalSearchStarted(clientId:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestStarted();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FD10];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolGlobalSearchContext.setter();
}

Swift::Void __swiftcall MetricsLogger.logSearchToolGlobalSearchEnded(clientId:globalResults:)(Swift::String clientId, Swift::OpaquePointer globalResults)
{
  OUTLINED_FUNCTION_155();
  v2 = OUTLINED_FUNCTION_30_29();
  v3 = OUTLINED_FUNCTION_1_83(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestEnded();
  v7 = OUTLINED_FUNCTION_3_67(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_72();
  static Buildable.with(_:)();
  OUTLINED_FUNCTION_17_40();

  specialized MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)();
  v10 = OUTLINED_FUNCTION_9_50();
  v11(v10);
  v12 = OUTLINED_FUNCTION_8_52();
  v13(v12);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in MetricsLogger.logSearchToolGlobalSearchEnded(clientId:globalResults:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestEnded();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FD18];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolGlobalSearchContext.setter();
}

void MetricsLogger.logSearchToolGlobalSearchFailed(clientId:stError:)()
{
  OUTLINED_FUNCTION_155();
  v2 = OUTLINED_FUNCTION_13_38(v0, v1);
  v3 = OUTLINED_FUNCTION_1_83(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestFailed();
  v7 = OUTLINED_FUNCTION_3_67(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v10 = OUTLINED_FUNCTION_9_50();
  v11(v10);
  v12 = OUTLINED_FUNCTION_8_52();
  v13(v12);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolGlobalSearchFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE13FailureReasonOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE13FailureReasonOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v15 - v9;
  *(v15 - v9) = 0;
  v11 = *MEMORY[0x277D1FCF0];
  v12 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchFailureReason();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  MEMORY[0x25F89E810](v10);
  v13 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  (*(*(v13 - 8) + 16))(v6, a2, v13);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v13);
  return MEMORY[0x25F89E800](v6);
}

uint64_t closure #2 in MetricsLogger.logSearchToolGlobalSearchFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestFailed();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FD20];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolGlobalSearchContext.setter();
}

Swift::Void __swiftcall MetricsLogger.logSearchToolGeneralSearchEnded(clientId:from:dialogId:)(Swift::String clientId, Swift::OpaquePointer from, Swift::String dialogId)
{
  OUTLINED_FUNCTION_155();
  v70 = v3;
  v63 = v4;
  v64 = v5;
  v61 = v6;
  v67 = v7;
  v68 = v8;
  v69 = type metadata accessor for IntelligenceFlowSearchToolTelemetry();
  v9 = OUTLINED_FUNCTION_14(v69);
  v66 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v65 = v14 - v13;
  OUTLINED_FUNCTION_78_0();
  v72 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded();
  v15 = OUTLINED_FUNCTION_14(v72);
  v62 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  v71 = v20 - v19;
  OUTLINED_FUNCTION_78_0();
  v21 = type metadata accessor for UUID();
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v28 = OUTLINED_FUNCTION_114(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_109();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v60 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  OUTLINED_FUNCTION_114(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v40);
  v42 = &v60 - v41;
  UUID.init()();
  UUID.uuidString.getter();
  v43 = *(v24 + 8);
  v44 = OUTLINED_FUNCTION_88();
  v43(v44);
  UUID.init(uuidString:)();

  if (__swift_getEnumTagSinglePayload(v36, 1, v21) == 1)
  {
    outlined destroy of IntentApplication?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v45 = 1;
  }

  else
  {
    AIML.UUID.init()();
    (*(v24 + 16))(v33, v36, v21);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v21);
    AIML.UUID.value.setter();
    (v43)(v36, v21);
    v45 = 0;
  }

  v49 = type metadata accessor for AIML.UUID();
  v50 = __swift_storeEnumTagSinglePayload(v42, v45, 1, v49);
  MEMORY[0x28223BE20](v50);
  v51 = v61;
  *(&v60 - 4) = v70;
  *(&v60 - 3) = v51;
  *(&v60 - 2) = v42;
  v52 = v71;
  v53 = static Buildable.with(_:)();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_32_33();
  *(v54 - 16) = v52;
  v55 = v65;
  v56 = v69;
  static Buildable.with(_:)();

  OUTLINED_FUNCTION_35_30();
  v57 = *(v66 + 8);
  v58 = v57(v55, v56);
  MEMORY[0x28223BE20](v58);
  v59 = v64;
  *(&v60 - 4) = v63;
  *(&v60 - 3) = v59;
  *(&v60 - 2) = v42;
  static Buildable.with(_:)();

  OUTLINED_FUNCTION_35_30();
  v57(v55, v56);
  (*(v62 + 8))(v71, v72);
  outlined destroy of IntentApplication?(v42, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolGeneralSearchEnded(clientId:from:dialogId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v13 - v10;
  (*(*a2 + 280))(a3, v9);
  IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded.result.setter();
  outlined init with copy of Date?(a4, v11, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  return IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded.linkId.setter();
}

uint64_t closure #2 in MetricsLogger.logSearchToolGeneralSearchEnded(clientId:from:dialogId:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FD78];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolGeneralSearchContext.setter();
}

uint64_t closure #4 in MetricsLogger.logSearchToolGeneralSearchEnded(clientId:from:dialogId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE10EndedTier1VSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE10EndedTier1VSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13[-v9];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1();
  v14 = a2;
  v15 = a3;
  v16 = a4;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.requestEndedTier1.setter();
}

uint64_t closure #1 in closure #4 in MetricsLogger.logSearchToolGeneralSearchEnded(clientId:from:dialogId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v10 - v7;

  IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1.staticDialogId.setter();
  outlined init with copy of Date?(a4, v8, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  return MEMORY[0x25F89E8B0](v8);
}

void MetricsLogger.logSearchToolGeneralSearchFailed(clientId:stError:)()
{
  OUTLINED_FUNCTION_155();
  v2 = OUTLINED_FUNCTION_13_38(v0, v1);
  v3 = OUTLINED_FUNCTION_1_83(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchFailed();
  v7 = OUTLINED_FUNCTION_3_67(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v10 = OUTLINED_FUNCTION_9_50();
  v11(v10);
  v12 = OUTLINED_FUNCTION_8_52();
  v13(v12);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolGeneralSearchFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE13FailureReasonOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE13FailureReasonOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v15 - v9;
  *(v15 - v9) = 0;
  v11 = *MEMORY[0x277D1FD50];
  v12 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchFailureReason();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  MEMORY[0x25F89E930](v10);
  v13 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  (*(*(v13 - 8) + 16))(v6, a2, v13);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v13);
  return MEMORY[0x25F89E920](v6);
}

uint64_t closure #2 in MetricsLogger.logSearchToolGeneralSearchFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchFailed();
  v8 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v9, a2, v7);
  *v6 = v8;
  v10 = *MEMORY[0x277D1FD80];
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext();
  (*(*(v11 - 8) + 104))(v6, v10, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  return IntelligenceFlowSearchToolTelemetry.searchToolGeneralSearchContext.setter();
}

void MetricsLogger.logHallucinationDetectionRequestStarted(clientId:source:)()
{
  OUTLINED_FUNCTION_155();
  v2 = OUTLINED_FUNCTION_13_38(v0, v1);
  v3 = OUTLINED_FUNCTION_1_83(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionStarted();
  v7 = OUTLINED_FUNCTION_3_67(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v10 = OUTLINED_FUNCTION_9_50();
  v11(v10);
  v12 = OUTLINED_FUNCTION_8_52();
  v13(v12);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #3 in MetricsLogger.logSearchToolLLMQURequestEnded(clientId:llmQUResult:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void, __n128), uint64_t (*a6)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = a5(0, v13);
  OUTLINED_FUNCTION_11_51(v16);
  (*(v17 + 16))(v15, a2, a5);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, a5);
  return a6(v15);
}

Swift::Void __swiftcall MetricsLogger.logHallucinationDetectionRequestEnded(clientId:latency:)(Swift::String clientId, Swift::UInt32 latency)
{
  OUTLINED_FUNCTION_155();
  v2 = OUTLINED_FUNCTION_30_29();
  v3 = OUTLINED_FUNCTION_1_83(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded();
  v7 = OUTLINED_FUNCTION_3_67(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v10 = OUTLINED_FUNCTION_9_50();
  v11(v10);
  v12 = OUTLINED_FUNCTION_8_52();
  v13(v12);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logHallucinationDetectionRequestEnded(clientId:latency:)(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    return MEMORY[0x25F89E6B0](a2);
  }

  __break(1u);
  return result;
}

void MetricsLogger.logHallucinationDetectionRequestFailed(clientId:stError:)()
{
  OUTLINED_FUNCTION_155();
  v2 = OUTLINED_FUNCTION_13_38(v0, v1);
  v3 = OUTLINED_FUNCTION_1_83(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed();
  v7 = OUTLINED_FUNCTION_3_67(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v10 = OUTLINED_FUNCTION_9_50();
  v11(v10);
  v12 = OUTLINED_FUNCTION_8_52();
  v13(v12);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logHallucinationDetectionRequestFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF35HallucinationDetectionFailureReasonOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF35HallucinationDetectionFailureReasonOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v15 - v9;
  *(v15 - v9) = 0;
  v11 = *MEMORY[0x277D1FCD8];
  v12 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.reason.setter();
  v13 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  (*(*(v13 - 8) + 16))(v6, a2, v13);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v13);
  return MEMORY[0x25F89E710](v6);
}

uint64_t closure #2 in MetricsLogger.logHallucinationDetectionRequestStarted(clientId:source:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF29HallucinationDetectionContextVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF29HallucinationDetectionContextVSgMR);
  OUTLINED_FUNCTION_114(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext();
  static Buildable.with(_:)();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  OUTLINED_FUNCTION_38_27();
  return IntelligenceFlowSearchToolTelemetry.searchToolHallucinationDetectionContext.setter();
}

uint64_t closure #1 in closure #2 in MetricsLogger.logHallucinationDetectionRequestStarted(clientId:source:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v6 = a3(0);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  v10 = MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(&v15 - v11, a2, v10);
  v13 = OUTLINED_FUNCTION_38_27();
  return a4(v13);
}

void MetricsLogger.createResults(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_155();
  a20 = v22;
  a21 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE10ResultTypeOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE10ResultTypeOSgMR);
  OUTLINED_FUNCTION_114(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v29);
  v211 = (&v185 - v30);
  OUTLINED_FUNCTION_78_0();
  v213 = type metadata accessor for SearchResultType();
  v31 = OUTLINED_FUNCTION_14(v213);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_36();
  v212 = v37 - v36;
  v38 = OUTLINED_FUNCTION_78_0();
  v214 = type metadata accessor for SearchSpotlightEntity(v38);
  v39 = OUTLINED_FUNCTION_17(v214);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_36();
  v190 = (v43 - v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  v45 = OUTLINED_FUNCTION_114(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v49);
  v199 = &v185 - v50;
  v51 = OUTLINED_FUNCTION_78_0();
  v52 = type metadata accessor for SearchAppEntity(v51);
  v53 = OUTLINED_FUNCTION_11_51(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_36();
  v58 = v57 - v56;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  v60 = OUTLINED_FUNCTION_114(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v64);
  v66 = (&v185 - v65);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v68 = OUTLINED_FUNCTION_114(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v71);
  v210 = &v185 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  OUTLINED_FUNCTION_114(v73);
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v76);
  v78 = &v185 - v77;
  v79 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult();
  v80 = OUTLINED_FUNCTION_14(v79);
  v82 = v81;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_109();
  v218 = v85 - v86;
  MEMORY[0x28223BE20](v87);
  v89 = &v185 - v88;
  v209 = type metadata accessor for SearchEntity(0);
  v90 = *(*(v209 - 8) + 64);
  MEMORY[0x28223BE20](v209);
  v93 = &v185 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *(v25 + 16);
  if (v94)
  {
    v189 = v58;
    v95 = v82;
    v96 = v25 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v97 = *(v91 + 72);
    v204 = (v33 + 88);
    v205 = v97;
    v203 = *MEMORY[0x277D37080];
    v194 = *MEMORY[0x277D37060];
    v192 = *MEMORY[0x277D37068];
    v188 = *MEMORY[0x277D37088];
    v186 = *MEMORY[0x277D1FD40];
    v185 = (v33 + 8);
    v196 = *MEMORY[0x277D1FD48];
    v202 = (v95 + 16);
    v201 = v95 + 8;
    v187 = *MEMORY[0x277D1FD38];
    v206 = v95;
    v200 = v95 + 32;
    v191 = *MEMORY[0x277D1FD30];
    v219 = MEMORY[0x277D84F90];
    v98 = v21;
    v208 = v21;
    v193 = v66;
    v99 = v78;
    v215 = v78;
    v217 = v93;
    v207 = v79;
    while (1)
    {
      v216 = v94;
      _s10OmniSearch0B6EntityVWOcTm_3(v96, v93, type metadata accessor for SearchEntity);
      IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.init()();
      v100 = *&v93[*(v209 + 92)];
      EntityProperty.wrappedValue.getter();
      v101 = v210;
      UUID.init(uuidString:)();

      v102 = type metadata accessor for UUID();
      v103 = OUTLINED_FUNCTION_93_6();
      if (__swift_getEnumTagSinglePayload(v103, v104, v102) == 1)
      {
        outlined destroy of IntentApplication?(v101, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v105 = 1;
      }

      else
      {
        AIML.UUID.init()();
        OUTLINED_FUNCTION_40_25();
        v106 = v66;
        v107 = v101;
        v109 = v108;
        (*(v110 + 16))(v195, v107, v102);
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v111, v112, v113, v102);
        AIML.UUID.value.setter();
        v114 = *(v109 + 8);
        v101 = v109 + 8;
        v115 = v107;
        v66 = v106;
        v99 = v215;
        v114(v115, v102);
        v105 = 0;
      }

      v116 = type metadata accessor for AIML.UUID();
      __swift_storeEnumTagSinglePayload(v99, v105, 1, v116);
      MEMORY[0x25F89E950](v99);
      IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.bundleId.setter();
      v117 = *(v217 + 2);
      EntityProperty.wrappedValue.getter();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v66, 1, v98);
      v119 = v66;
      if (EnumTagSinglePayload == 1 || (outlined destroy of IntentApplication?(v66, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR), OUTLINED_FUNCTION_29_24(&a16), v120 = OUTLINED_FUNCTION_93_6(), v122 = __swift_getEnumTagSinglePayload(v120, v121, v98), v119 = v101, v122))
      {
        outlined destroy of IntentApplication?(v119, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
        v123 = v217;
        v124 = *(v217 + 5);
        OUTLINED_FUNCTION_29_24(&a18);
        v125 = OUTLINED_FUNCTION_93_6();
        v127 = __swift_getEnumTagSinglePayload(v125, v126, v214);
        outlined destroy of IntentApplication?(v101, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
        v93 = v123;
        if (v127 != 1)
        {
          OUTLINED_FUNCTION_29_24(&a17);
          v128 = OUTLINED_FUNCTION_93_6();
          if (__swift_getEnumTagSinglePayload(v128, v129, v214))
          {
            outlined destroy of IntentApplication?(v198, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
          }

          else
          {
            OUTLINED_FUNCTION_21_35();
            v135 = v198;
            v66 = v190;
            _s10OmniSearch0B6EntityVWOcTm_3(v198, v190, v136);
            outlined destroy of IntentApplication?(v135, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
            v137 = *v66;
            EntityProperty.wrappedValue.getter();
            v138 = v220[1];
            OUTLINED_FUNCTION_34_31();
            if (v138)
            {

              OUTLINED_FUNCTION_29_24(&v219);
              v139 = OUTLINED_FUNCTION_93_6();
              if (__swift_getEnumTagSinglePayload(v139, v140, v214))
              {
                outlined destroy of IntentApplication?(v101, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
              }

              else
              {
                OUTLINED_FUNCTION_21_35();
                v66 = v190;
                _s10OmniSearch0B6EntityVWOcTm_3(v101, v190, v142);
                outlined destroy of IntentApplication?(v101, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
                v143 = *v66;
                EntityProperty.wrappedValue.getter();
                OUTLINED_FUNCTION_34_31();
              }

              IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.bundleId.setter();
            }
          }
        }
      }

      else
      {
        v130 = v197;
        v131 = v189;
        _s10OmniSearch0B6EntityVWOcTm_3(v197, v189, type metadata accessor for SearchAppEntity);
        outlined destroy of IntentApplication?(v130, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
        v132 = *(v131 + 8);
        EntityProperty.wrappedValue.getter();
        _s10OmniSearch0B6EntityVWOhTm_3(v131, type metadata accessor for SearchAppEntity);

        OUTLINED_FUNCTION_29_24(&v221);
        v133 = OUTLINED_FUNCTION_93_6();
        if (__swift_getEnumTagSinglePayload(v133, v134, v98))
        {
          outlined destroy of IntentApplication?(type metadata accessor for SearchAppEntity, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
        }

        else
        {
          _s10OmniSearch0B6EntityVWOcTm_3(type metadata accessor for SearchAppEntity, v131, type metadata accessor for SearchAppEntity);
          outlined destroy of IntentApplication?(type metadata accessor for SearchAppEntity, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
          v141 = *(v131 + 8);
          EntityProperty.wrappedValue.getter();
          _s10OmniSearch0B6EntityVWOhTm_3(v131, type metadata accessor for SearchAppEntity);
        }

        v93 = v217;
        IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.bundleId.setter();
        v66 = v193;
        v99 = v215;
      }

      v144 = *(v93 + 1);
      v145 = v212;
      EntityProperty.wrappedValue.getter();
      v146 = (*v204)(v145, v213);
      if (v146 == v203)
      {
        v147 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType();
        OUTLINED_FUNCTION_11_51(v147);
        v149 = *(v148 + 104);
        v150 = OUTLINED_FUNCTION_42_26();
        v151(v150, v196, v144);
        OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_36_26(v152, v153, v154);
        v155 = v207;
      }

      else
      {
        v155 = v207;
        if (v146 == v194)
        {
          v156 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType();
          OUTLINED_FUNCTION_11_51(v156);
          v158 = *(v157 + 104);
          v159 = OUTLINED_FUNCTION_42_26();
          v161 = &a10;
        }

        else if (v146 == v192)
        {
          v162 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType();
          OUTLINED_FUNCTION_11_51(v162);
          v164 = *(v163 + 104);
          v159 = OUTLINED_FUNCTION_42_26();
          v161 = v220;
        }

        else
        {
          if (v146 != v188)
          {
            v177 = v211;
            *v211 = 0;
            v178 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType();
            OUTLINED_FUNCTION_11_51(v178);
            (*(v179 + 104))(v177, v186, v144);
            OUTLINED_FUNCTION_44_0();
            OUTLINED_FUNCTION_36_26(v180, v181, v182);
            (*v185)(v212, v213);
            goto LABEL_29;
          }

          v165 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType();
          OUTLINED_FUNCTION_11_51(v165);
          v167 = *(v166 + 104);
          v159 = OUTLINED_FUNCTION_42_26();
          v161 = &a15;
        }

        v160(v159, *(v161 - 64), v144);
        OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_36_26(v168, v169, v170);
      }

LABEL_29:
      (*v202)(v218, v89, v155);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v219 + 16) + 1, 1, v219);
        v219 = v183;
      }

      v98 = v208;
      v172 = *(v219 + 16);
      v171 = *(v219 + 24);
      v173 = v66;
      if (v172 >= v171 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v171 > 1, v172 + 1, 1, v219);
        v219 = v184;
      }

      v174 = v206;
      (*(v206 + 8))(v89, v155);
      v175 = v218;
      v176 = v219;
      *(v219 + 16) = v172 + 1;
      (*(v174 + 32))(v176 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v172, v175, v155);
      _s10OmniSearch0B6EntityVWOhTm_3(v93, type metadata accessor for SearchEntity);
      v96 += v205;
      v94 = v216 - 1;
      v66 = v173;
      if (v216 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  v219 = MEMORY[0x277D84F90];
LABEL_37:
  OUTLINED_FUNCTION_148();
}

void MetricsLogger.createResultsForGlobalSearch(from:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE11RequestTypeOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE11RequestTypeOSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = (v34 - v6);
  v8 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult();
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v34 - v18;
  v36 = *(v1 + 16);
  if (v36)
  {
    v20 = 0;
    v35 = *MEMORY[0x277D1FCE0];
    v34[1] = v11 + 32;
    v34[2] = v11 + 8;
    v21 = MEMORY[0x277D84F90];
    while (1)
    {
      IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult.init()();
      if (v20 == 0x80000000)
      {
        break;
      }

      v37 = 0;
      MEMORY[0x25F89E850](v20);
      *v7 = 0;
      v22 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType();
      OUTLINED_FUNCTION_17(v22);
      (*(v23 + 104))(v7, v35, v22);
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v22);
      MEMORY[0x25F89E860](v7);
      (*(v11 + 16))(v16, v19, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
        v21 = v32;
      }

      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1, v21);
        v21 = v33;
      }

      ++v20;
      v29 = *(v11 + 8);
      v30 = OUTLINED_FUNCTION_88();
      v31(v30);
      *(v21 + 16) = v28 + 1;
      (*(v11 + 32))(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v28, v16, v8);
      if (v36 == v20)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_148();
  }
}

uint64_t MetricsLogger.computeTimeInMS(start:)()
{
  v0 = type metadata accessor for Date();
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  Date.init()();
  Date.timeIntervalSince(_:)();
  v7 = v6;
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_88();
  result = v10(v9);
  v12 = v7 * 1000.0;
  if (COERCE__INT64(fabs(v7 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v12 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v12 < 4294967300.0)
  {
    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

void MetricsLogger.getSearchToolFailureError(err:)(void *a1)
{
  IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.init()();
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for NSError();
  if (swift_dynamicCast())
  {
    v3 = [v4 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.domain.setter();
    [v4 code];
    IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.code.setter();
  }

  else
  {
    IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.domain.setter();
    IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.code.setter();
  }
}

uint64_t _s10OmniSearch0B6EntityVWOcTm_3(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t _s10OmniSearch0B6EntityVWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Library.Streams.IntelligenceFlow.SearchToolTelemetry and conformance Library.Streams.IntelligenceFlow.SearchToolTelemetry()
{
  result = lazy protocol witness table cache variable for type Library.Streams.IntelligenceFlow.SearchToolTelemetry and conformance Library.Streams.IntelligenceFlow.SearchToolTelemetry;
  if (!lazy protocol witness table cache variable for type Library.Streams.IntelligenceFlow.SearchToolTelemetry and conformance Library.Streams.IntelligenceFlow.SearchToolTelemetry)
  {
    type metadata accessor for Library.Streams.IntelligenceFlow.SearchToolTelemetry();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Streams.IntelligenceFlow.SearchToolTelemetry and conformance Library.Streams.IntelligenceFlow.SearchToolTelemetry);
  }

  return result;
}

void OUTLINED_FUNCTION_6_49()
{
  v2 = *(v0 - 152);

  specialized MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)();
}

uint64_t OUTLINED_FUNCTION_7_51()
{

  return static Buildable.with(_:)();
}

uint64_t OUTLINED_FUNCTION_10_48()
{

  return static Buildable.with(_:)();
}

uint64_t OUTLINED_FUNCTION_13_38(uint64_t a1, uint64_t a2)
{
  *(v2 - 152) = a2;

  return type metadata accessor for IntelligenceFlowSearchToolTelemetry();
}

void OUTLINED_FUNCTION_15_43()
{
  v2 = *(v0 - 120);

  specialized MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)();
}

uint64_t OUTLINED_FUNCTION_16_42()
{

  return static Buildable.with(_:)();
}

uint64_t OUTLINED_FUNCTION_17_40()
{

  return static Buildable.with(_:)();
}

uint64_t OUTLINED_FUNCTION_23_27(uint64_t a1, uint64_t a2)
{
  *(v2 - 120) = a2;

  return type metadata accessor for IntelligenceFlowSearchToolTelemetry();
}

uint64_t OUTLINED_FUNCTION_29_24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_30_29()
{

  return type metadata accessor for IntelligenceFlowSearchToolTelemetry();
}

void OUTLINED_FUNCTION_33_32()
{
  v2 = *(v0 + 104);

  specialized MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)();
}

uint64_t OUTLINED_FUNCTION_34_31()
{
  v4 = v1;
  v5 = *(v2 - 144);
  v6 = *(v2 - 320);

  return _s10OmniSearch0B6EntityVWOhTm_3(v4, v0);
}

void OUTLINED_FUNCTION_35_30()
{

  specialized MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)();
}

uint64_t OUTLINED_FUNCTION_36_26(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);

  return MEMORY[0x28217B198](v4);
}

void OUTLINED_FUNCTION_37_23()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

Swift::Int NetworkServiceError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkServiceError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NetworkServiceError.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

_BYTE *storeEnumTagSinglePayload for NetworkServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

Swift::Void __swiftcall NSMutableAttributedString.updateWithExpansionStringsArray(attributedEntityType:substringToValues:updateForNoExpansions:)(Swift::String attributedEntityType, Swift::OpaquePointer substringToValues, Swift::Bool updateForNoExpansions)
{
  OUTLINED_FUNCTION_0_97(attributedEntityType._countAndFlagsBits, attributedEntityType._object, substringToValues._rawValue);
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_7:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(substringToValues._rawValue + 6) + 16 * v12);
    v14 = v13[1];
    v27 = *v13;
    v15 = *(*(substringToValues._rawValue + 7) + 8 * v12);

    v16 = [v26 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for FeatureFlagService();
    v17 = swift_allocObject();
    v28 = String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v27, v14, v17);
    v19 = v18;
    v21 = v20;

    if ((v21 & 1) == 0 && ((v24 & 1) != 0 || *(v15 + 16)))
    {
      v22 = MEMORY[0x25F89F4C0]();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v26 addAttribute:v22 value:isa range:{v28, v19}];
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_7;
    }
  }
}

Swift::Void __swiftcall NSMutableAttributedString.updateWithExpansionString(attributedEntityType:substringToValues:updateForNoExpansions:)(Swift::String attributedEntityType, Swift::OpaquePointer substringToValues, Swift::Bool updateForNoExpansions)
{
  OUTLINED_FUNCTION_0_97(attributedEntityType._countAndFlagsBits, attributedEntityType._object, substringToValues._rawValue);
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  v28 = v3;
  while (v6)
  {
LABEL_7:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(substringToValues._rawValue + 6) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(substringToValues._rawValue + 7) + 8 * v12);

    v17 = [v30 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for FeatureFlagService();
    v18 = swift_allocObject();
    v19 = String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v14, v15, v18);
    v21 = v20;
    LOBYTE(v14) = v22;

    if ((v14 & 1) == 0 && ((v27 & 1) != 0 || v16[2]))
    {
      v23 = MEMORY[0x25F89F4C0]();
      if (v16[2])
      {
        v24 = v16[4];
        v25 = v16[5];
      }

      else
      {
        v24 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = MEMORY[0x25F89F4C0](v24, v25);

      [v30 addAttribute:v23 value:v26 range:{v19, v21}];

      v3 = v28;
    }

    else
    {

      v3 = v28;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_7;
    }
  }
}

Swift::Void __swiftcall NSMutableAttributedString.updateWithBool(attributedEntityType:substrings:)(Swift::String attributedEntityType, Swift::OpaquePointer substrings)
{
  object = attributedEntityType._object;
  v3 = *(substrings._rawValue + 2);
  if (v3)
  {
    countAndFlagsBits = attributedEntityType._countAndFlagsBits;
    v5 = (substrings._rawValue + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v8 = [v2 string];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for FeatureFlagService();
      v9 = swift_allocObject();
      v10 = String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v6, v7, v9);
      v12 = v11;
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        v15 = MEMORY[0x25F89F4C0](countAndFlagsBits, object);
        isa = Bool._bridgeToObjectiveC()().super.super.isa;
        [v2 addAttribute:v15 value:isa range:{v10, v12}];
      }

      v5 += 2;
      --v3;
    }

    while (v3);
  }
}

uint64_t static OmniSearchError.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t InteractionMode.assistantContextInteractionMode.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  v5 = OUTLINED_FUNCTION_17(v4);
  v7 = *(v6 + 104);
  v8 = **(&unk_2799EEE00 + a1);

  return v7(a2, v8, v5);
}

uint64_t OmniSearchOptions.init(isFirstToolInvocation:isOnScreenReference:isExpectingAnswer:isSingleStepSearch:searchContext:interactionMode:assistantLocale:clientId:alwaysHydrateDocuments:skipGlobalSearch:skipLocalSearch:progressReporter:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, const void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_59_4();
  memcpy(v41, a5, sizeof(v41));
  memcpy(__dst, a5, 0xA0uLL);
  v27 = _s10OmniSearch0B7ContextVSgWOg(__dst);
  if (v27 == 1)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  else
  {
    memcpy(v39, v41, sizeof(v39));
    outlined init with copy of SearchContext(v39, v40);
    EntityProperty.wrappedValue.getter();
    outlined destroy of IntentApplication?(v41, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
    v34 = v40[0];
    memcpy(v40, v41, sizeof(v40));
    outlined init with copy of SearchContext(v40, v38);
    EntityProperty.wrappedValue.getter();
    outlined destroy of IntentApplication?(v41, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
    v33 = v38[0];
    EntityProperty.wrappedValue.getter();
    outlined destroy of IntentApplication?(v41, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
    v32 = v38[0];
  }

  LOBYTE(v40[0]) = v27 == 1;
  v39[0] = v27 == 1;
  outlined init with copy of Date?(a6, v16, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v28 = InteractionMode.init(interactionMode:)(v16);
  result = outlined destroy of IntentApplication?(a6, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v30 = v40[0];
  v31 = v39[0];
  *a9 = v34;
  *(a9 + 8) = v30;
  *(a9 + 16) = v33;
  *(a9 + 24) = v31;
  *(a9 + 32) = v32;
  *(a9 + 40) = v28;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a15;
  *(a9 + 88) = a16;
  *(a9 + 96) = a1 & 1;
  *(a9 + 97) = a2 & 1;
  *(a9 + 98) = a3 & 1;
  *(a9 + 99) = a4 & 1;
  *(a9 + 100) = a12 & 1;
  *(a9 + 101) = a13 & 1;
  *(a9 + 102) = a14 & 1;
  *(a9 + 103) = 0;
  return result;
}

uint64_t InteractionMode.init(interactionMode:)(uint64_t a1)
{
  v2 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  if (__swift_getEnumTagSinglePayload(a1, 1, v2) == 1)
  {
    outlined destroy of IntentApplication?(a1, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
    return 4;
  }

  v14 = *(v5 + 32);
  v14(v12, a1, v2);
  v14(v10, v12, v2);
  v15 = (*(v5 + 88))(v10, v2);
  if (v15 == *MEMORY[0x277CBA0B8])
  {
    return 0;
  }

  if (v15 == *MEMORY[0x277CBA0A8])
  {
    return 1;
  }

  if (v15 == *MEMORY[0x277CBA0C0])
  {
    return 2;
  }

  if (v15 != *MEMORY[0x277CBA0B0])
  {
    (*(v5 + 8))(v10, v2);
    return 4;
  }

  return 3;
}

uint64_t OmniSearchOptions.init(request:clientId:progressReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v85 = a4;
  v86 = a5;
  v83 = a2;
  v84 = a3;
  v81 = a6;
  v8 = type metadata accessor for SearchToolIntentRequest(0);
  v9 = OUTLINED_FUNCTION_17(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  v79 = v12;
  v13 = type metadata accessor for SearchRouter();
  v14 = OUTLINED_FUNCTION_114(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_3();
  v78 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_59_4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v23 = OUTLINED_FUNCTION_114(v22);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v68 - v29;
  v31 = v8[9];
  memcpy(__dst, (a1 + v31), 0xA0uLL);
  v32 = _s10OmniSearch0B7ContextVSgWOg(__dst);
  v88 = 0;
  if (v32 != 1)
  {
    EntityProperty.wrappedValue.getter();
    v88 = v114[0];
  }

  memcpy(v114, (a1 + v31), sizeof(v114));
  v33 = _s10OmniSearch0B7ContextVSgWOg(v114);
  if (v33 == 1)
  {
    v87 = 0;
  }

  else
  {
    EntityProperty.wrappedValue.getter();
    v87 = v113[0];
  }

  memcpy(v113, (a1 + v31), sizeof(v113));
  if (_s10OmniSearch0B7ContextVSgWOg(v113) == 1)
  {
    v80 = 0;
  }

  else
  {
    EntityProperty.wrappedValue.getter();
    v80 = v90;
  }

  v119 = v32 == 1;
  v117 = v33 == 1;
  v34 = v8[12];
  v77 = *(a1 + v8[11]);
  v35 = *(a1 + v34);
  v36 = v8[7];
  outlined init with copy of Date?(a1 + v36, v30, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  Entity = type metadata accessor for StructuredQueryEntity(0);
  if (__swift_getEnumTagSinglePayload(v30, 1, Entity) == 1)
  {
    outlined destroy of IntentApplication?(v30, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  }

  else
  {
    v38 = *&v30[*(Entity + 20)];
    EntityProperty.wrappedValue.getter();
    LOBYTE(v38) = v90;
    OUTLINED_FUNCTION_2_73();
    outlined destroy of SearchRouter(v30, v39);
    if (v38)
    {
LABEL_14:
      v73 = 1;
      goto LABEL_16;
    }
  }

  v40 = *(a1 + v8[15]);
  if (v40 && *(v40 + 16))
  {
    goto LABEL_14;
  }

  v73 = v35;
LABEL_16:
  v72 = *(a1 + v8[13]);
  v41 = a1 + v8[16];
  outlined init with copy of Date?(v41, v6, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v76 = InteractionMode.init(interactionMode:)(v6);
  v42 = (v41 + *(type metadata accessor for AssistantSystemContext(0) + 24));
  v43 = v42[1];
  v44 = v35;
  if (v43)
  {
    v45 = *v42;
    v74 = v43;
    v75 = v45;
  }

  else
  {
    type metadata accessor for NSUserDefaults();
    v46 = static NSUserDefaults.fallbackLocale.getter();
    v74 = v47;
    v75 = v46;
  }

  v48 = v79;
  outlined init with copy of SearchToolIntentRequest(a1, v79);

  v49 = v78;
  SearchRouter.init(request:)(v48, v78);
  v50 = SearchRouter.isPersonal.getter();
  outlined destroy of SearchRouter(v49, type metadata accessor for SearchRouter);
  v51 = *(a1 + v8[14]);
  outlined init with copy of Date?(a1 + v36, v28, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, Entity);
  v82 = a1;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(v28, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
LABEL_26:
    v57 = 0;
    goto LABEL_27;
  }

  v53 = *&v28[*(Entity + 24)];
  EntityProperty.wrappedValue.getter();
  v54 = v90;
  if (!v90)
  {
    OUTLINED_FUNCTION_2_73();
    outlined destroy of SearchRouter(v28, v58);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_2_73();
  outlined destroy of SearchRouter(v28, v55);
  if (!*(v54 + 16))
  {

    goto LABEL_26;
  }

  v56 = *(v54 + 32);

  v57 = v56 != 39;
LABEL_27:
  v68 = v57;
  v89[0] = v88;
  v71 = v51 ^ 1;
  LODWORD(v79) = v119;
  v72 &= 1u;
  v73 &= 1u;
  LOBYTE(v89[1]) = v119;
  v59 = v76;
  v77 &= 1u;
  LODWORD(v78) = (v51 ^ 1 | v50) & 1;
  *(&v89[1] + 1) = *v118;
  HIDWORD(v89[1]) = *&v118[3];
  v89[2] = v87;
  v69 = v117;
  v70 = v44 & 1;
  LOBYTE(v89[3]) = v117;
  *(&v89[3] + 1) = *v116;
  HIDWORD(v89[3]) = *&v116[3];
  v60 = v80;
  v89[4] = v80;
  LOBYTE(v89[5]) = v76;
  HIDWORD(v89[5]) = *&v115[3];
  *(&v89[5] + 1) = *v115;
  v62 = v74;
  v61 = v75;
  v89[6] = v75;
  v89[7] = v74;
  v63 = v83;
  v64 = v84;
  v89[8] = v83;
  v89[9] = v84;
  v66 = v85;
  v65 = v86;
  v89[10] = v85;
  v89[11] = v86;
  LOBYTE(v89[12]) = v77;
  BYTE1(v89[12]) = v70;
  BYTE2(v89[12]) = v73;
  BYTE3(v89[12]) = v72;
  BYTE4(v89[12]) = v71;
  *(&v89[12] + 5) = v78;
  HIBYTE(v89[12]) = v57;
  LOBYTE(v89[13]) = 0;
  memcpy(v81, v89, 0x69uLL);
  outlined init with copy of OmniSearchOptions(v89, &v90);
  outlined destroy of SearchRouter(v82, type metadata accessor for SearchToolIntentRequest);
  v90 = v88;
  v91 = v79;
  *v92 = *v118;
  *&v92[3] = *&v118[3];
  v93 = v87;
  v94 = v69;
  *v95 = *v116;
  *&v95[3] = *&v116[3];
  v96 = v60;
  v97 = v59;
  *&v98[3] = *&v115[3];
  *v98 = *v115;
  v99 = v61;
  v100 = v62;
  v101 = v63;
  v102 = v64;
  v103 = v66;
  v104 = v65;
  v105 = v77;
  v106 = v70;
  v107 = v73;
  v108 = v72;
  v109 = v71;
  v110 = v78;
  v111 = 0;
  v112 = v68;
  return outlined destroy of OmniSearchOptions(&v90);
}

OmniSearch::OmniSearchOptions::CodingKeys_optional __swiftcall OmniSearchOptions.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OmniSearchOptions.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

unint64_t OmniSearchOptions.CodingKeys.rawValue.getter(char a1)
{
  result = 0x747865746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x7463617265746E69;
      break;
    case 2:
      result = 0x6E61747369737361;
      break;
    case 3:
      result = 0x6449746E65696C63;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x61636F4C70696B73;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x766E496370587369;
      break;
    default:
      return result;
  }

  return result;
}

OmniSearch::OmniSearchOptions::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OmniSearchOptions.CodingKeys@<W0>(Swift::String *a1@<X0>, OmniSearch::OmniSearchOptions::CodingKeys_optional *a2@<X8>)
{
  result.value = OmniSearchOptions.CodingKeys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OmniSearchOptions.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = OmniSearchOptions.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OmniSearchOptions.context.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t OmniSearchOptions.assistantLocale.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t OmniSearchOptions.clientId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t OmniSearchOptions.progressReporter.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return swift_unknownObjectRetain();
}

uint64_t OmniSearchOptions.progressReporter.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  result = swift_unknownObjectRelease();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t outlined init with copy of SearchToolIntentRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchToolIntentRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchRouter(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OmniSearchOptions.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE7OptionsV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE7OptionsV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14(v5);
  v29 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_9();
  v28 = *v0;
  v30[0] = *(v0 + 8);
  v10 = v0[2];
  v11 = *(v0 + 24);
  v12 = v0[4];
  v27 = *(v0 + 40);
  v25 = v0[7];
  v26 = v0[6];
  v23 = v0[9];
  v24 = v0[8];
  v21 = *(v0 + 97);
  v22 = *(v0 + 96);
  v19 = *(v0 + 99);
  v20 = *(v0 + 98);
  v17 = *(v0 + 101);
  v18 = *(v0 + 100);
  v15 = *(v0 + 103);
  v16 = *(v0 + 102);
  v14 = *(v0 + 104);
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type OmniSearchContext and conformance OmniSearchContext();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v1)
  {
    lazy protocol witness table accessor for type InteractionMode and conformance InteractionMode();
    OUTLINED_FUNCTION_4_62();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(4);
    OUTLINED_FUNCTION_4_62();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(5);
    OUTLINED_FUNCTION_4_62();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(6);
    OUTLINED_FUNCTION_4_62();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(7);
    OUTLINED_FUNCTION_4_62();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(8);
    OUTLINED_FUNCTION_4_62();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(9);
    OUTLINED_FUNCTION_4_62();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(10);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(11);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(12);
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v29 + 8))(v2, v5);
  OUTLINED_FUNCTION_61_2();
}

unint64_t lazy protocol witness table accessor for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchContext and conformance OmniSearchContext()
{
  result = lazy protocol witness table cache variable for type OmniSearchContext and conformance OmniSearchContext;
  if (!lazy protocol witness table cache variable for type OmniSearchContext and conformance OmniSearchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchContext and conformance OmniSearchContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchContext and conformance OmniSearchContext;
  if (!lazy protocol witness table cache variable for type OmniSearchContext and conformance OmniSearchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchContext and conformance OmniSearchContext);
  }

  return result;
}

void OmniSearchOptions.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE7OptionsV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE7OptionsV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    lazy protocol witness table accessor for type OmniSearchContext and conformance OmniSearchContext();
    OUTLINED_FUNCTION_11_52();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v42 = v49;
    v67 = v46;
    v66 = v48;
    LOBYTE(v44[0]) = 1;
    lazy protocol witness table accessor for type InteractionMode and conformance InteractionMode();
    OUTLINED_FUNCTION_11_52();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v41 = v47;
    v10 = v45;
    OUTLINED_FUNCTION_0_98(2);
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v11;
    OUTLINED_FUNCTION_0_98(3);
    v38 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v45;
    v13 = v12;
    OUTLINED_FUNCTION_0_98(4);
    KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_0_98(5);
    KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_0_98(6);
    KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_0_98(7);
    KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_0_98(8);
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_22_31(v14, &v54 + 4);
    OUTLINED_FUNCTION_0_98(9);
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_22_31(v15, &v54);
    OUTLINED_FUNCTION_0_98(10);
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_22_31(v16, &v53 + 4);
    OUTLINED_FUNCTION_0_98(11);
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_22_31(v17, &v53);
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_143_10(&v56 + 4);
    v37 = v19;
    OUTLINED_FUNCTION_143_10(&v56);
    v36 = v20;
    OUTLINED_FUNCTION_143_10(&v55 + 4);
    v35 = v21;
    OUTLINED_FUNCTION_143_10(&v55);
    v34 = v22;
    OUTLINED_FUNCTION_143_10(&v54 + 4);
    v33 = v23;
    OUTLINED_FUNCTION_143_10(&v54);
    v32 = v24;
    OUTLINED_FUNCTION_143_10(&v53 + 4);
    v31 = v25;
    OUTLINED_FUNCTION_143_10(&v53);
    v30 = v26;
    v27 = OUTLINED_FUNCTION_49_13();
    v28(v27);
    v44[0] = v39;
    LOBYTE(v44[1]) = v67;
    v44[2] = v41;
    v29 = v66;
    LOBYTE(v44[3]) = v66;
    v44[4] = v42;
    LOBYTE(v44[5]) = v10;
    v44[6] = v40;
    v44[7] = v43;
    v44[8] = v38;
    v44[9] = v13;
    v44[10] = 0;
    v44[11] = 0;
    LOBYTE(v44[12]) = v37;
    BYTE1(v44[12]) = v36;
    BYTE2(v44[12]) = v35;
    BYTE3(v44[12]) = v34;
    BYTE4(v44[12]) = v33;
    BYTE5(v44[12]) = v32;
    BYTE6(v44[12]) = v31;
    HIBYTE(v44[12]) = v30;
    LOBYTE(v44[13]) = v18 & 1;
    memcpy(v4, v44, 0x69uLL);
    outlined init with copy of OmniSearchOptions(v44, &v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v45 = v39;
    v46 = v67;
    v47 = v41;
    v48 = v29;
    v49 = v42;
    v50 = v10;
    v51 = v40;
    v52 = v43;
    v53 = v38;
    v54 = v13;
    v55 = 0;
    v56 = 0;
    v57 = v37;
    v58 = v36;
    v59 = v35;
    v60 = v34;
    v61 = v33;
    v62 = v32;
    v63 = v31;
    v64 = v30;
    v65 = v18 & 1;
    outlined destroy of OmniSearchOptions(&v45);
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t OmniSearchContext.latitude.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OmniSearchContext.longitude.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t OmniSearchContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E65657263536E6FLL && a2 == 0xEC00000074786554)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t OmniSearchContext.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656475746974616CLL;
  }

  if (a1 == 1)
  {
    return 0x64757469676E6F6CLL;
  }

  return 0x6E65657263536E6FLL;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OmniSearchContext.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = OmniSearchContext.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void OmniSearchContext.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE7ContextV10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE7ContextV10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_59_4();
  v11 = *v0;
  v12 = *(v0 + 8);
  v16 = *(v0 + 24);
  v14 = v0[4];
  v15 = v0[2];
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_61_2();
}

unint64_t lazy protocol witness table accessor for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys);
  }

  return result;
}

void OmniSearchContext.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE7ContextV10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE7ContextV10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_9();
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  lazy protocol witness table accessor for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = v17;
    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    *(v5 + 8) = v15 & 1;
    *(v5 + 16) = v18;
    *(v5 + 24) = v20 & 1;
    *(v5 + 32) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  OUTLINED_FUNCTION_61_2();
}

uint64_t OmniSearchOptions.onScreenText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 97);
  v3 = *(v0 + 99);
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (!FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_onScreenReferences))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logging.search);
    v5 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v10))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "OmniSearch/onScreenReferences FF is not enabled, dropping onScreenText";
      goto LABEL_16;
    }

LABEL_17:

    return 0;
  }

  if ((v2 & 1) == 0)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logging.search);
    v5 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v12))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "options.isOnScreenReference is false, dropping onScreenText";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!v3)
  {

    return v1;
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.search);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (!OUTLINED_FUNCTION_77_5(v6))
  {
    goto LABEL_17;
  }

  v7 = swift_slowAlloc();
  *v7 = 0;
  v8 = "options.isSingleStepSearch is true, dropping onScreenText";
LABEL_16:
  _os_log_impl(&dword_25D85C000, v5, v1, v8, v7, 2u);
  MEMORY[0x25F8A1050](v7, -1, -1);

  return 0;
}

uint64_t InteractionMode.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4679616C70736964 && a2 == 0xEE0064726177726FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4F79616C70736964 && a2 == 0xEB00000000796C6ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6E4F6563696F76 && a2 == 0xE900000000000079;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726F466563696F76 && a2 == 0xEC00000064726177)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t InteractionMode.CodingKeys.stringValue.getter(char a1)
{
  result = 0x4679616C70736964;
  switch(a1)
  {
    case 1:
      result = 0x4F79616C70736964;
      break;
    case 2:
      result = 0x6C6E4F6563696F76;
      break;
    case 3:
      result = 0x726F466563696F76;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InteractionMode.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = InteractionMode.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InteractionMode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InteractionMode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InteractionMode.DisplayForwardCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InteractionMode.DisplayForwardCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InteractionMode.DisplayOnlyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InteractionMode.DisplayOnlyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InteractionMode.VoiceForwardCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InteractionMode.VoiceForwardCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InteractionMode.VoiceOnlyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InteractionMode.VoiceOnlyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void InteractionMode.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v54 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO22VoiceForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO22VoiceForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  v4 = OUTLINED_FUNCTION_14(v3);
  v52 = v5;
  v53 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_49_3();
  v51 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO19VoiceOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO19VoiceOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  v11 = OUTLINED_FUNCTION_14(v10);
  v49 = v12;
  v50 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_49_3();
  v48 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO21DisplayOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO21DisplayOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  v18 = OUTLINED_FUNCTION_14(v17);
  v46 = v19;
  v47 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO24DisplayForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO24DisplayForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14(v25);
  v45 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v44 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v37);
  v39 = &v44 - v38;
  v40 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v54)
  {
    case 1:
      lazy protocol witness table accessor for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys();
      OUTLINED_FUNCTION_11_52();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v46 + 8))(v24, v47);
      break;
    case 2:
      lazy protocol witness table accessor for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys();
      v41 = v48;
      OUTLINED_FUNCTION_11_52();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v49;
      v42 = v50;
      goto LABEL_5;
    case 3:
      lazy protocol witness table accessor for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys();
      v41 = v51;
      OUTLINED_FUNCTION_11_52();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v52;
      v42 = v53;
LABEL_5:
      (*(v43 + 8))(v41, v42);
      break;
    default:
      lazy protocol witness table accessor for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys();
      OUTLINED_FUNCTION_11_52();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v45 + 8))(v31, v25);
      break;
  }

  (*(v34 + 8))(v39, v32);
  OUTLINED_FUNCTION_61_2();
}

void InteractionMode.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v77 = v0;
  v3 = v2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO22VoiceForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO22VoiceForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14(v76);
  v73 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_49_3();
  v75 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO19VoiceOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO19VoiceOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  v10 = OUTLINED_FUNCTION_14(v9);
  v70 = v11;
  v71 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_49_3();
  v72 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO21DisplayOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO21DisplayOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  v17 = OUTLINED_FUNCTION_14(v16);
  v68 = v18;
  v69 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO24DisplayForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO24DisplayForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14(v24);
  v67 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v62 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14(v31);
  v74 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18_9();
  v36 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  lazy protocol witness table accessor for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys();
  v37 = v77;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v37)
  {
    goto LABEL_8;
  }

  v64 = v24;
  v65 = v30;
  v66 = v23;
  v38 = v75;
  v39 = v76;
  v77 = v3;
  v40 = v1;
  v41 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLO_Tt1g5(v41, 0);
  if (v43 == v44 >> 1)
  {
LABEL_7:
    v54 = type metadata accessor for DecodingError();
    swift_allocError();
    v56 = v55;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v56 = &type metadata for InteractionMode;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D84160], v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v74 + 8))(v40, v31);
    v3 = v77;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
LABEL_9:
    OUTLINED_FUNCTION_61_2();
    return;
  }

  v63 = 0;
  if (v43 < (v44 >> 1))
  {
    v45 = *(v42 + v43);
    specialized ArraySlice.subscript.getter(v43 + 1);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    if (v47 == v49 >> 1)
    {
      v50 = v45;
      v52 = v73;
      v51 = v74;
      switch(v50)
      {
        case 1:
          lazy protocol witness table accessor for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys();
          v58 = v66;
          OUTLINED_FUNCTION_10_49();
          swift_unknownObjectRelease();
          v60 = v68;
          v59 = v69;
          goto LABEL_15;
        case 2:
          lazy protocol witness table accessor for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys();
          v58 = v72;
          OUTLINED_FUNCTION_10_49();
          swift_unknownObjectRelease();
          v60 = v70;
          v59 = v71;
LABEL_15:
          (*(v60 + 8))(v58, v59);
          goto LABEL_16;
        case 3:
          lazy protocol witness table accessor for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys();
          v61 = v63;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v61)
          {
            (*(v51 + 8))(v40, v31);
            swift_unknownObjectRelease();
            v3 = v77;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v52 + 8))(v38, v39);
LABEL_16:
          (*(v51 + 8))(v40, v31);
          __swift_destroy_boxed_opaque_existential_1Tm(v77);
          break;
        default:
          lazy protocol witness table accessor for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys();
          v53 = v65;
          OUTLINED_FUNCTION_10_49();
          swift_unknownObjectRelease();
          (*(v67 + 8))(v53, v64);
          goto LABEL_16;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OmniSearchContext.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

void protocol witness for Decodable.init(from:) in conformance InteractionMode(_BYTE *a1@<X8>)
{
  InteractionMode.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t lazy protocol witness table accessor for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys()
{
  result = lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys()
{
  result = lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys()
{
  result = lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys()
{
  result = lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OmniSearchOptions(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OmniSearchOptions(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OmniSearchOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OmniSearchContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OmniSearchContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InteractionMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OmniSearchContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_49()
{
  v2 = *(v0 - 200);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t static OmniSearchResponseRenderOption.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 1:
      if (v5 != 1)
      {
        goto LABEL_13;
      }

      outlined consume of OmniSearchResponseRenderOption(*a1, 1);
      outlined consume of OmniSearchResponseRenderOption(v4, 1);
      return v5;
    case 2:
      if (v5 != 2)
      {
        goto LABEL_13;
      }

      outlined consume of OmniSearchResponseRenderOption(*a1, 2);
      v6 = v4;
      v7 = 2;
      goto LABEL_10;
    case 3:
      if (v5 != 3)
      {
        goto LABEL_13;
      }

      outlined consume of OmniSearchResponseRenderOption(*a1, 3);
      v6 = v4;
      v7 = 3;
      goto LABEL_10;
    case 4:
      if (v5 != 4)
      {
        goto LABEL_13;
      }

      outlined consume of OmniSearchResponseRenderOption(*a1, 4);
      v6 = v4;
      v7 = 4;
      goto LABEL_10;
    default:
      if ((v5 - 1) >= 4)
      {
        if (v3)
        {
          if (!v5)
          {
            outlined copy of OmniSearchResponseRenderOption(*a2, 0);
            v8 = v4;
            v9 = 0;
            goto LABEL_14;
          }

          v13 = *a1;
          if (v2 == v4 && v3 == v5)
          {
            OUTLINED_FUNCTION_7_52(v13, v3);
            v6 = v2;
            v7 = v3;
LABEL_10:
            outlined consume of OmniSearchResponseRenderOption(v6, v7);
          }

          else
          {
            v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v16 = OUTLINED_FUNCTION_32_0();
            OUTLINED_FUNCTION_7_52(v16, v17);
            v18 = OUTLINED_FUNCTION_32_0();
            outlined consume of OmniSearchResponseRenderOption(v18, v19);
            if ((v15 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else
        {
          v20 = a2[1];

          v21 = OUTLINED_FUNCTION_32_0();
          outlined copy of OmniSearchResponseRenderOption(v21, v22);
          outlined copy of OmniSearchResponseRenderOption(v2, 0);
          outlined consume of OmniSearchResponseRenderOption(v2, 0);
          v23 = OUTLINED_FUNCTION_32_0();
          outlined consume of OmniSearchResponseRenderOption(v23, v24);
          if (v5)
          {
            goto LABEL_15;
          }
        }

        return 1;
      }

LABEL_13:
      v8 = OUTLINED_FUNCTION_32_0();
LABEL_14:
      OUTLINED_FUNCTION_7_52(v8, v9);
LABEL_15:
      v10 = OUTLINED_FUNCTION_32_0();
      outlined consume of OmniSearchResponseRenderOption(v10, v11);
      return 0;
  }
}

uint64_t key path setter for OmniSearchResponse.results : OmniSearchResponse(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);

  return v3(v4);
}

uint64_t OmniSearchResponse.results.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t OmniSearchResponse.results.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t OmniSearchResponse.renderOption.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of OmniSearchResponseRenderOption(v2, v3);
}

uint64_t OmniSearchResponse.inAppSearchString.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t OmniSearchResponse.__allocating_init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(uint64_t a1, _OWORD *a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_140();
  v14 = swift_allocObject();
  OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(uint64_t a1, _OWORD *a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  *(v7 + 16) = a1;
  *(v7 + 24) = *a2;
  *(v7 + 40) = a3;
  *(v7 + 41) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  return v7;
}

uint64_t OmniSearchResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x704F7265646E6572 && a2 == 0xEC0000006E6F6974;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974736575517369 && a2 == 0xEF79726575516E6FLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x75516E65704F7369 && a2 == 0xEB00000000797265;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x800000025DBF9A90 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x800000025DBF9AB0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t OmniSearchResponse.CodingKeys.stringValue.getter(char a1)
{
  result = 0x73746C75736572;
  switch(a1)
  {
    case 1:
      result = 0x704F7265646E6572;
      break;
    case 2:
      result = 0x6974736575517369;
      break;
    case 3:
      result = 0x75516E65704F7369;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OmniSearchResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = OmniSearchResponse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *OmniSearchResponse.deinit()
{
  v1 = v0[2];

  outlined consume of OmniSearchResponseRenderOption(v0[3], v0[4]);
  v2 = v0[7];

  v3 = v0[8];

  return v0;
}

uint64_t OmniSearchResponse.__deallocating_deinit()
{
  OmniSearchResponse.deinit();
  OUTLINED_FUNCTION_140();

  return swift_deallocClassInstance();
}

uint64_t OmniSearchResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE8ResponseC10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE8ResponseC10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys();
  v14 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = (*(*v3 + 128))(v14);
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
  _sSay10OmniSearch0B6ResultVGSayxGSEsSERzlWlTm_1(&lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A], &lazy protocol witness table cache variable for type SearchResult and conformance SearchResult);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_26_8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v15 = *(v3 + 32);
    v22 = *(v3 + 24);
    v23 = v15;
    v24 = 1;
    outlined copy of OmniSearchResponseRenderOption(v22, v15);
    lazy protocol witness table accessor for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of OmniSearchResponseRenderOption(v22, v23);
    v16 = *(v3 + 40);
    LOBYTE(v22) = 2;
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 41);
    LOBYTE(v22) = 3;
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + 48);
    v19 = *(v3 + 56);
    LOBYTE(v22) = 4;
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + 64);
    v24 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption);
  }

  return result;
}

uint64_t OmniSearchResponse.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_140();
  v2 = swift_allocObject();
  OmniSearchResponse.init(from:)(a1);
  return v2;
}

uint64_t OmniSearchResponse.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE8ResponseC10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE8ResponseC10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for OmniSearchResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    _sSay10OmniSearch0B6ResultVGSayxGSEsSERzlWlTm_1(&lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A], &lazy protocol witness table cache variable for type SearchResult and conformance SearchResult);
    OUTLINED_FUNCTION_8_54();
    *(v1 + 16) = v13;
    lazy protocol witness table accessor for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 24) = v13;
    OUTLINED_FUNCTION_5_54(2);
    *(v1 + 40) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    OUTLINED_FUNCTION_5_54(3);
    *(v1 + 41) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    OUTLINED_FUNCTION_5_54(4);
    *(v1 + 48) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + 56) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_8_54();
    v11 = OUTLINED_FUNCTION_17_7();
    v12(v11);
    *(v1 + 64) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t _sSay10OmniSearch0B6ResultVGSayxGSEsSERzlWlTm_1(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    _s10OmniSearch0B6ResultVACSEAAWlTm_5(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10OmniSearch0B6ResultVACSEAAWlTm_5(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OmniSearchResponseRenderOption.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746E65746E6F63 && a2 == 0xED00006863726165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x41746E6573657270 && a2 == 0xED0000726577736ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6769626D61736964 && a2 == 0xEC00000065746175;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726577736E416F6ELL && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6574616C706D6574 && a2 == 0xEF726577736E4164)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t OmniSearchResponseRenderOption.CodingKeys.stringValue.getter(char a1)
{
  result = 0x53746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x41746E6573657270;
      break;
    case 2:
      result = 0x6769626D61736964;
      break;
    case 3:
      result = 0x726577736E416F6ELL;
      break;
    case 4:
      result = 0x6574616C706D6574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OmniSearchResponseRenderOption.DisambiguateCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676F6C616964 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance OmniSearchResponse@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OmniSearchResponse.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OmniSearchResponseRenderOption.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = OmniSearchResponseRenderOption.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchResponseRenderOption.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchResponseRenderOption.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = OmniSearchResponseRenderOption.DisambiguateCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OmniSearchResponseRenderOption.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO25TemplatedAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO25TemplatedAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  v5 = OUTLINED_FUNCTION_14(v4);
  v69 = v6;
  v70 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_49_3();
  v68 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO18NoAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO18NoAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  v12 = OUTLINED_FUNCTION_14(v11);
  v66 = v13;
  v67 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_49_3();
  v65 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO22DisambiguateCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO22DisambiguateCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  v19 = OUTLINED_FUNCTION_14(v18);
  v63 = v20;
  v64 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_49_3();
  v62 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO23PresentAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO23PresentAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  v26 = OUTLINED_FUNCTION_14(v25);
  v60 = v27;
  v61 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  v32 = v58 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO07ContentE10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO07ContentE10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14(v33);
  v59 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v37);
  v39 = v58 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14(v40);
  v71 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v44);
  v45 = *v2;
  v46 = v2[1];
  v58[1] = v45;
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v46)
  {
    case 1:
      v72 = 0;
      lazy protocol witness table accessor for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys();
      OUTLINED_FUNCTION_6_50();
      (*(v59 + 8))(v39, v33);
      goto LABEL_8;
    case 2:
      v73 = 1;
      lazy protocol witness table accessor for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys();
      OUTLINED_FUNCTION_6_50();
      v49 = v61;
      v50 = *(v60 + 8);
      v48 = v32;
      goto LABEL_7;
    case 3:
      v75 = 3;
      lazy protocol witness table accessor for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys();
      OUTLINED_FUNCTION_6_50();
      goto LABEL_5;
    case 4:
      v76 = 4;
      lazy protocol witness table accessor for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys();
      OUTLINED_FUNCTION_6_50();
LABEL_5:
      v48 = OUTLINED_FUNCTION_41_10();
LABEL_7:
      v50(v48, v49);
LABEL_8:
      v51 = OUTLINED_FUNCTION_14_35();
      result = v52(v51);
      break;
    default:
      v74 = 2;
      lazy protocol witness table accessor for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys();
      v54 = v62;
      OUTLINED_FUNCTION_6_50();
      v55 = v64;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      (*(v63 + 8))(v54, v55);
      v56 = OUTLINED_FUNCTION_14_35();
      result = v57(v56);
      break;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys);
  }

  return result;
}

uint64_t OmniSearchResponseRenderOption.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v96 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO25TemplatedAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO25TemplatedAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14(v98);
  v93 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_49_3();
  v95 = v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO18NoAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO18NoAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14(v91);
  v89 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49_3();
  v94 = v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO22DisambiguateCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO22DisambiguateCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14(v92);
  v90 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_49_3();
  v99 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO23PresentAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO23PresentAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  v19 = OUTLINED_FUNCTION_14(v18);
  v87 = v20;
  v88 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v81 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO07ContentE10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO07ContentE10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14(v26);
  v86 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v81 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14(v33);
  v97 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v37);
  v39 = &v81 - v38;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys();
  v41 = v100;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v41)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v83 = v26;
  v84 = v32;
  v85 = v25;
  v42 = v98;
  v100 = a1;
  v43 = KeyedDecodingContainer.allKeys.getter();
  result = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLO_Tt1g5(v43, 0);
  if (v46 == v47 >> 1)
  {
    goto LABEL_7;
  }

  if (v46 >= (v47 >> 1))
  {
    __break(1u);
    return result;
  }

  v82 = *(v45 + v46);
  specialized ArraySlice.subscript.getter(v46 + 1);
  v49 = v48;
  v51 = v50;
  swift_unknownObjectRelease();
  if (v49 != v51 >> 1)
  {
LABEL_7:
    v59 = type metadata accessor for DecodingError();
    swift_allocError();
    v61 = v60;
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v61 = &type metadata for OmniSearchResponseRenderOption;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D84160], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    v63 = OUTLINED_FUNCTION_1_84();
    v64(v63);
    a1 = v100;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v52 = v96;
  switch(v82)
  {
    case 1:
      v102 = 1;
      lazy protocol witness table accessor for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys();
      OUTLINED_FUNCTION_2_74();
      swift_unknownObjectRelease();
      v74 = OUTLINED_FUNCTION_41_10();
      v75(v74);
      v76 = OUTLINED_FUNCTION_1_84();
      v77(v76);
      v57 = 0;
      v58 = 2;
      break;
    case 2:
      v103 = 2;
      lazy protocol witness table accessor for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys();
      OUTLINED_FUNCTION_2_74();
      v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v73 = v97;
      v57 = v72;
      v58 = v78;
      swift_unknownObjectRelease();
      v79 = OUTLINED_FUNCTION_16_43();
      v80(v79);
      (*(v73 + 8))(v39, v33);
      break;
    case 3:
      v104 = 3;
      lazy protocol witness table accessor for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys();
      OUTLINED_FUNCTION_2_74();
      swift_unknownObjectRelease();
      v68 = OUTLINED_FUNCTION_41_10();
      v69(v68, v91);
      v70 = OUTLINED_FUNCTION_1_84();
      v71(v70);
      v57 = 0;
      v58 = 3;
      break;
    case 4:
      v105 = 4;
      lazy protocol witness table accessor for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys();
      v65 = v95;
      OUTLINED_FUNCTION_2_74();
      swift_unknownObjectRelease();
      (*(v93 + 8))(v65, v42);
      v66 = OUTLINED_FUNCTION_1_84();
      v67(v66);
      v57 = 0;
      v58 = 4;
      break;
    default:
      v101 = 0;
      lazy protocol witness table accessor for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys();
      OUTLINED_FUNCTION_2_74();
      swift_unknownObjectRelease();
      v53 = OUTLINED_FUNCTION_41_10();
      v54(v53, v83);
      v55 = OUTLINED_FUNCTION_1_84();
      v56(v55);
      v57 = 0;
      v58 = 1;
      break;
  }

  *v52 = v57;
  v52[1] = v58;
  return __swift_destroy_boxed_opaque_existential_1Tm(v100);
}

uint64_t get_enum_tag_for_layout_string_10OmniSearch0aB20ResponseRenderOptionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for OmniSearchResponseRenderOption(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 3;
  if (v5 >= 5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OmniSearchResponseRenderOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OmniSearchResponseRenderOption.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OmniSearchResponseRenderOption.DisambiguateCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OmniSearchResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_74()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_6_50()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_7_52(uint64_t a1, uint64_t a2)
{
  outlined copy of OmniSearchResponseRenderOption(a1, a2);
  outlined copy of OmniSearchResponseRenderOption(v2, v3);

  return outlined consume of OmniSearchResponseRenderOption(v2, v3);
}

uint64_t OUTLINED_FUNCTION_8_54()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for SearchResult(0) - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for OmniSearchService()) init];
  static OmniSearchService.shared = result;
  return result;
}

id OmniSearchService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static OmniSearchService.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static OmniSearchService.shared;

  return v1;
}

uint64_t key path getter for OmniSearchService.intermediateCallback : OmniSearchService@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for OmniSearchService.intermediateCallback : OmniSearchService(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xA0);
  sub_25D875F08(v3);
  return v7(v6, v5);
}

uint64_t OmniSearchService.intermediateCallback.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_intermediateCallback);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = OUTLINED_FUNCTION_107();
  sub_25D875F08(v4);
  return OUTLINED_FUNCTION_107();
}

uint64_t OmniSearchService.intermediateCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_intermediateCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(v6);
}

uint64_t OmniSearchService.init()()
{
  swift_getObjectType();
  OmniSearchService.__allocating_init(eagerResolutionEnabled:)();
  v1 = v0;
  OUTLINED_FUNCTION_94();
  swift_deallocPartialClassInstance();
  return v1;
}

void OmniSearchService.__allocating_init(eagerResolutionEnabled:)()
{
  OUTLINED_FUNCTION_155();
  v63 = v0;
  v61 = v1;
  v2 = type metadata accessor for OSSignpostID();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_183_7();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v9 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v9, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v10 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_51_5();
    *swift_slowAlloc() = 0;
    v11 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_265_4(&dword_25D85C000, v12, v13, v11, "OmniSearchService.init", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v14 = *(v5 + 16);
  v15 = OUTLINED_FUNCTION_54_0();
  v16(v15);
  v17 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v17);
  OUTLINED_FUNCTION_93_6();
  OSSignpostIntervalState.init(id:isOpen:)();
  v18 = *(v5 + 8);
  v19 = OUTLINED_FUNCTION_116_0();
  v20(v19);
  v21 = type metadata accessor for SageSearch();
  v72 = 0u;
  v73 = 0u;
  v74 = 0;
  v22 = SageSearch.__allocating_init()();
  v23 = objc_opt_self();
  v24 = [v23 sharedSession];
  type metadata accessor for FeatureFlagService();
  swift_allocObject();
  OUTLINED_FUNCTION_42_2();
  v25 = type metadata accessor for GlobalSearchClient();
  v26 = swift_allocObject();
  v70 = v21;
  v71 = &protocol witness table for SageSearch;
  *&v69 = v22;
  *&v27 = OUTLINED_FUNCTION_13(v26);
  *(v28 + 88) = v27;
  v29 = v28 + 88;
  outlined init with take of ResponseOverrideMatcherProtocol(&v69, v26 + 32);
  *(v26 + 72) = v24;
  *(v26 + 80) = v5 + 8;
  OUTLINED_FUNCTION_147_2();
  outlined assign with take of SearchResultItem?(&v72, v29, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E7Service_pGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E7Service_pGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_25DBC8400;
  *(v30 + 56) = &type metadata for LocalSearchService;
  *(v30 + 64) = &protocol witness table for LocalSearchService;
  v31 = swift_allocObject();
  *(v30 + 32) = v31;

  LocalSearchService.init(maxItemCount:)(10, 0, v31 + 16);
  *(v30 + 96) = &type metadata for UCGSearchService;
  *(v30 + 104) = &protocol witness table for UCGSearchService;
  v32 = swift_allocObject();
  *(v30 + 72) = v32;
  *(v32 + 16) = 1;
  *(v32 + 24) = 3;
  *(v32 + 32) = 0;
  *(v32 + 40) = 1;
  *(v32 + 48) = OUTLINED_FUNCTION_144_11();
  *(v30 + 136) = v25;
  *(v30 + 144) = &protocol witness table for GlobalSearchClient;
  *(v30 + 112) = v26;
  v62 = v23;
  if (v61)
  {
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    v33 = SageSearch.__allocating_init()();
    v34 = [v23 sharedSession];
    v35 = OUTLINED_FUNCTION_144_11();
    v36 = swift_allocObject();
    v36[7] = v21;
    v36[8] = &protocol witness table for SageSearch;
    v36[9] = v34;
    v36[4] = v33;
    *&v37 = OUTLINED_FUNCTION_13(v36);
    *(v38 + 88) = v37;
    v39 = v38 + 88;
    *(v38 + 80) = v35;
    OUTLINED_FUNCTION_147_2();
    outlined assign with take of SearchResultItem?(&v72, v39, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
    swift_endAccess();
    v40 = type metadata accessor for GlobalResolutionService();
    OUTLINED_FUNCTION_128_2();
    v41 = swift_allocObject();
    *(v41 + 16) = v36;
    v42 = &protocol witness table for GlobalResolutionService;
  }

  else
  {
    v40 = 0;
    v42 = 0;
    v41 = 0;
    *(&v72 + 1) = 0;
    *&v73 = 0;
  }

  *(&v73 + 1) = v40;
  v74 = v42;
  *&v72 = v41;
  OUTLINED_FUNCTION_144_11();
  OUTLINED_FUNCTION_42_2();
  v43 = type metadata accessor for AnswerResolver();
  OUTLINED_FUNCTION_188_8();
  AnswerResolver.init(resolutionService:featureFlagService:)();
  *(&v73 + 1) = v43;
  v74 = &protocol witness table for AnswerResolver;
  *&v72 = v44;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v45 = static LLMQueryParser.shared;
  v70 = type metadata accessor for LLMQueryParser();
  v71 = &protocol witness table for LLMQueryParser;
  *&v69 = v45;
  v46 = one-time initialization token for shared;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = static AnswerSynthesisController.shared;
  v68[3] = type metadata accessor for AnswerSynthesisController();
  v68[4] = &protocol witness table for AnswerSynthesisController;
  v68[0] = v47;
  v48 = OUTLINED_FUNCTION_144_11();
  type metadata accessor for ResultHydrator();
  OUTLINED_FUNCTION_112_2();

  v67[3] = v46;
  v67[4] = &protocol witness table for ResultHydrator;
  v67[0] = ResultHydrator.__allocating_init()();
  v66 = 0;
  v65 = 0u;
  v64 = 0u;
  v49 = SageSearch.__allocating_init()();
  v50 = [v62 &selRef_setCompletionHandler_ + 5];
  v51 = OUTLINED_FUNCTION_144_11();
  v52 = swift_allocObject();
  v52[7] = v21;
  v52[8] = &protocol witness table for SageSearch;
  v52[9] = v50;
  v52[4] = v49;
  *&v53 = OUTLINED_FUNCTION_13(v52);
  *(v54 + 88) = v53;
  v55 = v54 + 88;
  *(v54 + 80) = v51;
  OUTLINED_FUNCTION_147_2();
  outlined assign with take of SearchResultItem?(&v64, v55, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
  swift_endAccess();
  v56 = type metadata accessor for GlobalResolutionService();
  OUTLINED_FUNCTION_128_2();
  v57 = swift_allocObject();
  *(v57 + 16) = v52;
  *(&v65 + 1) = &type metadata for RequestedPropertyController;
  v66 = &protocol witness table for RequestedPropertyController;
  v58 = swift_allocObject();
  *&v64 = v58;
  v58[5] = v56;
  v58[6] = &protocol witness table for GlobalResolutionService;
  v58[2] = v57;
  Parser = type metadata accessor for DefaultSpotlightQueryParser();
  OUTLINED_FUNCTION_128_2();
  v60 = swift_allocObject();
  *(v60 + 16) = [objc_opt_self() defaultManager];
  v58[10] = Parser;
  v58[11] = &protocol witness table for DefaultSpotlightQueryParser;
  v58[7] = v60;
  (*(v63 + 176))(v30, &v72, 10, 0, 0, &v69, v68, v48, v67, &v64);

  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_148();
}

id OmniSearchService.__allocating_init(searchServices:answerResolver:maxPerSourceLimit:intermediateCallback:queryParser:answerSynthesisController:featureFlagService:resultHydrator:requestedPropertyController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_226_4();
  v14 = objc_allocWithZone(v10);
  v15 = OUTLINED_FUNCTION_17_17();
  return OmniSearchService.init(searchServices:answerResolver:maxPerSourceLimit:intermediateCallback:queryParser:answerSynthesisController:featureFlagService:resultHydrator:requestedPropertyController:)(v15, v16, v17, v18, a5, a6, a7, a8, a9, a10);
}

id OmniSearchService.init(searchServices:answerResolver:maxPerSourceLimit:intermediateCallback:queryParser:answerSynthesisController:featureFlagService:resultHydrator:requestedPropertyController:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v17 = &v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_intermediateCallback];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_searchServices] = a1;
  outlined init with copy of ChatMessageRecord(a2, &v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerResolver]);
  *&v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_maxPerSourceLimit] = a3;
  swift_beginAccess();
  *v17 = a4;
  *(v17 + 1) = a5;
  outlined init with copy of ChatMessageRecord(a7, &v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerSynthesisController]);
  *&v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_featureFlagService] = a8;
  outlined init with copy of ChatMessageRecord(a9, &v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_resultHydrator]);
  outlined init with copy of ChatMessageRecord(a10, &v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_requestedPropertyController]);
  outlined init with copy of ChatMessageRecord(a6, &v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_queryParser]);
  v21.receiver = v10;
  v21.super_class = type metadata accessor for OmniSearchService();
  v18 = objc_msgSendSuper2(&v21, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v18;
}

Swift::Void __swiftcall OmniSearchService.prewarm()()
{
  OUTLINED_FUNCTION_155();
  v2 = v0;
  v3 = type metadata accessor for OSSignpostID();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_109();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_183_7();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v13 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v13, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v14 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_51_5();
    *swift_slowAlloc() = 0;
    v15 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_265_4(&dword_25D85C000, v16, v17, v15, "OmniSearchService.prewarm", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  (*(v6 + 16))(v11, v1, v3);
  v18 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v18);
  OSSignpostIntervalState.init(id:isOpen:)();
  v19 = *(v6 + 8);
  v20 = OUTLINED_FUNCTION_116_1();
  v21(v20);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v22, static Logging.search);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_77_5(v24))
  {
    v25 = OUTLINED_FUNCTION_173_0();
    *v25 = 67109120;
    v25[1] = qos_class_self();
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v26, v27, v28, v29, v30, 8u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v31 = *(v2 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_searchServices);
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v31 + 32;
    do
    {
      outlined init with copy of ChatMessageRecord(v33, v38);
      v34 = v38[4];
      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      v35 = *(v34 + 24);
      v36 = OUTLINED_FUNCTION_54_0();
      v37(v36);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      v33 += 40;
      --v32;
    }

    while (v32);
  }

  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_148();
}

uint64_t OmniSearchService.search(_:rewrittenQuery:matchedEntities:sources:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v1[49] = v4;
  v1[50] = v0;
  v1[47] = v5;
  v1[48] = v6;
  v1[45] = v7;
  v1[46] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[51] = OUTLINED_FUNCTION_160();
  v1[52] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_199();
  v16 = *v3;
  v1[53] = v15;
  v1[54] = v16;
  v17 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = v4[55];
  *v6 = *v1;
  v5[56] = v0;

  v8 = v4[53];
  if (v0)
  {
    memcpy(v5 + 16, v5 + 2, 0x69uLL);
    outlined destroy of OmniSearchOptions((v5 + 16));
  }

  else
  {
    v5[57] = v3;
    memcpy(v5 + 30, v5 + 2, 0x69uLL);
    outlined destroy of OmniSearchOptions((v5 + 30));
  }

  outlined destroy of EagerResolutionService?(v8, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_72();
  v1 = v0[57];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[51];
  OUTLINED_FUNCTION_133();
  v6 = (*(v5 + 128))();

  OUTLINED_FUNCTION_62();

  return v7(v6);
}

{
  OUTLINED_FUNCTION_48();
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];

  OUTLINED_FUNCTION_127();
  v5 = v0[56];

  return v4();
}

void OmniSearchService.search(_:rewrittenQuery:matchedEntities:sources:)()
{
  OUTLINED_FUNCTION_61_0();
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 408);
  v3 = *(v0 + 416);
  v5 = *(v0 + 400);
  type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  *(v0 + 352) = v2;
  type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_32_0();
  outlined init with copy of SpotlightRankingItem?(v14, v15, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  InteractionMode.init(interactionMode:)(v4);
  v16 = OUTLINED_FUNCTION_211_3();
  outlined destroy of EagerResolutionService?(v16, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_254_3(1);
  *(v0 + 56) = v4;
  OUTLINED_FUNCTION_155_9();
  v18 = *((*MEMORY[0x277D85000] & v17) + 0xE0);
  v26 = v18 + *v18;
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v0 + 440) = v20;
  *v20 = v0;
  v20[1] = OmniSearchService.search(_:rewrittenQuery:matchedEntities:sources:);
  v21 = *(v0 + 424);
  v22 = *(v0 + 400);
  v23 = *(v0 + 376);
  v24 = *(v0 + 384);
  v25 = *(v0 + 368);
  v28 = *(v0 + 392);
  OUTLINED_FUNCTION_49_4(*(v0 + 360));

  __asm { BRAA            X8, X16 }
}

uint64_t OmniSearchService.search(_:rewrittenQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v1[51] = v4;
  v1[52] = v0;
  v1[49] = v5;
  v1[50] = v6;
  v1[47] = v7;
  v1[48] = v8;
  v1[45] = v9;
  v1[46] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  v1[53] = OUTLINED_FUNCTION_160();
  v14 = swift_task_alloc();
  v15 = *v3;
  v1[54] = v14;
  v1[55] = v15;
  v16 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v7 = *(v6 + 448);
  v8 = *v2;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  v4[57] = v0;

  if (v0)
  {
    memcpy(v4 + 16, v4 + 2, 0x69uLL);
    outlined destroy of OmniSearchOptions((v4 + 16));
    v10 = OUTLINED_FUNCTION_29();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v14 = v4[53];
    v13 = v4[54];
    memcpy(v4 + 30, v4 + 2, 0x69uLL);
    outlined destroy of OmniSearchOptions((v4 + 30));

    OUTLINED_FUNCTION_62();

    return v15(v1);
  }
}

{
  OUTLINED_FUNCTION_48();
  v2 = v0[53];
  v1 = v0[54];

  OUTLINED_FUNCTION_127();
  v4 = v0[57];

  return v3();
}

void OmniSearchService.search(_:rewrittenQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:)()
{
  OUTLINED_FUNCTION_159();
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  *(v0 + 352) = *(v0 + 440);
  type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_107();
  outlined init with copy of SpotlightRankingItem?(v8, v9, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  LOBYTE(v2) = InteractionMode.init(interactionMode:)(v2);
  OUTLINED_FUNCTION_179_1();
  outlined destroy of EagerResolutionService?(v10, v11, v12);
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_254_3(1);
  *(v0 + 56) = v2;
  OUTLINED_FUNCTION_155_9();
  v14 = *((*MEMORY[0x277D85000] & v13) + 0xE0);
  v23 = v14 + *v14;
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 448) = v16;
  *v16 = v0;
  v16[1] = OmniSearchService.search(_:rewrittenQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:);
  v17 = *(v0 + 416);
  v18 = *(v0 + 392);
  v19 = *(v0 + 400);
  v20 = *(v0 + 376);
  v21 = *(v0 + 384);
  v22 = *(v0 + 368);
  v25 = *(v0 + 408);
  OUTLINED_FUNCTION_49_4(*(v0 + 360));

  __asm { BRAA            X8, X16 }
}

uint64_t OmniSearchService.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, _OWORD *a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78();
  *(v13 + 304) = a12;
  *(v13 + 312) = v12;
  *(v13 + 288) = v14;
  *(v13 + 296) = a9;
  *(v13 + 272) = v15;
  *(v13 + 280) = v16;
  *(v13 + 256) = v17;
  *(v13 + 264) = v18;
  *(v13 + 240) = v19;
  *(v13 + 248) = v20;
  *(v13 + 232) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v22);
  v24 = *(v23 + 64);
  *(v13 + 320) = OUTLINED_FUNCTION_199();
  v25 = type metadata accessor for UserQuery();
  *(v13 + 328) = v25;
  OUTLINED_FUNCTION_114(v25);
  v27 = *(v26 + 64);
  *(v13 + 336) = OUTLINED_FUNCTION_160();
  *(v13 + 344) = swift_task_alloc();
  v28 = type metadata accessor for OSSignpostID();
  *(v13 + 352) = v28;
  OUTLINED_FUNCTION_21(v28);
  *(v13 + 360) = v29;
  v31 = *(v30 + 64);
  *(v13 + 368) = OUTLINED_FUNCTION_160();
  v32 = swift_task_alloc();
  v33 = a11[2];
  *(v13 + 392) = a11[3];
  v34 = a11[1];
  *(v13 + 128) = *a11;
  *(v13 + 144) = v34;
  v35 = a11[4];
  v36 = a11[5];
  *(v13 + 160) = v33;
  *(v13 + 176) = v35;
  v37 = *a10;
  *(v13 + 376) = v32;
  *(v13 + 384) = v37;
  *(v13 + 192) = v36;
  *(v13 + 201) = *(a11 + 89);
  v38 = OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_266_3(v38, v39, v40);
}

uint64_t OmniSearchService.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v15 = *(v14 + 376);
  v16 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v16, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v17 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v18 = *(v14 + 376);
    OUTLINED_FUNCTION_51_5();
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v19);
    v20 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v21, v22, v20, "OmniSearchService.search", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v23 = *(v14 + 368);
  v24 = *(v14 + 376);
  v25 = *(v14 + 352);
  v26 = *(v14 + 360);

  v27 = OUTLINED_FUNCTION_9_27();
  v28(v27);
  v29 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v29);
  OUTLINED_FUNCTION_45_4();
  *(v14 + 408) = OSSignpostIntervalState.init(id:isOpen:)();
  v30 = OUTLINED_FUNCTION_67_19();
  v31(v30);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v32, static Logging.search);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_16_11(v34))
  {
    v35 = OUTLINED_FUNCTION_173_0();
    *v35 = 67109120;
    v35[1] = qos_class_self();
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v36, v37, v38, v39, v40, 8u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v41 = *(v14 + 336);
  v42 = *(v14 + 320);
  v43 = *(v14 + 280);
  v44 = *(v14 + 256);
  v46 = *(v14 + 232);
  v45 = *(v14 + 240);

  outlined init with copy of SpotlightRankingItem?(v43, v42, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  *v41 = v46;
  v41[1] = v45;
  if (!v44)
  {
    goto LABEL_14;
  }

  v48 = *(v14 + 248);
  v47 = *(v14 + 256);
  v49 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v49 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {
    v50 = *(v14 + 336);
    *(v50 + 16) = v48;
    *(v50 + 24) = v47;
  }

  else
  {
LABEL_14:
    v51 = *(v14 + 336);
    v52 = *(v14 + 240);
    *(v51 + 16) = *(v14 + 232);
    *(v51 + 24) = v52;
  }

  v54 = *(v14 + 392);
  v53 = *(v14 + 400);
  v55 = *(v14 + 336);
  v83 = *(v14 + 344);
  v85 = *(v14 + 384);
  v57 = *(v14 + 320);
  v56 = *(v14 + 328);
  v58 = *(v14 + 312);
  v59 = *(v14 + 272);
  v60 = *(v14 + 240);
  *(v55 + 32) = *(v14 + 264);
  *(v55 + 40) = v59;
  outlined init with copy of SpotlightRankingItem?(v57, v55 + v56[7], &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v61 = (v55 + v56[8]);
  *v61 = v54;
  v61[1] = v53;
  v62 = v56[9];

  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_62_3();
  UtteranceNormalizer.init(locale:)();
  outlined destroy of EagerResolutionService?(v57, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_7_53();
  outlined init with take of UserQuery(v55, v83);
  *(v14 + 224) = v85;
  v63 = *(v14 + 144);
  *(v14 + 16) = *(v14 + 128);
  *(v14 + 32) = v63;
  v64 = *(v14 + 176);
  *(v14 + 48) = *(v14 + 160);
  *(v14 + 64) = v54;
  *(v14 + 72) = v53;
  v65 = *(v14 + 192);
  *(v14 + 80) = v64;
  *(v14 + 96) = v65;
  *(v14 + 105) = *(v14 + 201);
  v66 = *((*MEMORY[0x277D85000] & *v58) + 0xE8);
  v84 = (*MEMORY[0x277D85000] & *v58) + 232;
  v86 = v66 + *v66;
  v67 = v66[1];
  v68 = swift_task_alloc();
  *(v14 + 416) = v68;
  *v68 = v14;
  v68[1] = OmniSearchService.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
  v69 = *(v14 + 304);
  v70 = *(v14 + 312);
  v71 = *(v14 + 288);
  v72 = *(v14 + 296);
  OUTLINED_FUNCTION_49_4(*(v14 + 344));
  OUTLINED_FUNCTION_83_0();

  return v79(v73, v74, v75, v76, v77, v78, v79, v80, a9, v84, v86, a12, a13, a14);
}