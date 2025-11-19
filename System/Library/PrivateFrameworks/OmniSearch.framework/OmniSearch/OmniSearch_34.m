uint64_t MessageAccumulationViewModel.Summary.init(message:severity:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  if (a2)
  {
    if (a2 == 1)
    {
      v14 = 0xD000000000000018;
    }

    else
    {
      v14 = 0x7269632E6F666E69;
    }

    if (a2 == 1)
    {
      v15 = 0x800000025DBF9520;
    }

    else
    {
      v15 = 0xEB00000000656C63;
    }
  }

  else
  {
    v14 = 0xD000000000000017;
    v15 = 0x800000025DBF94E0;
  }

  (*(v9 + 16))(v13 - v12, a1, v6);
  v16 = String.init(localized:)();
  v18 = v17;
  result = (*(v9 + 8))(a1, v6);
  *a3 = v14;
  a3[1] = v15;
  a3[2] = v16;
  a3[3] = v18;
  return result;
}

uint64_t MessageAccumulationViewModel.Summary.id.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x25F89F6C0](32, 0xE100000000000000);
  MEMORY[0x25F89F6C0](v1, v2);
  return v4;
}

uint64_t MessageAccumulationViewModel.Summary.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6870796C67 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t MessageAccumulationViewModel.Summary.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x6D614E6870796C67;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributionViewModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MessageAccumulationViewModel.Summary.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MessageAccumulationViewModel.Summary.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MessageAccumulationViewModel.Summary.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MessageAccumulationViewModel.Summary.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void MessageAccumulationViewModel.Summary.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch28MessageAccumulationViewModelV7SummaryV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch28MessageAccumulationViewModelV7SummaryV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v15[1] = v0[3];
  v15[2] = v13;
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_26_8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v16 + 8))(v10, v4);
  OUTLINED_FUNCTION_61_2();
}

void MessageAccumulationViewModel.Summary.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch28MessageAccumulationViewModelV7SummaryV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch28MessageAccumulationViewModelV7SummaryV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_25_13();
  lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys();
  OUTLINED_FUNCTION_11_49();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    OUTLINED_FUNCTION_39_16();
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    OUTLINED_FUNCTION_39_16();
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    v18 = v15;
    (*(v8 + 8))(v1, v6);
    *v5 = v12;
    v5[1] = v14;
    v5[2] = v18;
    v5[3] = v17;

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t protocol witness for Identifiable.id.getter in conformance MessageAccumulationViewModel.Summary@<X0>(uint64_t *a1@<X8>)
{
  result = MessageAccumulationViewModel.Summary.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MessageAccumulationViewModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656972616D6D7573 && a2 == 0xE900000000000073)
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MessageAccumulationViewModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MessageAccumulationViewModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MessageAccumulationViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MessageAccumulationViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void MessageAccumulationViewModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch28MessageAccumulationViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch28MessageAccumulationViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  lazy protocol witness table accessor for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  a10 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch28MessageAccumulationViewModelV7SummaryVGMd, &_sSay10OmniSearch28MessageAccumulationViewModelV7SummaryVGMR);
  lazy protocol witness table accessor for type [MessageAccumulationViewModel.Summary] and conformance <A> [A](&lazy protocol witness table cache variable for type [MessageAccumulationViewModel.Summary] and conformance <A> [A], lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_61_2();
}

void MessageAccumulationViewModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch28MessageAccumulationViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch28MessageAccumulationViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  OUTLINED_FUNCTION_25_13();
  lazy protocol witness table accessor for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch28MessageAccumulationViewModelV7SummaryVGMd, &_sSay10OmniSearch28MessageAccumulationViewModelV7SummaryVGMR);
    lazy protocol witness table accessor for type [MessageAccumulationViewModel.Summary] and conformance <A> [A](&lazy protocol witness table cache variable for type [MessageAccumulationViewModel.Summary] and conformance <A> [A], lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v29 + 8))(v34, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  OUTLINED_FUNCTION_61_2();
}

OmniSearch::MessageAccumulationViewModel_optional __swiftcall MessageAccumulationContext.makeViewModel()()
{
  v2 = v0;
  v3 = v1;
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v84 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v75 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v75 - v15;
  v91 = type metadata accessor for MessageAccumulationContext.MessageValue(0);
  v17 = OUTLINED_FUNCTION_17(v91);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v85 = (v21 - v20);
  v90 = type metadata accessor for MessageAccumulationContext.Message(0);
  v22 = OUTLINED_FUNCTION_14(v90);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_36();
  v29 = v28 - v27;
  if (AFIsInternalInstall() && (type metadata accessor for FeatureFlagService(), swift_initStackObject(), v83 = v4, v82 = v16, FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_showInternalErrorInfo)) && *(v2 + 16))
  {
    v96 = v2;

    specialized MutableCollection<>.sort(by:)(&v96);
    v30 = *(v96 + 16);
    if (v30)
    {
      v81 = v14;
      v76 = v3;
      v98 = MEMORY[0x277D84F90];
      v31 = v96;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
      v32 = v82;
      v33 = v83;
      v34 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v75[1] = v31;
      v35 = v31 + v34;
      v94 = v98;
      v89 = *(v24 + 72);
      v88 = 0x800000025DBF94E0;
      v77 = 0x800000025DBF9500;
      v80 = (v7 + 32);
      v36 = (v7 + 16);
      v79 = 0x800000025DBF9520;
      v78 = (v7 + 8);
      v37 = v85;
      v93 = v29;
      v87 = (v7 + 16);
      do
      {
        outlined init with copy of MessageAccumulationContext.Message(v35, v29, type metadata accessor for MessageAccumulationContext.Message);
        outlined init with copy of MessageAccumulationContext.Message(v29, v37, type metadata accessor for MessageAccumulationContext.MessageValue);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v92 = v30;
        if (EnumCaseMultiPayload == 1)
        {
          (*v80)(v32, v37, v33);
          v39 = *v36;
          v40 = v32;
          v41 = v81;
          (*v36)(v81, v40, v33);
          v42 = *(v29 + *(v90 + 20));
          v43 = 0x7269632E6F666E69;
          if (v42 == 1)
          {
            v43 = 0xD000000000000018;
          }

          v44 = v79;
          if (v42 != 1)
          {
            v44 = 0xEB00000000656C63;
          }

          v45 = v42 == 0;
          if (*(v29 + *(v90 + 20)))
          {
            v46 = v43;
          }

          else
          {
            v46 = 0xD000000000000017;
          }

          v86 = v46;
          if (v45)
          {
            v47 = v88;
          }

          else
          {
            v47 = v44;
          }

          v39(v84, v41, v33);
          v48 = String.init(localized:)();
          v50 = v49;
          v51 = *v78;
          (*v78)(v41, v33);
          v52 = v33;
          v51(v40, v33);
          v32 = v40;
          v37 = v85;
          v53 = v86;
        }

        else
        {
          v54 = *v37;
          v55 = *(v29 + *(v90 + 24));
          v96 = 0;
          v97 = 0xE000000000000000;
          if (v55)
          {
            if (v55 == 1)
            {
              v56 = 0xE700000000000000;
              v57 = 0x73757361676550;
            }

            else
            {
              v57 = 0xD000000000000010;
              v56 = v77;
            }
          }

          else
          {
            v56 = 0xE900000000000074;
            v57 = OUTLINED_FUNCTION_12_43();
          }

          MEMORY[0x25F89F6C0](v57, v56);

          MEMORY[0x25F89F6C0](8250, 0xE200000000000000);
          swift_getErrorValue();
          v58 = Error.baseError.getter(v95);
          swift_getErrorValue();
          v59 = Error.localizedDescription.getter();
          v61 = v60;

          MEMORY[0x25F89F6C0](v59, v61);

          v48 = v96;
          v50 = v97;
          v53 = 0xD000000000000017;
          v47 = v88;
          v52 = v83;
          v32 = v82;
        }

        outlined destroy of MessageAccumulationContext.Message(v93);
        v62 = v94;
        v98 = v94;
        v64 = *(v94 + 16);
        v63 = *(v94 + 24);
        if (v64 >= v63 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1);
          v32 = v82;
          v52 = v83;
          v62 = v98;
        }

        *(v62 + 16) = v64 + 1;
        v94 = v62;
        v65 = (v62 + 32 * v64);
        v65[4] = v53;
        v65[5] = v47;
        v65[6] = v48;
        v65[7] = v50;
        v35 += v89;
        v29 = v93;
        v30 = v92 - 1;
        v36 = v87;
        v33 = v52;
      }

      while (v92 != 1);

      v3 = v76;
      v74 = v94;
    }

    else
    {

      v74 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    if (one-time initialization token for stextension != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logging.stextension);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v3;
      v70 = swift_slowAlloc();
      *v70 = 67109632;
      *(v70 + 4) = AFIsInternalInstall();
      *(v70 + 8) = 1024;
      type metadata accessor for FeatureFlagService();
      swift_initStackObject();
      *(v70 + 10) = FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_showInternalErrorInfo);
      *(v70 + 14) = 1024;
      *(v70 + 16) = *(v2 + 16) == 0;

      _os_log_impl(&dword_25D85C000, v67, v68, "MessageAccumulationContext.makeViewModel -- internal: %{BOOL}d, feature flag enabled: %{BOOL}d, empty errors: %{BOOL}d", v70, 0x14u);
      v71 = v70;
      v3 = v69;
      MEMORY[0x25F8A1050](v71, -1, -1);
    }

    else
    {
    }

    v74 = 0;
  }

  *v3 = v74;
  result.value.summaries._rawValue = v72;
  result.is_nil = v73;
  return result;
}

unint64_t lazy protocol witness table accessor for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributionViewModel and conformance AttributionViewModel()
{
  result = lazy protocol witness table cache variable for type AttributionViewModel and conformance AttributionViewModel;
  if (!lazy protocol witness table cache variable for type AttributionViewModel and conformance AttributionViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributionViewModel and conformance AttributionViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributionViewModel and conformance AttributionViewModel;
  if (!lazy protocol witness table cache variable for type AttributionViewModel and conformance AttributionViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributionViewModel and conformance AttributionViewModel);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v157 = a1;
  v8 = type metadata accessor for MessageAccumulationContext.Message(0);
  v166 = *(v8 - 8);
  v9 = *(v166 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v161 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v175 = &v152 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v152 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v152 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v163 = &v152 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v170 = &v152 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v154 = &v152 - v25;
  MEMORY[0x28223BE20](v24);
  v153 = &v152 - v26;
  v168 = a3;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_177:
    v175 = *v157;
    if (!v175)
    {
      goto LABEL_219;
    }

    a3 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v144 = a3;
LABEL_180:
      a3 = (v144 + 16);
      v145 = *(v144 + 2);
      while (v145 >= 2)
      {
        if (!*v168)
        {
          goto LABEL_216;
        }

        v146 = v144;
        v147 = &v144[16 * v145];
        v148 = *v147;
        v149 = (a3 + 16 * v145);
        v150 = v149[1];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v168 + *(v166 + 72) * *v147, *v168 + *(v166 + 72) * *v149, *v168 + *(v166 + 72) * v150, v175);
        if (v5)
        {
          break;
        }

        if (v150 < v148)
        {
          goto LABEL_204;
        }

        if (v145 - 2 >= *a3)
        {
          goto LABEL_205;
        }

        *v147 = v148;
        *(v147 + 1) = v150;
        v151 = *a3 - v145;
        if (*a3 < v145)
        {
          goto LABEL_206;
        }

        v145 = *a3 - 1;
        memmove(v149, v149 + 2, 16 * v151);
        *a3 = v145;
        v144 = v146;
      }

LABEL_188:

      return;
    }

LABEL_213:
    v144 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
    goto LABEL_180;
  }

  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v156 = a4;
  v172 = v16;
  v173 = v8;
  v171 = v19;
  while (2)
  {
    v30 = v28 + 1;
    v162 = v29;
    v158 = v28;
    if (v28 + 1 >= v27)
    {
      goto LABEL_69;
    }

    v164 = v27;
    v31 = *v168;
    v32 = *(v166 + 72);
    v169 = v28 + 1;
    a3 = type metadata accessor for MessageAccumulationContext.Message;
    v33 = v153;
    outlined init with copy of MessageAccumulationContext.Message(v31 + v32 * v30, v153, type metadata accessor for MessageAccumulationContext.Message);
    v167 = v32;
    v34 = v154;
    outlined init with copy of MessageAccumulationContext.Message(v31 + v32 * v28, v154, type metadata accessor for MessageAccumulationContext.Message);
    v35 = *(v8 + 20);
    v36 = *(v33 + v35);
    v37 = *(v34 + v35);
    v155 = v5;
    if (v36 == v37)
    {
      v38 = *(v8 + 24);
      a3 = *(v33 + v38);
      v39 = *(v34 + v38);
      if (static MessageAccumulationContext.Subcomponent.== infix(_:_:)())
      {
        LODWORD(v165) = 0;
      }

      else
      {
        LODWORD(v165) = static MessageAccumulationContext.Subcomponent.< infix(_:_:)();
      }

      v28 = v158;
    }

    else
    {
      LODWORD(v165) = v36 < v37;
    }

    outlined destroy of MessageAccumulationContext.Message(v34);
    outlined destroy of MessageAccumulationContext.Message(v33);
    v40 = v28 + 2;
    v41 = v167 * (v28 + 2);
    v42 = v31 + v41;
    v43 = v169;
    v44 = v167 * v169;
    v45 = v31 + v167 * v169;
    v46 = v163;
    do
    {
      v30 = v40;
      v47 = v43;
      v48 = v44;
      v5 = v41;
      if (v40 >= v164)
      {
        break;
      }

      v174 = v43;
      v49 = v44;
      v50 = v41;
      v51 = v40;
      v169 = v42;
      v52 = v170;
      outlined init with copy of MessageAccumulationContext.Message(v42, v170, type metadata accessor for MessageAccumulationContext.Message);
      outlined init with copy of MessageAccumulationContext.Message(v45, v46, type metadata accessor for MessageAccumulationContext.Message);
      v53 = *(v8 + 20);
      v54 = *(v52 + v53);
      v55 = *(v46 + v53);
      if (v54 == v55)
      {
        v56 = *(v8 + 24);
        v57 = *(v52 + v56);
        if (*(v52 + v56))
        {
          v30 = v51;
          if (v57 == 1)
          {
            v58 = 0xE700000000000000;
            v59 = 0x73757361676570;
          }

          else
          {
            v59 = 0x7953726577736E61;
            v58 = 0xEF7369736568746ELL;
          }
        }

        else
        {
          v59 = 0x6867696C746F7073;
          v58 = 0xE900000000000074;
          v30 = v51;
        }

        v5 = v50;
        v60 = *(v46 + v56);
        v48 = v49;
        if (*(v46 + v56))
        {
          if (v60 == 1)
          {
            v61 = 0x73757361676570;
          }

          else
          {
            v61 = 0x7953726577736E61;
          }

          if (v60 == 1)
          {
            v62 = 0xE700000000000000;
          }

          else
          {
            v62 = 0xEF7369736568746ELL;
          }
        }

        else
        {
          v61 = 0x6867696C746F7073;
          v62 = 0xE900000000000074;
        }

        if (v59 == v61 && v58 == v62)
        {
          goto LABEL_47;
        }

        v64 = v57;
        LODWORD(v160) = _stringCompareWithSmolCheck(_:_:expecting:)();

        a3 = 0;
        v16 = v172;
        v46 = v163;
        if ((v160 & 1) == 0)
        {
          if (v64)
          {
            if (v64 == 1)
            {
              v65 = 0xE700000000000000;
              v66 = 0x73757361676570;
              if (!v60)
              {
LABEL_40:
                v68 = 0x6867696C746F7073;
                v67 = 0xE900000000000074;
LABEL_42:
                if (v66 == v68 && v65 == v67)
                {
LABEL_47:

                  a3 = 0;
                }

                else
                {
                  a3 = _stringCompareWithSmolCheck(_:_:expecting:)();
                }

                v16 = v172;
                v46 = v163;
                goto LABEL_49;
              }
            }

            else
            {
              v66 = 0x7953726577736E61;
              v65 = 0xEF7369736568746ELL;
              if (!v60)
              {
                goto LABEL_40;
              }
            }
          }

          else
          {
            v66 = 0x6867696C746F7073;
            v65 = 0xE900000000000074;
            if (!v60)
            {
              goto LABEL_40;
            }
          }

          if (v60 == 1)
          {
            v67 = 0xE700000000000000;
            v68 = 0x73757361676570;
          }

          else
          {
            v68 = 0x7953726577736E61;
            v67 = 0xEF7369736568746ELL;
          }

          goto LABEL_42;
        }
      }

      else
      {
        a3 = v54 < v55;
        v30 = v51;
        v5 = v50;
        v48 = v49;
      }

LABEL_49:
      outlined destroy of MessageAccumulationContext.Message(v46);
      outlined destroy of MessageAccumulationContext.Message(v170);
      v40 = v30 + 1;
      v42 = v169 + v167;
      v45 += v167;
      v8 = v173;
      v47 = v174;
      v43 = v174 + 1;
      v44 = v48 + v167;
      v41 = v5 + v167;
    }

    while ((v165 & 1) == (a3 & 1));
    v19 = v171;
    if (v165)
    {
      v70 = v158;
      if (v30 < v158)
      {
        goto LABEL_210;
      }

      if (v158 < v30)
      {
        v71 = v158 * v167;
        do
        {
          if (v70 != v47)
          {
            v174 = v47;
            v72 = *v168;
            if (!*v168)
            {
              goto LABEL_217;
            }

            a3 = v72 + v71;
            outlined init with take of MessageAccumulationContext.Message(v72 + v71, v161);
            v73 = v71 < v48 || a3 >= v72 + v5;
            if (v73)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v71 != v48)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            outlined init with take of MessageAccumulationContext.Message(v161, v72 + v48);
            v16 = v172;
            v47 = v174;
          }

          ++v70;
          v48 -= v167;
          v5 -= v167;
          v71 += v167;
          v74 = v70 < v47--;
        }

        while (v74);
      }

      v5 = v155;
    }

    else
    {
      v5 = v155;
    }

    a4 = v156;
