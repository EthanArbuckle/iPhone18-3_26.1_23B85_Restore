char *LACDTOMutablePendingPolicyEvaluation.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v70 = v67 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationC10CodingKeys33_4BC7126A1542EEEDCA6425CD3A877DA1LLOGMd, &_ss22KeyedDecodingContainerVy23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationC10CodingKeys33_4BC7126A1542EEEDCA6425CD3A877DA1LLOGMR);
  v69 = *(v72 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v14 = v67 - v13;
  v15 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated;
  v1[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated] = 0;
  v16 = &v1[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackReason];
  *v16 = 0;
  v16[1] = 0;
  v79 = v16;
  v17 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackURL;
  v18 = type metadata accessor for URL();
  v19 = *(*(v18 - 8) + 56);
  v76 = v17;
  v19(&v2[v17], 1, 1, v18);
  v20 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_notificationScheduledAt;
  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 56);
  v78 = v20;
  v22(&v2[v20], 1, 1, v21);
  v74 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_coolOffStarted;
  v22(&v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_coolOffStarted], 1, 1, v21);
  v23 = &v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_ratchetUUID];
  *v23 = 0;
  v23[1] = 0;
  v75 = v23;
  v24 = a1[3];
  v25 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v24);
  lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys();
  v73 = v14;
  v26 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v26)
  {
    v67[1] = v18;
    v27 = v70;
    v67[0] = v21;
    v28 = v71;
    v29 = v72;
    v30 = v69;
    v83 = 0;
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    p_cb = &OBJC_PROTOCOL___LACSecureStorageType.cb;
    v40 = &v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier];
    *v40 = v31;
    v40[1] = v41;
    v83 = 1;
    v42 = KeyedDecodingContainer.decode(_:forKey:)();
    v84 = 0;
    v43 = v42;
    swift_beginAccess();
    v2[v15] = v43 & 1;
    v82 = 2;
    v44 = v84;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v84 = v44;
    if (v44)
    {
      (*(v30 + 8))(v73, v29);
      v32 = v76;
      v33 = v74;
LABEL_8:
      __swift_destroy_boxed_opaque_existential_0(v77);
      v47 = *&v2[*(p_cb + 280) + 8];

      goto LABEL_4;
    }

    v48 = v45;
    v49 = v46;
    v50 = v79;
    swift_beginAccess();
    v51 = v50[1];
    *v50 = v48;
    v50[1] = v49;

    v81 = 3;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v52 = v73;
    v53 = v84;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v84 = v53;
    v54 = v30;
    if (v53)
    {
      (*(v30 + 8))(v52, v29);
      v32 = v76;
    }

    else
    {
      v32 = v76;
      swift_beginAccess();
      outlined assign with take of URL?(v27, &v2[v32], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      swift_endAccess();
      v81 = 4;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
      v55 = v84;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v84 = v55;
      if (!v55)
      {
        v56 = v78;
        swift_beginAccess();
        outlined assign with take of URL?(v28, &v2[v56], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        swift_endAccess();
        v81 = 5;
        v57 = v68;
        v58 = v84;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v84 = v58;
        if (!v58)
        {
          v33 = v74;
          swift_beginAccess();
          outlined assign with take of URL?(v57, &v2[v33], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          swift_endAccess();
          v81 = 6;
          v59 = v84;
          v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v84 = v59;
          if (!v59)
          {
            v62 = v60;
            v63 = v61;
            v64 = v75;
            swift_beginAccess();
            v65 = v64[1];
            *v64 = v62;
            v64[1] = v63;

            v66 = type metadata accessor for LACDTOMutablePendingPolicyEvaluation();
            v80.receiver = v2;
            v80.super_class = v66;
            v2 = objc_msgSendSuper2(&v80, sel_init);
            (*(v54 + 8))(v52, v29);
            __swift_destroy_boxed_opaque_existential_0(v77);
            return v2;
          }

          (*(v54 + 8))(v52, v29);
          goto LABEL_15;
        }
      }

      (*(v54 + 8))(v52, v29);
    }

    v33 = v74;
LABEL_15:
    p_cb = (&OBJC_PROTOCOL___LACSecureStorageType + 64);
    goto LABEL_8;
  }

  v84 = v26;
  __swift_destroy_boxed_opaque_existential_0(v77);
  v32 = v76;
  v33 = v74;
LABEL_4:
  v34 = v79[1];

  outlined destroy of AsyncStream<()>.Continuation?(&v2[v32], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AsyncStream<()>.Continuation?(&v2[v78], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of AsyncStream<()>.Continuation?(&v2[v33], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v35 = v75[1];

  type metadata accessor for LACDTOMutablePendingPolicyEvaluation();
  v36 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v37 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t protocol witness for Decodable.init(from:) in conformance LACDTOMutablePendingPolicyEvaluation@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 312))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t LACDTOMutablePendingPolicyEvaluation.description.getter()
{
  v1 = v0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v69 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v69);
  v67 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v70 = &v67 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v67 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v11 = &v67 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B03423B0;
  v13 = type metadata accessor for LACDTOMutablePendingPolicyEvaluation();
  v74.receiver = v0;
  v74.super_class = v13;
  v14 = objc_msgSendSuper2(&v74, sel_description);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v12 + 32) = v15;
  *(v12 + 40) = v17;
  strcpy(v73, "identifier: ");
  BYTE5(v73[1]) = 0;
  HIWORD(v73[1]) = -5120;
  MEMORY[0x1B2722A80](*(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier), *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier + 8));
  v18 = v73[1];
  *(v12 + 48) = v73[0];
  *(v12 + 56) = v18;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v73[0] = 0x696C61766E497369;
  v73[1] = 0xEF203A6465746164;
  v20 = MEMORY[0x1E69E7D40];
  v21 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v19);
  v22 = (v21 & 1) == 0;
  if (v21)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v22)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x1B2722A80](v23, v24);

  v26 = v73[1];
  *(v12 + 64) = v73[0];
  *(v12 + 72) = v26;
  v73[0] = 0x203A64697575;
  v73[1] = 0xE600000000000000;
  v71 = (*((*v20 & *v1) + 0x100))(v25);
  v72 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v28 = Optional.debugDescription.getter();
  v30 = v29;

  MEMORY[0x1B2722A80](v28, v30);

  v31 = v73[1];
  *(v12 + 80) = v73[0];
  *(v12 + 88) = v31;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v73[0] = 0xD000000000000010;
  v73[1] = 0x80000001B0355240;
  v71 = (*((*v20 & *v1) + 0xA0))(v32);
  v72 = v33;
  v34 = Optional.debugDescription.getter();
  v36 = v35;

  MEMORY[0x1B2722A80](v34, v36);

  v38 = v73[1];
  *(v12 + 96) = v73[0];
  *(v12 + 104) = v38;
  strcpy(v73, "callbackURL: ");
  HIWORD(v73[1]) = -4864;
  (*((*v20 & *v1) + 0xB8))(v37);
  v39 = Optional.debugDescription.getter();
  v41 = v40;
  outlined destroy of AsyncStream<()>.Continuation?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1B2722A80](v39, v41);

  v42 = v73[1];
  *(v12 + 112) = v73[0];
  *(v12 + 120) = v42;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v73[0] = 0xD000000000000019;
  v73[1] = 0x80000001B0355260;
  (*((*v20 & *v1) + 0xD0))(v43);
  v44 = Optional.debugDescription.getter();
  v46 = v45;
  outlined destroy of AsyncStream<()>.Continuation?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1B2722A80](v44, v46);

  v47 = v73[1];
  *(v12 + 128) = v73[0];
  *(v12 + 136) = v47;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v73[0] = 0xD000000000000010;
  v73[1] = 0x80000001B0355280;
  v49 = *((*v20 & *v1) + 0xE8);
  v50 = v70;
  v49(v48);
  v51 = type metadata accessor for Date();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v54 = v53(v50, 1, v51);
  v55 = outlined destroy of AsyncStream<()>.Continuation?(v50, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v54 == 1)
  {
    v56 = 0xE300000000000000;
    v57 = 7104878;
LABEL_11:
    MEMORY[0x1B2722A80](v57, v56);

    v65 = v73[1];
    *(v12 + 144) = v73[0];
    *(v12 + 152) = v65;
    v73[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v66 = BidirectionalCollection<>.joined(separator:)();

    return v66;
  }

  v58 = v67;
  v49(v55);
  result = v53(v58, 1, v51);
  if (result != 1)
  {
    v60 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v52 + 8))(v58, v51);
    v62 = [v60 localizedStringFromDate:isa dateStyle:0 timeStyle:3];

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v64;

    v57 = v63;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t LACDTOMutablePendingPolicyEvaluation.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v132 = &v124[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v7 = *(*(v139 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v139);
  v10 = &v124[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v138 = &v124[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v130 = &v124[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v135 = &v124[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v133 = &v124[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v134 = &v124[-v21];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v140 = &v124[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v137 = &v124[-v24];
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v141 = v25;
  v142 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v136 = &v124[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, _s10Foundation3URLVSg_ADtMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v124[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v37 = &v124[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v124[-v39];
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v124[-v41];
  outlined init with copy of (String, Any)(a1, v144, &_sypSgMd, _sypSgMR);
  if (!v145)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v144, &_sypSgMd, _sypSgMR);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29LACDTOPendingPolicyEvaluation_pMd, &_sSo29LACDTOPendingPolicyEvaluation_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v126 = v10;
  v127 = v3;
  v128 = v4;
  v129 = v1;
  v43 = v1 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier;
  v44 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier);
  v45 = *(v43 + 1);
  v131 = v143;
  v46 = [v143 identifier];
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  if (v44 == v47 && v45 == v49)
  {
  }

  else
  {
    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v51 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v52 = v129;
  v53 = (*((*MEMORY[0x1E69E7D40] & *v129) + 0xA0))(v50);
  v55 = v54;
  v56 = [v131 callbackReason];
  if (!v56)
  {
    if (!v55)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v57 = v56;
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  if (v55)
  {
    v52 = v129;
    if (v60)
    {
      if (v53 == v58 && v55 == v60)
      {
      }

      else
      {
        v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v61 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_20;
    }

LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:

    return 0;
  }

  v52 = v129;
  if (v60)
  {

    goto LABEL_41;
  }

LABEL_20:
  (*((*MEMORY[0x1E69E7D40] & *v52) + 0xB8))(v56);
  v62 = [v131 callbackURL];
  if (v62)
  {
    v63 = v62;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  v65 = v141;
  v66 = v142;
  (*(v142 + 56))(v40, v64, 1, v141);
  v67 = *(v29 + 48);
  outlined init with copy of (String, Any)(v42, v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v68 = v65;
  outlined init with copy of (String, Any)(v40, &v32[v67], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v69 = *(v66 + 48);
  if (v69(v32, 1, v68) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v42, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v69(&v32[v67], 1, v68) == 1)
    {
      v70 = outlined destroy of AsyncStream<()>.Continuation?(v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_31;
    }

LABEL_28:
    v71 = &_s10Foundation3URLVSg_ADtMd;
    v72 = _s10Foundation3URLVSg_ADtMR;
LABEL_29:
    v73 = v32;
LABEL_40:
    outlined destroy of AsyncStream<()>.Continuation?(v73, v71, v72);
    goto LABEL_41;
  }

  outlined init with copy of (String, Any)(v32, v37, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v69(&v32[v67], 1, v68) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v42, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v142 + 8))(v37, v68);
    goto LABEL_28;
  }

  v74 = v142;
  v75 = &v32[v67];
  v76 = v136;
  (*(v142 + 32))(v136, v75, v68);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  v125 = dispatch thunk of static Equatable.== infix(_:_:)();
  v77 = *(v74 + 8);
  v77(v76, v68);
  outlined destroy of AsyncStream<()>.Continuation?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AsyncStream<()>.Continuation?(v42, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v77(v37, v68);
  v70 = outlined destroy of AsyncStream<()>.Continuation?(v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((v125 & 1) == 0)
  {
LABEL_41:
    swift_unknownObjectRelease();
    return 0;
  }

LABEL_31:
  v78 = v137;
  (*((*MEMORY[0x1E69E7D40] & *v52) + 0xD0))(v70);
  v79 = [v131 notificationScheduledAt];
  if (v79)
  {
    v80 = v140;
    v81 = v79;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v82 = 0;
    v83 = v138;
  }

  else
  {
    v82 = 1;
    v83 = v138;
    v80 = v140;
  }

  v85 = v127;
  v84 = v128;
  v142 = *(v128 + 56);
  (v142)(v80, v82, 1, v127);
  v86 = *(v139 + 48);
  outlined init with copy of (String, Any)(v78, v83, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of (String, Any)(v80, &v83[v86], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v87 = *(v84 + 48);
  if (v87(v83, 1, v85) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v80, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v78, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v87(&v83[v86], 1, v85) == 1)
    {
      v88 = outlined destroy of AsyncStream<()>.Continuation?(v83, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_45;
    }

LABEL_39:
    v71 = &_s10Foundation4DateVSg_ADtMd;
    v72 = &_s10Foundation4DateVSg_ADtMR;
    v73 = v83;
    goto LABEL_40;
  }

  v89 = v134;
  outlined init with copy of (String, Any)(v83, v134, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v87(&v83[v86], 1, v85) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v140, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v78, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v128 + 8))(v89, v85);
    goto LABEL_39;
  }

  v91 = v78;
  v92 = v128;
  v93 = &v83[v86];
  v94 = v132;
  (*(v128 + 32))(v132, v93, v85);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  LODWORD(v141) = dispatch thunk of static Equatable.== infix(_:_:)();
  v95 = *(v92 + 8);
  v95(v94, v85);
  outlined destroy of AsyncStream<()>.Continuation?(v140, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of AsyncStream<()>.Continuation?(v91, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v95(v89, v85);
  v88 = outlined destroy of AsyncStream<()>.Continuation?(v138, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v141 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_45:
  v96 = v133;
  (*((*MEMORY[0x1E69E7D40] & *v129) + 0xE8))(v88);
  v97 = [v131 coolOffStarted];
  if (v97)
  {
    v98 = v135;
    v99 = v97;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v100 = 0;
  }

  else
  {
    v100 = 1;
    v98 = v135;
  }

  v101 = v127;
  (v142)(v98, v100, 1, v127);
  v102 = v101;
  v103 = *(v139 + 48);
  v32 = v126;
  outlined init with copy of (String, Any)(v96, v126, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of (String, Any)(v98, &v32[v103], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v87(v32, 1, v101) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v98, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v96, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v104 = v87(&v32[v103], 1, v101);
    v105 = v129;
    if (v104 == 1)
    {
      v106 = outlined destroy of AsyncStream<()>.Continuation?(v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v107 = v130;
  outlined init with copy of (String, Any)(v32, v130, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v108 = v87(&v32[v103], 1, v101);
  v105 = v129;
  if (v108 == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v135, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v96, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v128 + 8))(v107, v101);
LABEL_53:
    v71 = &_s10Foundation4DateVSg_ADtMd;
    v72 = &_s10Foundation4DateVSg_ADtMR;
    goto LABEL_29;
  }

  v109 = v96;
  v110 = v128;
  v111 = &v32[v103];
  v112 = v132;
  (*(v128 + 32))(v132, v111, v101);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  v113 = dispatch thunk of static Equatable.== infix(_:_:)();
  v114 = *(v110 + 8);
  v114(v112, v102);
  outlined destroy of AsyncStream<()>.Continuation?(v135, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of AsyncStream<()>.Continuation?(v109, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v114(v107, v102);
  v106 = outlined destroy of AsyncStream<()>.Continuation?(v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v113 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_55:
  v115 = (*((*MEMORY[0x1E69E7D40] & *v105) + 0x100))(v106);
  v117 = v116;
  v118 = [v131 ratchetUUID];
  if (!v118)
  {
    if (!v117)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v119 = v118;
  v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v122 = v121;

  if (!v117)
  {
    swift_unknownObjectRelease();
    if (!v122)
    {
      return 1;
    }

    goto LABEL_16;
  }

  if (!v122)
  {
LABEL_62:
    swift_unknownObjectRelease();

    return 0;
  }

  if (v115 == v120 && v117 == v122)
  {

LABEL_63:
    swift_unknownObjectRelease();
    return 1;
  }

  v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

  swift_unknownObjectRelease();
  result = 0;
  if (v123)
  {
    return 1;
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

void type metadata completion function for LACDTOMutablePendingPolicyEvaluation()
{
  type metadata accessor for URL?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for URL?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for URL?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for LACDTOMutablePendingPolicyEvaluation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LACDTOMutablePendingPolicyEvaluation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized LACDTOMutablePendingPolicyEvaluation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C61766E497369 && a2 == 0xED00006465746164 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6361626C6C6163 && a2 == 0xEE006E6F73616552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B6361626C6C6163 && a2 == 0xEB000000004C5255 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B0355330 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5366664F6C6F6F63 && a2 == 0xEE00646574726174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5574656863746172 && a2 == 0xEB00000000444955)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t dispatch thunk of LACPreboardUPPManaging.installUPP(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v11(a1, a2, a3);
}

id LACPreboardUPPManager.uppProfile.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = closure #1 in LACPreboardUPPManager.uppProfile.getter();
    v3 = *(v0 + 32);
    *(v0 + 32) = v2;
    v4 = v2;
    outlined consume of LACPreboardUPPProfile??(v3);
  }

  outlined copy of LACPreboardUPPProfile??(v1);
  return v2;
}

id closure #1 in LACPreboardUPPManager.uppProfile.getter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() getUPPProfile];
  if (!result)
  {
    v6 = LACLogPreboard();
    Logger.init(_:)();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B0233000, v7, v8, "Unable to fetch UPP profile", v9, 2u);
      MEMORY[0x1B27246A0](v9, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return result;
}

uint64_t LACPreboardUPPManager.teamName.getter()
{
  v0 = LACPreboardUPPManager.uppProfile.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 teamName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void *LACPreboardUPPManager.__allocating_init(storage:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[3] = a2;
  result[4] = 1;
  result[2] = a1;
  return result;
}

void *LACPreboardUPPManager.init(storage:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 1;
  v2[2] = a1;
  return v2;
}

uint64_t LACPreboardUPPManager.installUPP(for:)(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](LACPreboardUPPManager.installUPP(for:), 0, 0);
}

uint64_t LACPreboardUPPManager.installUPP(for:)()
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = v0[4];
  v2 = LACPreboardUPPManager.uppProfile.getter();
  v0[5] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v0[4];
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v8 = [v3 teamID];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v0[6] = v11;
    v21 = (*(v5 + 64) + **(v5 + 64));
    v12 = *(*(v5 + 64) + 4);
    v13 = swift_task_alloc();
    v0[7] = v13;
    *v13 = v0;
    v13[1] = LACPreboardUPPManager.installUPP(for:);
    v14 = v0[3];
    v15 = *MEMORY[0x1E69E9840];

    return v21(v9, v11, v14, ObjectType, v5);
  }

  else
  {
    v17 = objc_opt_self();
    v18 = MEMORY[0x1B27229A0](0x20676E697373694DLL, 0xEF656C69666F7270);
    [v17 errorWithCode:-1000 debugDescription:v18];

    swift_willThrow();
    v19 = v0[1];
    v20 = *MEMORY[0x1E69E9840];

    return v19();
  }
}

{
  v17 = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + 40) uuid];
  if (!v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = MEMORY[0x1B27229A0](v2);
  }

  v3 = *(v0 + 72);
  if (v3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v5 = *(v0 + 64);
    outlined copy of Data._Representation(v5, *(v0 + 72));
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v5, v3);
  }

  v6 = objc_opt_self();
  *(v0 + 16) = 0;
  v7 = [v6 installProfileWithUUID:v1 signature:isa error:v0 + 16];

  v8 = *(v0 + 16);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 40);
  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v15 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  outlined consume of Data?(v9, v10);

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x1E69E9840];

  return v13();
}

{
  v7 = *MEMORY[0x1E69E9840];
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[10];
  v4 = v0[1];
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t LACPreboardUPPManager.installUPP(for:)(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  v5 = *(*v3 + 56);
  v11 = *v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = v2;

  if (v2)
  {
    v6 = LACPreboardUPPManager.installUPP(for:);
  }

  else
  {
    v7 = v4[6];

    v6 = LACPreboardUPPManager.installUPP(for:);
  }

  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
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

uint64_t LACPreboardUPPManager.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  outlined consume of LACPreboardUPPProfile??(*(v0 + 32));
  return v0;
}

void outlined consume of LACPreboardUPPProfile??(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t LACPreboardUPPManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  outlined consume of LACPreboardUPPProfile??(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LACPreboardUPPManaging.teamName.getter in conformance LACPreboardUPPManager()
{
  v1 = *v0;
  v2 = LACPreboardUPPManager.uppProfile.getter();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 teamName];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t protocol witness for LACPreboardUPPManaging.installUPP(for:) in conformance LACPreboardUPPManager(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return LACPreboardUPPManager.installUPP(for:)(a1);
}

id outlined copy of LACPreboardUPPProfile??(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

id LACDTOEnvironmentProvider.__allocating_init(locationProvider:featureController:ratchetStateProvider:lostModeController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_locationProvider] = a1;
  *&v9[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_featureController] = a2;
  *&v9[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_ratchetStateProvider] = a3;
  *&v9[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_lostModeController] = a4;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id LACDTOEnvironmentProvider.init(locationProvider:featureController:ratchetStateProvider:lostModeController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_locationProvider] = a1;
  *&v4[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_featureController] = a2;
  *&v4[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_ratchetStateProvider] = a3;
  *&v4[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_lostModeController] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for LACDTOEnvironmentProvider();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t LACDTOEnvironmentProvider.fetchEnvironment(policy:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = LACLogDTOEnvironment();
  Logger.init(_:)();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v5;
    v19 = a4;
    v20 = a2;
    v21 = a3;
    v22 = a1;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_1B0233000, v16, v17, "Environment query will start", v18, 2u);
    v24 = v23;
    a1 = v22;
    a3 = v21;
    a2 = v20;
    a4 = v19;
    v5 = v33;
    MEMORY[0x1B27246A0](v24, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v25 = [objc_opt_self() environmentUpdateWillStart];
  [v25 send];

  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_featureController);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = partial apply for closure #1 in LACDTOEnvironmentProvider.fetchEnvironment(policy:options:completion:);
  v29[4] = v26;
  v29[5] = a1;
  v29[6] = a2;
  aBlock[4] = partial apply for closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:);
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACDTOFeatureState) -> ();
  aBlock[3] = &block_descriptor_6;
  v30 = _Block_copy(aBlock);

  [v27 fetchStateWithCompletion_];
  _Block_release(v30);
}

uint64_t closure #1 in LACDTOEnvironmentProvider.fetchEnvironment(policy:options:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() environmentUpdateDidFinish];
  [v12 send];

  v13 = LACLogDTOEnvironment();
  Logger.init(_:)();
  if (a2)
  {
    v14 = static os_log_type_t.error.getter();
  }

  else
  {
    v14 = static os_log_type_t.default.getter();
  }

  v15 = v14;
  v16 = Logger.logObject.getter();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v30 = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = a1;
    v34 = v19;
    *v18 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17LACDTOEnvironment_pSgMd, &_sSo17LACDTOEnvironment_pSgMR);
    v20 = Optional.debugDescription.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v34);
    v31 = a4;
    v23 = a3;
    v24 = v22;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    v33 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v25 = Optional.debugDescription.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v34);

    *(v18 + 14) = v27;
    a3 = v23;
    _os_log_impl(&dword_1B0233000, v16, v15, "Environment query did finish env=%s, err=%s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v19, -1, -1);
    MEMORY[0x1B27246A0](v18, -1, -1);

    (*(v32 + 8))(v11, v30);
  }

  else
  {

    (*(v32 + 8))(v11, v8);
  }

  return a3(a1, a2);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned LACDTOEnvironment?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id LACDTOEnvironmentProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACDTOEnvironmentProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACDTOEnvironmentProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:)(void *a1, uint64_t a2, void (*a3)(id, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if ([a1 isEnabled])
    {
      v13 = *&v12[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_ratchetStateProvider];
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = a3;
      v15[4] = a4;
      v15[5] = a5;
      v15[6] = a6;
      v15[7] = a1;
      aBlock[4] = partial apply for closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:);
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACDTORatchetStateComposite?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_19_0;
      v16 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      [v13 ratchetStateCompositeWithCompletion_];
      _Block_release(v16);

      swift_unknownObjectRelease();
    }

    else
    {
      v17 = [objc_opt_self() nullInstance];
      [v17 setFeatureState_];
      v18 = v17;
      a3(v17, 0);
    }
  }
}

void closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a2)
    {
      a4(0, a2);
    }

    else
    {
      if (!a1)
      {
        __break(1u);
        return;
      }

      v16 = objc_allocWithZone(LACDTOMutableLostModeFetchRequest);
      v17 = a1;
      v18 = [v16 init];
      [v18 setPolicy_];
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v18 setOptions_];

      [v18 setIsDTOEnabled_];
      v20 = [v17 ratchetState];
      [v18 setRatchetState_];

      v21 = [v17 watchdogs];
      [v18 setBiometryWatchdogPack_];

      v22 = *&v15[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_lostModeController];
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = a4;
      v24[4] = a5;
      v24[5] = a8;
      aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:);
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACDTOLostModeState) -> ();
      aBlock[3] = &block_descriptor_26;
      v25 = _Block_copy(aBlock);
      v26 = v18;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      [v22 fetchLostMode:v26 completion:v25];
      _Block_release(v25);

      swift_unknownObjectRelease();
      v15 = v26;
    }
  }
}

uint64_t closure #1 in closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(result + OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_locationProvider);
    v11 = result;
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a3;
    v13[4] = a4;
    v13[5] = a5;
    v13[6] = a1;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACDTOLostModeState) -> ();
    aBlock[3] = &block_descriptor_33;
    v14 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v15 = a1;

    [v10 checkIsInFamiliarLocationWithCompletion_];
    _Block_release(v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(result + OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_ratchetStateProvider);
    v13 = result;
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a5;
    v15[6] = a1;
    v15[7] = a6;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACDTORatchetStateComposite?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_40;
    v16 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v17 = a1;
    v18 = a6;

    [v12 ratchetStateCompositeWithCompletion_];
    _Block_release(v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (a2)
    {
      a4(0, a2);
    }

    else if (a1)
    {
      v15 = objc_allocWithZone(LACDTOMutableEnvironment);
      v16 = a1;
      v17 = [v15 init];
      [v17 setConfirmed_];
      v18 = [v16 watchdogs];
      [v17 setBiometryWatchdogPack_];

      [v17 setFeatureState_];
      [v17 setLocationState_];
      [v17 setLostModeState_];
      v19 = [v16 ratchetState];
      [v17 setRatchetState_];

      v20 = [v16 gracePeriodState];
      [v17 setGracePeriodState_];

      v21 = v17;
      a4(v17, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACDTORatchetStateComposite?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACDTOFeatureState) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t LACCompanionAuthenticationProviderDummy.delegate.getter()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t LACCompanionAuthenticationProviderDummy.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t LACCompanionAuthenticationProviderDummy.domainState(for:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v42 = a2;
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isCompanionDeviceMocked])
  {
    v41 = v3;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v11 + 8))(v14, v10);
    static String.Encoding.utf8.getter();
    v15 = String.data(using:allowLossyConversion:)();
    v17 = v16;

    (*(v6 + 8))(v9, v5);
    if (v17 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      outlined copy of Data._Representation(v15, v17);
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v15, v17);
    }

    v21 = [objc_opt_self() createHashForDomainState_];

    if (v21)
    {
      v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDySiypGtGMd, &_ss23_ContiguousArrayStorageCySS_SDySiypGtGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0342810;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_yptGMd, &_ss23_ContiguousArrayStorageCySi_yptGMR);
      v40 = a3;
      v27 = swift_initStackObject();
      v39 = xmmword_1B0342820;
      *(v27 + 16) = xmmword_1B0342820;
      v28 = *(v41 + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion);
      *(v27 + 32) = v28;
      v29 = v27 + 32;
      *(v27 + 64) = MEMORY[0x1E69E6370];
      *(v27 + 40) = 1;
      v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_ypTt0g5Tf4g_n(v27);
      v41 = v15;
      v31 = v30;
      swift_setDeallocating();
      outlined destroy of (Int, Any)(v29);
      *(inited + 48) = v31;
      *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 64) = v32;
      v33 = swift_initStackObject();
      *(v33 + 32) = v28;
      v34 = v33 + 32;
      *(v33 + 16) = v39;
      *(v33 + 64) = MEMORY[0x1E6969080];
      *(v33 + 40) = v22;
      *(v33 + 48) = v24;
      v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_ypTt0g5Tf4g_n(v33);
      swift_setDeallocating();
      outlined copy of Data._Representation(v22, v24);
      outlined destroy of (Int, Any)(v34);
      *(inited + 72) = v35;
      v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySiypGTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SDySiypGtMd, &_sSS_SDySiypGtMR);
      swift_arrayDestroy();
      v37 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v36);

      (v42)(v37, 0);

      outlined consume of Data._Representation(v22, v24);
      v38 = v41;
    }

    else
    {
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v42();

      v38 = v15;
    }

    return outlined consume of Data?(v38, v17);
  }

  else
  {
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    (v42)(v19, 0);
  }
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiypGMd, &_sSDySiypGMR);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id LACCompanionAuthenticationProviderDummy.__allocating_init(companion:replyQueue:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate] = 0;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion] = a1;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_replyQueue] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id LACCompanionAuthenticationProviderDummy.init(companion:replyQueue:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate] = 0;
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion] = a1;
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_replyQueue] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t LACCompanionAuthenticationProviderDummy.authenticate(with:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  (*(v4 + 16))(a1, v7, v3);
  (*(v4 + 56))(a1, 0, 1, v3);
  $defer #1 () in LACCompanionAuthenticationProviderDummy.authenticate(with:)(v1, v7);
  return (*(v4 + 8))(v7, v3);
}

