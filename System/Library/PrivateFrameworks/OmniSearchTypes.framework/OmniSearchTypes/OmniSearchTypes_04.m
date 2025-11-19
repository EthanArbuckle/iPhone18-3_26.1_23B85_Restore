unint64_t FlightReservation.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      return 0x73726577736E61;
    case 2:
      return 0xD000000000000010;
    case 3:
      return 0x6449656C646E7562;
    case 4:
      return 0x7373654D6C69616DLL;
    case 5:
    case 35:
      return 0xD000000000000016;
    case 6:
    case 16:
    case 17:
    case 21:
      v3 = 11;
      goto LABEL_30;
    case 7:
      return 0xD000000000000023;
    case 8:
      return 0x6E557349656D6974;
    case 9:
      return 0x754E746867696C66;
    case 10:
      return 0xD000000000000010;
    case 11:
    case 30:
      return 0xD000000000000014;
    case 12:
      return 0x6143746867696C66;
    case 13:
    case 37:
    case 45:
      return 0xD000000000000011;
    case 14:
      return 0xD000000000000010;
    case 15:
    case 18:
    case 22:
      v3 = 13;
      goto LABEL_30;
    case 19:
    case 25:
    case 29:
      return 0xD000000000000018;
    case 20:
    case 26:
    case 27:
    case 31:
      v3 = 10;
      goto LABEL_30;
    case 23:
    case 28:
      return 0xD00000000000001CLL;
    case 24:
      return 0xD00000000000001ELL;
    case 32:
    case 34:
      v3 = 5;
      goto LABEL_30;
    case 33:
    case 44:
      return 0xD000000000000017;
    case 36:
    case 47:
      return 0xD000000000000013;
    case 38:
      return 0x7544746867696C66;
    case 39:
    case 42:
      return 0xD000000000000012;
    case 40:
      return 0xD000000000000010;
    case 41:
      return 0x7453746867696C66;
    case 43:
      v3 = 9;
LABEL_30:
      result = v3 | 0xD000000000000010;
      break;
    case 46:
      result = 0x5465746144646E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FlightReservation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = FlightReservation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance FlightReservation.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = FlightReservation.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FlightReservation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FlightReservation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void FlightReservation.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_193();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes17FlightReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes17FlightReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys();
  OUTLINED_FUNCTION_192();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_86();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v38 = v1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    OUTLINED_FUNCTION_198(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_157();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v39 = v1[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8 = v1[4];
    v9 = v1[5];
    OUTLINED_FUNCTION_58(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v1[6];
    v11 = v1[7];
    OUTLINED_FUNCTION_58(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v1[8];
    v13 = v1[9];
    OUTLINED_FUNCTION_58(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v1[10];
    v15 = v1[11];
    OUTLINED_FUNCTION_58(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v1[12];
    v17 = v1[13];
    OUTLINED_FUNCTION_58(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v1 + 112);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v1[15];
    v20 = v1[16];
    OUTLINED_FUNCTION_58(9);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37 = type metadata accessor for FlightReservation(0);
    v21 = v37[14];
    type metadata accessor for URL();
    OUTLINED_FUNCTION_12_3();
    lazy protocol witness table accessor for type Date and conformance Date(v22, v23);
    OUTLINED_FUNCTION_176();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24 = v37[15];
    OUTLINED_FUNCTION_176();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[16]);
    OUTLINED_FUNCTION_58(12);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[17]);
    OUTLINED_FUNCTION_58(13);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[18]);
    OUTLINED_FUNCTION_58(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = v37[19];
    type metadata accessor for DateComponents();
    OUTLINED_FUNCTION_38_2();
    lazy protocol witness table accessor for type Date and conformance Date(v26, v27);
    OUTLINED_FUNCTION_176();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v28 = v37[20];
    OUTLINED_FUNCTION_176();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[21]);
    OUTLINED_FUNCTION_58(17);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[22]);
    OUTLINED_FUNCTION_58(18);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[23]);
    OUTLINED_FUNCTION_58(19);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[24]);
    OUTLINED_FUNCTION_58(20);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[25]);
    OUTLINED_FUNCTION_58(21);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[26]);
    OUTLINED_FUNCTION_58(22);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[27]);
    OUTLINED_FUNCTION_58(23);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[28]);
    OUTLINED_FUNCTION_58(24);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[29]);
    OUTLINED_FUNCTION_58(25);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[30]);
    OUTLINED_FUNCTION_58(26);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[31]);
    OUTLINED_FUNCTION_58(27);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[32]);
    OUTLINED_FUNCTION_58(28);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[33]);
    OUTLINED_FUNCTION_58(29);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40 = *(v1 + v37[34]);
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v41 = *(v1 + v37[35]);
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[36]);
    OUTLINED_FUNCTION_58(32);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[37]);
    OUTLINED_FUNCTION_58(33);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[38]);
    OUTLINED_FUNCTION_58(34);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = v37[39];
    type metadata accessor for Date();
    OUTLINED_FUNCTION_6_4();
    lazy protocol witness table accessor for type Date and conformance Date(v30, v31);
    OUTLINED_FUNCTION_157();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[40]);
    OUTLINED_FUNCTION_58(36);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[41]);
    OUTLINED_FUNCTION_58(37);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_239(v37[42]);
    OUTLINED_FUNCTION_58(38);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[43]);
    OUTLINED_FUNCTION_58(39);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v34 = (v1 + v37[44]);
    v42 = *v34;
    v43 = *(v34 + 4);
    v44 = *(v34 + 20);
    type metadata accessor for NSDecimal(0);
    OUTLINED_FUNCTION_285();
    lazy protocol witness table accessor for type Date and conformance Date(v35, v36);
    OUTLINED_FUNCTION_157();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[45]);
    OUTLINED_FUNCTION_58(41);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[46]);
    OUTLINED_FUNCTION_58(42);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[47]);
    OUTLINED_FUNCTION_58(43);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[48]);
    OUTLINED_FUNCTION_58(44);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[49]);
    OUTLINED_FUNCTION_58(45);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[50]);
    OUTLINED_FUNCTION_58(46);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v37[51]);
    OUTLINED_FUNCTION_58(47);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v32 = OUTLINED_FUNCTION_375();
  v33(v32);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys);
  }

  return result;
}