LABEL_69:
    v75 = v168[1];
    if (v30 >= v75)
    {
      goto LABEL_120;
    }

    if (__OFSUB__(v30, v158))
    {
      goto LABEL_209;
    }

    if (v30 - v158 >= a4)
    {
LABEL_120:
      v77 = v158;
      goto LABEL_121;
    }

    v76 = v158 + a4;
    if (__OFADD__(v158, a4))
    {
      goto LABEL_211;
    }

    v77 = v158;
    if (v76 >= v75)
    {
      v76 = v168[1];
    }

    if (v76 < v158)
    {
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    if (v30 == v76)
    {
LABEL_121:
      if (v30 < v77)
      {
        goto LABEL_208;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v29 = v162;
      }

      else
      {
        v141 = v162[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v29 = v142;
      }

      v100 = v29[2];
      v101 = v100 + 1;
      if (v100 >= v29[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v29 = v143;
      }

      v29[2] = v101;
      a3 = (v29 + 4);
      v102 = &v29[2 * v100 + 4];
      *v102 = v77;
      v102[1] = v30;
      v174 = *v157;
      if (!v174)
      {
        goto LABEL_218;
      }

      v169 = v30;
      if (!v100)
      {
        v16 = v172;
LABEL_173:
        v28 = v169;
        v27 = v168[1];
        a4 = v156;
        if (v169 >= v27)
        {
          goto LABEL_177;
        }

        continue;
      }

      v103 = v29;
      v16 = v172;
      while (1)
      {
        v104 = v101 - 1;
        v105 = (a3 + 16 * (v101 - 1));
        v106 = &v29[2 * v101];
        if (v101 >= 4)
        {
          break;
        }

        if (v101 == 3)
        {
          v107 = v29[4];
          v108 = v29[5];
          v117 = __OFSUB__(v108, v107);
          v109 = v108 - v107;
          v110 = v117;
LABEL_142:
          if (v110)
          {
            goto LABEL_195;
          }

          v122 = *v106;
          v121 = v106[1];
          v123 = __OFSUB__(v121, v122);
          v124 = v121 - v122;
          v125 = v123;
          if (v123)
          {
            goto LABEL_198;
          }

          v126 = v105[1];
          v127 = v126 - *v105;
          if (__OFSUB__(v126, *v105))
          {
            goto LABEL_201;
          }

          if (__OFADD__(v124, v127))
          {
            goto LABEL_203;
          }

          if (v124 + v127 >= v109)
          {
            if (v109 < v127)
            {
              v104 = v101 - 2;
            }

            goto LABEL_164;
          }

          goto LABEL_157;
        }

        if (v101 < 2)
        {
          goto LABEL_197;
        }

        v129 = *v106;
        v128 = v106[1];
        v117 = __OFSUB__(v128, v129);
        v124 = v128 - v129;
        v125 = v117;
LABEL_157:
        if (v125)
        {
          goto LABEL_200;
        }

        v131 = *v105;
        v130 = v105[1];
        v117 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v117)
        {
          goto LABEL_202;
        }

        if (v132 < v124)
        {
          v29 = v103;
          goto LABEL_173;
        }

LABEL_164:
        if (v104 - 1 >= v101)
        {
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
          goto LABEL_212;
        }

        if (!*v168)
        {
          goto LABEL_215;
        }

        v136 = (a3 + 16 * (v104 - 1));
        v137 = *v136;
        v138 = (a3 + 16 * v104);
        v139 = v138[1];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v168 + *(v166 + 72) * *v136, *v168 + *(v166 + 72) * *v138, *v168 + *(v166 + 72) * v139, v174);
        if (v5)
        {
          goto LABEL_188;
        }

        if (v139 < v137)
        {
          goto LABEL_190;
        }

        v140 = v103[2];
        if (v104 > v140)
        {
          goto LABEL_191;
        }

        *v136 = v137;
        v136[1] = v139;
        if (v104 >= v140)
        {
          goto LABEL_192;
        }

        v101 = v140 - 1;
        memmove((a3 + 16 * v104), v138 + 2, 16 * (v140 - 1 - v104));
        v29 = v103;
        v103[2] = v140 - 1;
        v74 = v140 > 2;
        v16 = v172;
        v8 = v173;
        v19 = v171;
        if (!v74)
        {
          goto LABEL_173;
        }
      }

      v111 = a3 + 16 * v101;
      v112 = *(v111 - 64);
      v113 = *(v111 - 56);
      v117 = __OFSUB__(v113, v112);
      v114 = v113 - v112;
      if (v117)
      {
        goto LABEL_193;
      }

      v116 = *(v111 - 48);
      v115 = *(v111 - 40);
      v117 = __OFSUB__(v115, v116);
      v109 = v115 - v116;
      v110 = v117;
      if (v117)
      {
        goto LABEL_194;
      }

      v118 = v106[1];
      v119 = v118 - *v106;
      if (__OFSUB__(v118, *v106))
      {
        goto LABEL_196;
      }

      v117 = __OFADD__(v109, v119);
      v120 = v109 + v119;
      if (v117)
      {
        goto LABEL_199;
      }

      if (v120 >= v114)
      {
        v134 = *v105;
        v133 = v105[1];
        v117 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v117)
        {
          goto LABEL_207;
        }

        if (v109 < v135)
        {
          v104 = v101 - 2;
        }

        goto LABEL_164;
      }

      goto LABEL_142;
    }

    break;
  }

  v155 = v5;
  v78 = *(v166 + 72);
  v79 = *v168 + v78 * (v30 - 1);
  v80 = -v78;
  v81 = v158 - v30;
  v174 = *v168;
  v159 = v78;
  v160 = v76;
  v82 = v174 + v30 * v78;
  while (2)
  {
    v169 = v30;
    v164 = v82;
    v165 = v81;
    v83 = v81;
    v167 = v79;
LABEL_79:
    a3 = type metadata accessor for MessageAccumulationContext.Message;
    outlined init with copy of MessageAccumulationContext.Message(v82, v19, type metadata accessor for MessageAccumulationContext.Message);
    outlined init with copy of MessageAccumulationContext.Message(v79, v16, type metadata accessor for MessageAccumulationContext.Message);
    v84 = *(v8 + 20);
    v85 = v19[v84];
    v86 = v16[v84];
    if (v85 != v86)
    {
      a3 = v85 < v86;
      goto LABEL_111;
    }

    v87 = *(v8 + 24);
    v88 = v19[v87];
    if (v19[v87])
    {
      if (v88 == 1)
      {
        v89 = 0xE700000000000000;
        v90 = 0x73757361676570;
      }

      else
      {
        v90 = 0x7953726577736E61;
        v89 = 0xEF7369736568746ELL;
      }
    }

    else
    {
      v90 = 0x6867696C746F7073;
      v89 = 0xE900000000000074;
    }

    v91 = v16[v87];
    if (v16[v87])
    {
      if (v91 == 1)
      {
        v92 = 0xE700000000000000;
        v93 = 0x73757361676570;
      }

      else
      {
        v93 = 0x7953726577736E61;
        v92 = 0xEF7369736568746ELL;
      }
    }

    else
    {
      v93 = 0x6867696C746F7073;
      v92 = 0xE900000000000074;
    }

    if (v90 == v93 && v89 == v92)
    {
LABEL_116:

LABEL_117:
      v16 = v172;
      outlined destroy of MessageAccumulationContext.Message(v172);
      v19 = v171;
      outlined destroy of MessageAccumulationContext.Message(v171);
      v8 = v173;
LABEL_118:
      v30 = v169 + 1;
      v79 = v167 + v159;
      v81 = v165 - 1;
      v82 = v164 + v159;
      if (v169 + 1 == v160)
      {
        v30 = v160;
        v5 = v155;
        goto LABEL_120;
      }

      continue;
    }

    break;
  }

  a3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (a3)
  {
    goto LABEL_117;
  }

  if (!v88)
  {
    v96 = 0x6867696C746F7073;
    v95 = 0xE900000000000074;
    if (!v91)
    {
      goto LABEL_104;
    }

    goto LABEL_101;
  }

  if (v88 != 1)
  {
    v96 = 0x7953726577736E61;
    v95 = 0xEF7369736568746ELL;
    if (!v91)
    {
      goto LABEL_104;
    }

    goto LABEL_101;
  }

  v95 = 0xE700000000000000;
  v96 = 0x73757361676570;
  if (v91)
  {
LABEL_101:
    if (v91 == 1)
    {
      v97 = 0xE700000000000000;
      v98 = 0x73757361676570;
    }

    else
    {
      v98 = 0x7953726577736E61;
      v97 = 0xEF7369736568746ELL;
    }

    goto LABEL_106;
  }

LABEL_104:
  v98 = 0x6867696C746F7073;
  v97 = 0xE900000000000074;
LABEL_106:
  v8 = v173;
  if (v96 == v98 && v95 == v97)
  {
    goto LABEL_116;
  }

  a3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v19 = v171;
  v16 = v172;
LABEL_111:
  outlined destroy of MessageAccumulationContext.Message(v16);
  outlined destroy of MessageAccumulationContext.Message(v19);
  if ((a3 & 1) == 0)
  {
    goto LABEL_118;
  }

  if (v174)
  {
    a3 = v175;
    outlined init with take of MessageAccumulationContext.Message(v82, v175);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of MessageAccumulationContext.Message(a3, v79);
    v79 += v80;
    v82 += v80;
    v73 = __CFADD__(v83++, 1);
    if (v73)
    {
      goto LABEL_118;
    }

    goto LABEL_79;
  }

  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, &_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR);
}

{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for MessageAccumulationContext.Message(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, &_sSi_10OmniSearch0B9CATEntityVtMd, &_sSi_10OmniSearch0B9CATEntityVtMR);
}