void $defer #1 () in LACCompanionAuthenticationProviderDummy.authenticate(with:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = *(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion);
  if (v15 == 2)
  {
    v16 = [objc_opt_self() isMacCompanionSessionActive];
    if (!v16)
    {
LABEL_9:
      v24[1] = *(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_replyQueue);
      v17 = swift_allocObject();
      v25 = v8;
      v18 = v5;
      v19 = v17;
      swift_unknownObjectWeakInit();
      (*(v13 + 16))(v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
      v20 = (*(v13 + 80) + 24) & ~*(v13 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      (*(v13 + 32))(v21 + v20, v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
      aBlock[4] = partial apply for closure #1 in $defer #1 () in LACCompanionAuthenticationProviderDummy.authenticate(with:);
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_7;
      v22 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v28 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v23 = v27;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1B2722D20](0, v11, v23, v22);
      _Block_release(v22);
      (*(v18 + 8))(v23, v4);
      (*(v26 + 8))(v11, v25);

      return;
    }
  }

  else
  {
    if (v15 != 4)
    {
      goto LABEL_9;
    }

    v16 = [objc_opt_self() isVisionCompanionSessionActive];
    if (!v16)
    {
      goto LABEL_9;
    }
  }
}

id LACCompanionAuthenticationProviderDummy.cancelAuthentication(with:)(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion);
  if (v2 == 2)
  {
    result = [objc_opt_self() isMacCompanionSessionActive];
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v2 == 4)
  {
    result = [objc_opt_self() isVisionCompanionSessionActive];
    if (result)
    {
LABEL_6:

      v3 = OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate;
      result = swift_beginAccess();
      v4 = *(v1 + v3);
      if (v4)
      {
        swift_unknownObjectRetain();
        v5 = v1;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v7 = objc_opt_self();
        v8 = MEMORY[0x1B27229A0](0xD00000000000001CLL, 0x80000001B0355640);
        v9 = [v7 errorWithCode:-4 debugDescription:v8];

        v10 = _convertErrorToNSError(_:)();
        [v4 authenticationProvider:v5 didFailAuthenticationWithID:isa error:v10];

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id LACCompanionAuthenticationProviderDummy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACCompanionAuthenticationProviderDummy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void closure #1 in $defer #1 () in LACCompanionAuthenticationProviderDummy.authenticate(with:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    swift_beginAccess();
    v1 = swift_unknownObjectWeakLoadStrong();
    if (v1)
    {
      v2 = v1;
      v3 = OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate;
      swift_beginAccess();
      v4 = *&v2[v3];
      if (v4)
      {
        swift_unknownObjectRetain();

        swift_beginAccess();
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          v6 = v5;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v8 = objc_opt_self();
          v9 = MEMORY[0x1B27229A0](0xD000000000000026, 0x80000001B03557D0);
          v10 = [v8 errorWithCode:-1 debugDescription:v9];

          v11 = _convertErrorToNSError(_:)();
          [v4 authenticationProvider:v6 didFailAuthenticationWithID:isa error:v11];

          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t outlined destroy of (Int, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_yptMd, &_sSi_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized LACCompanionAuthenticationProviderDummy.domainState(for:completion:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isCompanionDeviceMocked])
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v10 + 8))(v13, v9);
    static String.Encoding.utf8.getter();
    v14 = String.data(using:allowLossyConversion:)();
    v16 = v15;

    (*(v5 + 8))(v8, v4);
    if (v16 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      outlined copy of Data._Representation(v14, v16);
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v14, v16);
    }

    v19 = [objc_opt_self() createHashForDomainState_];

    if (v19)
    {
      v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDySiypGtGMd, &_ss23_ContiguousArrayStorageCySS_SDySiypGtGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0342810;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_yptGMd, &_ss23_ContiguousArrayStorageCySi_yptGMR);
      v24 = swift_initStackObject();
      v39 = v14;
      v37 = xmmword_1B0342820;
      *(v24 + 16) = xmmword_1B0342820;
      v25 = *(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion);
      *(v24 + 32) = v25;
      v26 = v24 + 32;
      *(v24 + 64) = MEMORY[0x1E69E6370];
      *(v24 + 40) = 1;
      v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_ypTt0g5Tf4g_n(v24);
      swift_setDeallocating();
      outlined destroy of (Int, Any)(v26);
      *(inited + 48) = v27;
      *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 64) = v28;
      v29 = swift_initStackObject();
      *(v29 + 32) = v25;
      v30 = v29 + 32;
      *(v29 + 16) = v37;
      *(v29 + 64) = MEMORY[0x1E6969080];
      v31 = v38;
      *(v29 + 40) = v38;
      *(v29 + 48) = v21;
      v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_ypTt0g5Tf4g_n(v29);
      swift_setDeallocating();
      outlined copy of Data._Representation(v31, v21);
      outlined destroy of (Int, Any)(v30);
      *(inited + 72) = v32;
      v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySiypGTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SDySiypGtMd, &_sSS_SDySiypGtMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v33);

      v34 = Dictionary._bridgeToObjectiveC()().super.isa;
      (*(a2 + 16))(a2, v34, 0);

      outlined consume of Data._Representation(v31, v21);
      v35 = v39;
    }

    else
    {
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v36 = Dictionary._bridgeToObjectiveC()().super.isa;
      (*(a2 + 16))(a2, v36, 0);

      v35 = v14;
    }

    outlined consume of Data?(v35, v16);
  }

  else
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v39 = Dictionary._bridgeToObjectiveC()().super.isa;
    (*(a2 + 16))(a2, v39, 0);

    v18 = v39;
  }
}

void partial apply for closure #1 in $defer #1 () in LACCompanionAuthenticationProviderDummy.authenticate(with:)()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 80);
  v2 = *(v0 + 16);

  closure #1 in $defer #1 () in LACCompanionAuthenticationProviderDummy.authenticate(with:)();
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

char *closure #1 in LACCompanionAuthenticationCoordinator.mockedAuthProvider.getter(void *a1)
{
  v2 = [a1 companion];
  v3 = [a1 replyQueue];
  v4 = type metadata accessor for LACCompanionAuthenticationProviderDummy();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate] = 0;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion] = v2;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_replyQueue] = v3;
  v11.receiver = v5;
  v11.super_class = v4;
  v6 = objc_msgSendSuper2(&v11, sel_init);
  v7 = OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate;
  swift_beginAccess();
  v8 = *&v6[v7];
  *&v6[v7] = a1;
  swift_unknownObjectRelease();
  v9 = a1;
  return v6;
}

id LACCompanionAuthenticationCoordinator.init(companion:reply:)(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCompanion:a1 replyQueue:a2];

  return v3;
}

char *LACCompanionAuthenticationCoordinator.init(companion:reply:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR___LACCompanionAuthenticationCoordinator____lazy_storage___mockedAuthProvider] = 0;
  v5 = OBJC_IVAR___LACCompanionAuthenticationCoordinator_pendingSessions;
  *&v2[v5] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = [objc_allocWithZone(LACCompanionAuthenticationProviderSharing) initForCompanion:a1 replyQueue:a2];
  *&v2[OBJC_IVAR___LACCompanionAuthenticationCoordinator_authProvider] = v6;
  *&v2[OBJC_IVAR___LACCompanionAuthenticationCoordinator_companion] = a1;
  *&v2[OBJC_IVAR___LACCompanionAuthenticationCoordinator_replyQueue] = a2;
  v13.receiver = v2;
  v13.super_class = LACCompanionAuthenticationCoordinator;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = *&v8[OBJC_IVAR___LACCompanionAuthenticationCoordinator_authProvider];
  v10 = v8;
  [v9 setDelegate_];
  v11 = [objc_opt_self() sharedInstance];
  [v11 addObserver:v10 notification:@"com.apple.LocalAuthentication.GlobalDomainDidChange"];

  return v10;
}

uint64_t LACCompanionAuthenticationCoordinator.description.getter()
{
  _StringGuts.grow(_:)(21);
  swift_getObjectType();
  v1 = _typeName(_:qualified:)();

  v7 = v1;
  MEMORY[0x1B2722A80](0xD000000000000011, 0x80000001B0355800);
  v2 = NSStringFromLACCompanionType([v0 companion]);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1B2722A80](v3, v5);

  return v7;
}

id LACCompanionAuthenticationCoordinator.isAvailable.getter()
{
  v1 = [objc_msgSend(v0 authenticationProvider)];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t LACCompanionAuthenticationCoordinator.domainState(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 authenticationProvider];
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_8;
  v8 = _Block_copy(v10);

  [v7 domainStateForRequest:a1 completion:v8];
  _Block_release(v8);
  return swift_unknownObjectRelease();
}

uint64_t LACCompanionAuthenticationCoordinator.authenticateRequest(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v4 replyQueue];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  aBlock[4] = partial apply for closure #1 in LACCompanionAuthenticationCoordinator.authenticateRequest(_:completion:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6;
  v19 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2722D20](0, v15, v11, v19);
  _Block_release(v19);

  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

void closure #1 in LACCompanionAuthenticationCoordinator.authenticateRequest(_:completion:)(uint64_t a1, void *a2, void (*a3)(void, id), uint64_t *a4)
{
  v84 = a3;
  v85 = a4;
  v5 = type metadata accessor for Logger();
  v87 = *(v5 - 8);
  v6 = *(v87 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v83 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v80 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v80 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v86 = &v80 - v26;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v30 = a2;
    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_7:
    outlined destroy of AsyncStream<()>.Continuation?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v35 = LACLogABM();
    v36 = v83;
    Logger.init(_:)();
    v37 = v30;
    swift_unknownObjectRetain();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138543618;
      swift_beginAccess();
      v42 = swift_unknownObjectWeakLoadStrong();
      *(v40 + 4) = v42;
      *v41 = v42;
      *(v40 + 12) = 1026;
      *(v40 + 14) = [v37 identifier];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1B0233000, v38, v39, "%{public}@ Unable to start companion authentication for request: %{public}u", v40, 0x12u);
      outlined destroy of AsyncStream<()>.Continuation?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v41, -1, -1);
      MEMORY[0x1B27246A0](v40, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v87 + 8))(v36, v5);
    v43 = objc_opt_self();
    v44 = MEMORY[0x1B27229A0](0xD000000000000026, 0x80000001B03557D0);
    v45 = [v43 errorWithCode:-1000 debugDescription:v44];

    v46 = v45;
    v84(0, v45);

    return;
  }

  v28 = Strong;
  v80 = v22;
  v82 = v5;
  v29 = [Strong authenticationProvider];

  v30 = a2;
  v31 = [v29 authenticateWithRequest_];
  swift_unknownObjectRelease();
  if (v31)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = v86;
  (*(v18 + 56))(v14, v32, 1, v17);
  outlined init with take of (key: UUID, value: LACCompanionAuthenticationPendingRequest)?(v14, v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v34 = (*(v18 + 48))(v16, 1, v17);
  v5 = v82;
  if (v34 == 1)
  {
    goto LABEL_7;
  }

  v47 = *(v18 + 32);
  v47(v33, v16, v17);
  swift_beginAccess();
  v48 = swift_unknownObjectWeakLoadStrong();
  v49 = v17;
  v50 = v18;
  v83 = v49;
  if (v48)
  {
    v51 = v48;
    (*(v18 + 16))(v25, v33, v49);
    v52 = type metadata accessor for LACCompanionAuthenticationPendingRequest();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    v55 = swift_allocObject();
    v47(v55 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_identifier, v25, v49);
    *(v55 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_request) = a2;
    v56 = (v55 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_completion);
    v57 = v85;
    *v56 = v84;
    v56[1] = v57;
    v58 = OBJC_IVAR___LACCompanionAuthenticationCoordinator_pendingSessions;
    swift_beginAccess();
    swift_unknownObjectRetain();

    v59 = *&v51[v58];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = *&v51[v58];
    *&v51[v58] = 0x8000000000000000;
    v61 = v55;
    v33 = v86;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, v86, isUniquelyReferenced_nonNull_native);
    *&v51[v58] = v88;
    v49 = v83;
    swift_endAccess();
  }

  v62 = LACLogABM();
  v63 = v81;
  Logger.init(_:)();
  v64 = v80;
  (*(v50 + 16))(v80, v33, v49);
  swift_unknownObjectRetain_n();

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v84 = v68;
    v85 = swift_slowAlloc();
    v88 = v85;
    *v67 = 138543874;
    swift_beginAccess();
    v69 = swift_unknownObjectWeakLoadStrong();
    *(v67 + 4) = v69;
    *v68 = v69;
    *(v67 + 12) = 2082;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v70 = v83;
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    v74 = *(v50 + 8);
    v74(v64, v70);
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v88);

    *(v67 + 14) = v75;
    *(v67 + 22) = 1026;
    LODWORD(v75) = [a2 identifier];
    swift_unknownObjectRelease();
    *(v67 + 24) = v75;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1B0233000, v65, v66, "%{public}@ Did start companion session with id: %{public}s for request %{public}u", v67, 0x1Cu);
    v76 = v84;
    outlined destroy of AsyncStream<()>.Continuation?(v84, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v76, -1, -1);
    v77 = v85;
    __swift_destroy_boxed_opaque_existential_0(v85);
    MEMORY[0x1B27246A0](v77, -1, -1);
    MEMORY[0x1B27246A0](v67, -1, -1);

    (*(v87 + 8))(v81, v82);
    v74(v86, v70);
  }

  else
  {

    swift_unknownObjectRelease_n();
    v78 = *(v50 + 8);
    v79 = v83;
    v78(v64, v83);
    (*(v87 + 8))(v63, v82);
    v78(v33, v79);
  }
}