void FlightReservation.hash(into:)()
{
  OUTLINED_FUNCTION_43_0();
  v5 = v1;
  OUTLINED_FUNCTION_71();
  v94 = type metadata accessor for Date();
  v6 = OUTLINED_FUNCTION_1(v94);
  v92 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_2();
  v91 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_1();
  v93 = v15;
  v16 = type metadata accessor for URL();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_333();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = OUTLINED_FUNCTION_62(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_372();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_209();
  v27 = *v1;
  v28 = v1[1];
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v0, v1[2]);
  specialized Array<A>.hash(into:)(v0, v1[3]);
  v29 = v1[4];
  v30 = v1[5];
  String.hash(into:)();
  if (v1[7])
  {
    v31 = v1[6];
    OUTLINED_FUNCTION_336();
    OUTLINED_FUNCTION_241();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  if (v1[9])
  {
    v32 = v1[8];
    OUTLINED_FUNCTION_336();
    OUTLINED_FUNCTION_241();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  if (v1[11])
  {
    v33 = v1[10];
    OUTLINED_FUNCTION_336();
    OUTLINED_FUNCTION_241();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  if (v1[13])
  {
    v34 = v1[12];
    OUTLINED_FUNCTION_336();
    OUTLINED_FUNCTION_241();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  Hasher._combine(_:)(*(v1 + 112));
  if (v1[16])
  {
    v35 = v1[15];
    OUTLINED_FUNCTION_336();
    OUTLINED_FUNCTION_241();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  v36 = type metadata accessor for FlightReservation(0);
  outlined init with copy of RentalCarReservation?(v1 + v36[14], v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_66(v2, 1, v16);
  if (v37)
  {
    OUTLINED_FUNCTION_337();
  }

  else
  {
    OUTLINED_FUNCTION_30();
    v38 = OUTLINED_FUNCTION_420();
    v39(v38);
    OUTLINED_FUNCTION_336();
    OUTLINED_FUNCTION_12_3();
    lazy protocol witness table accessor for type Date and conformance Date(v40, v41);
    OUTLINED_FUNCTION_392();
    dispatch thunk of Hashable.hash(into:)();
    (*(v19 + 8))(v3, v16);
  }

  outlined init with copy of RentalCarReservation?(v1 + v36[15], v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_66(v4, 1, v16);
  if (v37)
  {
    OUTLINED_FUNCTION_337();
  }

  else
  {
    OUTLINED_FUNCTION_30();
    v42(v3, v4, v16);
    OUTLINED_FUNCTION_336();
    OUTLINED_FUNCTION_12_3();
    lazy protocol witness table accessor for type Date and conformance Date(v43, v44);
    OUTLINED_FUNCTION_392();
    dispatch thunk of Hashable.hash(into:)();
    (*(v19 + 8))(v3, v16);
  }

  OUTLINED_FUNCTION_253(v36[16]);
  if (v2)
  {
    OUTLINED_FUNCTION_222(v45);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[17]);
  if (v2)
  {
    OUTLINED_FUNCTION_222(v46);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[18]);
  if (v2)
  {
    OUTLINED_FUNCTION_222(v47);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  v48 = v36[19];
  type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_38_2();
  v51 = lazy protocol witness table accessor for type Date and conformance Date(v49, v50);
  OUTLINED_FUNCTION_144_0();
  dispatch thunk of Hashable.hash(into:)();
  v52 = v5 + v36[20];
  OUTLINED_FUNCTION_144_0();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_253(v36[21]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v53);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[22]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v54);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[23]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v55);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[24]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v56);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[25]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v57);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[26]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v58);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[27]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v59);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[28]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v60);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[29]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v61);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[30]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v62);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[31]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v63);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[32]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v64);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[33]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v65);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  specialized Array<A>.hash(into:)(v0, *(v5 + v36[34]));
  specialized Array<A>.hash(into:)(v0, *(v5 + v36[35]));
  OUTLINED_FUNCTION_253(v36[36]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v66);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[37]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v67);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_253(v36[38]);
  if (v51)
  {
    OUTLINED_FUNCTION_222(v68);
    OUTLINED_FUNCTION_144_0();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  outlined init with copy of RentalCarReservation?(v5 + v36[39], v93, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v69 = v94;
  OUTLINED_FUNCTION_66(v93, 1, v94);
  if (v37)
  {
    OUTLINED_FUNCTION_337();
  }

  else
  {
    v70 = *(v92 + 32);
    v71 = OUTLINED_FUNCTION_322();
    v72(v71);
    OUTLINED_FUNCTION_336();
    OUTLINED_FUNCTION_6_4();
    lazy protocol witness table accessor for type Date and conformance Date(v73, v74);
    OUTLINED_FUNCTION_392();
    dispatch thunk of Hashable.hash(into:)();
    (*(v92 + 8))(v91, v94);
  }

  OUTLINED_FUNCTION_311(v36[40]);
  if (v94)
  {
    OUTLINED_FUNCTION_272(v75);
    OUTLINED_FUNCTION_273();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_311(v36[41]);
  if (v94)
  {
    OUTLINED_FUNCTION_272(v76);
    OUTLINED_FUNCTION_273();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  v77 = v5 + v36[42];
  if (*(v77 + 8) == 1)
  {
    OUTLINED_FUNCTION_337();
  }

  else
  {
    OUTLINED_FUNCTION_222(v77);
    if ((v94 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v78 = v94;
    }

    else
    {
      v78 = 0;
    }

    MEMORY[0x25F8A2440](v78);
  }

  OUTLINED_FUNCTION_311(v36[43]);
  if (v94)
  {
    OUTLINED_FUNCTION_272(v79);
    OUTLINED_FUNCTION_273();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  v80 = (v5 + v36[44]);
  if (*(v80 + 20) == 1)
  {
    OUTLINED_FUNCTION_337();
  }

  else
  {
    v69 = *(v80 + 4);
    v82 = *v80;
    v81 = v80[1];
    OUTLINED_FUNCTION_336();
    NSDecimal.hash(into:)();
  }

  OUTLINED_FUNCTION_311(v36[45]);
  if (v69)
  {
    OUTLINED_FUNCTION_272(v83);
    OUTLINED_FUNCTION_273();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_311(v36[46]);
  if (v69)
  {
    OUTLINED_FUNCTION_272(v84);
    OUTLINED_FUNCTION_273();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_311(v36[47]);
  if (v69)
  {
    OUTLINED_FUNCTION_272(v85);
    OUTLINED_FUNCTION_273();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_311(v36[48]);
  if (v69)
  {
    OUTLINED_FUNCTION_272(v86);
    OUTLINED_FUNCTION_273();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_311(v36[49]);
  if (v69)
  {
    OUTLINED_FUNCTION_272(v87);
    OUTLINED_FUNCTION_273();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_311(v36[50]);
  if (v69)
  {
    OUTLINED_FUNCTION_272(v88);
    OUTLINED_FUNCTION_273();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  v89 = (v5 + v36[51]);
  if (v89[1])
  {
    v90 = *v89;
    OUTLINED_FUNCTION_336();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_337();
  }

  OUTLINED_FUNCTION_42_0();
}

Swift::Int FlightReservation.hashValue.getter()
{
  Hasher.init(_seed:)();
  FlightReservation.hash(into:)();
  return Hasher._finalize()();
}

void FlightReservation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_36();
  a19 = v24;
  a20 = v25;
  v224 = v20;
  v27 = v26;
  v202 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_1();
  v210 = v33;
  v34 = type metadata accessor for DateComponents();
  v35 = OUTLINED_FUNCTION_1(v34);
  v225 = v36;
  v226 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_42_1();
  v222 = v39 - v40;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v41);
  v223 = &v196 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v44 = OUTLINED_FUNCTION_62(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_325();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_208();
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes17FlightReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes17FlightReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1(v204);
  v203 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_398();
  v52 = type metadata accessor for FlightReservation(0);
  v53 = OUTLINED_FUNCTION_9_1(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_5_1();
  v58 = v57 - v56;
  v60 = *(v59 + 156);
  v61 = type metadata accessor for Date();
  v227 = v60;
  __swift_storeEnumTagSinglePayload(v58 + v60, 1, 1, v61);
  v228 = v52;
  v229 = v58;
  v62 = v58 + *(v52 + 176);
  *v62 = 0;
  *(v62 + 8) = 0;
  *(v62 + 16) = 0;
  *(v62 + 20) = 1;
  v64 = v27[3];
  v63 = v27[4];
  v206 = v27;
  __swift_project_boxed_opaque_existential_1(v27, v64);
  lazy protocol witness table accessor for type FlightReservation.CodingKeys and conformance FlightReservation.CodingKeys();
  v205 = v21;
  v65 = v224;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v65)
  {
    OUTLINED_FUNCTION_346();
    OUTLINED_FUNCTION_242();
    LODWORD(v66) = 0;
    v196 = 0;
    v197 = 0;
    v198 = 0;
    v199 = 0;
    v200 = 0;
    v201 = 0;
    LODWORD(v202) = 0;
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_59_0();
    OUTLINED_FUNCTION_174();
    v224 = v65;
    __swift_destroy_boxed_opaque_existential_1(v206);
    v75 = 0;
    v76 = 0;
    if (v62)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v66 = v22;
    v224 = v23;
    v209 = v61;
    LOBYTE(v230) = 0;
    v67 = KeyedDecodingContainer.decode(_:forKey:)();
    v82 = v229;
    *v229 = v67;
    v82[1] = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    OUTLINED_FUNCTION_194(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_428();
    OUTLINED_FUNCTION_180();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v82[2] = v230;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v21 = OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_378();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v211 = v21;
    v82[3] = v230;
    OUTLINED_FUNCTION_106_0(3);
    v82[4] = KeyedDecodingContainer.decode(_:forKey:)();
    v82[5] = v84;
    OUTLINED_FUNCTION_106_0(4);
    v82[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v82[7] = v85;
    OUTLINED_FUNCTION_106_0(5);
    v82[8] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v82[9] = v86;
    OUTLINED_FUNCTION_106_0(6);
    v82[10] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v82[11] = v87;
    v208 = v87;
    OUTLINED_FUNCTION_106_0(7);
    v88 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v89 = v229;
    *(v229 + 96) = v88;
    *(v89 + 104) = v90;
    v207 = v90;
    OUTLINED_FUNCTION_106_0(8);
    *(v229 + 112) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    OUTLINED_FUNCTION_106_0(9);
    v91 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v92 = v229;
    *(v229 + 120) = v91;
    *(v92 + 128) = v93;
    type metadata accessor for URL();
    LOBYTE(v230) = 10;
    OUTLINED_FUNCTION_12_3();
    lazy protocol witness table accessor for type Date and conformance Date(v94, v95);
    OUTLINED_FUNCTION_329();
    OUTLINED_FUNCTION_180();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of Date?(v66, v229 + v228[14], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    LOBYTE(v230) = 11;
    OUTLINED_FUNCTION_329();
    OUTLINED_FUNCTION_180();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of Date?(v224, v229 + v228[15], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_31_1(12);
    v96 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_78(v96, v97, v228[16]);
    OUTLINED_FUNCTION_31_1(13);
    v98 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_78(v98, v99, v228[17]);
    OUTLINED_FUNCTION_31_1(14);
    v100 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_78(v100, v101, v228[18]);
    LOBYTE(v230) = 15;
    OUTLINED_FUNCTION_38_2();
    LODWORD(v23) = lazy protocol witness table accessor for type Date and conformance Date(v102, v103);
    OUTLINED_FUNCTION_329();
    OUTLINED_FUNCTION_180();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v104 = *(v225 + 32);
    v104(v229 + v228[19], v223, v226);
    LOBYTE(v230) = 16;
    OUTLINED_FUNCTION_329();
    OUTLINED_FUNCTION_180();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v104(v229 + v228[20], v222, v226);
    OUTLINED_FUNCTION_31_1(17);
    v105 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v223 = v106;
    v107 = (v229 + v228[21]);
    *v107 = v105;
    v107[1] = v106;
    OUTLINED_FUNCTION_31_1(18);
    v108 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v222 = v109;
    v110 = (v229 + v228[22]);
    *v110 = v108;
    v110[1] = v109;
    OUTLINED_FUNCTION_31_1(19);
    v111 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v221 = v112;
    v113 = (v229 + v228[23]);
    *v113 = v111;
    v113[1] = v112;
    OUTLINED_FUNCTION_31_1(20);
    v114 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v220 = v115;
    v116 = (v229 + v228[24]);
    *v116 = v114;
    v116[1] = v115;
    OUTLINED_FUNCTION_31_1(21);
    v117 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v219 = v118;
    v119 = (v229 + v228[25]);
    *v119 = v117;
    v119[1] = v118;
    OUTLINED_FUNCTION_31_1(22);
    v120 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v218 = v121;
    v122 = (v229 + v228[26]);
    *v122 = v120;
    v122[1] = v121;
    OUTLINED_FUNCTION_31_1(23);
    v123 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v217 = v124;
    v125 = (v229 + v228[27]);
    *v125 = v123;
    v125[1] = v124;
    OUTLINED_FUNCTION_31_1(24);
    v126 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v216 = v127;
    v128 = (v229 + v228[28]);
    *v128 = v126;
    v128[1] = v127;
    OUTLINED_FUNCTION_31_1(25);
    v129 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v215 = v130;
    v131 = (v229 + v228[29]);
    *v131 = v129;
    v131[1] = v130;
    OUTLINED_FUNCTION_31_1(26);
    v132 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v214 = v133;
    v134 = (v229 + v228[30]);
    *v134 = v132;
    v134[1] = v133;
    OUTLINED_FUNCTION_31_1(27);
    v135 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = v136;
    v137 = (v229 + v228[31]);
    *v137 = v135;
    v137[1] = v136;
    OUTLINED_FUNCTION_31_1(28);
    v138 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v212 = v139;
    v140 = (v229 + v228[32]);
    *v140 = v138;
    v140[1] = v139;
    OUTLINED_FUNCTION_31_1(29);
    v141 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_78(v141, v142, v228[33]);
    OUTLINED_FUNCTION_378();
    OUTLINED_FUNCTION_329();
    OUTLINED_FUNCTION_180();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v229 + v228[34]) = v230;
    OUTLINED_FUNCTION_378();
    OUTLINED_FUNCTION_329();
    OUTLINED_FUNCTION_180();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v229 + v228[35]) = v230;
    OUTLINED_FUNCTION_31_1(32);
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_330(v143, &a18);
    OUTLINED_FUNCTION_327(v144, (v229 + v228[36]));
    OUTLINED_FUNCTION_31_1(33);
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_330(v145, &a17);
    OUTLINED_FUNCTION_327(v146, (v229 + v228[37]));
    OUTLINED_FUNCTION_31_1(34);
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_330(v147, &a16);
    OUTLINED_FUNCTION_327(v148, (v229 + v228[38]));
    LOBYTE(v230) = 35;
    OUTLINED_FUNCTION_6_4();
    lazy protocol witness table accessor for type Date and conformance Date(v149, v150);
    OUTLINED_FUNCTION_329();
    OUTLINED_FUNCTION_180();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of Date?(v210, v229 + v227);
    OUTLINED_FUNCTION_31_1(36);
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_330(v151, &a14);
    OUTLINED_FUNCTION_327(v152, (v229 + v228[40]));
    OUTLINED_FUNCTION_31_1(37);
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_330(v153, &a15);
    OUTLINED_FUNCTION_327(v154, (v229 + v228[41]));
    OUTLINED_FUNCTION_31_1(38);
    v155 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_175(v155, v156, v228[42]);
    OUTLINED_FUNCTION_31_1(39);
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_330(v157, &a13);
    OUTLINED_FUNCTION_327(v158, (v229 + v228[43]));
    type metadata accessor for NSDecimal(0);
    OUTLINED_FUNCTION_285();
    lazy protocol witness table accessor for type Date and conformance Date(v159, v160);
    OUTLINED_FUNCTION_428();
    OUTLINED_FUNCTION_329();
    OUTLINED_FUNCTION_180();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v161 = v231;
    v162 = v232;
    *v62 = v230;
    *(v62 + 16) = v161;
    *(v62 + 20) = v162;
    OUTLINED_FUNCTION_31_1(41);
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_330(v163, &a11);
    OUTLINED_FUNCTION_327(v164, (v229 + v228[45]));
    OUTLINED_FUNCTION_31_1(42);
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_330(v165, &a12);
    OUTLINED_FUNCTION_327(v166, (v229 + v228[46]));
    OUTLINED_FUNCTION_31_1(43);
    v167 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_78(v167, v168, v228[47]);
    OUTLINED_FUNCTION_42_2(44);
    v169 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v224 = 0;
    OUTLINED_FUNCTION_78(v169, v170, v228[48]);
    OUTLINED_FUNCTION_42_2(45);
    v171 = v224;
    v172 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v224 = v171;
    if (v171)
    {
      v174 = OUTLINED_FUNCTION_20_3();
      v175(v174);
      v76 = 0;
      v75 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_78(v172, v173, v228[49]);
      OUTLINED_FUNCTION_42_2(46);
      v176 = v224;
      v177 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v224 = v176;
      if (v176)
      {
        v179 = OUTLINED_FUNCTION_20_3();
        v180(v179);
        v75 = 0;
        v76 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_78(v177, v178, v228[50]);
        OUTLINED_FUNCTION_42_2(47);
        v181 = v224;
        v182 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v224 = v181;
        if (!v181)
        {
          v190 = v182;
          v191 = v183;
          v192 = v229;
          v193 = (v229 + v228[51]);
          v194 = OUTLINED_FUNCTION_20_3();
          v195(v194);
          *v193 = v190;
          v193[1] = v191;
          outlined init with copy of RentalCarReservation(v192, v202, type metadata accessor for FlightReservation);
          __swift_destroy_boxed_opaque_existential_1(v206);
          outlined destroy of RentalCarReservation();
          goto LABEL_43;
        }

        v184 = OUTLINED_FUNCTION_20_3();
        v185(v184);
        v76 = 1;
        v75 = 1;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v206);
    OUTLINED_FUNCTION_27_2();
    OUTLINED_FUNCTION_101_0(v186);
    OUTLINED_FUNCTION_196(v187);
    *(v189 - 256) = v188;
    LODWORD(v203) = v188;
    v68 = *(v229 + 8);

    if (v62)
    {
LABEL_5:
      v69 = v229;
      v70 = *(v229 + 16);

      if ((v21 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  v69 = v229;
  if (!v21)
  {
LABEL_6:
    if (!v23)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v77 = *(v69 + 3);

  if ((v23 & 1) == 0)
  {
LABEL_7:
    if (v22)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v78 = *(v69 + 5);

  if (v22)
  {
LABEL_8:
    v71 = *(v69 + 7);

    OUTLINED_FUNCTION_422();
    if (v66)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  OUTLINED_FUNCTION_422();
  if (v66)
  {
LABEL_9:
    v72 = *(v69 + 9);

    if ((v196 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:

  if (!v196)
  {
LABEL_10:
    v73 = v228;
    if (!v197)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v79 = *(v69 + 16);

  v73 = v228;
  if ((v197 & 1) == 0)
  {
LABEL_11:
    if (v198)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(&v69[v73[14]], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v198)
  {
LABEL_12:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(&v69[v73[15]], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v199)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (v199)
  {
LABEL_13:
    OUTLINED_FUNCTION_406(v73[16]);
    if ((v23 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v23)
  {
LABEL_14:
    if (!v201)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  OUTLINED_FUNCTION_406(v73[17]);
  if ((v201 & 1) == 0)
  {
LABEL_15:
    if (v21)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  OUTLINED_FUNCTION_406(v73[18]);
  if (v21)
  {
LABEL_16:
    v74 = *(v22 + 8);
    v74(&v69[v73[19]], v226);
    if ((v202 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_30:
  if (v202)
  {
    v74 = *(v22 + 8);
LABEL_32:
    v74(&v69[v73[20]], v226);
  }

LABEL_33:

  if (v205)
  {
    OUTLINED_FUNCTION_406(v73[33]);
  }

  if (v204)
  {
    v80 = *&v69[v73[34]];
  }

  if (v203)
  {
    v81 = *&v69[v73[35]];
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(&v69[v227], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  if (v76)
  {
    OUTLINED_FUNCTION_406(v73[49]);
  }

  if (v75)
  {
    OUTLINED_FUNCTION_406(v73[50]);
  }

LABEL_43:
  OUTLINED_FUNCTION_35();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FlightReservation()
{
  Hasher.init(_seed:)();
  FlightReservation.hash(into:)();
  return Hasher._finalize()();
}

uint64_t HotelReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:hotelReservationId:hotelUnderName:hotelCheckinDateComponents:hotelCheckoutDateComponents:hotelReservationForName:hotelModifyReservationUrl:hotelReservationForTelephone:hotelReservationForAddress:hotelBookingProvider:hotelCustomerNames:hotelRoomNumbers:hotelNumberOfRooms:hotelDuration:hotelCost:hotelStatus:hotelUpdateStatus:hotelCheckinDateString:hotelCheckoutDateString:durationInDays:startDateTimeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, char a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49)
{
  v50 = type metadata accessor for HotelReservation(0);
  v51 = a9 + v50[31];
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
  *(a9 + 112) = a14;
  *(a9 + 120) = a15;
  *(a9 + 136) = a16;
  *(a9 + 144) = a17;
  v52 = v50[15];
  v53 = OUTLINED_FUNCTION_434();
  OUTLINED_FUNCTION_152(v53, v54);
  result = OUTLINED_FUNCTION_295(v50[16]);
  v56 = (a9 + v50[17]);
  *v56 = a20;
  v56[1] = a21;
  v57 = (a9 + v50[18]);
  *v57 = a22;
  v57[1] = a23;
  v58 = (a9 + v50[19]);
  *v58 = a24;
  v58[1] = a25;
  v59 = (a9 + v50[20]);
  *v59 = a26;
  v59[1] = a27;
  v60 = (a9 + v50[21]);
  *v60 = a28;
  v60[1] = a29;
  *(a9 + v50[22]) = a30;
  *(a9 + v50[23]) = a31;
  v61 = a9 + v50[24];
  *v61 = a32;
  *(v61 + 8) = a33 & 1;
  v62 = a9 + v50[25];
  *v62 = a34;
  *(v62 + 8) = a35 & 1;
  v63 = (a9 + v50[26]);
  *v63 = a36;
  v63[1] = a37;
  v64 = (a9 + v50[27]);
  *v64 = a38;
  v64[1] = a39;
  v65 = (a9 + v50[28]);
  *v65 = a40;
  v65[1] = a41;
  v66 = (a9 + v50[29]);
  *v66 = a42;
  v66[1] = a43;
  v67 = (a9 + v50[30]);
  *v67 = a44;
  v67[1] = a45;
  *v51 = a46;
  *(v51 + 8) = a47 & 1;
  v68 = (a9 + v50[32]);
  *v68 = a48;
  v68[1] = a49;
  return result;
}

uint64_t HotelReservation.bundleId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_38();
}

uint64_t HotelReservation.eventSourceBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_217();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t HotelReservation.eventSourceLLMConsumableDescription.setter()
{
  OUTLINED_FUNCTION_217();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t HotelReservation.hotelUnderName.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_38();
}

uint64_t HotelReservation.hotelCheckoutDateComponents.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for HotelReservation(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR, *(v1 + 64));
}

uint64_t HotelReservation.hotelReservationForTelephone.getter()
{
  return HotelReservation.hotelReservationForTelephone.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v2 = v1(v0);
  OUTLINED_FUNCTION_68(*(v2 + 76));
  return OUTLINED_FUNCTION_38();
}

uint64_t HotelReservation.hotelReservationForAddress.getter()
{
  return HotelReservation.hotelReservationForAddress.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v2 = v1(v0);
  OUTLINED_FUNCTION_68(*(v2 + 80));
  return OUTLINED_FUNCTION_38();
}

uint64_t HotelReservation.hotelCustomerNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for HotelReservation(0) + 88));
}

uint64_t HotelReservation.hotelRoomNumbers.getter()
{
  v1 = *(v0 + *(type metadata accessor for HotelReservation(0) + 92));
}

uint64_t HotelReservation.durationInDays.modify()
{
  v0 = OUTLINED_FUNCTION_71();
  v1 = *(type metadata accessor for HotelReservation(v0) + 124);
  return OUTLINED_FUNCTION_95();
}

void static HotelReservation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_129_0();
  v5 = type metadata accessor for DateComponents();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v15 = OUTLINED_FUNCTION_62(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_42_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_382();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSg_ADtMd, &_s10Foundation14DateComponentsVSg_ADtMR);
  v20 = OUTLINED_FUNCTION_9_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_314();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_130();
  v26 = v26 && v24 == v25;
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_50;
  }

  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v1[2], v0[2]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v1[3], v0[3]) & 1) == 0)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_370();
  v29 = v26 && v27 == v28;
  if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_310();
  if (v31)
  {
    if (!v30)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_126();
    v34 = v26 && v32 == v33;
    if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v30)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_309();
  if (v36)
  {
    if (!v35)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_183();
    v39 = v26 && v37 == v38;
    if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v35)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_308();
  if (v41)
  {
    if (!v40)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_182();
    v44 = v26 && v42 == v43;
    if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v40)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_307();
  if (v46)
  {
    if (!v45)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_181();
    v49 = v26 && v47 == v48;
    if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v45)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_369();
  if (!v26)
  {
    goto LABEL_50;
  }

  v50 = v0[16];
  if (v1[16])
  {
    if (!v50)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_368();
    v53 = v26 && v51 == v52;
    if (!v53 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v50)
  {
    goto LABEL_50;
  }

  v54 = v1[18];
  v55 = v0[18];
  if (v54)
  {
    if (!v55)
    {
      goto LABEL_50;
    }

    v56 = v1[17] == v0[17] && v54 == v55;
    if (!v56 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v55)
  {
    goto LABEL_50;
  }

  v170 = type metadata accessor for HotelReservation(0);
  v171 = v170[15];
  v172 = *(v19 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v171, v3, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v171, v3 + v172, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_16_3(v3);
  if (v26)
  {
    OUTLINED_FUNCTION_16_3(v3 + v172);
    if (v26)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      goto LABEL_79;
    }

LABEL_77:
    v61 = v3;
LABEL_88:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v61, &_s10Foundation14DateComponentsVSg_ADtMd, &_s10Foundation14DateComponentsVSg_ADtMR);
    goto LABEL_50;
  }

  outlined init with copy of RentalCarReservation?(v3, v4, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_16_3(v3 + v172);
  if (v57)
  {
    v58 = *(v8 + 8);
    v59 = OUTLINED_FUNCTION_430();
    v60(v59);
    goto LABEL_77;
  }

  (*(v8 + 32))(v13, v3 + v172, v5);
  OUTLINED_FUNCTION_38_2();
  lazy protocol witness table accessor for type Date and conformance Date(v62, v63);
  v169 = dispatch thunk of static Equatable.== infix(_:_:)();
  v173 = *(v8 + 8);
  v64 = OUTLINED_FUNCTION_96();
  v65(v64);
  v66 = OUTLINED_FUNCTION_430();
  v173(v66);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  if ((v169 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_79:
  v67 = v170[16];
  v68 = *(v19 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v67, v2, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v67, v2 + v68, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v69 = OUTLINED_FUNCTION_16_3(v2);
  if (!v26)
  {
    OUTLINED_FUNCTION_438(v69, v70, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_16_3(v2 + v68);
    if (!v71)
    {
      v75 = OUTLINED_FUNCTION_419(v8);
      v76(v75);
      OUTLINED_FUNCTION_38_2();
      lazy protocol witness table accessor for type Date and conformance Date(v77, v78);
      OUTLINED_FUNCTION_417();
      v79 = dispatch thunk of static Equatable.== infix(_:_:)();
      v80 = *(v8 + 8);
      v81 = OUTLINED_FUNCTION_96();
      v80(v81);
      v82 = OUTLINED_FUNCTION_322();
      v80(v82);
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      if ((v79 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_90;
    }

    v72 = *(v8 + 8);
    v73 = OUTLINED_FUNCTION_322();
    v74(v73);
    goto LABEL_87;
  }

  OUTLINED_FUNCTION_16_3(v2 + v68);
  if (!v26)
  {
LABEL_87:
    v61 = v2;
    goto LABEL_88;
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
LABEL_90:
  v83 = v170[17];
  OUTLINED_FUNCTION_10_3();
  if (v86)
  {
    if (!v84)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v85);
    v89 = v26 && v87 == v88;
    if (!v89 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v84)
  {
    goto LABEL_50;
  }

  v90 = v170[18];
  OUTLINED_FUNCTION_10_3();
  if (v93)
  {
    if (!v91)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v92);
    v96 = v26 && v94 == v95;
    if (!v96 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v91)
  {
    goto LABEL_50;
  }

  v97 = v170[19];
  OUTLINED_FUNCTION_10_3();
  if (v100)
  {
    if (!v98)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v99);
    v103 = v26 && v101 == v102;
    if (!v103 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v98)
  {
    goto LABEL_50;
  }

  v104 = v170[20];
  OUTLINED_FUNCTION_10_3();
  if (v107)
  {
    if (!v105)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v106);
    v110 = v26 && v108 == v109;
    if (!v110 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v105)
  {
    goto LABEL_50;
  }

  v111 = v170[21];
  OUTLINED_FUNCTION_10_3();
  if (v114)
  {
    if (!v112)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v113);
    v117 = v26 && v115 == v116;
    if (!v117 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v112)
  {
    goto LABEL_50;
  }

  if ((OUTLINED_FUNCTION_409(v170[22]) & 1) == 0 || (OUTLINED_FUNCTION_409(v170[23]) & 1) == 0)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_200(v170[24]);
  if (v119)
  {
    if (!v118)
    {
      goto LABEL_50;
    }
  }

  else
  {
    OUTLINED_FUNCTION_429();
    if (v120)
    {
      goto LABEL_50;
    }
  }

  OUTLINED_FUNCTION_200(v170[25]);
  if (v122)
  {
    if (!v121)
    {
      goto LABEL_50;
    }
  }

  else
  {
    OUTLINED_FUNCTION_247();
    if (v123)
    {
      goto LABEL_50;
    }
  }

  v124 = v170[26];
  OUTLINED_FUNCTION_10_3();
  if (v127)
  {
    if (!v125)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v126);
    v130 = v26 && v128 == v129;
    if (!v130 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v125)
  {
    goto LABEL_50;
  }

  v131 = v170[27];
  OUTLINED_FUNCTION_10_3();
  if (v134)
  {
    if (!v132)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v133);
    v137 = v26 && v135 == v136;
    if (!v137 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v132)
  {
    goto LABEL_50;
  }

  v138 = v170[28];
  OUTLINED_FUNCTION_10_3();
  if (v141)
  {
    if (!v139)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v140);
    v144 = v26 && v142 == v143;
    if (!v144 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v139)
  {
    goto LABEL_50;
  }

  v145 = v170[29];
  OUTLINED_FUNCTION_10_3();
  if (v148)
  {
    if (!v146)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v147);
    v151 = v26 && v149 == v150;
    if (!v151 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v146)
  {
    goto LABEL_50;
  }

  v152 = v170[30];
  OUTLINED_FUNCTION_10_3();
  if (v155)
  {
    if (!v153)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v154);
    v158 = v26 && v156 == v157;
    if (!v158 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v153)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_200(v170[31]);
  if (v160)
  {
    if (!v159)
    {
      goto LABEL_50;
    }
  }

  else
  {
    OUTLINED_FUNCTION_429();
    if (v161)
    {
      goto LABEL_50;
    }
  }

  v162 = v170[32];
  OUTLINED_FUNCTION_10_3();
  if (v165 && v163)
  {
    OUTLINED_FUNCTION_25_2(v164);
    if (!v26 || v166 != v167)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_50:
  OUTLINED_FUNCTION_42_0();
}

uint64_t HotelReservation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73726577736E61 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000025DCEB2F0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7373654D6C69616DLL && a2 == 0xED00006449656761;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x800000025DCEB0A0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x800000025DCEB120 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000023 && 0x800000025DCEB1C0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E557349656D6974 && a2 == 0xED00006E776F6E6BLL;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x800000025DCEB730 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x646E556C65746F68 && a2 == 0xEE00656D614E7265;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001ALL && 0x800000025DCEB750 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001BLL && 0x800000025DCEB770 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000017 && 0x800000025DCEB790 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000019 && 0x800000025DCEB7B0 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD00000000000001CLL && 0x800000025DCEB7D0 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD00000000000001ALL && 0x800000025DCEB7F0 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000014 && 0x800000025DCEB810 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000012 && 0x800000025DCEB830 == a2;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000010 && 0x800000025DCEB850 == a2;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000012 && 0x800000025DCEB870 == a2;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x7275446C65746F68 && a2 == 0xED00006E6F697461;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x736F436C65746F68 && a2 == 0xE900000000000074;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x6174536C65746F68 && a2 == 0xEB00000000737574;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000011 && 0x800000025DCEB890 == a2;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000016 && 0x800000025DCEB8B0 == a2;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000017 && 0x800000025DCEB8D0 == a2;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x6E6F697461727564 && a2 == 0xEE00737961446E49;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else if (a1 == 0xD000000000000011 && 0x800000025DCEB2D0 == a2)
                                                        {

                                                          return 28;
                                                        }

                                                        else
                                                        {
                                                          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                          if (v34)
                                                          {
                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            return 29;
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
              }
            }
          }
        }
      }
    }
  }
}

unint64_t HotelReservation.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x73726577736E61;
      break;
    case 2:
    case 19:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6449656C646E7562;
      break;
    case 4:
      result = 0x7373654D6C69616DLL;
      break;
    case 5:
    case 25:
      result = 0xD000000000000016;
      break;
    case 6:
    case 12:
      v3 = 9;
      goto LABEL_25;
    case 7:
      result = 0xD000000000000023;
      break;
    case 8:
      result = 0x6E557349656D6974;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x646E556C65746F68;
      break;
    case 11:
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 13:
    case 26:
      v3 = 5;
LABEL_25:
      result = v3 | 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 21:
      result = 0x7275446C65746F68;
      break;
    case 22:
      result = 0x736F436C65746F68;
      break;
    case 23:
      result = 0x6174536C65746F68;
      break;
    case 24:
    case 28:
      result = 0xD000000000000011;
      break;
    case 27:
      result = 0x6E6F697461727564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HotelReservation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = HotelReservation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HotelReservation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HotelReservation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void HotelReservation.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_193();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes16HotelReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes16HotelReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys();
  OUTLINED_FUNCTION_192();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_67_0();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v29 = v1[2];
    OUTLINED_FUNCTION_413();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    OUTLINED_FUNCTION_198(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_157();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v30 = v1[3];
    OUTLINED_FUNCTION_412();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8 = v1[4];
    v9 = v1[5];
    OUTLINED_FUNCTION_43_2(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v1[6];
    v11 = v1[7];
    OUTLINED_FUNCTION_43_2(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v1[8];
    v13 = v1[9];
    OUTLINED_FUNCTION_43_2(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v1[10];
    v15 = v1[11];
    OUTLINED_FUNCTION_43_2(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v1[12];
    v17 = v1[13];
    OUTLINED_FUNCTION_43_2(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v1 + 112);
    OUTLINED_FUNCTION_74(8);
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v1[15];
    v20 = v1[16];
    OUTLINED_FUNCTION_43_2(9);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v1[17];
    v22 = v1[18];
    OUTLINED_FUNCTION_43_2(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = type metadata accessor for HotelReservation(0);
    v23 = v28[15];
    OUTLINED_FUNCTION_274(11);
    type metadata accessor for DateComponents();
    OUTLINED_FUNCTION_38_2();
    lazy protocol witness table accessor for type Date and conformance Date(v24, v25);
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_130_0(v28[16]);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[17]);
    OUTLINED_FUNCTION_43_2(13);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[18]);
    OUTLINED_FUNCTION_43_2(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[19]);
    OUTLINED_FUNCTION_43_2(15);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[20]);
    OUTLINED_FUNCTION_43_2(16);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[21]);
    OUTLINED_FUNCTION_43_2(17);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_135(v28[22]);
    OUTLINED_FUNCTION_63(18);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_135(v28[23]);
    OUTLINED_FUNCTION_63(19);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_239(v28[24]);
    OUTLINED_FUNCTION_43_2(20);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_239(v28[25]);
    OUTLINED_FUNCTION_43_2(21);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[26]);
    OUTLINED_FUNCTION_43_2(22);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[27]);
    OUTLINED_FUNCTION_43_2(23);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[28]);
    OUTLINED_FUNCTION_43_2(24);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[29]);
    OUTLINED_FUNCTION_43_2(25);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[30]);
    OUTLINED_FUNCTION_43_2(26);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_239(v28[31]);
    OUTLINED_FUNCTION_43_2(27);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[32]);
    OUTLINED_FUNCTION_43_2(28);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v26 = OUTLINED_FUNCTION_375();
  v27(v26);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_35();
}

void HotelReservation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_435();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v16 = OUTLINED_FUNCTION_62(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_42_1();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_209();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes16HotelReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes16HotelReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1(v97);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  v28 = OUTLINED_FUNCTION_316();
  v99 = type metadata accessor for HotelReservation(v28);
  v29 = OUTLINED_FUNCTION_9_1(v99);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_98_0(v32, v85);
  v34 = v10[3];
  v33 = v10[4];
  v98 = v10;
  OUTLINED_FUNCTION_150();
  lazy protocol witness table accessor for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys();
  OUTLINED_FUNCTION_405();
  if (v11)
  {
    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_345();
    __swift_destroy_boxed_opaque_existential_1(v10);
    if (v24)
    {
      v39 = *(v100 + 24);

      if ((v21 & 1) == 0)
      {
LABEL_22:
        if (v34)
        {
          goto LABEL_23;
        }

        goto LABEL_24;
      }
    }

    else if (!v21)
    {
      goto LABEL_22;
    }

    v35 = *(v100 + 40);

    if (v34)
    {
LABEL_23:
      v40 = *(v100 + 56);
    }

LABEL_24:

    if (v10)
    {
      v41 = *(v100 + 128);

      if ((v86 & 1) == 0)
      {
LABEL_26:
        v37 = v99;
        if (v87)
        {
LABEL_27:
          outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v100 + v37[15], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
          if ((v88 & 1) == 0)
          {
LABEL_28:
            if (v89)
            {
LABEL_29:
              OUTLINED_FUNCTION_112(v37[17]);
              if ((v90 & 1) == 0)
              {
LABEL_30:
                if (v91)
                {
LABEL_31:
                  OUTLINED_FUNCTION_112(v37[19]);
                  if ((v92 & 1) == 0)
                  {
LABEL_32:
                    if (v93)
                    {
LABEL_33:
                      OUTLINED_FUNCTION_112(v37[21]);
                      if ((v94 & 1) == 0)
                      {
LABEL_34:
                        if (v95)
                        {
LABEL_35:
                          v42 = *(v100 + v37[23]);

                          if ((v96 & 1) == 0)
                          {
LABEL_36:
                            if (!v97)
                            {
                              goto LABEL_38;
                            }

LABEL_37:
                            OUTLINED_FUNCTION_112(v37[27]);
                            goto LABEL_38;
                          }

LABEL_18:
                          OUTLINED_FUNCTION_112(v37[26]);
                          if ((v97 & 1) == 0)
                          {
                            goto LABEL_38;
                          }

                          goto LABEL_37;
                        }

LABEL_17:
                        if (!v96)
                        {
                          goto LABEL_36;
                        }

                        goto LABEL_18;
                      }

LABEL_16:
                      v38 = *(v100 + v37[22]);

                      if (v95)
                      {
                        goto LABEL_35;
                      }

                      goto LABEL_17;
                    }

LABEL_15:
                    if (!v94)
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_16;
                  }

LABEL_14:
                  OUTLINED_FUNCTION_112(v37[20]);
                  if (v93)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_15;
                }

LABEL_13:
                if (!v92)
                {
                  goto LABEL_32;
                }

                goto LABEL_14;
              }

LABEL_12:
              OUTLINED_FUNCTION_112(v37[18]);
              if (v91)
              {
                goto LABEL_31;
              }

              goto LABEL_13;
            }

LABEL_11:
            if (!v90)
            {
              goto LABEL_30;
            }

            goto LABEL_12;
          }

LABEL_10:
          outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v100 + v37[16], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
          if (v89)
          {
            goto LABEL_29;
          }

          goto LABEL_11;
        }

LABEL_9:
        if (!v88)
        {
          goto LABEL_28;
        }

        goto LABEL_10;
      }
    }

    else if (!v86)
    {
      goto LABEL_26;
    }

    v36 = *(v100 + 144);

    v37 = v99;
    if (v87)
    {
      goto LABEL_27;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_298();
  *v100 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v100 + 8) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  OUTLINED_FUNCTION_413();
  OUTLINED_FUNCTION_194(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_439();
  *(v100 + 16) = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  OUTLINED_FUNCTION_412();
  OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_439();
  *(v100 + 24) = a10;
  OUTLINED_FUNCTION_159(3);
  *(v100 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v100 + 40) = v44;
  OUTLINED_FUNCTION_159(4);
  *(v100 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v100 + 56) = v45;
  OUTLINED_FUNCTION_159(5);
  *(v100 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v100 + 72) = v46;
  OUTLINED_FUNCTION_159(6);
  *(v100 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v100 + 88) = v47;
  OUTLINED_FUNCTION_159(7);
  *(v100 + 96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v100 + 104) = v48;
  OUTLINED_FUNCTION_159(8);
  *(v100 + 112) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  OUTLINED_FUNCTION_159(9);
  *(v100 + 120) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v100 + 128) = v49;
  OUTLINED_FUNCTION_202(10);
  *(v100 + 136) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v100 + 144) = v50;
  type metadata accessor for DateComponents();
  LOBYTE(a10) = 11;
  OUTLINED_FUNCTION_38_2();
  lazy protocol witness table accessor for type Date and conformance Date(v51, v52);
  OUTLINED_FUNCTION_248();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of Date?(v12, v100 + v99[15], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_219(12);
  OUTLINED_FUNCTION_248();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of Date?(v21, v100 + v99[16], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_82_0(13);
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v53, v54, v99[17]);
  OUTLINED_FUNCTION_82_0(14);
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v55, v56, v99[18]);
  OUTLINED_FUNCTION_82_0(15);
  v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v57, v58, v99[19]);
  OUTLINED_FUNCTION_82_0(16);
  v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v59, v60, v99[20]);
  OUTLINED_FUNCTION_82_0(17);
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v61, v62, v99[21]);
  OUTLINED_FUNCTION_153_0(18);
  OUTLINED_FUNCTION_248();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v100 + v99[22]) = a10;
  OUTLINED_FUNCTION_153_0(19);
  OUTLINED_FUNCTION_248();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v100 + v99[23]) = a10;
  OUTLINED_FUNCTION_82_0(20);
  v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_175(v63, v64, v99[24]);
  OUTLINED_FUNCTION_82_0(21);
  v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_175(v65, v66, v99[25]);
  OUTLINED_FUNCTION_82_0(22);
  v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v67, v68, v99[26]);
  OUTLINED_FUNCTION_82_0(23);
  v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v69, v70, v99[27]);
  OUTLINED_FUNCTION_82_0(24);
  v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v71, v72, v99[28]);
  OUTLINED_FUNCTION_82_0(25);
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_423();
  OUTLINED_FUNCTION_78(v73, v74, v99[29]);
  OUTLINED_FUNCTION_82_0(26);
  v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v75, v76, v99[30]);
  OUTLINED_FUNCTION_82_0(27);
  v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_175(v77, v78, v99[31]);
  OUTLINED_FUNCTION_82_0(28);
  v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v81 = v80;
  v82 = OUTLINED_FUNCTION_156();
  v83(v82);
  v84 = (v100 + v99[32]);
  *v84 = v79;
  v84[1] = v81;
  outlined init with copy of RentalCarReservation(v100, v14, type metadata accessor for HotelReservation);
  __swift_destroy_boxed_opaque_existential_1(v98);
  OUTLINED_FUNCTION_38();
  outlined destroy of RentalCarReservation();
LABEL_38:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

void RestaurantReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:restaurantReservationId:restaurantUnderName:restaurantStartDateComponents:restaurantPartySize:restaurantReservationForName:restaurantReservationForTelephone:restaurantReservationForAddress:restaurantBookingProvider:restaurantCustomerNames:restaurantMealType:restaurantStatus:restaurantUpdateStatus:restaurantStartDateString:startDateTimeZone:)(uint64_t a1@<X8>, __int128 a2, __int128 a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_391();
  *a1 = v32;
  *(a1 + 8) = v33;
  *(a1 + 16) = v34;
  *(a1 + 24) = v35;
  *(a1 + 32) = v36;
  *(a1 + 40) = v37;
  OUTLINED_FUNCTION_355(v32, v33, v34, v35, v36, v37, v38, v39);
  *(a1 + 136) = a8;
  *(a1 + 144) = a9;
  *(a1 + 64) = a2;
  *(a1 + 80) = a3;
  *(a1 + 120) = a7;
  v40 = type metadata accessor for RestaurantReservation(0);
  v41 = v40[15];
  v42 = OUTLINED_FUNCTION_347();
  outlined init with take of Date?(v42, v43, v44, v45);
  OUTLINED_FUNCTION_433(v40[16]);
  OUTLINED_FUNCTION_432(v40[17]);
  v46 = (a1 + v40[18]);
  *v46 = a15;
  v46[1] = a16;
  v47 = (a1 + v40[19]);
  *v47 = a17;
  v47[1] = v54;
  v48 = (a1 + v40[20]);
  *v48 = v55;
  v48[1] = v56;
  *(a1 + v40[21]) = a21;
  v49 = (a1 + v40[22]);
  *v49 = a22;
  v49[1] = a23;
  v50 = (a1 + v40[23]);
  *v50 = a24;
  v50[1] = a25;
  v51 = (a1 + v40[24]);
  *v51 = a26;
  v51[1] = a27;
  v52 = (a1 + v40[25]);
  *v52 = a28;
  v52[1] = a29;
  v53 = (a1 + v40[26]);
  *v53 = a30;
  v53[1] = a31;
}

uint64_t RestaurantReservation.restaurantCustomerNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for RestaurantReservation(0) + 84));
}

void static RestaurantReservation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_129_0();
  v2 = type metadata accessor for DateComponents();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_62(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_237();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSg_ADtMd, &_s10Foundation14DateComponentsVSg_ADtMR);
  OUTLINED_FUNCTION_9_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  v17 = &v137 - v16;
  OUTLINED_FUNCTION_130();
  v20 = v20 && v18 == v19;
  if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_50;
  }

  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v1[2], v0[2]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v1[3], v0[3]) & 1) == 0)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_370();
  v23 = v20 && v21 == v22;
  if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_310();
  if (v25)
  {
    if (!v24)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_126();
    v28 = v20 && v26 == v27;
    if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v24)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_309();
  if (v30)
  {
    if (!v29)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_183();
    v33 = v20 && v31 == v32;
    if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v29)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_308();
  if (v35)
  {
    if (!v34)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_182();
    v38 = v20 && v36 == v37;
    if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v34)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_307();
  if (v40)
  {
    if (!v39)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_181();
    v43 = v20 && v41 == v42;
    if (!v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v39)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_369();
  if (!v20)
  {
    goto LABEL_50;
  }

  v44 = v0[16];
  if (v1[16])
  {
    if (!v44)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_368();
    v47 = v20 && v45 == v46;
    if (!v47 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v44)
  {
    goto LABEL_50;
  }

  v48 = v1[18];
  v49 = v0[18];
  if (v48)
  {
    if (!v49)
    {
      goto LABEL_50;
    }

    v50 = v1[17] == v0[17] && v48 == v49;
    if (!v50 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v49)
  {
    goto LABEL_50;
  }

  v138 = type metadata accessor for RestaurantReservation(0);
  v51 = v138[15];
  v52 = *(v12 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v51, v17, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v51, &v17[v52], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v53 = OUTLINED_FUNCTION_16_3(v17);
  if (!v20)
  {
    OUTLINED_FUNCTION_438(v53, v54, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_16_3(&v17[v52]);
    if (!v55)
    {
      v59 = OUTLINED_FUNCTION_419(v5);
      v60(v59);
      OUTLINED_FUNCTION_38_2();
      lazy protocol witness table accessor for type Date and conformance Date(v61, v62);
      OUTLINED_FUNCTION_417();
      v63 = dispatch thunk of static Equatable.== infix(_:_:)();
      v64 = *(v5 + 8);
      v65 = OUTLINED_FUNCTION_96();
      v64(v65);
      v66 = OUTLINED_FUNCTION_322();
      v64(v66);
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v17, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      if ((v63 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_79;
    }

    v56 = *(v5 + 8);
    v57 = OUTLINED_FUNCTION_322();
    v58(v57);
LABEL_77:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v17, &_s10Foundation14DateComponentsVSg_ADtMd, &_s10Foundation14DateComponentsVSg_ADtMR);
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_16_3(&v17[v52]);
  if (!v20)
  {
    goto LABEL_77;
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v17, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
LABEL_79:
  v67 = v138[16];
  OUTLINED_FUNCTION_10_3();
  if (v70)
  {
    if (!v68)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v69);
    v73 = v20 && v71 == v72;
    if (!v73 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v68)
  {
    goto LABEL_50;
  }

  v74 = v138[17];
  OUTLINED_FUNCTION_10_3();
  if (v77)
  {
    if (!v75)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v76);
    v80 = v20 && v78 == v79;
    if (!v80 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v75)
  {
    goto LABEL_50;
  }

  v81 = v138[18];
  OUTLINED_FUNCTION_10_3();
  if (v84)
  {
    if (!v82)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v83);
    v87 = v20 && v85 == v86;
    if (!v87 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v82)
  {
    goto LABEL_50;
  }

  v88 = v138[19];
  OUTLINED_FUNCTION_10_3();
  if (v91)
  {
    if (!v89)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v90);
    v94 = v20 && v92 == v93;
    if (!v94 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v89)
  {
    goto LABEL_50;
  }

  v95 = v138[20];
  OUTLINED_FUNCTION_10_3();
  if (v98)
  {
    if (!v96)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v97);
    v101 = v20 && v99 == v100;
    if (!v101 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v96)
  {
    goto LABEL_50;
  }

  if ((OUTLINED_FUNCTION_409(v138[21]) & 1) == 0)
  {
    goto LABEL_50;
  }

  v102 = v138[22];
  OUTLINED_FUNCTION_10_3();
  if (v105)
  {
    if (!v103)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v104);
    v108 = v20 && v106 == v107;
    if (!v108 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v103)
  {
    goto LABEL_50;
  }

  v109 = v138[23];
  OUTLINED_FUNCTION_10_3();
  if (v112)
  {
    if (!v110)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v111);
    v115 = v20 && v113 == v114;
    if (!v115 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v110)
  {
    goto LABEL_50;
  }

  v116 = v138[24];
  OUTLINED_FUNCTION_10_3();
  if (v119)
  {
    if (!v117)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v118);
    v122 = v20 && v120 == v121;
    if (!v122 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v117)
  {
    goto LABEL_50;
  }

  v123 = v138[25];
  OUTLINED_FUNCTION_10_3();
  if (v126)
  {
    if (!v124)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v125);
    v129 = v20 && v127 == v128;
    if (!v129 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v124)
  {
    goto LABEL_50;
  }

  v130 = v138[26];
  OUTLINED_FUNCTION_10_3();
  if (v133 && v131)
  {
    OUTLINED_FUNCTION_25_2(v132);
    if (!v20 || v134 != v135)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_50:
  OUTLINED_FUNCTION_42_0();
}

uint64_t RestaurantReservation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73726577736E61 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000025DCEB2F0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7373654D6C69616DLL && a2 == 0xED00006449656761;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x800000025DCEB0A0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x800000025DCEB120 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000023 && 0x800000025DCEB1C0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E557349656D6974 && a2 == 0xED00006E776F6E6BLL;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000017 && 0x800000025DCEB8F0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x800000025DCEB910 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001DLL && 0x800000025DCEB930 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000013 && 0x800000025DCEB950 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001CLL && 0x800000025DCEB970 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000021 && 0x800000025DCEB990 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD00000000000001FLL && 0x800000025DCEB9C0 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000019 && 0x800000025DCEB9E0 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000017 && 0x800000025DCEBA00 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000012 && 0x800000025DCEBA20 == a2;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000010 && 0x800000025DCEBA40 == a2;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000016 && 0x800000025DCEBA60 == a2;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000019 && 0x800000025DCEBA80 == a2;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else if (a1 == 0xD000000000000011 && 0x800000025DCEB2D0 == a2)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                              if (v28)
                                              {
                                                return 22;
                                              }

                                              else
                                              {
                                                return 23;
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
  }
}

unint64_t RestaurantReservation.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      return 0x73726577736E61;
    case 2:
      return 0xD000000000000010;
    case 3:
      return 0x6449656C646E7562;
    case 4:
      return 0x7373654D6C69616DLL;
    case 5:
    case 20:
      return 0xD000000000000016;
    case 6:
      v3 = 11;
      goto LABEL_15;
    case 7:
      return 0xD000000000000023;
    case 8:
      return 0x6E557349656D6974;
    case 9:
    case 17:
      return 0xD000000000000017;
    case 10:
    case 12:
      return 0xD000000000000013;
    case 11:
      v3 = 13;
      goto LABEL_15;
    case 13:
      return 0xD00000000000001CLL;
    case 14:
      return 0xD000000000000021;
    case 15:
      return 0xD00000000000001FLL;
    case 16:
    case 21:
      v3 = 9;
LABEL_15:
      result = v3 | 0xD000000000000010;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RestaurantReservation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = RestaurantReservation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance RestaurantReservation.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = RestaurantReservation.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RestaurantReservation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RestaurantReservation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void RestaurantReservation.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes21RestaurantReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes21RestaurantReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys();
  OUTLINED_FUNCTION_192();
  v9 = *v0;
  v10 = v0[1];
  OUTLINED_FUNCTION_83_0();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v30 = v0[2];
    OUTLINED_FUNCTION_413();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    OUTLINED_FUNCTION_198(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_65();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v31 = v0[3];
    OUTLINED_FUNCTION_412();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_123_0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v0[4];
    v12 = v0[5];
    OUTLINED_FUNCTION_60(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v0[6];
    v14 = v0[7];
    OUTLINED_FUNCTION_60(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v0[8];
    v16 = v0[9];
    OUTLINED_FUNCTION_60(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v0[10];
    v18 = v0[11];
    OUTLINED_FUNCTION_60(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v0[12];
    v20 = v0[13];
    OUTLINED_FUNCTION_60(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v0 + 112);
    OUTLINED_FUNCTION_191(8);
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v0[15];
    v23 = v0[16];
    OUTLINED_FUNCTION_60(9);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = v0[17];
    v25 = v0[18];
    OUTLINED_FUNCTION_60(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = type metadata accessor for RestaurantReservation(0);
    v26 = v29[15];
    OUTLINED_FUNCTION_274(11);
    type metadata accessor for DateComponents();
    OUTLINED_FUNCTION_38_2();
    lazy protocol witness table accessor for type Date and conformance Date(v27, v28);
    OUTLINED_FUNCTION_65();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v29[16]);
    OUTLINED_FUNCTION_60(12);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v29[17]);
    OUTLINED_FUNCTION_60(13);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v29[18]);
    OUTLINED_FUNCTION_60(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v29[19]);
    OUTLINED_FUNCTION_60(15);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v29[20]);
    OUTLINED_FUNCTION_60(16);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_135(v29[21]);
    OUTLINED_FUNCTION_123_0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v29[22]);
    OUTLINED_FUNCTION_60(18);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v29[23]);
    OUTLINED_FUNCTION_60(19);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v29[24]);
    OUTLINED_FUNCTION_60(20);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v29[25]);
    OUTLINED_FUNCTION_60(21);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v29[26]);
    OUTLINED_FUNCTION_60(22);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

void RestaurantReservation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_435();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_62(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  v20 = &v92 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes21RestaurantReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes21RestaurantReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1(v101);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_316();
  v104 = type metadata accessor for RestaurantReservation(v26);
  v27 = OUTLINED_FUNCTION_9_1(v104);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_1();
  v32 = v31 - v30;
  v34 = v10[3];
  v33 = v10[4];
  v93 = v10;
  OUTLINED_FUNCTION_150();
  lazy protocol witness table accessor for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys();
  OUTLINED_FUNCTION_405();
  if (v11)
  {
    v105 = v11;
    v35 = 0;
    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_88_0();
    v102 = 0;
    v103 = 0;
  }

  else
  {
    v100 = v14;
    v35 = v22;
    OUTLINED_FUNCTION_298();
    *v32 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v32 + 8) = v46;
    LODWORD(v10) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    OUTLINED_FUNCTION_413();
    OUTLINED_FUNCTION_194(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_439();
    *(v32 + 16) = a10;
    LODWORD(v34) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_412();
    v14 = OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_439();
    *&v99[4] = v14;
    *(v32 + 24) = a10;
    OUTLINED_FUNCTION_160(3);
    LODWORD(v33) = v22;
    *(v32 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v32 + 40) = v47;
    OUTLINED_FUNCTION_160(4);
    *(v32 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v32 + 56) = v48;
    OUTLINED_FUNCTION_160(5);
    *(v32 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v32 + 72) = v49;
    OUTLINED_FUNCTION_160(6);
    *(v32 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v32 + 88) = v50;
    v103 = v50;
    OUTLINED_FUNCTION_160(7);
    *(v32 + 96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v32 + 104) = v51;
    v102 = v51;
    OUTLINED_FUNCTION_160(8);
    v52 = KeyedDecodingContainer.decode(_:forKey:)();
    v105 = 0;
    *(v32 + 112) = v52 & 1;
    OUTLINED_FUNCTION_160(9);
    v53 = v105;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v105 = v53;
    if (v53)
    {
      v56 = OUTLINED_FUNCTION_165();
      v57(v56);
      OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_80_0();
    }

    else
    {
      *(v32 + 120) = v54;
      *(v32 + 128) = v55;
      OUTLINED_FUNCTION_119_0(10);
      v58 = v105;
      v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v105 = v58;
      if (v58)
      {
        v61 = OUTLINED_FUNCTION_165();
        v62(v61);
        v95 = 0;
        OUTLINED_FUNCTION_120_0();
        OUTLINED_FUNCTION_80_0();
        v12 = 1;
      }

      else
      {
        *(v32 + 136) = v59;
        *(v32 + 144) = v60;
        LODWORD(v10) = type metadata accessor for DateComponents();
        OUTLINED_FUNCTION_38_2();
        lazy protocol witness table accessor for type Date and conformance Date(v63, v64);
        OUTLINED_FUNCTION_248();
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v105 = 0;
        outlined init with take of Date?(v20, v32 + v104[15], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
        OUTLINED_FUNCTION_119_0(12);
        v65 = v105;
        v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v105 = v65;
        if (!v65)
        {
          OUTLINED_FUNCTION_143(v66, v67, v104[16]);
          OUTLINED_FUNCTION_119_0(13);
          v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v105 = 0;
          OUTLINED_FUNCTION_143(v71, v72, v104[17]);
          OUTLINED_FUNCTION_119_0(14);
          v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v105 = 0;
          OUTLINED_FUNCTION_143(v73, v74, v104[18]);
          OUTLINED_FUNCTION_119_0(15);
          v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v105 = 0;
          OUTLINED_FUNCTION_143(v75, v76, v104[19]);
          OUTLINED_FUNCTION_119_0(16);
          v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v105 = 0;
          OUTLINED_FUNCTION_143(v77, v78, v104[20]);
          OUTLINED_FUNCTION_153_0(17);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v105 = 0;
          OUTLINED_FUNCTION_306();
          *(v32 + *(v79 + 84)) = v80;
          OUTLINED_FUNCTION_119_0(18);
          v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v105 = 0;
          OUTLINED_FUNCTION_143(v81, v82, v104[22]);
          OUTLINED_FUNCTION_119_0(19);
          KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          OUTLINED_FUNCTION_423();
          v96 = v83;
          v105 = 0;
          OUTLINED_FUNCTION_143(v84, v85, v104[23]);
          OUTLINED_FUNCTION_119_0(20);
          v86 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v105 = 0;
          OUTLINED_FUNCTION_143(v86, v87, v104[24]);
          OUTLINED_FUNCTION_119_0(21);
          v88 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v105 = 0;
          OUTLINED_FUNCTION_143(v88, v89, v104[25]);
          OUTLINED_FUNCTION_119_0(22);
          KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v105 = 0;
          OUTLINED_FUNCTION_400();
          v90 = OUTLINED_FUNCTION_165();
          v91(v90);
          OUTLINED_FUNCTION_402(v104[26]);
          outlined init with copy of RentalCarReservation(v32, v100, type metadata accessor for RestaurantReservation);
          __swift_destroy_boxed_opaque_existential_1(v93);
          OUTLINED_FUNCTION_38();
          outlined destroy of RentalCarReservation();
          goto LABEL_42;
        }

        v68 = OUTLINED_FUNCTION_165();
        v69(v68);
        v98 = 0;
        *v99 = 0;
        OUTLINED_FUNCTION_69();
        v35 = 1;
        OUTLINED_FUNCTION_64_0();
        v97 = v70;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v93);
  if (v35)
  {
    v96 = 0;
    v94 = 0;
    v36 = *(v32 + 8);

    v37 = v104;
    if (v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v94 = 0;
    v96 = 0;
    v37 = v104;
    if (v14)
    {
LABEL_6:
      v38 = *(v32 + 16);

      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  if (!v20)
  {
LABEL_7:
    if (v34)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v42 = *(v32 + 24);

  if (v34)
  {
LABEL_8:
    v39 = *(v32 + 40);

    if ((v33 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v33)
  {
LABEL_9:
    if (v10)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v43 = *(v32 + 56);

  if (v10)
  {
LABEL_10:
    v40 = *(v32 + 72);

    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:

  if (!v12)
  {
LABEL_11:
    if (v95)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v44 = *(v32 + 128);

  if (v95)
  {
LABEL_12:
    v41 = *(v32 + 144);

    if ((v97 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!v97)
  {
LABEL_13:
    if (v98)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v32 + v37[15], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  if (v98)
  {
LABEL_14:
    OUTLINED_FUNCTION_112(v37[16]);
    if ((v98 & 0x100000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!HIDWORD(v98))
  {
LABEL_15:
    if (*v99)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  OUTLINED_FUNCTION_112(v37[17]);
  if (v99[0])
  {
LABEL_16:
    OUTLINED_FUNCTION_112(v37[18]);
    if ((v99[4] & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!*&v99[4])
  {
LABEL_17:
    if (v100)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  OUTLINED_FUNCTION_112(v37[19]);
  if (v100)
  {
LABEL_18:
    OUTLINED_FUNCTION_112(v37[20]);
    if ((v101 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_37:
    v45 = *(v32 + v37[21]);

    goto LABEL_38;
  }

LABEL_36:
  if (v101)
  {
    goto LABEL_37;
  }

LABEL_38:
  if (!v96)
  {
    if (!v94)
    {
      goto LABEL_40;
    }

LABEL_21:
    OUTLINED_FUNCTION_112(v37[24]);
    if ((v94 & 0x100000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_112(v37[23]);
  if (v94)
  {
    goto LABEL_21;
  }

LABEL_40:
  if (HIDWORD(v94))
  {
LABEL_41:
    OUTLINED_FUNCTION_112(v37[25]);
  }

LABEL_42:
  OUTLINED_FUNCTION_35();
}

uint64_t ShippingOrder.init(id:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMessageIdentifier:eventMegadomeIdentifier:eventName:eventSourceBundleIdentifier:eventSourceIsForwarded:eventType:detectedEventTypes:eventSubType:eventSourceLLMConsumableDescription:accountIdentifier:authors:mailMessageHeader:mailMessageId:mailboxes:status:shippingStatus:timeIsUnknown:orderDate:orderNumber:orderTrackingURL:orderCost:merchantName:shippingPersonNames:shippingLocationName:shippingAddress:shippingPhoneNumber:recipientNames:recipientLocationName:recipientAddress:recipientPhoneNumber:customerNames:customerAddresses:customerPhoneNumbers:carrierName:trackingNumber:shippingDate:deliveryDate:estimatedDeliveryStartDate:estimatedDeliveryEndDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  OUTLINED_FUNCTION_355(a1, a2, a3, a4, a5, a6, a7, a8);
  *(a9 + 248) = a30;
  *(a9 + 256) = a33;
  *(a9 + 264) = a31;
  OUTLINED_FUNCTION_416();
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 120) = a15;
  OUTLINED_FUNCTION_414(v63, v64, v65, v66, v67, v68, v69);
  *(a9 + 200) = v70;
  *(a9 + 216) = v71;
  *(a9 + 232) = v72;
  *(a9 + 272) = v73;
  v74 = type metadata accessor for ShippingOrder(0);
  v75 = v74[24];
  OUTLINED_FUNCTION_292();
  outlined init with take of Date?(v76, v77, v78, v79);
  v80 = (a9 + v74[25]);
  *v80 = a35;
  v80[1] = a36;
  outlined init with take of Date?(a37, a9 + v74[26], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v81 = a9 + v74[27];
  *v81 = a38;
  *(v81 + 8) = a39 & 1;
  v82 = (a9 + v74[28]);
  *v82 = a40;
  v82[1] = a41;
  *(a9 + v74[29]) = a42;
  v83 = (a9 + v74[30]);
  *v83 = a43;
  v83[1] = a44;
  v84 = (a9 + v74[31]);
  *v84 = a45;
  v84[1] = a46;
  v85 = (a9 + v74[32]);
  *v85 = a47;
  v85[1] = a48;
  *(a9 + v74[33]) = a49;
  v86 = (a9 + v74[34]);
  *v86 = a50;
  v86[1] = a51;
  v87 = (a9 + v74[35]);
  *v87 = a52;
  v87[1] = a53;
  v88 = (a9 + v74[36]);
  *v88 = a54;
  v88[1] = a55;
  *(a9 + v74[37]) = a56;
  *(a9 + v74[38]) = a57;
  *(a9 + v74[39]) = a58;
  v89 = (a9 + v74[41]);
  *v89 = a59;
  v89[1] = a60;
  v90 = (a9 + v74[40]);
  *v90 = a61;
  v90[1] = a62;
  v91 = v74[42];
  OUTLINED_FUNCTION_292();
  outlined init with take of Date?(v92, v93, v94, v95);
  v96 = v74[43];
  OUTLINED_FUNCTION_292();
  outlined init with take of Date?(v97, v98, v99, v100);
  v101 = v74[44];
  OUTLINED_FUNCTION_292();
  outlined init with take of Date?(v102, v103, v104, v105);
  v106 = v74[45];
  OUTLINED_FUNCTION_292();
  return outlined init with take of Date?(v107, v108, v109, v110);
}

uint64_t ShippingOrder.eventType.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_38();
}

uint64_t ShippingOrder.eventSourceLLMConsumableDescription.setter()
{
  OUTLINED_FUNCTION_217();
  v3 = *(v1 + 168);

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t ShippingOrder.mailMessageHeader.getter()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return OUTLINED_FUNCTION_38();
}

uint64_t ShippingOrder.mailMessageId.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return OUTLINED_FUNCTION_38();
}

uint64_t ShippingOrder.shippingPersonNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShippingOrder(0) + 116));
}

uint64_t ShippingOrder.recipientNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShippingOrder(0) + 132));
}

uint64_t ShippingOrder.customerNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShippingOrder(0) + 148));
}

uint64_t ShippingOrder.customerAddresses.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShippingOrder(0) + 152));
}

uint64_t ShippingOrder.customerPhoneNumbers.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShippingOrder(0) + 156));
}

uint64_t ShippingOrder.shippingDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for ShippingOrder(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 168));
}

uint64_t ShippingOrder.deliveryDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for ShippingOrder(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 172));
}

uint64_t ShippingOrder.estimatedDeliveryStartDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for ShippingOrder(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 176));
}

uint64_t ShippingOrder.estimatedDeliveryEndDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for ShippingOrder(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 180));
}

void static ShippingOrder.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for URL();
  v9 = OUTLINED_FUNCTION_1(v8);
  v297 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_333();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  v18 = &v293 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_316();
  v23 = type metadata accessor for Date();
  v24 = OUTLINED_FUNCTION_1(v23);
  v308 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_2();
  v307 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v30 = OUTLINED_FUNCTION_62(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_42_1();
  v306 = v33 - v34;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_366();
  v303 = v36;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_366();
  v301 = v38;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_366();
  v299 = v40;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_209();
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v42 = OUTLINED_FUNCTION_9_1(v304);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_42_1();
  v305 = v45 - v46;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_366();
  v302 = v48;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_366();
  v300 = v50;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_366();
  v298 = v52;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_313();
  v54 = *v7 == *v5 && *(v7 + 8) == *(v5 + 8);
  if (!v54 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_163;
  }

  v55 = *(v7 + 24);
  v56 = *(v5 + 24);
  if (!v55)
  {
    if (v56)
    {
      goto LABEL_163;
    }

LABEL_15:
    v58 = *(v7 + 40);
    v59 = *(v5 + 40);
    if (v58)
    {
      if (!v59)
      {
        goto LABEL_163;
      }

      v60 = *(v7 + 32) == *(v5 + 32) && v58 == v59;
      if (!v60 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v59)
    {
      goto LABEL_163;
    }

    v61 = *(v7 + 56);
    v62 = *(v5 + 56);
    if (v61)
    {
      if (!v62)
      {
        goto LABEL_163;
      }

      v63 = *(v7 + 48) == *(v5 + 48) && v61 == v62;
      if (!v63 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v62)
    {
      goto LABEL_163;
    }

    v64 = *(v7 + 72);
    v65 = *(v5 + 72);
    if (v64)
    {
      if (!v65)
      {
        goto LABEL_163;
      }

      v66 = *(v7 + 64) == *(v5 + 64) && v64 == v65;
      if (!v66 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v65)
    {
      goto LABEL_163;
    }

    v67 = *(v7 + 88);
    v68 = *(v5 + 88);
    if (v67)
    {
      if (!v68)
      {
        goto LABEL_163;
      }

      v69 = *(v7 + 80) == *(v5 + 80) && v67 == v68;
      if (!v69 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v68)
    {
      goto LABEL_163;
    }

    v70 = *(v7 + 104);
    v71 = *(v5 + 104);
    if (v70)
    {
      if (!v71)
      {
        goto LABEL_163;
      }

      v72 = *(v7 + 96) == *(v5 + 96) && v70 == v71;
      if (!v72 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v71)
    {
      goto LABEL_163;
    }

    v73 = *(v5 + 112);
    if (*(v7 + 112) == 2)
    {
      v296 = v23;
      if (v73 != 2)
      {
        goto LABEL_163;
      }
    }

    else
    {
      OUTLINED_FUNCTION_275();
      if (v54)
      {
        goto LABEL_163;
      }

      v296 = v23;
      if ((v74 ^ v75))
      {
        goto LABEL_163;
      }
    }

    v76 = *(v7 + 128);
    v77 = *(v5 + 128);
    if (v76)
    {
      if (!v77)
      {
        goto LABEL_163;
      }

      v78 = *(v7 + 120) == *(v5 + 120) && v76 == v77;
      if (!v78 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v77)
    {
      goto LABEL_163;
    }

    v79 = *(v7 + 136);
    v80 = *(v5 + 136);
    if (v79)
    {
      if (!v80 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v79, v80) & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v80)
    {
      goto LABEL_163;
    }

    v81 = *(v7 + 152);
    v82 = *(v5 + 152);
    if (v81)
    {
      if (!v82)
      {
        goto LABEL_163;
      }

      v83 = *(v7 + 144) == *(v5 + 144) && v81 == v82;
      if (!v83 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v82)
    {
      goto LABEL_163;
    }

    v84 = *(v7 + 168);
    v85 = *(v5 + 168);
    if (v84)
    {
      if (!v85)
      {
        goto LABEL_163;
      }

      v86 = *(v7 + 160) == *(v5 + 160) && v84 == v85;
      if (!v86 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v85)
    {
      goto LABEL_163;
    }

    v87 = *(v7 + 184);
    v88 = *(v5 + 184);
    if (v87)
    {
      if (!v88)
      {
        goto LABEL_163;
      }

      v89 = *(v7 + 176) == *(v5 + 176) && v87 == v88;
      if (!v89 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v88)
    {
      goto LABEL_163;
    }

    v90 = *(v7 + 192);
    v91 = *(v5 + 192);
    if (v90)
    {
      if (!v91 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v90, v91) & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v91)
    {
      goto LABEL_163;
    }

    v92 = *(v7 + 208);
    v93 = *(v5 + 208);
    if (v92)
    {
      if (!v93)
      {
        goto LABEL_163;
      }

      v94 = *(v7 + 200) == *(v5 + 200) && v92 == v93;
      if (!v94 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v93)
    {
      goto LABEL_163;
    }

    v95 = *(v7 + 224);
    v96 = *(v5 + 224);
    if (v95)
    {
      if (!v96)
      {
        goto LABEL_163;
      }

      v97 = *(v7 + 216) == *(v5 + 216) && v95 == v96;
      if (!v97 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v96)
    {
      goto LABEL_163;
    }

    v98 = *(v7 + 232);
    v99 = *(v5 + 232);
    if (v98)
    {
      if (!v99 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v98, v99) & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v99)
    {
      goto LABEL_163;
    }

    v100 = *(v7 + 248);
    v101 = *(v5 + 248);
    if (v100)
    {
      if (!v101)
      {
        goto LABEL_163;
      }

      v102 = *(v7 + 240) == *(v5 + 240) && v100 == v101;
      if (!v102 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v101)
    {
      goto LABEL_163;
    }

    if (*(v7 + 256) != *(v5 + 256))
    {
      goto LABEL_163;
    }

    v103 = *(v7 + 272);
    v104 = *(v5 + 272);
    if (v103)
    {
      if (!v104)
      {
        goto LABEL_163;
      }

      v105 = *(v7 + 264) == *(v5 + 264) && v103 == v104;
      if (!v105 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v104)
    {
      goto LABEL_163;
    }

    v106 = type metadata accessor for ShippingOrder(0);
    v107 = *(v106 + 96);
    v294 = v106;
    v295 = v107;
    v108 = *(v304 + 48);
    outlined init with copy of RentalCarReservation?(&v107[v7], v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v109 = &v295[v5];
    v295 = v108;
    outlined init with copy of RentalCarReservation?(v109, &v108[v1], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_149(v1);
    if (v54)
    {
      OUTLINED_FUNCTION_66(&v295[v1], 1, v296);
      if (v54)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        goto LABEL_165;
      }
    }

    else
    {
      outlined init with copy of RentalCarReservation?(v1, v0, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      OUTLINED_FUNCTION_66(&v295[v1], 1, v296);
      if (!v110)
      {
        v115 = v296;
        (*(v308 + 32))(v307, &v295[v1], v296);
        OUTLINED_FUNCTION_6_4();
        lazy protocol witness table accessor for type Date and conformance Date(v116, v117);
        v296 = v115;
        HIDWORD(v293) = dispatch thunk of static Equatable.== infix(_:_:)();
        v295 = *(v308 + 8);
        (v295)(v307, v296);
        (v295)(v0, v296);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((v293 & 0x100000000) == 0)
        {
          goto LABEL_163;
        }

LABEL_165:
        v118 = v294[25];
        OUTLINED_FUNCTION_126_0();
        if (v121)
        {
          if (!v119)
          {
            goto LABEL_163;
          }

          OUTLINED_FUNCTION_25_2(v120);
          v124 = v54 && v122 == v123;
          if (!v124 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_163;
          }
        }

        else if (v119)
        {
          goto LABEL_163;
        }

        v125 = v294[26];
        v126 = *(v19 + 48);
        v127 = &_s10Foundation3URLVSgMR;
        outlined init with copy of RentalCarReservation?(v7 + v125, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined init with copy of RentalCarReservation?(v5 + v125, v3 + v126, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        OUTLINED_FUNCTION_66(v3, 1, v8);
        if (v54)
        {
          OUTLINED_FUNCTION_66(v3 + v126, 1, v8);
          if (v54)
          {
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_184;
          }
        }

        else
        {
          outlined init with copy of RentalCarReservation?(v3, v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          OUTLINED_FUNCTION_66(v3 + v126, 1, v8);
          if (!v128)
          {
            v129 = v297;
            OUTLINED_FUNCTION_30();
            v130(v2, v3 + v126, v8);
            OUTLINED_FUNCTION_12_3();
            lazy protocol witness table accessor for type Date and conformance Date(v131, v132);
            v133 = dispatch thunk of static Equatable.== infix(_:_:)();
            v127 = *(v129 + 8);
            v127(v2, v8);
            v127(v18, v8);
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            if ((v133 & 1) == 0)
            {
              goto LABEL_163;
            }

LABEL_184:
            v134 = v294[27];
            v135 = *(v7 + v134 + 8);
            v136 = *(v5 + v134 + 8);
            if (v135)
            {
              if (!v136)
              {
                goto LABEL_163;
              }
            }

            else
            {
              OUTLINED_FUNCTION_247();
              if (v137)
              {
                goto LABEL_163;
              }
            }

            v138 = v294[28];
            OUTLINED_FUNCTION_126_0();
            if (v141)
            {
              if (!v139)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v140);
              v144 = v54 && v142 == v143;
              if (!v144 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v139)
            {
              goto LABEL_163;
            }

            v145 = OUTLINED_FUNCTION_388(v294[29]);
            if (v145)
            {
              if (!v146 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v145, v146) & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v146)
            {
              goto LABEL_163;
            }

            v147 = v294[30];
            OUTLINED_FUNCTION_126_0();
            if (v150)
            {
              if (!v148)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v149);
              v153 = v54 && v151 == v152;
              if (!v153 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v148)
            {
              goto LABEL_163;
            }

            v154 = v294[31];
            OUTLINED_FUNCTION_126_0();
            if (v157)
            {
              if (!v155)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v156);
              v160 = v54 && v158 == v159;
              if (!v160 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v155)
            {
              goto LABEL_163;
            }

            v161 = v294[32];
            OUTLINED_FUNCTION_126_0();
            if (v164)
            {
              if (!v162)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v163);
              v167 = v54 && v165 == v166;
              if (!v167 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v162)
            {
              goto LABEL_163;
            }

            v168 = OUTLINED_FUNCTION_388(v294[33]);
            if (v168)
            {
              if (!v169 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v168, v169) & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v169)
            {
              goto LABEL_163;
            }

            v170 = v294[34];
            OUTLINED_FUNCTION_126_0();
            if (v173)
            {
              if (!v171)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v172);
              v176 = v54 && v174 == v175;
              if (!v176 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v171)
            {
              goto LABEL_163;
            }

            v177 = v294[35];
            OUTLINED_FUNCTION_126_0();
            if (v180)
            {
              if (!v178)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v179);
              v183 = v54 && v181 == v182;
              if (!v183 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v178)
            {
              goto LABEL_163;
            }

            v184 = v294[36];
            OUTLINED_FUNCTION_126_0();
            if (v187)
            {
              if (!v185)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v186);
              v190 = v54 && v188 == v189;
              if (!v190 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v185)
            {
              goto LABEL_163;
            }

            v191 = OUTLINED_FUNCTION_388(v294[37]);
            if (v191)
            {
              if (!v192 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v191, v192) & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v192)
            {
              goto LABEL_163;
            }

            v193 = OUTLINED_FUNCTION_388(v294[38]);
            if (v193)
            {
              if (!v194 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v193, v194) & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v194)
            {
              goto LABEL_163;
            }

            v195 = OUTLINED_FUNCTION_388(v294[39]);
            if (v195)
            {
              if (!v196 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v195, v196) & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v196)
            {
              goto LABEL_163;
            }

            v197 = v294[40];
            OUTLINED_FUNCTION_126_0();
            if (v200)
            {
              if (!v198)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v199);
              v203 = v54 && v201 == v202;
              if (!v203 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v198)
            {
              goto LABEL_163;
            }

            v204 = v294[41];
            OUTLINED_FUNCTION_126_0();
            if (v207)
            {
              if (!v205)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v206);
              v210 = v54 && v208 == v209;
              if (!v210 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v205)
            {
              goto LABEL_163;
            }

            v211 = v294[42];
            OUTLINED_FUNCTION_410();
            v212 = v298;
            OUTLINED_FUNCTION_65();
            outlined init with copy of RentalCarReservation?(v213, v214, v215, v216);
            OUTLINED_FUNCTION_65();
            outlined init with copy of RentalCarReservation?(v217, v218, v219, v220);
            OUTLINED_FUNCTION_149(v212);
            if (v54)
            {
              OUTLINED_FUNCTION_149(v127 + v298);
              if (v54)
              {
                outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v298, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                goto LABEL_304;
              }
            }

            else
            {
              v221 = v298;
              outlined init with copy of RentalCarReservation?(v298, v299, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              OUTLINED_FUNCTION_149(v127 + v221);
              if (!v222)
              {
                OUTLINED_FUNCTION_30();
                v224 = v298;
                v225 = OUTLINED_FUNCTION_326();
                v226(v225);
                OUTLINED_FUNCTION_6_4();
                lazy protocol witness table accessor for type Date and conformance Date(v227, v228);
                OUTLINED_FUNCTION_351();
                v229 = OUTLINED_FUNCTION_271();
                (v127)(v229);
                v230 = OUTLINED_FUNCTION_420();
                (v127)(v230);
                outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v224, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                if ((v221 & 1) == 0)
                {
                  goto LABEL_163;
                }

LABEL_304:
                v231 = v294[43];
                OUTLINED_FUNCTION_410();
                v232 = v300;
                OUTLINED_FUNCTION_65();
                outlined init with copy of RentalCarReservation?(v233, v234, v235, v236);
                OUTLINED_FUNCTION_65();
                outlined init with copy of RentalCarReservation?(v237, v238, v239, v240);
                OUTLINED_FUNCTION_149(v232);
                if (v54)
                {
                  OUTLINED_FUNCTION_149(v127 + v300);
                  if (v54)
                  {
                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v300, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_314:
                    v251 = v294[44];
                    OUTLINED_FUNCTION_410();
                    v252 = v302;
                    OUTLINED_FUNCTION_65();
                    outlined init with copy of RentalCarReservation?(v253, v254, v255, v256);
                    OUTLINED_FUNCTION_65();
                    outlined init with copy of RentalCarReservation?(v257, v258, v259, v260);
                    OUTLINED_FUNCTION_149(v252);
                    if (v54)
                    {
                      OUTLINED_FUNCTION_149(v127 + v302);
                      if (v54)
                      {
                        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v302, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_324:
                        v271 = v294[45];
                        OUTLINED_FUNCTION_410();
                        v272 = v305;
                        OUTLINED_FUNCTION_65();
                        outlined init with copy of RentalCarReservation?(v273, v274, v275, v276);
                        OUTLINED_FUNCTION_65();
                        outlined init with copy of RentalCarReservation?(v277, v278, v279, v280);
                        OUTLINED_FUNCTION_149(v272);
                        if (v54)
                        {
                          OUTLINED_FUNCTION_149(v127 + v305);
                          if (v54)
                          {
                            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v305, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                            goto LABEL_163;
                          }
                        }

                        else
                        {
                          v281 = v305;
                          outlined init with copy of RentalCarReservation?(v305, v306, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                          OUTLINED_FUNCTION_149(v127 + v281);
                          if (!v282)
                          {
                            v284 = v308;
                            v285 = v305;
                            v286 = v127 + v305;
                            v287 = v307;
                            v288 = v296;
                            (*(v308 + 32))(v307, v286, v296);
                            OUTLINED_FUNCTION_6_4();
                            lazy protocol witness table accessor for type Date and conformance Date(v289, v290);
                            v291 = v306;
                            dispatch thunk of static Equatable.== infix(_:_:)();
                            v292 = *(v284 + 8);
                            v292(v287, v288);
                            v292(v291, v288);
                            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v285, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                            goto LABEL_163;
                          }

                          OUTLINED_FUNCTION_390();
                          v283(v306, v296);
                        }

                        v112 = &_s10Foundation4DateVSg_ADtMd;
                        v113 = &_s10Foundation4DateVSg_ADtMR;
                        v114 = v305;
                        goto LABEL_162;
                      }
                    }

                    else
                    {
                      v261 = v302;
                      outlined init with copy of RentalCarReservation?(v302, v303, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                      OUTLINED_FUNCTION_149(v127 + v261);
                      if (!v262)
                      {
                        OUTLINED_FUNCTION_30();
                        v264 = v302;
                        v265 = OUTLINED_FUNCTION_326();
                        v266(v265);
                        OUTLINED_FUNCTION_6_4();
                        lazy protocol witness table accessor for type Date and conformance Date(v267, v268);
                        OUTLINED_FUNCTION_351();
                        v269 = OUTLINED_FUNCTION_271();
                        (v127)(v269);
                        v270 = OUTLINED_FUNCTION_420();
                        (v127)(v270);
                        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v264, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                        if ((v261 & 1) == 0)
                        {
                          goto LABEL_163;
                        }

                        goto LABEL_324;
                      }

                      OUTLINED_FUNCTION_390();
                      v263(v303, v296);
                    }

                    v112 = &_s10Foundation4DateVSg_ADtMd;
                    v113 = &_s10Foundation4DateVSg_ADtMR;
                    v114 = v302;
LABEL_162:
                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v114, v112, v113);
                    goto LABEL_163;
                  }
                }

                else
                {
                  v241 = v300;
                  outlined init with copy of RentalCarReservation?(v300, v301, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  OUTLINED_FUNCTION_149(v127 + v241);
                  if (!v242)
                  {
                    OUTLINED_FUNCTION_30();
                    v244 = v300;
                    v245 = OUTLINED_FUNCTION_326();
                    v246(v245);
                    OUTLINED_FUNCTION_6_4();
                    lazy protocol witness table accessor for type Date and conformance Date(v247, v248);
                    OUTLINED_FUNCTION_351();
                    v249 = OUTLINED_FUNCTION_271();
                    (v127)(v249);
                    v250 = OUTLINED_FUNCTION_420();
                    (v127)(v250);
                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v244, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                    if ((v241 & 1) == 0)
                    {
                      goto LABEL_163;
                    }

                    goto LABEL_314;
                  }

                  OUTLINED_FUNCTION_390();
                  v243(v301, v296);
                }

                v112 = &_s10Foundation4DateVSg_ADtMd;
                v113 = &_s10Foundation4DateVSg_ADtMR;
                v114 = v300;
                goto LABEL_162;
              }

              OUTLINED_FUNCTION_390();
              v223(v299, v296);
            }

            v112 = &_s10Foundation4DateVSg_ADtMd;
            v113 = &_s10Foundation4DateVSg_ADtMR;
            v114 = v298;
            goto LABEL_162;
          }

          (*(v297 + 8))(v18, v8);
        }

        v112 = &_s10Foundation3URLVSg_ADtMd;
        v113 = &_s10Foundation3URLVSg_ADtMR;
        v114 = v3;
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_390();
      v111(v0, v296);
    }

    v112 = &_s10Foundation4DateVSg_ADtMd;
    v113 = &_s10Foundation4DateVSg_ADtMR;
    v114 = v1;
    goto LABEL_162;
  }

  if (v56)
  {
    v57 = *(v7 + 16) == *(v5 + 16) && v55 == v56;
    if (v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_163:
  OUTLINED_FUNCTION_42_0();
}

uint64_t ShippingOrder.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000025DCEB0C0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x800000025DCEB0E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000025DCEB0A0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x800000025DCEB100 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x800000025DCEB120 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000016 && 0x800000025DCEB140 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x800000025DCEB1A0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x627553746E657665 && a2 == 0xEC00000065707954;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000023 && 0x800000025DCEB1C0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000011 && 0x800000025DCEB180 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x73726F68747561 && a2 == 0xE700000000000000;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000011 && 0x800000025DCEB160 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7373654D6C69616DLL && a2 == 0xED00006449656761;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6E557349656D6974 && a2 == 0xED00006E776F6E6BLL;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x676E697070696873 && a2 == 0xEE00737574617453;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x746144726564726FLL && a2 == 0xE900000000000065;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6D754E726564726FLL && a2 == 0xEB00000000726562;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000010 && 0x800000025DCEBAA0 == a2;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x736F43726564726FLL && a2 == 0xE900000000000074;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x746E61686372656DLL && a2 == 0xEC000000656D614ELL;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000013 && 0x800000025DCEBAC0 == a2;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000014 && 0x800000025DCEBAE0 == a2;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x676E697070696873 && a2 == 0xEF73736572646441;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000013 && 0x800000025DCEBB00 == a2;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0x6E65697069636572 && a2 == 0xEE0073656D614E74;
                                                            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000015 && 0x800000025DCEBB20 == a2;
                                                              if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000010 && 0x800000025DCEBB40 == a2;
                                                                if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000014 && 0x800000025DCEBB60 == a2;
                                                                  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0x72656D6F74737563 && a2 == 0xED000073656D614ELL;
                                                                    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000011 && 0x800000025DCEBB80 == a2;
                                                                      if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000014 && 0x800000025DCEBBA0 == a2;
                                                                        if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0x676E696B63617274 && a2 == 0xEE007265626D754ELL;
                                                                          if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0x4E72656972726163 && a2 == 0xEB00000000656D61;
                                                                            if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0x676E697070696873 && a2 == 0xEC00000065746144;
                                                                              if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0x79726576696C6564 && a2 == 0xEC00000065746144;
                                                                                if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD00000000000001ALL && 0x800000025DCEBBC0 == a2;
                                                                                  if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else if (a1 == 0xD000000000000018 && 0x800000025DCEBBE0 == a2)
                                                                                  {

                                                                                    return 41;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                    if (v47)
                                                                                    {
                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      return 42;
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

uint64_t ShippingOrder.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
    case 7:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x6D614E746E657665;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0x707954746E657665;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x627553746E657665;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 12:
    case 14:
    case 34:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x73726F68747561;
      break;
    case 15:
      result = 0x7373654D6C69616DLL;
      break;
    case 16:
      result = 0x65786F626C69616DLL;
      break;
    case 17:
      result = 0x737574617473;
      break;
    case 18:
      result = 0x6E557349656D6974;
      break;
    case 19:
    case 27:
      v3 = 0x697070696873;
      goto LABEL_33;
    case 20:
      result = 0x746144726564726FLL;
      break;
    case 21:
      result = 0x6D754E726564726FLL;
      break;
    case 22:
    case 31:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x736F43726564726FLL;
      break;
    case 24:
      result = 0x746E61686372656DLL;
      break;
    case 25:
    case 28:
      result = 0xD000000000000013;
      break;
    case 26:
      result = 0xD000000000000014;
      break;
    case 29:
      result = 0x6E65697069636572;
      break;
    case 30:
      result = 0xD000000000000015;
      break;
    case 32:
      result = 0xD000000000000014;
      break;
    case 33:
      result = 0x72656D6F74737563;
      break;
    case 35:
      result = 0xD000000000000014;
      break;
    case 36:
      v3 = 0x696B63617274;
LABEL_33:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 37:
      result = 0x4E72656972726163;
      break;
    case 38:
      result = 0x676E697070696873;
      break;
    case 39:
      result = 0x79726576696C6564;
      break;
    case 40:
      result = 0xD00000000000001ALL;
      break;
    case 41:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ShippingOrder.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ShippingOrder.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ShippingOrder.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ShippingOrder.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ShippingOrder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ShippingOrder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void ShippingOrder.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_193();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes13ShippingOrderV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes13ShippingOrderV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys();
  OUTLINED_FUNCTION_192();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_67_0();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_43_2(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_43_2(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v1[6];
    v13 = v1[7];
    OUTLINED_FUNCTION_43_2(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v1[8];
    v15 = v1[9];
    OUTLINED_FUNCTION_43_2(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v1[10];
    v17 = v1[11];
    OUTLINED_FUNCTION_43_2(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v1[12];
    v19 = v1[13];
    OUTLINED_FUNCTION_43_2(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v1 + 112);
    OUTLINED_FUNCTION_74(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v1[15];
    v22 = v1[16];
    OUTLINED_FUNCTION_43_2(8);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47 = v1[17];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v23 = v1[18];
    v24 = v1[19];
    OUTLINED_FUNCTION_43_2(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = v1[20];
    v26 = v1[21];
    OUTLINED_FUNCTION_43_2(11);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = v1[22];
    v28 = v1[23];
    OUTLINED_FUNCTION_43_2(12);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_341();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29 = v1[25];
    v30 = v1[26];
    OUTLINED_FUNCTION_43_2(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = v1[27];
    v32 = v1[28];
    OUTLINED_FUNCTION_43_2(15);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v48 = v1[29];
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v33 = v1[30];
    v34 = v1[31];
    OUTLINED_FUNCTION_43_2(17);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v35 = *(v1 + 256);
    OUTLINED_FUNCTION_74(18);
    KeyedEncodingContainer.encode(_:forKey:)();
    v36 = v1[33];
    v37 = v1[34];
    OUTLINED_FUNCTION_43_2(19);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v46 = type metadata accessor for ShippingOrder(0);
    v38 = v46[24];
    OUTLINED_FUNCTION_274(20);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_6_4();
    lazy protocol witness table accessor for type Date and conformance Date(v39, v40);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v46[25]);
    OUTLINED_FUNCTION_43_2(21);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v41 = v46[26];
    OUTLINED_FUNCTION_274(22);
    type metadata accessor for URL();
    OUTLINED_FUNCTION_12_3();
    lazy protocol witness table accessor for type Date and conformance Date(v42, v43);
    OUTLINED_FUNCTION_157();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_239(v46[27]);
    OUTLINED_FUNCTION_43_2(23);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v46[28]);
    OUTLINED_FUNCTION_43_2(24);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_135(v46[29]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v46[30]);
    OUTLINED_FUNCTION_43_2(26);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v46[31]);
    OUTLINED_FUNCTION_43_2(27);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v46[32]);
    OUTLINED_FUNCTION_43_2(28);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_135(v46[33]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v46[34]);
    OUTLINED_FUNCTION_43_2(30);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v46[35]);
    OUTLINED_FUNCTION_43_2(31);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v46[36]);
    OUTLINED_FUNCTION_43_2(32);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_135(v46[37]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_135(v46[38]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_135(v46[39]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v46[40]);
    OUTLINED_FUNCTION_43_2(36);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v46[41]);
    OUTLINED_FUNCTION_43_2(37);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_130_0(v46[42]);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_130_0(v46[43]);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_130_0(v46[44]);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_130_0(v46[45]);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v44 = OUTLINED_FUNCTION_375();
  v45(v44);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_35();
}

void ShippingOrder.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_36();
  a19 = v25;
  a20 = v26;
  v217 = v21;
  v28 = v27;
  v212 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_1();
  v210 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v36 = OUTLINED_FUNCTION_62(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_42_1();
  v211 = v39 - v40;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_371();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v187 - v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_131();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_382();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes13ShippingOrderV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes13ShippingOrderV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  v48 = OUTLINED_FUNCTION_1(v47);
  v213 = v49;
  v214 = v48;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  v53 = OUTLINED_FUNCTION_245();
  v215 = type metadata accessor for ShippingOrder(v53);
  v54 = OUTLINED_FUNCTION_9_1(v215);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_98_0(v57, v187);
  v59 = v28[3];
  v58 = v28[4];
  v201 = v28;
  OUTLINED_FUNCTION_150();
  lazy protocol witness table accessor for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys();
  v60 = v23;
  v61 = v217;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v61)
  {
    v217 = v61;
    LOBYTE(v60) = 0;
    v63 = 0;
    OUTLINED_FUNCTION_346();
    OUTLINED_FUNCTION_166();
    v64 = 0;
    v188 = 0;
    v189 = 0;
    v190 = 0;
    OUTLINED_FUNCTION_7_5();
    v216 = 0;
  }

  else
  {
    v207 = v22;
    v208 = v45;
    v209 = v20;
    LODWORD(v22) = v213;
    LODWORD(v23) = v214;
    OUTLINED_FUNCTION_298();
    v63 = v60;
    v62 = KeyedDecodingContainer.decode(_:forKey:)();
    v58 = v218;
    *v218 = v62;
    v58[1] = v89;
    OUTLINED_FUNCTION_190(1);
    v58[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58[3] = v90;
    OUTLINED_FUNCTION_190(2);
    v58[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58[5] = v91;
    OUTLINED_FUNCTION_190(3);
    v58[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58[7] = v92;
    OUTLINED_FUNCTION_190(4);
    v58[8] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58[9] = v93;
    OUTLINED_FUNCTION_190(5);
    v58[10] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58[11] = v94;
    OUTLINED_FUNCTION_190(6);
    v58[12] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58[13] = v95;
    OUTLINED_FUNCTION_190(7);
    *(v218 + 112) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_190(8);
    v96 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v217 = 0;
    v98 = v218;
    *(v218 + 120) = v96;
    *(v98 + 128) = v97;
    LODWORD(v45) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v219 = 9;
    OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_262();
    v206 = v60;
    v99 = v217;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v217 = v99;
    if (v99)
    {
      v100 = OUTLINED_FUNCTION_131_0();
      v101(v100);
      v188 = 0;
      v189 = 0;
      v190 = 0;
      OUTLINED_FUNCTION_7_5();
      v216 = 0;
      OUTLINED_FUNCTION_28_2();
      v64 = 1;
    }

    else
    {
      *(v218 + 136) = a10;
      OUTLINED_FUNCTION_100_0(10);
      v102 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v217 = 0;
      v103 = v218;
      *(v218 + 144) = v102;
      *(v103 + 152) = v104;
      OUTLINED_FUNCTION_100_0(11);
      v105 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v216 = v106;
      v217 = 0;
      v107 = v218;
      *(v218 + 160) = v105;
      *(v107 + 168) = v106;
      OUTLINED_FUNCTION_100_0(12);
      v108 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v217 = 0;
      v109 = v218;
      *(v218 + 176) = v108;
      *(v109 + 184) = v110;
      OUTLINED_FUNCTION_128_0(13);
      OUTLINED_FUNCTION_262();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v217 = 0;
      *(v218 + 192) = a10;
      OUTLINED_FUNCTION_100_0(14);
      v111 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v217 = 0;
      v112 = v218;
      *(v218 + 200) = v111;
      *(v112 + 208) = v113;
      OUTLINED_FUNCTION_100_0(15);
      v114 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v217 = 0;
      v115 = v218;
      *(v218 + 216) = v114;
      *(v115 + 224) = v116;
      OUTLINED_FUNCTION_128_0(16);
      OUTLINED_FUNCTION_262();
      v63 = v206;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v217 = 0;
      *(v218 + 232) = a10;
      OUTLINED_FUNCTION_100_0(17);
      v117 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v217 = 0;
      v118 = v218;
      *(v218 + 240) = v117;
      *(v118 + 248) = v119;
      OUTLINED_FUNCTION_100_0(18);
      v120 = KeyedDecodingContainer.decode(_:forKey:)();
      v217 = 0;
      *(v218 + 256) = v120 & 1;
      OUTLINED_FUNCTION_100_0(19);
      v121 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v217 = 0;
      v122 = v218;
      *(v218 + 264) = v121;
      *(v122 + 272) = v123;
      LODWORD(v58) = type metadata accessor for Date();
      OUTLINED_FUNCTION_6_4();
      v64 = lazy protocol witness table accessor for type Date and conformance Date(v124, v125);
      OUTLINED_FUNCTION_212();
      v217 = 0;
      OUTLINED_FUNCTION_389(v215[24]);
      outlined init with take of Date?(v24, v126, v127, v128);
      OUTLINED_FUNCTION_100_0(21);
      v129 = v217;
      v130 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v217 = v129;
      if (v129)
      {
        v132 = OUTLINED_FUNCTION_131_0();
        v133(v132);
        v200 = 0;
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_256(v134);
        v199 = v135;
      }

      else
      {
        OUTLINED_FUNCTION_78(v130, v131, v215[25]);
        type metadata accessor for URL();
        LOBYTE(a10) = 22;
        OUTLINED_FUNCTION_12_3();
        lazy protocol witness table accessor for type Date and conformance Date(v136, v137);
        OUTLINED_FUNCTION_385();
        v63 = v206;
        v138 = v217;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v217 = v138;
        if (v138)
        {
          v139 = OUTLINED_FUNCTION_131_0();
          v140(v139);
          HIDWORD(v200) = 0;
          OUTLINED_FUNCTION_11_4();
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_256(v141);
          v199 = v142;
          LODWORD(v200) = v142;
        }

        else
        {
          OUTLINED_FUNCTION_389(v215[26]);
          outlined init with take of Date?(v210, v143, v144, v145);
          OUTLINED_FUNCTION_100_0(23);
          v146 = v217;
          v147 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v217 = v146;
          if (!v146)
          {
            OUTLINED_FUNCTION_175(v147, v148, v215[27]);
            OUTLINED_FUNCTION_100_0(24);
            v149 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v217 = 0;
            OUTLINED_FUNCTION_188(v149, v153, v215[28]);
            OUTLINED_FUNCTION_128_0(25);
            OUTLINED_FUNCTION_262();
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v217 = 0;
            v154 = v215[29];
            OUTLINED_FUNCTION_401(a10);
            OUTLINED_FUNCTION_202(26);
            v155 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v217 = 0;
            OUTLINED_FUNCTION_188(v155, v156, v215[30]);
            OUTLINED_FUNCTION_100_0(27);
            v157 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v217 = 0;
            OUTLINED_FUNCTION_188(v157, v158, v215[31]);
            OUTLINED_FUNCTION_100_0(28);
            v159 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v217 = 0;
            OUTLINED_FUNCTION_188(v159, v160, v215[32]);
            OUTLINED_FUNCTION_128_0(29);
            OUTLINED_FUNCTION_262();
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v217 = 0;
            v161 = v215[33];
            OUTLINED_FUNCTION_401(a10);
            OUTLINED_FUNCTION_202(30);
            v162 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v217 = 0;
            OUTLINED_FUNCTION_188(v162, v163, v215[34]);
            OUTLINED_FUNCTION_100_0(31);
            v164 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v217 = 0;
            OUTLINED_FUNCTION_188(v164, v165, v215[35]);
            OUTLINED_FUNCTION_100_0(32);
            v166 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v217 = 0;
            OUTLINED_FUNCTION_188(v166, v167, v215[36]);
            OUTLINED_FUNCTION_128_0(33);
            OUTLINED_FUNCTION_262();
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v217 = 0;
            v168 = v215[37];
            OUTLINED_FUNCTION_401(a10);
            OUTLINED_FUNCTION_128_0(34);
            OUTLINED_FUNCTION_262();
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v217 = 0;
            v169 = v215[38];
            OUTLINED_FUNCTION_401(a10);
            OUTLINED_FUNCTION_128_0(35);
            OUTLINED_FUNCTION_262();
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v217 = 0;
            v170 = v215[39];
            OUTLINED_FUNCTION_401(a10);
            OUTLINED_FUNCTION_202(36);
            v171 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v217 = 0;
            OUTLINED_FUNCTION_188(v171, v172, v215[40]);
            OUTLINED_FUNCTION_100_0(37);
            v173 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v217 = 0;
            OUTLINED_FUNCTION_188(v173, v174, v215[41]);
            OUTLINED_FUNCTION_219(38);
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v217 = 0;
            OUTLINED_FUNCTION_389(v215[42]);
            outlined init with take of Date?(v207, v175, v176, v177);
            OUTLINED_FUNCTION_219(39);
            OUTLINED_FUNCTION_212();
            v217 = 0;
            OUTLINED_FUNCTION_389(v215[43]);
            outlined init with take of Date?(v208, v178, v179, v180);
            OUTLINED_FUNCTION_219(40);
            OUTLINED_FUNCTION_212();
            v217 = 0;
            OUTLINED_FUNCTION_389(v215[44]);
            outlined init with take of Date?(v209, v181, v182, v183);
            OUTLINED_FUNCTION_219(41);
            OUTLINED_FUNCTION_212();
            v217 = 0;
            v184 = OUTLINED_FUNCTION_131_0();
            v185(v184);
            v186 = v218;
            outlined init with take of Date?(v211, v218 + v215[45], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            outlined init with copy of RentalCarReservation(v186, v212, type metadata accessor for ShippingOrder);
            __swift_destroy_boxed_opaque_existential_1(v201);
            OUTLINED_FUNCTION_38();
            outlined destroy of RentalCarReservation();
            goto LABEL_78;
          }

          v150 = OUTLINED_FUNCTION_131_0();
          v151(v150);
          OUTLINED_FUNCTION_11_4();
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_110_0(v152);
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v201);
  if (v60)
  {
    LODWORD(v201) = 0;
    v193 = 0;
    v194 = 0;
    v65 = v218;
    v66 = *(v218 + 8);

    if (v63)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v194 = 0;
    v193 = 0;
    LODWORD(v201) = 0;
    v65 = v218;
    if (v63)
    {
LABEL_6:
      v67 = v65[3];

      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_44;
    }
  }

  if (!v22)
  {
LABEL_7:
    v68 = v215;
    if (v58)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  v80 = v65[5];

  v68 = v215;
  if (v58)
  {
LABEL_8:
    v69 = v65[7];

    if ((v24 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  if (!v24)
  {
LABEL_9:
    if (v23)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  v81 = v65[9];

  if (v23)
  {
LABEL_10:
    v70 = v65[11];

    if ((v45 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  if (!v45)
  {
LABEL_11:
    if (v64)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  v82 = v65[13];

  if (v64)
  {
LABEL_12:
    v71 = v65[16];

    if ((v188 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  if (!v188)
  {
LABEL_13:
    if (v189)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  v83 = v65[17];

  if (v189)
  {
LABEL_14:
    v72 = v65[19];

    if ((v190 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:

  if (!v190)
  {
LABEL_15:
    if (v191)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  v84 = v65[23];

  if (v191)
  {
LABEL_16:
    v73 = v65[24];

    if ((v192 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  if (!v192)
  {
LABEL_17:
    if (v195)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  v85 = v65[26];

  if (v195)
  {
LABEL_18:
    v74 = v65[28];

    if ((v196 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  if (!v196)
  {
LABEL_19:
    if (v197)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  v86 = v65[29];

  if (v197)
  {
LABEL_20:
    v75 = v65[31];

    if ((v198 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  if (!v198)
  {
LABEL_21:
    if (v199)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  v87 = v65[34];

  if (v199)
  {
LABEL_22:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v65 + v68[24], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((v200 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  if (!v200)
  {
LABEL_23:
    if (HIDWORD(v200))
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  OUTLINED_FUNCTION_112(v68[25]);
  if ((v200 & 0x100000000) != 0)
  {
LABEL_24:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v65 + v68[26], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((v202 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  if (!v202)
  {
LABEL_25:
    if (v203)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  OUTLINED_FUNCTION_112(v68[28]);
  if (v203)
  {
LABEL_26:
    v76 = *(v65 + v68[29]);

    if ((v204 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  if (!v204)
  {
LABEL_27:
    if (v205)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  OUTLINED_FUNCTION_112(v68[30]);
  if (v205)
  {
LABEL_28:
    OUTLINED_FUNCTION_112(v68[31]);
    if ((v206 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  if (!v206)
  {
LABEL_29:
    if (v207)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  OUTLINED_FUNCTION_112(v68[32]);
  if (v207)
  {
LABEL_30:
    v77 = *(v65 + v68[33]);

    if ((v208 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  if (!v208)
  {
LABEL_31:
    if (v209)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  OUTLINED_FUNCTION_112(v68[34]);
  if (v209)
  {
LABEL_32:
    OUTLINED_FUNCTION_112(v68[35]);
    if ((v210 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  if (!v210)
  {
LABEL_33:
    if (v211)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  OUTLINED_FUNCTION_112(v68[36]);
  if (v211)
  {
LABEL_34:
    v78 = *(v65 + v68[37]);

    if ((v212 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_71:
  if (!v212)
  {
LABEL_35:
    if (v213)
    {
      goto LABEL_36;
    }

    goto LABEL_73;
  }

LABEL_72:
  v88 = *(v65 + v68[38]);

  if (v213)
  {
LABEL_36:
    v79 = *(v65 + v68[39]);

    if ((v214 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_74:
    OUTLINED_FUNCTION_112(v68[40]);
    if (v201)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

LABEL_73:
  if (v214)
  {
    goto LABEL_74;
  }

LABEL_37:
  if (v201)
  {
LABEL_38:
    OUTLINED_FUNCTION_112(v68[41]);
  }

LABEL_39:
  if (v193)
  {
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v65 + v68[43], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((v194 & 1) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (v194)
  {
LABEL_77:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v65 + v68[44], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_78:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x25F8A2420](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      String.hash(into:)();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized Dictionary<>.hash(into:)(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (*(a2 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a2 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];
    memcpy(__dst, a1, sizeof(__dst));

    String.hash(into:)();

    String.hash(into:)();

    result = Hasher._finalize()();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x25F8A2420](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for RentalCarReservation(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, type metadata accessor for RentalCarReservation);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, type metadata accessor for RentalCarReservation);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, type metadata accessor for RentalCarReservation);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TicketedTransportation(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, type metadata accessor for TicketedTransportation);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, type metadata accessor for TicketedTransportation);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, type metadata accessor for TicketedTransportation);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TicketedShow(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, type metadata accessor for TicketedShow);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, type metadata accessor for TicketedShow);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, type metadata accessor for TicketedShow);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Appointment(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, type metadata accessor for Appointment);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, type metadata accessor for Appointment);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, type metadata accessor for Appointment);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Party(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Party and conformance Party, type metadata accessor for Party);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Party and conformance Party, type metadata accessor for Party);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Party and conformance Party, type metadata accessor for Party);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Trip(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Trip and conformance Trip, type metadata accessor for Trip);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Trip and conformance Trip, type metadata accessor for Trip);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Trip and conformance Trip, type metadata accessor for Trip);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for FlightReservation(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation, type metadata accessor for FlightReservation);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation, type metadata accessor for FlightReservation);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation, type metadata accessor for FlightReservation);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for HotelReservation(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation, type metadata accessor for HotelReservation);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation, type metadata accessor for HotelReservation);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation, type metadata accessor for HotelReservation);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for RestaurantReservation(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation, type metadata accessor for RestaurantReservation);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation, type metadata accessor for RestaurantReservation);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation, type metadata accessor for RestaurantReservation);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ShippingOrder(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, type metadata accessor for ShippingOrder);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, type metadata accessor for ShippingOrder);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, type metadata accessor for ShippingOrder);
  a1[3] = result;
  return result;
}

uint64_t type metadata completion function for RentalCarReservation()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for [String]?();
    if (v5 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t type metadata completion function for TicketedTransportation()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for [String]?();
    if (v5 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t type metadata completion function for TicketedShow()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for [String]?();
    if (v5 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v8 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t type metadata completion function for Appointment()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for [String]?();
    if (v5 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t type metadata completion function for Party()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for [String]?();
    if (v5 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t type metadata completion function for Trip()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for [String]?();
    if (v5 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
    if (v8 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t type metadata completion function for FlightReservation()
{
  type metadata accessor for [String : String]();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = MEMORY[0x277D837D0];
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v1 = v4;
    if (v5 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, v3, MEMORY[0x277D83D88]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        type metadata accessor for Date?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
        if (v9 > 0x3F)
        {
          return v8;
        }

        v8 = type metadata accessor for DateComponents();
        if (v10 > 0x3F)
        {
          return v8;
        }

        else
        {
          type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
          v1 = v11;
          if (v12 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
            v1 = v13;
            if (v14 <= 0x3F)
            {
              type metadata accessor for Date?(319, &lazy cache variable for type metadata for NSDecimal?, type metadata accessor for NSDecimal);
              v1 = v15;
              if (v16 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata completion function for HotelReservation()
{
  type metadata accessor for [String : String]();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = MEMORY[0x277D837D0];
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v1 = v4;
    if (v5 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, v3, MEMORY[0x277D83D88]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      type metadata accessor for Date?(319, &lazy cache variable for type metadata for DateComponents?, MEMORY[0x277CC8990]);
      if (v9 > 0x3F)
      {
        return v8;
      }

      type metadata accessor for String?(319, &lazy cache variable for type metadata for Int?, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      v1 = v10;
      if (v11 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v12 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }

        return v8;
      }
    }
  }

  return v1;
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

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_89Tm()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v3 = OUTLINED_FUNCTION_118(*(v0 + 60));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_90Tm()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v3 = OUTLINED_FUNCTION_187(*(v2 + 60));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t type metadata completion function for RestaurantReservation()
{
  type metadata accessor for [String : String]();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = MEMORY[0x277D837D0];
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v1 = v4;
    if (v5 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, v3, MEMORY[0x277D83D88]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        type metadata accessor for Date?(319, &lazy cache variable for type metadata for DateComponents?, MEMORY[0x277CC8990]);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata completion function for ShippingOrder()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for [String]?();
    if (v6 > 0x3F)
    {
      return v5;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v8 > 0x3F)
    {
      return v7;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
    if (v9 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v10 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for ShippingOrder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD7)
  {
    if (a2 + 41 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 41) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 42;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2A;
  v5 = v6 - 42;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ShippingOrder.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 41 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 41) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD6)
  {
    v6 = ((a2 - 215) >> 8) + 1;
    *result = a2 + 41;
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
          *result = a2 + 41;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RestaurantReservation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RestaurantReservation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlightReservation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD1)
  {
    if (a2 + 47 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 47) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 48;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v5 = v6 - 48;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FlightReservation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD0)
  {
    v6 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
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
          *result = a2 + 47;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Trip.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE7)
  {
    if (a2 + 25 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 25) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 26;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v5 = v6 - 26;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Trip.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE6)
  {
    v6 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Party.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Party.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HotelReservation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HotelReservation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TicketedShow.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
    if (a2 + 32 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 32) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TicketedShow.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TicketedTransportation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TicketedTransportation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RentalCarReservation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDD)
  {
    if (a2 + 35 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 35) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 36;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v5 = v6 - 36;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RentalCarReservation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDC)
  {
    v6 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
          *result = a2 + 35;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_7()
{
  *(v0 - 352) = 0;
  *(v0 - 360) = 0;
  *(v0 - 368) = 0;
  *(v0 - 312) = 0;
  *(v0 - 320) = 0;
  *(v0 - 304) = 0;
  *(v0 - 288) = 0;
  *(v0 - 296) = 0;
  *(v0 - 280) = 0;
  *(v0 - 272) = 0;
  *(v0 - 264) = 0;
}

void OUTLINED_FUNCTION_1_6()
{
  *(v0 - 368) = 0;
  *(v0 - 312) = 0;
  *(v0 - 320) = 0;
  *(v0 - 304) = 0;
  *(v0 - 288) = 0;
  *(v0 - 296) = 0;
  *(v0 - 280) = 0;
  *(v0 - 272) = 0;
  *(v0 - 264) = 0;
}