{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  result = OUTLINED_FUNCTION_17(v8);
  v11 = *(v10 + 72);
  if (!v11)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_20;
  }

  v13 = v6 + (v7 - v6) / v11 * v11;
  if (v5 < v6 || v5 >= v13)
  {
    OUTLINED_FUNCTION_107();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    OUTLINED_FUNCTION_107();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

unint64_t lazy protocol witness table accessor for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel()
{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary()
{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary;
  if (!lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MessageAccumulationViewModel.Summary] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch28MessageAccumulationViewModelV7SummaryVGMd, &_sSay10OmniSearch28MessageAccumulationViewModelV7SummaryVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of MessageAccumulationContext.Message(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of MessageAccumulationContext.Message(uint64_t a1)
{
  v2 = type metadata accessor for MessageAccumulationContext.Message(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MessageAccumulationViewModel.Summary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MessageAccumulationViewModel.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t outlined init with take of MessageAccumulationContext.Message(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageAccumulationContext.Message(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_49()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t @nonobjc CNContactStore.unifiedContacts(matching:keysToFetch:)(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v10[0] = 0;
  v4 = [v1 unifiedContactsMatchingPredicate:a1 keysToFetch:isa error:v10];

  v5 = v10[0];
  if (v4)
  {
    type metadata accessor for CNContact();
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v7 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t *ContactsClient.__allocating_init(contactStore:)(uint64_t *a1)
{
  swift_allocObject();
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_19_14();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_12_24(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_19_35();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t *ContactsClient.init(contactStore:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_19_14();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_12_24(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_19_35();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

Swift::OpaquePointer_optional __swiftcall ContactsClient.meCardRelationships()()
{
  isUniquelyReferenced_nonNull_native = v0;
  v2 = type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_19_14();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  v119 = v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_19_14();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v112 - v18;
  if (one-time initialization token for searchSignposter != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v20 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v20, static Logging.searchSignposter);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v21 = OSSignposter.logHandle.getter();
    v22 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v23 = swift_slowAlloc();
      object = isUniquelyReferenced_nonNull_native;
      v24 = v4;
      v25 = v2;
      v26 = v23;
      *v23 = 0;
      v27 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_25D85C000, v21, v22, v27, "ContactClients.meCardRelationships", "Fetching contact information for me", v26, 2u);
      v28 = v26;
      v2 = v25;
      v4 = v24;
      isUniquelyReferenced_nonNull_native = object;
      MEMORY[0x25F8A1050](v28, -1, -1);
    }

    (*(v11 + 16))(v16, v19, v9);
    v29 = type metadata accessor for OSSignpostIntervalState();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v112[1] = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v11 + 8))(v19, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_25DBE7100;
    v33 = *MEMORY[0x277CBD000];
    v34 = *MEMORY[0x277CBD058];
    *(v32 + 32) = *MEMORY[0x277CBD000];
    *(v32 + 40) = v34;
    v35 = *MEMORY[0x277CBCFF8];
    v36 = *MEMORY[0x277CBD120];
    *(v32 + 48) = *MEMORY[0x277CBCFF8];
    *(v32 + 56) = v36;
    v37 = objc_opt_self();
    v38 = v33;
    v39 = v34;
    v40 = v35;
    v41 = v36;
    v42 = [v37 predicateForMeContact];
    v43 = isUniquelyReferenced_nonNull_native[5];
    v44 = isUniquelyReferenced_nonNull_native[6];
    __swift_project_boxed_opaque_existential_1(isUniquelyReferenced_nonNull_native + 2, v43);
    v45 = (*(v44 + 8))(v42, v32, v43, v44);

    if (!specialized Array.count.getter(v45))
    {

      v119 = 0;
LABEL_36:
      $defer #1 () in ContactsClient.meCardRelationships()();

      v111 = v119;
      goto LABEL_43;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v45 & 0xC000000000000001) == 0, v45);
    if ((v45 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x25F89FFD0](0, v45);
    }

    else
    {
      v46 = *(v45 + 32);
    }

    v47 = v46;
    v48 = v119;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_25DBC8400;
    v50 = [v47 givenName];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    *(v49 + 32) = v51;
    *(v49 + 40) = v53;
    v54 = [v47 middleName];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    *(v49 + 48) = v55;
    *(v49 + 56) = v57;
    v112[0] = v47;
    v58 = [v47 familyName];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    *(v49 + 64) = v59;
    *(v49 + 72) = v61;
    v124 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v62 = BidirectionalCollection<>.joined(separator:)();
    v64 = v63;

    v124 = v62;
    v125 = v64;
    v122 = 2847580;
    v123 = 0xE300000000000000;
    v120 = 32;
    v121 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v65 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v67 = v66;

    v124 = v65;
    v125 = v67;
    static CharacterSet.whitespaces.getter();
    v68 = StringProtocol.trimmingCharacters(in:)();
    v70 = v69;
    (*(v4 + 8))(v48, v2);

    v119 = Dictionary.init(dictionaryLiteral:)();
    v71 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v71 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v71)
    {
      v72 = v119;
      swift_isUniquelyReferenced_nonNull_native();
      v124 = v72;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

      v119 = v124;
    }

    else
    {
    }

    v73 = [v112[0] contactRelations];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    v74 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v116 = v74;
    v75 = specialized Array.count.getter(v74);
    if (!v75)
    {
LABEL_35:

      goto LABEL_36;
    }

    v76 = v75;
    if (v75 < 1)
    {
      break;
    }

    v16 = 0;
    v114 = v42;
    v115 = v116 & 0xC000000000000001;
    v113 = v75;
    while (1)
    {
      if (v115)
      {
        v77 = MEMORY[0x25F89FFD0](v16, v116);
      }

      else
      {
        v77 = *(v116 + 8 * v16 + 32);
      }

      v78 = v77;
      v79 = [v77 label];
      if (v79)
      {
        v80 = v79;
        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v82;
      }

      else
      {
        v81 = 0;
        v11 = 0;
      }

      v83 = [v78 value];
      v84 = [v83 name];
      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;

      v4 = ContactsClient.normalizeRelation(relation:)(v81, v11);
      v89 = v88;

      if (!v89)
      {

        goto LABEL_34;
      }

      v117 = v83;
      v9 = v78;
      v90 = String.lowercased()();
      object = v90._object;

      v91 = v119;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124 = v91;
      v92 = v87;
      v19 = v85;
      v93 = v92;
      v94 = specialized __RawDictionaryStorage.find<A>(_:)();
      v96 = *(v91 + 2);
      v97 = (v95 & 1) == 0;
      v2 = v96 + v97;
      if (__OFADD__(v96, v97))
      {
        break;
      }

      v11 = v94;
      v4 = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v2))
      {
        isUniquelyReferenced_nonNull_native = v85;
        v98 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v4 & 1) != (v99 & 1))
        {
          goto LABEL_42;
        }

        v11 = v98;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v85;
      }

      v119 = v124;
      if (v4)
      {
        v100 = object;
        v101 = (*(v119 + 7) + 16 * v11);
        v102 = v101[1];
        *v101 = v90._countAndFlagsBits;
        v101[1] = v100;
      }

      else
      {
        v103 = v119;
        *&v119[8 * (v11 >> 6) + 64] |= 1 << v11;
        v104 = (v103[6] + 16 * v11);
        *v104 = isUniquelyReferenced_nonNull_native;
        v104[1] = v93;
        v105 = (v103[7] + 16 * v11);
        v106 = object;
        *v105 = v90._countAndFlagsBits;
        v105[1] = v106;
        v107 = v103[2];
        v108 = __OFADD__(v107, 1);
        v109 = v107 + 1;
        if (v108)
        {
          goto LABEL_38;
        }

        *(v119 + 2) = v109;
      }

      v76 = v113;
      v42 = v114;
LABEL_34:
      if (v76 == ++v16)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  __break(1u);
LABEL_42:
  v111 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_43:
  result.value._rawValue = v111;
  result.is_nil = v110;
  return result;
}

uint64_t $defer #1 () in ContactsClient.meCardRelationships()()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static Logging.searchSignposter);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "meCardRelationships.meCardRelationships", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ContactsClient.normalizeRelation(relation:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v5 = @nonobjc NSRegularExpression.init(pattern:options:)(0x3E7C3C21245C5F28, 0xED0000295F245C21, 0);
    v7 = v5;
    if (v5)
    {
      v15 = a2;
      v14 = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16PartialRangeFromVySS5IndexVGMd, &_ss16PartialRangeFromVySS5IndexVGMR);
      lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type PartialRangeFrom<String.Index> and conformance PartialRangeFrom<A>, &_ss16PartialRangeFromVySS5IndexVGMd, &_ss16PartialRangeFromVySS5IndexVGMR);
      lazy protocol witness table accessor for type String and conformance String();
      v8 = _NSRange.init<A, B>(_:in:)();
      v10 = v9;
      v11 = MEMORY[0x25F89F4C0](a1, a2);
      v12 = MEMORY[0x25F89F4C0](0, 0xE000000000000000);
      v13 = [v7 stringByReplacingMatchesInString:v11 options:0 range:v8 withTemplate:{v10, v12, v14, v15, 15}];

      a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

uint64_t ContactsClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for CNContact()
{
  result = lazy cache variable for type metadata for CNContact;
  if (!lazy cache variable for type metadata for CNContact)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContact);
  }

  return result;
}

uint64_t FlightDesignator.code.getter()
{
  v0 = FlightDesignator.airline.getter();
  FlightDesignator.number.getter();

  OUTLINED_FUNCTION_9_48();

  return v0;
}

uint64_t DataDetectorResults.description.getter()
{
  _StringGuts.grow(_:)(83);
  MEMORY[0x25F89F6C0](0x756E20656E6F6850, 0xEF203A737265626DLL);
  DataDetectorResults.phoneNumbers.getter();
  MEMORY[0x25F89F8A0]();

  OUTLINED_FUNCTION_9_48();

  MEMORY[0x25F89F6C0](0x736572646461202CLL, 0xED0000203A736573);
  DataDetectorResults.addresses.getter();
  MEMORY[0x25F89F8A0]();

  OUTLINED_FUNCTION_9_48();

  MEMORY[0x25F89F6C0](0x7265706F7270202CLL, 0xEF203A73656D614ELL);
  DataDetectorResults.properNames.getter();
  MEMORY[0x25F89F8A0]();

  OUTLINED_FUNCTION_10_46();

  MEMORY[0x25F89F6C0](0x3A736B6E696C202CLL, 0xE900000000000020);
  v0 = DataDetectorResults.links.getter();
  v1 = type metadata accessor for URL();
  MEMORY[0x25F89F8A0](v0, v1);

  OUTLINED_FUNCTION_10_46();

  MEMORY[0x25F89F6C0](0xD000000000000015, 0x800000025DBF95D0);
  v2 = DataDetectorResults.flightDesignators.getter();
  v3 = type metadata accessor for FlightDesignator();
  MEMORY[0x25F89F8A0](v2, v3);

  OUTLINED_FUNCTION_10_46();

  return 0;
}

uint64_t DataDetectorsController.__allocating_init()()
{
  v0 = swift_allocObject();
  DataDetectorsController.init()();
  return v0;
}

BOOL DataDetectorResults.isEmpty.getter()
{
  v0 = *(DataDetectorResults.phoneNumbers.getter() + 16);

  if (v0)
  {
    return 0;
  }

  v1 = *(DataDetectorResults.addresses.getter() + 16);

  if (v1)
  {
    return 0;
  }

  v2 = *(DataDetectorResults.links.getter() + 16);

  if (v2)
  {
    return 0;
  }

  v3 = *(DataDetectorResults.properNames.getter() + 16);

  if (v3)
  {
    return 0;
  }

  v5 = *(DataDetectorResults.flightDesignators.getter() + 16);

  return v5 == 0;
}

uint64_t DataDetectorsController.scan(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v135 = a3;
  v158[1] = *MEMORY[0x277D85DE8];
  v137 = type metadata accessor for FlightDesignator();
  v6 = OUTLINED_FUNCTION_14(v137);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v13);
  v146 = &v123[-v14];
  v15 = type metadata accessor for URL();
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39_0();
  v140 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_4();
  v147 = v24;
  MEMORY[0x28223BE20](v25);
  v148 = &v123[-v26];
  v27 = String.count.getter();
  v28 = objc_opt_self();
  v29 = MEMORY[0x25F89F4C0](a1, a2);
  v30 = [v28 scanString:v29 range:0 configuration:{v27, *(v3 + 16)}];

  type metadata accessor for DDScannerResult();
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v154 = MEMORY[0x277D84FA0];
  v155 = MEMORY[0x277D84FA0];
  v152 = MEMORY[0x277D84FA0];
  v153 = MEMORY[0x277D84FA0];
  v151 = MEMORY[0x277D84FA0];
  v32 = specialized Array.count.getter(v31);
  if (v32)
  {
    v34 = v32;
    if (v32 < 1)
    {
      __break(1u);
    }

    v35 = 0;
    v150 = v31 & 0xC000000000000001;
    v132 = (v8 + 16);
    v129 = v8 + 8;
    v143 = (v18 + 16);
    v138 = (v18 + 8);
    *&v33 = 136315395;
    v136 = v33;
    *&v33 = 136315138;
    v134 = v33;
    *&v33 = 136642819;
    v142 = v33;
    v36 = v146;
    v37 = v147;
    v144 = v15;
    v145 = v31;
    v38 = v148;
    v149 = v32;
    while (2)
    {
      if (v150)
      {
        v39 = MEMORY[0x25F89FFD0](v35, v31);
      }

      else
      {
        v39 = *(v31 + 8 * v35 + 32);
      }

      v40 = v39;
      switch([v39 category])
      {
        case 1u:
          v41 = [v40 url];
          if (!v41)
          {
            goto LABEL_38;
          }

          v42 = v41;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          __swift_project_value_buffer(v43, static Logging.search);
          v141 = *v143;
          v141(v37, v38, v15);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.debug.getter();
          v46 = os_log_type_enabled(v44, v45);
          v47 = v138;
          if (v46)
          {
            OUTLINED_FUNCTION_51_0();
            v48 = OUTLINED_FUNCTION_94_10();
            v156 = v48;
            *v36 = v134;
            lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
            dispatch thunk of CustomStringConvertible.description.getter();
            v49 = v37;
            v50 = *v47;
            (*v47)(v49, v144);
            v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v36 + 4) = v51;
            _os_log_impl(&dword_25D85C000, v44, v45, "Found link: %s", v36, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v48);
            v15 = v144;
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_4_58();
          }

          else
          {

            v107 = v37;
            v50 = *v47;
            (*v47)(v107, v15);
          }

          v108 = v140;
          v109 = v148;
          v141(v140, v148, v15);
          v110 = v139;
          specialized Set._Variant.insert(_:)(v139, v108);

          v111 = v110;
          v38 = v109;
          v50(v111, v15);
          v50(v109, v15);
          v37 = v147;
          goto LABEL_48;
        case 2u:
          v156 = 0;
          [v40 getPhoneValue:&v156 label:0];
          v69 = v156;
          if (!v156)
          {
            goto LABEL_38;
          }

          v156 = 0;
          v157 = 0;
          v70 = v69;
          static String._conditionallyBridgeFromObjectiveC(_:result:)();

          v71 = v157;
          if (!v157)
          {

            goto LABEL_51;
          }

          v72 = v156;
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v73 = type metadata accessor for Logger();
          __swift_project_value_buffer(v73, static Logging.search);

          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = OUTLINED_FUNCTION_51_0();
            v77 = swift_slowAlloc();
            v156 = v77;
            *v76 = v142;

            v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v76 + 4) = v78;
            v31 = v145;
            _os_log_impl(&dword_25D85C000, v74, v75, "Found phone number: %{sensitive}s", v76, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v77);
            v37 = v147;
            OUTLINED_FUNCTION_42_0();
            v15 = v144;
            OUTLINED_FUNCTION_42_0();
          }

          v36 = v146;
          specialized Set._Variant.insert(_:)(&v156, v72, v71);

          goto LABEL_29;
        case 3u:
          v60 = [v40 value];
          v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v64 = type metadata accessor for Logger();
          __swift_project_value_buffer(v64, static Logging.search);

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v65, v66))
          {
            OUTLINED_FUNCTION_51_0();
            v67 = OUTLINED_FUNCTION_94_10();
            OUTLINED_FUNCTION_8_49(v67);
            v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v36 + 4) = v68;
            v37 = v147;
            _os_log_impl(&dword_25D85C000, v65, v66, "Found address: %{sensitive}s", v36, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v31);
            v31 = v145;
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_4_58();
          }

          goto LABEL_43;
        case 5u:
          v156 = 0;
          v158[0] = 0;
          [v40 getFlightNumber:&v156 airline:v158];
          if (v158[0])
          {
            v79 = v156;
            v156 = 0;
            v157 = 0;
            v80 = v158[0];
            v81 = v79;
            static String._conditionallyBridgeFromObjectiveC(_:result:)();

            if (v157)
            {
              if (v81)
              {
                v156 = 0;
                v157 = 0;
                static String._conditionallyBridgeFromObjectiveC(_:result:)();
                if (v157)
                {
                  FlightDesignator.init(number:airline:)();
                  if (one-time initialization token for search != -1)
                  {
                    OUTLINED_FUNCTION_1_31();
                    swift_once();
                  }

                  v82 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v82, static Logging.search);
                  v83 = *v132;
                  v84 = v133;
                  (*v132)(v133, v36, v137);
                  v85 = Logger.logObject.getter();
                  v86 = static os_log_type_t.debug.getter();
                  v87 = os_log_type_enabled(v85, v86);
                  v88 = v129;
                  v141 = (v129 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
                  if (v87)
                  {
                    v89 = OUTLINED_FUNCTION_51_0();
                    v125 = v89;
                    v127 = swift_slowAlloc();
                    v158[0] = v127;
                    *v89 = v134;
                    v126 = v85;
                    v90 = FlightDesignator.airline.getter();
                    v128 = v83;
                    v92 = v91;
                    v93 = FlightDesignator.number.getter();
                    v124 = v86;
                    v94 = v93;
                    v96 = v95;
                    v156 = v90;
                    v157 = v92;

                    MEMORY[0x25F89F6C0](v94, v96);
                    v83 = v128;

                    v97 = *v88;
                    (*v88)(v133, v137);
                    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                    v99 = v125;
                    *(v125 + 1) = v98;
                    v100 = v126;
                    _os_log_impl(&dword_25D85C000, v126, v124, "Found flight: %s", v99, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1Tm(v127);
                    OUTLINED_FUNCTION_42_0();
                    OUTLINED_FUNCTION_42_0();
                  }

                  else
                  {

                    v112 = v84;
                    v97 = *v88;
                    (*v88)(v112, v137);
                  }

                  v113 = v131;
                  v36 = v146;
                  v114 = v137;
                  v83(v131, v146, v137);
                  v115 = v130;
                  specialized Set._Variant.insert(_:)(v130, v113);

                  v97(v115, v114);
                  v97(v36, v114);

                  v15 = v144;
                  v37 = v147;
                  v38 = v148;
LABEL_48:
                  v31 = v145;
                }

                else
                {

LABEL_29:

                  v38 = v148;
                }
              }

              else
              {

LABEL_44:
              }
            }

            else
            {

LABEL_51:
            }

            v34 = v149;
          }

          else
          {
LABEL_38:
          }

LABEL_53:
          if (v34 != ++v35)
          {
            continue;
          }

          v117 = v154;
          v116 = v155;
          v118 = v152;
          v119 = v153;
          v120 = v151;
          break;
        case 7u:
          v101 = [v40 value];
          v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v102;

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v103 = type metadata accessor for Logger();
          __swift_project_value_buffer(v103, static Logging.search);

          v65 = Logger.logObject.getter();
          v104 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v65, v104))
          {
            OUTLINED_FUNCTION_51_0();
            v105 = OUTLINED_FUNCTION_94_10();
            OUTLINED_FUNCTION_8_49(v105);
            v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v36 + 4) = v106;
            v37 = v147;
            _os_log_impl(&dword_25D85C000, v65, v104, "Found proper name: %{sensitive}s", v36, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v31);
            v31 = v145;
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_4_58();
          }

LABEL_43:

          v38 = v148;
          specialized Set._Variant.insert(_:)(&v156, v61, v63);

          goto LABEL_44;
        default:
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          __swift_project_value_buffer(v52, static Logging.search);
          v53 = v40;
          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v156 = swift_slowAlloc();
            *v56 = v136;
            LODWORD(v158[0]) = [v53 category];
            type metadata accessor for DDResultCategory(0);
            String.init<A>(describing:)();
            v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v56 + 4) = v57;
            *(v56 + 12) = 2085;
            v58 = [v53 value];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v31 = v145;
            v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            v37 = v147;

            *(v56 + 14) = v59;
            v36 = v146;
            _os_log_impl(&dword_25D85C000, v54, v55, "Found Data Detector result of unhandled category: %s, value: %{sensitive}s", v56, 0x16u);
            swift_arrayDestroy();
            v34 = v149;
            OUTLINED_FUNCTION_42_0();
            v38 = v148;
            OUTLINED_FUNCTION_42_0();
          }

          else
          {
          }

          goto LABEL_53;
      }

      break;
    }
  }

  else
  {

    v120 = MEMORY[0x277D84FA0];
    v118 = MEMORY[0x277D84FA0];
    v119 = MEMORY[0x277D84FA0];
    v117 = MEMORY[0x277D84FA0];
    v116 = MEMORY[0x277D84FA0];
  }

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v116);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v117);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC10Foundation3URLV_ShyAFGTt0g5(v119);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v118);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC15OmniSearchTypes16FlightDesignatorV_ShyAFGTt0g5(v120);
  result = DataDetectorResults.init(phoneNumbers:addresses:links:properNames:flightDesignators:)();
  v122 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DataDetectorsController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, char a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v22 = a2 & 1;
  specialized RawRepresentable<>._rawHashValue(seed:)();
  v7 = *(v5 + 32);
  OUTLINED_FUNCTION_6_46();
  if ((*(v5 + 56 + v9) >> v3))
  {
    v10 = ~v8;
    if (a2)
    {
      v11 = 0x6E776F6E6B6E75;
    }

    else
    {
      v11 = 0x7373654D6C69616DLL;
    }

    if (a2)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xEB00000000656761;
    }

    while (1)
    {
      v13 = *(*(v5 + 48) + v3) ? 0x6E776F6E6B6E75 : 0x7373654D6C69616DLL;
      v14 = *(*(v5 + 48) + v3) ? 0xE700000000000000 : 0xEB00000000656761;
      if (v13 == v11 && v14 == v12)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_22;
      }

      v3 = (v3 + 1) & v10;
      if (((*(v5 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    result = 0;
    v19 = *(*(v5 + 48) + v3);
  }

  else
  {
LABEL_20:
    v17 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    v19 = v22;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v22, v3, isUniquelyReferenced_nonNull_native);
    *v21 = v24;
    result = 1;
  }

  *a1 = v19;
  return result;
}

BOOL specialized Set._Variant.insert(_:)(char *a1, char *a2)
{
  v25 = a1;
  v4 = type metadata accessor for FlightDesignator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type FlightDesignator and conformance FlightDesignator, MEMORY[0x277D37238]);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type FlightDesignator and conformance FlightDesignator, MEMORY[0x277D37238]);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