Swift::Void __swiftcall LACCompanionAuthenticationCoordinator.cancelAuthentication(forRequestIdentifier:)(Swift::UInt32 forRequestIdentifier)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = type metadata accessor for DispatchQoS();
  v9 = *(v17[0] - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v17[0]);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v2 replyQueue];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = forRequestIdentifier;
  aBlock[4] = partial apply for closure #1 in LACCompanionAuthenticationCoordinator.cancelAuthentication(forRequestIdentifier:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_13;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2722D20](0, v12, v8, v16);
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v17[0]);
}

uint64_t closure #1 in LACCompanionAuthenticationCoordinator.cancelAuthentication(forRequestIdentifier:)(uint64_t a1, int a2)
{
  LODWORD(v110) = a2;
  v113 = type metadata accessor for UUID();
  v3 = *(v113 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v6 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v103 = *(v7 - 8);
  v8 = *(v103 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v102 = v94 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v94 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v111 = v94 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v101 = v94 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v109 = v94 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v94 - v29;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    v61 = v16;
    v58 = v7;
    v59 = v103;
LABEL_17:
    outlined destroy of AsyncStream<()>.Continuation?(v61, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMR);
    v82 = LACLogABM();
    v83 = v102;
    Logger.init(_:)();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_1B0233000, v84, v85, "No authentication to cancel", v86, 2u);
      MEMORY[0x1B27246A0](v86, -1, -1);
    }

    return (*(v59 + 8))(v83, v58);
  }

  v112 = v17;
  v95 = v18;
  v96 = v16;
  v97 = v22;
  v94[0] = v6;
  v100 = v11;
  v98 = v30;
  v94[1] = a1;
  v99 = v7;
  v32 = OBJC_IVAR___LACCompanionAuthenticationCoordinator_pendingSessions;
  v33 = Strong;
  swift_beginAccess();
  v34 = *&v33[v32];

  v35 = v34 + 64;
  v36 = 1 << *(v34 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v34 + 64);
  v39 = (v36 + 63) >> 6;
  v106 = (v3 + 16);
  v108 = (v3 + 8);

  v41 = 0;
  v42 = v101;
  v104 = v34 + 64;
  v107 = v3;
  v105 = v34;
  if (v38)
  {
    while (1)
    {
      v43 = v41;
LABEL_9:
      v44 = __clz(__rbit64(v38)) | (v43 << 6);
      v45 = v109;
      (*(v3 + 16))(v109, *(v34 + 48) + *(v3 + 72) * v44, v113);
      v46 = *(*(v34 + 56) + 8 * v44);
      v47 = v112;
      *(v45 + *(v112 + 48)) = v46;
      outlined init with take of (key: UUID, value: LACCompanionAuthenticationPendingRequest)?(v45, v42, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
      v48 = v111;
      outlined init with copy of (key: UUID, value: LACCompanionAuthenticationPendingRequest)(v42, v111);
      v49 = *(*(v48 + *(v47 + 48)) + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_request);
      v3 = v107;

      swift_unknownObjectRetain();

      v50 = [v49 identifier];
      swift_unknownObjectRelease();
      (*(v3 + 8))(v48, v113);
      if (v50 == v110)
      {
        break;
      }

      v38 &= v38 - 1;
      result = outlined destroy of AsyncStream<()>.Continuation?(v42, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
      v41 = v43;
      v34 = v105;
      v35 = v104;
      if (!v38)
      {
        goto LABEL_6;
      }
    }

    v53 = v96;
    outlined init with take of (key: UUID, value: LACCompanionAuthenticationPendingRequest)?(v42, v96, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
    v51 = v95;
    v52 = *(v95 + 56);
    v54 = v53;
    v55 = 0;
LABEL_13:
    v56 = v112;
    v52(v54, v55, 1, v112);

    v57 = (*(v51 + 48))(v53, 1, v56) == 1;
    v58 = v99;
    v59 = v103;
    v60 = v100;
    v61 = v53;
    v62 = v97;
    if (!v57)
    {
      v63 = v98;
      outlined init with take of (key: UUID, value: LACCompanionAuthenticationPendingRequest)?(v61, v98, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
      v64 = LACLogABM();
      Logger.init(_:)();
      outlined init with copy of (key: UUID, value: LACCompanionAuthenticationPendingRequest)(v63, v62);

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        LODWORD(v109) = v66;
        v68 = v56;
        v69 = v67;
        v70 = swift_slowAlloc();
        v106 = v70;
        v110 = swift_slowAlloc();
        v114 = v110;
        *v69 = 138543618;
        swift_beginAccess();
        v71 = swift_unknownObjectWeakLoadStrong();
        *(v69 + 4) = v71;
        *v70 = v71;
        *(v69 + 12) = 2082;
        v72 = v111;
        outlined init with copy of (key: UUID, value: LACCompanionAuthenticationPendingRequest)(v62, v111);
        v73 = *(v72 + *(v68 + 48));

        v74 = v94[0];
        v75 = v113;
        (*(v3 + 32))(v94[0], v72, v113);
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        v78 = v77;
        (*(v3 + 8))(v74, v75);
        outlined destroy of AsyncStream<()>.Continuation?(v62, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v114);

        *(v69 + 14) = v79;
        _os_log_impl(&dword_1B0233000, v65, v109, "%{public}@ Will cancel companion authentication for session: %{public}s", v69, 0x16u);
        v80 = v106;
        outlined destroy of AsyncStream<()>.Continuation?(v106, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v80, -1, -1);
        v81 = v110;
        __swift_destroy_boxed_opaque_existential_0(v110);
        MEMORY[0x1B27246A0](v81, -1, -1);
        MEMORY[0x1B27246A0](v69, -1, -1);

        (*(v59 + 8))(v100, v58);
      }

      else
      {

        outlined destroy of AsyncStream<()>.Continuation?(v62, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
        (*(v59 + 8))(v60, v58);
      }

      swift_beginAccess();
      v87 = swift_unknownObjectWeakLoadStrong();
      v88 = v98;
      if (v87)
      {
        v89 = v87;
        v90 = [v87 authenticationProvider];

        v91 = v111;
        outlined init with copy of (key: UUID, value: LACCompanionAuthenticationPendingRequest)(v88, v111);
        v92 = *(v91 + *(v112 + 48));

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v108)(v91, v113);
        [v90 cancelAuthenticationWithID_];
        swift_unknownObjectRelease();
      }

      return outlined destroy of AsyncStream<()>.Continuation?(v88, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
    }

    goto LABEL_17;
  }

LABEL_6:
  while (1)
  {
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v43 >= v39)
    {

      v51 = v95;
      v52 = *(v95 + 56);
      v53 = v96;
      v54 = v96;
      v55 = 1;
      goto LABEL_13;
    }

    v38 = *(v35 + 8 * v43);
    ++v41;
    if (v38)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void __swiftcall LACCompanionAuthenticationCoordinator.init()(LACCompanionAuthenticationCoordinator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id LACCompanionAuthenticationCoordinator.notificationCenter(_:didReceive:)(uint64_t a1, const __CFString *a2)
{
  result = LACDarwinNotificationsEqual(a2, @"com.apple.LocalAuthentication.GlobalDomainDidChange");
  if (result)
  {

    return LACCompanionAuthenticationCoordinator.simulateAuthenticationSuccess()();
  }

  return result;
}

id LACCompanionAuthenticationCoordinator.simulateAuthenticationSuccess()()
{
  v100 = type metadata accessor for DispatchWorkItemFlags();
  v0 = *(v100 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchQoS();
  v3 = *(v98 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for UUID();
  v118 = *(v123 - 8);
  v6 = *(v118 + 64);
  v7 = MEMORY[0x1EEE9AC00](v123);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v115 = &v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v91 - v16;
  v105 = type metadata accessor for Logger();
  v18 = *(v105 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v105);
  v104 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v91 - v22;
  result = [objc_opt_self() companionAuthentication];
  if (result)
  {
    v116 = v17;
    v25 = result;
    v113 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v26;

    v27 = LACLogABM();
    Logger.init(_:)();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1B0233000, v28, v29, "Will simulate companion authentication success", v30, 2u);
      MEMORY[0x1B27246A0](v30, -1, -1);
    }

    v31 = *(v18 + 8);
    v103 = v18 + 8;
    v102 = v31;
    v31(v23, v105);
    v32 = OBJC_IVAR___LACCompanionAuthenticationCoordinator_pendingSessions;
    v33 = v101;
    swift_beginAccess();
    v34 = *&v33[v32];
    v35 = *(v34 + 64);
    v95 = v34 + 64;
    v36 = 1 << *(v34 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & v35;
    v94 = (v36 + 63) >> 6;
    v114 = v118 + 16;
    v117 = (v118 + 32);
    v111 = (v118 + 8);
    v93 = v126;
    v92 = (v0 + 8);
    v91 = (v3 + 8);
    v110 = v34;

    v39 = 0;
    v40 = v116;
    v119 = v15;
    v109 = v9;
    if (!v38)
    {
      goto LABEL_10;
    }

    do
    {
      while (1)
      {
        v41 = v39;
LABEL_17:
        v46 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
        v47 = v46 | (v41 << 6);
        v48 = v110;
        v49 = v118;
        v50 = v115;
        v51 = v123;
        (*(v118 + 16))(v115, *(v110 + 48) + *(v118 + 72) * v47, v123);
        v52 = *(*(v48 + 56) + 8 * v47);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
        v54 = *(v53 + 48);
        v55 = *(v49 + 32);
        v15 = v119;
        v44 = v117;
        v55(v119, v50, v51);
        *&v15[v54] = v52;
        (*(*(v53 - 8) + 56))(v15, 0, 1, v53);

        v43 = v41;
        v40 = v116;
        v45 = MEMORY[0x1E69E7CC0];
        v9 = v109;
LABEL_18:
        outlined init with take of (key: UUID, value: LACCompanionAuthenticationPendingRequest)?(v15, v40, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMR);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
        if ((*(*(v56 - 8) + 48))(v40, 1, v56) == 1)
        {

          return outlined consume of Data._Representation(v113, v112);
        }

        v122 = v43;
        v57 = *(v40 + *(v56 + 48));
        v58 = *v44;
        (*v44)(v9, v40, v123);
        v59 = [*(v57 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_request) acmContextData];
        v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(v45);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v64 = Data._bridgeToObjectiveC()().super.isa;
        v120 = v60;
        v121 = v62;
        v65 = v45;
        v66 = v9;
        v67 = Data._bridgeToObjectiveC()().super.isa;
        LODWORD(v62) = MKBVerifyPasswordWithContext();

        if (v62)
        {
          break;
        }

        v75 = v101;
        v108 = [v101 replyQueue];
        v76 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v77 = [v75 authenticationProvider];
        v78 = v118;
        v79 = *(v118 + 16);
        v107 = v57;
        v80 = v115;
        v81 = v123;
        v79(v115, v66, v123);
        v82 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v83 = swift_allocObject();
        *(v83 + 16) = v76;
        *(v83 + 24) = v77;
        v106 = v76;
        v58((v83 + v82), v80, v81);
        v126[2] = partial apply for closure #1 in LACCompanionAuthenticationCoordinator.simulateAuthenticationSuccess();
        v126[3] = v83;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v126[0] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v126[1] = &block_descriptor_55;
        v84 = _Block_copy(aBlock);

        swift_unknownObjectRetain();
        v85 = v97;
        static DispatchQoS.unspecified.getter();
        v124 = v65;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v86 = v99;
        v87 = v100;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v88 = v108;
        MEMORY[0x1B2722D20](0, v85, v86, v84);
        outlined consume of Data._Representation(v120, v121);
        _Block_release(v84);
        swift_unknownObjectRelease();

        v89 = v81;
        v40 = v116;
        (*v92)(v86, v87);
        (*v91)(v85, v98);
        (*(v118 + 8))(v66, v89);

        v39 = v122;
        v9 = v66;
        v15 = v119;
        if (!v38)
        {
          goto LABEL_10;
        }
      }

      v68 = v120;
      v69 = v121;
      v70 = LACLogABM();
      v71 = v104;
      Logger.init(_:)();
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1B0233000, v72, v73, "Passcode verification failed", v74, 2u);
        MEMORY[0x1B27246A0](v74, -1, -1);
      }

      outlined consume of Data._Representation(v68, v69);

      v102(v71, v105);
      v9 = v66;
      result = (*v111)(v66, v123);
      v39 = v122;
      v15 = v119;
    }

    while (v38);
LABEL_10:
    if (v94 <= v39 + 1)
    {
      v42 = v39 + 1;
    }

    else
    {
      v42 = v94;
    }

    v43 = v42 - 1;
    v44 = v117;
    v45 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v94)
      {
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
        (*(*(v90 - 8) + 56))(v15, 1, 1, v90);
        v38 = 0;
        goto LABEL_18;
      }

      v38 = *(v95 + 8 * v41);
      ++v39;
      if (v38)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t closure #1 in LACCompanionAuthenticationCoordinator.authenticationProvider(_:didStartAuthenticationWith:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = LACLogABM();
  Logger.init(_:)();
  (*(v4 + 16))(v7, a2, v3);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v31 = v8;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543618;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v16 + 4) = Strong;
    v30 = v17;
    *v17 = Strong;
    *(v16 + 12) = 1026;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v29 = v15;
      v20 = OBJC_IVAR___LACCompanionAuthenticationCoordinator_pendingSessions;
      swift_beginAccess();
      v21 = *&v19[v20];
      if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v23 & 1) != 0))
      {
        v24 = *(*(v21 + 56) + 8 * v22);
        swift_endAccess();

        v25 = *(v24 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_request);
        swift_unknownObjectRetain();

        LODWORD(v19) = [v25 identifier];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();

        LODWORD(v19) = 0;
      }

      LOBYTE(v15) = v29;
    }

    (*(v4 + 8))(v7, v3);
    *(v16 + 14) = v19;

    _os_log_impl(&dword_1B0233000, v14, v15, "%{public}@ Did start companion authentication for request %{public}u", v16, 0x12u);
    v26 = v30;
    outlined destroy of AsyncStream<()>.Continuation?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v26, -1, -1);
    MEMORY[0x1B27246A0](v16, -1, -1);

    v8 = v31;
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t closure #1 in LACCompanionAuthenticationCoordinator.authenticationProvider(_:didCompleteAuthenticationWith:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - v12;
  v14 = type metadata accessor for Logger();
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = *(v62 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v61 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v58 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_9:
    v45 = LACLogABM();
    Logger.init(_:)();
    v46 = v3;
    (*(v4 + 16))(v13, a2, v3);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v65 = v50;
      *v49 = 136446210;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v4 + 8))(v13, v46);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v65);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_1B0233000, v47, v48, "Companion authentication finished for session: %{public}s but there is no pending authentication for it", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x1B27246A0](v50, -1, -1);
      MEMORY[0x1B27246A0](v49, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v13, v46);
    }

    return (*(v62 + 8))(v19, v63);
  }

  v21 = Strong;
  v22 = OBJC_IVAR___LACCompanionAuthenticationCoordinator_pendingSessions;
  swift_beginAccess();
  v23 = *&v21[v22];
  if (!*(v23 + 16) || (v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v25 & 1) == 0))
  {
    swift_endAccess();

    goto LABEL_9;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  swift_endAccess();

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  v28 = v3;
  if (v27)
  {
    v29 = v27;
    (*(v4 + 16))(v11, a2, v3);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(0, v11);
    swift_endAccess();
  }

  v30 = LACLogABM();
  v31 = v61;
  Logger.init(_:)();
  (*(v4 + 16))(v8, a2, v28);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v60 = v26;
    v35 = v34;
    v36 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *v35 = 138543618;
    swift_beginAccess();
    v37 = swift_unknownObjectWeakLoadStrong();
    *(v35 + 4) = v37;
    *v36 = v37;
    v38 = v36;
    *(v35 + 12) = 2082;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    (*(v4 + 8))(v8, v28);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v64);

    *(v35 + 14) = v42;
    _os_log_impl(&dword_1B0233000, v32, v33, "%{public}@ Companion authentication successfully finished for session: %{public}s", v35, 0x16u);
    outlined destroy of AsyncStream<()>.Continuation?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v38, -1, -1);
    v43 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x1B27246A0](v43, -1, -1);
    v44 = v35;
    v26 = v60;
    MEMORY[0x1B27246A0](v44, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v8, v28);
  }

  (*(v62 + 8))(v31, v63);
  v57 = *(v26 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_completion);
  v56 = *(v26 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_completion + 8);

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v57();
}

uint64_t @objc LACCompanionAuthenticationCoordinator.authenticationProvider(_:didStartAuthenticationWith:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v16 = a1;
  specialized LACCompanionAuthenticationCoordinator.authenticationProvider(_:didStartAuthenticationWith:)(v15, a5, a6, a7);
  swift_unknownObjectRelease();

  return (*(v12 + 8))(v15, v11);
}

uint64_t closure #1 in LACCompanionAuthenticationCoordinator.authenticationProvider(_:didFailAuthenticationWith:error:)(uint64_t a1, uint64_t *a2, void *a3)
{
  v78 = a2;
  v4 = type metadata accessor for Logger();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v73 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v75 = &v73 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v73 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v22 = Strong;
  v23 = OBJC_IVAR___LACCompanionAuthenticationCoordinator_pendingSessions;
  swift_beginAccess();
  v24 = *&v22[v23];
  if (!*(v24 + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v78), (v26 & 1) == 0))
  {
    swift_endAccess();

LABEL_9:
    v53 = LACLogABM();
    Logger.init(_:)();
    (*(v12 + 16))(v16, v78, v11);
    v54 = a3;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = v12;
      v78 = v8;
      v59 = v57;
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v80 = v61;
      *v59 = 136446466;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v11;
      v64 = a3;
      v66 = v65;
      (*(v58 + 8))(v16, v63);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v66, &v80);

      *(v59 + 4) = v67;
      *(v59 + 12) = 2112;
      v68 = v64;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 14) = v69;
      *v60 = v69;
      _os_log_impl(&dword_1B0233000, v55, v56, "Companion authentication failed for session: %{public}s with error: %@ but there is no pending authentication for it", v59, 0x16u);
      outlined destroy of AsyncStream<()>.Continuation?(v60, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v60, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x1B27246A0](v61, -1, -1);
      MEMORY[0x1B27246A0](v59, -1, -1);

      return (*(v76 + 8))(v78, v77);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
      return (*(v76 + 8))(v8, v77);
    }
  }

  v27 = v10;
  v28 = *(*(v24 + 56) + 8 * v25);
  swift_endAccess();
  v74 = v28;

  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  v30 = v11;
  v31 = v12;
  v32 = v78;
  if (v29)
  {
    v33 = v29;
    (*(v12 + 16))(v20, v78, v30);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(0, v20);
    swift_endAccess();
  }

  v34 = LACLogABM();
  v35 = v27;
  Logger.init(_:)();
  v36 = v75;
  (*(v31 + 16))(v75, v32, v30);

  v37 = a3;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v79 = v78;
    *v40 = 138543874;
    swift_beginAccess();
    v42 = swift_unknownObjectWeakLoadStrong();
    *(v40 + 4) = v42;
    *v41 = v42;
    *(v40 + 12) = 2082;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v43 = v39;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v36;
    v46 = v44;
    v48 = v47;
    (*(v31 + 8))(v45, v30);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v79);

    *(v40 + 14) = v49;
    *(v40 + 22) = 2112;
    v50 = a3;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 24) = v51;
    v41[1] = v51;
    _os_log_impl(&dword_1B0233000, v38, v43, "%{public}@ Companion authentication failed for session: %{public}s with error: %@", v40, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v41, -1, -1);
    v52 = v78;
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x1B27246A0](v52, -1, -1);
    MEMORY[0x1B27246A0](v40, -1, -1);
  }

  else
  {

    (*(v31 + 8))(v36, v30);
  }

  (*(v76 + 8))(v35, v77);
  v71 = *(v74 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_completion);
  v72 = *(v74 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_completion + 8);

  v71(0, a3);
}

