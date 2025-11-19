void protocol witness for SetAlgebra.union(_:) in conformance AliasTypes(_DWORD *a1@<X8>, unsigned int *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  specialized OptionSet.union(_:)(a1);
}

void protocol witness for SetAlgebra.symmetricDifference(_:) in conformance AliasTypes(_DWORD *a1@<X8>, unsigned int *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  specialized OptionSet.symmetricDifference(_:)(a1);
}

void protocol witness for SetAlgebra.subtracting(_:) in conformance AliasTypes(_DWORD *a1@<X8>, unsigned int *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  specialized SetAlgebra.subtracting(_:)(a1);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AliasTypes@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = AliasTypes.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AliasTypes@<X0>(_DWORD *a1@<X8>)
{
  result = AliasTypes.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t one-time initialization function for entityTypeMap()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static EntityMatchFormatter.entityTypeMap = result;
  return result;
}

uint64_t *EntityMatchFormatter.entityTypeMap.unsafeMutableAddressor()
{
  if (one-time initialization token for entityTypeMap != -1)
  {
    OUTLINED_FUNCTION_0_77();
    swift_once();
  }

  return &static EntityMatchFormatter.entityTypeMap;
}

uint64_t static EntityMatchFormatter.entityTypeMap.getter()
{
  if (one-time initialization token for entityTypeMap != -1)
  {
    OUTLINED_FUNCTION_0_77();
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static EntityMatchFormatter.entityTypeMap.setter(uint64_t a1)
{
  if (one-time initialization token for entityTypeMap != -1)
  {
    OUTLINED_FUNCTION_0_77();
    swift_once();
  }

  swift_beginAccess();
  static EntityMatchFormatter.entityTypeMap = a1;
}

uint64_t (*static EntityMatchFormatter.entityTypeMap.modify())()
{
  if (one-time initialization token for entityTypeMap != -1)
  {
    OUTLINED_FUNCTION_0_77();
    swift_once();
  }

  swift_beginAccess();
  return static ExtractedInfo.kExtractedInfoKey.modify;
}

uint64_t key path getter for static EntityMatchFormatter.entityTypeMap : EntityMatchFormatter.Type@<X0>(void *a1@<X8>)
{
  EntityMatchFormatter.entityTypeMap.unsafeMutableAddressor();
  swift_beginAccess();
  *a1 = static EntityMatchFormatter.entityTypeMap;
}

uint64_t key path setter for static EntityMatchFormatter.entityTypeMap : EntityMatchFormatter.Type(uint64_t *a1)
{
  v1 = *a1;

  EntityMatchFormatter.entityTypeMap.unsafeMutableAddressor();
  swift_beginAccess();
  static EntityMatchFormatter.entityTypeMap = v1;
}

uint64_t static EntityMatchFormatter.format(entities:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    strcpy(v19, "The user has ");
    HIWORD(v19[1]) = -4864;

    v3 = 0;
    for (i = 32; ; i += 112)
    {
      if (v1 == v3)
      {

        return v19[0];
      }

      memcpy(__dst, (a1 + i), 0x69uLL);
      memcpy(v18, (a1 + i), 0x69uLL);
      if (v1 - 1 == v3)
      {
        break;
      }

      if (v3)
      {
        outlined init with copy of EntityMatch(__dst, v16);
        v5 = 8236;
        v6 = 0xE200000000000000;
        goto LABEL_8;
      }

      outlined init with copy of EntityMatch(__dst, v16);
LABEL_9:
      EntityProperty.wrappedValue.getter();
      if (one-time initialization token for entityTypeMap != -1)
      {
        OUTLINED_FUNCTION_0_77();
        swift_once();
      }

      swift_beginAccess();
      v7 = static EntityMatchFormatter.entityTypeMap;
      if (*(static EntityMatchFormatter.entityTypeMap + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(), (v9 & 1) != 0))
      {
        v10 = (*(v7 + 56) + 16 * v8);
        countAndFlagsBits = *v10;
        object = v10[1];
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        String.splitByCapitalLetters()();
        v13 = String.lowercased()();
        countAndFlagsBits = v13._countAndFlagsBits;
        object = v13._object;
      }

      MEMORY[0x25F89F6C0](countAndFlagsBits, object);

      v14 = OUTLINED_FUNCTION_20_25();
      MEMORY[0x25F89F6C0](v14, 0xE800000000000000);
      EntityProperty.wrappedValue.getter();
      MEMORY[0x25F89F6C0](v16[0], v16[1]);

      MEMORY[0x25F89F6C0](34, 0xE100000000000000);
      MEMORY[0x25F89F6C0](8289, 0xE200000000000000);
      outlined destroy of EntityMatch(v18);

      ++v3;
    }

    outlined init with copy of EntityMatch(__dst, v16);
    v5 = 0x20646E61202CLL;
    v6 = 0xE600000000000000;
LABEL_8:
    MEMORY[0x25F89F6C0](v5, v6);
    goto LABEL_9;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AliasTypes and conformance AliasTypes()
{
  result = lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes;
  if (!lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes;
  if (!lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes;
  if (!lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes;
  if (!lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes;
  if (!lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes;
  if (!lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityType and conformance EntityType()
{
  result = lazy protocol witness table cache variable for type EntityType and conformance EntityType;
  if (!lazy protocol witness table cache variable for type EntityType and conformance EntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityType and conformance EntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityType and conformance EntityType;
  if (!lazy protocol witness table cache variable for type EntityType and conformance EntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityType and conformance EntityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityMatcherType and conformance EntityMatcherType()
{
  result = lazy protocol witness table cache variable for type EntityMatcherType and conformance EntityMatcherType;
  if (!lazy protocol witness table cache variable for type EntityMatcherType and conformance EntityMatcherType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityMatcherType and conformance EntityMatcherType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityMatcherType and conformance EntityMatcherType;
  if (!lazy protocol witness table cache variable for type EntityMatcherType and conformance EntityMatcherType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityMatcherType and conformance EntityMatcherType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityMatch(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for EntityMatch(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for EntityMatcherType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MatchProperties(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MatchProperties(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityMatchFormatter(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for MatchProperties.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_1_70()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_55()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_22_26()
{

  return _print_unlocked<A, B>(_:_:)();
}

Swift::Bool __swiftcall FeatureFlagService.isEnabled(_:)(OmniSearch::FeatureFlagService::FeatureFlag a1)
{
  v4[3] = &type metadata for FeatureFlagService.FeatureFlag;
  v4[4] = lazy protocol witness table accessor for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag();
  LOBYTE(v4[0]) = a1;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

const char *FeatureFlagService.FeatureFlag.domain.getter(char a1)
{
  if ((a1 & 0xFE) == 0xA)
  {
    return "Photos";
  }

  else
  {
    return "OmniSearch";
  }
}

const char *FeatureFlagService.FeatureFlag.feature.getter(char a1)
{
  result = "albusSearch";
  switch(a1)
  {
    case 1:
      result = "allowASRGOverride";
      break;
    case 2:
      result = "dataDetectors";
      break;
    case 3:
      result = "extractedFlightResolution";
      break;
    case 4:
      result = "locationResolution";
      break;
    case 5:
      result = "llmQUConstrainedDecoding";
      break;
    case 6:
      result = "PQAVerification";
      break;
    case 7:
      result = "PQAVerificationForNonEnglishLocales";
      break;
    case 8:
      result = "reflectionToken";
      break;
    case 9:
      result = "ResponseOverride";
      break;
    case 10:
      result = "MemoryCreation";
      break;
    case 11:
      result = "MemoryCreationInternationalization";
      break;
    case 12:
      result = "attributionUI";
      break;
    case 13:
      result = "eventAnswers";
      break;
    case 14:
      result = "preExtractedIDs";
      break;
    case 15:
      result = "preExtractedBreadcrumbs";
      break;
    case 16:
      result = "editorialDates";
      break;
    case 17:
      result = "asTimeContext";
      break;
    case 18:
      result = "dynamicDocumentTruncation";
      break;
    case 19:
      result = "onScreenReferences";
      break;
    case 20:
      result = "readingFlowFallback";
      break;
    case 21:
      result = "AnswerSynthesisAllowlist";
      break;
    case 22:
      result = "LowConfidenceCATAnswerDialog";
      break;
    case 23:
      result = "DisallowAllModelDialogs";
      break;
    case 24:
      result = "asPhoneHistorySupport";
      break;
    case 25:
      result = "asJournalSupport";
      break;
    case 26:
      result = "asSafariHistorySupport";
      break;
    case 27:
      result = "asVoicemailSupport";
      break;
    case 28:
      result = "asVoiceMemoSupport";
      break;
    case 29:
      result = "asWalletTransactionSupport";
      break;
    case 30:
      result = "simplifiedQuery";
      break;
    case 31:
      result = "searchInAppRows";
      break;
    case 32:
      result = "shortCircuitMusicSearch";
      break;
    case 33:
      result = "shortCircuitPhotoSearch";
      break;
    case 34:
      result = "showInternalErrorInfo";
      break;
    case 35:
      result = "includeEventUpdateStatus";
      break;
    case 36:
      result = "ucgSearch";
      break;
    case 37:
      result = "llmQUExtractedType";
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int FeatureFlagService.FeatureFlag.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FeatureFlagService.FeatureFlag()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FeatureFlagService.FeatureFlag.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag()
{
  result = lazy protocol witness table cache variable for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag;
  if (!lazy protocol witness table cache variable for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag;
  if (!lazy protocol witness table cache variable for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureFlagService.FeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

uint64_t *HallucinationMitigator.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_1_71();
  }

  return &static HallucinationMitigator.shared;
}

OmniSearch::ProposedDialog __swiftcall ProposedDialog.init(dialog:sourceDocuments:useCase:)(OmniSearch::ProposedDialog dialog, Swift::OpaquePointer sourceDocuments, OmniSearch::ProposedDialog::UseCase useCase)
{
  v3 = useCase & 1;
  dialog.sourceDocuments = sourceDocuments;
  dialog.useCase = v3;
  return dialog;
}

uint64_t static HallucinationMitigator.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_1_71();
  }
}

void _s10OmniSearch22HallucinationMitigatorC16postLLMCallCheck5query14inputDocuments6dialog6localeySS_SayAA0B6ResultVGAA14ProposedDialogVSSSgtAA0O13OverrideErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = objc_opt_self();
  v13 = MEMORY[0x25F89F4C0](a4, a5);
  v14 = [v12 scanString_];

  type metadata accessor for DDScannerResult();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = specialized Array.count.getter(v15);
  if (!v29)
  {

    return;
  }

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x25F89FFD0](v16, v15);
    }

    else
    {
      if (v16 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v18 = *(v15 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v21 = [v18 type];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == 0xD000000000000011 && 0x800000025DBF87A0 == v24)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSaySo15DDScannerResultCG_Tt1g5(v17, MEMORY[0x277D84F90]))
    {

      v17 = HallucinationMitigator.scanInputDocuments(inputDocuments:locale:)(a3, a8, a9);
    }

    _s10OmniSearch22HallucinationMitigatorC26inputEntitiesContainFlight33_4877CDCBE248C517EE90FB47757CC8DELL0eF06entityySaySaySo15DDScannerResultCGG_AItAA19DialogOverrideErrorOYKF(v17, v19);
    if (v9)
    {

      return;
    }

LABEL_18:

    ++v16;
    if (v20 == v29)
    {

      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t HallucinationMitigator.scanInputDocuments(inputDocuments:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v4 = type metadata accessor for SearchResult(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v33 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v33;
    v11 = objc_opt_self();
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      outlined init with copy of SearchResult(v12, v8);
      SearchResultItem.associatedValue.getter(v30);
      v14 = v31;
      v15 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v16 = (*(v15 + 56))(v28, v29, v14, v15);
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v19 = MEMORY[0x25F89F4C0](v16, v18);

      v20 = [v11 scanString_];

      type metadata accessor for DDScannerResult();
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      outlined destroy of SearchResult(v8);
      v33 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      if (v23 >= v22 >> 1)
      {
        v24 = OUTLINED_FUNCTION_2_60(v22);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24, v25, v26);
        v10 = v33;
      }

      *(v10 + 16) = v23 + 1;
      *(v10 + 8 * v23 + 32) = v21;
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void _s10OmniSearch22HallucinationMitigatorC26inputEntitiesContainFlight33_4877CDCBE248C517EE90FB47757CC8DELL0eF06entityySaySaySo15DDScannerResultCGG_AItAA19DialogOverrideErrorOYKF(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [objc_allocWithZone(MEMORY[0x277CC5678]) initWithDDScannerResult_];
  if (!v4)
  {
    if (one-time initialization token for hallucination != -1)
    {
LABEL_66:
      OUTLINED_FUNCTION_0_78();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logging.hallucination);
    v45 = v2;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138739971;
      *(v48 + 4) = v45;
      *v49 = v2;
      v50 = v45;
      _os_log_impl(&dword_25D85C000, v46, v47, "Cannot make flight from answer entity %{sensitive}@", v48, 0xCu);
      outlined destroy of NSObject?(v49);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    lazy protocol witness table accessor for type DialogOverrideError and conformance DialogOverrideError();
    swift_willThrowTypedImpl();
    return;
  }

  v78 = a1;
  v5 = *(a1 + 16);
  v80 = v5;
  if (!v5)
  {
LABEL_46:
    if (one-time initialization token for hallucination != -1)
    {
      OUTLINED_FUNCTION_0_78();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logging.hallucination);
    v52 = v2;

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v55 = 138740227;
      *(v55 + 4) = v52;
      v87 = v56;
      *v56 = v2;
      *(v55 + 12) = 2085;
      if (v5)
      {
        v84 = v54;
        v85 = v53;
        v90 = MEMORY[0x277D84F90];
        v57 = v52;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
        v58 = (v78 + 32);
        v59 = type metadata accessor for DDScannerResult();
        do
        {
          v60 = *v58;

          v62 = MEMORY[0x25F89F8A0](v61, v59);
          v64 = v63;

          v66 = *(v90 + 16);
          v65 = *(v90 + 24);
          if (v66 >= v65 >> 1)
          {
            v68 = OUTLINED_FUNCTION_2_60(v65);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v68, v69, v70);
          }

          *(v90 + 16) = v66 + 1;
          v67 = v90 + 16 * v66;
          *(v67 + 32) = v62;
          *(v67 + 40) = v64;
          ++v58;
          --v80;
        }

        while (v80);
        v53 = v85;
        v54 = v84;
      }

      else
      {
        v75 = v52;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      BidirectionalCollection<>.joined(separator:)();

      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v55 + 14) = v76;
      _os_log_impl(&dword_25D85C000, v53, v54, "No matches found for answer entity %{sensitive}@ from inputs:\n%{sensitive}s", v55, 0x16u);
      outlined destroy of NSObject?(v87);
      OUTLINED_FUNCTION_42_0();
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    lazy protocol witness table accessor for type DialogOverrideError and conformance DialogOverrideError();
    swift_willThrowTypedImpl();

    return;
  }

  v6 = 0;
  v7 = a1 + 32;
  v82 = v2;
  v77 = a1 + 32;
  while (1)
  {
    v8 = *(v7 + 8 * v6);
    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        break;
      }

      goto LABEL_35;
    }

    v43 = v8 < 0 ? *(v7 + 8 * v6) : v8 & 0xFFFFFFFFFFFFFF8;
    v9 = MEMORY[0x25F8A01B0](v43);
    if (v9)
    {
      break;
    }

LABEL_35:
    if (++v6 == v5)
    {
      goto LABEL_46;
    }
  }

  v79 = v6;
  v88 = v8 & 0xC000000000000001;
  v81 = v8 & 0xFFFFFFFFFFFFFF8;

  v10 = 0;
  v86 = v8;
  while (1)
  {
    if (v88)
    {
      v11 = MEMORY[0x25F89FFD0](v10, v8);
    }

    else
    {
      if (v10 >= *(v81 + 16))
      {
        goto LABEL_65;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v14 = [v2 type];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == 0xD000000000000011 && 0x800000025DBF87A0 == v17)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v20 = [objc_allocWithZone(MEMORY[0x277CC5678]) initWithDDScannerResult_];
    if (v20)
    {
      break;
    }

LABEL_33:

    ++v10;
    v8 = v86;
    if (v13 == v9)
    {

      v6 = v79;
      v5 = v80;
      v7 = v77;
      goto LABEL_35;
    }
  }

  v21 = v20;
  v83 = v12;
  v22 = [v20 flightNumber];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = v4;
  v27 = [v4 flightNumber];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v23 == v28 && v25 == v30)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
LABEL_32:

      v4 = v26;
      v2 = v82;
      v12 = v83;
      goto LABEL_33;
    }
  }

  v33 = [v21 airline];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = [v26 airline];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if (v34 != v38 || v36 != v40)
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_56;
    }

    goto LABEL_32;
  }

LABEL_56:

  if (one-time initialization token for hallucination != -1)
  {
    OUTLINED_FUNCTION_0_78();
  }

  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, static Logging.hallucination);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_25D85C000, v72, v73, "Output flight detail match with dialog", v74, 2u);
    OUTLINED_FUNCTION_42_0();
  }
}

uint64_t HallucinationMitigator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s10OmniSearch22HallucinationMitigatorCAA0C18MitigationProtocolA2aDP15preLLMCallCheck5query9documentsySS_SayAA0B6ResultVGtAA19DialogOverrideErrorOYKFTW()
{
  v2 = (*(**v0 + 96))() & 1;
  if (v1)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t _s10OmniSearch22HallucinationMitigatorCAA0C18MitigationProtocolA2aDP16postLLMCallCheck5query14inputDocuments6dialog6localeySS_SayAA0B6ResultVGAA14ProposedDialogVSSSgtAA0Q13OverrideErrorOYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = (*(**v7 + 104))(a1, a2, a3, a4, a5, a6, a7 & 1) & 1;
  if (v8)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

BOOL static ProposedDialog.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v10 = a1 == a5 && a2 == a6;
  if (v10 || (v11 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v11 & 1) != 0))
  {
    _sSasSQRzlE2eeoiySbSayxG_ABtFZ10OmniSearch0C6ResultV_Tt1g5();
    return (v13 & 1) != 0 && ((a8 ^ a4) & 1) == 0;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ProposedDialog.UseCase(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ProposedDialog.UseCase and conformance ProposedDialog.UseCase()
{
  result = lazy protocol witness table cache variable for type ProposedDialog.UseCase and conformance ProposedDialog.UseCase;
  if (!lazy protocol witness table cache variable for type ProposedDialog.UseCase and conformance ProposedDialog.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProposedDialog.UseCase and conformance ProposedDialog.UseCase);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProposedDialog(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ProposedDialog(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProposedDialog.UseCase(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_78()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_71()
{

  return swift_once();
}

uint64_t LatencyProfiler.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LatencyProfiler.init(_:)(a1, a2);
  return v4;
}

void *LatencyProfiler.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = mach_absolute_time();
  v2[3] = a1;
  v2[4] = a2;
  v6 = one-time initialization token for search;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_35_0();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logging.search);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v10 = 136315138;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v10 + 4) = v11;
    _os_log_impl(&dword_25D85C000, v8, v9, "LP - started %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

  return v3;
}

Swift::Void __swiftcall LatencyProfiler.finish()()
{
  v1 = v0;
  v20 = *MEMORY[0x277D85DE8];
  v2 = mach_absolute_time();
  info = 0;
  mach_timebase_info(&info);
  v3 = *(v0 + 16);
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!is_mul_ok(v5, info.numer))
  {
    goto LABEL_15;
  }

  if (!info.denom)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = (v5 * info.numer / info.denom) / 1000000.0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v2 setNumberStyle_];
  if (v6 == INFINITY)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    OUTLINED_FUNCTION_35_0();
    goto LABEL_10;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v8 = [v2 stringFromNumber_];

  if (!v8)
  {
    goto LABEL_14;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for search != -1)
  {
    goto LABEL_20;
  }

LABEL_10:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logging.search);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136315394;
    v14 = *(v1 + 24);
    v13 = *(v1 + 32);

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v12 + 14) = v16;
    _os_log_impl(&dword_25D85C000, v10, v11, "LP - finished %s in %s ms", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t LatencyProfiler.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t LatencyProfiler.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

char *MobileGestalt.deviceClass.unsafeMutableAddressor()
{
  if (one-time initialization token for deviceClass != -1)
  {
    OUTLINED_FUNCTION_0_76();
  }

  return &static MobileGestalt.deviceClass;
}

OmniSearch::MobileGestalt::DeviceClass_optional __swiftcall MobileGestalt.DeviceClass.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MobileGestalt.DeviceClass.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t MobileGestalt.DeviceClass.rawValue.getter(char a1)
{
  result = 0x454E4F4850;
  switch(a1)
  {
    case 1:
      result = 4473168;
      break;
    case 2:
      result = 0x4E414D4553524F48;
      break;
    case 3:
      result = 1398097242;
      break;
    case 4:
      result = 0x4F454D4143;
      break;
    case 5:
      result = 0x4843544157;
      break;
    case 6:
      result = 5390659;
      break;
    case 7:
      result = 0x544952414752414DLL;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MobileGestalt.DeviceClass(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

OmniSearch::MobileGestalt::DeviceClass_optional protocol witness for RawRepresentable.init(rawValue:) in conformance MobileGestalt.DeviceClass@<W0>(Swift::String *a1@<X0>, OmniSearch::MobileGestalt::DeviceClass_optional *a2@<X8>)
{
  result.value = MobileGestalt.DeviceClass.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MobileGestalt.DeviceClass@<X0>(uint64_t *a1@<X8>)
{
  result = MobileGestalt.DeviceClass.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void one-time initialization function for deviceClass()
{
  if (one-time initialization token for rawMGValueToDeviceClass != -1)
  {
    swift_once();
  }

  v0 = static MobileGestalt.rawMGValueToDeviceClass;
  if (one-time initialization token for currentMGDeviceClass != -1)
  {
    swift_once();
  }

  if (v0[2] && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(static MobileGestalt.currentMGDeviceClass), (v2 & 1) != 0))
  {
    v3 = *(v0[7] + v1);
  }

  else
  {
    v3 = 8;
  }

  static MobileGestalt.deviceClass = v3;
}

uint64_t static MobileGestalt.deviceClass.getter()
{
  if (one-time initialization token for deviceClass != -1)
  {
    OUTLINED_FUNCTION_0_76();
  }

  return static MobileGestalt.deviceClass;
}

void one-time initialization function for currentMGDeviceClass()
{
  v0 = MEMORY[0x25F89F4C0](0xD000000000000011, 0x800000025DBF8830);
  v1 = MGGetSInt32Answer();

  static MobileGestalt.currentMGDeviceClass = v1;
}

void *one-time initialization function for rawMGValueToDeviceClass()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static MobileGestalt.rawMGValueToDeviceClass = result;
  return result;
}

Swift::Int MobileGestalt.DevicePlatform.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MobileGestalt.DevicePlatform()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MobileGestalt.DevicePlatform.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t static MobileGestalt.devicePlatform(deviceClass:)(char a1)
{
  if ((a1 & 0xF8) != 0)
  {
    return 5;
  }

  else
  {
    return (0x405030102020000uLL >> (8 * a1));
  }
}

uint64_t static MobileGestalt.devicePlatform.getter()
{
  if (one-time initialization token for deviceClass != -1)
  {
    OUTLINED_FUNCTION_0_76();
  }

  if (static MobileGestalt.deviceClass >= 8uLL)
  {
    return 5;
  }

  else
  {
    return (0x405030102020000uLL >> (8 * static MobileGestalt.deviceClass));
  }
}

void static MobileGestalt._deviceInfo(for:)(uint64_t a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x25F89F4C0]();
  v3 = MGCopyAnswerWithError();

  if (v3)
  {
    *(a1 + 24) = swift_getObjectType();
    *a1 = v3;
  }

  else
  {
    if (one-time initialization token for utilities != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logging.utilities);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v7 = 136315394;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v7 + 12) = 2080;
      swift_beginAccess();
      dispatch thunk of CustomStringConvertible.description.getter();
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v7 + 14) = v8;
      _os_log_impl(&dword_25D85C000, v5, v6, "MGCopyAnswerWithError error for key: %s -> %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8A1050](v10, -1, -1);
      MEMORY[0x25F8A1050](v7, -1, -1);
    }

    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t static MobileGestalt.buildVersion.getter()
{
  return static MobileGestalt.buildVersion.getter();
}

{
  static MobileGestalt._deviceInfo(for:)(v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    outlined destroy of Any?(v2);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type MobileGestalt.DeviceClass and conformance MobileGestalt.DeviceClass()
{
  result = lazy protocol witness table cache variable for type MobileGestalt.DeviceClass and conformance MobileGestalt.DeviceClass;
  if (!lazy protocol witness table cache variable for type MobileGestalt.DeviceClass and conformance MobileGestalt.DeviceClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobileGestalt.DeviceClass and conformance MobileGestalt.DeviceClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MobileGestalt.DevicePlatform and conformance MobileGestalt.DevicePlatform()
{
  result = lazy protocol witness table cache variable for type MobileGestalt.DevicePlatform and conformance MobileGestalt.DevicePlatform;
  if (!lazy protocol witness table cache variable for type MobileGestalt.DevicePlatform and conformance MobileGestalt.DevicePlatform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobileGestalt.DevicePlatform and conformance MobileGestalt.DevicePlatform);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MobileGestalt.DeviceClass(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MobileGestalt.DevicePlatform(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t baseDirectoryURLCreatingIfNeeded()@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v53 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for URL();
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  v47 = objc_opt_self();
  v24 = [v47 defaultManager];
  v25 = [v24 URLsForDirectory:5 inDomains:1];

  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Collection.first.getter(v26, v12);

  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of URL?(v12);
  }

  else
  {
    (*(v16 + 32))(v23, v12, v13);
    OUTLINED_FUNCTION_3_56();
    v51 = v28;
    v52 = v27;
    v29 = *MEMORY[0x277CC91C0];
    v46 = v13;
    v30 = *(v4 + 104);
    v30(v8, v29, v1);
    lazy protocol witness table accessor for type String and conformance String();
    v49 = v23;
    URL.appending<A>(path:directoryHint:)();
    v48 = v16;
    v31 = *(v4 + 8);
    v31(v8, v1);
    v51 = 5065804;
    v52 = 0xE300000000000000;
    v30(v8, v29, v1);
    URL.appending<A>(path:directoryHint:)();
    v31(v8, v1);
    v32 = *(v48 + 8);
    v33 = v46;
    v32(v20);
    v34 = [v47 defaultManager];
    URL._bridgeToObjectiveC()(v35);
    v37 = v36;
    v51 = 0;
    LODWORD(v30) = [v34 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v51];

    if (v30)
    {
      v38 = v51;
      result = (v32)(v49, v33);
      v40 = *MEMORY[0x277D85DE8];
      return result;
    }

    v41 = v51;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    OUTLINED_FUNCTION_3_56();
    v51 = v43 + 28;
    v52 = v42;
    swift_getErrorValue();
    v44 = Error.localizedDescription.getter();
    MEMORY[0x25F89F6C0](v44);

    MEMORY[0x25F89F6C0](46, 0xE100000000000000);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::String __swiftcall baseDirectoryStringCreatingIfNeeded()()
{
  v0 = type metadata accessor for URL();
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  baseDirectoryURLCreatingIfNeeded()(v7);
  v8 = URL.absoluteString.getter();
  v10 = v9;
  (*(v3 + 8))(v7, v0);
  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t one-time initialization function for baseDirectory()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  baseDirectoryURLCreatingIfNeeded()(v4);
  v5 = URL.absoluteString.getter();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  static Paths.baseDirectory = v5;
  *algn_27FCAFD88 = v7;
  return result;
}

uint64_t *Paths.baseDirectory.unsafeMutableAddressor()
{
  if (one-time initialization token for baseDirectory != -1)
  {
    OUTLINED_FUNCTION_1_72();
  }

  return &static Paths.baseDirectory;
}

uint64_t static Paths.baseDirectory.getter()
{
  if (one-time initialization token for baseDirectory != -1)
  {
    OUTLINED_FUNCTION_1_72();
  }

  v0 = static Paths.baseDirectory;

  return v0;
}

uint64_t one-time initialization function for baseDirectoryURL()
{
  v0 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v0, static Paths.baseDirectoryURL);
  v1 = __swift_project_value_buffer(v0, static Paths.baseDirectoryURL);
  return baseDirectoryURLCreatingIfNeeded()(v1);
}

uint64_t Paths.baseDirectoryURL.unsafeMutableAddressor()
{
  if (one-time initialization token for baseDirectoryURL != -1)
  {
    OUTLINED_FUNCTION_2_61();
  }

  v0 = type metadata accessor for URL();

  return __swift_project_value_buffer(v0, static Paths.baseDirectoryURL);
}

uint64_t static Paths.baseDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for baseDirectoryURL != -1)
  {
    OUTLINED_FUNCTION_2_61();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static Paths.baseDirectoryURL);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OUTLINED_FUNCTION_1_72()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_61()
{

  return swift_once();
}

uint64_t static NSUserDefaults.getDirectionsForLocationResolution.getter()
{
  if (one-time initialization token for _getDirectionsForLocationResolution != -1)
  {
    OUTLINED_FUNCTION_46_23();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._getDirectionsForLocationResolution;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t static NSUserDefaults.needAnswerMatchWithLocationResolution.getter()
{
  if (one-time initialization token for _needAnswerMatchWithLocationResolution != -1)
  {
    OUTLINED_FUNCTION_45_19();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._needAnswerMatchWithLocationResolution;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t static NSUserDefaults.answerSynthesisTokenLimitOutput.getter()
{
  if (one-time initialization token for _answerSynthesisTokenLimitOutput != -1)
  {
    OUTLINED_FUNCTION_44_24();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_64_15();
  v0 = &static NSUserDefaults._answerSynthesisTokenLimitOutput;
  v1 = OUTLINED_FUNCTION_3_57();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5;
}

uint64_t static NSUserDefaults.answerSynthesisPromptTemplateOverride.getter()
{
  if (one-time initialization token for _answerSynthesisPromptTemplateOverride != -1)
  {
    OUTLINED_FUNCTION_39_23();
  }

  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_17_37(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v8, v9, v10, v11, v12, v13, v14, v15);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.answerSynthesisCDSchemaOverride.getter()
{
  if (one-time initialization token for _answerSynthesisCDSchemaOverride != -1)
  {
    OUTLINED_FUNCTION_38_25();
  }

  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_17_37(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v8, v9, v10, v11, v12, v13, v14, v15);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.pqaVerificationPromptTemplateOverride.getter()
{
  if (one-time initialization token for _pqaVerificationPromptTemplateOverride != -1)
  {
    OUTLINED_FUNCTION_37_19();
  }

  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_17_37(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v8, v9, v10, v11, v12, v13, v14, v15);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.answerSynthesisModelType.getter()
{
  if (one-time initialization token for _answerSynthesisModelType != -1)
  {
    OUTLINED_FUNCTION_36_23();
  }

  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_17_37(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v8, v9, v10, v11, v12, v13, v14, v15);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.answerSynthesisTokenLimitDevice.getter()
{
  if (one-time initialization token for _answerSynthesisTokenLimitDevice != -1)
  {
    OUTLINED_FUNCTION_35_26();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_64_15();
  v0 = &static NSUserDefaults._answerSynthesisTokenLimitDevice;
  v1 = OUTLINED_FUNCTION_3_57();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5;
}

uint64_t static NSUserDefaults.answerSynthesisTokenLimitServer.getter()
{
  if (one-time initialization token for _answerSynthesisTokenLimitServer != -1)
  {
    OUTLINED_FUNCTION_34_29();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_64_15();
  v0 = &static NSUserDefaults._answerSynthesisTokenLimitServer;
  v1 = OUTLINED_FUNCTION_3_57();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5;
}

uint64_t static NSUserDefaults.answerSynthesisSearchResultsPerRequest.getter()
{
  if (one-time initialization token for _answerSynthesisSearchResultsPerRequest != -1)
  {
    OUTLINED_FUNCTION_32_30();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_64_15();
  v0 = &static NSUserDefaults._answerSynthesisSearchResultsPerRequest;
  v1 = OUTLINED_FUNCTION_3_57();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5;
}

uint64_t static NSUserDefaults.answerSynthesisLimit.getter()
{
  if (one-time initialization token for _answerSynthesisLimit != -1)
  {
    OUTLINED_FUNCTION_31_25();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_64_15();
  v0 = &static NSUserDefaults._answerSynthesisLimit;
  v1 = OUTLINED_FUNCTION_3_57();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5;
}

uint64_t static NSUserDefaults.answerSynthesisResponseOverride.getter()
{
  if (one-time initialization token for _answerSynthesisResponseOverride != -1)
  {
    OUTLINED_FUNCTION_30_25();
  }

  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_17_37(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v8, v9, v10, v11, v12, v13, v14, v15);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.fallbackLocale.getter()
{
  if (one-time initialization token for _fallbackLocale != -1)
  {
    OUTLINED_FUNCTION_29_20();
  }

  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_17_37(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v8, v9, v10, v11, v12, v13, v14, v15);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.currentTime.getter()
{
  if (one-time initialization token for _currentTime != -1)
  {
    OUTLINED_FUNCTION_28_26();
  }

  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_17_37(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_62_17(v8, v9, v10, v11, v12, v13, v14, v15);
  return v8;
}

uint64_t static NSUserDefaults.answerSynthesisRequestedPropertiesPerRequest.getter()
{
  if (one-time initialization token for _answerSynthesisRequestedPropertiesPerRequest != -1)
  {
    OUTLINED_FUNCTION_27_24();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_64_15();
  v0 = &static NSUserDefaults._answerSynthesisRequestedPropertiesPerRequest;
  v1 = OUTLINED_FUNCTION_3_57();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5;
}

uint64_t static NSUserDefaults.answerSynthesisTokenLimitNonUserPrompt.getter()
{
  if (one-time initialization token for _answerSynthesisTokenLimitNonUserPrompt != -1)
  {
    OUTLINED_FUNCTION_25_27();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_64_15();
  v0 = &static NSUserDefaults._answerSynthesisTokenLimitNonUserPrompt;
  v1 = OUTLINED_FUNCTION_3_57();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5;
}

float static NSUserDefaults.answerSynthesisTokenCharMultiplier.getter()
{
  if (one-time initialization token for _answerSynthesisTokenCharMultiplier != -1)
  {
    OUTLINED_FUNCTION_6_39();
  }

  OUTLINED_FUNCTION_10_18();
  v0 = qword_27FC71018;
  v1 = unk_27FC71020;
  v2 = qword_27FC71028;

  v3 = v2;
  specialized UserDefault.wrappedValue.getter(v0, v1, v3);
  v5 = v4;

  return v5;
}

uint64_t static NSUserDefaults.emailContentPreprocessing.getter()
{
  if (one-time initialization token for _emailContentPreprocessing != -1)
  {
    OUTLINED_FUNCTION_24_27();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._emailContentPreprocessing;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t static NSUserDefaults.allowNoAnswerFallbackToPCS.getter()
{
  if (one-time initialization token for _allowNoAnswerFallbackToPCS != -1)
  {
    OUTLINED_FUNCTION_23_26();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._allowNoAnswerFallbackToPCS;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t static NSUserDefaults.smartChunkingPreprocessing.getter()
{
  if (one-time initialization token for _smartChunkingPreprocessing != -1)
  {
    OUTLINED_FUNCTION_22_27();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._smartChunkingPreprocessing;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t static NSUserDefaults.smartChunksPerDocument.getter()
{
  if (one-time initialization token for _smartChunksPerDocument != -1)
  {
    OUTLINED_FUNCTION_21_31();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_64_15();
  v0 = &static NSUserDefaults._smartChunksPerDocument;
  v1 = OUTLINED_FUNCTION_3_57();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5;
}

uint64_t static NSUserDefaults.smartChunkingOverlap.getter()
{
  if (one-time initialization token for _smartChunkingOverlap != -1)
  {
    OUTLINED_FUNCTION_20_26();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_64_15();
  v0 = &static NSUserDefaults._smartChunkingOverlap;
  v1 = OUTLINED_FUNCTION_3_57();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5;
}

uint64_t static NSUserDefaults.forceContentHydration.getter()
{
  if (one-time initialization token for _forceContentHydration != -1)
  {
    OUTLINED_FUNCTION_19_37();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._forceContentHydration;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t static NSUserDefaults.featureStoreLogging.getter()
{
  if (one-time initialization token for _featureStoreLogging != -1)
  {
    OUTLINED_FUNCTION_58_13();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._featureStoreLogging;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t static NSUserDefaults.enablePhotosInAppSearch.getter()
{
  if (one-time initialization token for _enablePhotosInAppSearch != -1)
  {
    OUTLINED_FUNCTION_57_17();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._enablePhotosInAppSearch;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t static NSUserDefaults.triggersDisambiguation.getter()
{
  if (one-time initialization token for _triggersDisambiguation != -1)
  {
    OUTLINED_FUNCTION_56_15();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._triggersDisambiguation;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t static NSUserDefaults.searchCATContextOverride.getter()
{
  if (one-time initialization token for _searchCATContextOverride != -1)
  {
    OUTLINED_FUNCTION_55_16();
  }

  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_17_37(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v8, v9, v10, v11, v12, v13, v14, v15);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.llmPromptLineBreak.getter()
{
  if (one-time initialization token for _llmPromptLineBreak != -1)
  {
    OUTLINED_FUNCTION_54_24();
  }

  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_17_37(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v8, v9, v10, v11, v12, v13, v14, v15);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.sendInstantAnswerDocToAS.getter()
{
  if (one-time initialization token for _sendInstantAnswerDocToAS != -1)
  {
    OUTLINED_FUNCTION_53_18();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._sendInstantAnswerDocToAS;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t static NSUserDefaults.msgCntBeforeTarget.getter()
{
  if (one-time initialization token for _msgCntBeforeTarget != -1)
  {
    OUTLINED_FUNCTION_52_21();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_64_15();
  v0 = &static NSUserDefaults._msgCntBeforeTarget;
  v1 = OUTLINED_FUNCTION_3_57();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5;
}

uint64_t static NSUserDefaults.msgCntAfterTarget.getter()
{
  if (one-time initialization token for _msgCntAfterTarget != -1)
  {
    OUTLINED_FUNCTION_51_18();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_64_15();
  v0 = &static NSUserDefaults._msgCntAfterTarget;
  v1 = OUTLINED_FUNCTION_3_57();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5;
}

uint64_t static NSUserDefaults.llmQUPromptTemplateOverride.getter()
{
  if (one-time initialization token for _llmQUPromptTemplateOverride != -1)
  {
    OUTLINED_FUNCTION_50_16();
  }

  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_17_37(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v8, v9, v10, v11, v12, v13, v14, v15);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.llmQUBNFGrammarOverride.getter()
{
  if (one-time initialization token for _llmQUBNFGrammarOverride != -1)
  {
    OUTLINED_FUNCTION_49_21();
  }

  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_17_37(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v8, v9, v10, v11, v12, v13, v14, v15);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.logForEval.getter()
{
  if (one-time initialization token for _logForEval != -1)
  {
    OUTLINED_FUNCTION_48_15();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._logForEval;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t static NSUserDefaults.spotlightQueryBundleIDs.getter()
{
  if (one-time initialization token for _spotlightQueryBundleIDs != -1)
  {
    OUTLINED_FUNCTION_8_44();
  }

  OUTLINED_FUNCTION_10_18();
  v0 = unk_27FC71368;

  v1 = v0;
  v2 = OUTLINED_FUNCTION_3_57();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6;
}

uint64_t specialized UserDefault.wrappedValue.getter()
{
  v1 = v0[4];
  v2 = MEMORY[0x25F89F4C0](v0[2], v0[3]);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    return v7;
  }

  v4 = *v0;
  v5 = v0[1];

  return v4;
}

{
  v1 = v0[4];
  v2 = MEMORY[0x25F89F4C0](v0[2], v0[3]);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  if (swift_dynamicCast())
  {
    return v7;
  }

  v4 = *v0;
  v5 = v0[1];

  return v4;
}

{
  v1 = *(v0 + 4);
  v2 = MEMORY[0x25F89F4C0](*(v0 + 2), *(v0 + 3));
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  if (swift_dynamicCast())
  {
    v0 = v6;
  }

  else
  {
    v4 = *(v0 + 8);
  }

  return *v0;
}

uint64_t specialized UserDefault.wrappedValue.getter(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x25F89F4C0](a2, a3);
  v7 = [a4 objectForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v11, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = swift_dynamicCast();
  v9 = v11;
  if (!v8)
  {
    v9 = a1;
  }

  return v9 & 1;
}

uint64_t specialized UserDefault.wrappedValue.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();
  v5 = [a3 objectForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  return swift_dynamicCast();
}

uint64_t specialized UserDefault.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x25F89F4C0](a2, a3);
  v7 = [a4 objectForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v9, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return a1;
  }
}

{
  v6 = MEMORY[0x25F89F4C0](a2, a3);
  v7 = [a4 objectForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v9, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if (swift_dynamicCast())
  {
    return v9;
  }

  return a1;
}

void specialized UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = MEMORY[0x25F89F4C0](v2[2], v2[3]);
  [v3 setObject:v4 forKey:{v5, a1, a2}];
  swift_unknownObjectRelease();
}

{
  v3 = v2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = MEMORY[0x25F89F4C0](v2[2], v2[3]);
  [v3 setObject:v4 forKey:{v5, a1, a2}];
  swift_unknownObjectRelease();
}

void specialized UserDefault.wrappedValue.setter()
{
  v1 = v0[3];
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = MEMORY[0x25F89F4C0](v0[1], v0[2]);
  [v1 setObject:v2 forKey:v3];
  swift_unknownObjectRelease();
}

{
  v1 = v0[3];
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = MEMORY[0x25F89F4C0](v0[1], v0[2]);
  [v1 setObject:v2 forKey:v3];
  swift_unknownObjectRelease();
}

{
  v1 = v0[3];
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = MEMORY[0x25F89F4C0](v0[1], v0[2]);
  [v1 setObject:v2 forKey:v3];
  swift_unknownObjectRelease();
}

{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = MEMORY[0x25F89F4C0](v0[1], v0[2]);
  [v1 setObject:v2 forKey:v3];
  swift_unknownObjectRelease();
}

void specialized UserDefault.wrappedValue.setter(uint64_t a1, char a2)
{
  v3 = v2[4];
  LOBYTE(v7) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = MEMORY[0x25F89F4C0](v2[2], v2[3]);
  [v3 setObject:v4 forKey:{v5, a1, v7}];
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.answerSynthesisLimit.modify())(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisLimit != -1)
  {
    OUTLINED_FUNCTION_31_25();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.answerSynthesisLimit.modify;
}

uint64_t static NSUserDefaults.answerSynthesisLimit.modify(uint64_t a1)
{
  return static NSUserDefaults.answerSynthesisLimit.modify(a1);
}

{
  v1 = *(a1 + 24);
  specialized UserDefault.wrappedValue.setter();

  return swift_endAccess();
}

double one-time initialization function for _answerSynthesisLimit()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 5;
  static NSUserDefaults._answerSynthesisLimit = xmmword_25DBE5700;
  qword_28155B9D0 = 0x800000025DBF8C70;
  unk_28155B9D8 = v0;
  return result;
}

id static NSUserDefaults.$answerSynthesisLimit.getter()
{
  if (one-time initialization token for _answerSynthesisLimit != -1)
  {
    OUTLINED_FUNCTION_31_25();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_7_47();

  return v1;
}

uint64_t static NSUserDefaults.answerSynthesisLimit.setter(uint64_t a1, void *a2)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_59_16();
  OUTLINED_FUNCTION_147_2();
  specialized UserDefault.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.answerSynthesisRequestedPropertiesPerRequest.modify())(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisRequestedPropertiesPerRequest != -1)
  {
    OUTLINED_FUNCTION_27_24();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.answerSynthesisRequestedPropertiesPerRequest.modify;
}

double one-time initialization function for _answerSynthesisRequestedPropertiesPerRequest()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 5;
  static NSUserDefaults._answerSynthesisRequestedPropertiesPerRequest = xmmword_25DBE5710;
  qword_27FC70FA0 = 0x800000025DBF8C20;
  unk_27FC70FA8 = v0;
  return result;
}

id static NSUserDefaults.$answerSynthesisRequestedPropertiesPerRequest.getter()
{
  if (one-time initialization token for _answerSynthesisRequestedPropertiesPerRequest != -1)
  {
    OUTLINED_FUNCTION_27_24();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_7_47();

  return v1;
}

uint64_t (*static NSUserDefaults.answerSynthesisSearchResultsPerRequest.modify())(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisSearchResultsPerRequest != -1)
  {
    OUTLINED_FUNCTION_32_30();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.answerSynthesisSearchResultsPerRequest.modify;
}

double one-time initialization function for _answerSynthesisSearchResultsPerRequest()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 5;
  static NSUserDefaults._answerSynthesisSearchResultsPerRequest = xmmword_25DBE5720;
  qword_27FC70FC0 = 0x800000025DBF8C90;
  unk_27FC70FC8 = v0;
  return result;
}

id static NSUserDefaults.$answerSynthesisSearchResultsPerRequest.getter()
{
  if (one-time initialization token for _answerSynthesisSearchResultsPerRequest != -1)
  {
    OUTLINED_FUNCTION_32_30();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_7_47();

  return v1;
}

uint64_t key path setter for static NSUserDefaults.answerSynthesisModelType : NSUserDefaults.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return static NSUserDefaults.answerSynthesisModelType.setter();
}

uint64_t static NSUserDefaults.answerSynthesisModelType.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _answerSynthesisModelType != -1)
  {
    OUTLINED_FUNCTION_36_23();
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

void static NSUserDefaults.answerSynthesisModelType.modify(uint64_t a1)
{
  static NSUserDefaults.answerSynthesisModelType.modify(a1);
}

{
  OUTLINED_FUNCTION_76_15(a1);
  if (v2)
  {

    v3 = OUTLINED_FUNCTION_34_11();
    specialized UserDefault.wrappedValue.setter(v3, v4);
    v5 = v1[9];
  }

  else
  {
    v6 = OUTLINED_FUNCTION_34_11();
    specialized UserDefault.wrappedValue.setter(v6, v7);
  }

  swift_endAccess();

  free(v1);
}

uint64_t one-time initialization function for _answerSynthesisModelType()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._answerSynthesisModelType = 0x726576726573;
  unk_28155B990 = 0xE600000000000000;
  qword_28155B998 = 0xD000000000000018;
  unk_28155B9A0 = 0x800000025DBF8D00;
  qword_28155B9A8 = result;
  return result;
}

id static NSUserDefaults.$answerSynthesisModelType.getter()
{
  if (one-time initialization token for _answerSynthesisModelType != -1)
  {
    OUTLINED_FUNCTION_36_23();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_63_19();

  return v1;
}

uint64_t (*static NSUserDefaults.answerSynthesisTokenLimitDevice.modify())(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenLimitDevice != -1)
  {
    OUTLINED_FUNCTION_35_26();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.answerSynthesisTokenLimitDevice.modify;
}

double one-time initialization function for _answerSynthesisTokenLimitDevice()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 2048;
  static NSUserDefaults._answerSynthesisTokenLimitDevice = xmmword_25DBE5730;
  qword_27FC70FE0 = 0x800000025DBF8CE0;
  unk_27FC70FE8 = v0;
  return result;
}

id static NSUserDefaults.$answerSynthesisTokenLimitDevice.getter()
{
  if (one-time initialization token for _answerSynthesisTokenLimitDevice != -1)
  {
    OUTLINED_FUNCTION_35_26();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_7_47();

  return v1;
}

uint64_t (*static NSUserDefaults.answerSynthesisTokenLimitServer.modify())(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenLimitServer != -1)
  {
    OUTLINED_FUNCTION_34_29();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.answerSynthesisTokenLimitServer.modify;
}

double one-time initialization function for _answerSynthesisTokenLimitServer()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 4096;
  static NSUserDefaults._answerSynthesisTokenLimitServer = xmmword_25DBE5740;
  qword_28155B968 = 0x800000025DBF8CC0;
  unk_28155B970 = v0;
  return result;
}

id static NSUserDefaults.$answerSynthesisTokenLimitServer.getter()
{
  if (one-time initialization token for _answerSynthesisTokenLimitServer != -1)
  {
    OUTLINED_FUNCTION_34_29();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_7_47();

  return v1;
}

uint64_t (*static NSUserDefaults.answerSynthesisTokenLimitNonUserPrompt.modify())(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenLimitNonUserPrompt != -1)
  {
    OUTLINED_FUNCTION_25_27();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.answerSynthesisTokenLimitNonUserPrompt.modify;
}

double one-time initialization function for _answerSynthesisTokenLimitNonUserPrompt()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 300;
  static NSUserDefaults._answerSynthesisTokenLimitNonUserPrompt = xmmword_25DBE5750;
  qword_27FC71000 = 0x800000025DBF8BF0;
  unk_27FC71008 = v0;
  return result;
}

id static NSUserDefaults.$answerSynthesisTokenLimitNonUserPrompt.getter()
{
  if (one-time initialization token for _answerSynthesisTokenLimitNonUserPrompt != -1)
  {
    OUTLINED_FUNCTION_25_27();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_7_47();

  return v1;
}

uint64_t static NSUserDefaults.answerSynthesisTokenCharMultiplier.setter()
{
  if (one-time initialization token for _answerSynthesisTokenCharMultiplier != -1)
  {
    OUTLINED_FUNCTION_6_39();
  }

  OUTLINED_FUNCTION_59_16();
  OUTLINED_FUNCTION_147_2();
  specialized UserDefault.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.answerSynthesisTokenCharMultiplier.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenCharMultiplier != -1)
  {
    OUTLINED_FUNCTION_6_39();
  }

  OUTLINED_FUNCTION_48_1();
  specialized UserDefault.wrappedValue.getter(qword_27FC71018, unk_27FC71020, qword_27FC71028);
  *(a1 + 24) = v2;
  return static NSUserDefaults.answerSynthesisTokenCharMultiplier.modify;
}

uint64_t static NSUserDefaults.answerSynthesisTokenCharMultiplier.modify(uint64_t a1)
{
  v1 = *(a1 + 24);
  specialized UserDefault.wrappedValue.setter();

  return swift_endAccess();
}

uint64_t one-time initialization function for _answerSynthesisTokenCharMultiplier()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._answerSynthesisTokenCharMultiplier = 1075838976;
  qword_27FC71018 = 0xD000000000000022;
  unk_27FC71020 = 0x800000025DBF8BC0;
  qword_27FC71028 = result;
  return result;
}

id static NSUserDefaults.$answerSynthesisTokenCharMultiplier.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _answerSynthesisTokenCharMultiplier != -1)
  {
    OUTLINED_FUNCTION_6_39();
  }

  OUTLINED_FUNCTION_10_39();
  v3 = qword_27FC71018;
  v2 = unk_27FC71020;
  v6 = qword_27FC71028;
  v4 = qword_27FC71028;
  *a1 = static NSUserDefaults._answerSynthesisTokenCharMultiplier;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;

  return v6;
}

uint64_t (*static NSUserDefaults.answerSynthesisTokenLimitOutput.modify())(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenLimitOutput != -1)
  {
    OUTLINED_FUNCTION_44_24();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.answerSynthesisTokenLimitOutput.modify;
}

double one-time initialization function for _answerSynthesisTokenLimitOutput()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 256;
  static NSUserDefaults._answerSynthesisTokenLimitOutput = xmmword_25DBE5760;
  qword_27FC71040 = 0x800000025DBF8DA0;
  unk_27FC71048 = v0;
  return result;
}

id static NSUserDefaults.$answerSynthesisTokenLimitOutput.getter()
{
  if (one-time initialization token for _answerSynthesisTokenLimitOutput != -1)
  {
    OUTLINED_FUNCTION_44_24();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_7_47();

  return v1;
}

uint64_t static NSUserDefaults.answerSynthesisPromptTemplateOverride.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _answerSynthesisPromptTemplateOverride != -1)
  {
    OUTLINED_FUNCTION_39_23();
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

void static NSUserDefaults.answerSynthesisPromptTemplateOverride.modify(uint64_t a1)
{
  static NSUserDefaults.answerSynthesisPromptTemplateOverride.modify(a1);
}

{
  OUTLINED_FUNCTION_76_15(a1);
  if (v2)
  {

    v3 = OUTLINED_FUNCTION_34_11();
    specialized UserDefault.wrappedValue.setter(v3, v4);
    v5 = v1[9];
  }

  else
  {
    v6 = OUTLINED_FUNCTION_34_11();
    specialized UserDefault.wrappedValue.setter(v6, v7);
  }

  swift_endAccess();

  free(v1);
}

uint64_t one-time initialization function for _answerSynthesisPromptTemplateOverride()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._answerSynthesisPromptTemplateOverride = 0;
  *algn_27FC71058 = 0;
  qword_27FC71060 = 0xD000000000000025;
  unk_27FC71068 = 0x800000025DBF8D70;
  qword_27FC71070 = result;
  return result;
}

id static NSUserDefaults.$answerSynthesisPromptTemplateOverride.getter()
{
  if (one-time initialization token for _answerSynthesisPromptTemplateOverride != -1)
  {
    OUTLINED_FUNCTION_39_23();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_4_52();

  return v1;
}

uint64_t static NSUserDefaults.answerSynthesisMultiAnswersSupport.getter()
{
  if (one-time initialization token for _answerSynthesisMultiAnswersSupport != -1)
  {
    OUTLINED_FUNCTION_47_18();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._answerSynthesisMultiAnswersSupport;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t (*static NSUserDefaults.answerSynthesisMultiAnswersSupport.modify())(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisMultiAnswersSupport != -1)
  {
    OUTLINED_FUNCTION_47_18();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.answerSynthesisMultiAnswersSupport.modify;
}

uint64_t static NSUserDefaults.answerSynthesisMultiAnswersSupport.modify(uint64_t a1)
{
  return static NSUserDefaults.answerSynthesisMultiAnswersSupport.modify(a1);
}

{
  v1 = *(a1 + 24);
  specialized UserDefault.wrappedValue.setter();

  return swift_endAccess();
}

uint64_t one-time initialization function for _answerSynthesisMultiAnswersSupport()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._answerSynthesisMultiAnswersSupport = 0;
  qword_27FC71080 = 0xD000000000000022;
  unk_27FC71088 = 0x800000025DBF8970;
  qword_27FC71090 = result;
  return result;
}

id static NSUserDefaults.$answerSynthesisMultiAnswersSupport.getter()
{
  if (one-time initialization token for _answerSynthesisMultiAnswersSupport != -1)
  {
    OUTLINED_FUNCTION_47_18();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t static NSUserDefaults.disambiguationLimit.getter()
{
  if (one-time initialization token for _disambiguationLimit != -1)
  {
    OUTLINED_FUNCTION_43_15();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_64_15();
  v0 = &static NSUserDefaults._disambiguationLimit;
  v1 = OUTLINED_FUNCTION_3_57();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5;
}

uint64_t (*static NSUserDefaults.disambiguationLimit.modify())(uint64_t a1)
{
  if (one-time initialization token for _disambiguationLimit != -1)
  {
    OUTLINED_FUNCTION_43_15();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.disambiguationLimit.modify;
}

double one-time initialization function for _disambiguationLimit()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 5;
  static NSUserDefaults._disambiguationLimit = xmmword_25DBE5770;
  qword_27FC710A8 = 0x800000025DBF8950;
  unk_27FC710B0 = v0;
  return result;
}

id static NSUserDefaults.$disambiguationLimit.getter()
{
  if (one-time initialization token for _disambiguationLimit != -1)
  {
    OUTLINED_FUNCTION_43_15();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_7_47();

  return v1;
}

uint64_t key path setter for static NSUserDefaults.answerSynthesisPromptTemplateOverride : NSUserDefaults.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t static NSUserDefaults.pqaVerificationPromptTemplateOverride.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _pqaVerificationPromptTemplateOverride != -1)
  {
    OUTLINED_FUNCTION_37_19();
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

uint64_t one-time initialization function for _pqaVerificationPromptTemplateOverride()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._pqaVerificationPromptTemplateOverride = 0;
  unk_27FC710C0 = 0;
  qword_27FC710C8 = 0xD000000000000025;
  unk_27FC710D0 = 0x800000025DBF8D20;
  qword_27FC710D8 = result;
  return result;
}

id static NSUserDefaults.$pqaVerificationPromptTemplateOverride.getter()
{
  if (one-time initialization token for _pqaVerificationPromptTemplateOverride != -1)
  {
    OUTLINED_FUNCTION_37_19();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_4_52();

  return v1;
}

uint64_t static NSUserDefaults.globalSearchLocationLatitude.getter()
{
  if (one-time initialization token for _globalSearchLocationLatitude != -1)
  {
    OUTLINED_FUNCTION_42_23();
  }

  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_17_37(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_62_17(v8, v9, v10, v11, v12, v13, v14, v15);
  return v8;
}

uint64_t static NSUserDefaults.globalSearchLocationLatitude.modify()
{
  v0 = __swift_coroFrameAllocStub(0x49uLL);
  OUTLINED_FUNCTION_69_16(v0);
  if (one-time initialization token for _globalSearchLocationLatitude != -1)
  {
    OUTLINED_FUNCTION_42_23();
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  v1 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_75_17(v1, v2);
  return OUTLINED_FUNCTION_66_2();
}

void static NSUserDefaults.globalSearchLocationLatitude.modify(uint64_t a1)
{
  static NSUserDefaults.globalSearchLocationLatitude.modify(a1);
}

{
  v1 = *a1;
  specialized UserDefault.wrappedValue.setter(*(*a1 + 64), *(*a1 + 72));
  swift_endAccess();

  free(v1);
}

uint64_t one-time initialization function for _globalSearchLocationLatitude()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._globalSearchLocationLatitude = 0;
  byte_27FC710E8 = 1;
  qword_27FC710F0 = 0xD00000000000001CLL;
  unk_27FC710F8 = 0x800000025DBF8930;
  qword_27FC71100 = result;
  return result;
}

id static NSUserDefaults.$globalSearchLocationLatitude.getter()
{
  if (one-time initialization token for _globalSearchLocationLatitude != -1)
  {
    OUTLINED_FUNCTION_42_23();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_60_13();

  return v1;
}

uint64_t static NSUserDefaults.globalSearchLocationLongitude.getter()
{
  if (one-time initialization token for _globalSearchLocationLongitude != -1)
  {
    OUTLINED_FUNCTION_41_20();
  }

  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_17_37(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_62_17(v8, v9, v10, v11, v12, v13, v14, v15);
  return v8;
}

uint64_t static NSUserDefaults.globalSearchLocationLongitude.modify()
{
  v0 = __swift_coroFrameAllocStub(0x49uLL);
  OUTLINED_FUNCTION_69_16(v0);
  if (one-time initialization token for _globalSearchLocationLongitude != -1)
  {
    OUTLINED_FUNCTION_41_20();
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  v1 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_75_17(v1, v2);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t one-time initialization function for _globalSearchLocationLongitude()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._globalSearchLocationLongitude = 0;
  byte_27FC71110 = 1;
  qword_27FC71118 = 0xD00000000000001DLL;
  unk_27FC71120 = 0x800000025DBF8910;
  qword_27FC71128 = result;
  return result;
}

id static NSUserDefaults.$globalSearchLocationLongitude.getter()
{
  if (one-time initialization token for _globalSearchLocationLongitude != -1)
  {
    OUTLINED_FUNCTION_41_20();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_60_13();

  return v1;
}

uint64_t (*static NSUserDefaults.logForEval.modify())(uint64_t a1)
{
  if (one-time initialization token for _logForEval != -1)
  {
    OUTLINED_FUNCTION_48_15();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.logForEval.modify;
}

uint64_t one-time initialization function for _logForEval()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._logForEval = 0;
  qword_27FC71138 = 0x7645726F46676F6CLL;
  unk_27FC71140 = 0xEA00000000006C61;
  qword_27FC71148 = result;
  return result;
}

id static NSUserDefaults.$logForEval.getter()
{
  if (one-time initialization token for _logForEval != -1)
  {
    OUTLINED_FUNCTION_48_15();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t static NSUserDefaults.photosSearchEval.getter()
{
  if (one-time initialization token for _photosSearchEval != -1)
  {
    OUTLINED_FUNCTION_40_23();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._photosSearchEval;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t (*static NSUserDefaults.photosSearchEval.modify())(uint64_t a1)
{
  if (one-time initialization token for _photosSearchEval != -1)
  {
    OUTLINED_FUNCTION_40_23();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.photosSearchEval.modify;
}

uint64_t one-time initialization function for _photosSearchEval()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._photosSearchEval = 0;
  qword_27FC71158 = 0xD000000000000010;
  unk_27FC71160 = 0x800000025DBF88F0;
  qword_27FC71168 = result;
  return result;
}

id static NSUserDefaults.$photosSearchEval.getter()
{
  if (one-time initialization token for _photosSearchEval != -1)
  {
    OUTLINED_FUNCTION_40_23();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t (*static NSUserDefaults.emailContentPreprocessing.modify())(uint64_t a1)
{
  if (one-time initialization token for _emailContentPreprocessing != -1)
  {
    OUTLINED_FUNCTION_24_27();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.emailContentPreprocessing.modify;
}

uint64_t one-time initialization function for _emailContentPreprocessing()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._emailContentPreprocessing = 1;
  qword_27FC71178 = 0xD000000000000019;
  unk_27FC71180 = 0x800000025DBF8BA0;
  qword_27FC71188 = result;
  return result;
}

id static NSUserDefaults.$emailContentPreprocessing.getter()
{
  if (one-time initialization token for _emailContentPreprocessing != -1)
  {
    OUTLINED_FUNCTION_24_27();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t (*static NSUserDefaults.smartChunkingPreprocessing.modify())(uint64_t a1)
{
  if (one-time initialization token for _smartChunkingPreprocessing != -1)
  {
    OUTLINED_FUNCTION_22_27();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.smartChunkingPreprocessing.modify;
}

uint64_t one-time initialization function for _smartChunkingPreprocessing()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._smartChunkingPreprocessing = 0;
  qword_27FC71198 = 0xD00000000000001ALL;
  unk_27FC711A0 = 0x800000025DBF8B60;
  qword_27FC711A8 = result;
  return result;
}

id static NSUserDefaults.$smartChunkingPreprocessing.getter()
{
  if (one-time initialization token for _smartChunkingPreprocessing != -1)
  {
    OUTLINED_FUNCTION_22_27();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t (*static NSUserDefaults.smartChunksPerDocument.modify())(uint64_t a1)
{
  if (one-time initialization token for _smartChunksPerDocument != -1)
  {
    OUTLINED_FUNCTION_21_31();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.smartChunksPerDocument.modify;
}

double one-time initialization function for _smartChunksPerDocument()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 2;
  static NSUserDefaults._smartChunksPerDocument = xmmword_25DBE5780;
  qword_27FC711C0 = 0x800000025DBF8B40;
  unk_27FC711C8 = v0;
  return result;
}

id static NSUserDefaults.$smartChunksPerDocument.getter()
{
  if (one-time initialization token for _smartChunksPerDocument != -1)
  {
    OUTLINED_FUNCTION_21_31();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_7_47();

  return v1;
}

uint64_t (*static NSUserDefaults.smartChunkingOverlap.modify())(uint64_t a1)
{
  if (one-time initialization token for _smartChunkingOverlap != -1)
  {
    OUTLINED_FUNCTION_20_26();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.smartChunkingOverlap.modify;
}

double one-time initialization function for _smartChunkingOverlap()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  result = 0.0;
  static NSUserDefaults._smartChunkingOverlap = xmmword_25DBE5790;
  qword_27FC711E0 = 0x800000025DBF8B20;
  unk_27FC711E8 = v0;
  return result;
}

id static NSUserDefaults.$smartChunkingOverlap.getter()
{
  if (one-time initialization token for _smartChunkingOverlap != -1)
  {
    OUTLINED_FUNCTION_20_26();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_7_47();

  return v1;
}

uint64_t (*static NSUserDefaults.sendInstantAnswerDocToAS.modify())(uint64_t a1)
{
  if (one-time initialization token for _sendInstantAnswerDocToAS != -1)
  {
    OUTLINED_FUNCTION_53_18();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.sendInstantAnswerDocToAS.modify;
}

uint64_t one-time initialization function for _sendInstantAnswerDocToAS()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._sendInstantAnswerDocToAS = 0;
  qword_27FC711F8 = 0xD000000000000018;
  unk_27FC71200 = 0x800000025DBF8A40;
  qword_27FC71208 = result;
  return result;
}

id static NSUserDefaults.$sendInstantAnswerDocToAS.getter()
{
  if (one-time initialization token for _sendInstantAnswerDocToAS != -1)
  {
    OUTLINED_FUNCTION_53_18();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t (*static NSUserDefaults.msgCntBeforeTarget.modify())(uint64_t a1)
{
  if (one-time initialization token for _msgCntBeforeTarget != -1)
  {
    OUTLINED_FUNCTION_52_21();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.msgCntBeforeTarget.modify;
}

double one-time initialization function for _msgCntBeforeTarget()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 5;
  static NSUserDefaults._msgCntBeforeTarget = xmmword_25DBE57A0;
  qword_27FC71220 = 0x800000025DBF8A20;
  unk_27FC71228 = v0;
  return result;
}

id static NSUserDefaults.$msgCntBeforeTarget.getter()
{
  if (one-time initialization token for _msgCntBeforeTarget != -1)
  {
    OUTLINED_FUNCTION_52_21();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_7_47();

  return v1;
}

uint64_t (*static NSUserDefaults.msgCntAfterTarget.modify())(uint64_t a1)
{
  if (one-time initialization token for _msgCntAfterTarget != -1)
  {
    OUTLINED_FUNCTION_51_18();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.msgCntAfterTarget.modify;
}

double one-time initialization function for _msgCntAfterTarget()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 5;
  static NSUserDefaults._msgCntAfterTarget = xmmword_25DBE57B0;
  qword_27FC71240 = 0x800000025DBF8A00;
  unk_27FC71248 = v0;
  return result;
}

id static NSUserDefaults.$msgCntAfterTarget.getter()
{
  if (one-time initialization token for _msgCntAfterTarget != -1)
  {
    OUTLINED_FUNCTION_51_18();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_7_47();

  return v1;
}

uint64_t static NSUserDefaults.forceLLMQU.getter()
{
  if (one-time initialization token for _forceLLMQU != -1)
  {
    OUTLINED_FUNCTION_33_28();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._forceLLMQU;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t (*static NSUserDefaults.forceLLMQU.modify())(uint64_t a1)
{
  if (one-time initialization token for _forceLLMQU != -1)
  {
    OUTLINED_FUNCTION_33_28();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.forceLLMQU.modify;
}

uint64_t one-time initialization function for _forceLLMQU()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._forceLLMQU = 0;
  qword_27FC71258 = 0x4D4C4C6563726F66;
  unk_27FC71260 = 0xEA00000000005551;
  qword_27FC71268 = result;
  return result;
}

id static NSUserDefaults.$forceLLMQU.getter()
{
  if (one-time initialization token for _forceLLMQU != -1)
  {
    OUTLINED_FUNCTION_33_28();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t static NSUserDefaults.llmQUPromptTemplateOverride.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _llmQUPromptTemplateOverride != -1)
  {
    OUTLINED_FUNCTION_50_16();
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

uint64_t one-time initialization function for _llmQUPromptTemplateOverride()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._llmQUPromptTemplateOverride = 0;
  *algn_27FC71278 = 0;
  qword_27FC71280 = 0xD00000000000001BLL;
  unk_27FC71288 = 0x800000025DBF89E0;
  qword_27FC71290 = result;
  return result;
}

id static NSUserDefaults.$llmQUPromptTemplateOverride.getter()
{
  if (one-time initialization token for _llmQUPromptTemplateOverride != -1)
  {
    OUTLINED_FUNCTION_50_16();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_4_52();

  return v1;
}

uint64_t static NSUserDefaults.llmQUBNFGrammarOverride.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _llmQUBNFGrammarOverride != -1)
  {
    OUTLINED_FUNCTION_49_21();
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

uint64_t one-time initialization function for _llmQUBNFGrammarOverride()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._llmQUBNFGrammarOverride = 0;
  unk_27FC712A0 = 0;
  qword_27FC712A8 = 0xD000000000000017;
  unk_27FC712B0 = 0x800000025DBF89C0;
  qword_27FC712B8 = result;
  return result;
}

id static NSUserDefaults.$llmQUBNFGrammarOverride.getter()
{
  if (one-time initialization token for _llmQUBNFGrammarOverride != -1)
  {
    OUTLINED_FUNCTION_49_21();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_4_52();

  return v1;
}

uint64_t key path setter for static NSUserDefaults.llmPromptLineBreak : NSUserDefaults.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return static NSUserDefaults.llmPromptLineBreak.setter();
}

uint64_t static NSUserDefaults.llmPromptLineBreak.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _llmPromptLineBreak != -1)
  {
    OUTLINED_FUNCTION_54_24();
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

uint64_t one-time initialization function for _llmPromptLineBreak()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._llmPromptLineBreak = 4091452;
  *algn_27FC712C8 = 0xE300000000000000;
  qword_27FC712D0 = 0xD000000000000012;
  unk_27FC712D8 = 0x800000025DBF8A60;
  qword_27FC712E0 = result;
  return result;
}

id static NSUserDefaults.$llmPromptLineBreak.getter()
{
  if (one-time initialization token for _llmPromptLineBreak != -1)
  {
    OUTLINED_FUNCTION_54_24();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_63_19();

  return v1;
}

uint64_t (*static NSUserDefaults.forceContentHydration.modify())(uint64_t a1)
{
  if (one-time initialization token for _forceContentHydration != -1)
  {
    OUTLINED_FUNCTION_19_37();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.forceContentHydration.modify;
}

uint64_t one-time initialization function for _forceContentHydration()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._forceContentHydration = 0;
  qword_27FC712F0 = 0xD000000000000015;
  unk_27FC712F8 = 0x800000025DBF8B00;
  qword_27FC71300 = result;
  return result;
}

id static NSUserDefaults.$forceContentHydration.getter()
{
  if (one-time initialization token for _forceContentHydration != -1)
  {
    OUTLINED_FUNCTION_19_37();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t static NSUserDefaults.skipGlobalSearch.getter()
{
  if (one-time initialization token for _skipGlobalSearch != -1)
  {
    OUTLINED_FUNCTION_26_26();
  }

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_15_37();
  v0 = &static NSUserDefaults._skipGlobalSearch;
  OUTLINED_FUNCTION_5_48();
  v5 = specialized UserDefault.wrappedValue.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t (*static NSUserDefaults.skipGlobalSearch.modify())(uint64_t a1)
{
  if (one-time initialization token for _skipGlobalSearch != -1)
  {
    OUTLINED_FUNCTION_26_26();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.skipGlobalSearch.modify;
}

uint64_t one-time initialization function for _skipGlobalSearch()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._skipGlobalSearch = 0;
  qword_27FC71310 = 0xD000000000000010;
  unk_27FC71318 = 0x800000025DBEEBF0;
  qword_27FC71320 = result;
  return result;
}

id static NSUserDefaults.$skipGlobalSearch.getter()
{
  if (one-time initialization token for _skipGlobalSearch != -1)
  {
    OUTLINED_FUNCTION_26_26();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t static NSUserDefaults.globalSearchLocationLatitude.setter(uint64_t a1, char a2, void *a3)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_59_16();
  OUTLINED_FUNCTION_147_2();
  specialized UserDefault.wrappedValue.setter(a1, a2 & 1);
  return swift_endAccess();
}

uint64_t static NSUserDefaults.currentTime.modify()
{
  v0 = __swift_coroFrameAllocStub(0x49uLL);
  OUTLINED_FUNCTION_69_16(v0);
  if (one-time initialization token for _currentTime != -1)
  {
    OUTLINED_FUNCTION_28_26();
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  v1 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_75_17(v1, v2);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t one-time initialization function for _currentTime()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._currentTime = 0;
  byte_27FC71330 = 1;
  qword_27FC71338 = 0x54746E6572727563;
  unk_27FC71340 = 0xEB00000000656D69;
  qword_27FC71348 = result;
  return result;
}

id static NSUserDefaults.$currentTime.getter()
{
  if (one-time initialization token for _currentTime != -1)
  {
    OUTLINED_FUNCTION_28_26();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_60_13();

  return v1;
}

uint64_t key path setter for static NSUserDefaults.spotlightQueryBundleIDs : NSUserDefaults.Type(uint64_t *a1)
{
  v1 = *a1;

  return static NSUserDefaults.spotlightQueryBundleIDs.setter();
}

uint64_t static NSUserDefaults.spotlightQueryBundleIDs.setter()
{
  if (one-time initialization token for _spotlightQueryBundleIDs != -1)
  {
    OUTLINED_FUNCTION_8_44();
  }

  OUTLINED_FUNCTION_59_16();
  OUTLINED_FUNCTION_147_2();
  specialized UserDefault.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.spotlightQueryBundleIDs.modify())(uint64_t a1, char a2)
{
  if (one-time initialization token for _spotlightQueryBundleIDs != -1)
  {
    OUTLINED_FUNCTION_8_44();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.spotlightQueryBundleIDs.modify;
}

uint64_t static NSUserDefaults.spotlightQueryBundleIDs.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  if (a2)
  {

    specialized UserDefault.wrappedValue.setter();
    v4 = *(a1 + 24);
  }

  else
  {
    specialized UserDefault.wrappedValue.setter();
  }

  return swift_endAccess();
}

uint64_t one-time initialization function for _spotlightQueryBundleIDs()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._spotlightQueryBundleIDs = MEMORY[0x277D84F90];
  *algn_27FC71358 = 0xD000000000000017;
  qword_27FC71360 = 0x800000025DBF89A0;
  unk_27FC71368 = result;
  return result;
}

id static NSUserDefaults.$spotlightQueryBundleIDs.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for _spotlightQueryBundleIDs != -1)
  {
    OUTLINED_FUNCTION_8_44();
  }

  OUTLINED_FUNCTION_10_39();
  v2 = *algn_27FC71358;
  v4 = qword_27FC71360;
  v6 = unk_27FC71368;
  v3 = unk_27FC71368;
  *a1 = static NSUserDefaults._spotlightQueryBundleIDs;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;

  return v6;
}

uint64_t (*static NSUserDefaults.triggersDisambiguation.modify())(uint64_t a1)
{
  if (one-time initialization token for _triggersDisambiguation != -1)
  {
    OUTLINED_FUNCTION_56_15();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.triggersDisambiguation.modify;
}

uint64_t one-time initialization function for _triggersDisambiguation()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._triggersDisambiguation = 0;
  qword_27FC71378 = 0xD000000000000016;
  unk_27FC71380 = 0x800000025DBF8AA0;
  qword_27FC71388 = result;
  return result;
}

id static NSUserDefaults.$triggersDisambiguation.getter()
{
  if (one-time initialization token for _triggersDisambiguation != -1)
  {
    OUTLINED_FUNCTION_56_15();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t key path setter for static NSUserDefaults.fallbackLocale : NSUserDefaults.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return static NSUserDefaults.fallbackLocale.setter();
}

uint64_t static NSUserDefaults.fallbackLocale.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _fallbackLocale != -1)
  {
    OUTLINED_FUNCTION_29_20();
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

uint64_t one-time initialization function for _fallbackLocale()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._fallbackLocale = 0x53555F6E65;
  *algn_27FC71398 = 0xE500000000000000;
  strcpy(&qword_27FC713A0, "fallbackLocale");
  unk_27FC713AF = -18;
  qword_27FC713B0 = result;
  return result;
}

id static NSUserDefaults.$fallbackLocale.getter()
{
  if (one-time initialization token for _fallbackLocale != -1)
  {
    OUTLINED_FUNCTION_29_20();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_63_19();

  return v1;
}

uint64_t (*static NSUserDefaults.allowNoAnswerFallbackToPCS.modify())(uint64_t a1)
{
  if (one-time initialization token for _allowNoAnswerFallbackToPCS != -1)
  {
    OUTLINED_FUNCTION_23_26();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.allowNoAnswerFallbackToPCS.modify;
}

uint64_t one-time initialization function for _allowNoAnswerFallbackToPCS()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._allowNoAnswerFallbackToPCS = 1;
  qword_27FC713C0 = 0xD00000000000001ALL;
  unk_27FC713C8 = 0x800000025DBF8B80;
  qword_27FC713D0 = result;
  return result;
}

id static NSUserDefaults.$allowNoAnswerFallbackToPCS.getter()
{
  if (one-time initialization token for _allowNoAnswerFallbackToPCS != -1)
  {
    OUTLINED_FUNCTION_23_26();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t (*static NSUserDefaults.needAnswerMatchWithLocationResolution.modify())(uint64_t a1)
{
  if (one-time initialization token for _needAnswerMatchWithLocationResolution != -1)
  {
    OUTLINED_FUNCTION_45_19();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.needAnswerMatchWithLocationResolution.modify;
}

uint64_t one-time initialization function for _needAnswerMatchWithLocationResolution()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._needAnswerMatchWithLocationResolution = 1;
  qword_27FC713E0 = 0xD000000000000025;
  unk_27FC713E8 = 0x800000025DBF8DC0;
  qword_27FC713F0 = result;
  return result;
}

id static NSUserDefaults.$needAnswerMatchWithLocationResolution.getter()
{
  if (one-time initialization token for _needAnswerMatchWithLocationResolution != -1)
  {
    OUTLINED_FUNCTION_45_19();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t (*static NSUserDefaults.getDirectionsForLocationResolution.modify())(uint64_t a1)
{
  if (one-time initialization token for _getDirectionsForLocationResolution != -1)
  {
    OUTLINED_FUNCTION_46_23();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.getDirectionsForLocationResolution.modify;
}

uint64_t one-time initialization function for _getDirectionsForLocationResolution()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._getDirectionsForLocationResolution = 1;
  qword_27FC71400 = 0xD000000000000022;
  unk_27FC71408 = 0x800000025DBF8DF0;
  qword_27FC71410 = result;
  return result;
}

id static NSUserDefaults.$getDirectionsForLocationResolution.getter()
{
  if (one-time initialization token for _getDirectionsForLocationResolution != -1)
  {
    OUTLINED_FUNCTION_46_23();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t static NSUserDefaults.answerSynthesisResponseOverride.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _answerSynthesisResponseOverride != -1)
  {
    OUTLINED_FUNCTION_30_25();
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

uint64_t one-time initialization function for _answerSynthesisResponseOverride()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._answerSynthesisResponseOverride = 0;
  unk_27FC71420 = 0;
  qword_27FC71428 = 0xD00000000000001FLL;
  unk_27FC71430 = 0x800000025DBF8C50;
  qword_27FC71438 = result;
  return result;
}

id static NSUserDefaults.$answerSynthesisResponseOverride.getter()
{
  if (one-time initialization token for _answerSynthesisResponseOverride != -1)
  {
    OUTLINED_FUNCTION_30_25();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_4_52();

  return v1;
}

uint64_t static NSUserDefaults.answerSynthesisCDSchemaOverride.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _answerSynthesisCDSchemaOverride != -1)
  {
    OUTLINED_FUNCTION_38_25();
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

uint64_t one-time initialization function for _answerSynthesisCDSchemaOverride()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._answerSynthesisCDSchemaOverride = 0;
  *algn_27FC71448 = 0;
  qword_27FC71450 = 0xD00000000000001FLL;
  unk_27FC71458 = 0x800000025DBF8D50;
  qword_27FC71460 = result;
  return result;
}

id static NSUserDefaults.$answerSynthesisCDSchemaOverride.getter()
{
  if (one-time initialization token for _answerSynthesisCDSchemaOverride != -1)
  {
    OUTLINED_FUNCTION_38_25();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_4_52();

  return v1;
}

uint64_t (*static NSUserDefaults.featureStoreLogging.modify())(uint64_t a1)
{
  if (one-time initialization token for _featureStoreLogging != -1)
  {
    OUTLINED_FUNCTION_58_13();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.featureStoreLogging.modify;
}

uint64_t one-time initialization function for _featureStoreLogging()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._featureStoreLogging = 0;
  qword_27FC71470 = 0xD000000000000013;
  unk_27FC71478 = 0x800000025DBF8AE0;
  qword_27FC71480 = result;
  return result;
}

id static NSUserDefaults.$featureStoreLogging.getter()
{
  if (one-time initialization token for _featureStoreLogging != -1)
  {
    OUTLINED_FUNCTION_58_13();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t static NSUserDefaults.answerSynthesisModelType.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (*a3 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_59_16();
  OUTLINED_FUNCTION_147_2();
  a5(a1, a2);
  return swift_endAccess();
}

uint64_t static NSUserDefaults.searchCATContextOverride.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _searchCATContextOverride != -1)
  {
    OUTLINED_FUNCTION_55_16();
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

uint64_t one-time initialization function for _searchCATContextOverride()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._searchCATContextOverride = 0;
  unk_27FC71490 = 0;
  qword_27FC71498 = 0xD000000000000018;
  unk_27FC714A0 = 0x800000025DBF8A80;
  qword_27FC714A8 = result;
  return result;
}

id static NSUserDefaults.$searchCATContextOverride.getter()
{
  if (one-time initialization token for _searchCATContextOverride != -1)
  {
    OUTLINED_FUNCTION_55_16();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_4_52();

  return v1;
}

uint64_t static NSUserDefaults.answerSynthesisMultiAnswersSupport.setter(uint64_t a1, void *a2)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_59_16();
  OUTLINED_FUNCTION_147_2();
  specialized UserDefault.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.enablePhotosInAppSearch.modify())(uint64_t a1)
{
  if (one-time initialization token for _enablePhotosInAppSearch != -1)
  {
    OUTLINED_FUNCTION_57_17();
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.enablePhotosInAppSearch.modify;
}

uint64_t one-time initialization function for _enablePhotosInAppSearch()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._enablePhotosInAppSearch = 0;
  qword_27FC714B8 = 0xD000000000000017;
  unk_27FC714C0 = 0x800000025DBF8AC0;
  qword_27FC714C8 = result;
  return result;
}

id static NSUserDefaults.$enablePhotosInAppSearch.getter()
{
  if (one-time initialization token for _enablePhotosInAppSearch != -1)
  {
    OUTLINED_FUNCTION_57_17();
  }

  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_0_79();

  return v1;
}

uint64_t OUTLINED_FUNCTION_0_79()
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  *v0 = *v1;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
}

__n128 OUTLINED_FUNCTION_1_73()
{
  result = *v1;
  v3 = *(v1 + 16);
  *(v0 + 32) = *(v1 + 32);
  *v0 = result;
  *(v0 + 16) = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_2_62()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_52()
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  *v0 = *v1;
  *(v0 + 8) = *(v1 + 8);
  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
}

uint64_t OUTLINED_FUNCTION_6_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_47()
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *v0 = *v1;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
}

uint64_t OUTLINED_FUNCTION_8_44()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_39()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return outlined destroy of (offset: Int, element: SearchResult)(va, v8, v9);
}

uint64_t OUTLINED_FUNCTION_15_37()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
}

uint64_t OUTLINED_FUNCTION_16_37()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{

  return outlined init with copy of CheckedContinuation<(), Never>?(&a17, &a9, v17, v18);
}

uint64_t OUTLINED_FUNCTION_18_24()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_31()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_36_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_37_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_43_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_44_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_47_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_48_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_49_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_50_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_51_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_52_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_54_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_55_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_56_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_57_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_58_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_60_13()
{
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  *v0 = *v1;
  *(v0 + 8) = v3;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v6;
}

uint64_t OUTLINED_FUNCTION_61_21()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_62_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return outlined destroy of (offset: Int, element: SearchResult)(va, v8, v9);
}

uint64_t OUTLINED_FUNCTION_63_19()
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *v0 = *v1;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
}

uint64_t OUTLINED_FUNCTION_64_15()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
}

uint64_t OUTLINED_FUNCTION_67_18()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_75_17(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_15(uint64_t result)
{
  v1 = *(*result + 64);
  v2 = *(*result + 72);
  return result;
}

BOOL NSProcessInfo.isRunningUnitTests.getter()
{
  v1 = [v0 environment];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Dictionary.subscript.getter(0xD000000000000017, 0x800000025DBF8E20, v2);
  v4 = v3;

  if (v4)
  {
  }

  return v4 != 0;
}

uint64_t NSProcessInfo.isSearchToolExtensin.getter()
{
  v1 = [v0 processName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == 0xD000000000000013 && 0x800000025DBF8E40 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t RGOverrideMatcher.__allocating_init(locale:)()
{
  OUTLINED_FUNCTION_16_10();
  v0 = swift_allocObject();
  RGOverrideMatcher.init(locale:)();
  return v0;
}

uint64_t RGOverrideMatcher.matcher.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of ResponseOverrideMatcherProtocol?(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t RGOverrideMatcher.init(locale:)()
{
  v1 = type metadata accessor for Locale();
  v2 = OUTLINED_FUNCTION_114(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  Locale.init(identifier:)();
  v5 = type metadata accessor for ResponseOverrideMatcher();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v10 = v5;
  v11 = &protocol witness table for ResponseOverrideMatcher;
  *&v9 = ResponseOverrideMatcher.init(locale:)();
  swift_beginAccess();
  outlined assign with take of ResponseOverrideMatcherProtocol?(&v9, v0 + 16);
  swift_endAccess();
  return v0;
}

uint64_t outlined assign with take of ResponseOverrideMatcherProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch31ResponseOverrideMatcherProtocol_pSgMd, &_s10OmniSearch31ResponseOverrideMatcherProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RGOverrideMatcher.__allocating_init(matcher:)(uint64_t a1)
{
  OUTLINED_FUNCTION_16_10();
  v2 = swift_allocObject();
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  OUTLINED_FUNCTION_18_25(0);
  outlined assign with take of ResponseOverrideMatcherProtocol?(a1, v2);
  swift_endAccess();
  return v2;
}

uint64_t RGOverrideMatcher.init(matcher:)(uint64_t a1)
{
  *(v1 + 48) = 0;
  *(v1 + 32) = 0u;
  OUTLINED_FUNCTION_18_25(0);
  outlined assign with take of ResponseOverrideMatcherProtocol?(a1, v1);
  swift_endAccess();
  return v1;
}

uint64_t RGOverrideMatcher.checkForRGOverride(query:results:)@<X0>(uint64_t a1@<X0>, void (*a2)(_DWORD *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v321 = a1;
  v322 = a2;
  v328 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
  v7 = OUTLINED_FUNCTION_14(v6);
  v286 = v8;
  v287 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39_0();
  v327 = v11;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_2();
  v326 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow24ResponseOverrideBehaviorVSgMd, &_s16IntelligenceFlow24ResponseOverrideBehaviorVSgMR);
  OUTLINED_FUNCTION_114(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_49_3();
  v323 = v18;
  OUTLINED_FUNCTION_78_0();
  v315 = type metadata accessor for ResponseOverrideBehavior();
  v19 = OUTLINED_FUNCTION_14(v315);
  v312 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v279 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_2();
  v331 = v26;
  OUTLINED_FUNCTION_78_0();
  v27 = type metadata accessor for LocalizedStringResource();
  v28 = OUTLINED_FUNCTION_114(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_39_0();
  v291 = v31;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_2();
  v290 = v33;
  OUTLINED_FUNCTION_78_0();
  v34 = type metadata accessor for _SpeakableString();
  v35 = OUTLINED_FUNCTION_14(v34);
  v293 = v36;
  v294 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_36();
  v292 = v40 - v39;
  OUTLINED_FUNCTION_78_0();
  v41 = type metadata accessor for ResponseDialog();
  v42 = OUTLINED_FUNCTION_14(v41);
  v297 = v43;
  v298 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_39_0();
  v289 = v46;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_14_2();
  v296 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow22ResponseOverrideDialogOSgMd, &_s16IntelligenceFlow22ResponseOverrideDialogOSgMR);
  OUTLINED_FUNCTION_114(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_49_3();
  v310 = v53;
  OUTLINED_FUNCTION_78_0();
  v54 = type metadata accessor for ResponseOverrideDialog();
  v55 = OUTLINED_FUNCTION_14(v54);
  v313 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_39_0();
  v283 = v59;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v60);
  v284 = &v279 - v61;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v62);
  v300 = &v279 - v63;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_14_2();
  v311 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
  OUTLINED_FUNCTION_114(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_49_3();
  v324 = v70;
  v71 = OUTLINED_FUNCTION_78_0();
  v72 = type metadata accessor for SearchEntity(v71);
  v73 = OUTLINED_FUNCTION_14(v72);
  v330 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_39_0();
  v285 = v77;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v78);
  v80 = &v279 - v79;
  v81 = type metadata accessor for ResponseOverrideInput();
  v82 = OUTLINED_FUNCTION_14(v81);
  v318 = v83;
  v319 = v82;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_36();
  v316 = v87 - v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow16ResponseOverrideVSgMd, &_s16IntelligenceFlow16ResponseOverrideVSgMR);
  OUTLINED_FUNCTION_114(v88);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_49_3();
  v317 = v92;
  OUTLINED_FUNCTION_78_0();
  v93 = type metadata accessor for ResponseOverride();
  v94 = OUTLINED_FUNCTION_14(v93);
  v96 = v95;
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_39_0();
  v320 = v99;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_14_2();
  v329 = v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_114(v102);
  v104 = *(v103 + 64);
  OUTLINED_FUNCTION_77_0();
  v106 = MEMORY[0x28223BE20](v105);
  v108 = &v279 - v107;
  (*(*v4 + 88))(v335, v106);
  if (*(&v335[1] + 1))
  {
    outlined init with take of ResponseOverrideMatcherProtocol(v335, v336);
    specialized Collection.first.getter(a3, v108);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v108, 1, v72);
    v295 = v54;
    v332 = v72;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of IntentApplication?(v108, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);

      v306 = 0;
      v307 = 0;
      v308 = 0;
      v309 = 0;
      v110 = a3;
      v111 = v331;
      goto LABEL_16;
    }

    v120 = *(v108 + 3);
    EntityProperty.wrappedValue.getter();
    memcpy(v334, v333, sizeof(v334));
    outlined destroy of SearchEntity(v108);
    memcpy(v335, v334, 0x88uLL);
    v121 = _s10OmniSearch0B7ContextVSgWOg(v335);
    v111 = v331;
    if (v121 != 1)
    {
      if (*(a3 + 16) == 1)
      {
        EntityProperty.wrappedValue.getter();
        v110 = v333[0];
        EntityProperty.wrappedValue.getter();
        v122 = v333[0];
        if (!v333[1])
        {
          v122 = 0;
        }

        v308 = v122;
        v309 = v333[1];
        EntityProperty.wrappedValue.getter();
        outlined destroy of IntentApplication?(v334, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
        v306 = v333[1];
        v307 = v333[0];
LABEL_16:
        v325 = v96;
        v304 = v338;
        v305 = v337;
        v303 = __swift_project_boxed_opaque_existential_1(v336, v337);
        if (one-time initialization token for deviceClass != -1)
        {
          swift_once();
        }

        v280 = v24;
        v123 = MobileGestalt.DeviceClass.rawValue.getter(static MobileGestalt.deviceClass);
        v302 = v124;
        v125 = static MobileGestalt.deviceType.getter();
        v301 = v126;
        v127 = *(v110 + 16);
        v128 = MEMORY[0x277D84F90];
        v299 = v93;
        v314 = v110;
        if (v127)
        {
          v281 = v125;
          v282 = v123;
          v288 = a3;
          *&v335[0] = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v127, 0);
          v128 = *&v335[0];
          OUTLINED_FUNCTION_42_5();
          v130 = v110 + v129;
          v132 = *(v131 + 72);
          do
          {
            outlined init with copy of SearchEntity(v130, v80);
            v133 = &v80[*(v332 + 88)];
            v135 = *v133;
            v134 = *(v133 + 1);

            outlined destroy of SearchEntity(v80);
            *&v335[0] = v128;
            v137 = *(v128 + 16);
            v136 = *(v128 + 24);
            if (v137 >= v136 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v136 > 1, v137 + 1, 1);
              v128 = *&v335[0];
            }

            *(v128 + 16) = v137 + 1;
            v138 = v128 + 16 * v137;
            *(v138 + 32) = v135;
            *(v138 + 40) = v134;
            v130 += v132;
            --v127;
          }

          while (v127);
          v111 = v331;
          a3 = v288;
          v93 = v299;
        }

        v277[1] = 0;
        v278 = 0;
        v277[0] = v128;
        v139 = v316;
        ResponseOverrideInput.init(utterance:response:answer:interfaceIdiom:deviceType:customEntityDescriptions:onScreenText:)();
        v140 = v317;
        (*(v304 + 8))(v139, v305);
        (*(v318 + 8))(v139, v319);
        v141 = __swift_getEnumTagSinglePayload(v140, 1, v93);
        v142 = v325;
        v143 = v329;
        v144 = v320;
        if (v141 == 1)
        {

          outlined destroy of IntentApplication?(v140, &_s16IntelligenceFlow16ResponseOverrideVSgMd, &_s16IntelligenceFlow16ResponseOverrideVSgMR);
          if (one-time initialization token for stextension != -1)
          {
            OUTLINED_FUNCTION_142_0();
          }

          v145 = type metadata accessor for Logger();
          __swift_project_value_buffer(v145, static Logging.stextension);
          v146 = Logger.logObject.getter();
          v147 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_77_5(v147))
          {
            v148 = OUTLINED_FUNCTION_172();
            OUTLINED_FUNCTION_33_23(v148);
            OUTLINED_FUNCTION_100_3(&dword_25D85C000, v149, v150, "No response override matched");
            OUTLINED_FUNCTION_42_0();
          }

          v151 = type metadata accessor for RGOverrideResponse();
          v152 = v328;
          v153 = 1;
          goto LABEL_80;
        }

        (*(v325 + 32))(v329, v140, v93);
        v321 = type metadata accessor for DialogData(0);
        __swift_storeEnumTagSinglePayload(v324, 1, 1, v321);
        if (one-time initialization token for stextension != -1)
        {
          OUTLINED_FUNCTION_142_0();
        }

        v154 = type metadata accessor for Logger();
        v155 = __swift_project_value_buffer(v154, static Logging.stextension);
        (*(v142 + 16))(v144, v143, v93);
        v332 = v155;
        v156 = Logger.logObject.getter();
        v157 = v144;
        v158 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v156, v158))
        {
          v159 = OUTLINED_FUNCTION_51_0();
          v160 = v93;
          v161 = OUTLINED_FUNCTION_49_0();
          *&v335[0] = v161;
          *v159 = 136315138;
          ResponseOverride.identifier.getter();
          v322 = *(v325 + 8);
          v322(v157, v160);
          v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v159 + 4) = v162;
          _os_log_impl(&dword_25D85C000, v156, v158, "Response override with identifier %s matched", v159, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v161);
          v93 = v160;
          OUTLINED_FUNCTION_42_0();
          v111 = v331;
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          v322 = *(v142 + 8);
          v322(v157, v93);
        }

        v163 = v310;
        ResponseOverride.dialog.getter();
        v164 = v295;
        v165 = __swift_getEnumTagSinglePayload(v163, 1, v295);
        v166 = v313;
        if (v165 == 1)
        {
          outlined destroy of IntentApplication?(v163, &_s16IntelligenceFlow22ResponseOverrideDialogOSgMd, &_s16IntelligenceFlow22ResponseOverrideDialogOSgMR);
          v167 = 0;
          v168 = v312;
          goto LABEL_57;
        }

        v288 = a3;
        v169 = v311;
        (*(v313 + 32))(v311, v163, v164);
        v170 = *(v166 + 16);
        v171 = v300;
        v170(v300, v169, v164);
        v172 = (*(v166 + 88))(v171, v164);
        v173 = v314;
        if (v172 == *MEMORY[0x277D1CF78])
        {
          (*(v166 + 96))(v171, v164);
          v174 = v296;
          v175 = v297;
          v176 = v298;
          (*(v297 + 32))(v296, v171, v298);
          v177 = v289;
          (*(v175 + 16))(v289, v174, v176);
          v178 = Logger.logObject.getter();
          v179 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = OUTLINED_FUNCTION_51_0();
            v181 = OUTLINED_FUNCTION_49_0();
            *&v335[0] = v181;
            *v180 = 136315138;
            lazy protocol witness table accessor for type ResponseDialog and conformance ResponseDialog();
            Encodable.asJSONString.getter();
            v182 = *(v175 + 8);
            v182(v177, v176);
            v183 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v180 + 4) = v183;
            _os_log_impl(&dword_25D85C000, v178, v179, "Overriding dialog with the following static dialog: %s", v180, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v181);
            OUTLINED_FUNCTION_42_0();
            v184 = v182;
            OUTLINED_FUNCTION_42_0();
          }

          else
          {

            v184 = *(v175 + 8);
            v184(v177, v176);
          }

          a3 = v288;
          v93 = v299;
          v193 = v296;
          ResponseDialog.fullSpeak.getter();
          v111 = v331;
          v194 = v313;
          if (!v195)
          {
            ResponseDialog.fullPrint.getter();
          }

          LocalizedStringResource.init(stringLiteral:)();
          ResponseDialog.fullPrint.getter();
          LocalizedStringResource.init(stringLiteral:)();
          v196 = v292;
          _SpeakableString.init(spoken:printed:)();
          v184(v193, v298);
          (*(v194 + 8))(v311, v295);
          v197 = v324;
          outlined destroy of IntentApplication?(v324, &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
          v198 = v321;
          v199 = v321[5];
          v200 = type metadata accessor for URL();
          __swift_storeEnumTagSinglePayload(&v197[v199], 1, 1, v200);
          v201 = v198[8];
          v202 = v196;
          v203 = v294;
          (*(v293 + 32))(&v197[v201], v202, v294);
          __swift_storeEnumTagSinglePayload(&v197[v201], 0, 1, v203);
          *v197 = 0;
          *(v197 + 1) = 0;
          *&v197[v198[6]] = 0;
          v204 = &v197[v198[7]];
          *v204 = 0;
          *(v204 + 1) = 0;
          __swift_storeEnumTagSinglePayload(v197, 0, 1, v198);
          v167 = 0;
          v168 = v312;
LABEL_57:

          ResponseOverride.behavior.getter();
          v225 = v323;
          v226 = v315;
          if (__swift_getEnumTagSinglePayload(v323, 1, v315) == 1)
          {
            v227 = OUTLINED_FUNCTION_5_49();
            v228(v227);

            outlined destroy of IntentApplication?(v225, &_s16IntelligenceFlow24ResponseOverrideBehaviorVSgMd, &_s16IntelligenceFlow24ResponseOverrideBehaviorVSgMR);
LABEL_79:
            v276 = v328;
            outlined init with take of DialogData?(v324, v328, &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
            v151 = type metadata accessor for RGOverrideResponse();
            *(v276 + *(v151 + 20)) = v167;
            *(v276 + *(v151 + 24)) = a3;
            v152 = v276;
            v153 = 0;
LABEL_80:
            __swift_storeEnumTagSinglePayload(v152, v153, 1, v151);
            return __swift_destroy_boxed_opaque_existential_1Tm(v336);
          }

          (*(v168 + 32))(v111, v225, v226);
          if (ResponseOverrideBehavior.blockAllCustomEntities.getter())
          {

            v229 = Logger.logObject.getter();
            v230 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_77_5(v230))
            {
              v231 = OUTLINED_FUNCTION_172();
              OUTLINED_FUNCTION_33_23(v231);
              OUTLINED_FUNCTION_100_3(&dword_25D85C000, v232, v233, "Response override blocking all search entities");
              OUTLINED_FUNCTION_6_40();
            }

            v234 = OUTLINED_FUNCTION_5_49();
            v235(v234);
            a3 = MEMORY[0x277D84F90];
            v167 = 1;
          }

          else
          {
            v236 = *(ResponseOverrideBehavior.customEntityIndicesToBlock.getter() + 16);

            v237 = v314;
            if (v236)
            {

              v238 = *(v168 + 16);
              v239 = v168;
              v240 = v280;
              v241 = v111;
              v242 = v315;
              v238(v280, v241, v315);
              v243 = Logger.logObject.getter();
              v244 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v243, v244))
              {
                v245 = OUTLINED_FUNCTION_51_0();
                v246 = OUTLINED_FUNCTION_49_0();
                LODWORD(v323) = v244;
                v247 = v246;
                *&v335[0] = v246;
                *v245 = 136315138;
                ResponseOverrideBehavior.customEntityIndicesToBlock.getter();
                MEMORY[0x25F89F8A0]();

                (*(v312 + 8))(v240, v242);
                v248 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                v249 = v245;
                v237 = v314;
                *(v249 + 1) = v248;
                _os_log_impl(&dword_25D85C000, v243, v323, "Response override blocking custom entities at indices %s", v249, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v247);
                v250 = v312;
                OUTLINED_FUNCTION_42_0();
                OUTLINED_FUNCTION_42_0();
              }

              else
              {

                v250 = v239;
                (*(v239 + 8))(v240, v242);
              }

              v254 = Logger.logObject.getter();
              v255 = static os_log_type_t.info.getter();
              v256 = OUTLINED_FUNCTION_77_5(v255);
              v111 = v331;
              if (v256)
              {
                v257 = OUTLINED_FUNCTION_172();
                OUTLINED_FUNCTION_33_23(v257);
                OUTLINED_FUNCTION_100_3(&dword_25D85C000, v258, v259, "Forcing results to be displayed on PCS path");
                OUTLINED_FUNCTION_42_0();
              }

              MEMORY[0x28223BE20](v260);
              v278 = v111;
              specialized Sequence.filter(_:)(partial apply for closure #2 in RGOverrideMatcher.checkForRGOverride(query:results:), v277, v237);
              v262 = v261;
              v263 = *(v261 + 16);
              if (v263)
              {
                *&v335[0] = MEMORY[0x277D84F90];
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                a3 = *&v335[0];
                v264 = v287;
                OUTLINED_FUNCTION_42_5();
                v323 = v262;
                v266 = v262 + v265;
                v332 = *(v267 + 72);
                v268 = v285;
                do
                {
                  v269 = a3;
                  v270 = v326;
                  outlined init with copy of ResponseOverrideMatcherProtocol?(v266, v326, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
                  v271 = v270;
                  v272 = v327;
                  outlined init with take of DialogData?(v271, v327, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
                  outlined init with take of SearchEntity(v272 + *(v264 + 48), v268);
                  *&v335[0] = v269;
                  v273 = *(v269 + 16);
                  if (v273 >= *(v269 + 24) >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v264 = v287;
                    v269 = *&v335[0];
                  }

                  *(v269 + 16) = v273 + 1;
                  OUTLINED_FUNCTION_42_5();
                  outlined init with take of SearchEntity(v268, v269 + v274 + *(v275 + 72) * v273);
                  v266 += v332;
                  --v263;
                  a3 = v269;
                }

                while (v263);
                v322(v329, v299);

                v167 = 1;
                v253 = v315;
                v168 = v312;
                v111 = v331;
              }

              else
              {

                v322(v329, v93);
                a3 = MEMORY[0x277D84F90];
                v167 = 1;
                v253 = v315;
                v168 = v250;
              }

              goto LABEL_78;
            }

            v251 = OUTLINED_FUNCTION_5_49();
            v252(v251);
          }

          v253 = v315;
LABEL_78:
          (*(v168 + 8))(v111, v253);
          goto LABEL_79;
        }

        if (v172 == *MEMORY[0x277D1CF88])
        {
          v185 = *(v166 + 8);
          v186 = v295;
          v185(v300, v295);
          v187 = Logger.logObject.getter();
          v188 = static os_log_type_t.error.getter();
          v189 = OUTLINED_FUNCTION_77_5(v188);
          v168 = v312;
          if (v189)
          {
            v190 = OUTLINED_FUNCTION_172();
            OUTLINED_FUNCTION_33_23(v190);
            OUTLINED_FUNCTION_100_3(&dword_25D85C000, v191, v192, "Received a deprecated ResponseOverrideDialog of type CAT template");
            OUTLINED_FUNCTION_6_40();
          }

          v185(v311, v186);
          v167 = 0;
          v111 = v331;
          a3 = v288;
        }

        else
        {
          v168 = v312;
          if (v172 != *MEMORY[0x277D1CF80])
          {
            v212 = v284;
            v213 = v311;
            v214 = v295;
            v170(v284, v311, v295);
            v215 = Logger.logObject.getter();
            v216 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v215, v216))
            {
              v217 = OUTLINED_FUNCTION_51_0();
              v320 = v217;
              v218 = OUTLINED_FUNCTION_49_0();
              *&v335[0] = v218;
              *v217 = 136315138;
              v321 = v215;
              v170(v283, v212, v214);
              String.init<A>(describing:)();
              v219 = *(v313 + 8);
              v220 = OUTLINED_FUNCTION_21_32();
              v219(v220);
              v221 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              v222 = v320;
              v223 = v321;
              *(v320 + 1) = v221;
              v168 = v312;
              _os_log_impl(&dword_25D85C000, v223, v216, "Unknown ResponseOverrideDialog type %s", v222, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v218);
              v111 = v331;
              OUTLINED_FUNCTION_42_0();
              OUTLINED_FUNCTION_42_0();

              (v219)(v311, v214);
              v93 = v299;
            }

            else
            {

              v219 = *(v313 + 8);
              v224 = OUTLINED_FUNCTION_21_32();
              v219(v224);
              (v219)(v213, v214);
              v93 = v299;
              v168 = v312;
            }

            (v219)(v300, v214);
            v167 = 0;
            a3 = v288;
            goto LABEL_57;
          }

          v205 = Logger.logObject.getter();
          v206 = static os_log_type_t.info.getter();
          v207 = OUTLINED_FUNCTION_77_5(v206);
          v208 = v311;
          if (v207)
          {
            v209 = OUTLINED_FUNCTION_172();
            OUTLINED_FUNCTION_33_23(v209);
            OUTLINED_FUNCTION_100_3(&dword_25D85C000, v210, v211, "RG override specifies falling back to PCS");
            OUTLINED_FUNCTION_6_40();
          }

          (*(v313 + 8))(v208, v295);
          v167 = 1;
          a3 = v173;
        }

        v93 = v299;
        goto LABEL_57;
      }

      outlined destroy of IntentApplication?(v334, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
    }

    v306 = 0;
    v307 = 0;
    v308 = 0;
    v309 = 0;
    v110 = a3;
    goto LABEL_16;
  }

  outlined destroy of IntentApplication?(v335, &_s10OmniSearch31ResponseOverrideMatcherProtocol_pSgMd, &_s10OmniSearch31ResponseOverrideMatcherProtocol_pSgMR);
  if (one-time initialization token for stextension != -1)
  {
    OUTLINED_FUNCTION_142_0();
  }

  v112 = type metadata accessor for Logger();
  __swift_project_value_buffer(v112, static Logging.stextension);
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_77_5(v114))
  {
    v115 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_33_23(v115);
    OUTLINED_FUNCTION_100_3(&dword_25D85C000, v116, v117, "Unable to check RG override due to initialization failure, skipping");
    OUTLINED_FUNCTION_42_0();
  }

  v118 = type metadata accessor for RGOverrideResponse();
  return __swift_storeEnumTagSinglePayload(v328, 1, 1, v118);
}

BOOL closure #2 in RGOverrideMatcher.checkForRGOverride(query:results:)(uint64_t *a1)
{
  v2 = ResponseOverrideBehavior.customEntityIndicesToBlock.getter();
  LOBYTE(a1) = specialized Sequence<>.contains(_:)(*a1, v2);

  return (a1 & 1) == 0;
}

void specialized Sequence.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v26 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = 0;
  v15 = *(a3 + 16);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 == v14)
    {

      return;
    }

    if (v14 >= *(a3 + 16))
    {
      break;
    }

    v16 = *(type metadata accessor for SearchEntity(0) - 8);
    v17 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14;
    v18 = *(v5 + 48);
    *v10 = v14;
    outlined init with copy of SearchEntity(v17, v10 + v18);
    outlined init with take of DialogData?(v10, v13, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
    v19 = v30(v13);
    if (v3)
    {
      outlined destroy of IntentApplication?(v13, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);

      return;
    }

    if (v19)
    {
      outlined init with take of DialogData?(v13, v28, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v29;
      v32 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1);
        v21 = v32;
      }

      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v29 = v23 + 1;
        v26 = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
        v24 = v29;
        v23 = v26;
        v21 = v32;
      }

      ++v14;
      *(v21 + 16) = v24;
      v25 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v29 = v21;
      outlined init with take of DialogData?(v28, v21 + v25 + *(v27 + 72) * v23, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
    }

    else
    {
      outlined destroy of IntentApplication?(v13, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
      ++v14;
    }
  }

  __break(1u);
}

uint64_t RGOverrideResponse.init(dialogData:fallbackToPCS:filteredResults:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of DialogData?(a1, a4, &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
  result = type metadata accessor for RGOverrideResponse();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t RGOverrideMatcher.__deallocating_deinit()
{
  outlined destroy of IntentApplication?(v0 + 16, &_s10OmniSearch31ResponseOverrideMatcherProtocol_pSgMd, &_s10OmniSearch31ResponseOverrideMatcherProtocol_pSgMR);
  OUTLINED_FUNCTION_16_10();

  return swift_deallocClassInstance();
}

uint64_t RGOverrideResponse.filteredResults.getter()
{
  v1 = *(v0 + *(type metadata accessor for RGOverrideResponse() + 24));
}

uint64_t type metadata accessor for RGOverrideResponse()
{
  result = type metadata singleton initialization cache for RGOverrideResponse;
  if (!type metadata singleton initialization cache for RGOverrideResponse)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of SearchEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchEntity(uint64_t a1)
{
  v2 = type metadata accessor for SearchEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of DialogData?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_17(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

unint64_t lazy protocol witness table accessor for type ResponseDialog and conformance ResponseDialog()
{
  result = lazy protocol witness table cache variable for type ResponseDialog and conformance ResponseDialog;
  if (!lazy protocol witness table cache variable for type ResponseDialog and conformance ResponseDialog)
  {
    type metadata accessor for ResponseDialog();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseDialog and conformance ResponseDialog);
  }

  return result;
}

uint64_t outlined init with copy of ResponseOverrideMatcherProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_17(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

void type metadata completion function for RGOverrideResponse()
{
  type metadata accessor for DialogData?(319, &lazy cache variable for type metadata for DialogData?, type metadata accessor for DialogData, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DialogData?(319, &lazy cache variable for type metadata for [SearchEntity], type metadata accessor for SearchEntity, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for DialogData?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_49()
{
  result = v1;
  v3 = *(v0 + 344);
  return result;
}

void OUTLINED_FUNCTION_6_40()
{
  v2 = *(v0 + 400);

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_18_25(__n128 a1)
{
  v1[1] = a1;

  return swift_beginAccess();
}

id SearchContext.location.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);
  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.getter();
  return [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v4 longitude:v4];
}

uint64_t SearchContext.responseMode.getter()
{
  v1 = *(v0 + 48);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t SearchContext.isEyesFree.getter()
{
  v1 = *(v0 + 64);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t SearchContext.deviceRestrictions.getter()
{
  v1 = *(v0 + 56);
  EntityProperty.wrappedValue.getter();
  return DeviceRestrictions.init(rawValue:)();
}

uint64_t SearchContext.didPSCFire.getter()
{
  v1 = *v0;
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchContext.didPSCFire : SearchContext(unsigned __int8 *a1, const void *a2)
{
  v3 = *a1;
  memcpy(v5, a2, sizeof(v5));
  outlined init with copy of SearchContext(v5, __dst);
  SearchContext.didPSCFire.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return outlined destroy of SearchContext(__dst);
}

uint64_t (*SearchContext.didPSCFire.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

double SearchContext.latitude.getter()
{
  v1 = *(v0 + 8);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchContext.latitude.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

double SearchContext.longitude.getter()
{
  v1 = *(v0 + 16);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchContext.latitude : SearchContext()
{
  OUTLINED_FUNCTION_10_40();
  v2 = *v1;
  v10 = OUTLINED_FUNCTION_14_32(v1, v3, v4, v5, v6, v7, v8, v9, v28);
  v18 = OUTLINED_FUNCTION_13_32(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69[0]);
  v19 = v0(v18, v2);
  OUTLINED_FUNCTION_5_50(v19, v20, v21, v22, v23, v24, v25, v26, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v69[0]);
  return outlined destroy of SearchContext(v69);
}

uint64_t (*SearchContext.longitude.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchContext.onScreenEntities.getter()
{
  v1 = *(v0 + 24);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchContext.onScreenEntities.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchContext.asrSpeechPackageData : SearchContext(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9[-v6];
  outlined init with copy of IntentFile?(a1, &v9[-v6]);
  memcpy(v9, a2, sizeof(v9));
  outlined init with copy of SearchContext(v9, v10);
  SearchContext.asrSpeechPackageData.setter(v7);
  memcpy(v10, a2, sizeof(v10));
  return outlined destroy of SearchContext(v10);
}

uint64_t SearchContext.asrSpeechPackageData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v4 = OUTLINED_FUNCTION_114(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *(v1 + 32);
  outlined init with copy of IntentFile?(a1, &v10 - v8);
  EntityProperty.wrappedValue.setter();
  return outlined destroy of IntentFile?(a1);
}

uint64_t (*SearchContext.asrSpeechPackageData.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchContext.assistantId.getter()
{
  v1 = *(v0 + 40);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchContext.assistantId : SearchContext(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  memcpy(v6, a2, sizeof(v6));

  outlined init with copy of SearchContext(v6, __dst);
  SearchContext.assistantId.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return outlined destroy of SearchContext(__dst);
}

uint64_t (*SearchContext.assistantId.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchContext.responseMode.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchContext.deviceRestrictionsRawValue.getter()
{
  v1 = *(v0 + 56);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchContext.deviceRestrictionsRawValue.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchContext.isEyesFree.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchContext.isMultiUser.getter()
{
  v1 = *(v0 + 72);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchContext.isMultiUser.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 72);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchContext.isVoiceTriggerEnabled.getter()
{
  v1 = *(v0 + 80);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchContext.isVoiceTriggerEnabled.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 80);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchContext.isTextToSpeechEnabled.getter()
{
  v1 = *(v0 + 88);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchContext.isTextToSpeechEnabled.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 88);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchContext.isTriggerlessFollowup.getter()
{
  v1 = *(v0 + 96);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchContext.isTriggerlessFollowup.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 96);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchContext.inputOriginName.getter()
{
  v1 = *(v0 + 104);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchContext.inputOriginName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 104);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchContext.bargeInModes.getter()
{
  v1 = *(v0 + 112);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchContext.onScreenEntities : SearchContext()
{
  OUTLINED_FUNCTION_10_40();
  v2 = *v1;
  OUTLINED_FUNCTION_14_32(v1, v3, v4, v5, v6, v7, v8, v9, v27);

  OUTLINED_FUNCTION_13_32(v10, v11, v12, v13, v14, v15, v16, v17, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68[0]);
  v18 = v0(v2);
  OUTLINED_FUNCTION_5_50(v18, v19, v20, v21, v22, v23, v24, v25, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v68[0]);
  return outlined destroy of SearchContext(v68);
}

uint64_t (*SearchContext.bargeInModes.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 112);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchContext.isOnlyUserInHome.getter()
{
  v1 = *(v0 + 120);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchContext.isOnlyUserInHome.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 120);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchContext.sharedUserId.getter()
{
  v1 = *(v0 + 128);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchContext.responseMode : SearchContext()
{
  OUTLINED_FUNCTION_10_40();
  v2 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_14_32(v1, v4, v5, v6, v7, v8, v9, v10, v28);

  OUTLINED_FUNCTION_13_32(v11, v12, v13, v14, v15, v16, v17, v18, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69[0]);
  v19 = v0(v2, v3);
  OUTLINED_FUNCTION_5_50(v19, v20, v21, v22, v23, v24, v25, v26, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v69[0]);
  return outlined destroy of SearchContext(v69);
}

uint64_t (*SearchContext.sharedUserId.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 128);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchContext.userIdentityClassificationValue.getter()
{
  v1 = *(v0 + 136);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchContext.deviceRestrictionsRawValue : SearchContext()
{
  OUTLINED_FUNCTION_10_40();
  v2 = *v1;
  v10 = OUTLINED_FUNCTION_14_32(v1, v3, v4, v5, v6, v7, v8, v9, v27);
  OUTLINED_FUNCTION_13_32(v10, v11, v12, v13, v14, v15, v16, v17, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68[0]);
  v18 = v0(v2);
  OUTLINED_FUNCTION_5_50(v18, v19, v20, v21, v22, v23, v24, v25, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v68[0]);
  return outlined destroy of SearchContext(v68);
}

uint64_t (*SearchContext.userIdentityClassificationValue.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 136);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchContext.onScreenText.getter()
{
  v1 = *(v0 + 144);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchContext.onScreenText : SearchContext(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  memcpy(v5, a2, sizeof(v5));

  outlined init with copy of SearchContext(v5, __dst);
  SearchContext.onScreenText.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return outlined destroy of SearchContext(__dst);
}

uint64_t (*SearchContext.onScreenText.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 144);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchContext.isPersonal.getter()
{
  v1 = *(v0 + 152);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for SearchContext.isEyesFree : SearchContext()
{
  OUTLINED_FUNCTION_10_40();
  v2 = *v1;
  v10 = OUTLINED_FUNCTION_14_32(v1, v3, v4, v5, v6, v7, v8, v9, v27);
  OUTLINED_FUNCTION_13_32(v10, v11, v12, v13, v14, v15, v16, v17, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68[0]);
  v18 = v0(v2);
  OUTLINED_FUNCTION_5_50(v18, v19, v20, v21, v22, v23, v24, v25, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v68[0]);
  return outlined destroy of SearchContext(v68);
}

uint64_t SearchContext.isPersonal.setter(char a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v4[0] = a1;
  EntityProperty.wrappedValue.setter();
  result = EntityProperty.wrappedValue.getter();
  if (a1 == 2)
  {
    outlined init with copy of SearchContext(__dst, v4);
    EntityProperty.wrappedValue.getter();
    v4[0] = !v4[0];
    EntityProperty.wrappedValue.setter();
    return outlined destroy of SearchContext(__dst);
  }

  return result;
}

void (*SearchContext.isPersonal.modify())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x150uLL);
  v3 = OUTLINED_FUNCTION_32_1(v2);
  memcpy(v3, v0, 0xA0uLL);
  *(v1 + 320) = *(v1 + 152);
  EntityProperty.wrappedValue.getter();
  *(v1 + 328) = *(v1 + 160);
  return SearchContext.isPersonal.modify;
}

void SearchContext.isPersonal.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1;
  *(v2 + 160) = *(*a1 + 328);
  v3 = v2 + 20;
  v4 = v1[40];
  EntityProperty.wrappedValue.setter();
  v5 = *v1;
  EntityProperty.wrappedValue.getter();
  if (*v3 == 2)
  {
    v6 = v1[40];
    outlined init with copy of SearchContext(v1, v3);
    EntityProperty.wrappedValue.getter();
    *(v1 + 160) = (*(v1 + 329) & 1) == 0;
    EntityProperty.wrappedValue.setter();
    outlined destroy of SearchContext(v1);
  }

  free(v1);
}

uint64_t SearchContext.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v3 = OUTLINED_FUNCTION_114(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v26 = &v19 - v8;
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = OUTLINED_FUNCTION_114(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbSgGMd, &_s10AppIntents14EntityPropertyCySbSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *a1 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySdGMd, &_s10AppIntents14EntityPropertyCySdGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v25 = EntityProperty<>.init(title:)();
  a1[1] = v25;
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v24 = EntityProperty<>.init(title:)();
  a1[2] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0C5MatchVGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0C5MatchVGGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type EntityMatch and conformance EntityMatch();
  v23 = EntityProperty<>.init(title:)();
  a1[3] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v22 = EntityProperty<>.init(title:)();
  a1[4] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v21 = EntityProperty<>.init(title:)();
  a1[5] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v20 = EntityProperty<>.init(title:)();
  a1[6] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiGMd, &_s10AppIntents14EntityPropertyCySiGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v19 = EntityProperty<>.init(title:)();
  a1[7] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
  LocalizedStringResource.init(stringLiteral:)();
  a1[8] = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  a1[9] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  a1[10] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  a1[11] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  a1[12] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  a1[13] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  LocalizedStringResource.init(stringLiteral:)();
  a1[14] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  a1[15] = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  a1[16] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  a1[17] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  a1[18] = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  a1[19] = EntityProperty<>.init(title:)();
  v30[0] = 0;
  EntityProperty.wrappedValue.setter();
  v30[0] = 0;
  EntityProperty.wrappedValue.setter();
  v30[0] = MEMORY[0x277D84F90];
  EntityProperty.wrappedValue.setter();
  type metadata accessor for IntentFile();
  v13 = v26;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  outlined init with copy of IntentFile?(v13, v27);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentFile?(v13);
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  EntityProperty.wrappedValue.setter();
  v30[0] = 0;
  v30[1] = 0;
  EntityProperty.wrappedValue.setter();
  v30[0] = 1;
  EntityProperty.wrappedValue.setter();
  LOBYTE(v30[0]) = 0;
  EntityProperty.wrappedValue.setter();
  memcpy(v30, a1, 0xA0uLL);
  OUTLINED_FUNCTION_8_45();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  if (v28 == 2)
  {
    outlined init with copy of SearchContext(v30, &v28);
    EntityProperty.wrappedValue.getter();
    LOBYTE(v28) = (v28 & 1) == 0;
    EntityProperty.wrappedValue.setter();
    outlined destroy of SearchContext(v30);
  }

  v27 = v30[18];
  OUTLINED_FUNCTION_8_45();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_8_45();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_8_45();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_8_45();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_8_45();
  EntityProperty.wrappedValue.setter();
  v28 = 0;
  v29 = 0;
  EntityProperty.wrappedValue.setter();
  v28 = MEMORY[0x277D84F90];
  EntityProperty.wrappedValue.setter();
  v28 = 0;
  v29 = 0;
  EntityProperty.wrappedValue.setter();
  v28 = 0;
  EntityProperty.wrappedValue.setter();
  v28 = 0;
  return EntityProperty.wrappedValue.setter();
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance SearchContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchContext and conformance SearchContext();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchContext()
{
  lazy protocol witness table accessor for type SearchContext and conformance SearchContext();

  return UUID.init()();
}

uint64_t static SearchContext.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_80();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchContext.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchContext and conformance SearchContext();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t SearchContext.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  v2 = OUTLINED_FUNCTION_114(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  v6 = OUTLINED_FUNCTION_114(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v12 = OUTLINED_FUNCTION_114(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v15 = *(v0 + 40);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v26);

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  LocalizedStringResource.init(stringInterpolation:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v9);
  type metadata accessor for DisplayRepresentation.Image();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchContext and conformance SearchContext();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static SearchContext.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_80();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchContext.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchContext.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_80();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchContext.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t SearchContext.inputOrigin.getter()
{
  v1 = *(v0 + 104);
  EntityProperty.wrappedValue.getter();
  if (v7)
  {
    return InputOrigin.init(rawValue:)();
  }

  type metadata accessor for InputOrigin();
  OUTLINED_FUNCTION_92();
  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t SearchContext.userIdentityClassification.getter()
{
  v1 = *(v0 + 136);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t OUTLINED_FUNCTION_0_80()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_5_50(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __dst)
{

  return memcpy(&__dst, v29, 0xA0uLL);
}

uint64_t OUTLINED_FUNCTION_11_45()
{

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_13_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return outlined init with copy of SearchContext(&a9, &a29);
}

void *OUTLINED_FUNCTION_14_32(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, a2, 0xA0uLL);
}

BOOL specialized Sequence<>.contains(_:)(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE500000000000000;
    v8 = 0x6D72616C61;
    switch(*v4)
    {
      case 1:
        v7 = 0xE400000000000000;
        v8 = 1802465122;
        break;
      case 2:
        v7 = 0xE800000000000000;
        goto LABEL_22;
      case 3:
        v7 = 0xE700000000000000;
        v8 = 0x746361746E6F63;
        break;
      case 4:
        v8 = 0x61737265766E6F63;
        v10 = 1852795252;
        goto LABEL_16;
      case 5:
        v7 = 0xED0000656C694673;
        goto LABEL_35;
      case 6:
        v7 = 0xEF7265646C6F4673;
LABEL_35:
        v8 = 0x746E656D75636F64;
        break;
      case 7:
        v7 = 0xE800000000000000;
        v8 = 0x6D726F6665657266;
        break;
      case 8:
        v7 = 0xE700000000000000;
        v8 = 0x6C616E72756F6ALL;
        break;
      case 9:
        v7 = 0xE700000000000000;
        v11 = 0x746F6E79656BLL;
        goto LABEL_46;
      case 0xA:
        v7 = 0xE400000000000000;
        v8 = 1818845549;
        break;
      case 0xB:
        v7 = 0xE600000000000000;
        v8 = 0x79726F6D656DLL;
        break;
      case 0xC:
        v7 = 0xE700000000000000;
        v11 = 0x67617373656DLL;
        goto LABEL_46;
      case 0xD:
        v7 = 0xE400000000000000;
        v8 = 1702129518;
        break;
      case 0xE:
        v8 = 0x646C6F4665746F6ELL;
        v7 = 0xEA00000000007265;
        break;
      case 0xF:
        v8 = 0x46737265626D756ELL;
        v7 = 0xEB00000000656C69;
        break;
      case 0x10:
        v8 = 0x6C69467365676170;
        v7 = 0xE900000000000065;
        break;
      case 0x11:
        v9 = 1852794992;
        goto LABEL_28;
      case 0x12:
        v13 = 1953458288;
        goto LABEL_41;
      case 0x13:
        v8 = 0x626C416F746F6870;
        v7 = 0xEA00000000006D75;
        break;
      case 0x14:
        v7 = 0xE800000000000000;
        goto LABEL_32;
      case 0x15:
        v7 = 0xEC0000007473694CLL;
LABEL_32:
        v8 = 0x7265646E696D6572;
        break;
      case 0x16:
        v7 = 0xE300000000000000;
        v8 = 6447476;
        break;
      case 0x17:
        v8 = 0x72656D6974;
        break;
      case 0x18:
        v13 = 1701079414;
        goto LABEL_41;
      case 0x19:
        OUTLINED_FUNCTION_124_1();
        v7 = v12 + 7;
        break;
      case 0x1A:
        OUTLINED_FUNCTION_124_1();
        v7 = v14 + 10;
        goto LABEL_50;
      case 0x1B:
        v7 = 0xE600000000000000;
        v8 = 0x74656C6C6177;
        break;
      case 0x1C:
        v7 = 0xE700000000000000;
        v11 = 0x746973626577;
LABEL_46:
        v8 = v11 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 0x1D:
        v7 = 0xE800000000000000;
        v8 = 0x616D61726F6E6170;
        break;
      case 0x1E:
        v8 = 0x68736E6565726373;
        v7 = 0xEA0000000000746FLL;
        break;
      case 0x1F:
        v7 = 0xE600000000000000;
        v8 = 0x6569666C6573;
        break;
      case 0x20:
        v13 = 1836018803;
LABEL_41:
        v8 = v13 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        break;
      case 0x21:
        v8 = 0x566C616974617073;
        v10 = 1868915817;
LABEL_16:
        v7 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 0x22:
        v7 = 0xED0000746E657645;
LABEL_22:
        v8 = 0x7261646E656C6163;
        break;
      case 0x23:
        v7 = 0xE400000000000000;
        v8 = 1802398060;
        break;
      case 0x24:
        v9 = 1769369453;
LABEL_28:
        v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
        break;
      case 0x25:
        v7 = 0xE600000000000000;
        v8 = 0x697261666173;
        break;
      case 0x26:
        v7 = 0xEA0000000000736FLL;
LABEL_50:
        v8 = 0x6D654D6563696F76;
        break;
      default:
        break;
    }

    v15 = 0xE500000000000000;
    v16 = 0x6D72616C61;
    switch(a1)
    {
      case 1:
        v15 = 0xE400000000000000;
        v16 = 1802465122;
        break;
      case 2:
        v15 = 0xE800000000000000;
        goto LABEL_69;
      case 3:
        v15 = 0xE700000000000000;
        v16 = 0x746361746E6F63;
        break;
      case 4:
        v16 = 0x61737265766E6F63;
        v18 = 1852795252;
        goto LABEL_63;
      case 5:
        v15 = 0xED0000656C694673;
        goto LABEL_82;
      case 6:
        v15 = 0xEF7265646C6F4673;
LABEL_82:
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
        v19 = 0x746F6E79656BLL;
        goto LABEL_93;
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
        v19 = 0x67617373656DLL;
        goto LABEL_93;
      case 13:
        v15 = 0xE400000000000000;
        v16 = 1702129518;
        break;
      case 14:
        v16 = 0x646C6F4665746F6ELL;
        v15 = 0xEA00000000007265;
        break;
      case 15:
        v16 = 0x46737265626D756ELL;
        v15 = 0xEB00000000656C69;
        break;
      case 16:
        v16 = 0x6C69467365676170;
        v15 = 0xE900000000000065;
        break;
      case 17:
        v17 = 1852794992;
        goto LABEL_75;
      case 18:
        v21 = 1953458288;
        goto LABEL_88;
      case 19:
        v16 = 0x626C416F746F6870;
        v15 = 0xEA00000000006D75;
        break;
      case 20:
        v15 = 0xE800000000000000;
        goto LABEL_79;
      case 21:
        v15 = 0xEC0000007473694CLL;
LABEL_79:
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
        v21 = 1701079414;
        goto LABEL_88;
      case 25:
        OUTLINED_FUNCTION_124_1();
        v15 = v20 + 7;
        break;
      case 26:
        OUTLINED_FUNCTION_124_1();
        v15 = v22 + 10;
        goto LABEL_97;
      case 27:
        v15 = 0xE600000000000000;
        v16 = 0x74656C6C6177;
        break;
      case 28:
        v15 = 0xE700000000000000;
        v19 = 0x746973626577;
LABEL_93:
        v16 = v19 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 29:
        v15 = 0xE800000000000000;
        v16 = 0x616D61726F6E6170;
        break;
      case 30:
        v16 = 0x68736E6565726373;
        v15 = 0xEA0000000000746FLL;
        break;
      case 31:
        v15 = 0xE600000000000000;
        v16 = 0x6569666C6573;
        break;
      case 32:
        v21 = 1836018803;
LABEL_88:
        v16 = v21 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        break;
      case 33:
        v16 = 0x566C616974617073;
        v18 = 1868915817;
LABEL_63:
        v15 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 34:
        v15 = 0xED0000746E657645;
LABEL_69:
        v16 = 0x7261646E656C6163;
        break;
      case 35:
        v15 = 0xE400000000000000;
        v16 = 1802398060;
        break;
      case 36:
        v17 = 1769369453;
LABEL_75:
        v16 = v17 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
        break;
      case 37:
        v15 = 0xE600000000000000;
        v16 = 0x697261666173;
        break;
      case 38:
        v15 = 0xEA0000000000736FLL;
LABEL_97:
        v16 = 0x6D654D6563696F76;
        break;
      default:
        break;
    }

    if (v8 == v16 && v7 == v15)
    {

      return v5 != 0;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v4;
  }

  while ((v24 & 1) == 0);
  return v5 != 0;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v13 = *v3;
    v6 = PreferredType.rawValue.getter();
    v8 = v7;
    if (v6 == PreferredType.rawValue.getter() && v8 == v9)
    {

      return v4 != 0;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v3;
  }

  while ((v11 & 1) == 0);
  return v4 != 0;
}

{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t Array<A>.rankLocalResults(query:)(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v79 = type metadata accessor for SearchResult(0);
  v3 = OUTLINED_FUNCTION_14(v79);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_109();
  v76 = v8 - v9;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v10);
  v12 = &v76 - v11;
  MEMORY[0x28223BE20](v13);
  v77 = &v76 - v14;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v15);
  v17 = &v76 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_109();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v76 - v24;
  v26 = *(type metadata accessor for UserQuery() + 28);
  outlined init with copy of StructuredQueryEntity?(a1 + v26, v25);
  Entity = type metadata accessor for StructuredQueryEntity(0);
  if (__swift_getEnumTagSinglePayload(v25, 1, Entity) == 1)
  {
    v28 = v25;
LABEL_3:
    outlined destroy of StructuredQueryEntity?(v28);
    goto LABEL_10;
  }

  v29 = *&v25[*(Entity + 24)];
  EntityProperty.wrappedValue.getter();
  v30 = v81;
  if (!v81)
  {
    OUTLINED_FUNCTION_1_74();
    v34 = v25;
LABEL_9:
    _s10OmniSearch0B6ResultVWOhTm_9(v34, v33);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_74();
  _s10OmniSearch0B6ResultVWOhTm_9(v25, v31);
  v32 = specialized Sequence<>.contains(_:)(3, v30);

  if (v32)
  {
    goto LABEL_10;
  }

  outlined init with copy of StructuredQueryEntity?(a1 + v26, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, Entity) == 1)
  {
    v28 = v22;
    goto LABEL_3;
  }

  v72 = *(v22 + *(Entity + 28));
  EntityProperty.wrappedValue.getter();
  v73 = v81;
  if (!v81)
  {
    OUTLINED_FUNCTION_1_74();
    v34 = v22;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_74();
  _s10OmniSearch0B6ResultVWOhTm_9(v22, v74);
  v75 = specialized Sequence<>.contains(_:)(2, v73);

  if (!v75)
  {
    v36 = v80;

    return v36;
  }

LABEL_10:
  v35 = 0;
  v36 = v80;
  v37 = *(v80 + 16);
  v78 = MEMORY[0x277D84F90];
  while (v37 != v35)
  {
    OUTLINED_FUNCTION_8_46();
    v40 = v39 & ~v38;
    v41 = *(v5 + 72);
    outlined init with copy of SearchResult(v36 + v40 + v41 * v35, v17);
    switch(v17[*(v79 + 32)])
    {
      case 1:
        OUTLINED_FUNCTION_2_63();
        goto LABEL_15;
      case 2:
        OUTLINED_FUNCTION_3_58();
        goto LABEL_15;
      case 3:

        goto LABEL_18;
      default:
LABEL_15:
        v42 = OUTLINED_FUNCTION_4_53();

        if (v42)
        {
LABEL_18:
          outlined init with take of SearchResult(v17, v77);
          v44 = v78;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v81 = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v46 = *(v44 + 16);
            OUTLINED_FUNCTION_11_46();
            v44 = v81;
          }

          v48 = *(v44 + 16);
          v47 = *(v44 + 24);
          v49 = v48 + 1;
          if (v48 >= v47 >> 1)
          {
            OUTLINED_FUNCTION_6_41(v47);
            v78 = v50;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v49 = v78;
            v44 = v81;
          }

          ++v35;
          *(v44 + 16) = v49;
          v78 = v44;
          outlined init with take of SearchResult(v77, v44 + v40 + v48 * v41);
          v36 = v80;
        }

        else
        {
          OUTLINED_FUNCTION_0_81();
          _s10OmniSearch0B6ResultVWOhTm_9(v17, v43);
          ++v35;
          v36 = v80;
        }

        break;
    }
  }

  if (*(v78 + 16))
  {
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logging.search);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_25D85C000, v52, v53, "Array[SearchResult]#rankLocalResults boosting UCG results", v54, 2u);
      MEMORY[0x25F8A1050](v54, -1, -1);
    }

    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    while (v37 != v55)
    {
      OUTLINED_FUNCTION_8_46();
      v59 = v58 & ~v57;
      v60 = *(v5 + 72);
      outlined init with copy of SearchResult(v61 + v59 + v60 * v55, v12);
      switch(v12[*(v79 + 32)])
      {
        case 1:
          OUTLINED_FUNCTION_2_63();
          goto LABEL_33;
        case 2:
          OUTLINED_FUNCTION_3_58();
          goto LABEL_33;
        case 3:

          goto LABEL_40;
        default:
LABEL_33:
          v62 = OUTLINED_FUNCTION_4_53();

          if (v62)
          {
LABEL_40:
            OUTLINED_FUNCTION_0_81();
            _s10OmniSearch0B6ResultVWOhTm_9(v12, v68);
            ++v55;
          }

          else
          {
            outlined init with take of SearchResult(v12, v76);
            v63 = swift_isUniquelyReferenced_nonNull_native();
            v81 = v56;
            if ((v63 & 1) == 0)
            {
              v64 = *(v56 + 16);
              OUTLINED_FUNCTION_11_46();
              v56 = v81;
            }

            v66 = *(v56 + 16);
            v65 = *(v56 + 24);
            v67 = v66 + 1;
            if (v66 >= v65 >> 1)
            {
              OUTLINED_FUNCTION_6_41(v65);
              v70 = v69;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v67 = v70;
              v56 = v81;
            }

            ++v55;
            *(v56 + 16) = v67;
            outlined init with take of SearchResult(v76, v56 + v59 + v66 * v60);
          }

          break;
      }
    }

    v81 = v78;
    specialized Array.append<A>(contentsOf:)(v56);
    return v81;
  }

  else
  {
  }

  return v36;
}

uint64_t Array<A>.dedupeLocalResults(query:)(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v79 = type metadata accessor for SearchResult(0);
  v4 = OUTLINED_FUNCTION_14(v79);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_109();
  v75 = v9 - v10;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v11);
  v76 = &v72 - v12;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  MEMORY[0x28223BE20](v16);
  v78 = &v72 - v17;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v80 = *(a2 + 16);
  v74 = 0;
  v77 = MEMORY[0x277D84F90];
  while (v80 != v3)
  {
    OUTLINED_FUNCTION_8_46();
    v23 = v22 & ~v21;
    v24 = *(v6 + 72);
    outlined init with copy of SearchResult(a2 + v23 + v24 * v3, v20);
    switch(v20[*(v79 + 32)])
    {
      case 1:
        OUTLINED_FUNCTION_2_63();
        goto LABEL_6;
      case 2:
        OUTLINED_FUNCTION_3_58();
        goto LABEL_6;
      case 3:

        goto LABEL_9;
      default:
LABEL_6:
        v25 = OUTLINED_FUNCTION_4_53();

        if (v25)
        {
LABEL_9:
          outlined init with take of SearchResult(v20, v78);
          v27 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = v27;
          v81[0] = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v30 = *(v27 + 16);
            OUTLINED_FUNCTION_12_40();
            v29 = v81[0];
          }

          v31 = *(v29 + 16);
          v32 = v31 + 1;
          if (v31 >= *(v29 + 24) >> 1)
          {
            v77 = v31 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v32 = v77;
            v29 = v81[0];
          }

          ++v3;
          *(v29 + 16) = v32;
          v77 = v29;
          outlined init with take of SearchResult(v78, v29 + v23 + v31 * v24);
        }

        else
        {
          OUTLINED_FUNCTION_0_81();
          _s10OmniSearch0B6ResultVWOhTm_9(v20, v26);
          ++v3;
        }

        break;
    }
  }

  v33 = *(v77 + 16);
  if (v33)
  {
    v73 = a2;
    v86 = MEMORY[0x277D84F90];
    v34 = v77;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
    v35 = v86;
    OUTLINED_FUNCTION_8_46();
    v38 = v34 + (v37 & ~v36);
    v78 = *(v6 + 72);
    do
    {
      outlined init with copy of SearchResult(v38, v15);
      v84 = 0;
      v85 = 0xE000000000000000;
      v39 = *(v79 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v40 = CodableNSSecureCoding.wrappedValue.getter();
      v41 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v40);
      if (v42)
      {
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0xE000000000000000;
      }

      MEMORY[0x25F89F6C0](v41, v43);

      MEMORY[0x25F89F6C0](45, 0xE100000000000000);
      SearchResultItem.associatedValue.getter(v81);
      v44 = v82;
      v45 = v83;
      __swift_project_boxed_opaque_existential_1(v81, v82);
      v46 = (*(v45 + 32))(v44, v45);
      v48 = v47;
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x25F89F6C0](v46, v48);

      v50 = v84;
      v49 = v85;
      OUTLINED_FUNCTION_0_81();
      _s10OmniSearch0B6ResultVWOhTm_9(v15, v51);
      v86 = v35;
      v53 = *(v35 + 16);
      v52 = *(v35 + 24);
      if (v53 >= v52 >> 1)
      {
        v55 = OUTLINED_FUNCTION_6_41(v52);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55, v53 + 1, 1);
        v35 = v86;
      }

      *(v35 + 16) = v53 + 1;
      v54 = v35 + 16 * v53;
      *(v54 + 32) = v50;
      *(v54 + 40) = v49;
      v38 += v78;
      --v33;
    }

    while (v33);

    a2 = v73;
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
  }

  v56 = v74;
  v57 = v76;
  if (*(v35 + 16))
  {
    v58 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v35);
    v59 = 0;
    v60 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v80 == v59)
      {

        return v60;
      }

      OUTLINED_FUNCTION_8_46();
      v63 = v62 & ~v61;
      v64 = *(v6 + 72);
      outlined init with copy of SearchResult(a2 + v63 + v64 * v59, v57);
      v65 = closure #3 in Array<A>.dedupeLocalResults(query:)(v57, v58);
      if (v56)
      {
        break;
      }

      if (v65)
      {
        outlined init with take of SearchResult(v57, v75);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v81[0] = v60;
        if ((v67 & 1) == 0)
        {
          v68 = *(v60 + 16);
          OUTLINED_FUNCTION_12_40();
          v60 = v81[0];
        }

        v69 = *(v60 + 16);
        if (v69 >= *(v60 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v60 = v81[0];
        }

        ++v59;
        *(v60 + 16) = v69 + 1;
        outlined init with take of SearchResult(v75, v60 + v63 + v69 * v64);
        v57 = v76;
      }

      else
      {
        OUTLINED_FUNCTION_0_81();
        _s10OmniSearch0B6ResultVWOhTm_9(v57, v66);
        ++v59;
      }
    }

    OUTLINED_FUNCTION_0_81();
    _s10OmniSearch0B6ResultVWOhTm_9(v57, v71);

    __break(1u);
  }

  else
  {

    return a2;
  }

  return result;
}

uint64_t closure #3 in Array<A>.dedupeLocalResults(query:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResult(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(*(a1 + *(v8 + 32)))
  {
    case 3:

      return 1;
    default:
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        return 1;
      }

      v10 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v11 = CodableNSSecureCoding.wrappedValue.getter();
      v12 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v11);
      if (v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      v15 = 0xE000000000000000;
      if (v13)
      {
        v15 = v13;
      }

      v33 = v14;
      v34 = v15;
      MEMORY[0x25F89F6C0](45, 0xE100000000000000);
      SearchResultItem.associatedValue.getter(v30);
      v16 = v31;
      v17 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v18 = (*(v17 + 32))(v16, v17);
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x25F89F6C0](v18, v20);

      v21 = specialized Set.contains(_:)(v33, v34, a2);

      if (!v21)
      {
        return 1;
      }

      if (one-time initialization token for search != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logging.search);
      outlined init with copy of SearchResult(a1, v7);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v30[0] = v26;
        *v25 = 136315138;
        SearchResult.debugDescription.getter();
        _s10OmniSearch0B6ResultVWOhTm_9(v7, type metadata accessor for SearchResult);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v25 + 4) = v27;
        _os_log_impl(&dword_25D85C000, v23, v24, "Array[SearchResult]#dedupeLocalResults deduping results - removing: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x25F8A1050](v26, -1, -1);
        MEMORY[0x25F8A1050](v25, -1, -1);
      }

      else
      {

        _s10OmniSearch0B6ResultVWOhTm_9(v7, type metadata accessor for SearchResult);
      }

      return 0;
  }
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_9(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_53()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_11_46()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void OUTLINED_FUNCTION_12_40()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void *static SeparatorsFactory.make(with:)@<X0>(void *a1@<X8>)
{
  v180 = a1;
  v1 = type metadata accessor for Locale.LanguageCode();
  v2 = OUTLINED_FUNCTION_14(v1);
  v181 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v176 = v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_4();
  v165 = v12;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_4();
  v168 = v14;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_4();
  v179 = v16;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_4();
  v177 = v18;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_4();
  v175 = v20;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v21);
  v23 = v156 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_4();
  v164 = v29;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_4();
  v167 = v32;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_4();
  v170 = v35;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_4();
  v163 = v37;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_4();
  v173 = v39;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_4();
  v166 = v41;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_4();
  v171 = v43;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  v169 = v45;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_4();
  v174 = v47;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_7_4();
  v172 = v49;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7_4();
  v178 = v51;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v52);
  v54 = v156 - v53;
  MEMORY[0x28223BE20](v55);
  v57 = v156 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = v156 - v59;
  v61 = type metadata accessor for Locale.Language();
  v62 = OUTLINED_FUNCTION_14(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  v68 = (v156 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  Locale.language.getter();
  v69 = v68;
  Locale.Language.languageCode.getter();
  v71 = *(v64 + 8);
  v70 = (v64 + 8);
  v71(v68, v61);
  MEMORY[0x25F899720](28261, 0xE200000000000000);
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v1);
  v182 = v7;
  v72 = *(v7 + 48);
  outlined init with copy of Locale.LanguageCode?(v57, v23);
  outlined init with copy of Locale.LanguageCode?(v60, v23 + v72);
  v183 = v1;
  if (__swift_getEnumTagSinglePayload(v23, 1, v1) == 1)
  {
    outlined destroy of (offset: Int, element: SearchResult)(v57, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_2_64(v23 + v72);
    if (!v78)
    {
      goto LABEL_8;
    }

    outlined destroy of (offset: Int, element: SearchResult)(v23, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  }

  else
  {
    outlined init with copy of Locale.LanguageCode?(v23, v54);
    OUTLINED_FUNCTION_2_64(v23 + v72);
    if (v78)
    {
      outlined destroy of (offset: Int, element: SearchResult)(v57, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
      v73 = OUTLINED_FUNCTION_31_26();
      v74(v73);
LABEL_8:
      outlined destroy of (offset: Int, element: SearchResult)(v23, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
      goto LABEL_9;
    }

    v82 = v181;
    v83 = v176;
    v84 = v183;
    (*(v181 + 32))(v176, v23 + v72, v183);
    lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
    v85 = dispatch thunk of static Equatable.== infix(_:_:)();
    v86 = *(v82 + 8);
    v70 = (v82 + 8);
    v72 = v86;
    v86(v83, v84);
    v69 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
    OUTLINED_FUNCTION_48_16(v57);
    v86(v54, v84);
    OUTLINED_FUNCTION_48_16(v23);
    if ((v85 & 1) == 0)
    {
LABEL_9:
      v75 = v178;
      MEMORY[0x25F899720](29808, 0xE200000000000000);
      OUTLINED_FUNCTION_1_75(v75);
      v54 = v175;
      outlined init with copy of Locale.LanguageCode?(v75, v175);
      outlined init with copy of Locale.LanguageCode?(v60, v54 + v72);
      OUTLINED_FUNCTION_38_5(v54);
      if (v78)
      {
        outlined destroy of (offset: Int, element: SearchResult)(v75, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
        OUTLINED_FUNCTION_2_64(v54 + v72);
        v76 = v179;
        v77 = v177;
        if (v78)
        {
          outlined destroy of (offset: Int, element: SearchResult)(v54, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_36:
          v182 = 544040224;
          OUTLINED_FUNCTION_39_24();
          outlined destroy of (offset: Int, element: SearchResult)(v60, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
          OUTLINED_FUNCTION_38_26();
          OUTLINED_FUNCTION_42_24();
          v88 = 25965;
          OUTLINED_FUNCTION_40_24();
          v57 = 544040224;
          v89 = 0xE400000000000000;
          v90 = &type metadata for SeparatorsPortuguese;
          goto LABEL_102;
        }
      }

      else
      {
        v69 = v172;
        outlined init with copy of Locale.LanguageCode?(v54, v172);
        OUTLINED_FUNCTION_2_64(v54 + v72);
        v76 = v179;
        if (!v78)
        {
          v95 = v181;
          v23 = v176;
          v96 = v69;
          v97 = v183;
          (*(v181 + 32))(v176, v54 + v72, v183);
          lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
          v72 = dispatch thunk of static Equatable.== infix(_:_:)();
          v98 = v60;
          v99 = v97;
          v70 = *(v95 + 8);
          (v70)(v23, v97);
          v69 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
          OUTLINED_FUNCTION_48_16(v178);
          v100 = v96;
          v76 = v179;
          v101 = v99;
          v60 = v98;
          (v70)(v100, v101);
          OUTLINED_FUNCTION_48_16(v54);
          v77 = v177;
          if (v72)
          {
            goto LABEL_36;
          }

LABEL_18:
          v81 = v174;
          MEMORY[0x25F899720](29286, 0xE200000000000000);
          OUTLINED_FUNCTION_1_75(v81);
          outlined init with copy of Locale.LanguageCode?(v81, v77);
          outlined init with copy of Locale.LanguageCode?(v60, v77 + v72);
          OUTLINED_FUNCTION_38_5(v77);
          if (v78)
          {
            outlined destroy of (offset: Int, element: SearchResult)(v81, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
            OUTLINED_FUNCTION_2_64(v77 + v72);
            if (v78)
            {
              outlined destroy of (offset: Int, element: SearchResult)(v77, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_47:
              OUTLINED_FUNCTION_39_24();
              outlined destroy of (offset: Int, element: SearchResult)(v60, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
              v54 = 0xE300000000000000;
              v89 = 0xA400000000000000;
              v181 = 0x207372657620;
              v60 = 0xE600000000000000;
              v182 = 0x20736E616420;
              v178 = 0xE400000000000000;
              v179 = 544498976;
              v70 = 0xE100000000000000;
              v87 = &protocol witness table for SeparatorsFrench;
              v88 = 6909805;
              v57 = 547406624;
              v23 = 32;
              v69 = 0xE400000000000000;
              v77 = 0xE600000000000000;
              v90 = &type metadata for SeparatorsFrench;
              goto LABEL_102;
            }
          }

          else
          {
            v54 = v169;
            outlined init with copy of Locale.LanguageCode?(v77, v169);
            OUTLINED_FUNCTION_2_64(v77 + v72);
            if (!v91)
            {
              v107 = OUTLINED_FUNCTION_33_29();
              v72 = v81;
              v70 = v183;
              v108(v107);
              lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
              LODWORD(v178) = OUTLINED_FUNCTION_44_25();
              v109 = OUTLINED_FUNCTION_3_59();
              v81(v109);
              v69 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
              v110 = OUTLINED_FUNCTION_94();
              outlined destroy of (offset: Int, element: SearchResult)(v110, v111, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
              (v81)(v54, v70);
              OUTLINED_FUNCTION_35_27(v177);
              if (v178)
              {
                goto LABEL_47;
              }

LABEL_30:
              v94 = v171;
              MEMORY[0x25F899720](29801, 0xE200000000000000);
              OUTLINED_FUNCTION_1_75(v94);
              outlined init with copy of Locale.LanguageCode?(v94, v76);
              OUTLINED_FUNCTION_49_22();
              OUTLINED_FUNCTION_38_5(v76);
              if (v78)
              {
                outlined destroy of (offset: Int, element: SearchResult)(v94, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                OUTLINED_FUNCTION_2_64(v76 + v72);
                v77 = v173;
                if (v78)
                {
                  outlined destroy of (offset: Int, element: SearchResult)(v76, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_58:
                  OUTLINED_FUNCTION_41_21();
                  outlined destroy of (offset: Int, element: SearchResult)(v60, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                  OUTLINED_FUNCTION_38_26();
                  v183 = 543253536;
                  OUTLINED_FUNCTION_42_24();
                  v88 = 26989;
                  OUTLINED_FUNCTION_40_24();
                  v57 = 2122016;
                  v89 = 0xE300000000000000;
                  v90 = &type metadata for SeparatorsItalian;
                  goto LABEL_102;
                }
              }

              else
              {
                v54 = v166;
                outlined init with copy of Locale.LanguageCode?(v76, v166);
                OUTLINED_FUNCTION_2_64(v76 + v72);
                if (!v102)
                {
                  v116 = OUTLINED_FUNCTION_4_54();
                  v70 = v183;
                  v117(v116);
                  lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
                  LODWORD(v178) = OUTLINED_FUNCTION_44_25();
                  v72 = v94;
                  v118 = OUTLINED_FUNCTION_3_59();
                  v81(v118);
                  v69 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
                  v119 = OUTLINED_FUNCTION_94();
                  outlined destroy of (offset: Int, element: SearchResult)(v119, v120, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                  (v81)(v54, v70);
                  OUTLINED_FUNCTION_35_27(v76);
                  v77 = v173;
                  if (v178)
                  {
                    goto LABEL_58;
                  }

LABEL_41:
                  MEMORY[0x25F899720](25956, 0xE200000000000000);
                  OUTLINED_FUNCTION_1_75(v77);
                  v105 = v168;
                  outlined init with copy of Locale.LanguageCode?(v77, v168);
                  OUTLINED_FUNCTION_49_22();
                  OUTLINED_FUNCTION_38_5(v105);
                  if (v78)
                  {
                    outlined destroy of (offset: Int, element: SearchResult)(v77, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                    OUTLINED_FUNCTION_2_64(v105 + v72);
                    v106 = v170;
                    if (v78)
                    {
                      outlined destroy of (offset: Int, element: SearchResult)(v105, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_69:
                      OUTLINED_FUNCTION_41_21();
                      outlined destroy of (offset: Int, element: SearchResult)(v60, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                      v57 = 544039200;
                      v54 = 0xE300000000000000;
                      v183 = 0x206E6F7620;
                      v60 = 0xE400000000000000;
                      v178 = 0xE500000000000000;
                      v179 = 0x20646E7520;
                      v70 = 0xE100000000000000;
                      v87 = &protocol witness table for SeparatorsGerman;
                      v88 = 7498093;
                      v181 = 544569888;
                      v23 = 32;
                      v69 = 0xE500000000000000;
                      v77 = 0xE400000000000000;
                      v89 = 0xE400000000000000;
                      v90 = &type metadata for SeparatorsGerman;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v69 = v163;
                    outlined init with copy of Locale.LanguageCode?(v105, v163);
                    OUTLINED_FUNCTION_2_64(v105 + v72);
                    if (!v112)
                    {
                      OUTLINED_FUNCTION_4_54();
                      OUTLINED_FUNCTION_29_21();
                      v126();
                      lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
                      LODWORD(v179) = OUTLINED_FUNCTION_15_38();
                      v127 = OUTLINED_FUNCTION_3_59();
                      v81(v127);
                      v69 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
                      OUTLINED_FUNCTION_35_27(v173);
                      v128 = OUTLINED_FUNCTION_156();
                      v81(v128);
                      OUTLINED_FUNCTION_35_27(v105);
                      v106 = v170;
                      if (v179)
                      {
                        goto LABEL_69;
                      }

LABEL_52:
                      MEMORY[0x25F899720](29541, 0xE200000000000000);
                      OUTLINED_FUNCTION_1_75(v106);
                      v115 = v165;
                      outlined init with copy of Locale.LanguageCode?(v106, v165);
                      OUTLINED_FUNCTION_49_22();
                      OUTLINED_FUNCTION_38_5(v115);
                      if (v78)
                      {
                        outlined destroy of (offset: Int, element: SearchResult)(v106, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                        OUTLINED_FUNCTION_2_64(v115 + v72);
                        v77 = v167;
                        if (v78)
                        {
                          outlined destroy of (offset: Int, element: SearchResult)(v115, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_80:
                          OUTLINED_FUNCTION_39_24();
                          OUTLINED_FUNCTION_38_26();
                          outlined destroy of (offset: Int, element: SearchResult)(v60, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                          v57 = 544105760;
                          v54 = 0xE200000000000000;
                          v60 = 0xE400000000000000;
                          v70 = 0xE100000000000000;
                          v88 = 28537;
                          v178 = 0xE300000000000000;
                          v179 = 2128160;
                          OUTLINED_FUNCTION_40_24();
                          v182 = 544105760;
                          v89 = 0xE400000000000000;
                          v90 = &type metadata for SeparatorsSpanish;
                          goto LABEL_102;
                        }
                      }

                      else
                      {
                        v69 = v161;
                        outlined init with copy of Locale.LanguageCode?(v115, v161);
                        OUTLINED_FUNCTION_2_64(v115 + v72);
                        if (!v121)
                        {
                          OUTLINED_FUNCTION_4_54();
                          OUTLINED_FUNCTION_29_21();
                          v133();
                          lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
                          v54 = OUTLINED_FUNCTION_15_38();
                          v134 = OUTLINED_FUNCTION_3_59();
                          v81(v134);
                          v69 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
                          OUTLINED_FUNCTION_35_27(v170);
                          v135 = OUTLINED_FUNCTION_156();
                          v81(v135);
                          OUTLINED_FUNCTION_35_27(v115);
                          v77 = v167;
                          if (v54)
                          {
                            goto LABEL_80;
                          }

LABEL_63:
                          MEMORY[0x25F899720](24938, 0xE200000000000000);
                          OUTLINED_FUNCTION_1_75(v77);
                          v124 = v162;
                          outlined init with copy of Locale.LanguageCode?(v77, v162);
                          OUTLINED_FUNCTION_49_22();
                          OUTLINED_FUNCTION_38_5(v124);
                          if (v78)
                          {
                            outlined destroy of (offset: Int, element: SearchResult)(v77, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                            OUTLINED_FUNCTION_2_64(v124 + v72);
                            v125 = v164;
                            if (v78)
                            {
                              outlined destroy of (offset: Int, element: SearchResult)(v124, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_91:
                              outlined destroy of (offset: Int, element: SearchResult)(v60, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                              v23 = 0;
                              v57 = 0;
                              v69 = 0xA600000000000000;
                              v182 = 0;
                              v183 = 0x8982E38B81E3;
                              v70 = 0xE000000000000000;
                              v87 = &protocol witness table for SeparatorsJapanese;
                              v88 = 8497127;
                              v181 = 12091875;
                              v178 = 0xA300000000000000;
                              v179 = 11043299;
                              v60 = 0xE000000000000000;
                              v77 = 0xA300000000000000;
                              v89 = 0xE000000000000000;
                              v54 = 0xA300000000000000;
                              v90 = &type metadata for SeparatorsJapanese;
                              goto LABEL_102;
                            }
                          }

                          else
                          {
                            v69 = v158;
                            outlined init with copy of Locale.LanguageCode?(v124, v158);
                            OUTLINED_FUNCTION_2_64(v124 + v72);
                            if (!v129)
                            {
                              OUTLINED_FUNCTION_4_54();
                              OUTLINED_FUNCTION_29_21();
                              v140();
                              lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
                              v54 = OUTLINED_FUNCTION_15_38();
                              v141 = OUTLINED_FUNCTION_3_59();
                              v81(v141);
                              v69 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
                              OUTLINED_FUNCTION_35_27(v167);
                              v142 = OUTLINED_FUNCTION_156();
                              v81(v142);
                              OUTLINED_FUNCTION_35_27(v124);
                              v125 = v164;
                              if (v54)
                              {
                                goto LABEL_91;
                              }

LABEL_74:
                              MEMORY[0x25F899720](28523, 0xE200000000000000);
                              OUTLINED_FUNCTION_1_75(v125);
                              v132 = v159;
                              outlined init with copy of Locale.LanguageCode?(v125, v159);
                              outlined init with copy of Locale.LanguageCode?(v60, v132 + v72);
                              OUTLINED_FUNCTION_38_5(v132);
                              if (v78)
                              {
                                outlined destroy of (offset: Int, element: SearchResult)(v125, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                                OUTLINED_FUNCTION_2_64(v132 + v72);
                                v57 = v160;
                                if (v78)
                                {
                                  outlined destroy of (offset: Int, element: SearchResult)(v132, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_98:
                                  outlined destroy of (offset: Int, element: SearchResult)(v60, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                                  v23 = 0;
                                  v179 = 0;
                                  v88 = 0x989DEC9882EBLL;
                                  v89 = 0xA300000000000000;
                                  v181 = 0x80A7EC8CB9EALL;
                                  v183 = 0xB084ED80B6EBLL;
                                  v60 = 0xA600000000000000;
                                  v182 = 0x9097EC8895ECLL;
                                  v70 = 0xE000000000000000;
                                  v87 = &protocol witness table for SeparatorsKorean;
                                  v57 = 9476076;
                                  v178 = 0xE000000000000000;
                                  v69 = 0xA600000000000000;
                                  v77 = 0xA600000000000000;
                                  v54 = 0xA600000000000000;
                                  v90 = &type metadata for SeparatorsKorean;
                                  goto LABEL_102;
                                }
                              }

                              else
                              {
                                v69 = v156[0];
                                outlined init with copy of Locale.LanguageCode?(v132, v156[0]);
                                OUTLINED_FUNCTION_2_64(v132 + v72);
                                v57 = v160;
                                if (!v136)
                                {
                                  OUTLINED_FUNCTION_33_29();
                                  v54 = v132;
                                  OUTLINED_FUNCTION_29_21();
                                  v144();
                                  lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
                                  LODWORD(v179) = OUTLINED_FUNCTION_15_38();
                                  v145 = OUTLINED_FUNCTION_3_59();
                                  v81(v145);
                                  v69 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
                                  OUTLINED_FUNCTION_35_27(v164);
                                  v146 = OUTLINED_FUNCTION_156();
                                  v81(v146);
                                  OUTLINED_FUNCTION_35_27(v132);
                                  if (v179)
                                  {
                                    goto LABEL_98;
                                  }

LABEL_85:
                                  v139 = v156[1];
                                  MEMORY[0x25F899720](26746, 0xE200000000000000);
                                  OUTLINED_FUNCTION_1_75(v139);
                                  v70 = v157;
                                  outlined init with copy of Locale.LanguageCode?(v139, v157);
                                  outlined init with take of Locale.LanguageCode?(v60, &v70[v72]);
                                  OUTLINED_FUNCTION_38_5(v70);
                                  if (v78)
                                  {
                                    outlined destroy of (offset: Int, element: SearchResult)(v139, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                                    OUTLINED_FUNCTION_2_64(&v70[v72]);
                                    if (v78)
                                    {
                                      OUTLINED_FUNCTION_27_25();
                                      outlined destroy of (offset: Int, element: SearchResult)(v70, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                                      v23 = 0;
                                      v57 = 0;
LABEL_101:
                                      v178 = 0xA300000000000000;
                                      v70 = 0xE000000000000000;
                                      v87 = &protocol witness table for SeparatorsChinese;
                                      v88 = 9537766;
                                      v60 = 0xA300000000000000;
                                      v69 = 0xA300000000000000;
                                      v77 = 0xA300000000000000;
                                      v89 = 0xE000000000000000;
                                      v54 = 0xA300000000000000;
                                      v90 = &type metadata for SeparatorsChinese;
                                      goto LABEL_102;
                                    }
                                  }

                                  else
                                  {
                                    outlined init with copy of Locale.LanguageCode?(v70, v57);
                                    OUTLINED_FUNCTION_2_64(&v70[v72]);
                                    if (!v143)
                                    {
                                      v147 = v181;
                                      v148 = v176;
                                      v149 = v183;
                                      (*(v181 + 32))(v176, &v70[v72], v183);
                                      lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
                                      v150 = dispatch thunk of static Equatable.== infix(_:_:)();
                                      v151 = *(v147 + 8);
                                      v60 = (v147 + 8);
                                      v151(v148, v149);
                                      v69 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
                                      OUTLINED_FUNCTION_35_27(v139);
                                      v151(v57, v149);
                                      OUTLINED_FUNCTION_35_27(v70);
                                      if (v150)
                                      {
                                        v23 = 0;
                                        v57 = 0;
                                        OUTLINED_FUNCTION_27_25();
                                        goto LABEL_101;
                                      }

                                      goto LABEL_96;
                                    }

                                    outlined destroy of (offset: Int, element: SearchResult)(v139, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                                    (*(v181 + 8))(v57, v183);
                                  }

                                  outlined destroy of (offset: Int, element: SearchResult)(v70, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
LABEL_96:
                                  OUTLINED_FUNCTION_26_27();
                                  OUTLINED_FUNCTION_37_20();
                                  v87 = &protocol witness table for SeparatorsEnglish;
                                  v88 = 25965;
                                  v23 = 32;
                                  v182 = 544106784;
                                  goto LABEL_25;
                                }

                                outlined destroy of (offset: Int, element: SearchResult)(v164, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                                v137 = OUTLINED_FUNCTION_10_41();
                                v138(v137);
                              }

                              outlined destroy of (offset: Int, element: SearchResult)(v132, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
                              goto LABEL_85;
                            }

                            outlined destroy of (offset: Int, element: SearchResult)(v167, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                            v130 = OUTLINED_FUNCTION_10_41();
                            v131(v130);
                            v125 = v164;
                          }

                          outlined destroy of (offset: Int, element: SearchResult)(v124, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
                          goto LABEL_74;
                        }

                        outlined destroy of (offset: Int, element: SearchResult)(v170, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                        v122 = OUTLINED_FUNCTION_10_41();
                        v123(v122);
                        v77 = v167;
                      }

                      outlined destroy of (offset: Int, element: SearchResult)(v115, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
                      goto LABEL_63;
                    }

                    outlined destroy of (offset: Int, element: SearchResult)(v173, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                    v113 = OUTLINED_FUNCTION_10_41();
                    v114(v113);
                    v106 = v170;
                  }

                  outlined destroy of (offset: Int, element: SearchResult)(v105, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
                  goto LABEL_52;
                }

                outlined destroy of (offset: Int, element: SearchResult)(v94, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                v103 = OUTLINED_FUNCTION_31_26();
                v104(v103);
                v77 = v173;
              }

              outlined destroy of (offset: Int, element: SearchResult)(v76, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
              goto LABEL_41;
            }

            outlined destroy of (offset: Int, element: SearchResult)(v81, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
            v92 = OUTLINED_FUNCTION_31_26();
            v93(v92);
          }

          outlined destroy of (offset: Int, element: SearchResult)(v77, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
          goto LABEL_30;
        }

        outlined destroy of (offset: Int, element: SearchResult)(v75, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
        v79 = OUTLINED_FUNCTION_10_41();
        v80(v79);
        v77 = v177;
      }

      outlined destroy of (offset: Int, element: SearchResult)(v54, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
      goto LABEL_18;
    }
  }

  OUTLINED_FUNCTION_26_27();
  OUTLINED_FUNCTION_41_21();
  outlined destroy of (offset: Int, element: SearchResult)(v60, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_37_20();
  v87 = &protocol witness table for SeparatorsEnglish;
  v88 = 25965;
  v23 = 32;
LABEL_25:
  v77 = 0xE400000000000000;
  v89 = 0xE400000000000000;
  v90 = &type metadata for SeparatorsEnglish;
LABEL_102:
  v152 = v180;
  v180[3] = v90;
  v152[4] = v87;
  result = swift_allocObject();
  *v152 = result;
  result[2] = v23;
  result[3] = v70;
  v154 = v178;
  result[4] = v179;
  result[5] = v154;
  v155 = v183;
  result[6] = v182;
  result[7] = v60;
  result[8] = v155;
  result[9] = v69;
  result[10] = v181;
  result[11] = v77;
  result[12] = v57;
  result[13] = v89;
  result[14] = v88;
  result[15] = v54;
  return result;
}

uint64_t outlined init with copy of Locale.LanguageCode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Locale.LanguageCode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void __swiftcall SeparatorsEnglish.init()(OmniSearch::SeparatorsEnglish *__return_ptr retstr)
{
  retstr->whitespaceSep._countAndFlagsBits = 32;
  retstr->whitespaceSep._object = 0xE100000000000000;
  retstr->andSep._countAndFlagsBits = 0x20646E6120;
  retstr->andSep._object = 0xE500000000000000;
  retstr->inSep._countAndFlagsBits = 544106784;
  retstr->inSep._object = 0xE400000000000000;
  retstr->fromSep._countAndFlagsBits = 0x206D6F726620;
  retstr->fromSep._object = 0xE600000000000000;
  retstr->toSep._countAndFlagsBits = 544175136;
  retstr->toSep._object = 0xE400000000000000;
  retstr->atSep._countAndFlagsBits = 544497952;
  retstr->atSep._object = 0xE400000000000000;
  OUTLINED_FUNCTION_16_38(retstr);
}

void __swiftcall SeparatorsPortuguese.init()(OmniSearch::SeparatorsPortuguese *__return_ptr retstr)
{
  OUTLINED_FUNCTION_50_17(retstr);
  v1[4] = 544040224;
  v1[5] = 0xE400000000000000;
  v1[6] = 543515680;
  v1[7] = 0xE400000000000000;
  v1[8] = v2;
  v1[9] = v3;
  v1[10] = 544040224;
  v1[11] = 0xE400000000000000;
  OUTLINED_FUNCTION_16_38(v1);
}

void __swiftcall SeparatorsFrench.init()(OmniSearch::SeparatorsFrench *__return_ptr retstr)
{
  retstr->whitespaceSep._countAndFlagsBits = 32;
  retstr->whitespaceSep._object = 0xE100000000000000;
  retstr->andSep._countAndFlagsBits = 544498976;
  retstr->andSep._object = 0xE400000000000000;
  retstr->inSep._countAndFlagsBits = 0x20736E616420;
  retstr->inSep._object = 0xE600000000000000;
  retstr->fromSep._countAndFlagsBits = 543515680;
  retstr->fromSep._object = 0xE400000000000000;
  retstr->toSep._countAndFlagsBits = 0x207372657620;
  retstr->toSep._object = 0xE600000000000000;
  retstr->atSep._countAndFlagsBits = 547406624;
  retstr->atSep._object = 0xA400000000000000;
  OUTLINED_FUNCTION_28_27(retstr);
}

void __swiftcall SeparatorsItalian.init()(OmniSearch::SeparatorsItalian *__return_ptr retstr)
{
  OUTLINED_FUNCTION_50_17(retstr);
  v1[4] = 544106784;
  v1[5] = 0xE400000000000000;
  v1[6] = 543253536;
  v1[7] = 0xE400000000000000;
  v1[8] = v2;
  v1[9] = v3;
  v1[10] = v2;
  v1[11] = v3;
  OUTLINED_FUNCTION_16_38(v1);
}

void __swiftcall SeparatorsGerman.init()(OmniSearch::SeparatorsGerman *__return_ptr retstr)
{
  retstr->whitespaceSep._countAndFlagsBits = 32;
  retstr->whitespaceSep._object = 0xE100000000000000;
  retstr->andSep._countAndFlagsBits = 0x20646E7520;
  retstr->andSep._object = 0xE500000000000000;
  retstr->inSep._countAndFlagsBits = 544106784;
  retstr->inSep._object = 0xE400000000000000;
  retstr->fromSep._countAndFlagsBits = 0x206E6F7620;
  retstr->fromSep._object = 0xE500000000000000;
  retstr->toSep._countAndFlagsBits = 544569888;
  retstr->toSep._object = 0xE400000000000000;
  retstr->atSep._countAndFlagsBits = 544039200;
  retstr->atSep._object = 0xE400000000000000;
  OUTLINED_FUNCTION_28_27(retstr);
}

void __swiftcall SeparatorsSpanish.init()(OmniSearch::SeparatorsSpanish *__return_ptr retstr)
{
  retstr->whitespaceSep._countAndFlagsBits = 32;
  retstr->whitespaceSep._object = 0xE100000000000000;
  retstr->andSep._countAndFlagsBits = 2128160;
  retstr->andSep._object = 0xE300000000000000;
  retstr->inSep._countAndFlagsBits = 544105760;
  retstr->inSep._object = 0xE400000000000000;
  retstr->fromSep._countAndFlagsBits = 543515680;
  retstr->fromSep._object = 0xE400000000000000;
  retstr->toSep._countAndFlagsBits = 2122016;
  retstr->toSep._object = 0xE300000000000000;
  retstr->atSep._countAndFlagsBits = 544105760;
  retstr->atSep._object = 0xE400000000000000;
  OUTLINED_FUNCTION_16_38(retstr);
}

void __swiftcall SeparatorsJapanese.init()(OmniSearch::SeparatorsJapanese *__return_ptr retstr)
{
  retstr->whitespaceSep._countAndFlagsBits = 0;
  retstr->whitespaceSep._object = 0xE000000000000000;
  retstr->andSep._countAndFlagsBits = 11043299;
  retstr->andSep._object = 0xA300000000000000;
  retstr->inSep._countAndFlagsBits = 0;
  retstr->inSep._object = 0xE000000000000000;
  retstr->fromSep._countAndFlagsBits = 0x8982E38B81E3;
  retstr->fromSep._object = 0xA600000000000000;
  retstr->toSep._countAndFlagsBits = 12091875;
  retstr->toSep._object = 0xA300000000000000;
  retstr->atSep._countAndFlagsBits = 0;
  retstr->atSep._object = 0xE000000000000000;
  retstr->me._countAndFlagsBits = 8497127;
  retstr->me._object = 0xA300000000000000;
}

void __swiftcall SeparatorsKorean.init()(OmniSearch::SeparatorsKorean *__return_ptr retstr)
{
  retstr->whitespaceSep._countAndFlagsBits = 0;
  retstr->whitespaceSep._object = 0xE000000000000000;
  retstr->andSep._countAndFlagsBits = 0;
  retstr->andSep._object = 0xE000000000000000;
  retstr->inSep._countAndFlagsBits = 0x9097EC8895ECLL;
  retstr->inSep._object = 0xA600000000000000;
  retstr->fromSep._countAndFlagsBits = 0xB084ED80B6EBLL;
  retstr->fromSep._object = 0xA600000000000000;
  retstr->toSep._countAndFlagsBits = 0x80A7EC8CB9EALL;
  retstr->toSep._object = 0xA600000000000000;
  retstr->atSep._countAndFlagsBits = 9476076;
  retstr->atSep._object = 0xA300000000000000;
  OUTLINED_FUNCTION_28_27(retstr);
}

void __swiftcall SeparatorsChinese.init()(OmniSearch::SeparatorsChinese *__return_ptr retstr)
{
  retstr->whitespaceSep._countAndFlagsBits = 0;
  retstr->whitespaceSep._object = 0xE000000000000000;
  retstr->andSep._countAndFlagsBits = 9212645;
  retstr->andSep._object = 0xA300000000000000;
  retstr->inSep._countAndFlagsBits = 11050213;
  retstr->inSep._object = 0xA300000000000000;
  retstr->fromSep._countAndFlagsBits = 9354212;
  retstr->fromSep._object = 0xA300000000000000;
  retstr->toSep._countAndFlagsBits = 11569381;
  retstr->toSep._object = 0xA300000000000000;
  retstr->atSep._countAndFlagsBits = 0;
  retstr->atSep._object = 0xE000000000000000;
  retstr->me._countAndFlagsBits = 9537766;
  retstr->me._object = 0xA300000000000000;
}

unint64_t lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode()
{
  result = lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode;
  if (!lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode)
  {
    type metadata accessor for Locale.LanguageCode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t SeparatorsFrench.whitespaceSep.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t SeparatorsFrench.whitespaceSep.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SeparatorsFrench.andSep.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t SeparatorsFrench.andSep.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SeparatorsFrench.inSep.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_94();
}

uint64_t SeparatorsFrench.inSep.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SeparatorsFrench.fromSep.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_94();
}

uint64_t SeparatorsFrench.fromSep.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t SeparatorsFrench.toSep.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_94();
}

uint64_t SeparatorsFrench.toSep.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t SeparatorsFrench.atSep.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_94();
}

uint64_t SeparatorsFrench.atSep.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t SeparatorsFrench.me.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_94();
}

uint64_t SeparatorsFrench.me.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

__n128 SeparatorsEnglish.init(whitespaceSep:andSep:inSep:fromSep:toSep:atSep:me:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_75(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(a1, 0, 1, *(v1 - 96));
  v3 = *(*(v1 - 104) + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_41()
{
  v2 = *(*(v1 - 112) + 8);
  result = v0;
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_38()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}