{
  v25 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v4 = v2;
  v7 = *v2;
  v8 = *(*v2 + 40);
  specialized RawRepresentable<>._rawHashValue(seed:)();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_6_46();
  if ((*(v7 + 56 + v11) >> v3))
  {
    v12 = ~v10;
    OUTLINED_FUNCTION_13_35();
    OUTLINED_FUNCTION_44_6();
    v58 = v13;
    v59 = v14;
    OUTLINED_FUNCTION_13_35();
    OUTLINED_FUNCTION_44_6();
    v56 = v15;
    v57 = v16;
    OUTLINED_FUNCTION_13_35();
    OUTLINED_FUNCTION_44_6();
    v54 = v17;
    v55 = v18;
    OUTLINED_FUNCTION_13_35();
    OUTLINED_FUNCTION_44_6();
    v52 = v19;
    v53 = v20;
    OUTLINED_FUNCTION_44_6();
    v51 = v21;
    while (1)
    {
      v22 = 0xE500000000000000;
      v23 = 0x6C69616D65;
      switch(*(*(v7 + 48) + v3))
      {
        case 1:
          v23 = 0x4D53656C69626F6DLL;
          v22 = 0xE900000000000053;
          break;
        case 2:
          v22 = 0xE800000000000000;
          v23 = 0x7261646E656C6163;
          break;
        case 3:
          v23 = 0x6F746F6870;
          break;
        case 4:
          v22 = 0xE600000000000000;
          v23 = 0x726577736E61;
          break;
        case 5:
          v22 = 0xE400000000000000;
          v23 = 1702129518;
          break;
        case 6:
          v22 = 0xE800000000000000;
          v23 = 0x7265646E696D6572;
          break;
        case 7:
          v23 = 0x736948656E6F6870;
          v24 = 2037542772;
          goto LABEL_30;
        case 8:
          OUTLINED_FUNCTION_8_30();
          v23 = v31 + 2;
          v22 = v51;
          break;
        case 9:
          v23 = 0x456C616E72756F6ALL;
          v22 = 0xEC0000007972746ELL;
          break;
        case 0xA:
          OUTLINED_FUNCTION_16_40();
          v22 = v30 + 28;
          break;
        case 0xB:
          v22 = 0xE600000000000000;
          v23 = 0x697261666173;
          break;
        case 0xC:
          v22 = 0xE400000000000000;
          v23 = 1701603686;
          break;
        case 0xD:
          v23 = 0xD000000000000011;
          v22 = v52;
          break;
        case 0xE:
          v23 = 0x615074656C6C6177;
          v22 = 0xEA00000000007373;
          break;
        case 0xF:
          v22 = 0xE700000000000000;
          v23 = 0x746361746E6F63;
          break;
        case 0x10:
          v23 = 0xD000000000000011;
          v22 = v53;
          break;
        case 0x11:
          OUTLINED_FUNCTION_8_30();
          v23 = v26 - 1;
          v22 = v54;
          break;
        case 0x12:
          OUTLINED_FUNCTION_8_30();
          v23 = v29 + 4;
          v22 = v55;
          break;
        case 0x13:
          v23 = 0x65526C61626F6C67;
          v24 = 1953265011;
          goto LABEL_30;
        case 0x14:
          OUTLINED_FUNCTION_8_30();
          v23 = v27 + 5;
          v22 = v56;
          break;
        case 0x15:
          OUTLINED_FUNCTION_16_40();
          v22 = v28 + 38;
          break;
        case 0x16:
          OUTLINED_FUNCTION_8_30();
          v23 = v33 + 3;
          v22 = v57;
          break;
        case 0x17:
          v23 = 0x676E697070696873;
          v22 = 0xED0000726564724FLL;
          break;
        case 0x18:
          OUTLINED_FUNCTION_8_30();
          v23 = v25 + 5;
          v22 = v58;
          break;
        case 0x19:
          v23 = 0x646574656B636974;
          v24 = 2003789907;
LABEL_30:
          v22 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x1A:
          v23 = 0x6D746E696F707061;
          v22 = 0xEB00000000746E65;
          break;
        case 0x1B:
          v23 = 0x7974726170;
          break;
        case 0x1C:
          v22 = 0xE400000000000000;
          v23 = 1885958772;
          break;
        case 0x1D:
          v22 = 0xE800000000000000;
          v23 = 0x6E65657263536E6FLL;
          break;
        case 0x1E:
          OUTLINED_FUNCTION_8_30();
          v23 = v32 + 3;
          v22 = v59;
          break;
        default:
          break;
      }

      v34 = 0xE500000000000000;
      v35 = 0x6C69616D65;
      switch(a2)
      {
        case 1:
          v35 = 0x4D53656C69626F6DLL;
          v34 = 0xE900000000000053;
          break;
        case 2:
          v34 = 0xE800000000000000;
          v35 = 0x7261646E656C6163;
          break;
        case 3:
          v35 = 0x6F746F6870;
          break;
        case 4:
          v34 = 0xE600000000000000;
          v35 = 0x726577736E61;
          break;
        case 5:
          v34 = 0xE400000000000000;
          v35 = 1702129518;
          break;
        case 6:
          v34 = 0xE800000000000000;
          v35 = 0x7265646E696D6572;
          break;
        case 7:
          v35 = 0x736948656E6F6870;
          v36 = 2037542772;
          goto LABEL_62;
        case 8:
          OUTLINED_FUNCTION_8_30();
          v35 = v43 + 2;
          v34 = v51;
          break;
        case 9:
          v35 = 0x456C616E72756F6ALL;
          v34 = 0xEC0000007972746ELL;
          break;
        case 10:
          OUTLINED_FUNCTION_16_40();
          v34 = v42 + 28;
          break;
        case 11:
          v34 = 0xE600000000000000;
          v35 = 0x697261666173;
          break;
        case 12:
          v34 = 0xE400000000000000;
          v35 = 1701603686;
          break;
        case 13:
          v35 = 0xD000000000000011;
          v34 = v52;
          break;
        case 14:
          v35 = 0x615074656C6C6177;
          v34 = 0xEA00000000007373;
          break;
        case 15:
          v34 = 0xE700000000000000;
          v35 = 0x746361746E6F63;
          break;
        case 16:
          v35 = 0xD000000000000011;
          v34 = v53;
          break;
        case 17:
          OUTLINED_FUNCTION_8_30();
          v35 = v38 - 1;
          v34 = v54;
          break;
        case 18:
          OUTLINED_FUNCTION_8_30();
          v35 = v41 + 4;
          v34 = v55;
          break;
        case 19:
          v35 = 0x65526C61626F6C67;
          v36 = 1953265011;
          goto LABEL_62;
        case 20:
          OUTLINED_FUNCTION_8_30();
          v35 = v39 + 5;
          v34 = v56;
          break;
        case 21:
          OUTLINED_FUNCTION_16_40();
          v34 = v40 + 38;
          break;
        case 22:
          OUTLINED_FUNCTION_8_30();
          v35 = v45 + 3;
          v34 = v57;
          break;
        case 23:
          v35 = 0x676E697070696873;
          v34 = 0xED0000726564724FLL;
          break;
        case 24:
          OUTLINED_FUNCTION_8_30();
          v35 = v37 + 5;
          v34 = v58;
          break;
        case 25:
          v35 = 0x646574656B636974;
          v36 = 2003789907;
LABEL_62:
          v34 = v36 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 26:
          v35 = 0x6D746E696F707061;
          v34 = 0xEB00000000746E65;
          break;
        case 27:
          v35 = 0x7974726170;
          break;
        case 28:
          v34 = 0xE400000000000000;
          v35 = 1885958772;
          break;
        case 29:
          v34 = 0xE800000000000000;
          v35 = 0x6E65657263536E6FLL;
          break;
        case 30:
          OUTLINED_FUNCTION_8_30();
          v35 = v44 + 3;
          v34 = v59;
          break;
        default:
          break;
      }

      if (v23 == v35 && v22 == v34)
      {
        break;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v47)
      {
        goto LABEL_75;
      }

      v3 = (v3 + 1) & v12;
      if (((*(v7 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
      {
        goto LABEL_73;
      }
    }

LABEL_75:
    result = 0;
    LOBYTE(a2) = *(*(v7 + 48) + v3);
  }

  else
  {
LABEL_73:
    v48 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *v4;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v3, isUniquelyReferenced_nonNull_native);
    *v4 = v60;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7ToolKit10TypedValueO10OmniSearchE0eF7Schemas33_F4902E7748E6CBF6DA574BE514694318LLOGMd, &_ss11_SetStorageCy7ToolKit10TypedValueO10OmniSearchE0eF7Schemas33_F4902E7748E6CBF6DA574BE514694318LLOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v41 = type metadata accessor for FlightDesignator();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15OmniSearchTypes16FlightDesignatorVGMd, &_ss11_SetStorageCy15OmniSearchTypes16FlightDesignatorVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type FlightDesignator and conformance FlightDesignator, MEMORY[0x277D37238]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v41 = type metadata accessor for URL();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation3URLVGMd, &_ss11_SetStorageCy10Foundation3URLVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10OmniSearch0D9ResultKeyOGMd, &_ss11_SetStorageCy10OmniSearch0D9ResultKeyOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    Hasher.init(_seed:)();
    SearchResultKey.rawValue.getter();
    String.hash(into:)();

    result = Hasher._finalize()();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_27;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = specialized RawRepresentable<>._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    if (v5)
    {
      v12 = 0x6E776F6E6B6E75;
    }

    else
    {
      v12 = 0x7373654D6C69616DLL;
    }

    if (v5)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xEB00000000656761;
    }

    do
    {
      v14 = *(*(v8 + 48) + a2) ? 0x6E776F6E6B6E75 : 0x7373654D6C69616DLL;
      v15 = *(*(v8 + 48) + a2) ? 0xE700000000000000 : 0xEB00000000656761;
      if (v14 == v12 && v15 == v13)
      {
        goto LABEL_30;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_31;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v23 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_30:

LABEL_31:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_80;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_80;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = specialized RawRepresentable<>._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = 0xE500000000000000;
      v13 = 0x6C69616D65;
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          v13 = 0x4D53656C69626F6DLL;
          v12 = 0xE900000000000053;
          break;
        case 2:
          v12 = 0xE800000000000000;
          v13 = 0x7261646E656C6163;
          break;
        case 3:
          v13 = 0x6F746F6870;
          break;
        case 4:
          v12 = 0xE600000000000000;
          v13 = 0x726577736E61;
          break;
        case 5:
          v12 = 0xE400000000000000;
          v13 = 1702129518;
          break;
        case 6:
          v12 = 0xE800000000000000;
          v13 = 0x7265646E696D6572;
          break;
        case 7:
          v13 = 0x736948656E6F6870;
          v14 = 2037542772;
          goto LABEL_37;
        case 8:
          v13 = 0xD000000000000013;
          v12 = 0x800000025DBEEC90;
          break;
        case 9:
          v12 = 0xEC0000007972746ELL;
          v13 = 0x456C616E72756F6ALL;
          break;
        case 0xA:
          v12 = 0xE90000000000006FLL;
          v13 = 0x6D654D6563696F76;
          break;
        case 0xB:
          v12 = 0xE600000000000000;
          v13 = 0x697261666173;
          break;
        case 0xC:
          v12 = 0xE400000000000000;
          v13 = 1701603686;
          break;
        case 0xD:
          v13 = 0xD000000000000011;
          v12 = 0x800000025DBEECC0;
          break;
        case 0xE:
          v13 = 0x615074656C6C6177;
          v12 = 0xEA00000000007373;
          break;
        case 0xF:
          v12 = 0xE700000000000000;
          v13 = 0x746361746E6F63;
          break;
        case 0x10:
          v13 = 0xD000000000000011;
          v12 = 0x800000025DBEDF90;
          break;
        case 0x11:
          v13 = 0xD000000000000010;
          v12 = 0x800000025DBEDFD0;
          break;
        case 0x12:
          v13 = 0xD000000000000015;
          v12 = 0x800000025DBEDFB0;
          break;
        case 0x13:
          v13 = 0x65526C61626F6C67;
          v14 = 1953265011;
          goto LABEL_37;
        case 0x14:
          v13 = 0xD000000000000016;
          v12 = 0x800000025DBEECF0;
          break;
        case 0x15:
          v12 = 0xE900000000000079;
          v13 = 0x7469746E45707061;
          break;
        case 0x16:
          v13 = 0xD000000000000014;
          v12 = 0x800000025DBEED10;
          break;
        case 0x17:
          v13 = 0x676E697070696873;
          v12 = 0xED0000726564724FLL;
          break;
        case 0x18:
          v13 = 0xD000000000000016;
          v12 = 0x800000025DBEE020;
          break;
        case 0x19:
          v13 = 0x646574656B636974;
          v14 = 2003789907;
LABEL_37:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x1A:
          v13 = 0x6D746E696F707061;
          v12 = 0xEB00000000746E65;
          break;
        case 0x1B:
          v13 = 0x7974726170;
          break;
        case 0x1C:
          v12 = 0xE400000000000000;
          v13 = 1885958772;
          break;
        case 0x1D:
          v12 = 0xE800000000000000;
          v13 = 0x6E65657263536E6FLL;
          break;
        case 0x1E:
          v13 = 0xD000000000000014;
          v12 = 0x800000025DBEED40;
          break;
        default:
          break;
      }

      v15 = 0xE500000000000000;
      v16 = 0x6C69616D65;
      switch(v5)
      {
        case 1:
          v16 = 0x4D53656C69626F6DLL;
          v15 = 0xE900000000000053;
          break;
        case 2:
          v15 = 0xE800000000000000;
          v16 = 0x7261646E656C6163;
          break;
        case 3:
          v16 = 0x6F746F6870;
          break;
        case 4:
          v15 = 0xE600000000000000;
          v16 = 0x726577736E61;
          break;
        case 5:
          v15 = 0xE400000000000000;
          v16 = 1702129518;
          break;
        case 6:
          v15 = 0xE800000000000000;
          v16 = 0x7265646E696D6572;
          break;
        case 7:
          v16 = 0x736948656E6F6870;
          v17 = 2037542772;
          goto LABEL_69;
        case 8:
          v16 = 0xD000000000000013;
          v15 = 0x800000025DBEEC90;
          break;
        case 9:
          v15 = 0xEC0000007972746ELL;
          v16 = 0x456C616E72756F6ALL;
          break;
        case 10:
          v15 = 0xE90000000000006FLL;
          v16 = 0x6D654D6563696F76;
          break;
        case 11:
          v15 = 0xE600000000000000;
          v16 = 0x697261666173;
          break;
        case 12:
          v15 = 0xE400000000000000;
          v16 = 1701603686;
          break;
        case 13:
          v16 = 0xD000000000000011;
          v15 = 0x800000025DBEECC0;
          break;
        case 14:
          v16 = 0x615074656C6C6177;
          v15 = 0xEA00000000007373;
          break;
        case 15:
          v15 = 0xE700000000000000;
          v16 = 0x746361746E6F63;
          break;
        case 16:
          v16 = 0xD000000000000011;
          v15 = 0x800000025DBEDF90;
          break;
        case 17:
          v16 = 0xD000000000000010;
          v15 = 0x800000025DBEDFD0;
          break;
        case 18:
          v16 = 0xD000000000000015;
          v15 = 0x800000025DBEDFB0;
          break;
        case 19:
          v16 = 0x65526C61626F6C67;
          v17 = 1953265011;
          goto LABEL_69;
        case 20:
          v16 = 0xD000000000000016;
          v15 = 0x800000025DBEECF0;
          break;
        case 21:
          v15 = 0xE900000000000079;
          v16 = 0x7469746E45707061;
          break;
        case 22:
          v16 = 0xD000000000000014;
          v15 = 0x800000025DBEED10;
          break;
        case 23:
          v16 = 0x676E697070696873;
          v15 = 0xED0000726564724FLL;
          break;
        case 24:
          v16 = 0xD000000000000016;
          v15 = 0x800000025DBEE020;
          break;
        case 25:
          v16 = 0x646574656B636974;
          v17 = 2003789907;
LABEL_69:
          v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 26:
          v16 = 0x6D746E696F707061;
          v15 = 0xEB00000000746E65;
          break;
        case 27:
          v16 = 0x7974726170;
          break;
        case 28:
          v15 = 0xE400000000000000;
          v16 = 1885958772;
          break;
        case 29:
          v15 = 0xE800000000000000;
          v16 = 0x6E65657263536E6FLL;
          break;
        case 30:
          v16 = 0xD000000000000014;
          v15 = 0x800000025DBEED40;
          break;
        default:
          break;
      }

      if (v13 == v16 && v12 == v15)
      {
        goto LABEL_83;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_84;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_80:
  v20 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v5;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_83:

LABEL_84:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = type metadata accessor for FlightDesignator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type FlightDesignator and conformance FlightDesignator, MEMORY[0x277D37238]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type FlightDesignator and conformance FlightDesignator, MEMORY[0x277D37238]);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    specialized _NativeSet.copy()(MEMORY[0x277D37238], &_ss11_SetStorageCy15OmniSearchTypes16FlightDesignatorVGMd, &_ss11_SetStorageCy15OmniSearchTypes16FlightDesignatorVGMR);
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6, v9);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

{
  v25 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    specialized _NativeSet.copy()(MEMORY[0x277CC9260], &_ss11_SetStorageCy10Foundation3URLVGMd, &_ss11_SetStorageCy10Foundation3URLVGMR);
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6, v9);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7ToolKit10TypedValueO10OmniSearchE0eF7Schemas33_F4902E7748E6CBF6DA574BE514694318LLOGMd, &_ss11_SetStorageCy7ToolKit10TypedValueO10OmniSearchE0eF7Schemas33_F4902E7748E6CBF6DA574BE514694318LLOGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10OmniSearch0D9ResultKeyOGMd, &_ss11_SetStorageCy10OmniSearch0D9ResultKeyOGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *specialized _NativeSet.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v30 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *v3;
  v16 = static _SetStorage.copy(original:)();
  v17 = v16;
  if (*(v15 + 16))
  {
    v31 = v6;
    result = (v16 + 56);
    v19 = ((1 << *(v17 + 32)) + 63) >> 6;
    if (v17 != v15 || result >= v15 + 56 + 8 * v19)
    {
      result = memmove(result, (v15 + 56), 8 * v19);
    }

    v21 = 0;
    *(v17 + 16) = *(v15 + 16);
    v22 = 1 << *(v15 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v15 + 56);
    v25 = (v22 + 63) >> 6;
    v32 = v10 + 32;
    for (i = v10 + 16; v24; result = (*(v10 + 32))(*(v17 + 48) + v29, v14, v7))
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v29 = *(v10 + 72) * (v26 | (v21 << 6));
      (*(v10 + 16))(v14, *(v15 + 48) + v29, v7);
    }

    v27 = v21;
    while (1)
    {
      v21 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v21 >= v25)
      {

        v6 = v31;
        goto LABEL_21;
      }

      v28 = *(v15 + 56 + 8 * v21);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v17;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7ToolKit10TypedValueO10OmniSearchE0eF7Schemas33_F4902E7748E6CBF6DA574BE514694318LLOGMd, &_ss11_SetStorageCy7ToolKit10TypedValueO10OmniSearchE0eF7Schemas33_F4902E7748E6CBF6DA574BE514694318LLOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();

        result = Hasher._finalize()();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for FlightDesignator();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15OmniSearchTypes16FlightDesignatorVGMd, &_ss11_SetStorageCy15OmniSearchTypes16FlightDesignatorVGMR);
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
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type FlightDesignator and conformance FlightDesignator, MEMORY[0x277D37238]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for URL();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation3URLVGMd, &_ss11_SetStorageCy10Foundation3URLVGMR);
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
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10OmniSearch0D9ResultKeyOGMd, &_ss11_SetStorageCy10OmniSearch0D9ResultKeyOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        Hasher.init(_seed:)();
        SearchResultKey.rawValue.getter();
        String.hash(into:)();

        result = Hasher._finalize()();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void OUTLINED_FUNCTION_4_58()
{
  v2 = *(v0 - 200);

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_8_49(uint64_t a1)
{
  *(v2 - 120) = a1;
  *v1 = *(v2 - 240);
}

void OUTLINED_FUNCTION_9_48()
{

  JUMPOUT(0x25F89F6C0);
}

void OUTLINED_FUNCTION_10_46()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t DialogExperience.__allocating_init(_:card:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  DialogExperience.init(_:card:)(a1, a2);
  return v7;
}

uint64_t IntentFile.init(experiences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59_4();
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (a1 < 0)
  {
    v24 = a1;
  }

  else
  {
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!MEMORY[0x25F8A01B0](v24))
  {
    goto LABEL_18;
  }

LABEL_3:
  v7 = specialized Array.count.getter(a1);
  if (v7)
  {
    v8 = v7;
    v26 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x25F89FFD0](v9, a1);
        }

        else
        {
          v10 = *(a1 + 8 * v9 + 32);
        }

        ++v9;
        swift_beginAccess();
        v11 = *(v10 + 16);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = *(v26 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v8 != v9);
      goto LABEL_10;
    }

    __break(1u);
    OUTLINED_FUNCTION_35_0();
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logging.search);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      OUTLINED_FUNCTION_100_3(&dword_25D85C000, v17, v18, "Failed to archive experience!");
      MEMORY[0x25F8A1050](v16, -1, -1);
    }