uint64_t LACCompanionAuthenticationPendingRequest.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_request);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_completion + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void closure #1 in LACCompanionAuthenticationCoordinator.simulateAuthenticationSuccess()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v4 authenticationProvider:a2 didCompleteAuthenticationWithID:isa];
  }
}

uint64_t specialized LACCompanionAuthenticationCoordinator.authenticationProvider(_:didStartAuthenticationWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v23[1] = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v23[0] = [v4 replyQueue];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v15 + 16))(v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v15 + 32))(v19 + v18, v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  aBlock[4] = v24;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v25;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v23[0];
  MEMORY[0x1B2722D20](0, v13, v9, v20);
  _Block_release(v20);

  (*(v28 + 8))(v9, v6);
  (*(v26 + 8))(v13, v27);
}

uint64_t specialized LACCompanionAuthenticationCoordinator.authenticationProvider(_:didFailAuthenticationWith:error:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v27 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [v3 replyQueue];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v14 + 16))(v16, a1, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v14 + 32))(v20 + v18, v16, v13);
  v21 = v27;
  *(v20 + v19) = v27;
  aBlock[4] = partial apply for closure #1 in LACCompanionAuthenticationCoordinator.authenticationProvider(_:didFailAuthenticationWith:error:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_34;
  v22 = _Block_copy(aBlock);

  v23 = v21;
  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v26;
  MEMORY[0x1B2722D20](0, v12, v8, v22);
  _Block_release(v22);

  (*(v30 + 8))(v8, v5);
  (*(v28 + 8))(v12, v29);
}

unint64_t type metadata accessor for LACCompanionAuthenticationCoordinator()
{
  result = lazy cache variable for type metadata for LACCompanionAuthenticationCoordinator;
  if (!lazy cache variable for type metadata for LACCompanionAuthenticationCoordinator)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACCompanionAuthenticationCoordinator);
  }

  return result;
}

uint64_t type metadata accessor for LACCompanionAuthenticationPendingRequest()
{
  result = type metadata singleton initialization cache for LACCompanionAuthenticationPendingRequest;
  if (!type metadata singleton initialization cache for LACCompanionAuthenticationPendingRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LACCompanionAuthenticationPendingRequest()
{
  result = type metadata accessor for UUID();
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

uint64_t partial apply for closure #1 in LACCompanionAuthenticationCoordinator.authenticationProvider(_:didFailAuthenticationWith:error:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in LACCompanionAuthenticationCoordinator.authenticationProvider(_:didFailAuthenticationWith:error:)(v3, (v0 + v2), v4);
}

uint64_t objectdestroy_37Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in LACCompanionAuthenticationCoordinator.authenticationProvider(_:didCompleteAuthenticationWith:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void partial apply for closure #1 in LACCompanionAuthenticationCoordinator.simulateAuthenticationSuccess()()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  closure #1 in LACCompanionAuthenticationCoordinator.simulateAuthenticationSuccess()(v2, v3);
}

uint64_t outlined init with copy of (key: UUID, value: LACCompanionAuthenticationPendingRequest)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: UUID, value: LACCompanionAuthenticationPendingRequest)?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id LACCredentialExtractablePasswordAuthorizer.init(acmHelper:)(uint64_t a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v1 initWithACMHelper:a1 featureFlags:v3 signPoster:v4];

  swift_unknownObjectRelease();
  return v5;
}

id LACCredentialExtractablePasswordAuthorizer.init(acmHelper:featureFlags:signPoster:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithACMHelper:a1 featureFlags:a2 signPoster:a3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

{
  *(v3 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_acmHelper) = a1;
  *(v3 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_featureFlags) = a2;
  *(v3 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_signPoster) = a3;
  v5.super_class = LACCredentialExtractablePasswordAuthorizer;
  return objc_msgSendSuper2(&v5, sel_init);
}

void LACCredentialExtractablePasswordAuthorizer.checkOriginatorCanReadExtractableCredential(_:)(void *a1)
{
  v3 = v1;
  v23 = type metadata accessor for Logger();
  v22 = *(v23 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v8.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v9 = LACCredentialExtractablePasswordAuthorizer.fetchExtractablePasswordCredentialAge()();
  v10 = v2;
  if (!v2)
  {
    v11 = v9;

    v8.super.super.isa = v11;
    specialized LACCredentialExtractablePasswordAuthorizer.checkOriginatorCanReadExtractablePasswordCredential(_:credentialAge:)(a1, v8.super.super.isa);

    v10 = 0;
  }

  v12 = *(v3 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_signPoster);
  v13 = [v12 extractableCredentialReadAttemptWithAge:v8.super.super.isa accessAllowed:v10 == 0];
  [v13 send];

  if (v10)
  {
    v14 = [a1 signingID];
    if (!v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = MEMORY[0x1B27229A0](v15);
    }

    v16 = [v12 extractableCredentialFailedReadAttemptWithAge:v8.super.super.isa signingID:v14];

    [v16 send];
    if ([*(v3 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_featureFlags) featureFlagExtractableCredentialProtectionEnabled])
    {
      swift_willThrow();
    }

    else
    {
      v17 = LACLogCredentials();
      Logger.init(_:)();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1B0233000, v18, v19, "Temporarily waiving access requirements", v20, 2u);
        MEMORY[0x1B27246A0](v20, -1, -1);
      }

      (*(v22 + 8))(v7, v23);
    }
  }

  else
  {
  }
}

id LACCredentialExtractablePasswordAuthorizer.fetchExtractablePasswordCredentialAge()()
{
  v30[1] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_acmHelper);
  v30[0] = 0;
  v7 = [v6 ageForDataWithType:7 error:v30];
  if (v7)
  {
    v8 = v30[0];
  }

  else
  {
    v9 = v30[0];
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = LACLogCredentials();
    Logger.init(_:)();
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29 = v2;
      v16 = v15;
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004BLL, 0x80000001B0355C30, v30);
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v27 = v14;
      v17 = Error.localizedDescription.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v30);

      *(v16 + 14) = v19;
      _os_log_impl(&dword_1B0233000, v13, v27, "%s (%s)", v16, 0x16u);
      v20 = v28;
      swift_arrayDestroy();
      MEMORY[0x1B27246A0](v20, -1, -1);
      MEMORY[0x1B27246A0](v16, -1, -1);

      (*(v29 + 8))(v5, v1);
    }

    else
    {

      (*(v2 + 8))(v5, v1);
    }

    v21 = objc_opt_self();
    v22 = _convertErrorToNSError(_:)();
    v23 = MEMORY[0x1B27229A0](0xD00000000000004BLL, 0x80000001B0355C30);
    [v21 errorWithCode:-1000 underlyingError:v22 debugDescription:v23];

    swift_willThrow();
  }

  v24 = *MEMORY[0x1E69E9840];
  return v7;
}

void LACCredentialExtractablePasswordAuthorizer.checkOriginatorCanWriteExtractableCredential(_:)(void *a1)
{
  v4 = type metadata accessor for Logger();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized LACCredentialExtractablePasswordAuthorizer.checkOriginatorCanWriteExtractablePasswordCredential(_:)(a1);
  if (v2)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v1 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_signPoster);
  v10 = [v9 extractableCredentialWriteAttemptWithAccessAllowed_];
  [v10 send];

  if (v8)
  {
    v11 = [a1 signingID];
    if (!v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = MEMORY[0x1B27229A0](v12);
    }

    v13 = [v9 extractableCredentialFailedWriteAttemptWithSigningID_];

    [v13 send];
    if ([*(v1 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_featureFlags) featureFlagExtractableCredentialProtectionEnabled])
    {
      swift_willThrow();
    }

    else
    {
      v14 = LACLogCredentials();
      Logger.init(_:)();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1B0233000, v15, v16, "Temporarily waiving access requirements", v17, 2u);
        MEMORY[0x1B27246A0](v17, -1, -1);
      }

      (*(v19 + 8))(v7, v4);
    }
  }
}

uint64_t @objc LACCredentialExtractablePasswordAuthorizer.checkOriginatorCanReadExtractableCredential(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_unknownObjectRetain();
  v8 = a1;
  a5(a3);

  swift_unknownObjectRelease();
  return 1;
}

void __swiftcall LACCredentialExtractablePasswordAuthorizer.init()(LACCredentialExtractablePasswordAuthorizer *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
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

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t specialized LACCredentialExtractablePasswordAuthorizer.checkOriginatorCanReadExtractablePasswordCredential(_:credentialAge:)(void *a1, __CFString *a2)
{
  v42 = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - v9;
  if (![a1 isFirstPartyClient])
  {
    goto LABEL_5;
  }

  v41 = v10;
  v11 = v4;
  v12 = v3;
  v13 = [a1 signingID];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of LACCredentialExtractablePasswordAuthorizer.checkOriginatorIsExemptedFromAccessRequirements(_:));
  swift_arrayDestroy();
  v18._object = 0x80000001B0355C10;
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  if (String.hasPrefix(_:)(v18))
  {
  }

  v20 = specialized Set.contains(_:)(v14, v16, v17);

  v3 = v12;
  v4 = v11;
  v10 = v41;
  if ((v20 & 1) == 0)
  {
LABEL_5:
    v21 = @"com.apple.private.LocalAuthentication.ExtractCredential";
    v22 = [a1 checkEntitlement_];
    v23 = [a1 checkEntitlement_];
    if ((v22 & 1) == 0 && !v23)
    {
      v24 = LACLogCredentials();
      Logger.init(_:)();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v43 = v28;
        *v27 = 136315138;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = @"com.apple.private.LocalAuthentication.ExtractCredential";
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v43);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_1B0233000, v25, v26, "Extracting a LACredentialTypeExtractablePassword requires the '%s' entitlement", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x1B27246A0](v28, -1, -1);
        MEMORY[0x1B27246A0](v27, -1, -1);

        (*(v4 + 8))(v8, v3);
        v21 = v42;
      }

      else
      {

        (*(v4 + 8))(v8, v3);
      }

LABEL_14:
      [objc_opt_self() missingEntitlementError_];
      return swift_willThrow();
    }

    result = [(__CFString *)v42 unsignedIntegerValue];
    if (result >= 0x927C1)
    {
      v21 = @"com.apple.private.LocalAuthentication.ContextData.ExtendedMaxAge";
      result = [a1 checkEntitlement_];
      if ((result & 1) == 0)
      {
        v32 = LACLogCredentials();
        Logger.init(_:)();
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v41 = v10;
          v37 = v36;
          v43 = v36;
          *v35 = 134218242;
          *(v35 + 4) = 600;
          *(v35 + 12) = 2080;
          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v43);

          *(v35 + 14) = v40;
          _os_log_impl(&dword_1B0233000, v33, v34, "Extracting a LACredentialTypeExtractablePassword after %ld secs requires the '%s' entitlement", v35, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v37);
          MEMORY[0x1B27246A0](v37, -1, -1);
          MEMORY[0x1B27246A0](v35, -1, -1);

          (*(v4 + 8))(v41, v3);
        }

        else
        {

          (*(v4 + 8))(v10, v3);
        }

        goto LABEL_14;
      }
    }
  }

  return result;
}

uint64_t specialized LACCredentialExtractablePasswordAuthorizer.checkOriginatorCanWriteExtractablePasswordCredential(_:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 isFirstPartyClient])
  {
    goto LABEL_5;
  }

  v7 = [a1 signingID];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of LACCredentialExtractablePasswordAuthorizer.checkOriginatorIsExemptedFromAccessRequirements(_:));
  swift_arrayDestroy();
  v12._object = 0x80000001B0355C10;
  v12._countAndFlagsBits = 0xD00000000000001BLL;
  if (String.hasPrefix(_:)(v12))
  {
  }

  v14 = specialized Set.contains(_:)(v8, v10, v11);

  if ((v14 & 1) == 0)
  {
LABEL_5:
    v15 = [a1 checkEntitlement_];
    result = [a1 checkEntitlement_];
    if ((v15 & 1) == 0 && (result & 1) == 0)
    {
      v16 = LACLogCredentials();
      Logger.init(_:)();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v28 = v20;
        *v19 = 136315138;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v28);
        v27 = v2;
        v24 = v3;
        v25 = v23;

        *(v19 + 4) = v25;
        _os_log_impl(&dword_1B0233000, v17, v18, "Stashing a LACredentialTypeExtractablePassword requires the '%s' entitlement", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x1B27246A0](v20, -1, -1);
        MEMORY[0x1B27246A0](v19, -1, -1);

        (*(v24 + 8))(v6, v27);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
      }

      [objc_opt_self() missingEntitlementError_];
      return swift_willThrow();
    }
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

id LACCompanionAuthenticationController.isSessionActive.getter()
{
  v1 = [objc_msgSend(v0 sessionMonitor)];
  swift_unknownObjectRelease();
  return v1;
}

id LACCompanionAuthenticationController.init(authenticator:clientInfoProvider:environmentProvider:sessionMonitor:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAuthenticator:a1 clientInfoProvider:a2 environmentProvider:a3 sessionMonitor:a4 replyQueue:a5];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

char *LACCompanionAuthenticationController.init(authenticator:clientInfoProvider:environmentProvider:sessionMonitor:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v5[OBJC_IVAR___LACCompanionAuthenticationController_companion] = 0;
  v11 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
  *&v5[v11] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_23LocalAuthenticationCore012LACCompanionF24ControllerPendingRequestCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *&v5[OBJC_IVAR___LACCompanionAuthenticationController_authenticator] = a1;
  *&v5[OBJC_IVAR___LACCompanionAuthenticationController_clientInfoProvider] = a2;
  *&v5[OBJC_IVAR___LACCompanionAuthenticationController_environmentProvider] = a3;
  *&v5[OBJC_IVAR___LACCompanionAuthenticationController_sessionMonitor] = a4;
  *&v5[OBJC_IVAR___LACCompanionAuthenticationController_replyQueue] = a5;
  v17.receiver = v5;
  v17.super_class = LACCompanionAuthenticationController;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  v14 = *&v13[OBJC_IVAR___LACCompanionAuthenticationController_sessionMonitor];
  v15 = v13;
  [v14 addObserver_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v15;
}

uint64_t LACCompanionAuthenticationController.domainState(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 authenticator];
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_9;
  v8 = _Block_copy(v10);

  [v7 domainStateForRequest:a1 completion:v8];
  _Block_release(v8);
  return swift_unknownObjectRelease();
}

void LACCompanionAuthenticationController.processRequest(_:configuration:completion:)(void *a1, char *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v61 = a3;
  v57 = a2;
  v8 = type metadata accessor for Logger();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v60 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v20 = [v5 replyQueue];
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
  v21 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if (v21)
  {
    if ([v5 canProcessRequest_])
    {
      v22 = type metadata accessor for LACCompanionAuthenticationControllerPendingRequest();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      v25 = swift_allocObject();
      UUID.init()();
      *(v25 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_isProcessedByController) = 0;
      *(v25 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_companionAuthenticationResult) = 0;
      (*(v12 + 56))(v25 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID, 1, 1, v11);
      *(v25 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request) = a1;
      swift_unknownObjectRetain();
      v26 = [v57 nextProcessor];
      *(v25 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_nextProcessor) = v26;
      v27 = (v25 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
      *v27 = v61;
      v27[1] = a4;
      *(v25 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_state) = 0;
      v28 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
      v56 = *(v12 + 16);
      v56(v15, v25 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, v11);
      v29 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
      swift_beginAccess();

      v30 = *&v5[v29];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = *&v5[v29];
      *&v5[v29] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v15, isUniquelyReferenced_nonNull_native);
      v32 = *(v12 + 8);
      v53[1] = v12 + 8;
      v55 = v32;
      v32(v15, v11);
      *&v5[v29] = v62;
      swift_endAccess();
      v33 = LACLogABM();
      v34 = v60;
      Logger.init(_:)();
      v61 = a1;
      swift_unknownObjectRetain_n();

      v35 = v5;
      v36 = Logger.logObject.getter();
      LODWORD(v29) = static os_log_type_t.default.getter();

      v37 = v35;

      v54 = v29;
      v38 = v29;
      v39 = v36;
      if (os_log_type_enabled(v36, v38))
      {
        v40 = swift_slowAlloc();
        v57 = v28;
        v41 = v40;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v63 = v43;
        *v41 = 138543874;
        v44 = v37;
        *(v41 + 4) = v37;
        *v42 = v37;
        v45 = v42;
        *(v41 + 12) = 2082;
        v56(v15, &v57[v25], v11);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v46 = v44;
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        v55(v15, v11);
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v63);

        *(v41 + 14) = v50;
        *(v41 + 22) = 1024;
        LODWORD(v50) = [v61 identifier];
        swift_unknownObjectRelease();
        *(v41 + 24) = v50;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v39, v54, "%{public}@ Registered pending request: %{public}s for evaluation request rid: %u", v41, 0x1Cu);
        outlined destroy of AsyncStream<()>.Continuation?(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v45, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x1B27246A0](v43, -1, -1);
        v51 = v41;
        v28 = v57;
        MEMORY[0x1B27246A0](v51, -1, -1);

        (*(v58 + 8))(v60, v59);
      }

      else
      {

        swift_unknownObjectRelease_n();
        (*(v58 + 8))(v34, v59);
      }

      LACCompanionAuthenticationController.processAndEvaluateRequest(with:)(&v28[v25]);
    }

    else
    {
      v52 = [objc_opt_self() resultWithNext_];
      (v61)();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.__allocating_init(request:configuration:completion:state:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *(v6 + 48);
  v13 = *(v6 + 52);
  v14 = swift_allocObject();
  UUID.init()();
  *(v14 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_isProcessedByController) = 0;
  *(v14 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_companionAuthenticationResult) = 0;
  v15 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *(v14 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request) = a1;
  swift_unknownObjectRetain();
  v17 = [a2 nextProcessor];
  swift_unknownObjectRelease();

  *(v14 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_nextProcessor) = v17;
  v18 = (v14 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
  *v18 = a3;
  v18[1] = a4;
  *(v14 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_state) = a5;
  return v14;
}

void LACCompanionAuthenticationController.processAndEvaluateRequest(with:)(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v121[3] = *MEMORY[0x1E69E9840];
  v120 = type metadata accessor for UUID();
  v3 = *(v120 - 1);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v120);
  v116 = (&v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v108 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v108 - v10;
  v119 = type metadata accessor for Logger();
  v117 = *(v119 - 8);
  v12 = *(v117 + 64);
  v13 = MEMORY[0x1EEE9AC00](v119);
  v114 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v108 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v115 = &v108 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v108 - v20;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = (&v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v26 = [v2 replyQueue];
  (*(v23 + 104))(v26, *MEMORY[0x1E69E8020], v22);
  v27 = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v26, v22);
  if ((v27 & 1) == 0)
  {
    __break(1u);
  }

  v28 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
  swift_beginAccess();
  v29 = *&v2[v28];
  v30 = v118;
  if (*(v29 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v118), (v32 & 1) != 0))
  {
    v33 = *(*(v29 + 56) + 8 * v31);
    swift_endAccess();

    v34 = LACLogABM();
    Logger.init(_:)();
    v35 = v30;
    v36 = v120;
    v109 = v3[2];
    v110 = v3 + 2;
    v109(v11, v35, v120);
    v37 = v2;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    v40 = os_log_type_enabled(v38, v39);
    v112 = v3;
    if (v40)
    {
      v41 = v3;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v113 = v33;
      v44 = v43;
      v108 = swift_slowAlloc();
      v121[0] = v108;
      *v42 = 138543618;
      *(v42 + 4) = v37;
      *v44 = v37;
      *(v42 + 12) = 2082;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v45 = v37;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v111 = v41[1];
      v111(v11, v120);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v121);
      v50 = v119;
      v36 = v120;

      *(v42 + 14) = v49;
      _os_log_impl(&dword_1B0233000, v38, v39, "%{public}@ Will process request: %{public}s", v42, 0x16u);
      outlined destroy of AsyncStream<()>.Continuation?(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v51 = v44;
      v33 = v113;
      MEMORY[0x1B27246A0](v51, -1, -1);
      v52 = v108;
      __swift_destroy_boxed_opaque_existential_0(v108);
      MEMORY[0x1B27246A0](v52, -1, -1);
      MEMORY[0x1B27246A0](v42, -1, -1);

      v53 = *(v117 + 8);
      v53(v21, v50);
    }

    else
    {

      v111 = v3[1];
      v111(v11, v36);
      v53 = *(v117 + 8);
      v50 = v119;
      v53(v21, v119);
    }

    v70 = [v37 isSessionActive];
    v71 = v116;
    if (v70)
    {
      v72 = *(v33 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request);
      v121[0] = 0;
      if ([v37 canAuthenticateRequest:v72 availabilityError:0 error:v121])
      {
        v73 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
        v74 = v121[0];
        LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)((v33 + v73));
      }

      else
      {
        v113 = v33;
        v83 = v121[0];
        v84 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v85 = LACLogABM();
        v86 = v114;
        Logger.init(_:)();
        v109(v71, v118, v36);
        v87 = v37;
        v88 = v84;
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v121[0] = v120;
          *v91 = 138543874;
          *(v91 + 4) = v87;
          *v92 = v87;
          *(v91 + 12) = 2082;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v93 = v71;
          v94 = v87;
          v95 = dispatch thunk of CustomStringConvertible.description.getter();
          LODWORD(v118) = v90;
          v96 = v95;
          v98 = v97;
          v111(v93, v36);
          v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, v121);

          *(v91 + 14) = v99;
          *(v91 + 22) = 2112;
          v100 = v84;
          v101 = _swift_stdlib_bridgeErrorToNSError();
          *(v91 + 24) = v101;
          v92[1] = v101;
          _os_log_impl(&dword_1B0233000, v89, v118, "%{public}@ Failing request: %{public}s with error: %@ - Authentication not supported", v91, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          MEMORY[0x1B27246A0](v92, -1, -1);
          v102 = v120;
          __swift_destroy_boxed_opaque_existential_0(v120);
          MEMORY[0x1B27246A0](v102, -1, -1);
          MEMORY[0x1B27246A0](v91, -1, -1);

          v103 = v114;
        }

        else
        {

          v111(v71, v36);
          v103 = v86;
        }

        v53(v103, v119);
        v104 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
        v105 = objc_opt_self();
        v106 = _convertErrorToNSError(_:)();
        v107 = [v105 resultWithFailure_];

        LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(v113 + v104, v107);
      }
    }

    else
    {
      v75 = v33;
      v76 = LACLogABM();
      Logger.init(_:)();
      v77 = v37;
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v80 = 138543362;
        *(v80 + 4) = v77;
        *v81 = v77;
        v82 = v77;
        _os_log_impl(&dword_1B0233000, v78, v79, "%{public}@ Companion session is not active, evaluating right away", v80, 0xCu);
        outlined destroy of AsyncStream<()>.Continuation?(v81, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v81, -1, -1);
        MEMORY[0x1B27246A0](v80, -1, -1);
      }

      v53(v115, v50);
      LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(v75 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, 0);
    }
  }

  else
  {
    swift_endAccess();
    v54 = LACLogABM();
    Logger.init(_:)();
    v55 = v30;
    v56 = v120;
    (v3[2])(v9, v55, v120);
    v57 = v2;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v118 = v17;
      v61 = v60;
      v62 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v121[0] = v116;
      *v61 = 138543618;
      *(v61 + 4) = v57;
      *v62 = v57;
      *(v61 + 12) = 2082;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v63 = v57;
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      (v3[1])(v9, v56);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v121);

      *(v61 + 14) = v67;
      _os_log_impl(&dword_1B0233000, v58, v59, "%{public}@ Cannot process request: %{public}s, no such pending request", v61, 0x16u);
      outlined destroy of AsyncStream<()>.Continuation?(v62, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v62, -1, -1);
      v68 = v116;
      __swift_destroy_boxed_opaque_existential_0(v116);
      MEMORY[0x1B27246A0](v68, -1, -1);
      MEMORY[0x1B27246A0](v61, -1, -1);

      (*(v117 + 8))(v118, v119);
    }

    else
    {

      (v3[1])(v9, v56);
      (*(v117 + 8))(v17, v119);
    }
  }

  v69 = *MEMORY[0x1E69E9840];
}

void LACCompanionAuthenticationController.postProcessRequest(_:result:completion:)(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v30 = a4;
  v29 = type metadata accessor for Logger();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = LACCompanionAuthenticationController.postProcessRequest(_:result:)(a1, a2);
  v13 = LACLogABM();
  Logger.init(_:)();
  swift_unknownObjectRetain_n();
  v14 = v4;
  v15 = a2;
  v16 = v12;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    *v20 = 138544130;
    *(v20 + 4) = v14;
    *v21 = v14;
    *(v20 + 12) = 1026;
    v22 = v14;
    v23 = [a1 identifier];
    swift_unknownObjectRelease();
    *(v20 + 14) = v23;
    swift_unknownObjectRelease();
    *(v20 + 18) = 2112;
    *(v20 + 20) = v15;
    *(v20 + 28) = 2112;
    *(v20 + 30) = v16;
    v21[1] = v15;
    v21[2] = v16;
    v24 = v15;
    v25 = v16;
    _os_log_impl(&dword_1B0233000, v17, v18, "%{public}@ Processed result for rid: %{public}u original: %@, processed: %@", v20, 0x26u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v21, -1, -1);
    v26 = v20;
    a3 = v28;
    MEMORY[0x1B27246A0](v26, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  (*(v8 + 8))(v11, v29);
  a3(v16);
}

id LACCompanionAuthenticationController.postProcessRequest(_:result:)(void *a1, void *a2)
{
  v3 = v2;
  v72 = a2;
  v73 = a1;
  v4 = type metadata accessor for Logger();
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v65 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v65 - v8;
  v67 = type metadata accessor for UUID();
  v71 = *(v67 - 8);
  v9 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v15 = [v2 replyQueue];
  v16 = *MEMORY[0x1E69E8020];
  v17 = v12[13];
  v17(v15, v16, v11);
  v18 = _dispatchPreconditionTest(_:)();
  v19 = v12[1];
  result = v19(v15, v11);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v68 = v4;
  v21 = LACCompanionAuthenticationController.pendingRequest(for:)(v73);
  if (v21)
  {
    v22 = v21;
    (*(*v21 + 152))(3);
    *v15 = [v3 replyQueue];
    v17(v15, v16, v11);
    v23 = _dispatchPreconditionTest(_:)();
    result = v19(v15, v11);
    if (v23)
    {
      v24 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
      v25 = v70;
      v26 = *(v71 + 16);
      v27 = v67;
      v26(v70, v22 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, v67);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(0, v25);
      v28 = swift_endAccess();
      if ((*(*v22 + 168))(v28))
      {
        v29 = LACCompanionAuthenticationController.mapResult(_:for:)(v72, v22);
        v30 = LACLogABM();
        v31 = v66;
        Logger.init(_:)();
        v32 = v3;

        v33 = v29;
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v73 = v33;
          v37 = v36;
          v38 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v74[0] = v72;
          *v37 = 138543874;
          *(v37 + 4) = v32;
          *v38 = v32;
          *(v37 + 12) = 2082;
          v39 = v22 + v24;
          v40 = v70;
          v26(v70, v39, v27);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v41 = v32;
          v42 = v35;
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          v45 = v44;
          (*(v71 + 8))(v40, v27);
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v74);

          *(v37 + 14) = v46;
          *(v37 + 22) = 2080;
          v47 = [v73 debugDescription];
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v74);

          *(v37 + 24) = v51;
          _os_log_impl(&dword_1B0233000, v34, v42, "%{public}@ Post-processing request: %{public}s with result: %s", v37, 0x20u);
          outlined destroy of AsyncStream<()>.Continuation?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1B27246A0](v38, -1, -1);
          v52 = v72;
          swift_arrayDestroy();
          MEMORY[0x1B27246A0](v52, -1, -1);
          v53 = v37;
          v33 = v73;
          MEMORY[0x1B27246A0](v53, -1, -1);

          (*(v69 + 8))(v66, v68);
        }

        else
        {

          (*(v69 + 8))(v31, v68);
        }

        return v33;
      }

      else
      {
        v63 = v72;

        return v63;
      }
    }

LABEL_18:
    __break(1u);
    return result;
  }

  v54 = LACLogABM();
  v55 = v65;
  Logger.init(_:)();
  swift_unknownObjectRetain_n();
  v56 = v3;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 138543618;
    *(v59 + 4) = v56;
    *v60 = v56;
    *(v59 + 12) = 1026;
    v61 = v56;
    v62 = [v73 identifier];
    swift_unknownObjectRelease();
    *(v59 + 14) = v62;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1B0233000, v57, v58, "%{public}@ No pending request for rid: %{public}u", v59, 0x12u);
    outlined destroy of AsyncStream<()>.Continuation?(v60, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v60, -1, -1);
    MEMORY[0x1B27246A0](v59, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  (*(v69 + 8))(v55, v68);
  v64 = v72;

  return v64;
}

void @objc LACCompanionAuthenticationController.processRequest(_:configuration:completion:)(void *a1, int a2, uint64_t a3, void *a4, void *aBlock, void (*a6)(uint64_t, id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  swift_unknownObjectRetain();
  v11 = a4;
  v12 = a1;
  a6(a3, v11, v12, v10);
  _Block_release(v10);
  _Block_release(v10);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall LACCompanionAuthenticationController.cancelAllRequests()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v5 - v2);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  LACCompanionAuthenticationController.cancelPendingRequests(contextID:)(v3);
  outlined destroy of AsyncStream<()>.Continuation?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t LACCompanionAuthenticationController.cancelRequests(forContextID:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v9 - v4);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  LACCompanionAuthenticationController.cancelPendingRequests(contextID:)(v5);
  return outlined destroy of AsyncStream<()>.Continuation?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t LACCompanionAuthenticationController.configureRequest(forPreflight:)(void *a1)
{
  specialized LACCompanionAuthenticationController.configureRequest(forPreflight:)(a1);

  return swift_unknownObjectRetain();
}

void __swiftcall LACCompanionAuthenticationController.init()(LACCompanionAuthenticationController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t LACCompanionAuthenticationController.handleSessionUpdate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v26 - v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v15 = [v1 replyQueue];
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v18 = LACLogABM();
    Logger.init(_:)();
    v19 = v1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543618;
      *(v22 + 4) = v19;
      *v23 = v19;
      *(v22 + 12) = 1024;
      *(v22 + 14) = [v19 isSessionActive];
      _os_log_impl(&dword_1B0233000, v20, v21, "%{public}@ Companion session changed to isActive: %{BOOL}d", v22, 0x12u);
      outlined destroy of AsyncStream<()>.Continuation?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v23, -1, -1);
      MEMORY[0x1B27246A0](v22, -1, -1);
    }

    else
    {

      v20 = v19;
    }

    (*(v7 + 8))(v10, v6);
    result = [v19 isSessionActive];
    if ((result & 1) == 0)
    {
      v24 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
      result = swift_beginAccess();
      if ((*(&v19->isa + v24))[2])
      {
        v25 = type metadata accessor for UUID();
        (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
        LACCompanionAuthenticationController.cancelPendingRequests(contextID:)(v5);
        return outlined destroy of AsyncStream<()>.Continuation?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in LACCompanionAuthenticationController.cancelPendingRequests(contextID:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**a1 + 216))(v5);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v7, v2);
  return a1 & 1;
}

void LACCompanionAuthenticationController.authenticateRequest(with:availabilityError:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v126 = a2;
  v129 = type metadata accessor for UUID();
  v5 = *(v129 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v129);
  v9 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v122 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v130 = v12;
  v131 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v125 = &v122 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v127 = (&v122 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v122 - v22;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v27 = [v3 replyQueue];
  (*(v24 + 104))(v27, *MEMORY[0x1E69E8020], v23);
  v28 = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v27, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v29 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
  swift_beginAccess();
  v30 = *&v3[v29];
  if (!*(v30 + 16) || (v31 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v32 & 1) == 0))
  {
    swift_endAccess();
    v53 = LACLogABM();
    Logger.init(_:)();
    v54 = v129;
    (*(v5 + 16))(v9, a1, v129);
    v55 = v3;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v128 = v17;
      v59 = v58;
      v60 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      aBlock[0] = v127;
      *v59 = 138543618;
      *(v59 + 4) = v55;
      *v60 = v55;
      *(v59 + 12) = 2082;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v61 = v55;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      (*(v5 + 8))(v9, v54);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, aBlock);

      *(v59 + 14) = v65;
      _os_log_impl(&dword_1B0233000, v56, v57, "%{public}@ Cannot authenticate request: %{public}s, no such pending request", v59, 0x16u);
      outlined destroy of AsyncStream<()>.Continuation?(v60, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v60, -1, -1);
      v66 = v127;
      __swift_destroy_boxed_opaque_existential_0(v127);
      MEMORY[0x1B27246A0](v66, -1, -1);
      MEMORY[0x1B27246A0](v59, -1, -1);

      (*(v131 + 8))(v128, v130);
    }

    else
    {

      (*(v5 + 8))(v9, v54);
      (*(v131 + 8))(v17, v130);
    }

    return;
  }

  v33 = *(*(v30 + 56) + 8 * v31);
  swift_endAccess();
  v34 = v5;
  v35 = *(*v33 + 152);

  v124 = v33;
  v35(1);
  v36 = LACLogABM();
  v37 = v128;
  Logger.init(_:)();
  v38 = v129;
  (*(v34 + 16))(v11, a1, v129);
  v39 = v3;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  v42 = os_log_type_enabled(v40, v41);
  v123 = v39;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v122 = v44;
    v45 = v39;
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v43 = 138543618;
    *(v43 + 4) = v45;
    *v44 = v45;
    *(v43 + 12) = 2082;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v47 = v45;
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    (*(v34 + 8))(v11, v38);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, aBlock);

    *(v43 + 14) = v51;
    _os_log_impl(&dword_1B0233000, v40, v41, "%{public}@ Will authenticate request: %{public}s", v43, 0x16u);
    v52 = v122;
    outlined destroy of AsyncStream<()>.Continuation?(v122, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v52, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x1B27246A0](v46, -1, -1);
    MEMORY[0x1B27246A0](v43, -1, -1);
  }

  else
  {

    (*(v34 + 8))(v11, v38);
  }

  v67 = v130;
  v68 = *(v131 + 8);
  v68(v37, v130);
  v69 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request;
  v70 = v124;
  v71 = [*(v124 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request) client];
  if (!v71)
  {
    v82 = v68;
    v83 = LACLogABM();
    v84 = v125;
    Logger.init(_:)();
    v85 = v123;
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v88 = 138543362;
      *(v88 + 4) = v85;
      *v89 = v85;
      v90 = v85;
      _os_log_impl(&dword_1B0233000, v86, v87, "%{public}@ Missing client info", v88, 0xCu);
      outlined destroy of AsyncStream<()>.Continuation?(v89, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v89, -1, -1);
      MEMORY[0x1B27246A0](v88, -1, -1);
    }

    v82(v84, v67);
    v91 = objc_opt_self();
    v92 = MEMORY[0x1B27229A0](0xD000000000000013, 0x80000001B0355F90);
    v93 = [v91 errorWithCode:-1000 debugDescription:v92];

    v94 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
    v95 = objc_opt_self();
    v96 = _convertErrorToNSError(_:)();
    v97 = [v95 resultWithFailure_];

    LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(v70 + v94, v97);

    goto LABEL_25;
  }

  v72 = v71;
  v73 = v123;
  v74 = [v123 clientInfoProvider];
  v75 = [*(v70 + v69) options];
  if (v75)
  {
    v76 = v68;
    v77 = v72;
    v78 = v67;
    v79 = v73;
    v80 = v75;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = v79;
    v67 = v78;
    v72 = v77;
    v68 = v76;
    v70 = v124;
    v81.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v81.super.isa = 0;
  }

  v98 = [v74 infoForXPCClient:v72 evaluationOptions:v81.super.isa];

  swift_unknownObjectRelease();
  v99 = *(v70 + v69);
  swift_unknownObjectRetain();
  v100 = v98;
  v101 = [objc_allocWithZone(LACCompanionAuthenticationRequest) initWithEvaluationRequest:v99 clientInfo:v100 companionType:{objc_msgSend(v73, sel_companion)}];
  swift_unknownObjectRelease();

  if (!v101)
  {
    v110 = LACLogABM();
    Logger.init(_:)();
    v111 = v73;
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138543362;
      *(v114 + 4) = v111;
      *v115 = v111;
      v116 = v111;
      _os_log_impl(&dword_1B0233000, v112, v113, "%{public}@ Unable to create authentication request", v114, 0xCu);
      outlined destroy of AsyncStream<()>.Continuation?(v115, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v115, -1, -1);
      MEMORY[0x1B27246A0](v114, -1, -1);
    }

    v68(v127, v67);
    v117 = objc_opt_self();
    v118 = MEMORY[0x1B27229A0](0xD000000000000027, 0x80000001B0355FB0);
    v93 = [v117 errorWithCode:-1000 debugDescription:v118];

    v119 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
    v120 = objc_opt_self();
    v121 = _convertErrorToNSError(_:)();
    v97 = [v120 resultWithFailure_];

    LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(v70 + v119, v97);

    swift_unknownObjectRelease();

LABEL_25:
    return;
  }

  v102 = objc_opt_self();
  v103 = _convertErrorToNSError(_:)();
  v104 = [v102 mechanismTreeFromError_];

  if (v104)
  {
    [v101 setIsFallbackAvailable_];
  }

  v105 = [v73 authenticator];
  v106 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v107 = swift_allocObject();
  *(v107 + 16) = v106;
  *(v107 + 24) = v70;
  aBlock[4] = partial apply for closure #1 in LACCompanionAuthenticationController.authenticateRequest(with:availabilityError:);
  aBlock[5] = v107;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_48_0;
  v108 = _Block_copy(aBlock);

  v109 = v101;

  [v105 authenticateRequest:v109 completion:v108];
  _Block_release(v108);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

void closure #1 in LACCompanionAuthenticationController.authenticateRequest(with:availabilityError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = objc_opt_self();
    v6 = _convertErrorToNSError(_:)();
    v7 = [v5 errorWithCode:-1 underlyingError:v6];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
      v11 = objc_opt_self();
      v12 = _convertErrorToNSError(_:)();
      v13 = [v11 resultWithFailure_];

      LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(a4 + v10, v13);
    }
  }

  else
  {
    v14 = *(*a4 + 200);

    v14(v15);
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (!v16)
    {
      return;
    }

    v7 = v16;
    LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(a4 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, 0);
  }
}

void LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v71 = a2;
  v73 = type metadata accessor for UUID();
  v5 = *(v73 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v73);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v69 - v10;
  v12 = type metadata accessor for Logger();
  v74 = *(v12 - 8);
  v75 = v12;
  v13 = *(v74 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v69 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v22 = [v3 replyQueue];
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
  v23 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v24 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
    swift_beginAccess();
    v25 = *&v3[v24];
    if (*(v25 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v27 & 1) != 0))
    {
      v28 = *(*(v25 + 56) + 8 * v26);
      swift_endAccess();

      v29 = LACLogABM();
      v30 = v72;
      Logger.init(_:)();
      v31 = v5;
      v32 = v73;
      (*(v5 + 16))(v11, a1, v73);
      v33 = v3;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v69 = v37;
        v70 = swift_slowAlloc();
        v76[0] = v70;
        *v36 = 138543618;
        *(v36 + 4) = v33;
        *v37 = v33;
        *(v36 + 12) = 2082;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v38 = v31;
        v39 = v33;
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v42 = v41;
        (*(v38 + 8))(v11, v32);
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v76);

        *(v36 + 14) = v43;
        _os_log_impl(&dword_1B0233000, v34, v35, "%{public}@ Will finish processing of request: %{public}s", v36, 0x16u);
        v44 = v69;
        outlined destroy of AsyncStream<()>.Continuation?(v69, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v44, -1, -1);
        v45 = v70;
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x1B27246A0](v45, -1, -1);
        MEMORY[0x1B27246A0](v36, -1, -1);

        (*(v74 + 8))(v72, v75);
      }

      else
      {

        (*(v5 + 8))(v11, v32);
        (*(v74 + 8))(v30, v75);
      }

      (*(*v28 + 152))(2);
      if (v71)
      {
        v62 = *(v28 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
        v61 = *(v28 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion + 8);
        v63 = v71;

        v62(v63);
      }

      else
      {
        v65 = *(v28 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
        v64 = *(v28 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion + 8);
        v66 = objc_opt_self();
        v67 = *(v28 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request);

        v68 = [v66 resultWithNext_];
        v65();
      }
    }

    else
    {
      swift_endAccess();
      v46 = LACLogABM();
      Logger.init(_:)();
      v47 = v5;
      v48 = v73;
      (*(v5 + 16))(v9, a1, v73);
      v49 = v3;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v72 = v16;
        v54 = v53;
        v71 = swift_slowAlloc();
        v76[0] = v71;
        *v52 = 138543618;
        *(v52 + 4) = v49;
        *v54 = v49;
        *(v52 + 12) = 2082;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v55 = v49;
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        (*(v47 + 8))(v9, v48);
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v76);

        *(v52 + 14) = v59;
        _os_log_impl(&dword_1B0233000, v50, v51, "%{public}@ Cannot finish processing of request: %{public}s, no such pending request", v52, 0x16u);
        outlined destroy of AsyncStream<()>.Continuation?(v54, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v54, -1, -1);
        v60 = v71;
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x1B27246A0](v60, -1, -1);
        MEMORY[0x1B27246A0](v52, -1, -1);

        (*(v74 + 8))(v72, v75);
      }

      else
      {

        (*(v5 + 8))(v9, v48);
        (*(v74 + 8))(v16, v75);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)(uint64_t *a1)
{
  v2 = v1;
  v125 = a1;
  v122 = type metadata accessor for UUID();
  v3 = *(v122 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v122);
  v7 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v120 = v10;
  v121 = (&v113 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v113 - v11;
  v13 = type metadata accessor for Logger();
  v123 = *(v13 - 8);
  v124 = v13;
  v14 = *(v123 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v15);
  v119 = &v113 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v113 - v20;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = (&v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v26 = [v2 replyQueue];
  (*(v23 + 104))(v26, *MEMORY[0x1E69E8020], v22);
  v27 = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v26, v22);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v28 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
  swift_beginAccess();
  v29 = *&v2[v28];
  v30 = v125;
  if (!*(v29 + 16) || (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v125), (v32 & 1) == 0))
  {
    swift_endAccess();
    v51 = LACLogABM();
    v52 = v17;
    Logger.init(_:)();
    v53 = v122;
    (*(v3 + 16))(v7, v30, v122);
    v54 = v2;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v125 = v52;
      v121 = v59;
      aBlock[0] = v59;
      *v57 = 138543618;
      *(v57 + 4) = v54;
      *v58 = v54;
      *(v57 + 12) = 2082;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v60 = v54;
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*(v3 + 8))(v7, v53);
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, aBlock);

      *(v57 + 14) = v64;
      _os_log_impl(&dword_1B0233000, v55, v56, "%{public}@ Cannot preflight request: %{public}s, no such pending request", v57, 0x16u);
      outlined destroy of AsyncStream<()>.Continuation?(v58, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v58, -1, -1);
      v65 = v121;
      __swift_destroy_boxed_opaque_existential_0(v121);
      MEMORY[0x1B27246A0](v65, -1, -1);
      MEMORY[0x1B27246A0](v57, -1, -1);

      (*(v123 + 8))(v125, v124);
    }

    else
    {

      (*(v3 + 8))(v7, v53);
      (*(v123 + 8))(v17, v124);
    }

    return;
  }

  v33 = *(*(v29 + 56) + 8 * v31);
  swift_endAccess();
  v117 = v33;

  v34 = LACLogABM();
  Logger.init(_:)();
  v35 = *(v3 + 16);
  v36 = v122;
  v115 = v3 + 16;
  v114 = v35;
  v35(v12, v30, v122);
  v37 = v2;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  v40 = os_log_type_enabled(v38, v39);
  v118 = v3;
  v116 = v37;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v113 = v42;
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v41 = 138543618;
    *(v41 + 4) = v37;
    *v42 = v37;
    *(v41 + 12) = 2082;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v44 = v37;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v48 = *(v3 + 8);
    v48(v12, v36);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, aBlock);

    *(v41 + 14) = v49;
    _os_log_impl(&dword_1B0233000, v38, v39, "%{public}@ Will preflight request: %{public}s", v41, 0x16u);
    v50 = v113;
    outlined destroy of AsyncStream<()>.Continuation?(v113, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v50, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x1B27246A0](v43, -1, -1);
    MEMORY[0x1B27246A0](v41, -1, -1);
  }

  else
  {

    v48 = *(v3 + 8);
    v48(v12, v36);
  }

  v66 = *(v123 + 8);
  v66(v21, v124);
  v67 = v36;
  v68 = v117;
  (*(*v117 + 176))(1);
  v69 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request;
  v70 = [*(v68 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request) options];
  if (!v70)
  {
    v128 = 0u;
    v129 = 0u;
    v74 = v118;
    goto LABEL_21;
  }

  v71 = v48;
  v72 = v70;
  v73 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v126 = 1000;
  type metadata accessor for LACPolicyOption(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type LACPolicyOption and conformance LACPolicyOption, type metadata accessor for LACPolicyOption);
  AnyHashable.init<A>(_:)();
  v74 = v118;
  if (!*(v73 + 16) || (v75 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v76 & 1) == 0))
  {

    outlined destroy of AnyHashable(aBlock);
    v128 = 0u;
    v129 = 0u;
    goto LABEL_21;
  }

  outlined init with copy of Any(*(v73 + 56) + 32 * v75, &v128);
  outlined destroy of AnyHashable(aBlock);

  if (!*(&v129 + 1))
  {
LABEL_21:
    outlined destroy of AsyncStream<()>.Continuation?(&v128, &_sypSgMd, _sypSgMR);
LABEL_22:
    v96 = [*(v68 + v69) shallowCopy];
    v97 = [v116 configureRequestForPreflight_];
    swift_unknownObjectRelease();
    v98 = *(v68 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_nextProcessor);
    v99 = objc_opt_self();
    swift_unknownObjectRetain_n();
    v100 = [v99 defaultConfiguration];
    v101 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v102 = v121;
    v114(v121, v125, v67);
    v103 = (*(v74 + 80) + 40) & ~*(v74 + 80);
    v104 = swift_allocObject();
    v105 = v74;
    v106 = v104;
    *(v104 + 2) = v101;
    *(v104 + 3) = v97;
    *(v104 + 4) = v68;
    (*(v105 + 32))(&v104[v103], v102, v67);
    aBlock[4] = partial apply for specialized closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:);
    aBlock[5] = v106;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
    aBlock[3] = &block_descriptor_29;
    v107 = _Block_copy(aBlock);

    [v98 processRequest:v97 configuration:v100 completion:v107];
    swift_unknownObjectRelease_n();
    _Block_release(v107);

    return;
  }

  if (!swift_dynamicCast() || (aBlock[0] & 1) == 0)
  {
    goto LABEL_22;
  }

  v77 = LACLogABM();
  v78 = v119;
  Logger.init(_:)();

  v79 = v116;
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v120 = v83;
    v125 = swift_slowAlloc();
    aBlock[0] = v125;
    *v82 = 138543618;
    *(v82 + 4) = v79;
    *v83 = v79;
    *(v82 + 12) = 2082;
    v84 = (v68 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id);
    v85 = v121;
    v86 = v122;
    v114(v121, v84, v122);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    LODWORD(v116) = v81;
    v87 = v79;
    v88 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v89;
    v91 = v86;
    v68 = v117;
    v71(v85, v91);
    v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, aBlock);

    *(v82 + 14) = v92;
    _os_log_impl(&dword_1B0233000, v80, v116, "%{public}@ Not preflying request: %{public}s - not interactive evaluation", v82, 0x16u);
    v93 = v120;
    outlined destroy of AsyncStream<()>.Continuation?(v120, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v93, -1, -1);
    v94 = v125;
    __swift_destroy_boxed_opaque_existential_0(v125);
    MEMORY[0x1B27246A0](v94, -1, -1);
    MEMORY[0x1B27246A0](v82, -1, -1);

    v95 = v119;
  }

  else
  {

    v95 = v78;
  }

  v66(v95, v124);
  v109 = *(v68 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
  v108 = *(v68 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion + 8);
  v110 = objc_opt_self();
  v111 = *(v68 + v69);

  v112 = [v110 resultWithNext_];
  v109();
}

void specialized closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if ([a1 rawValue] == 1)
    {
      v14 = objc_opt_self();
      _StringGuts.grow(_:)(29);

      v35 = [a3 identifier];
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2722A80](v15);

      v16 = MEMORY[0x1B27229A0](0xD00000000000001BLL, 0x80000001B0355050);

      v17 = [v14 errorWithCode:-1000 debugDescription:v16];

      v18 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
      v19 = objc_opt_self();
      v20 = _convertErrorToNSError(_:)();
      v21 = [v19 resultWithFailure_];

      LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(a4 + v18, v21);
    }

    else
    {
      v33 = a3;
      v34 = a4;
      v22 = *(a4 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_nextProcessor);
      v23 = [v22 respondsToSelector_];
      v24 = closure #1 in closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:);
      if (v23)
      {
        v25 = swift_allocObject();
        *(v25 + 16) = v22;
        v26 = swift_allocObject();
        *(v26 + 16) = partial apply;
        *(v26 + 24) = v25;
        v27 = swift_allocObject();
        *(v27 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@unowned LACEvaluationRequest, @unowned LACEvaluationResult, @unowned @escaping @callee_unowned @convention(block) @Sendable (@unowned LACEvaluationResult) -> ()) -> ();
        *(v27 + 24) = v26;
        swift_unknownObjectRetain();

        v24 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed LACEvaluationRequest, @guaranteed LACEvaluationResult, @guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ()) -> ();
      }

      v32 = v24;
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v10 + 16))(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v9);
      v29 = (*(v10 + 80) + 24) & ~*(v10 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      (*(v10 + 32))(v30 + v29, &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      *(v30 + ((v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;

      v32(v33, a1, partial apply for closure #2 in closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:), v30);
    }
  }
}

void closure #2 in closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v121 = a3;
  v124 = a2;
  v126[3] = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v118 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v117 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v117 - v14;
  v123 = type metadata accessor for Logger();
  v16 = *(v123 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v123);
  v119 = (&v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v117 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v117 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v117 - v26;
  v120 = a1;
  v28 = [a1 error];
  v122 = v16;
  if (v28)
  {
    v126[0] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v29 = v125[0];
      v30 = objc_opt_self();
      v31 = v29;
      v32 = _convertErrorToNSError(_:)();

      LODWORD(v30) = [v30 error:v32 hasCode:-1004];
      if (v30)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v34 = Strong;
          v35 = a4;
          v36 = *(a4 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request);
          v37 = v31;
          v38 = _convertErrorToNSError(_:)();

          v125[0] = 0;
          LODWORD(v36) = [v34 canAuthenticateRequest:v36 availabilityError:v38 error:v125];

          v39 = v125[0];
          if (v36)
          {
            v40 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
            v41 = v37;
            v42 = v39;
            LACCompanionAuthenticationController.authenticateRequest(with:availabilityError:)(v35 + v40, v41);
          }

          else
          {
            v117 = a4;
            v87 = v125[0];
            v88 = _convertNSErrorToError(_:)();

            swift_willThrow();
            v89 = LACLogABM();
            v90 = v119;
            Logger.init(_:)();
            v91 = v7;
            v92 = v118;
            v93 = v6;
            (*(v7 + 16))(v118, v121, v6);
            v94 = v34;
            v95 = v88;
            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              v121 = v96;
              v99 = v98;
              v100 = swift_slowAlloc();
              LODWORD(v120) = v97;
              v101 = v100;
              v124 = swift_slowAlloc();
              v125[0] = v124;
              *v99 = 138543874;
              *(v99 + 4) = v94;
              *v101 = v34;
              *(v99 + 12) = 2082;
              lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
              v102 = v93;
              v103 = v94;
              v104 = dispatch thunk of CustomStringConvertible.description.getter();
              v106 = v105;
              (*(v91 + 8))(v92, v102);
              v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, v125);

              *(v99 + 14) = v107;
              *(v99 + 22) = 2112;
              v108 = v88;
              v109 = _swift_stdlib_bridgeErrorToNSError();
              *(v99 + 24) = v109;
              v101[1] = v109;
              v110 = v121;
              _os_log_impl(&dword_1B0233000, v121, v120, "%{public}@ Failing request: %{public}s with error: %@ - Authentication not supported", v99, 0x20u);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              swift_arrayDestroy();
              MEMORY[0x1B27246A0](v101, -1, -1);
              v111 = v124;
              __swift_destroy_boxed_opaque_existential_0(v124);
              MEMORY[0x1B27246A0](v111, -1, -1);
              MEMORY[0x1B27246A0](v99, -1, -1);

              (*(v122 + 8))(v119, v123);
            }

            else
            {

              (*(v91 + 8))(v92, v93);
              (*(v122 + 8))(v90, v123);
            }

            v113 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
            v114 = objc_opt_self();
            v115 = _convertErrorToNSError(_:)();
            v116 = [v114 resultWithFailure_];

            LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(v117 + v113, v116);
          }
        }

        else
        {
          v80 = LACLogABM();
          Logger.init(_:)();

          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            *v83 = 138543362;
            swift_beginAccess();
            v85 = swift_unknownObjectWeakLoadStrong();
            *(v83 + 4) = v85;
            *v84 = v85;
            _os_log_impl(&dword_1B0233000, v81, v82, "%{public}@ Companion authentication controller already deallocated", v83, 0xCu);
            outlined destroy of AsyncStream<()>.Continuation?(v84, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x1B27246A0](v84, -1, -1);
            MEMORY[0x1B27246A0](v83, -1, -1);
            v86 = v31;
          }

          else
          {
            v86 = v81;
            v81 = v31;
          }

          v112 = v122;

          (*(v112 + 8))(v27, v123);
        }
      }

      else
      {
        v60 = LACLogABM();
        Logger.init(_:)();
        v61 = v6;
        (*(v7 + 16))(v15, v121, v6);
        v62 = v31;

        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v117 = a4;
          v67 = v66;
          v121 = swift_slowAlloc();
          v126[0] = v121;
          *v65 = 138543874;
          swift_beginAccess();
          v68 = swift_unknownObjectWeakLoadStrong();
          *(v65 + 4) = v68;
          *v67 = v68;
          *(v65 + 12) = 2082;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v119 = v63;
          v69 = dispatch thunk of CustomStringConvertible.description.getter();
          LODWORD(v118) = v64;
          v70 = v62;
          v72 = v71;
          (*(v7 + 8))(v15, v61);
          v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v72, v126);
          v62 = v70;

          *(v65 + 14) = v73;
          *(v65 + 22) = 2112;
          *(v65 + 24) = v70;
          v67[1] = v70;
          v74 = v70;
          v75 = v119;
          _os_log_impl(&dword_1B0233000, v119, v118, "%{public}@ Preflight for request: %{public}s finished with error: %@", v65, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          v76 = v67;
          a4 = v117;
          MEMORY[0x1B27246A0](v76, -1, -1);
          v77 = v121;
          __swift_destroy_boxed_opaque_existential_0(v121);
          MEMORY[0x1B27246A0](v77, -1, -1);
          MEMORY[0x1B27246A0](v65, -1, -1);
        }

        else
        {

          (*(v7 + 8))(v15, v61);
        }

        (*(v122 + 8))(v25, v123);
        swift_beginAccess();
        v78 = swift_unknownObjectWeakLoadStrong();
        if (v78)
        {
          v79 = v78;
          LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(a4 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, v120);
        }
      }

      goto LABEL_13;
    }

    v16 = v122;
  }

  v43 = LACLogABM();
  Logger.init(_:)();
  v44 = v7;
  v45 = v6;
  (*(v7 + 16))(v13, v121, v6);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v126[0] = v121;
    *v48 = 138543618;
    swift_beginAccess();
    v50 = swift_unknownObjectWeakLoadStrong();
    *(v48 + 4) = v50;
    *v49 = v50;
    *(v48 + 12) = 2082;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v45;
    v54 = v53;
    (*(v44 + 8))(v13, v52);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v54, v126);

    *(v48 + 14) = v55;
    _os_log_impl(&dword_1B0233000, v46, v47, "%{public}@ Preflight for request: %{public}s finished with success", v48, 0x16u);
    outlined destroy of AsyncStream<()>.Continuation?(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v49, -1, -1);
    v56 = v121;
    __swift_destroy_boxed_opaque_existential_0(v121);
    MEMORY[0x1B27246A0](v56, -1, -1);
    MEMORY[0x1B27246A0](v48, -1, -1);

    (*(v122 + 8))(v22, v123);
  }

  else
  {

    (*(v44 + 8))(v13, v45);
    (*(v16 + 8))(v22, v123);
  }

  swift_beginAccess();
  v57 = swift_unknownObjectWeakLoadStrong();
  if (v57)
  {
    v58 = v57;
    LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(a4 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, v120);
  }

LABEL_13:
  v59 = *MEMORY[0x1E69E9840];
}

uint64_t LACCompanionAuthenticationController.pendingRequest(for:)(void *a1)
{
  v3 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = *(*(v4 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));
      v13 = *(v12 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request);

      LODWORD(v13) = [v13 identifier];
      if (v13 == [a1 identifier])
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return v12;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

id LACCompanionAuthenticationController.mapResult(_:for:)(void *a1, uint64_t a2)
{
  v3 = v2;
  LACEvaluationResult.resultWithAssociatedValue.getter(&v17);
  v6 = v17;
  v5 = v18;
  v7 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v7 == 2)
    {
      outlined consume of LACEvaluationResultWithAssociatedValue(v17, v18);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return a1;
  }

  else
  {
    if (v7)
    {
      v11 = objc_opt_self();
      v12 = _convertErrorToNSError(_:)();
      v13 = [v3 mapError_];

      v14 = _convertErrorToNSError(_:)();
      v10 = [v11 resultWithFailure_];

      outlined consume of LACEvaluationResultWithAssociatedValue(v6, v5);
    }

    else
    {
      v8 = objc_opt_self();
      LACCompanionAuthenticationController.mapValue(_:for:)(v6, a2);
      outlined consume of LACEvaluationResultWithAssociatedValue(v6, v5);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v10 = [v8 resultWithSuccess_];
    }

    return v10;
  }
}

uint64_t LACCompanionAuthenticationController.mapValue(_:for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((*(*a2 + 192))())
  {

    v5 = MEMORY[0x1E69E6530];
    AnyHashable.init<A>(_:)();
    v6 = [objc_msgSend(v3 sessionMonitor)];
    swift_unknownObjectRelease();
    v11 = v5;
    *&v10 = v6;
    outlined init with take of Any(&v10, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v12, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(v12);
  }

  else
  {
  }

  return a1;
}

Swift::Int LACCompanionAuthenticationControllerPendingRequest.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27230B0](a1);
  return Hasher._finalize()();
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.completion.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
  v2 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion + 8);

  return v1;
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.state.getter()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.state.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_state;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.isProcessedByController.getter()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_isProcessedByController;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.isProcessedByController.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_isProcessedByController;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.companionAuthenticationResult.getter()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_companionAuthenticationResult;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.companionAuthenticationResult.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_companionAuthenticationResult;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for LACCompanionAuthenticationControllerPendingRequest.contextID : LACCompanionAuthenticationControllerPendingRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 224))(v7);
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.contextID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID;
  swift_beginAccess();
  outlined init with copy of UUID?(v1 + v10, v9);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  outlined destroy of AsyncStream<()>.Continuation?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  closure #1 in LACCompanionAuthenticationControllerPendingRequest.contextID.getter(v1, a1);
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  outlined assign with take of UUID?(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t closure #1 in LACCompanionAuthenticationControllerPendingRequest.contextID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = [*(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request) contextID];
  if (v13)
  {
    v14 = v13;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v5 + 32);
    v15(v12, v8, v4);
    (*(v5 + 56))(v12, 0, 1, v4);
    return (v15)(a2, v12, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
    UUID.init()();
    result = (*(v5 + 48))(v12, 1, v4);
    if (result != 1)
    {
      return outlined destroy of AsyncStream<()>.Continuation?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  return result;
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.contextID.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 32))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID;
  swift_beginAccess();
  outlined assign with take of UUID?(v6, v1 + v9);
  return swift_endAccess();
}

void (*LACCompanionAuthenticationControllerPendingRequest.contextID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = type metadata accessor for UUID();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  LACCompanionAuthenticationControllerPendingRequest.contextID.getter(v10);
  return LACCompanionAuthenticationControllerPendingRequest.contextID.modify;
}