LABEL_19:
    type metadata accessor for IntentFile();
    OUTLINED_FUNCTION_92();
    return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }

LABEL_10:

  IntentFile.init(experiences:fileName:)();
  v19 = type metadata accessor for IntentFile();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v19);
  (*(*(v19 - 8) + 32))(a2, v2, v19);
  v20 = a2;
  v21 = 0;
  v22 = 1;
  v23 = v19;
  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

OmniSearch::DialogExperience::CodingKeys_optional __swiftcall DialogExperience.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v3 = stringValue._countAndFlagsBits == 0x6E65697265707865 && stringValue._object == 0xEA00000000006563;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (countAndFlagsBits == 0x647261436673 && object == 0xE600000000000000)
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

Swift::Int DialogExperience.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1 & 1);
  return Hasher._finalize()();
}

uint64_t DialogExperience.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x647261436673;
  }

  else
  {
    return 0x6E65697265707865;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DialogExperience.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DialogExperience.CodingKeys.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DialogExperience.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DialogExperience.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t key path setter for DialogExperience.renderedDialog : DialogExperience(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlobalDialog();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  return (*(**a2 + 112))(v8);
}

uint64_t DialogExperience.renderedDialog.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_renderedDialog;
  swift_beginAccess();
  v4 = type metadata accessor for GlobalDialog();
  OUTLINED_FUNCTION_17(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t DialogExperience.renderedDialog.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_renderedDialog;
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  v4 = type metadata accessor for GlobalDialog();
  OUTLINED_FUNCTION_17(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t (*DialogExperience.renderedDialog.modify())()
{
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path setter for DialogExperience.sfCard : DialogExperience(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);
  v4 = *a1;
  return v3(v2);
}

void *DialogExperience.sfCard.getter()
{
  v1 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_sfCard;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DialogExperience.sfCard.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_sfCard;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*DialogExperience.sfCard.modify())()
{
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  return static ExtractedInfo.kExtractedInfoKey.modify;
}

uint64_t DialogExperience.print.getter(uint64_t (*a1)(uint64_t))
{
  v3 = type metadata accessor for GlobalDialog();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_27();
  OUTLINED_FUNCTION_133();
  v10 = (*(v9 + 104))();
  v11 = a1(v10);
  (*(v6 + 8))(v1, v3);
  return v11;
}

uint64_t DialogExperience.init(_:card:)(void *a1, uint64_t a2)
{
  v6 = type metadata accessor for GlobalDialog();
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_27();
  OUTLINED_FUNCTION_12_44();
  GlobalDialog.init(print:speak:)();
  *(v2 + OBJC_IVAR____TtC10OmniSearch16DialogExperience_sfCard) = 0;
  *(v2 + 16) = a1;
  type metadata accessor for GenericExperience();
  if (swift_dynamicCastClass())
  {
    v12 = a1;
    static GlobalSearchResponseProcessor.processRenderedDialog(experience:)();

    v13 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_renderedDialog;
    OUTLINED_FUNCTION_83_4();
    swift_beginAccess();
    (*(v9 + 40))(v2 + v13, v3, v6);
    swift_endAccess();
  }

  v14 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_sfCard;
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  v15 = *(v2 + v14);
  *(v2 + v14) = a2;

  return v2;
}

uint64_t DialogExperience.encode(to:)(void *a1)
{
  v4 = v1;
  v49 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch16DialogExperienceC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch16DialogExperienceC10CodingKeysOGMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_59_4();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = objc_opt_self();
  v14 = v4[2];
  v47 = 0;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v47];
  v16 = v47;
  if (v15)
  {
    v46 = v8;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v47 = v17;
    v48 = v19;
    lazy protocol witness table accessor for type Data and conformance Data();
    v20 = KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      v21 = *(v8 + 8);
      v22 = OUTLINED_FUNCTION_1_28();
      v23(v22);
      v24 = v17;
      v25 = v19;
    }

    else
    {
      v32 = (*(*v4 + 128))(v20);
      if (v32)
      {
        v33 = v32;
        v47 = 0;
        v34 = [v13 archivedDataWithRootObject:v32 requiringSecureCoding:1 error:&v47];
        v35 = v47;
        if (!v34)
        {
          v42 = v35;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          outlined consume of Data._Representation(v17, v19);

          v43 = *(v8 + 8);
          v44 = OUTLINED_FUNCTION_1_28();
          result = v45(v44);
          goto LABEL_6;
        }

        v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v47 = v36;
        v48 = v38;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v39 = *(v46 + 8);
        v40 = OUTLINED_FUNCTION_1_28();
        v41(v40);

        outlined consume of Data._Representation(v17, v19);
        v24 = v36;
        v25 = v38;
      }

      else
      {
        (*(v8 + 8))(v3, v6);
        v24 = v17;
        v25 = v19;
      }
    }

    result = outlined consume of Data._Representation(v24, v25);
  }

  else
  {
    v27 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v28 = *(v8 + 8);
    v29 = OUTLINED_FUNCTION_1_28();
    result = v30(v29);
  }

LABEL_6:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DialogExperience.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DialogExperience.init(from:)(a1);
  return v5;
}

uint64_t DialogExperience.init(from:)(uint64_t *a1)
{
  v5 = type metadata accessor for GlobalDialog();
  v6 = OUTLINED_FUNCTION_14(v5);
  v40 = v7;
  v41 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_27();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch16DialogExperienceC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch16DialogExperienceC10CodingKeysOGMR);
  OUTLINED_FUNCTION_14(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  v14 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_renderedDialog;
  OUTLINED_FUNCTION_12_44();
  GlobalDialog.init(print:speak:)();
  v42 = a1;
  v43 = v1;
  *(v1 + OBJC_IVAR____TtC10OmniSearch16DialogExperience_sfCard) = 0;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v20 = v1;
  }

  else
  {
    v39 = v14;
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_4_59();
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for Experience();
    v19 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v20 = v1;
    v38 = v44;
    v37 = v19;
    if (v19)
    {
      *(v1 + 16) = v19;
      v21 = v19;
      type metadata accessor for GenericExperience();
      v22 = swift_dynamicCastClass();
      v23 = v21;
      if (v22)
      {
        static GlobalSearchResponseProcessor.processRenderedDialog(experience:)();
        OUTLINED_FUNCTION_83_4();
        swift_beginAccess();
        v20 = v43;
        (*(v40 + 40))(v43 + v39, v3, v41);
        swift_endAccess();
      }

      LOBYTE(v44) = 1;
      if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
      {
        v27 = OUTLINED_FUNCTION_1_81();
        v28(v27);
        outlined consume of Data._Representation(v38, v45);

        v29 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_sfCard;
        OUTLINED_FUNCTION_6_47();
        swift_beginAccess();
        v30 = *(v20 + v29);
        *(v20 + v29) = 0;
LABEL_15:

        goto LABEL_5;
      }

      OUTLINED_FUNCTION_4_59();
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
      v31 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v32 = v31;
      if (v31)
      {
        v33 = OUTLINED_FUNCTION_1_81();
        v34(v33);
        outlined consume of Data._Representation(v38, v45);

        outlined consume of Data._Representation(v44, v45);
        v35 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_sfCard;
        OUTLINED_FUNCTION_6_47();
        swift_beginAccess();
        v30 = *(v20 + v35);
        *(v20 + v35) = v32;
        goto LABEL_15;
      }

      lazy protocol witness table accessor for type OmniSearchError and conformance OmniSearchError();
      swift_allocError();
      OUTLINED_FUNCTION_15_41(v36, 0xD00000000000001CLL);
      outlined consume of Data._Representation(v38, v45);
      outlined consume of Data._Representation(v44, v45);
    }

    else
    {
      lazy protocol witness table accessor for type OmniSearchError and conformance OmniSearchError();
      swift_allocError();
      OUTLINED_FUNCTION_15_41(v24, 0xD000000000000020);
      outlined consume of Data._Representation(v44, v45);
    }

    v25 = OUTLINED_FUNCTION_1_81();
    v26(v25);
    if (v37)
    {

      goto LABEL_5;
    }
  }

  (*(v40 + 8))(v20 + OBJC_IVAR____TtC10OmniSearch16DialogExperience_renderedDialog, v41);

  type metadata accessor for DialogExperience();
  v16 = *(*v20 + 48);
  v17 = *(*v20 + 52);
  swift_deallocPartialClassInstance();
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  return v20;
}