void LACCompanionAuthenticationControllerPendingRequest.contextID.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID;
    swift_beginAccess();
    outlined assign with take of UUID?(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID;
    swift_beginAccess();
    outlined assign with take of UUID?(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.init(request:configuration:completion:state:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  UUID.init()();
  *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_isProcessedByController) = 0;
  *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_companionAuthenticationResult) = 0;
  v11 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
  *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request) = a1;
  swift_unknownObjectRetain();
  v13 = [a2 nextProcessor];
  swift_unknownObjectRelease();

  *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_nextProcessor) = v13;
  v14 = (v5 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
  *v14 = a3;
  v14[1] = a4;
  *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_state) = a5;
  return v5;
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.deinit()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion + 8);

  v4 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_nextProcessor);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_companionAuthenticationResult);

  outlined destroy of AsyncStream<()>.Continuation?(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v0;
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion + 8);

  v4 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_nextProcessor);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_companionAuthenticationResult);

  outlined destroy of AsyncStream<()>.Continuation?(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LACCompanionAuthenticationControllerPendingRequest()
{
  result = type metadata singleton initialization cache for LACCompanionAuthenticationControllerPendingRequest;
  if (!type metadata singleton initialization cache for LACCompanionAuthenticationControllerPendingRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized LACCompanionAuthenticationController.processRequest(_:configuration:completion:)(void *a1, char *a2, char *a3, void (**a4)(void, void))
{
  v53 = a2;
  v7 = type metadata accessor for Logger();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = swift_allocObject();
  *(v57 + 16) = a4;
  _Block_copy(a4);
  *v19 = [a3 replyQueue];
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);
  v20 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    if ([a3 canProcessRequest_])
    {
      v21 = type metadata accessor for LACCompanionAuthenticationControllerPendingRequest();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      v24 = swift_allocObject();
      UUID.init()();
      *(v24 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_isProcessedByController) = 0;
      *(v24 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_companionAuthenticationResult) = 0;
      v25 = v11;
      (*(v11 + 56))(v24 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID, 1, 1, v10);
      *(v24 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request) = a1;
      swift_unknownObjectRetain();
      v26 = [v53 nextProcessor];
      *(v24 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_nextProcessor) = v26;
      v27 = (v24 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
      v28 = v57;
      *v27 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> ();
      v27[1] = v28;
      *(v24 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_state) = 0;
      v52 = *(v25 + 16);
      v53 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
      v52(v14, v24 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, v10);
      v29 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
      swift_beginAccess();

      v30 = *&a3[v29];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *&a3[v29];
      *&a3[v29] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v14, isUniquelyReferenced_nonNull_native);
      v51 = *(v25 + 8);
      v51(v14, v10);
      *&a3[v29] = v58;
      swift_endAccess();
      v32 = LACLogABM();
      v33 = v56;
      Logger.init(_:)();
      swift_unknownObjectRetain_n();

      v34 = a3;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v49 = v36;
        v38 = v37;
        v39 = swift_slowAlloc();
        v48 = v39;
        v50 = swift_slowAlloc();
        v59 = v50;
        *v38 = 138543874;
        *(v38 + 4) = v34;
        *v39 = v34;
        *(v38 + 12) = 2082;
        v52(v14, &v53[v24], v10);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v40 = v34;
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        v51(v14, v10);
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v59);

        *(v38 + 14) = v44;
        *(v38 + 22) = 1024;
        LODWORD(v44) = [a1 identifier];
        swift_unknownObjectRelease();
        *(v38 + 24) = v44;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v35, v49, "%{public}@ Registered pending request: %{public}s for evaluation request rid: %u", v38, 0x1Cu);
        v45 = v48;
        outlined destroy of AsyncStream<()>.Continuation?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v45, -1, -1);
        v46 = v50;
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x1B27246A0](v46, -1, -1);
        MEMORY[0x1B27246A0](v38, -1, -1);

        (*(v54 + 8))(v56, v55);
      }

      else
      {

        swift_unknownObjectRelease_n();
        (*(v54 + 8))(v33, v55);
      }

      LACCompanionAuthenticationController.processAndEvaluateRequest(with:)(&v53[v24]);
    }

    else
    {
      v47 = [objc_opt_self() resultWithNext_];
      (a4)[2](a4, v47);
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized LACCompanionAuthenticationController.postProcessRequest(_:result:completion:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = LACCompanionAuthenticationController.postProcessRequest(_:result:)(a1, a2);
  v14 = LACLogABM();
  Logger.init(_:)();
  swift_unknownObjectRetain_n();
  v15 = a3;
  v16 = a2;
  v17 = v13;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = a4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30 = v8;
    v23 = v22;
    *v21 = 138544130;
    *(v21 + 4) = v15;
    *v22 = v15;
    *(v21 + 12) = 1026;
    v24 = v15;
    v25 = [a1 identifier];
    swift_unknownObjectRelease();
    *(v21 + 14) = v25;
    swift_unknownObjectRelease();
    *(v21 + 18) = 2112;
    *(v21 + 20) = v16;
    *(v21 + 28) = 2112;
    *(v21 + 30) = v17;
    v23[1] = v16;
    v23[2] = v17;
    v26 = v16;
    v27 = v17;
    _os_log_impl(&dword_1B0233000, v18, v19, "%{public}@ Processed result for rid: %{public}u original: %@, processed: %@", v21, 0x26u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    v28 = v23;
    v8 = v30;
    MEMORY[0x1B27246A0](v28, -1, -1);
    v29 = v21;
    a4 = v31;
    MEMORY[0x1B27246A0](v29, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  (*(v9 + 8))(v12, v8);
  (*(a4 + 16))(a4, v17);
}

void *specialized LACCompanionAuthenticationController.configureRequest(forPreflight:)(void *a1)
{
  v2 = [a1 options];
  if (v2)
  {
    v3 = v2;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  *&v11 = -1023;
  AnyHashable.init<A>(_:)();
  v5 = MEMORY[0x1E69E6370];
  v12 = MEMORY[0x1E69E6370];
  outlined init with take of Any(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v13, isUniquelyReferenced_nonNull_native);
  outlined destroy of AnyHashable(v13);
  *&v11 = 1000;
  AnyHashable.init<A>(_:)();
  v12 = v5;
  LOBYTE(v11) = 1;
  outlined init with take of Any(&v11, v10);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v13, v7);
  outlined destroy of AnyHashable(v13);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 updateOptions_];

  return a1;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type LACCompanionAuthenticationControllerPendingRequest.State and conformance LACCompanionAuthenticationControllerPendingRequest.State()
{
  result = lazy protocol witness table cache variable for type LACCompanionAuthenticationControllerPendingRequest.State and conformance LACCompanionAuthenticationControllerPendingRequest.State;
  if (!lazy protocol witness table cache variable for type LACCompanionAuthenticationControllerPendingRequest.State and conformance LACCompanionAuthenticationControllerPendingRequest.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACCompanionAuthenticationControllerPendingRequest.State and conformance LACCompanionAuthenticationControllerPendingRequest.State);
  }

  return result;
}

void type metadata completion function for LACCompanionAuthenticationControllerPendingRequest()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for UUID?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

uint64_t getEnumTagSinglePayload for LACCompanionAuthenticationControllerPendingRequest.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LACCompanionAuthenticationControllerPendingRequest.State(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void partial apply for specialized closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  specialized closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)(a1, v4, v5, v6, v7);
}

void partial apply for closure #2 in closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)(uint64_t *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #2 in closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)(a1, v5, (v1 + v4), v6);
}

id one-time initialization function for vendedListeners()
{
  result = [objc_opt_self() weakToStrongObjectsMapTable];
  vendedListeners = result;
  return result;
}

NSXPCListener __swiftcall LACConcurrentIdleUIListenerProvider.anonymousListener(withIdentifier:)(NSNumber withIdentifier)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() anonymousListener];
  v9 = LACLogConcurrentEvaluations();
  Logger.init(_:)();
  v10 = v1;
  v11 = v8;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v10;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v10;
    v15[1] = v11;
    v16 = v10;
    v17 = v11;
    _os_log_impl(&dword_1B0233000, v12, v13, "%@ vending a new listener %@", v14, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v15, -1, -1);
    MEMORY[0x1B27246A0](v14, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  [v11 setDelegate_];
  [v11 activate];
  if (one-time initialization token for vendedListeners != -1)
  {
    swift_once();
  }

  [vendedListeners setObject:withIdentifier.super.super.isa forKey:v11];
  return v11;
}

Swift::Bool __swiftcall LACConcurrentIdleUIListenerProvider.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = LACLogConcurrentEvaluations();
  Logger.init(_:)();
  v11 = v2;
  v12 = shouldAcceptNewConnection.super.isa;
  v13 = _.super.isa;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412802;
    *(v16 + 4) = v11;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    *v17 = v11;
    v17[1] = v12;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v13;
    v17[2] = v13;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    _os_log_impl(&dword_1B0233000, v14, v15, "%@ received a new connection %@ for listener %@", v16, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v17, -1, -1);
    MEMORY[0x1B27246A0](v16, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v21 = [objc_opt_self() interfaceForXPCProtocol_];
  [(objc_class *)v12 setExportedInterface:v21];

  -[objc_class setExportedObject:](v12, sel_setExportedObject_, [v11 handler]);
  swift_unknownObjectRelease();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v25 = [v11 handler];
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v26 = swift_allocObject();
  v26[2] = v22;
  v26[3] = v23;
  v26[4] = v24;
  aBlock[4] = partial apply for closure #1 in LACConcurrentIdleUIListenerProvider.listener(_:shouldAcceptNewConnection:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_10;
  v27 = _Block_copy(aBlock);

  [(objc_class *)v12 setInvalidationHandler:v27];
  _Block_release(v27);
  [(objc_class *)v12 resume];
  return 1;
}

void closure #1 in LACConcurrentIdleUIListenerProvider.listener(_:shouldAcceptNewConnection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v30 = v4;
    v11 = LACLogConcurrentEvaluations();
    Logger.init(_:)();

    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29 = a3;
      v16 = v15;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v16 = 136315394;
      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      v31 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15NSXPCConnectionCSgMd, &_sSo15NSXPCConnectionCSgMR);
      v18 = Optional.debugDescription.getter();
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v32);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v12;
      v22 = v27;
      *v27 = v10;
      v23 = v12;
      _os_log_impl(&dword_1B0233000, v13, v14, "%s invalidated, %@ listener", v16, 0x16u);
      outlined destroy of NSObject?(v22);
      MEMORY[0x1B27246A0](v22, -1, -1);
      v24 = v28;
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B27246A0](v24, -1, -1);
      MEMORY[0x1B27246A0](v16, -1, -1);
    }

    (*(v5 + 8))(v8, v30);
    if (one-time initialization token for vendedListeners != -1)
    {
      swift_once();
    }

    v25 = [vendedListeners objectForKey_];
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      [v26 connectionInvalidatedForIdentifier_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

double LACPreboardUseCaseProvider.provider.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  outlined init with copy of (String, Any)(v1 + 16, &v7, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMR);
  if (*(&v8 + 1) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(&v7, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMR);
    v3 = type metadata accessor for LACPreboardUseCaseProviderAMFI();
    v4 = swift_allocObject();
    *(a1 + 24) = v3;
    *(a1 + 32) = &protocol witness table for LACPreboardUseCaseProviderAMFI;
    *a1 = v4;
    outlined init with copy of (String, Any)(a1, &v7, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMR);
    swift_beginAccess();
    outlined assign with take of LACPreboardUseCaseProviding??(&v7, v1 + 16);
    swift_endAccess();
  }

  else
  {
    result = *&v7;
    v6 = v8;
    *a1 = v7;
    *(a1 + 16) = v6;
    *(a1 + 32) = v9;
  }

  return result;
}

uint64_t outlined assign with take of LACPreboardUseCaseProviding??(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for LACPreboardUseCaseProvider.provider : LACPreboardUseCaseProvider(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of (String, Any)(a1, v7, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMR);
  v3 = *a2;
  v5[0] = v7[0];
  v5[1] = v7[1];
  v6 = v8;
  swift_beginAccess();
  outlined assign with take of LACPreboardUseCaseProviding??(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t LACPreboardUseCaseProvider.provider.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  swift_beginAccess();
  outlined assign with take of LACPreboardUseCaseProviding??(v4, v1 + 16);
  return swift_endAccess();
}

void (*LACPreboardUseCaseProvider.provider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  *(v3 + 104) = v1;
  LACPreboardUseCaseProvider.provider.getter(v3);
  return LACPreboardUseCaseProvider.provider.modify;
}

void LACPreboardUseCaseProvider.provider.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of (String, Any)(*a1, v2 + 40, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMR);
    swift_beginAccess();
    outlined assign with take of LACPreboardUseCaseProviding??(v2 + 40, v3 + 16);
    swift_endAccess();
    outlined destroy of AsyncStream<()>.Continuation?(v2, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMR);
  }

  else
  {
    v4 = v2[1];
    *(v2 + 40) = *v2;
    *(v2 + 56) = v4;
    *(v2 + 9) = *(v2 + 4);
    swift_beginAccess();
    outlined assign with take of LACPreboardUseCaseProviding??(v2 + 40, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

double LACPreboardUseCaseProvider.__allocating_init(globalDomain:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *&result = 1;
  *(v2 + 40) = xmmword_1B0342B10;
  *(v2 + 56) = a1;
  return result;
}

uint64_t LACPreboardUseCaseProvider.init(globalDomain:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = xmmword_1B0342B10;
  *(v1 + 56) = a1;
  return v1;
}

uint64_t LACPreboardUseCaseProvider.preboardUseCase.getter()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  LACPreboardUseCaseProvider.provider.getter(&v37);
  if (v38)
  {
    outlined init with take of LACPreboardUseCaseProviding(&v37, v39);
    v10 = v40;
    v11 = v41;
    __swift_project_boxed_opaque_existential_0(v39, v40);
    v12 = (*(v11 + 8))(v10, v11);
    if (v12 == -1 && (v13 = [v0[7] preboardMode]) != 0)
    {
      v14 = v13;
      v36 = [v13 integerValue];

      static LACPreboardUseCaseProviding.allUseCases.getter();
      v16 = *(v15 + 16);
      if (v16)
      {
        *&v37 = MEMORY[0x1E69E7CC0];
        v35 = v15;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
        v17 = v35;
        v18 = v37;
        v19 = *(v37 + 16);
        v20 = 32;
        do
        {
          v21 = *(v17 + v20);
          *&v37 = v18;
          v22 = *(v18 + 24);
          if (v19 >= v22 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v19 + 1, 1);
            v17 = v35;
            v18 = v37;
          }

          *(v18 + 16) = v19 + 1;
          *(v18 + 8 * v19 + 32) = v21;
          v20 += 8;
          ++v19;
          --v16;
        }

        while (v16);
      }

      else
      {

        v18 = MEMORY[0x1E69E7CC0];
      }

      v28 = *(v18 + 16);
      v29 = 32;
      do
      {
        if (!v28)
        {

          goto LABEL_21;
        }

        v30 = *(v18 + v29);
        v29 += 8;
        --v28;
      }

      while (v30 != v36);

      v31 = LACLogPreboard();
      Logger.init(_:)();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = v36;
        _os_log_impl(&dword_1B0233000, v32, v33, "Using mocked use case: %ld", v34, 0xCu);
        MEMORY[0x1B27246A0](v34, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
      __swift_destroy_boxed_opaque_existential_0(v39);
      return v36;
    }

    else
    {
LABEL_21:
      __swift_destroy_boxed_opaque_existential_0(v39);
      return v12;
    }
  }

  else
  {
    outlined destroy of AsyncStream<()>.Continuation?(&v37, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMR);
    v23 = LACLogPreboard();
    Logger.init(_:)();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B0233000, v24, v25, "Unsupported platform", v26, 2u);
      MEMORY[0x1B27246A0](v26, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return -1;
  }
}

uint64_t LACPreboardUseCaseProvider.completeCurrentUseCase(success:)(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  return MEMORY[0x1EEE6DFA0](LACPreboardUseCaseProvider.completeCurrentUseCase(success:), 0, 0);
}

uint64_t LACPreboardUseCaseProvider.completeCurrentUseCase(success:)()
{
  v1 = *(*(v0 + 96) + 56);
  v2 = [v1 preboardMode];
  if (v2)
  {

    [v1 setPreboardMode_];
    v3 = *(v0 + 8);
LABEL_3:

    return v3();
  }

  v5 = *(v0 + 96);
  LACPreboardUseCaseProvider.provider.getter(v0 + 56);
  if (!*(v0 + 80))
  {
    outlined destroy of AsyncStream<()>.Continuation?(v0 + 56, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMR);
    v12 = objc_opt_self();
    v13 = MEMORY[0x1B27229A0](0xD000000000000014, 0x80000001B0355FF0);
    [v12 errorWithCode:-1020 debugDescription:v13];

    swift_willThrow();
    v3 = *(v0 + 8);
    goto LABEL_3;
  }

  outlined init with take of LACPreboardUseCaseProviding((v0 + 56), v0 + 16);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v6);
  v8 = *(v7 + 16);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *v10 = v0;
  v10[1] = LACPreboardUseCaseProvider.completeCurrentUseCase(success:);
  v11 = *(v0 + 120);

  return v14(v11, v6, v7);
}

{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = LACPreboardUseCaseProvider.completeCurrentUseCase(success:);
  }

  else
  {
    v3 = LACPreboardUseCaseProvider.completeCurrentUseCase(success:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[14];
  v2 = v0[1];

  return v2();
}

uint64_t LACPreboardUseCaseProvider.deinit()
{
  outlined destroy of AsyncStream<()>.Continuation?(v0 + 16, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMR);
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t LACPreboardUseCaseProvider.__deallocating_deinit()
{
  outlined destroy of AsyncStream<()>.Continuation?(v0 + 16, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMR);
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LACPreboardUseCaseProviding.completeCurrentUseCase(success:) in conformance LACPreboardUseCaseProvider(char a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return LACPreboardUseCaseProvider.completeCurrentUseCase(success:)(a1);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v10 = *(type metadata accessor for UUID() - 8);
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
  v15 = *(type metadata accessor for UUID() - 8);
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

id LACConcurrentEvaluationControllerModel.__allocating_init(clientInfoProvider:helper:manager:replyQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_stashedRequests] = MEMORY[0x1E69E7CC0];
  *&v10[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_clientInfoProvider] = a1;
  *&v10[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper] = a2;
  *&v10[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager] = a3;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LACConcurrentIdleUIListenerProvider, off_1E7A94978);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = a2;
  v13 = a4;
  v14 = [objc_allocWithZone(ObjCClassFromMetadata) initWithHandler:a3 replyQueue:v13];

  *&v10[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_idleUIListenerProvider] = v14;
  *&v10[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_replyQueue] = v13;
  v17.receiver = v10;
  v17.super_class = v5;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v15;
}

id LACConcurrentEvaluationControllerModel.init(clientInfoProvider:helper:manager:replyQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_stashedRequests] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_clientInfoProvider] = a1;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper] = a2;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager] = a3;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LACConcurrentIdleUIListenerProvider, off_1E7A94978);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = a2;
  v13 = a4;
  v14 = [objc_allocWithZone(ObjCClassFromMetadata) initWithHandler:a3 replyQueue:v13];

  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_idleUIListenerProvider] = v14;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_replyQueue] = v13;
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v15;
}

id LACConcurrentEvaluationControllerModel.canProcessRequest(_:)(void *a1)
{
  result = [*(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper) isConcurrentEvaluationAvailable];
  if (result)
  {
    return [a1 isInteractive];
  }

  return result;
}

void LACConcurrentEvaluationControllerModel.processRequest(_:configuration:completion:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper];
  if ([v14 isConcurrentEvaluationAvailable] && objc_msgSend(a1, sel_isInteractive))
  {
    v65 = v10;
    v66 = v14;
    v15 = [a1 options];
    if (v15)
    {
      v16 = v15;
      v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v68[0] = 1089;
      AnyHashable.init<A>(_:)();
      if (*(v17 + 16))
      {
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
        if (v19)
        {
          outlined init with copy of Any(*(v17 + 56) + 32 * v18, &v70);
          outlined destroy of AnyHashable(v69);

          if (*(&v71 + 1))
          {
            outlined destroy of Any?(&v70);
            goto LABEL_19;
          }

LABEL_13:
          v64 = a4;
          v21 = MEMORY[0x1E69E6370];
          outlined destroy of Any?(&v70);
          v22 = [a1 options];
          if (v22)
          {
            v23 = v22;
            v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          }

          v25 = LACConcurrentEvaluationControllerModel.isConcurrencyDisabled(for:)(a1);
          *&v70 = 1089;
          AnyHashable.init<A>(_:)();
          *(&v71 + 1) = v21;
          v26 = v25 & 1;
          LOBYTE(v70) = v25 & 1;
          outlined init with take of Any(&v70, v68);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = v24;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, v69, isUniquelyReferenced_nonNull_native);
          outlined destroy of AnyHashable(v69);
          v62 = v67;
          v28 = LACLogConcurrentEvaluations();
          Logger.init(_:)();
          v63 = v5;
          v29 = v5;
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v61 = v31;
            v33 = v32;
            v60 = swift_slowAlloc();
            v69[0] = v60;
            *v33 = 136446466;
            v34 = [v29 description];
            v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            HIDWORD(v59) = v26;
            v36 = v35;
            v37 = a3;
            v39 = v38;

            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v39, v69);
            a3 = v37;

            *(v33 + 4) = v40;
            *(v33 + 12) = 1024;
            *(v33 + 14) = HIDWORD(v59);
            _os_log_impl(&dword_1B0233000, v30, v61, "%{public}s setting disableConcurrentEvaluation to %{BOOL}d", v33, 0x12u);
            v41 = v60;
            __swift_destroy_boxed_opaque_existential_0(v60);
            MEMORY[0x1B27246A0](v41, -1, -1);
            MEMORY[0x1B27246A0](v33, -1, -1);
          }

          (*(v65 + 8))(v13, v9);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [a1 updateOptions_];

          v5 = v63;
LABEL_19:
          v43 = [a1 options];
          if (v43)
          {
            v44 = v43;
            v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *&v68[0] = 1089;
            AnyHashable.init<A>(_:)();
            if (*(v45 + 16))
            {
              v46 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
              if (v47)
              {
                outlined init with copy of Any(*(v45 + 56) + 32 * v46, &v70);
                outlined destroy of AnyHashable(v69);

                if (*(&v71 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    if (v69[0])
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_30;
                  }

LABEL_29:
                  if ([v66 isConcurrentEvaluationEnabled])
                  {
LABEL_34:
                    [*&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager] registerRequest_];
                    v58 = [objc_opt_self() resultWithNext_];
                    a3();

                    return;
                  }

LABEL_30:
                  v48 = [a1 payload];
                  if (v48)
                  {
                    v49 = v48;
                    v50 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
                  }

                  else
                  {
                    v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
                  }

                  *&v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  *(&v70 + 1) = v51;
                  AnyHashable.init<A>(_:)();
                  v52 = *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_idleUIListenerProvider];
                  v53 = [a1 identifier];
                  v54 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
                  v55 = [v52 anonymousListenerWithIdentifier_];

                  *(&v71 + 1) = type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSXPCListener, 0x1E696B0D8);
                  *&v70 = v55;
                  outlined init with take of Any(&v70, v68);
                  v56 = swift_isUniquelyReferenced_nonNull_native();
                  v67 = v50;
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, v69, v56);
                  outlined destroy of AnyHashable(v69);
                  v57 = Dictionary._bridgeToObjectiveC()().super.isa;

                  [a1 updatePayload_];

                  goto LABEL_34;
                }

LABEL_28:
                outlined destroy of Any?(&v70);
                goto LABEL_29;
              }
            }

            outlined destroy of AnyHashable(v69);
          }

          v70 = 0u;
          v71 = 0u;
          goto LABEL_28;
        }
      }

      outlined destroy of AnyHashable(v69);
    }

    v70 = 0u;
    v71 = 0u;
    goto LABEL_13;
  }

  v66 = [objc_opt_self() resultWithNext_];
  a3();
  v20 = v66;
}

uint64_t LACConcurrentEvaluationControllerModel.isConcurrencyDisabled(for:)(void *a1)
{
  if ([a1 customUI])
  {
    return 1;
  }

  v3 = [a1 client];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_clientInfoProvider);
  v6 = [a1 options];
  if (v6)
  {
    v7 = v6;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v10 = [v5 infoForXPCClient:v4 evaluationOptions:v8.super.isa];

  v11 = [*(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper) isConcurrentEvaluationEnabledForClientInfo_];
  swift_unknownObjectRelease();

  return v11 ^ 1;
}

void LACConcurrentEvaluationControllerModel.postProcessRequest(_:result:completion:)(void *a1, void *a2, void (*a3)(void *), uint64_t a4)
{
  if ((LACConcurrentEvaluationControllerModel.shouldStash(request:for:)(a1, a2) & 1) != 0 && (v9 = [a2 error]) != 0)
  {
    v10 = v9;
    LACConcurrentEvaluationControllerModel.stashRequest(_:for:completion:)(a1, v9, a3, a4);
  }

  else
  {
    [*(v4 + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager) unregisterRequest_];
    a3(a2);
  }
}

id LACConcurrentEvaluationControllerModel.shouldStash(request:for:)(void *a1, void *a2)
{
  result = [a1 isInteractive];
  if (result)
  {
    v6 = [a2 error];
    if (v6)
    {
      v7 = v6;
      v8 = _convertErrorToNSError(_:)();
    }

    else
    {
      v8 = 0;
    }

    v9 = [objc_opt_self() error:v8 hasCode:-4 subcode:34];

    if (!v9)
    {
      return 0;
    }

    v10 = [a1 options];
    if (v10)
    {
      v11 = v10;
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = 1089;
      AnyHashable.init<A>(_:)();
      if (*(v12 + 16))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
        if (v14)
        {
          outlined init with copy of Any(*(v12 + 56) + 32 * v13, &v18);
          outlined destroy of AnyHashable(v17);

          if (*(&v19 + 1))
          {
            if (swift_dynamicCast())
            {
              v15 = v17[0];
              return (v15 ^ 1);
            }

LABEL_16:
            v15 = [*(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper) isConcurrentEvaluationEnabled];
            return (v15 ^ 1);
          }

LABEL_15:
          outlined destroy of Any?(&v18);
          goto LABEL_16;
        }
      }

      outlined destroy of AnyHashable(v17);
    }

    v18 = 0u;
    v19 = 0u;
    goto LABEL_15;
  }

  return result;
}

uint64_t LACConcurrentEvaluationControllerModel.stashRequest(_:for:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_replyQueue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v19(v14, v10);
  if (v17)
  {
    swift_unknownObjectRetain();
    v20 = a2;

    v21 = _convertErrorToNSError(_:)();
    v22 = [v21 userInfo];

    v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v23 + 16))
    {
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
      v28 = v27;

      if (v28)
      {
        outlined init with copy of Any(*(v23 + 56) + 32 * v26, v37);

        if (swift_dynamicCast())
        {
          v17 = v36[15] ^ 1;
          goto LABEL_9;
        }

LABEL_8:
        v17 = 1;
LABEL_9:
        v18 = OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_stashedRequests;
        swift_beginAccess();
        v10 = *(v5 + v18);
        swift_unknownObjectRetain();
        v29 = a2;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + v18) = v10;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }

    else
    {
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_14:
  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
  *(v5 + v18) = v10;
LABEL_10:
  v32 = *(v10 + 16);
  v31 = *(v10 + 24);
  if (v32 >= v31 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v10);
  }

  *(v10 + 16) = v32 + 1;
  v33 = (v10 + 32 * v32);
  v33[4] = a1;
  v33[5] = a2;
  v33[6] = a3;
  v33[7] = a4;
  *(v5 + v18) = v10;
  swift_endAccess();
  v34 = *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager);
  [v34 addObserver:v5 forRequest:a1];
  [v34 stashRequest:a1 acceptsIdleUI:v17 & 1];
  swift_unknownObjectRelease();
}

id LACConcurrentEvaluationControllerModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACConcurrentEvaluationControllerModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LACConcurrentEvaluationControllerModel.systemReady(for:manager:)(void *a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v77 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v73 - v10;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_replyQueue];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v78 = v6;
    v79 = v5;
    [a2 removeObserver:v2 forRequest:a1];
    v19 = OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_stashedRequests;
    swift_beginAccess();
    v80 = v2;
    v75 = v19;
    v20 = *&v2[v19];
    v21 = *(v20 + 16);

    v22 = a1;
    if (v21)
    {
      v23 = 0;
      v24 = 56;
      while (1)
      {
        if (v23 >= *(v20 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v25 = *(v20 + v24 - 24);
        v26 = *(v20 + v24 - 16);
        v27 = *(v20 + v24);
        swift_unknownObjectRetain();
        v28 = v26;

        v29 = [v25 identifier];
        v30 = v22;
        v31 = [v22 identifier];

        swift_unknownObjectRelease();

        if (v29 == v31)
        {
          break;
        }

        ++v23;
        v24 += 32;
        v22 = v30;
        if (v21 == v23)
        {
          goto LABEL_7;
        }
      }

      v45 = v80;
      v46 = *&v80[v75];
      if (v23 >= *(v46 + 16))
      {
        goto LABEL_19;
      }

      v47 = (v46 + v24);
      v48 = *(v47 - 3);
      v49 = *(v47 - 2);
      v50 = *v47;
      v74 = *(v47 - 1);
      swift_beginAccess();
      swift_unknownObjectRetain();
      v51 = v49;
      v77 = v50;

      specialized Array.remove(at:)(v23);
      v53 = v52;
      swift_endAccess();
      swift_unknownObjectRelease();

      v54 = LACLogConcurrentEvaluations();
      v55 = v76;
      Logger.init(_:)();
      v56 = v30;
      swift_unknownObjectRetain_n();
      v57 = v45;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v80 = v49;
        v81[0] = v61;
        v62 = v61;
        *v60 = 136446466;
        v63 = v55;
        v64 = [v57 description];
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v81);

        *(v60 + 4) = v68;
        *(v60 + 12) = 1024;
        LODWORD(v68) = [v56 identifier];
        swift_unknownObjectRelease();
        *(v60 + 14) = v68;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v58, v59, "%{public}s retrying stashed request rid: %u", v60, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v62);
        v69 = v62;
        v49 = v80;
        MEMORY[0x1B27246A0](v69, -1, -1);
        MEMORY[0x1B27246A0](v60, -1, -1);

        (*(v78 + 8))(v63, v79);
      }

      else
      {

        swift_unknownObjectRelease_n();
        (*(v78 + 8))(v55, v79);
      }

      v70 = objc_opt_self();
      v71 = _convertErrorToNSError(_:)();
      v72 = [v70 resultWithRetry:v48 error:v71];

      v74(v72);
      swift_unknownObjectRelease();
    }

    else
    {
LABEL_7:

      v32 = LACLogConcurrentEvaluations();
      v33 = v77;
      Logger.init(_:)();
      swift_unknownObjectRetain_n();
      v34 = v80;
      v35 = v22;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v81[0] = v39;
        *v38 = 136446466;
        v40 = [v34 description];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v81);

        *(v38 + 4) = v44;
        *(v38 + 12) = 1024;
        LODWORD(v44) = [v35 identifier];
        swift_unknownObjectRelease();
        *(v38 + 14) = v44;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v36, v37, "%{public}s no stashed record for request rid: %u", v38, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x1B27246A0](v39, -1, -1);
        MEMORY[0x1B27246A0](v38, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      return (*(v78 + 8))(v33, v79);
    }
  }

  else
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

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
    v6 = (v3 + 32 * a1);
    v7 = v6[4];
    v8 = v6[5];
    v6 += 4;
    v9 = v5 - 1;
    v10 = v6[2];
    v11 = v6[3];
    memmove(v6, v6 + 4, 32 * (v5 - 1 - a1));
    *(v3 + 16) = v9;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t LACConcurrentEvaluationControllerModel.systemDidCancel(_:manager:)(void *a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v77 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v73 - v10;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_replyQueue];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v78 = v6;
    v79 = v5;
    [a2 removeObserver:v2 forRequest:a1];
    v19 = OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_stashedRequests;
    swift_beginAccess();
    v80 = v2;
    v75 = v19;
    v20 = *&v2[v19];
    v21 = *(v20 + 16);

    v22 = a1;
    if (v21)
    {
      v23 = 0;
      v24 = 56;
      while (1)
      {
        if (v23 >= *(v20 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v25 = *(v20 + v24 - 24);
        v26 = *(v20 + v24 - 16);
        v27 = *(v20 + v24);
        swift_unknownObjectRetain();
        v28 = v26;

        v29 = [v25 identifier];
        v30 = v22;
        v31 = [v22 identifier];

        swift_unknownObjectRelease();

        if (v29 == v31)
        {
          break;
        }

        ++v23;
        v24 += 32;
        v22 = v30;
        if (v21 == v23)
        {
          goto LABEL_7;
        }
      }

      v45 = v80;
      v46 = *&v80[v75];
      if (v23 >= *(v46 + 16))
      {
        goto LABEL_19;
      }

      v47 = (v46 + v24);
      v48 = *(v47 - 3);
      v49 = *(v47 - 2);
      v50 = *v47;
      v74 = *(v47 - 1);
      swift_beginAccess();
      v77 = v48;
      swift_unknownObjectRetain();
      v51 = v49;

      specialized Array.remove(at:)(v23);
      v53 = v52;
      swift_endAccess();
      swift_unknownObjectRelease();

      v54 = LACLogConcurrentEvaluations();
      v55 = v76;
      Logger.init(_:)();
      v56 = v30;
      swift_unknownObjectRetain_n();
      v57 = v45;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v80 = v49;
        v81[0] = v61;
        v62 = v61;
        *v60 = 136446466;
        v63 = v55;
        v64 = [v57 description];
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v81);

        *(v60 + 4) = v68;
        *(v60 + 12) = 1024;
        LODWORD(v68) = [v56 identifier];
        swift_unknownObjectRelease();
        *(v60 + 14) = v68;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v58, v59, "%{public}s canceling stashed request: %u", v60, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v62);
        v69 = v62;
        v49 = v80;
        MEMORY[0x1B27246A0](v69, -1, -1);
        MEMORY[0x1B27246A0](v60, -1, -1);

        (*(v78 + 8))(v63, v79);
      }

      else
      {

        swift_unknownObjectRelease_n();
        (*(v78 + 8))(v55, v79);
      }

      v70 = objc_opt_self();
      v71 = _convertErrorToNSError(_:)();
      v72 = [v70 resultWithFailure_];

      v74(v72);
      swift_unknownObjectRelease();
    }

    else
    {
LABEL_7:

      v32 = LACLogConcurrentEvaluations();
      v33 = v77;
      Logger.init(_:)();
      swift_unknownObjectRetain_n();
      v34 = v80;
      v35 = v22;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v81[0] = v39;
        *v38 = 136446466;
        v40 = [v34 description];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v81);

        *(v38 + 4) = v44;
        *(v38 + 12) = 1024;
        LODWORD(v44) = [v35 identifier];
        swift_unknownObjectRelease();
        *(v38 + 14) = v44;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v36, v37, "%{public}s no stashed record for request rid: %u", v38, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x1B27246A0](v39, -1, -1);
        MEMORY[0x1B27246A0](v38, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      return (*(v78 + 8))(v33, v79);
    }
  }

  else
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

void @objc LACConcurrentEvaluationControllerModel.systemReady(for:manager:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id specialized LACConcurrentIdleUIListenerProvider.__allocating_init(handler:replyQueue:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithHandler:a1 replyQueue:a2];
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, _sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LACConcurrentEvaluationStashedRequest(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for LACConcurrentEvaluationStashedRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized LACConcurrentEvaluationControllerModel.processRequest(_:configuration:completion:)(void *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a2[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper];
  if ([v11 isConcurrentEvaluationAvailable] && objc_msgSend(a1, sel_isInteractive))
  {
    v63 = v7;
    v12 = [a1 options];
    if (v12)
    {
      v13 = v12;
      v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v65[0] = 1089;
      AnyHashable.init<A>(_:)();
      if (*(v14 + 16))
      {
        v15 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
        if (v16)
        {
          outlined init with copy of Any(*(v14 + 56) + 32 * v15, &v67);
          outlined destroy of AnyHashable(v66);

          if (*(&v68 + 1))
          {
            outlined destroy of Any?(&v67);
            goto LABEL_19;
          }

LABEL_13:
          v62 = v11;
          v18 = MEMORY[0x1E69E6370];
          outlined destroy of Any?(&v67);
          v19 = [a1 options];
          if (v19)
          {
            v20 = v19;
            v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          }

          v22 = LACConcurrentEvaluationControllerModel.isConcurrencyDisabled(for:)(a1);
          *&v67 = 1089;
          AnyHashable.init<A>(_:)();
          *(&v68 + 1) = v18;
          v23 = v22 & 1;
          LOBYTE(v67) = v22 & 1;
          outlined init with take of Any(&v67, v65);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64 = v21;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v65, v66, isUniquelyReferenced_nonNull_native);
          outlined destroy of AnyHashable(v66);
          v61 = v64;
          v25 = LACLogConcurrentEvaluations();
          Logger.init(_:)();
          v26 = a2;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v59 = a2;
            v30 = v29;
            v31 = swift_slowAlloc();
            v60 = a3;
            v58 = v31;
            v66[0] = v31;
            *v30 = 136446466;
            v32 = [v26 description];
            v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v57 = v23;
            v35 = v34;

            v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v66);

            *(v30 + 4) = v36;
            *(v30 + 12) = 1024;
            *(v30 + 14) = v57;
            _os_log_impl(&dword_1B0233000, v27, v28, "%{public}s setting disableConcurrentEvaluation to %{BOOL}d", v30, 0x12u);
            v37 = v58;
            __swift_destroy_boxed_opaque_existential_0(v58);
            a3 = v60;
            MEMORY[0x1B27246A0](v37, -1, -1);
            v38 = v30;
            a2 = v59;
            MEMORY[0x1B27246A0](v38, -1, -1);
          }

          v63[1](v10, v6);
          v11 = v62;
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [a1 updateOptions_];

LABEL_19:
          v40 = [a1 options];
          if (v40)
          {
            v41 = v40;
            v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *&v65[0] = 1089;
            AnyHashable.init<A>(_:)();
            if (*(v42 + 16))
            {
              v43 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
              if (v44)
              {
                outlined init with copy of Any(*(v42 + 56) + 32 * v43, &v67);
                outlined destroy of AnyHashable(v66);

                if (*(&v68 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    if (v66[0])
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_30;
                  }

LABEL_29:
                  if ([v11 isConcurrentEvaluationEnabled])
                  {
LABEL_34:
                    [*&a2[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager] registerRequest_];
                    v55 = [objc_opt_self() resultWithNext_];
                    (*(a3 + 16))(a3, v55);

                    return;
                  }

LABEL_30:
                  v45 = [a1 payload];
                  if (v45)
                  {
                    v46 = v45;
                    v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
                  }

                  else
                  {
                    v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
                  }

                  *&v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  *(&v67 + 1) = v48;
                  AnyHashable.init<A>(_:)();
                  v49 = *&a2[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_idleUIListenerProvider];
                  v50 = [a1 identifier];
                  v51 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
                  v52 = [v49 anonymousListenerWithIdentifier_];

                  *(&v68 + 1) = type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSXPCListener, 0x1E696B0D8);
                  *&v67 = v52;
                  outlined init with take of Any(&v67, v65);
                  v53 = swift_isUniquelyReferenced_nonNull_native();
                  v64 = v47;
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v65, v66, v53);
                  outlined destroy of AnyHashable(v66);
                  v54 = Dictionary._bridgeToObjectiveC()().super.isa;

                  [a1 updatePayload_];

                  goto LABEL_34;
                }

LABEL_28:
                outlined destroy of Any?(&v67);
                goto LABEL_29;
              }
            }

            outlined destroy of AnyHashable(v66);
          }

          v67 = 0u;
          v68 = 0u;
          goto LABEL_28;
        }
      }

      outlined destroy of AnyHashable(v66);
    }

    v67 = 0u;
    v68 = 0u;
    goto LABEL_13;
  }

  v63 = [objc_opt_self() resultWithNext_];
  (*(a3 + 16))(a3, v63);
  v17 = v63;
}

uint64_t static LACGlobalDomain.companionAuthentication.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 valueForFlagCompanionSessionAuthentication];

  if (!v1)
  {
    return 0;
  }

  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void key path getter for static LACGlobalDomain.companionAuthentication : LACGlobalDomain.Type(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [swift_getObjCClassFromMetadata() companionAuthentication];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a2 = v6;
  a2[1] = v8;
}

void key path setter for static LACGlobalDomain.companionAuthentication : LACGlobalDomain.Type(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v3 = *a1;
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [swift_getObjCClassFromMetadata() setCompanionAuthentication_];
}

id static LACGlobalDomain.releaseUIDelegate.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 valueForFlagReleaseUIDelegate];

  return v1;
}

id LACGlobalDomain.isDTOStrictModeEnabled.getter(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 *a1];

  return v3;
}

id @objc static LACGlobalDomain.isCompanionDeviceMocked.getter(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 *a3];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 BOOLValue];

  return v6;
}

id static LACGlobalDomain.isCompanionDeviceMocked.getter(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 *a1];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t @objc static LACGlobalDomain.isCompanionDeviceMocked.setter(uint64_t a1, uint64_t a2, char a3, SEL *a4)
{
  v11[3] = MEMORY[0x1E69E6370];
  LOBYTE(v11[0]) = a3;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 *a4];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  specialized static LACGlobalDomain.setObject(_:forKey:)(v11, v7, v9);

  return outlined destroy of Any?(v11);
}

uint64_t static LACGlobalDomain.isCompanionDeviceMocked.setter(char a1, SEL *a2)
{
  v9[3] = MEMORY[0x1E69E6370];
  LOBYTE(v9[0]) = a1;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 *a2];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  specialized static LACGlobalDomain.setObject(_:forKey:)(v9, v5, v7);

  return outlined destroy of Any?(v9);
}

void specialized static LACGlobalDomain.setObject(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = *MEMORY[0x1E696A400];
  v9 = [v7 persistentDomainForName_];

  if (v9)
  {
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v20 = v10;
  outlined init with copy of Any?(a1, &v18);
  if (v19)
  {
    outlined init with take of Any(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v10;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a2, a3, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    outlined destroy of Any?(&v18);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v17);
    outlined destroy of Any?(v17);
  }

  v12 = [v6 standardUserDefaults];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setPersistentDomain:isa forName:v8];

  v14 = [v6 standardUserDefaults];
  [v14 synchronize];

  v15 = [objc_opt_self() sharedInstance];
  [v15 postNotification_];
}

uint64_t specialized static LACGlobalDomain.companionAuthentication.setter(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v16 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E6969080];
    v4 = a1;
    v5 = a2;
  }

  v14 = v4;
  v15 = v5;
  v17 = v6;
  v7 = objc_opt_self();
  outlined copy of Data?(a1, a2);
  v8 = [v7 sharedInstance];
  v9 = [v8 flagCompanionSessionAuthenticationKey];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  specialized static LACGlobalDomain.setObject(_:forKey:)(&v14, v10, v12);
  outlined consume of Data?(a1, a2);

  return outlined destroy of Any?(&v14);
}