uint64_t static DialogExperience.== infix(_:_:)(void *a1, void *a2)
{
  v4 = (*(*a1 + 128))();
  v5 = (*(*a2 + 128))();
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
      v7 = static NSObject.== infix(_:_:)();

      if ((v7 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
      v8 = a1[2];
      v9 = a2[2];
      return static NSObject.== infix(_:_:)() & 1;
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t DialogExperience.deinit()
{
  v1 = OBJC_IVAR____TtC10OmniSearch16DialogExperience_renderedDialog;
  v2 = type metadata accessor for GlobalDialog();
  OUTLINED_FUNCTION_17(v2);
  (*(v3 + 8))(v0 + v1);

  return v0;
}

uint64_t DialogExperience.__deallocating_deinit()
{
  DialogExperience.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Decodable.init(from:) in conformance DialogExperience@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t IntentFile.init(experiences:fileName:)()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  v2 = objc_opt_self();
  type metadata accessor for Experience();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13[0] = 0;
  v4 = [v2 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v13];

  v5 = v13[0];
  if (v4)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UTType();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    result = IntentFile.init(data:filename:type:)();
  }

  else
  {
    v11 = v5;

    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IntentFile.init(audioResults:fileName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_4();
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:

LABEL_15:
    v14 = 1;
    goto LABEL_16;
  }

  if (a1 < 0)
  {
    v23 = a1;
  }

  else
  {
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!MEMORY[0x25F8A01B0](v23))
  {
    goto LABEL_14;
  }

LABEL_3:
  v6 = objc_opt_self();
  type metadata accessor for AudioResult();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v27[0] = 0;
  v8 = [v6 archivedDataWithRootObject:isa requiringSecureCoding:0 error:v27];

  v9 = v27[0];
  if (!v8)
  {
    v15 = v9;

    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logging.search);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      OUTLINED_FUNCTION_100_3(&dword_25D85C000, v21, v22, "Failed to archive audio results");
      MEMORY[0x25F8A1050](v20, -1, -1);
    }

    goto LABEL_15;
  }

  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for UTType();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  IntentFile.init(data:filename:type:)();
  v14 = 0;
LABEL_16:
  v24 = type metadata accessor for IntentFile();
  result = __swift_storeEnumTagSinglePayload(a2, v14, 1, v24);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t lazy protocol witness table accessor for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys;
  if (!lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys;
  if (!lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys;
  if (!lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys;
  if (!lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogExperience.CodingKeys and conformance DialogExperience.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DialogExperience()
{
  result = type metadata singleton initialization cache for DialogExperience;
  if (!type metadata singleton initialization cache for DialogExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DialogExperience()
{
  result = type metadata accessor for GlobalDialog();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogExperience.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_4_59()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_15_41@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;

  return swift_willThrow();
}

uint64_t ECRClientPersonResult.visualIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ECRClientPersonResult.contactIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ECRClientPersonResult.names.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ECRClientPersonResult.phoneNumbers.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ECRClientPersonResult.emails.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall ECRClientPersonResult.init()(OmniSearch::ECRClientPersonResult *__return_ptr retstr)
{
  v1 = MEMORY[0x277D84F90];
  retstr->visualIDs._rawValue = MEMORY[0x277D84F90];
  retstr->contactIDs._rawValue = v1;
  retstr->names._rawValue = v1;
  retstr->phoneNumbers._rawValue = v1;
  retstr->emails._rawValue = v1;
}

void __swiftcall ECRClientPersonResult.init(visualIDs:contactIDs:names:phoneNumbers:emails:)(OmniSearch::ECRClientPersonResult *__return_ptr retstr, Swift::OpaquePointer visualIDs, Swift::OpaquePointer contactIDs, Swift::OpaquePointer names, Swift::OpaquePointer phoneNumbers, Swift::OpaquePointer emails)
{
  retstr->visualIDs = visualIDs;
  retstr->contactIDs = contactIDs;
  retstr->names = names;
  retstr->phoneNumbers = phoneNumbers;
  retstr->emails = emails;
}

uint64_t ECRClient.init()()
{
  v1 = v0;
  type metadata accessor for ViewService();
  v2 = static ViewService.clientService.getter();
  v3 = ViewService.visualIdentifierView()();

  *(v1 + 16) = v3;
  return v1;
}

uint64_t ECRClient.person(named:phoneNumber:email:)()
{
  OUTLINED_FUNCTION_48();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[7] = v7;
  v8 = type metadata accessor for OSSignpostID();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v66 = v0;
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = v0[17];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[17];
    v6 = OUTLINED_FUNCTION_172();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v7, "OmniSearchService.personECRSearch", "", v6, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[15];
  v12 = v0[8];

  (*(v11 + 16))(v8, v9, v10);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[18] = OUTLINED_FUNCTION_38_6();
  v16 = *(v11 + 8);
  v17 = OUTLINED_FUNCTION_54_0();
  v18(v17);
  if (v12)
  {
    v20 = v0[7];
    v19 = v0[8];
    OUTLINED_FUNCTION_20_28();
    _StringGuts.grow(_:)(18);

    strcpy(v65, "searchByName('");
    HIBYTE(v65[1]) = -18;
    v21 = OUTLINED_FUNCTION_119();
    MEMORY[0x25F89F6C0](v21);
    OUTLINED_FUNCTION_26_28();
    v22 = v65[0];
    v23 = v65[1];
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v25 = v24;
    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      OUTLINED_FUNCTION_22_5(v26);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v25 = v57;
    }

    v25[2] = v27 + 1;
    v28 = &v25[2 * v27];
    v28[4] = v22;
    v28[5] = v23;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  if (v0[10])
  {
    v29 = v0[9];
    OUTLINED_FUNCTION_20_28();
    _StringGuts.grow(_:)(25);

    v65[0] = 0xD000000000000015;
    v65[1] = 0x800000025DBF96D0;
    v30 = OUTLINED_FUNCTION_116_1();
    MEMORY[0x25F89F6C0](v30);
    OUTLINED_FUNCTION_26_28();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = v25[2];
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v25 = v59;
    }

    v32 = v25[2];
    v31 = v25[3];
    if (v32 >= v31 >> 1)
    {
      OUTLINED_FUNCTION_22_5(v31);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v25 = v60;
    }

    v25[2] = v32 + 1;
    v33 = &v25[2 * v32];
    v33[4] = 0xD000000000000015;
    v33[5] = 0x800000025DBF96D0;
  }

  if (v0[12])
  {
    v34 = v0[11];
    OUTLINED_FUNCTION_20_28();
    _StringGuts.grow(_:)(19);

    v65[0] = 0x7942686372616573;
    v65[1] = 0xEF27286C69616D45;
    v35 = OUTLINED_FUNCTION_116_1();
    MEMORY[0x25F89F6C0](v35);
    OUTLINED_FUNCTION_26_28();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = v25[2];
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v25 = v62;
    }

    v37 = v25[2];
    v36 = v25[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      OUTLINED_FUNCTION_22_5(v36);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v25 = v63;
    }

    v25[2] = v38;
    v39 = &v25[2 * v37];
    v39[4] = 0x7942686372616573;
    v39[5] = 0xEF27286C69616D45;
  }

  else
  {
    v38 = v25[2];
  }

  v0[19] = v25;
  if (v38 <= 1)
  {
    if (v38)
    {
      v41 = v25[4];
      v42 = v25[5];
    }
  }

  else
  {
    v65[0] = 677670497;
    v65[1] = 0xE400000000000000;
    v0[6] = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type ProxyRepresentation<SearchEntity, SearchAnswerEntity> and conformance ProxyRepresentation<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    BidirectionalCollection<>.joined(separator:)();

    v40 = OUTLINED_FUNCTION_54_0();
    MEMORY[0x25F89F6C0](v40);

    MEMORY[0x25F89F6C0](41, 0xE100000000000000);
  }

  if (one-time initialization token for utilities != -1)
  {
    OUTLINED_FUNCTION_0_93();
  }

  v43 = type metadata accessor for Logger();
  v0[20] = OUTLINED_FUNCTION_200(v43, static Logging.utilities);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_51_0();
    v47 = swift_slowAlloc();
    v65[0] = v47;
    *v46 = 136315138;

    OUTLINED_FUNCTION_54_0();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v46 + 4) = v48;
    _os_log_impl(&dword_25D85C000, v44, v45, "Starting request with kgq: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v49 = objc_allocWithZone(MEMORY[0x277D1F418]);
  v50 = OUTLINED_FUNCTION_54_0();
  v52 = @nonobjc GDEntityResolutionRequest.init(kgq:text:mode:includeFeatures:includeInferredNames:)(v50, v51, 0, 0xE000000000000000, 4, 1, 0);
  v0[21] = v52;
  v53 = objc_allocWithZone(type metadata accessor for EntityResolutionTextClient());
  v0[22] = EntityResolutionTextClient.init(for:viaXPC:warmup:)();
  v54 = *(MEMORY[0x277D1F3C8] + 4);
  v64 = (*MEMORY[0x277D1F3C8] + MEMORY[0x277D1F3C8]);
  v55 = swift_task_alloc();
  v0[23] = v55;
  *v55 = v0;
  OUTLINED_FUNCTION_84(v55);

  return v64(v52);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v6 = *(v5 + 184);
  *v4 = *v1;
  v3[24] = v7;
  v3[25] = v0;

  if (v0)
  {
    v8 = v3[19];
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v1 = *(v0 + 168);

  v2 = *(v0 + 200);
  v3 = *(v0 + 136);
  v4 = *(v0 + 128);
  $defer #1 () in ECRClient.person(named:phoneNumber:email:)(*(v0 + 144), "OmniSearchService.personECRSearch");

  OUTLINED_FUNCTION_127();

  return v5();
}

void ECRClient.person(named:phoneNumber:email:)()
{
  v149 = v0;
  v1 = v0 + 16;
  v2 = *(v0 + 160);
  v3 = *(v0 + 192);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v139 = v0;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 192);
    OUTLINED_FUNCTION_51_0();
    v7 = OUTLINED_FUNCTION_10_23();
    v148 = v7;
    *v3 = 136642819;
    v8 = v6;
    v9 = [v8 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v3 + 1) = v10;
    OUTLINED_FUNCTION_19_39(&dword_25D85C000, v11, v5, "Fetched ECR result: %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_2_8();
  }

  v12 = [*(v0 + 192) rankedResults];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for GDRankerResult, 0x277D1F470);
  OUTLINED_FUNCTION_41_3();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = specialized Array.count.getter(v13);
  v15 = 0;
  v133 = v13 & 0xFFFFFFFFFFFFFF8;
  v135 = v13 & 0xC000000000000001;
  v123 = v13;
  v131 = v13 + 32;
  v16 = MEMORY[0x277D84F90];
  v137 = MEMORY[0x277D84F90];
  v125 = v14;
  while (v15 != v14)
  {
    if (v135)
    {
      v17 = MEMORY[0x25F89FFD0](v15, v123);
    }

    else
    {
      if (v15 >= *(v133 + 16))
      {
        goto LABEL_85;
      }

      v17 = *(v131 + 8 * v15);
    }

    v18 = __OFADD__(v15, 1);
    v19 = v15 + 1;
    if (v18)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      return;
    }

    v20 = v17;
    v21 = [v20 rankedItems];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for GDRankerItem, 0x277D1F468);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      if (v22 < 0)
      {
        v49 = v22;
      }

      else
      {
        v49 = v22 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = MEMORY[0x25F8A01B0](v49);
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v16 >> 62;
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v50 = v16;
      }

      else
      {
        v50 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      v25 = MEMORY[0x25F8A01B0](v50);
    }

    else
    {
      v25 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v25 + v23;
    if (__OFADD__(v25, v23))
    {
      goto LABEL_86;
    }

    v144 = v19;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v24)
      {
LABEL_21:
        if (v16 < 0)
        {
          v30 = v16;
        }

        else
        {
          v30 = v16 & 0xFFFFFFFFFFFFFF8;
        }

        MEMORY[0x25F8A01B0](v30);
      }

      else
      {
        v27 = v16 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
        v29 = *(v27 + 16);
      }

      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v27 = v16 & 0xFFFFFFFFFFFFFF8;
      OUTLINED_FUNCTION_33_30();
      goto LABEL_26;
    }

    if (v24)
    {
      goto LABEL_21;
    }

    v27 = v16 & 0xFFFFFFFFFFFFFF8;
    OUTLINED_FUNCTION_33_30();
    if (v28 < v26)
    {
      goto LABEL_20;
    }

LABEL_26:
    v141 = v23;
    v31 = *(v27 + 16);
    v32 = v28 - v31;
    v33 = v27 + 8 * v31;
    if (v22 >> 62)
    {
      if (v22 < 0)
      {
        v36 = v22;
      }

      else
      {
        v36 = v22 & 0xFFFFFFFFFFFFFF8;
      }

      v37 = MEMORY[0x25F8A01B0](v36);
      if (!v37)
      {
        goto LABEL_43;
      }

      v38 = v37;
      v39 = MEMORY[0x25F8A01B0](v36);
      if (v32 < v39)
      {
        goto LABEL_93;
      }

      if (v38 < 1)
      {
        goto LABEL_94;
      }

      v34 = v39;
      v127 = v27;
      v129 = v16;
      v40 = v33 + 32;
      OUTLINED_FUNCTION_0_90();
      lazy protocol witness table accessor for type ProxyRepresentation<SearchEntity, SearchAnswerEntity> and conformance ProxyRepresentation<A, B>(&lazy protocol witness table cache variable for type [GDRankerItem] and conformance [A], &_sSaySo12GDRankerItemCGMd, &_sSaySo12GDRankerItemCGMR);
      for (i = 0; i != v38; ++i)
      {
        v42 = OUTLINED_FUNCTION_116_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
        v44 = specialized protocol witness for Collection.subscript.read in conformance [A](v1, i, v22);
        v46 = *v45;
        v44(v1, 0);
        *(v40 + 8 * i) = v46;
      }

      v16 = v129;
      v14 = v125;
LABEL_39:

      v0 = v139;
      v15 = v144;
      if (v34 < v141)
      {
        goto LABEL_87;
      }

      if (v34 > 0)
      {
        v47 = *(v27 + 16);
        v18 = __OFADD__(v47, v34);
        v48 = v47 + v34;
        if (v18)
        {
          goto LABEL_91;
        }

        *(v27 + 16) = v48;
      }
    }

    else
    {
      v34 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        if (v32 < v34)
        {
          goto LABEL_92;
        }

        v35 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        swift_arrayInitWithCopy();
        goto LABEL_39;
      }

LABEL_43:

      v0 = v139;
      v15 = v144;
      if (v141 > 0)
      {
        goto LABEL_87;
      }
    }
  }

  v142 = *(v0 + 104);

  v148 = MEMORY[0x277D84F90];
  v51 = specialized Array.count.getter(v16);
  v52 = 0;
  v145 = v16 & 0xC000000000000001;
  v53 = v16 & 0xFFFFFFFFFFFFFF8;
  while (v51 != v52)
  {
    if (v145)
    {
      v54 = MEMORY[0x25F89FFD0](v52, v16);
    }

    else
    {
      if (v52 >= *(v53 + 16))
      {
        goto LABEL_89;
      }

      v54 = *(v16 + 8 * v52 + 32);
    }

    v55 = v54;
    v56 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_88;
    }

    v57 = v16;
    v58 = *(v142 + 16);
    v59 = [v54 entityID];
    v60 = outlined bridged method (pb) of @objc GDEntityIdentifier.stringValue.getter(v59);
    if (!v61)
    {
      goto LABEL_95;
    }

    v62 = v60;
    v63 = v61;

    v64 = MEMORY[0x25F89F4C0](v62, v63);

    v65 = [v58 personForIdentifier_];

    ++v52;
    v16 = v57;
    if (v65)
    {
      v66 = MEMORY[0x25F89F850]();
      OUTLINED_FUNCTION_37_21(v66, v67, v68, v69, v70, v71, v72, v73, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v142, v145, v148);
      if (v87)
      {
        OUTLINED_FUNCTION_25_29();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v137 = v148;
      v52 = v56;
    }
  }

  v74 = v137;
  v75 = specialized Array.count.getter(v137);
  v76 = 0;
  v77 = v137 & 0xC000000000000001;
  v146 = MEMORY[0x277D84F90];
  while (v75 != v76)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v76, v77 == 0, v74);
    if (v77)
    {
      v78 = MEMORY[0x25F89FFD0](v76, v74);
    }

    else
    {
      v78 = *(v74 + 8 * v76 + 32);
    }

    if (__OFADD__(v76, 1))
    {
      goto LABEL_90;
    }

    ECRClientPersonResult.init(viewPerson:)(v78, &v148);
    if (v148)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        OUTLINED_FUNCTION_30_27(isUniquelyReferenced_nonNull_native, v80, v81, v82, v83, v84, v85, v86, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v142, v146);
      }

      else
      {
        v97 = *(v146 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        OUTLINED_FUNCTION_30_27(v98, v99, v100, v101, v102, v103, v104, v105, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v142, v98);
      }

      if (v87)
      {
        OUTLINED_FUNCTION_22_5(v96);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        OUTLINED_FUNCTION_8_50(v106, v107, v108, v109, v110, v111, v112, v113, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v143, v106);
      }

      else
      {
        OUTLINED_FUNCTION_8_50(v88, v89, v90, v91, v92, v93, v94, v95, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v143, v147);
      }

      v74 = v137;
    }

    else
    {
      OUTLINED_FUNCTION_29_22();
      ++v76;
      v74 = v137;
    }
  }

  v114 = *(v139 + 192);
  v115 = *(v139 + 176);
  v117 = *(v139 + 144);
  v116 = *(v139 + 152);
  v119 = *(v139 + 128);
  v118 = *(v139 + 136);

  $defer #1 () in ECRClient.person(named:phoneNumber:email:)(v117, "OmniSearchService.personECRSearch");

  OUTLINED_FUNCTION_62();

  v120(v146);
}

void ECRClientPersonResult.init(viewPerson:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 contactIdentifiers];
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = a1;
  v4 = [a1 visualIdentifierObjects];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for GDVisualIdentifier, 0x277D1F4A8);
  OUTLINED_FUNCTION_41_3();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = specialized Array.count.getter(v5);
  v7 = 0;
  v32 = MEMORY[0x277D84F90];
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25F89FFD0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    v10 = [v8 visualIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v11 = StringProtocol.components<A>(separatedBy:)();

    if (v11[2])
    {
      v12 = v11[4];
      v13 = v11[5];

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (!v14)
      {

        goto LABEL_13;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v32 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = v18;
      }

      v15 = *(v32 + 16);
      if (v15 >= *(v32 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = v19;
      }

      *(v32 + 16) = v15 + 1;
      v16 = v32 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      ++v7;
    }

    else
    {

LABEL_13:
      ++v7;
    }
  }

  v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v32);
  v21 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v20);
  v22 = [v29 names];
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = [v29 phoneNumbers];
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = [v29 emails];
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = *(v23 + 16);

  if (v28 || *(v30 + 16) || *(v21 + 16))
  {
    *a2 = v21;
    a2[1] = v30;
    a2[2] = v23;
    a2[3] = v25;
    a2[4] = v27;
  }

  else
  {

    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }
}

uint64_t ECRClient.personNameAndIDsWithText(_:allowPrefixSearch:perToken:)()
{
  OUTLINED_FUNCTION_48();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 177) = v3;
  *(v1 + 176) = v4;
  *(v1 + 64) = v5;
  v6 = type metadata accessor for OSSignpostID();
  *(v1 + 88) = v6;
  v7 = *(v6 - 8);
  *(v1 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  v3[20] = v7;
  v3[21] = v0;

  if (v0)
  {
    v8 = v3[16];
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v147 = v0;
  if (one-time initialization token for utilities != -1)
  {
LABEL_96:
    OUTLINED_FUNCTION_0_93();
  }

  v1 = v0 + 16;
  v2 = *(v0 + 160);
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v3, static Logging.utilities);
  v4 = v0;
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v4 + 160);
    OUTLINED_FUNCTION_51_0();
    v9 = OUTLINED_FUNCTION_10_23();
    v146 = v9;
    *v5 = 136642819;
    v10 = v8;
    v11 = [v10 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v5 + 1) = v12;
    OUTLINED_FUNCTION_19_39(&dword_25D85C000, v13, v7, "Fetched ECR result: %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_2_8();
  }

  v123 = v4;
  v14 = [*(v4 + 160) rankedResults];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for GDRankerResult, 0x277D1F470);
  OUTLINED_FUNCTION_41_3();
  v0 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = specialized Array.count.getter(v0);
  v16 = 0;
  v133 = v0 & 0xFFFFFFFFFFFFFF8;
  v135 = v0 & 0xC000000000000001;
  v121 = v0;
  v131 = v0 + 32;
  v17 = MEMORY[0x277D84F90];
  v137 = MEMORY[0x277D84F90];
  v125 = v15;
  while (v16 != v15)
  {
    if (v135)
    {
      v18 = MEMORY[0x25F89FFD0](v16, v121);
    }

    else
    {
      if (v16 >= *(v133 + 16))
      {
        goto LABEL_86;
      }

      v18 = *(v131 + 8 * v16);
    }

    v19 = __OFADD__(v16, 1);
    v20 = v16 + 1;
    if (v19)
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v21 = v18;
    v22 = [v21 rankedItems];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for GDRankerItem, 0x277D1F468);
    v0 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v0 >> 62)
    {
      if (v0 < 0)
      {
        v49 = v0;
      }

      else
      {
        v49 = v0 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = MEMORY[0x25F8A01B0](v49);
    }

    else
    {
      v23 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v17 >> 62;
    if (v17 >> 62)
    {
      if (v17 < 0)
      {
        v50 = v17;
      }

      else
      {
        v50 = v17 & 0xFFFFFFFFFFFFFF8;
      }

      v25 = MEMORY[0x25F8A01B0](v50);
    }

    else
    {
      v25 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v25 + v23;
    if (__OFADD__(v25, v23))
    {
      goto LABEL_87;
    }

    v142 = v20;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v24)
      {
LABEL_22:
        if (v17 < 0)
        {
          v30 = v17;
        }

        else
        {
          v30 = v17 & 0xFFFFFFFFFFFFFF8;
        }

        MEMORY[0x25F8A01B0](v30);
      }

      else
      {
        v27 = v17 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v29 = *(v27 + 16);
      }

      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v27 = v17 & 0xFFFFFFFFFFFFFF8;
      OUTLINED_FUNCTION_33_30();
      goto LABEL_27;
    }

    if (v24)
    {
      goto LABEL_22;
    }

    v27 = v17 & 0xFFFFFFFFFFFFFF8;
    OUTLINED_FUNCTION_33_30();
    if (v28 < v26)
    {
      goto LABEL_21;
    }

LABEL_27:
    v139 = v23;
    v31 = *(v27 + 16);
    v32 = v28 - v31;
    v33 = v27 + 8 * v31;
    if (v0 >> 62)
    {
      if (v0 < 0)
      {
        v36 = v0;
      }

      else
      {
        v36 = v0 & 0xFFFFFFFFFFFFFF8;
      }

      v37 = MEMORY[0x25F8A01B0](v36);
      if (!v37)
      {
        goto LABEL_44;
      }

      v38 = v37;
      v39 = MEMORY[0x25F8A01B0](v36);
      if (v32 < v39)
      {
        goto LABEL_94;
      }

      if (v38 < 1)
      {
        goto LABEL_95;
      }

      v34 = v39;
      v127 = v27;
      v129 = v17;
      v40 = v33 + 32;
      OUTLINED_FUNCTION_0_90();
      lazy protocol witness table accessor for type ProxyRepresentation<SearchEntity, SearchAnswerEntity> and conformance ProxyRepresentation<A, B>(&lazy protocol witness table cache variable for type [GDRankerItem] and conformance [A], &_sSaySo12GDRankerItemCGMd, &_sSaySo12GDRankerItemCGMR);
      for (i = 0; i != v38; ++i)
      {
        v42 = OUTLINED_FUNCTION_116_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
        v44 = specialized protocol witness for Collection.subscript.read in conformance [A](v1, i, v0);
        v46 = *v45;
        v44(v1, 0);
        *(v40 + 8 * i) = v46;
      }

      v17 = v129;
      v15 = v125;
LABEL_40:

      v16 = v142;
      if (v34 < v139)
      {
        goto LABEL_88;
      }

      if (v34 > 0)
      {
        v47 = *(v27 + 16);
        v19 = __OFADD__(v47, v34);
        v48 = v47 + v34;
        if (v19)
        {
          goto LABEL_92;
        }

        *(v27 + 16) = v48;
      }
    }

    else
    {
      v34 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        if (v32 < v34)
        {
          goto LABEL_93;
        }

        v35 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        swift_arrayInitWithCopy();
        goto LABEL_40;
      }

LABEL_44:

      v16 = v142;
      if (v139 > 0)
      {
        goto LABEL_88;
      }
    }
  }

  v140 = *(v123 + 80);

  v146 = MEMORY[0x277D84F90];
  v0 = specialized Array.count.getter(v17);
  v51 = 0;
  v143 = v17 & 0xC000000000000001;
  v52 = v17 & 0xFFFFFFFFFFFFFF8;
  while (v0 != v51)
  {
    if (v143)
    {
      v53 = MEMORY[0x25F89FFD0](v51, v17);
    }

    else
    {
      if (v51 >= *(v52 + 16))
      {
        goto LABEL_90;
      }

      v53 = *(v17 + 8 * v51 + 32);
    }

    v54 = v53;
    v55 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_89;
    }

    v56 = v17;
    v57 = *(v140 + 16);
    v58 = [v53 entityID];
    result = outlined bridged method (pb) of @objc GDEntityIdentifier.stringValue.getter(v58);
    if (!v60)
    {
      __break(1u);
      return result;
    }

    v61 = result;
    v62 = v60;

    v63 = MEMORY[0x25F89F4C0](v61, v62);

    v64 = [v57 personForIdentifier_];

    ++v51;
    v17 = v56;
    if (v64)
    {
      v65 = MEMORY[0x25F89F850]();
      OUTLINED_FUNCTION_37_21(v65, v66, v67, v68, v69, v70, v71, v72, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v140, v143, v146);
      if (v86)
      {
        OUTLINED_FUNCTION_25_29();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v137 = v146;
      v51 = v55;
    }
  }

  v73 = *(v123 + 128);

  v74 = v137;
  v0 = specialized Array.count.getter(v137);
  v75 = 0;
  v76 = v137 & 0xC000000000000001;
  v144 = MEMORY[0x277D84F90];
  while (v0 != v75)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v75, v76 == 0, v74);
    if (v76)
    {
      v77 = MEMORY[0x25F89FFD0](v75, v74);
    }

    else
    {
      v77 = *(v74 + 8 * v75 + 32);
    }

    if (__OFADD__(v75, 1))
    {
      goto LABEL_91;
    }

    ECRClientPersonResult.init(viewPerson:)(v77, &v146);
    if (v146)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        OUTLINED_FUNCTION_30_27(isUniquelyReferenced_nonNull_native, v79, v80, v81, v82, v83, v84, v85, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v140, v144);
      }

      else
      {
        v96 = *(v144 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        OUTLINED_FUNCTION_30_27(v97, v98, v99, v100, v101, v102, v103, v104, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v140, v97);
      }

      if (v86)
      {
        OUTLINED_FUNCTION_22_5(v95);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        OUTLINED_FUNCTION_8_50(v105, v106, v107, v108, v109, v110, v111, v112, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v141, v105);
      }

      else
      {
        OUTLINED_FUNCTION_8_50(v87, v88, v89, v90, v91, v92, v93, v94, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v141, v145);
      }

      v74 = v137;
    }

    else
    {
      OUTLINED_FUNCTION_29_22();
      ++v75;
      v74 = v137;
    }
  }

  v113 = *(v123 + 160);
  v114 = *(v123 + 144);
  v116 = *(v123 + 112);
  v115 = *(v123 + 120);
  v117 = *(v123 + 104);

  $defer #1 () in ECRClient.person(named:phoneNumber:email:)(v115, "OmniSearchService.personNameAndIDsWithText");

  OUTLINED_FUNCTION_62();

  return v118(v144);
}

{
  v1 = *(v0 + 136);

  v2 = *(v0 + 168);
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  $defer #1 () in ECRClient.person(named:phoneNumber:email:)(*(v0 + 120), "OmniSearchService.personNameAndIDsWithText");

  OUTLINED_FUNCTION_127();

  return v5();
}

void ECRClient.personNameAndIDsWithText(_:allowPrefixSearch:perToken:)()
{
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v1 = *(v0 + 112);
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 112);
    v6 = OUTLINED_FUNCTION_172();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v7, "OmniSearchService.personNameAndIDsWithText", "", v6, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v27 = *(v0 + 176);
  v13 = (v0 + 72);
  v12 = *(v0 + 72);
  v14 = (v0 + 64);
  v15 = *(v0 + 64);

  (*(v11 + 16))(v8, v9, v10);
  v16 = type metadata accessor for OSSignpostIntervalState();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 120) = OUTLINED_FUNCTION_38_6();
  (*(v11 + 8))(v9, v10);
  *(v0 + 56) = v12;
  *(v0 + 48) = v15;

  if ((v27 & 1) == 0)
  {
    v14 = (v0 + 48);
    MEMORY[0x25F89F6C0](32, 0xE100000000000000);
    v13 = (v0 + 56);
  }

  v19 = *v14;
  v20 = *v13;
  *(v0 + 128) = *v13;
  if (*(v0 + 177))
  {
    v21 = 0;
  }

  else
  {
    v21 = 3;
  }

  objc_allocWithZone(MEMORY[0x277D1F418]);

  *(v0 + 136) = @nonobjc GDEntityResolutionRequest.init(text:entityClassFilter:spans:mode:constraint:includeInferredNames:)(v19, v20, &outlined read-only object #0 of ECRClient.personNameAndIDsWithText(_:allowPrefixSearch:perToken:), 0, v21, 0, 1);
  v22 = objc_allocWithZone(type metadata accessor for EntityResolutionTextClient());
  *(v0 + 144) = EntityResolutionTextClient.init(for:viaXPC:warmup:)();
  v23 = *(MEMORY[0x277D1F3C8] + 4);
  v28 = *MEMORY[0x277D1F3C8] + MEMORY[0x277D1F3C8];
  v24 = swift_task_alloc();
  *(v0 + 152) = v24;
  *v24 = v0;
  OUTLINED_FUNCTION_84(v24);
  OUTLINED_FUNCTION_83_0();

  __asm { BR              X1 }
}

uint64_t $defer #1 () in ECRClient.person(named:phoneNumber:email:)(uint64_t a1, const char *a2)
{
  v26 = a2;
  v2 = type metadata accessor for OSSignpostError();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v18 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v18, static Logging.searchSignposter);
  v19 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v5 + 88))(v9, v2) == *MEMORY[0x277D85B00])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v9, v2);
      v21 = "";
    }

    v22 = OUTLINED_FUNCTION_172();
    *v22 = 0;
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v19, v20, v23, v26, v21, v22, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  return (*(v13 + 8))(v17, v10);
}

uint64_t ECRClient.fetchRelationshipsMap(people:locale:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  OUTLINED_FUNCTION_69();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

void ECRClient.fetchRelationshipsMap(people:locale:)()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = *(v1 + 16);
    v0[19] = v2;
    if (v2)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
      type metadata accessor for ContactsClient();
      inited = swift_initStackObject();
      *(inited + 40) = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
      *(inited + 48) = &protocol witness table for CNContactStore;
      *(inited + 16) = v3;
      v5 = inited + 16;
      v6 = ContactsClient.meCardRelationships()();
      v0[20] = v6;
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
      if (v6)
      {
        v7 = Dictionary.init(dictionaryLiteral:)();
        v0[23] = v7;
        v0[24] = v7;
        v0[21] = v7;
        v0[22] = 0;
        if (v0[19])
        {
          v8 = v0[16];
          v9 = v0[17];
          v11 = *(v8 + 32);
          v10 = *(v8 + 40);

          static SeparatorsFactory.make(with:)(v0 + 9);
          if (one-time initialization token for oneself != -1)
          {
            OUTLINED_FUNCTION_7_48();
          }

          v12 = static Person.oneself;
          EntityProperty.wrappedValue.getter();
          v13 = v0[14];
          if (v13)
          {
            if (v13[2])
            {
              v5 = v13[4];
              v12 = v13[5];
            }

            else
            {
              OUTLINED_FUNCTION_35_28();
            }
          }

          else
          {
            OUTLINED_FUNCTION_35_28();
          }

          if (v11 == v5 && v10 == v12)
          {
          }

          else
          {
            OUTLINED_FUNCTION_119();
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v26 & 1) == 0)
            {
LABEL_34:
              OUTLINED_FUNCTION_36_24();
              v32 = *(v31 + 104);
              v37 = v32 + *v32;
              v33 = v32[1];
              v34 = swift_task_alloc();
              v0[26] = v34;
              *v34 = v0;
              OUTLINED_FUNCTION_3_65(v34);
              OUTLINED_FUNCTION_198();

              __asm { BRAA            X4, X16 }
            }
          }

          v27 = v0[13];
          __swift_project_boxed_opaque_existential_1(v0 + 9, v0[12]);
          v28 = *(v27 + 56);
          v29 = OUTLINED_FUNCTION_54_0();
          v30(v29);

          goto LABEL_34;
        }

        v20 = v0[20];

        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_35_0();
        }

        v21 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v21, static Logging.search);
        v15 = Logger.logObject.getter();
        v22 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v15, v22))
        {
          OUTLINED_FUNCTION_51_0();
          v38 = OUTLINED_FUNCTION_10_23();
          *inited = 136642819;

          Dictionary.description.getter();

          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(inited + 4) = v23;
          OUTLINED_FUNCTION_19_39(&dword_25D85C000, v24, v22, "ECR relationships output is: %{sensitive}s)");
          __swift_destroy_boxed_opaque_existential_1Tm(v38);
          OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_2_8();
        }
      }

      else
      {
        if (one-time initialization token for utilities != -1)
        {
          OUTLINED_FUNCTION_0_93();
        }

        v14 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v14, static Logging.utilities);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = OUTLINED_FUNCTION_172();
          *v17 = 0;
          _os_log_impl(&dword_25D85C000, v15, v16, "Me card is not present, unable to fetch relationships", v17, 2u);
          OUTLINED_FUNCTION_2_8();
        }
      }
    }
  }

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_198();

  __asm { BRAA            X2, X16 }
}

uint64_t ECRClient.fetchRelationshipsMap(people:locale:)()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v5 = v2[26];
  v6 = *v1;
  OUTLINED_FUNCTION_47();
  *v7 = v6;
  v3[27] = v8;
  v3[28] = v0;

  v9 = v2[25];
  if (v0)
  {
    v10 = v3[20];
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v2 = v1[27];
  v67 = *(v2 + 16);
  if (!v67)
  {

    v4 = v1[23];
    v36 = v1[24];
    v5 = v1[21];
LABEL_27:
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 9);
    v39 = v1[22] + 1;
    v1[23] = v4;
    v1[24] = v36;
    v1[21] = v5;
    v1[22] = v39;
    if (v39 == v1[19])
    {
      v40 = v1[20];

      if (one-time initialization token for search == -1)
      {
        goto LABEL_29;
      }

      goto LABEL_57;
    }

    v48 = v1[17];
    v49 = v1[16] + 16 * v39;
    v51 = *(v49 + 32);
    v50 = *(v49 + 40);

    static SeparatorsFactory.make(with:)(v1 + 9);
    if (one-time initialization token for oneself != -1)
    {
      OUTLINED_FUNCTION_7_48();
    }

    v52 = static Person.oneself;
    EntityProperty.wrappedValue.getter();
    v53 = v1[14];
    if (v53)
    {
      if (v53[2])
      {
        v36 = v53[4];
        v52 = v53[5];
      }

      else
      {
        OUTLINED_FUNCTION_35_28();
      }
    }

    else
    {
      OUTLINED_FUNCTION_35_28();
    }

    if (v51 == v36 && v50 == v52)
    {
    }

    else
    {
      OUTLINED_FUNCTION_119();
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v55 & 1) == 0)
      {
LABEL_50:
        OUTLINED_FUNCTION_36_24();
        v61 = *(v60 + 104);
        v76 = v61 + *v61;
        v62 = v61[1];
        v63 = swift_task_alloc();
        v1[26] = v63;
        *v63 = v1;
        OUTLINED_FUNCTION_3_65();
        OUTLINED_FUNCTION_191();

        __asm { BRAA            X4, X16 }
      }
    }

    v56 = v1[13];
    __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
    v57 = *(v56 + 56);
    v58 = OUTLINED_FUNCTION_116_1();
    v59(v58);

    goto LABEL_50;
  }

  v3 = 0;
  v68 = v2 + 32;
  v4 = v1[23];
  v73 = v1[24];
  v5 = v1[21];
  v66 = v1[27];
LABEL_3:
  if (v3 >= *(v2 + 16))
  {
    goto LABEL_56;
  }

  v6 = *(v68 + 40 * v3 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v4;
  v69 = v3;

  v0 = 0;
  v9 = (v6 + 40);
  v71 = v6;
  v72 = v7;
  while (1)
  {
    if (v0 >= *(v6 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      OUTLINED_FUNCTION_35_0();
LABEL_29:
      v41 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v41, static Logging.search);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        OUTLINED_FUNCTION_51_0();
        v77 = OUTLINED_FUNCTION_10_23();
        *v0 = 136642819;

        Dictionary.description.getter();

        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v0 + 4) = v44;
        OUTLINED_FUNCTION_19_39(&dword_25D85C000, v45, v43, "ECR relationships output is: %{sensitive}s)");
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_2_8();
      }

      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_191();

      __asm { BRAA            X2, X16 }
    }

    if (!*(v1[20] + 16))
    {
      goto LABEL_19;
    }

    v10 = *(v9 - 1);
    v11 = *v9;

    v75 = v10;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v13 & 1) == 0)
    {

      goto LABEL_19;
    }

    v14 = (*(v1[20] + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1[15] = v5;
    v74 = v16;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)();
    v20 = v5[2];
    v21 = (v19 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_54;
    }

    v23 = v18;
    v24 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22))
    {
      break;
    }

    v7 = v72;
    if ((v24 & 1) == 0)
    {
LABEL_13:
      v1 = v70;
      v5 = v70[15];
      v5[(v23 >> 6) + 8] |= 1 << v23;
      v28 = (v5[6] + 16 * v23);
      *v28 = v74;
      v28[1] = v15;
      v29 = (v5[7] + 16 * v23);
      *v29 = v75;
      v29[1] = v11;
      v30 = v5[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_55;
      }

      v5[2] = v32;
      goto LABEL_18;
    }

LABEL_17:

    v1 = v70;
    v5 = v70[15];
    v33 = (v5[7] + 16 * v23);
    v34 = v33[1];
    *v33 = v75;
    v33[1] = v11;

LABEL_18:
    v8 = v5;
    v73 = v5;
    v6 = v71;
LABEL_19:
    ++v0;
    v9 += 2;
    if (v7 == v0)
    {

      v2 = v66;
      v3 = v69;
      v4 = v8;
LABEL_21:
      if (++v3 == v67)
      {
        v35 = v1[27];

        v36 = v73;
        goto LABEL_27;
      }

      goto LABEL_3;
    }
  }

  v25 = v1[15];
  v26 = specialized __RawDictionaryStorage.find<A>(_:)();
  v7 = v72;
  if ((v24 & 1) == (v27 & 1))
  {
    v23 = v26;
    if ((v24 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_191();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[23];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);

  OUTLINED_FUNCTION_127();
  v3 = v0[28];

  return v2();
}

uint64_t ECRClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ECRClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ECRClientProtocol.personNameAndIDsWithText(_:allowPrefixSearch:perToken:) in conformance ECRClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 104);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for ECRClientProtocol.person(named:phoneNumber:email:) in conformance ECRClient;

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for ECRClientProtocol.person(named:phoneNumber:email:) in conformance ECRClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 96);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = protocol witness for ECRClientProtocol.person(named:phoneNumber:email:) in conformance ECRClient;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for ECRClientProtocol.fetchRelationshipsMap(people:locale:) in conformance ECRClient(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for ECRClientProtocol.fetchRelationshipsMap(people:locale:) in conformance ECRClient;

  return v10(a1, a2);
}

uint64_t protocol witness for ECRClientProtocol.fetchRelationshipsMap(people:locale:) in conformance ECRClient()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_47();
  *v7 = v6;

  OUTLINED_FUNCTION_62();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

id @nonobjc GDEntityResolutionRequest.init(kgq:text:mode:includeFeatures:includeInferredNames:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (!a2)
  {
    v13 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = MEMORY[0x25F89F4C0]();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = MEMORY[0x25F89F4C0](a3, a4);

LABEL_6:
  v15 = [v7 initWithKgq:v13 text:v14 mode:a5 includeFeatures:a6 & 1 includeInferredNames:a7 & 1];

  return v15;
}

id @nonobjc GDEntityResolutionRequest.init(text:entityClassFilter:spans:mode:constraint:includeInferredNames:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v14 = MEMORY[0x25F89F4C0]();

  if (!a3)
  {
    v15.super.isa = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16.super.isa = 0;
    goto LABEL_6;
  }

  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSValue, 0x277CCAE60);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v17 = [v8 initWithText:v14 entityClassFilter:v15.super.isa spans:v16.super.isa mode:a5 constraint:a6 includeInferredNames:a7 & 1];

  return v17;
}

uint64_t outlined bridged method (pb) of @objc GDEntityIdentifier.stringValue.getter(void *a1)
{
  v1 = [a1 stringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined consume of ECRClientPersonResult?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ECRClientPersonResult(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for ECRClientPersonResult(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void dispatch thunk of ECRClientProtocol.personNameAndIDsWithText(_:allowPrefixSearch:perToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 8);
  OUTLINED_FUNCTION_59();
  v15 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_63(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_84(v11);
  OUTLINED_FUNCTION_198();

  __asm { BRAA            X6, X16 }
}

void dispatch thunk of ECRClientProtocol.person(named:phoneNumber:email:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a8 + 16);
  OUTLINED_FUNCTION_59();
  v17 = v9 + *v9;
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_63(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_84(v13);
  OUTLINED_FUNCTION_83_0();

  __asm { BRAA            X8, X16 }
}

uint64_t dispatch thunk of ECRClientProtocol.fetchRelationshipsMap(people:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  OUTLINED_FUNCTION_59();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_63(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_84(v13);

  return v16(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ECRClientProtocol.fetchRelationshipsMap(people:locale:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  OUTLINED_FUNCTION_52();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_47();
  *v6 = v5;

  OUTLINED_FUNCTION_62();

  return v7(v2);
}

void dispatch thunk of ECRClient.person(named:phoneNumber:email:)()
{
  v1 = *(*v0 + 96);
  v8 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_63(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_84(v4);
  OUTLINED_FUNCTION_198();

  __asm { BRAA            X6, X16 }
}

uint64_t dispatch thunk of ECRClient.personNameAndIDsWithText(_:allowPrefixSearch:perToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_63(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_84(v12);

  return v15(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ECRClient.fetchRelationshipsMap(people:locale:)()
{
  v1 = *(*v0 + 112);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_63(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_84(v4);
  v6 = OUTLINED_FUNCTION_119();

  return v8(v6);
}

uint64_t OUTLINED_FUNCTION_0_93()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_65(uint64_t a1)
{
  *(a1 + 8) = ECRClient.fetchRelationshipsMap(people:locale:);
  v3 = *(v2 + 144);
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_48()
{

  return swift_once();
}

void OUTLINED_FUNCTION_8_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(a20 + 16) = v21;
  v27 = (a20 + 40 * v22);
  v27[4] = v20;
  v27[5] = v26;
  v27[6] = v25;
  v27[7] = v24;
  v27[8] = v23;
}

void OUTLINED_FUNCTION_19_39(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_25_29()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void OUTLINED_FUNCTION_26_28()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_29_22()
{

  return outlined consume of ECRClientPersonResult?(0);
}

uint64_t static InAppSearchStringGeneratorUtils.convertToMe(person:separators:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for oneself != -1)
  {
    swift_once();
  }

  EntityProperty.wrappedValue.getter();
  if (v15)
  {
    if (v15[2])
    {
      v7 = v15[4];
      v6 = v15[5];
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  if (v7 == a1 && v6 == a2)
  {

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_119();
  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
LABEL_16:
    v10 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v11 = *(v10 + 56);
    v12 = OUTLINED_FUNCTION_112_2();
    v13(v12, v10);
    return OUTLINED_FUNCTION_119();
  }

  return OUTLINED_FUNCTION_119();
}

uint64_t static InAppSearchStringGeneratorFactory.createInAppSearchStringGenerator(bundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_98_2();
  v7 = a1 == 0xD000000000000014 && v6 == a2;
  if (v7 || (OUTLINED_FUNCTION_34_30() & 1) != 0 || ((OUTLINED_FUNCTION_98_2(), a1 == 0xD000000000000015) ? (v9 = v8 == a2) : (v9 = 0), v9 || (OUTLINED_FUNCTION_34_30() & 1) != 0))
  {
    v10 = type metadata accessor for MailAndNotesInAppSearchStringGenerator();
    v11 = &protocol witness table for MailAndNotesInAppSearchStringGenerator;
  }

  else
  {
    OUTLINED_FUNCTION_98_2();
    v14 = a1 == 0xD000000000000013 && v13 == a2;
    if (v14 || (OUTLINED_FUNCTION_34_30() & 1) != 0 || ((OUTLINED_FUNCTION_98_2(), a1 == 0xD000000000000019) ? (v16 = v15 == a2) : (v16 = 0), !v16 && (OUTLINED_FUNCTION_34_30() & 1) == 0))
    {
      v10 = type metadata accessor for DefaultInAppSearchStringGenerator();
      v11 = &protocol witness table for DefaultInAppSearchStringGenerator;
    }

    else
    {
      v10 = type metadata accessor for PhotosInAppSearchStringGenerator();
      v11 = &protocol witness table for PhotosInAppSearchStringGenerator;
    }
  }

  result = swift_allocObject();
  a3[3] = v10;
  a3[4] = v11;
  *a3 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall People.getSendersAndReceivers()()
{
  v2 = v1;
  v3 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  if (v0)
  {
    v4 = v0;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  specialized Array.append<A>(contentsOf:)(v4);
  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  specialized Array.append<A>(contentsOf:)(v5);
  v7 = v8;
  result.value._rawValue = v7;
  result.is_nil = v6;
  return result;
}

uint64_t People.getAllPeople()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  specialized Array.append<A>(contentsOf:)(v6);
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v5;
  }

  specialized Array.append<A>(contentsOf:)(v7);
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v5;
  }

  specialized Array.append<A>(contentsOf:)(v8);
  return v10;
}

uint64_t static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_42_25();
    MEMORY[0x28223BE20](v1);
    v8[2] = v2;
    v9 = v3 & 1;
    v10 = v4 & 1;
    v11 = v5;
    v12 = v6 & 1;
    return specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:), v8, v7);
  }

  return result;
}

uint64_t closure #1 in static InAppSearchStringGeneratorUtils.ground(people:ecrResults:groundSelf:dropSelf:dropMeIfNoGrounding:separators:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  result = static InAppSearchStringGeneratorUtils.convertToMe(person:separators:)(*a1, a1[1], a2);
  v13 = result;
  v15 = v14;
  if (a3)
  {
    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    if (v13 == (*(v17 + 56))(v16, v17) && v15 == v18)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *a7 = 0;
    a7[1] = 0;
    return result;
  }

LABEL_7:
  if (a4)
  {
    goto LABEL_8;
  }

  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  if (v13 == (*(v25 + 56))(v24, v25) && v15 == v26)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
LABEL_8:
      if (a5)
      {
        result = specialized Dictionary.subscript.getter(v13, v15, a5);
        if (v21)
        {
          v22 = result;
          v23 = v21;

          *a7 = v22;
          a7[1] = v23;
          return result;
        }
      }

      if (a6)
      {
        v29 = a2[3];
        v30 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v29);
        if (v13 == (*(v30 + 56))(v29, v30) && v15 == v31)
        {

          v13 = 0;
          v15 = 0;
        }

        else
        {
          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v33)
          {

            v13 = 0;
            v15 = 0;
          }
        }
      }
    }
  }

  *a7 = v13;
  a7[1] = v15;
  return result;
}

uint64_t static InAppSearchStringGeneratorUtils.add(fields:leadingSep:delimSep:searchString:forceAddLeadingSep:separators:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void *a9)
{
  v9 = a6;
  if (a1)
  {
    v10 = a8;
    v11 = a3;
    v12 = a2;
    v14 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v14 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
    }

    else
    {
      v16 = a9[3];
      v15 = a9[4];
      OUTLINED_FUNCTION_218(a9, v16);
      v28 = *(v15 + 8);

      v17 = v15;
      v10 = a8;
      v12 = v28(v16, v17);
      v11 = v18;
    }

    OUTLINED_FUNCTION_26_29();
    if (v19)
    {
    }

    else
    {
      v20 = a9[4];
      __swift_project_boxed_opaque_existential_1(a9, a9[3]);
      v21 = OUTLINED_FUNCTION_4_60(v20);
      v22(v21, v20);
    }

    if (*(a1 + 16))
    {
      if ((v10 & 1) != 0 || (OUTLINED_FUNCTION_33_31(), v23))
      {
        MEMORY[0x25F89F6C0](v12, v11);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      OUTLINED_FUNCTION_53_3();
      v24 = BidirectionalCollection<>.joined(separator:)();
      v26 = v25;

      MEMORY[0x25F89F6C0](v24, v26);

      return a6;
    }

    else
    {
    }
  }

  else
  {
  }

  return v9;
}

uint64_t static InAppSearchStringGeneratorUtils.parse(people:)(uint64_t a1)
{
  Entity = type metadata accessor for PersonQueryEntity(0);
  v4 = OUTLINED_FUNCTION_18_8(Entity);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_43_17();
  if (!a1)
  {
    return 0;
  }

  v17 = MEMORY[0x277D84F90];
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v10 = *(v7 + 72);
  do
  {
    outlined init with copy of PersonQueryEntity(v9, v1, type metadata accessor for PersonQueryEntity);
    v11 = *(v1 + Entity[5]);
    EntityProperty.wrappedValue.getter();
    if (v16)
    {

      OUTLINED_FUNCTION_32_29();
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_32_29();
      if (v15)
      {
        specialized Array.append<A>(contentsOf:)(v15);
      }
    }

    else
    {
      outlined consume of Person?(0);
    }

    v12 = *(v1 + Entity[6]);
    EntityProperty.wrappedValue.getter();
    if (v16)
    {

      OUTLINED_FUNCTION_32_29();
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_32_29();
      if (v15)
      {
        specialized Array.append<A>(contentsOf:)(v15);
      }
    }

    else
    {
      outlined consume of Person?(0);
    }

    v13 = *(v1 + Entity[7]);
    EntityProperty.wrappedValue.getter();
    if (v16)
    {

      OUTLINED_FUNCTION_32_29();
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_32_29();
      if (v15)
      {
        specialized Array.append<A>(contentsOf:)(v15);
      }
    }

    else
    {
      outlined consume of Person?(0);
    }

    _s10OmniSearch17PersonQueryEntityVWOhTm_0(v1, type metadata accessor for PersonQueryEntity);
    v9 += v10;
    --v8;
  }

  while (v8);
  return v17;
}

void static InAppSearchStringGeneratorUtils.parse(locations:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  Entity = type metadata accessor for LocationQueryEntity(0);
  v3 = OUTLINED_FUNCTION_18_8(Entity);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_43_17();
  if (v2)
  {
    v7 = *(v2 + 16);
    if (v7)
    {
      v8 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v33 = *(v6 + 72);
      v9 = MEMORY[0x277D84F90];
      v10 = MEMORY[0x277D84F90];
      v11 = MEMORY[0x277D84F90];
      do
      {
        outlined init with copy of PersonQueryEntity(v8, v0, type metadata accessor for LocationQueryEntity);
        v12 = *(v0 + Entity[5]);
        EntityProperty.wrappedValue.getter();
        if (v36)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = *(v9 + 16);
            OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v9 = v25;
          }

          v14 = *(v9 + 16);
          v13 = *(v9 + 24);
          if (v14 >= v13 >> 1)
          {
            OUTLINED_FUNCTION_22_5(v13);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v9 = v26;
          }

          *(v9 + 16) = v14 + 1;
          v15 = v9 + 16 * v14;
          *(v15 + 32) = v35;
          *(v15 + 40) = v36;
        }

        v16 = *(v0 + Entity[6]);
        EntityProperty.wrappedValue.getter();
        if (v36)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = *(v10 + 16);
            OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v10 = v28;
          }

          v18 = *(v10 + 16);
          v17 = *(v10 + 24);
          if (v18 >= v17 >> 1)
          {
            OUTLINED_FUNCTION_22_5(v17);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v10 = v29;
          }

          *(v10 + 16) = v18 + 1;
          v19 = v10 + 16 * v18;
          *(v19 + 32) = v35;
          *(v19 + 40) = v36;
        }

        v20 = *(v0 + Entity[7]);
        EntityProperty.wrappedValue.getter();
        if (v36)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = *(v11 + 16);
            OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v11 = v31;
          }

          v22 = *(v11 + 16);
          v21 = *(v11 + 24);
          if (v22 >= v21 >> 1)
          {
            OUTLINED_FUNCTION_22_5(v21);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v11 = v32;
          }

          *(v11 + 16) = v22 + 1;
          v23 = v11 + 16 * v22;
          *(v23 + 32) = v35;
          *(v23 + 40) = v36;
        }

        _s10OmniSearch17PersonQueryEntityVWOhTm_0(v0, type metadata accessor for LocationQueryEntity);
        v8 += v33;
        --v7;
      }

      while (v7);
    }
  }

  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_148();
}