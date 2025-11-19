unint64_t PartialExtractedAttributes.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x646574656B636974;
      break;
    case 4:
      result = 0x6D746E696F707061;
      break;
    case 5:
      result = 0x7974726170;
      break;
    case 6:
      result = 1885958772;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x676E697070696873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PartialExtractedAttributes.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PartialExtractedAttributes.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PartialExtractedAttributes.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PartialExtractedAttributes.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PartialExtractedAttributes.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PartialExtractedAttributes.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PartialExtractedAttributes.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes26PartialExtractedAttributesV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes26PartialExtractedAttributesV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  v9 = &v44[-v8];
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys();
  OUTLINED_FUNCTION_87();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *v0;
  v11 = v0[1];
  v44[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v12 = type metadata accessor for PartialExtractedAttributes(0);
    v13 = v12[5];
    v44[14] = 1;
    type metadata accessor for RentalCarReservation(0);
    OUTLINED_FUNCTION_85();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v14, v15);
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_51();
    v16 = v12[6];
    v44[13] = 2;
    type metadata accessor for TicketedTransportation(0);
    OUTLINED_FUNCTION_84();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v17, v18);
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_51();
    v19 = v12[7];
    v44[12] = 3;
    type metadata accessor for TicketedShow(0);
    OUTLINED_FUNCTION_83();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v20, v21);
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_51();
    v22 = v12[8];
    v44[11] = 4;
    type metadata accessor for Appointment(0);
    OUTLINED_FUNCTION_82();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v23, v24);
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_51();
    v25 = v12[9];
    v44[10] = 5;
    type metadata accessor for Party(0);
    OUTLINED_FUNCTION_81();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v26, v27);
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_51();
    v28 = v12[10];
    v44[9] = 6;
    type metadata accessor for Trip(0);
    OUTLINED_FUNCTION_80();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v29, v30);
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_51();
    v31 = v12[11];
    OUTLINED_FUNCTION_142();
    type metadata accessor for FlightReservation(0);
    OUTLINED_FUNCTION_92();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v32, v33);
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_51();
    v34 = v12[12];
    v44[7] = 8;
    type metadata accessor for HotelReservation(0);
    OUTLINED_FUNCTION_91();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v35, v36);
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_51();
    v37 = v12[13];
    v44[6] = 9;
    type metadata accessor for RestaurantReservation(0);
    OUTLINED_FUNCTION_90();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v38, v39);
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_51();
    v40 = v12[14];
    v44[5] = 10;
    type metadata accessor for ShippingOrder(0);
    OUTLINED_FUNCTION_89();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v41, v42);
    OUTLINED_FUNCTION_51();
  }

  return (*(v4 + 8))(v9, v2);
}

void PartialExtractedAttributes.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v2 = v1;
  v140 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
  OUTLINED_FUNCTION_62(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_73(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
  OUTLINED_FUNCTION_62(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_73(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  OUTLINED_FUNCTION_62(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_73(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  OUTLINED_FUNCTION_62(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_73(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
  OUTLINED_FUNCTION_62(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_73(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
  OUTLINED_FUNCTION_62(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_1();
  v150 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
  OUTLINED_FUNCTION_62(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10_1();
  v149 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
  OUTLINED_FUNCTION_62(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_10_1();
  v148 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
  OUTLINED_FUNCTION_62(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_73(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  OUTLINED_FUNCTION_62(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_10_1();
  v147 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes26PartialExtractedAttributesV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes26PartialExtractedAttributesV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  v55 = OUTLINED_FUNCTION_1(v54);
  v151 = v56;
  v152 = v55;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_10_1();
  v162 = v60;
  v61 = OUTLINED_FUNCTION_32();
  v62 = type metadata accessor for PartialExtractedAttributes(v61);
  v63 = (v62 - 8);
  v64 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_5_1();
  v67 = (v66 - v65);
  v68 = v63[7];
  type metadata accessor for RentalCarReservation(0);
  v161 = v68;
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  v73 = v63[8];
  type metadata accessor for TicketedTransportation(0);
  v157 = v73;
  v74 = OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  v78 = v63[9];
  type metadata accessor for TicketedShow(0);
  v156 = v78;
  v79 = OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  v83 = v63[10];
  type metadata accessor for Appointment(0);
  v155 = v83;
  v84 = OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
  v88 = v63[11];
  type metadata accessor for Party(0);
  v160 = v88;
  v89 = OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  v93 = v63[12];
  v94 = type metadata accessor for Trip(0);
  v159 = v93;
  v95 = OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v94);
  v98 = v63[13];
  v99 = type metadata accessor for FlightReservation(0);
  v158 = v98;
  v100 = OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v99);
  v103 = v63[14];
  v104 = type metadata accessor for HotelReservation(0);
  v154 = v103;
  v105 = OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v104);
  v108 = v63[15];
  v109 = type metadata accessor for RestaurantReservation(0);
  v153 = v108;
  v110 = OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v109);
  v113 = v63[16];
  v114 = type metadata accessor for ShippingOrder(0);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v114);
  v118 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v67 + v161, &_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v67 + v157, &_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v67 + v156, &_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v67 + v155, &_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v67 + v160, &_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v67 + v159, &_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v67 + v158, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v67 + v154, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v67 + v153, &_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v67 + v113, &_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
  }

  else
  {
    *v67 = KeyedDecodingContainer.decode(_:forKey:)();
    v67[1] = v119;
    OUTLINED_FUNCTION_85();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v120, v121);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of RentalCarReservation?(v147, v67 + v161, &_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
    OUTLINED_FUNCTION_84();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v122, v123);
    OUTLINED_FUNCTION_41_1();
    outlined assign with take of RentalCarReservation?(v146, v67 + v157, &_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
    OUTLINED_FUNCTION_83();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v124, v125);
    OUTLINED_FUNCTION_41_1();
    outlined assign with take of RentalCarReservation?(v148, v67 + v156, &_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
    OUTLINED_FUNCTION_82();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v126, v127);
    OUTLINED_FUNCTION_41_1();
    outlined assign with take of RentalCarReservation?(v149, v67 + v155, &_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
    OUTLINED_FUNCTION_81();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v128, v129);
    OUTLINED_FUNCTION_41_1();
    outlined assign with take of RentalCarReservation?(v150, v67 + v160, &_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
    OUTLINED_FUNCTION_80();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v130, v131);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of RentalCarReservation?(v145, v67 + v159, &_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_92();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v132, v133);
    OUTLINED_FUNCTION_41_1();
    outlined assign with take of RentalCarReservation?(v144, v67 + v158, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
    OUTLINED_FUNCTION_91();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v134, v135);
    OUTLINED_FUNCTION_41_1();
    outlined assign with take of RentalCarReservation?(v143, v67 + v154, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
    OUTLINED_FUNCTION_90();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v136, v137);
    OUTLINED_FUNCTION_41_1();
    outlined assign with take of RentalCarReservation?(v142, v67 + v153, &_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
    OUTLINED_FUNCTION_89();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v138, v139);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v151 + 8))(v162, v152);
    outlined assign with take of RentalCarReservation?(v141, v67 + v113, &_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
    outlined init with copy of PartialExtractedAttributes(v67, v140, type metadata accessor for PartialExtractedAttributes);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_101();
    outlined destroy of ShippingOrder();
  }

  OUTLINED_FUNCTION_35();
}

uint64_t PreExtractedCard.init(id:cardType:cardSubType:cardProvider:cardUnderName:cardNumber:cardGroupNumber:cardIssueDate:cardExpirationDate:cardIssuedBy:cardRegion:cardCountry:birthday:cardPlaceOfBirth:cardAddress:cardSex:cardHeight:cardEyeColor:cardWeight:cardCategory:cardRestrictions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  v39 = type metadata accessor for PreExtractedCard(0);
  outlined init with take of Date?(a14, a9 + v39[11], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with take of Date?(a15, a9 + v39[12], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v40 = (a9 + v39[13]);
  *v40 = a16;
  v40[1] = a17;
  v41 = (a9 + v39[14]);
  *v41 = a18;
  v41[1] = a19;
  v42 = (a9 + v39[15]);
  *v42 = a20;
  v42[1] = a21;
  result = outlined init with take of Date?(a22, a9 + v39[16], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v44 = (a9 + v39[17]);
  *v44 = a23;
  v44[1] = a24;
  v45 = (a9 + v39[18]);
  *v45 = a25;
  v45[1] = a26;
  v46 = (a9 + v39[19]);
  *v46 = a27;
  v46[1] = a28;
  v47 = (a9 + v39[20]);
  *v47 = a29;
  v47[1] = a30;
  v48 = (a9 + v39[21]);
  *v48 = a31;
  v48[1] = a32;
  v49 = (a9 + v39[22]);
  *v49 = a33;
  v49[1] = a34;
  v50 = (a9 + v39[23]);
  *v50 = a35;
  v50[1] = a36;
  v51 = (a9 + v39[24]);
  *v51 = a37;
  v51[1] = a38;
  return result;
}

uint64_t PreExtractedCard.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardSubType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardProvider.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardUnderName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardNumber.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardGroupNumber.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardIssuedBy.getter()
{
  v0 = type metadata accessor for PreExtractedCard(0);
  OUTLINED_FUNCTION_68(*(v0 + 52));
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardRegion.getter()
{
  v0 = type metadata accessor for PreExtractedCard(0);
  OUTLINED_FUNCTION_68(*(v0 + 56));
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardCountry.getter()
{
  return PreExtractedCard.cardCountry.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v2 = v1(v0);
  OUTLINED_FUNCTION_68(*(v2 + 60));
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.birthday.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for PreExtractedCard(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 64));
}

uint64_t PreExtractedCard.cardPlaceOfBirth.getter()
{
  return PreExtractedCard.cardPlaceOfBirth.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v2 = v1(v0);
  OUTLINED_FUNCTION_68(*(v2 + 68));
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardAddress.getter()
{
  return PreExtractedCard.cardAddress.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v2 = v1(v0);
  OUTLINED_FUNCTION_68(*(v2 + 72));
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardSex.getter()
{
  return PreExtractedCard.cardSex.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v2 = v1(v0);
  OUTLINED_FUNCTION_68(*(v2 + 76));
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardHeight.getter()
{
  v0 = type metadata accessor for PreExtractedCard(0);
  OUTLINED_FUNCTION_68(*(v0 + 80));
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardEyeColor.getter()
{
  v0 = type metadata accessor for PreExtractedCard(0);
  OUTLINED_FUNCTION_68(*(v0 + 84));
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardWeight.getter()
{
  v0 = type metadata accessor for PreExtractedCard(0);
  OUTLINED_FUNCTION_68(*(v0 + 88));
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardCategory.getter()
{
  v0 = type metadata accessor for PreExtractedCard(0);
  OUTLINED_FUNCTION_68(*(v0 + 92));
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedCard.cardRestrictions.getter()
{
  v0 = type metadata accessor for PreExtractedCard(0);
  OUTLINED_FUNCTION_68(*(v0 + 96));
  return OUTLINED_FUNCTION_38();
}

void static PreExtractedCard.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v3 = OUTLINED_FUNCTION_139();
  v4 = OUTLINED_FUNCTION_1(v3);
  v173 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_2();
  v172 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = OUTLINED_FUNCTION_62(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_131();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v167[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v167[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v20 = OUTLINED_FUNCTION_9_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_42_1();
  v25 = v23 - v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v167[-v28];
  MEMORY[0x28223BE20](v27);
  v31 = &v167[-v30];
  OUTLINED_FUNCTION_130();
  v34 = v34 && v32 == v33;
  if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_80;
  }

  v35 = v0[3];
  if (v1[3])
  {
    if (!v35)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_129();
    v38 = v34 && v36 == v37;
    if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v35)
  {
    goto LABEL_80;
  }

  v39 = v0[5];
  if (v1[5])
  {
    if (!v39)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_128();
    v42 = v34 && v40 == v41;
    if (!v42 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v39)
  {
    goto LABEL_80;
  }

  v43 = v0[7];
  if (v1[7])
  {
    if (!v43)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_126();
    v46 = v34 && v44 == v45;
    if (!v46 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v43)
  {
    goto LABEL_80;
  }

  v47 = v1[9];
  v48 = v0[9];
  if (v47)
  {
    if (!v48)
    {
      goto LABEL_80;
    }

    v49 = v1[8] == v0[8] && v47 == v48;
    if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v48)
  {
    goto LABEL_80;
  }

  v50 = v1[11];
  v51 = v0[11];
  if (v50)
  {
    if (!v51)
    {
      goto LABEL_80;
    }

    v52 = v1[10] == v0[10] && v50 == v51;
    if (!v52 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v51)
  {
    goto LABEL_80;
  }

  v53 = v1[13];
  v54 = v0[13];
  if (v53)
  {
    if (!v54)
    {
      goto LABEL_80;
    }

    v55 = v1[12] == v0[12] && v53 == v54;
    if (!v55 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v54)
  {
    goto LABEL_80;
  }

  v56 = type metadata accessor for PreExtractedCard(0);
  v57 = *(v56 + 44);
  v169 = v56;
  v170 = v57;
  v171 = *(v19 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v57, v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v170, &v171[v31], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v31);
  if (v34)
  {
    OUTLINED_FUNCTION_16_3(&v171[v31]);
    if (v34)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_70;
    }

LABEL_68:
    v62 = v31;
LABEL_79:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v62, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_80;
  }

  outlined init with copy of RentalCarReservation?(v31, v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(&v171[v31]);
  if (v58)
  {
    v59 = *(v173 + 8);
    v60 = OUTLINED_FUNCTION_120();
    v61(v60);
    goto LABEL_68;
  }

  (*(v173 + 32))(v172, &v171[v31], v3);
  OUTLINED_FUNCTION_0_6();
  lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v63, v64);
  v168 = dispatch thunk of static Equatable.== infix(_:_:)();
  v65 = *(v173 + 8);
  v170 = v173 + 8;
  v171 = v65;
  (v65)(v172, v3);
  v66 = OUTLINED_FUNCTION_120();
  (v171)(v66);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v168 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_70:
  v67 = v169[12];
  v68 = *(v19 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v67, v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v69 = v0 + v67;
  v70 = v68;
  outlined init with copy of RentalCarReservation?(v69, &v29[v68], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v29);
  if (v34)
  {
    OUTLINED_FUNCTION_16_3(&v29[v68]);
    if (v34)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_82;
    }

    goto LABEL_78;
  }

  outlined init with copy of RentalCarReservation?(v29, v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(&v29[v68]);
  if (v71)
  {
    (*(v173 + 8))(v16, v3);
LABEL_78:
    v62 = v29;
    goto LABEL_79;
  }

  v72 = v173;
  (*(v173 + 32))(v172, &v29[v70], v3);
  OUTLINED_FUNCTION_0_6();
  lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v73, v74);
  LODWORD(v171) = dispatch thunk of static Equatable.== infix(_:_:)();
  v75 = *(v72 + 8);
  v75(v172, v3);
  v75(v16, v3);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v171 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_82:
  v76 = v169[13];
  OUTLINED_FUNCTION_10_3();
  if (v79)
  {
    if (!v77)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v78);
    v82 = v34 && v80 == v81;
    if (!v82 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v77)
  {
    goto LABEL_80;
  }

  v83 = v169[14];
  OUTLINED_FUNCTION_10_3();
  if (v86)
  {
    if (!v84)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v85);
    v89 = v34 && v87 == v88;
    if (!v89 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v84)
  {
    goto LABEL_80;
  }

  v90 = v169[15];
  OUTLINED_FUNCTION_10_3();
  if (v93)
  {
    if (!v91)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v92);
    v96 = v34 && v94 == v95;
    if (!v96 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v91)
  {
    goto LABEL_80;
  }

  v97 = v169[16];
  v98 = *(v19 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v97, v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v97, v25 + v98, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v25);
  if (!v34)
  {
    outlined init with copy of RentalCarReservation?(v25, v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_16_3(v25 + v98);
    if (!v99)
    {
      v103 = v173;
      v104 = v25 + v98;
      v105 = v172;
      (*(v173 + 32))(v172, v104, v3);
      OUTLINED_FUNCTION_0_6();
      lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v106, v107);
      v108 = dispatch thunk of static Equatable.== infix(_:_:)();
      v109 = *(v103 + 8);
      v109(v105, v3);
      v110 = OUTLINED_FUNCTION_96();
      (v109)(v110);
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v108 & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_119;
    }

    v100 = *(v173 + 8);
    v101 = OUTLINED_FUNCTION_96();
    v102(v101);
    goto LABEL_117;
  }

  OUTLINED_FUNCTION_16_3(v25 + v98);
  if (!v34)
  {
LABEL_117:
    v62 = v25;
    goto LABEL_79;
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_119:
  v111 = v169[17];
  OUTLINED_FUNCTION_10_3();
  if (v114)
  {
    if (!v112)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v113);
    v117 = v34 && v115 == v116;
    if (!v117 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v112)
  {
    goto LABEL_80;
  }

  v118 = v169[18];
  OUTLINED_FUNCTION_10_3();
  if (v121)
  {
    if (!v119)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v120);
    v124 = v34 && v122 == v123;
    if (!v124 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v119)
  {
    goto LABEL_80;
  }

  v125 = v169[19];
  OUTLINED_FUNCTION_10_3();
  if (v128)
  {
    if (!v126)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v127);
    v131 = v34 && v129 == v130;
    if (!v131 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v126)
  {
    goto LABEL_80;
  }

  v132 = v169[20];
  OUTLINED_FUNCTION_10_3();
  if (v135)
  {
    if (!v133)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v134);
    v138 = v34 && v136 == v137;
    if (!v138 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v133)
  {
    goto LABEL_80;
  }

  v139 = v169[21];
  OUTLINED_FUNCTION_10_3();
  if (v142)
  {
    if (!v140)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v141);
    v145 = v34 && v143 == v144;
    if (!v145 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v140)
  {
    goto LABEL_80;
  }

  v146 = v169[22];
  OUTLINED_FUNCTION_10_3();
  if (v149)
  {
    if (!v147)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v148);
    v152 = v34 && v150 == v151;
    if (!v152 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v147)
  {
    goto LABEL_80;
  }

  v153 = v169[23];
  OUTLINED_FUNCTION_10_3();
  if (v156)
  {
    if (!v154)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v155);
    v159 = v34 && v157 == v158;
    if (!v159 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v154)
  {
    goto LABEL_80;
  }

  v160 = v169[24];
  OUTLINED_FUNCTION_10_3();
  if (v163 && v161)
  {
    OUTLINED_FUNCTION_25_2(v162);
    if (!v34 || v164 != v165)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_80:
  OUTLINED_FUNCTION_42_0();
}

uint64_t PreExtractedCard.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795464726163 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5462755364726163 && a2 == 0xEB00000000657079;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x766F725064726163 && a2 == 0xEC00000072656469;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65646E5564726163 && a2 == 0xED0000656D614E72;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x626D754E64726163 && a2 == 0xEA00000000007265;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x756F724764726163 && a2 == 0xEF7265626D754E70;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7573734964726163 && a2 == 0xED00006574614465;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x800000025DCEAEB0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7573734964726163 && a2 == 0xEC00000079426465;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6967655264726163 && a2 == 0xEA00000000006E6FLL;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E756F4364726163 && a2 == 0xEB00000000797274;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x7961646874726962 && a2 == 0xE800000000000000;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x800000025DCEAED0 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7264644164726163 && a2 == 0xEB00000000737365;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x78655364726163 && a2 == 0xE700000000000000;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6769654864726163 && a2 == 0xEA00000000007468;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x4365794564726163 && a2 == 0xEC000000726F6C6FLL;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6769655764726163 && a2 == 0xEA00000000007468;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x6574614364726163 && a2 == 0xEC00000079726F67;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else if (a1 == 0xD000000000000010 && 0x800000025DCEAEF0 == a2)
                                        {

                                          return 20;
                                        }

                                        else
                                        {
                                          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                          if (v26)
                                          {
                                            return 20;
                                          }

                                          else
                                          {
                                            return 21;
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

uint64_t PreExtractedCard.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6570795464726163;
      break;
    case 2:
      result = 0x5462755364726163;
      break;
    case 3:
      result = 0x766F725064726163;
      break;
    case 4:
      result = 0x65646E5564726163;
      break;
    case 5:
      result = 0x626D754E64726163;
      break;
    case 6:
      result = 0x756F724764726163;
      break;
    case 7:
    case 9:
      result = 0x7573734964726163;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6967655264726163;
      break;
    case 11:
      result = 0x6E756F4364726163;
      break;
    case 12:
      result = 0x7961646874726962;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x7264644164726163;
      break;
    case 15:
      result = 0x78655364726163;
      break;
    case 16:
      v3 = 0x654864726163;
      goto LABEL_19;
    case 17:
      result = 0x4365794564726163;
      break;
    case 18:
      v3 = 0x655764726163;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6769000000000000;
      break;
    case 19:
      result = 0x6574614364726163;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PreExtractedCard.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PreExtractedCard.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PreExtractedCard.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PreExtractedCard.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PreExtractedCard.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PreExtractedCard.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PreExtractedCard.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_124();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes16PreExtractedCardV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes16PreExtractedCardV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_87();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_7_4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_1_5(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_1_5(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v1[6];
    v13 = v1[7];
    OUTLINED_FUNCTION_1_5(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v1[8];
    v15 = v1[9];
    OUTLINED_FUNCTION_1_5(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v1[10];
    v17 = v1[11];
    OUTLINED_FUNCTION_1_5(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v1[12];
    v19 = v1[13];
    OUTLINED_FUNCTION_1_5(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = type metadata accessor for PreExtractedCard(0);
    v21 = v20[11];
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_6();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v22, v23);
    OUTLINED_FUNCTION_43_1();
    v24 = v20[12];
    OUTLINED_FUNCTION_43_1();
    OUTLINED_FUNCTION_70(v20[13]);
    OUTLINED_FUNCTION_1_5(9);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v20[14]);
    OUTLINED_FUNCTION_1_5(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v20[15]);
    OUTLINED_FUNCTION_1_5(11);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = v20[16];
    OUTLINED_FUNCTION_43_1();
    OUTLINED_FUNCTION_70(v20[17]);
    OUTLINED_FUNCTION_1_5(13);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v20[18]);
    OUTLINED_FUNCTION_1_5(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v20[19]);
    OUTLINED_FUNCTION_1_5(15);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v20[20]);
    OUTLINED_FUNCTION_1_5(16);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v20[21]);
    OUTLINED_FUNCTION_1_5(17);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v20[22]);
    OUTLINED_FUNCTION_1_5(18);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v20[23]);
    OUTLINED_FUNCTION_1_5(19);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v20[24]);
    OUTLINED_FUNCTION_1_5(20);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v26 = OUTLINED_FUNCTION_123();
  v27(v26);
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

void PreExtractedCard.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v2 = v0;
  v4 = v3;
  v99 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = OUTLINED_FUNCTION_62(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_42_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_131();
  MEMORY[0x28223BE20](v14);
  v16 = &v94[-v15];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes16PreExtractedCardV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes16PreExtractedCardV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1(v101);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  v23 = &v94[-v22];
  v104 = type metadata accessor for PreExtractedCard(0);
  v24 = OUTLINED_FUNCTION_9_1(v104);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_2();
  v105 = v27;
  v28 = v4[3];
  v29 = v4[4];
  v102 = v4;
  v30 = __swift_project_boxed_opaque_existential_1(v4, v28);
  lazy protocol witness table accessor for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys();
  v100 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    v103 = v0;
    LOBYTE(v18) = 0;
    LODWORD(v34) = 0;
    v35 = 0;
    OUTLINED_FUNCTION_111();
    LODWORD(v12) = 0;
    v36 = 0;
    v37 = 0;
    v95 = 0;
    *v97 = 0;
    LODWORD(v98) = 0;
    OUTLINED_FUNCTION_69();
    LODWORD(v101) = 0;
  }

  else
  {
    v31 = v16;
    v32 = v1;
    v30 = v100;
    v2 = v101;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v47 = v105;
    *v105 = v33;
    v47[1] = v48;
    OUTLINED_FUNCTION_55(1);
    v37 = v18;
    v47[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47[3] = v49;
    OUTLINED_FUNCTION_55(2);
    v47[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47[5] = v50;
    OUTLINED_FUNCTION_55(3);
    v47[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47[7] = v51;
    OUTLINED_FUNCTION_55(4);
    v47[8] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47[9] = v52;
    OUTLINED_FUNCTION_55(5);
    v47[10] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47[11] = v53;
    OUTLINED_FUNCTION_55(6);
    v47[12] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47[13] = v54;
    v98 = type metadata accessor for Date();
    OUTLINED_FUNCTION_0_6();
    v57 = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v55, v56);
    v58 = v31;
    v35 = v98;
    *&v97[4] = v57;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of Date?(v58, v105 + v104[11], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v34 = v32;
    v36 = *&v97[4];
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v103 = 0;
    outlined init with take of Date?(v34, v105 + v104[12], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_55(9);
    v59 = v103;
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v103 = v59;
    if (v59)
    {
      v62 = OUTLINED_FUNCTION_79();
      v63(v62);
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_2_5();
      v95 = v64;
    }

    else
    {
      OUTLINED_FUNCTION_78(v60, v61, v104[13]);
      v65 = OUTLINED_FUNCTION_46(10);
      v103 = 0;
      OUTLINED_FUNCTION_78(v65, v66, v104[14]);
      v67 = OUTLINED_FUNCTION_46(11);
      v103 = 0;
      OUTLINED_FUNCTION_78(v67, v68, v104[15]);
      v30 = v100;
      v69 = v103;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v103 = v69;
      if (!v69)
      {
        outlined init with take of Date?(v12, v105 + v104[16], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v73 = OUTLINED_FUNCTION_46(13);
        v103 = 0;
        OUTLINED_FUNCTION_78(v73, v74, v104[17]);
        v75 = OUTLINED_FUNCTION_46(14);
        v103 = 0;
        OUTLINED_FUNCTION_78(v75, v76, v104[18]);
        v77 = OUTLINED_FUNCTION_46(15);
        v103 = 0;
        OUTLINED_FUNCTION_78(v77, v78, v104[19]);
        v79 = OUTLINED_FUNCTION_46(16);
        v103 = 0;
        OUTLINED_FUNCTION_78(v79, v80, v104[20]);
        v81 = OUTLINED_FUNCTION_46(17);
        v103 = 0;
        OUTLINED_FUNCTION_78(v81, v82, v104[21]);
        v83 = OUTLINED_FUNCTION_46(18);
        v103 = 0;
        OUTLINED_FUNCTION_78(v83, v84, v104[22]);
        v85 = OUTLINED_FUNCTION_46(19);
        v103 = 0;
        OUTLINED_FUNCTION_78(v85, v86, v104[23]);
        v87 = OUTLINED_FUNCTION_46(20);
        v103 = 0;
        v88 = v87;
        v90 = v89;
        v91 = OUTLINED_FUNCTION_79();
        v92(v91);
        v93 = (v105 + v104[24]);
        *v93 = v88;
        v93[1] = v90;
        OUTLINED_FUNCTION_140();
        __swift_destroy_boxed_opaque_existential_1(v102);
        outlined destroy of ShippingOrder();
        goto LABEL_41;
      }

      v70 = OUTLINED_FUNCTION_79();
      v71(v70);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_2_5();
      LODWORD(v95) = v72;
      HIDWORD(v95) = v72;
      *v97 = v72;
      *&v97[4] = v72;
    }
  }

  v38 = v105;
  __swift_destroy_boxed_opaque_existential_1(v102);
  if (v18)
  {
    v96 = 0;
    v39 = v38[1];

    if (v34)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v96 = 0;
    if (v34)
    {
LABEL_6:
      v40 = v38[3];

      if ((v35 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  if (!v35)
  {
LABEL_7:
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v44 = v38[5];

  if (v30)
  {
LABEL_8:
    v41 = v38[7];

    if ((v2 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v2)
  {
LABEL_9:
    v42 = v104;
    if (v12)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v45 = v38[9];

  v42 = v104;
  if (v12)
  {
LABEL_10:
    v43 = v38[11];

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v36)
  {
LABEL_11:
    if (v37)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v46 = v38[13];

  if (v37)
  {
LABEL_12:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v38 + v42[11], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((v95 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!v95)
  {
LABEL_13:
    if (HIDWORD(v95))
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v38 + v42[12], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v95 & 0x100000000) != 0)
  {
LABEL_14:
    OUTLINED_FUNCTION_112(v42[13]);
    if ((v97[0] & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!*v97)
  {
LABEL_15:
    if (*&v97[4])
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  OUTLINED_FUNCTION_112(v42[14]);
  if (v97[4])
  {
LABEL_16:
    OUTLINED_FUNCTION_112(v42[15]);
    if ((v98 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!v98)
  {
LABEL_17:
    if (v99)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v38 + v42[16], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v99)
  {
LABEL_18:
    OUTLINED_FUNCTION_112(v42[17]);
    if ((v100 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  if (!v100)
  {
LABEL_19:
    if (!v101)
    {
      goto LABEL_38;
    }

    goto LABEL_20;
  }

LABEL_37:
  OUTLINED_FUNCTION_112(v42[18]);
  if (v101)
  {
LABEL_20:
    OUTLINED_FUNCTION_112(v42[19]);
  }

LABEL_38:
  if (!v96)
  {
    if (!HIDWORD(v96))
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  OUTLINED_FUNCTION_112(v42[22]);
  if ((v96 & 0x100000000) != 0)
  {
LABEL_40:
    OUTLINED_FUNCTION_112(v42[23]);
  }

LABEL_41:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

uint64_t PreExtractedContact.init(id:contactType:contactName:contactNickname:emailAddresses:phoneNumbers:contactSharedBy:contactSharedDateTime:contactSharedAppName:links:birthday:homeAddresses:workAddresses:relationship:addresses:businessHours:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_144(a1, a2, a3, a4, a5, a6, a7, a8);
  *(a9 + 64) = v25;
  *(a9 + 80) = v27;
  *(a9 + 88) = v26;
  v28 = type metadata accessor for PreExtractedContact(0);
  OUTLINED_FUNCTION_152(a14, a9 + v28[11]);
  v29 = (a9 + v28[12]);
  *v29 = a15;
  v29[1] = a16;
  *(a9 + v28[13]) = a17;
  result = OUTLINED_FUNCTION_152(a18, a9 + v28[14]);
  *(a9 + v28[15]) = a19;
  *(a9 + v28[16]) = a20;
  v31 = (a9 + v28[17]);
  *v31 = a21;
  v31[1] = a22;
  *(a9 + v28[18]) = a23;
  *(a9 + v28[19]) = a24;
  return result;
}

uint64_t PreExtractedContact.contactSharedAppName.getter()
{
  v0 = type metadata accessor for PreExtractedContact(0);
  OUTLINED_FUNCTION_68(*(v0 + 48));
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedContact.links.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreExtractedContact(0) + 52));
}

uint64_t PreExtractedContact.homeAddresses.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreExtractedContact(0) + 60));
}

uint64_t PreExtractedContact.workAddresses.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreExtractedContact(0) + 64));
}

uint64_t PreExtractedContact.addresses.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreExtractedContact(0) + 72));
}

uint64_t PreExtractedContact.businessHours.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreExtractedContact(0) + 76));
}

void static PreExtractedContact.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v3 = OUTLINED_FUNCTION_139();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = OUTLINED_FUNCTION_62(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_42_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v97[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v20 = OUTLINED_FUNCTION_9_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_131();
  MEMORY[0x28223BE20](v23);
  v25 = &v97[-v24];
  OUTLINED_FUNCTION_130();
  v28 = v28 && v26 == v27;
  if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_62;
  }

  v29 = v0[3];
  if (v1[3])
  {
    if (!v29)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_129();
    v32 = v28 && v30 == v31;
    if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v29)
  {
    goto LABEL_62;
  }

  v33 = v0[5];
  if (v1[5])
  {
    if (!v33)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_128();
    v36 = v28 && v34 == v35;
    if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v33)
  {
    goto LABEL_62;
  }

  v37 = v0[7];
  if (v1[7])
  {
    if (!v37)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_126();
    v40 = v28 && v38 == v39;
    if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v37)
  {
    goto LABEL_62;
  }

  v41 = v1[8];
  v42 = v0[8];
  if (v41)
  {
    if (!v42 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v41, v42) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v42)
  {
    goto LABEL_62;
  }

  v43 = v1[9];
  v44 = v0[9];
  if (v43)
  {
    if (!v44 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v43, v44) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v44)
  {
    goto LABEL_62;
  }

  v45 = v1[11];
  v46 = v0[11];
  if (v45)
  {
    if (!v46)
    {
      goto LABEL_62;
    }

    v47 = v1[10] == v0[10] && v45 == v46;
    if (!v47 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v46)
  {
    goto LABEL_62;
  }

  v48 = type metadata accessor for PreExtractedContact(0);
  v49 = *(v48 + 44);
  v99 = v48;
  v100 = v49;
  v101 = *(v19 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v49, v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v100, &v101[v25], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v25);
  if (v28)
  {
    OUTLINED_FUNCTION_16_3(&v101[v25]);
    if (v28)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_64;
    }

LABEL_60:
    v51 = v25;
LABEL_61:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v51, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_62;
  }

  outlined init with copy of RentalCarReservation?(v25, v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(&v101[v25]);
  if (v50)
  {
    (*(v6 + 8))(v18, v3);
    goto LABEL_60;
  }

  (*(v6 + 32))(v11, &v101[v25], v3);
  OUTLINED_FUNCTION_0_6();
  lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v52, v53);
  v98 = dispatch thunk of static Equatable.== infix(_:_:)();
  v54 = *(v6 + 8);
  v100 = v6 + 8;
  v101 = v54;
  (v54)(v11, v3);
  (v101)(v18, v3);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v98 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  v55 = v99;
  v56 = v99[12];
  OUTLINED_FUNCTION_10_3();
  if (v59)
  {
    if (!v57)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_25_2(v58);
    v62 = v28 && v60 == v61;
    if (!v62 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v57)
  {
    goto LABEL_62;
  }

  v63 = OUTLINED_FUNCTION_132(v55[13]);
  if (v63)
  {
    if (!v64 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v63, v64) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v64)
  {
    goto LABEL_62;
  }

  v65 = v55[14];
  v66 = *(v19 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v65, v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v65, v2 + v66, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v2);
  if (!v28)
  {
    v67 = OUTLINED_FUNCTION_148();
    outlined init with copy of RentalCarReservation?(v67, v68, v69, v70);
    OUTLINED_FUNCTION_16_3(v2 + v66);
    if (!v71)
    {
      v75 = OUTLINED_FUNCTION_146(v6);
      v76(v75);
      OUTLINED_FUNCTION_0_6();
      lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v77, v78);
      v79 = OUTLINED_FUNCTION_151();
      v80 = *(v6 + 8);
      v80(v11, v3);
      v81 = OUTLINED_FUNCTION_120();
      (v80)(v81);
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v79 & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_88;
    }

    v72 = *(v6 + 8);
    v73 = OUTLINED_FUNCTION_120();
    v74(v73);
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_16_3(v2 + v66);
  if (!v28)
  {
LABEL_86:
    v51 = v2;
    goto LABEL_61;
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_88:
  v82 = OUTLINED_FUNCTION_132(v99[15]);
  if (v82)
  {
    if (!v83 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v82, v83) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v83)
  {
    goto LABEL_62;
  }

  v84 = OUTLINED_FUNCTION_132(v99[16]);
  if (v84)
  {
    if (!v85 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v84, v85) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v85)
  {
    goto LABEL_62;
  }

  v86 = v99[17];
  OUTLINED_FUNCTION_10_3();
  if (v89)
  {
    if (!v87)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_25_2(v88);
    v92 = v28 && v90 == v91;
    if (!v92 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v87)
  {
    goto LABEL_62;
  }

  v93 = OUTLINED_FUNCTION_132(v99[18]);
  if (v93)
  {
    if (!v94 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v93, v94) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v94)
  {
    goto LABEL_62;
  }

  v95 = OUTLINED_FUNCTION_132(v99[19]);
  if (v95 && v96)
  {
    _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v95, v96);
  }

LABEL_62:
  OUTLINED_FUNCTION_42_0();
}

uint64_t PreExtractedContact.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x54746361746E6F63 && a2 == 0xEB00000000657079;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4E746361746E6F63 && a2 == 0xEF656D616E6B6369;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6464416C69616D65 && a2 == 0xEE00736573736572;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x53746361746E6F63 && a2 == 0xEF79426465726168;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x800000025DCEAF10 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x800000025DCEAF30 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x736B6E696CLL && a2 == 0xE500000000000000;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7961646874726962 && a2 == 0xE800000000000000;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x72646441656D6F68 && a2 == 0xED00007365737365;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x726464416B726F77 && a2 == 0xED00007365737365;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6573736572646461 && a2 == 0xE900000000000073;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x7373656E69737562 && a2 == 0xED00007372756F48)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

uint64_t PreExtractedContact.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x54746361746E6F63;
      break;
    case 2:
      result = 0x4E746361746E6F63;
      break;
    case 3:
      result = 0x4E746361746E6F63;
      break;
    case 4:
      result = 0x6464416C69616D65;
      break;
    case 5:
      result = 0x6D754E656E6F6870;
      break;
    case 6:
      result = 0x53746361746E6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x736B6E696CLL;
      break;
    case 10:
      result = 0x7961646874726962;
      break;
    case 11:
      v3 = 1701670760;
      goto LABEL_7;
    case 12:
      v3 = 1802661751;
LABEL_7:
      result = v3 | 0x7264644100000000;
      break;
    case 13:
      result = 0x6E6F6974616C6572;
      break;
    case 14:
      result = 0x6573736572646461;
      break;
    case 15:
      result = 0x7373656E69737562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PreExtractedContact.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PreExtractedContact.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PreExtractedContact.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PreExtractedContact.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PreExtractedContact.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PreExtractedContact.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PreExtractedContact.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_124();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes19PreExtractedContactV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes19PreExtractedContactV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_87();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_21_2();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_21_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_21_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v1[6];
    v13 = v1[7];
    OUTLINED_FUNCTION_21_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = v1[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_57();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24 = v1[9];
    OUTLINED_FUNCTION_23_2(5);
    v14 = v1[10];
    v15 = v1[11];
    OUTLINED_FUNCTION_21_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = type metadata accessor for PreExtractedContact(0);
    v22 = v21[11];
    OUTLINED_FUNCTION_142();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_6();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v16, v17);
    OUTLINED_FUNCTION_57();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v21[12]);
    OUTLINED_FUNCTION_21_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_135(v21[13]);
    OUTLINED_FUNCTION_23_2(9);
    v18 = v21[14];
    OUTLINED_FUNCTION_57();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_135(v21[15]);
    OUTLINED_FUNCTION_23_2(11);
    OUTLINED_FUNCTION_135(v21[16]);
    OUTLINED_FUNCTION_23_2(12);
    OUTLINED_FUNCTION_70(v21[17]);
    OUTLINED_FUNCTION_21_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_135(v21[18]);
    OUTLINED_FUNCTION_23_2(14);
    OUTLINED_FUNCTION_135(v21[19]);
    OUTLINED_FUNCTION_23_2(15);
  }

  v19 = OUTLINED_FUNCTION_123();
  v20(v19);
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

void PreExtractedContact.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_36();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = OUTLINED_FUNCTION_62(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_42_1();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v84[-v23];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes19PreExtractedContactV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes19PreExtractedContactV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1(v91);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  v31 = &v84[-v30];
  v94 = type metadata accessor for PreExtractedContact(0);
  v32 = OUTLINED_FUNCTION_9_1(v94);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12_2();
  v92 = v35;
  v36 = v12[3];
  v37 = v12[4];
  v86 = v12;
  v38 = __swift_project_boxed_opaque_existential_1(v12, v36);
  lazy protocol witness table accessor for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    v93 = v10;
    OUTLINED_FUNCTION_111();
    v41 = 0;
    LODWORD(v21) = 0;
    LODWORD(v31) = 0;
    OUTLINED_FUNCTION_19_2();
  }

  else
  {
    v36 = v24;
    v89 = v14;
    v39 = v26;
    LOBYTE(a10) = 0;
    v26 = v91;
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    v54 = v92;
    *v92 = v40;
    v54[1] = v55;
    OUTLINED_FUNCTION_44_1(1);
    LODWORD(v37) = v39;
    v54[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v54[3] = v56;
    OUTLINED_FUNCTION_44_1(2);
    v54[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v54[5] = v57;
    OUTLINED_FUNCTION_44_1(3);
    v54[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v54[7] = v58;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    HIBYTE(v95) = 4;
    v60 = OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    v87 = v59;
    v88 = v60;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v54[8] = a10;
    OUTLINED_FUNCTION_38_1(5);
    OUTLINED_FUNCTION_119();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v54[9] = a10;
    OUTLINED_FUNCTION_44_1(6);
    v54[10] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v54[11] = v61;
    v62 = type metadata accessor for Date();
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_0_6();
    v65 = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v63, v64);
    v90 = v62;
    *&v85[4] = v65;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of Date?(v36, v54 + v94[11], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_44_1(8);
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v93 = 0;
    OUTLINED_FUNCTION_143(v66, v67, v94[12]);
    OUTLINED_FUNCTION_38_1(9);
    OUTLINED_FUNCTION_119();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v93 = 0;
    OUTLINED_FUNCTION_147();
    *(v92 + *(v68 + 52)) = v69;
    v38 = v31;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v93 = 0;
    outlined init with take of Date?(v21, v92 + v94[14], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_38_1(11);
    OUTLINED_FUNCTION_119();
    v70 = v93;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v93 = v70;
    if (!v70)
    {
      OUTLINED_FUNCTION_147();
      *(v92 + *(v74 + 60)) = v75;
      OUTLINED_FUNCTION_38_1(12);
      OUTLINED_FUNCTION_119();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      LODWORD(v90) = 1;
      v93 = 0;
      OUTLINED_FUNCTION_147();
      *(v92 + *(v76 + 64)) = v77;
      LOBYTE(a10) = 13;
      v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v93 = 0;
      OUTLINED_FUNCTION_78(v78, v79, v94[17]);
      OUTLINED_FUNCTION_38_1(14);
      OUTLINED_FUNCTION_119();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v93 = 0;
      OUTLINED_FUNCTION_147();
      *(v92 + *(v80 + 72)) = v81;
      OUTLINED_FUNCTION_38_1(15);
      OUTLINED_FUNCTION_119();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v93 = 0;
      v82 = OUTLINED_FUNCTION_56();
      v83(v82);
      *(v92 + v94[19]) = a10;
      OUTLINED_FUNCTION_140();
      __swift_destroy_boxed_opaque_existential_1(v86);
      outlined destroy of ShippingOrder();
      goto LABEL_34;
    }

    v71 = OUTLINED_FUNCTION_56();
    v72(v71);
    OUTLINED_FUNCTION_59();
    v41 = 1;
    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_75();
    LODWORD(v89) = v73;
    LODWORD(v91) = v73;
  }

  v42 = v92;
  __swift_destroy_boxed_opaque_existential_1(v86);
  if (v38)
  {
    LODWORD(v90) = 0;
    *v85 = 0;
    v43 = v42[1];

    v44 = v94;
    if (v26)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *v85 = 0;
    LODWORD(v90) = 0;
    v44 = v94;
    if (v26)
    {
LABEL_6:
      v45 = v42[3];

      if ((v41 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  if (!v41)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v49 = v42[5];

  if (v21)
  {
LABEL_8:
    v46 = v42[7];

    if ((v31 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if (!v31)
  {
LABEL_9:
    if (v37)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v50 = v42[8];

  if (v37)
  {
LABEL_10:
    v47 = v42[9];

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (!v36)
  {
LABEL_11:
    if (v87)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v51 = v42[11];

  if (v87)
  {
LABEL_12:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v42 + v44[11], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((v88 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v88)
  {
LABEL_13:
    if (v89)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  OUTLINED_FUNCTION_112(v44[12]);
  if (v89)
  {
LABEL_14:
    v48 = *(v42 + v44[13]);

    if ((v91 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_29:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v42 + v44[14], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_30;
  }

LABEL_28:
  if (v91)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (!v90)
  {
    if (!*v85)
    {
      goto LABEL_32;
    }

LABEL_17:
    OUTLINED_FUNCTION_112(v44[17]);
    if ((v85[4] & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v52 = *(v42 + v44[16]);

  if (v85[0])
  {
    goto LABEL_17;
  }

LABEL_32:
  if (*&v85[4])
  {
LABEL_33:
    v53 = *(v42 + v44[18]);
  }

LABEL_34:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

__n128 PreExtractedBreadcrumb.init(id:extractedDatesValues:extractedLocationsValues:extractedPhoneNumbersLabels:extractedPhoneNumbersCountryCodes:extractedAddressesLabels:extractedFlightsLabels:extractedLinksLabels:extractedTrackingNumbersLabels:extractedCurrenciesValues:extractedEmailsLabels:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t PreExtractedBreadcrumb.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_38();
}

uint64_t static PreExtractedBreadcrumb.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v26 = a1[8];
  v24 = a1[9];
  v20 = a1[11];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v27 = a2[7];
  v28 = a1[7];
  v25 = a2[8];
  v22 = a1[10];
  v23 = a2[9];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v21 = a2[10];
  v19 = a2[11];
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DateV_Tt1g5(v2, v8);

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v14 = OUTLINED_FUNCTION_148();
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v14, v15) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v9 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v6, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v5)
  {
    if (!v11)
    {
      return 0;
    }

    v16 = OUTLINED_FUNCTION_38();
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v16, v17) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v28)
  {
    if (!v27 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v28, v27) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  if (v26)
  {
    if (!v25 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v26, v25) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (v24)
  {
    if (!v23 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v24, v23) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v22)
  {
    if (!v21 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v22, v21) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v20)
  {
    if (v19 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v20, v19) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v19)
  {
    return 1;
  }

  return 0;
}

uint64_t PreExtractedBreadcrumb.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000025DCEAF50 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x800000025DCEAF70 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x800000025DCEAF90 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000021 && 0x800000025DCEAFB0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x800000025DCEAFE0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x800000025DCEB000 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x800000025DCEB020 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001ELL && 0x800000025DCEB040 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000019 && 0x800000025DCEB060 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000015 && 0x800000025DCEB080 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t PreExtractedBreadcrumb.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
    case 5:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PreExtractedBreadcrumb.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PreExtractedBreadcrumb.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PreExtractedBreadcrumb.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PreExtractedBreadcrumb.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PreExtractedBreadcrumb.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes22PreExtractedBreadcrumbV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes22PreExtractedBreadcrumbV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47();
  v12 = *v0;
  v11 = v0[1];
  v22 = v0[3];
  v23 = v0[2];
  v20 = v0[5];
  v21 = v0[4];
  v18 = v0[7];
  v19 = v0[6];
  v16 = v0[9];
  v17 = v0[8];
  v14 = v0[11];
  v15 = v0[10];
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys();
  OUTLINED_FUNCTION_117();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
    lazy protocol witness table accessor for type [Date] and conformance <A> [A](&lazy protocol witness table cache variable for type [Date] and conformance <A> [A], &lazy protocol witness table cache variable for type Date and conformance Date);
    OUTLINED_FUNCTION_40_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_40_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_40_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_20_2(4);
    OUTLINED_FUNCTION_20_2(5);
    OUTLINED_FUNCTION_20_2(6);
    OUTLINED_FUNCTION_20_2(7);
    OUTLINED_FUNCTION_20_2(8);
    OUTLINED_FUNCTION_20_2(9);
    OUTLINED_FUNCTION_20_2(10);
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_35();
}

void PreExtractedBreadcrumb.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_36();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes22PreExtractedBreadcrumbV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes22PreExtractedBreadcrumbV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  v20 = v13[3];
  v21 = __swift_project_boxed_opaque_existential_1(v13, v20);
  lazy protocol witness table accessor for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys();
  OUTLINED_FUNCTION_117();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v10)
  {
    LOBYTE(v42[0]) = 0;
    OUTLINED_FUNCTION_86();
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
    lazy protocol witness table accessor for type [Date] and conformance <A> [A](&lazy protocol witness table cache variable for type [Date] and conformance <A> [A], &lazy protocol witness table cache variable for type Date and conformance Date);
    OUTLINED_FUNCTION_86();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v38 = v42[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    LOBYTE(v41[0]) = 2;
    OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_24_1();
    *(v25 - 256) = v24;
    OUTLINED_FUNCTION_86();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = v42[0];
    OUTLINED_FUNCTION_9_3(3);
    v36 = v42[0];
    OUTLINED_FUNCTION_9_3(4);
    v35 = v42[0];
    OUTLINED_FUNCTION_9_3(5);
    v34 = v42[0];
    OUTLINED_FUNCTION_9_3(6);
    v33 = v42[0];
    OUTLINED_FUNCTION_9_3(7);
    v32 = v42[0];
    OUTLINED_FUNCTION_9_3(8);
    v31 = v42[0];
    OUTLINED_FUNCTION_9_3(9);
    v30 = v42[0];
    v43 = 10;
    OUTLINED_FUNCTION_24_1();
    v27 = *(v26 - 256);
    OUTLINED_FUNCTION_86();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = OUTLINED_FUNCTION_36_1();
    v29(v28);
    v41[0] = v22;
    v41[1] = v39;
    v41[2] = v38;
    v41[3] = v42[0];
    v41[4] = v42[0];
    v41[5] = v42[0];
    v41[6] = v42[0];
    v41[7] = v42[0];
    v41[8] = v42[0];
    v41[9] = v42[0];
    v41[10] = v42[0];
    v41[11] = a10;
    memcpy(v15, v41, 0x60uLL);
    outlined init with copy of PreExtractedBreadcrumb(v41, v42);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v42[0] = v22;
    v42[1] = v39;
    v42[2] = v38;
    v42[3] = v37;
    v42[4] = v36;
    v42[5] = v35;
    v42[6] = v34;
    v42[7] = v33;
    v42[8] = v32;
    v42[9] = v31;
    v42[10] = v30;
    v42[11] = a10;
    outlined destroy of PreExtractedBreadcrumb(v42);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_104();
  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_133();
  if (v21)
  {

    if (v16)
    {
      goto LABEL_13;
    }

LABEL_5:
    if (!v15)
    {
      goto LABEL_14;
    }

LABEL_6:

    if (v20)
    {
      goto LABEL_15;
    }

LABEL_7:
    if (!v11)
    {
      goto LABEL_9;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!v16)
  {
    goto LABEL_5;
  }

LABEL_13:

  if (v15)
  {
    goto LABEL_6;
  }

LABEL_14:
  if (!v20)
  {
    goto LABEL_7;
  }

LABEL_15:

  if (v11)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v40)
  {
  }

LABEL_18:
  OUTLINED_FUNCTION_35();
}

uint64_t PreExtractedSharedLink.init(id:type:subType:name:url:urlDescription:artist:album:publishedDate:releaseDate:lengthInSeconds:musicalGenre:curator:episode:podcastName:summary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_144(a1, a2, a3, a4, a5, a6, a7, a8);
  v31 = type metadata accessor for PreExtractedSharedLink(0);
  outlined init with take of Date?(a10, a9 + v31[8], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v32 = (a9 + v31[9]);
  *v32 = a11;
  v32[1] = a12;
  v33 = (a9 + v31[10]);
  *v33 = a13;
  v33[1] = a14;
  v34 = (a9 + v31[11]);
  *v34 = a15;
  v34[1] = a16;
  OUTLINED_FUNCTION_152(a17, a9 + v31[12]);
  result = OUTLINED_FUNCTION_152(a18, a9 + v31[13]);
  v36 = a9 + v31[14];
  *v36 = a19;
  *(v36 + 8) = a20 & 1;
  v37 = (a9 + v31[15]);
  *v37 = a21;
  v37[1] = a22;
  v38 = (a9 + v31[16]);
  *v38 = a23;
  v38[1] = a24;
  v39 = (a9 + v31[17]);
  *v39 = a25;
  v39[1] = a26;
  v40 = (a9 + v31[18]);
  *v40 = a27;
  v40[1] = a28;
  v41 = (a9 + v31[19]);
  *v41 = a29;
  v41[1] = a30;
  return result;
}

uint64_t PreExtractedSharedLink.urlDescription.getter()
{
  v0 = type metadata accessor for PreExtractedSharedLink(0);
  OUTLINED_FUNCTION_68(*(v0 + 36));
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedSharedLink.artist.getter()
{
  v0 = type metadata accessor for PreExtractedSharedLink(0);
  OUTLINED_FUNCTION_68(*(v0 + 40));
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedSharedLink.album.getter()
{
  v0 = type metadata accessor for PreExtractedSharedLink(0);
  OUTLINED_FUNCTION_68(*(v0 + 44));
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedSharedLink.lengthInSeconds.getter()
{
  v1 = (v0 + *(type metadata accessor for PreExtractedSharedLink(0) + 56));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t PreExtractedSharedLink.curator.getter()
{
  v0 = type metadata accessor for PreExtractedSharedLink(0);
  OUTLINED_FUNCTION_68(*(v0 + 64));
  return OUTLINED_FUNCTION_38();
}

void static PreExtractedSharedLink.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v3 = OUTLINED_FUNCTION_139();
  v4 = OUTLINED_FUNCTION_1(v3);
  v168 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_2();
  v165 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = OUTLINED_FUNCTION_62(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42_1();
  v164 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v167 = &v162 - v16;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v17 = OUTLINED_FUNCTION_9_1(v169);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_42_1();
  v166 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v162 - v23;
  v25 = type metadata accessor for URL();
  v26 = OUTLINED_FUNCTION_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_1();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_130();
  v44 = v44 && v42 == v43;
  if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_43;
  }

  v45 = v0[3];
  if (v1[3])
  {
    if (!v45)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_129();
    v48 = v44 && v46 == v47;
    if (!v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v45)
  {
    goto LABEL_43;
  }

  v49 = v0[5];
  if (v1[5])
  {
    if (!v49)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_128();
    v52 = v44 && v50 == v51;
    if (!v52 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v49)
  {
    goto LABEL_43;
  }

  v53 = v0[7];
  if (v1[7])
  {
    if (!v53)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_126();
    v56 = v44 && v54 == v55;
    if (!v56 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v53)
  {
    goto LABEL_43;
  }

  v162 = v3;
  v163 = type metadata accessor for PreExtractedSharedLink(0);
  v57 = v163[8];
  v58 = *(v38 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v57, v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v57, v2 + v58, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_16_3(v2);
  if (v44)
  {
    OUTLINED_FUNCTION_16_3(v2 + v58);
    if (v44)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_45;
    }

LABEL_41:
    v67 = &_s10Foundation3URLVSg_ADtMd;
    v68 = &_s10Foundation3URLVSg_ADtMR;
    v69 = v2;
LABEL_42:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v69, v67, v68);
    goto LABEL_43;
  }

  v59 = OUTLINED_FUNCTION_148();
  outlined init with copy of RentalCarReservation?(v59, v60, v61, v62);
  OUTLINED_FUNCTION_16_3(v2 + v58);
  if (v63)
  {
    v64 = *(v28 + 8);
    v65 = OUTLINED_FUNCTION_120();
    v66(v65);
    goto LABEL_41;
  }

  v70 = OUTLINED_FUNCTION_146(v28);
  v71(v70);
  OUTLINED_FUNCTION_37_1();
  lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v72, v73);
  v74 = OUTLINED_FUNCTION_151();
  v75 = *(v28 + 8);
  v75(v33, v25);
  v76 = OUTLINED_FUNCTION_120();
  (v75)(v76);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((v74 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_45:
  v77 = v163;
  v78 = v163[9];
  OUTLINED_FUNCTION_10_3();
  if (v81)
  {
    v82 = v162;
    if (!v79)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25_2(v80);
    v85 = v44 && v83 == v84;
    if (!v85 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v82 = v162;
    if (v79)
    {
      goto LABEL_43;
    }
  }

  v86 = v77[10];
  OUTLINED_FUNCTION_10_3();
  if (v89)
  {
    if (!v87)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25_2(v88);
    v92 = v44 && v90 == v91;
    if (!v92 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v87)
  {
    goto LABEL_43;
  }

  v93 = v77[11];
  OUTLINED_FUNCTION_10_3();
  if (v96)
  {
    if (!v94)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25_2(v95);
    v99 = v44 && v97 == v98;
    if (!v99 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v94)
  {
    goto LABEL_43;
  }

  v100 = v77[12];
  v101 = *(v169 + 48);
  OUTLINED_FUNCTION_153(v1 + v100, v24);
  OUTLINED_FUNCTION_153(v0 + v100, &v24[v101]);
  OUTLINED_FUNCTION_66(v24, 1, v82);
  if (v44)
  {
    OUTLINED_FUNCTION_66(&v24[v101], 1, v82);
    if (v44)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  v102 = v167;
  outlined init with copy of RentalCarReservation?(v24, v167, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_66(&v24[v101], 1, v82);
  if (v103)
  {
    (*(v168 + 8))(v102, v82);
LABEL_80:
    v67 = &_s10Foundation4DateVSg_ADtMd;
    v68 = &_s10Foundation4DateVSg_ADtMR;
    v69 = v24;
    goto LABEL_42;
  }

  v104 = v168;
  v105 = v165;
  (*(v168 + 32))(v165, &v24[v101], v82);
  OUTLINED_FUNCTION_0_6();
  lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v106, v107);
  v108 = dispatch thunk of static Equatable.== infix(_:_:)();
  v109 = *(v104 + 8);
  v109(v105, v82);
  v109(v102, v82);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v108 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_82:
  v110 = v77[13];
  v111 = *(v169 + 48);
  v112 = v166;
  OUTLINED_FUNCTION_153(v1 + v110, v166);
  OUTLINED_FUNCTION_153(v0 + v110, v112 + v111);
  OUTLINED_FUNCTION_66(v112, 1, v82);
  if (v44)
  {
    OUTLINED_FUNCTION_66(v112 + v111, 1, v82);
    if (v44)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v112, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  v113 = v164;
  outlined init with copy of RentalCarReservation?(v112, v164, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_66(v112 + v111, 1, v82);
  if (v114)
  {
    (*(v168 + 8))(v113, v82);
LABEL_90:
    v67 = &_s10Foundation4DateVSg_ADtMd;
    v68 = &_s10Foundation4DateVSg_ADtMR;
    v69 = v112;
    goto LABEL_42;
  }

  v115 = v168;
  v116 = v112 + v111;
  v117 = v165;
  (*(v168 + 32))(v165, v116, v82);
  OUTLINED_FUNCTION_0_6();
  lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v118, v119);
  v120 = dispatch thunk of static Equatable.== infix(_:_:)();
  v121 = *(v115 + 8);
  v121(v117, v82);
  v121(v113, v82);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v112, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v77 = v163;
  if ((v120 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_92:
  v122 = v77[14];
  v123 = (v1 + v122);
  v124 = *(v1 + v122 + 8);
  v125 = (v0 + v122);
  v126 = *(v0 + v122 + 8);
  if (v124)
  {
    if (!v126)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (*v123 != *v125)
    {
      LOBYTE(v126) = 1;
    }

    if (v126)
    {
      goto LABEL_43;
    }
  }

  v127 = v77[15];
  OUTLINED_FUNCTION_10_3();
  if (v130)
  {
    if (!v128)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25_2(v129);
    v133 = v44 && v131 == v132;
    if (!v133 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v128)
  {
    goto LABEL_43;
  }

  v134 = v163[16];
  OUTLINED_FUNCTION_10_3();
  if (v137)
  {
    if (!v135)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25_2(v136);
    v140 = v44 && v138 == v139;
    if (!v140 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v135)
  {
    goto LABEL_43;
  }

  v141 = v163[17];
  OUTLINED_FUNCTION_10_3();
  if (v144)
  {
    if (!v142)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25_2(v143);
    v147 = v44 && v145 == v146;
    if (!v147 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v142)
  {
    goto LABEL_43;
  }

  v148 = v163[18];
  OUTLINED_FUNCTION_10_3();
  if (v151)
  {
    if (!v149)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25_2(v150);
    v154 = v44 && v152 == v153;
    if (!v154 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v149)
  {
    goto LABEL_43;
  }

  v155 = v163[19];
  OUTLINED_FUNCTION_10_3();
  if (v158 && v156)
  {
    OUTLINED_FUNCTION_25_2(v157);
    if (!v44 || v159 != v160)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_43:
  OUTLINED_FUNCTION_42_0();
}

uint64_t PreExtractedSharedLink.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65707954627573 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701667182 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 7107189 && a2 == 0xE300000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72637365446C7275 && a2 == 0xEE006E6F69747069;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6D75626C61 && a2 == 0xE500000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x656873696C627570 && a2 == 0xED00006574614464;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E496874676E656CLL && a2 == 0xEF73646E6F636553;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x476C61636973756DLL && a2 == 0xEC00000065726E65;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x726F7461727563 && a2 == 0xE700000000000000;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x65646F73697065 && a2 == 0xE700000000000000;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x4E74736163646F70 && a2 == 0xEB00000000656D61;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

uint64_t PreExtractedSharedLink.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      v3 = 0x707954627573;
      goto LABEL_14;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 7107189;
      break;
    case 5:
      result = 0x72637365446C7275;
      break;
    case 6:
      result = 0x747369747261;
      break;
    case 7:
      result = 0x6D75626C61;
      break;
    case 8:
      result = 0x656873696C627570;
      break;
    case 9:
      result = 0x44657361656C6572;
      break;
    case 10:
      result = 0x6E496874676E656CLL;
      break;
    case 11:
      result = 0x476C61636973756DLL;
      break;
    case 12:
      result = 0x726F7461727563;
      break;
    case 13:
      v3 = 0x646F73697065;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 14:
      result = 0x4E74736163646F70;
      break;
    case 15:
      result = 0x7972616D6D7573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PreExtractedSharedLink.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PreExtractedSharedLink.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PreExtractedSharedLink.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PreExtractedSharedLink.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PreExtractedSharedLink.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_124();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes22PreExtractedSharedLinkV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes22PreExtractedSharedLinkV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_87();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_7_4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_1_5(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_1_5(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v1[6];
    v13 = v1[7];
    OUTLINED_FUNCTION_1_5(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = type metadata accessor for PreExtractedSharedLink(0);
    v15 = v14[8];
    type metadata accessor for URL();
    OUTLINED_FUNCTION_37_1();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v16, v17);
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_57();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v14[9]);
    OUTLINED_FUNCTION_1_5(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v14[10]);
    OUTLINED_FUNCTION_1_5(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v14[11]);
    OUTLINED_FUNCTION_1_5(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v14[12];
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_6();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v19, v20);
    OUTLINED_FUNCTION_43_1();
    v21 = v14[13];
    OUTLINED_FUNCTION_43_1();
    v22 = v1 + v14[14];
    v23 = *v22;
    v24 = v22[8];
    OUTLINED_FUNCTION_1_5(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v14[15]);
    OUTLINED_FUNCTION_1_5(11);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v14[16]);
    OUTLINED_FUNCTION_1_5(12);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v14[17]);
    OUTLINED_FUNCTION_1_5(13);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v14[18]);
    OUTLINED_FUNCTION_1_5(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v14[19]);
    OUTLINED_FUNCTION_1_5(15);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v25 = OUTLINED_FUNCTION_123();
  v26(v25);
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

void PreExtractedSharedLink.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v3 = v2;
  v85 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = OUTLINED_FUNCTION_62(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42_1();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = (&v82 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes22PreExtractedSharedLinkV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes22PreExtractedSharedLinkV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1(v88);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  v91 = type metadata accessor for PreExtractedSharedLink(0);
  v26 = OUTLINED_FUNCTION_9_1(v91);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_2();
  v89 = v29;
  v31 = v3[3];
  v30 = v3[4];
  v87 = v3;
  v32 = __swift_project_boxed_opaque_existential_1(v3, v31);
  lazy protocol witness table accessor for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys();
  v86 = v1;
  OUTLINED_FUNCTION_117();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    v90 = v0;
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_27_1();
  }

  else
  {
    v84 = v14;
    LODWORD(v30) = v22;
    v32 = v86;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = v89;
    *v89 = v33;
    v40[1] = v41;
    OUTLINED_FUNCTION_61(1);
    LODWORD(v31) = v22;
    v40[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40[3] = v42;
    OUTLINED_FUNCTION_61(2);
    v40[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40[5] = v43;
    OUTLINED_FUNCTION_61(3);
    v40[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40[7] = v44;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_37_1();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v45, v46);
    OUTLINED_FUNCTION_127();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v14 = v91;
    outlined init with take of Date?(v20, v40 + v91[8], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_61(5);
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_143(v47, v48, v14[9]);
    OUTLINED_FUNCTION_61(6);
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_143(v49, v50, v14[10]);
    OUTLINED_FUNCTION_61(7);
    LODWORD(v1) = 0;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_143(v51, v52, v14[11]);
    LOBYTE(v14) = type metadata accessor for Date();
    OUTLINED_FUNCTION_0_6();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v53, v54);
    v20 = v84;
    OUTLINED_FUNCTION_127();
    v83 = v55;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v90 = 0;
    outlined init with take of Date?(v20, v40 + v91[12], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_127();
    v56 = v90;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v90 = v56;
    if (v56)
    {
      v57 = OUTLINED_FUNCTION_64();
      v58(v57);
      LODWORD(v88) = 0;
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_48();
      LODWORD(v86) = v59;
    }

    else
    {
      outlined init with take of Date?(v11, v89 + v91[13], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      OUTLINED_FUNCTION_39_1(10);
      v60 = v90;
      v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v90 = v60;
      if (!v60)
      {
        v63 = v89 + v91[14];
        *v63 = v61;
        v63[8] = v62 & 1;
        OUTLINED_FUNCTION_39_1(11);
        v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v90 = 0;
        OUTLINED_FUNCTION_78(v64, v68, v91[15]);
        OUTLINED_FUNCTION_39_1(12);
        v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v90 = 0;
        OUTLINED_FUNCTION_78(v69, v70, v91[16]);
        OUTLINED_FUNCTION_39_1(13);
        v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v90 = 0;
        OUTLINED_FUNCTION_78(v71, v72, v91[17]);
        OUTLINED_FUNCTION_39_1(14);
        v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v90 = 0;
        OUTLINED_FUNCTION_78(v73, v74, v91[18]);
        OUTLINED_FUNCTION_39_1(15);
        v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v90 = 0;
        v76 = v75;
        v78 = v77;
        v79 = OUTLINED_FUNCTION_64();
        v80(v79);
        v81 = (v89 + v91[19]);
        *v81 = v76;
        v81[1] = v78;
        OUTLINED_FUNCTION_140();
        __swift_destroy_boxed_opaque_existential_1(v87);
        outlined destroy of ShippingOrder();
        goto LABEL_29;
      }

      v65 = OUTLINED_FUNCTION_64();
      v66(v65);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_48();
      LODWORD(v86) = v67;
      LODWORD(v88) = v67;
    }
  }

  v34 = v89;
  __swift_destroy_boxed_opaque_existential_1(v87);
  if (v14)
  {
    OUTLINED_FUNCTION_97();
    v35 = v34[1];

    if (v20)
    {
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v84) = 0;
    LODWORD(v83) = 0;
    if (v20)
    {
LABEL_6:
      v36 = v34[3];

      if ((v30 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  if (!v30)
  {
LABEL_7:
    if (v11)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v39 = v34[5];

  if (v11)
  {
LABEL_8:
    v37 = v34[7];

    if ((v32 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  if (!v32)
  {
LABEL_9:
    v38 = v91;
    if (v1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v38 = v91;
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v34 + v91[8], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v1)
  {
LABEL_10:
    OUTLINED_FUNCTION_112(v38[9]);
    if ((v31 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  if (!v31)
  {
LABEL_11:
    if (v85)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  OUTLINED_FUNCTION_112(v38[10]);
  if (v85)
  {
LABEL_12:
    OUTLINED_FUNCTION_112(v38[11]);
    if ((v86 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (!v86)
  {
LABEL_13:
    if (!v88)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

LABEL_25:
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v34 + v38[12], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v88)
  {
LABEL_14:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v34 + v38[13], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_26:
  if (!v83)
  {
    if (!v84)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_112(v38[17]);
  if (v84)
  {
LABEL_28:
    OUTLINED_FUNCTION_112(v38[18]);
  }

LABEL_29:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

uint64_t outlined destroy of ShippingOrder()
{
  v1 = OUTLINED_FUNCTION_71();
  v3 = v2(v1);
  OUTLINED_FUNCTION_9_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t outlined init with take of ShippingOrder(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_9_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_38();
  v8(v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of PartialExtractedAttributes(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_9_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_38();
  v8(v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Date] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
    OUTLINED_FUNCTION_0_6();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_114(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_38();
  v9(v8);
  return v4;
}

uint64_t outlined init with copy of RentalCarReservation?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_114(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_38();
  v9(v8);
  return v4;
}

uint64_t outlined destroy of (RentalCarReservation?, RentalCarReservation?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PartialExtractedAttributes(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PartialExtractedAttributes and conformance PartialExtractedAttributes, type metadata accessor for PartialExtractedAttributes);
  a1[2] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PartialExtractedAttributes and conformance PartialExtractedAttributes, type metadata accessor for PartialExtractedAttributes);
  result = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PartialExtractedAttributes and conformance PartialExtractedAttributes, type metadata accessor for PartialExtractedAttributes);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedCard(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedCard and conformance PreExtractedCard, type metadata accessor for PreExtractedCard);
  a1[2] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedCard and conformance PreExtractedCard, type metadata accessor for PreExtractedCard);
  result = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedCard and conformance PreExtractedCard, type metadata accessor for PreExtractedCard);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedContact(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedContact and conformance PreExtractedContact, type metadata accessor for PreExtractedContact);
  a1[2] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedContact and conformance PreExtractedContact, type metadata accessor for PreExtractedContact);
  result = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedContact and conformance PreExtractedContact, type metadata accessor for PreExtractedContact);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PreExtractedBreadcrumb(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb();
  a1[2] = lazy protocol witness table accessor for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb();
  result = lazy protocol witness table accessor for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb()
{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedSharedLink(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedSharedLink and conformance PreExtractedSharedLink, type metadata accessor for PreExtractedSharedLink);
  a1[2] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedSharedLink and conformance PreExtractedSharedLink, type metadata accessor for PreExtractedSharedLink);
  result = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedSharedLink and conformance PreExtractedSharedLink, type metadata accessor for PreExtractedSharedLink);
  a1[3] = result;
  return result;
}

void type metadata completion function for PartialExtractedAttributes()
{
  type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for RentalCarReservation?, type metadata accessor for RentalCarReservation);
  if (v0 <= 0x3F)
  {
    type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for TicketedTransportation?, type metadata accessor for TicketedTransportation);
    if (v1 <= 0x3F)
    {
      type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for TicketedShow?, type metadata accessor for TicketedShow);
      if (v2 <= 0x3F)
      {
        type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for Appointment?, type metadata accessor for Appointment);
        if (v3 <= 0x3F)
        {
          type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for Party?, type metadata accessor for Party);
          if (v4 <= 0x3F)
          {
            type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for Trip?, type metadata accessor for Trip);
            if (v5 <= 0x3F)
            {
              type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for FlightReservation?, type metadata accessor for FlightReservation);
              if (v6 <= 0x3F)
              {
                type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for HotelReservation?, type metadata accessor for HotelReservation);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for RestaurantReservation?, type metadata accessor for RestaurantReservation);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for ShippingOrder?, type metadata accessor for ShippingOrder);
                    if (v9 <= 0x3F)
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
    }
  }
}

uint64_t type metadata completion function for PreExtractedCard()
{
  type metadata accessor for Data?(319, &lazy cache variable for type metadata for String?);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v4 > 0x3F)
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

uint64_t __swift_get_extra_inhabitant_index_8Tm()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = OUTLINED_FUNCTION_118(*(v3 + 44));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_9Tm()
{
  OUTLINED_FUNCTION_99();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v5 = OUTLINED_FUNCTION_118(*(v4 + 44));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t type metadata completion function for PreExtractedContact()
{
  type metadata accessor for Data?(319, &lazy cache variable for type metadata for String?);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for [String]?();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void type metadata accessor for [String]?()
{
  if (!lazy cache variable for type metadata for [String]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]?);
    }
  }
}

uint64_t getEnumTagSinglePayload for PreExtractedBreadcrumb(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for PreExtractedBreadcrumb(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for PreExtractedSharedLink()
{
  type metadata accessor for Data?(319, &lazy cache variable for type metadata for String?);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Double?);
    if (v6 > 0x3F)
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

void type metadata accessor for RentalCarReservation?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PreExtractedSharedLink.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PreExtractedSharedLink.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreExtractedCard.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PreExtractedCard.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreExtractedBreadcrumb.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PreExtractedBreadcrumb.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_3()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_5_4()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_6_3()
{
  *(v0 - 156) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_8_4()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

uint64_t OUTLINED_FUNCTION_9_3@<X0>(char a1@<W8>)
{
  *(v1 - 288) = a1;
  v3 = *(v1 - 296);

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_18_2()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_19_2()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 120) = 0;
}

uint64_t OUTLINED_FUNCTION_20_2@<X0>(char a1@<W8>)
{
  *(v1 - 81) = a1;

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_23_2@<X0>(char a1@<W8>)
{
  *(v1 - 81) = a1;

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_25_2@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

void OUTLINED_FUNCTION_26_1()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 112) = 0;
}

void OUTLINED_FUNCTION_27_1()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_32_0()
{
  v7 = *(v5 - 96) + v3;

  return outlined init with copy of RentalCarReservation?(v7, v4 + v2, v0, v1);
}

void OUTLINED_FUNCTION_33_0()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_38_1@<X0>(char a1@<W8>)
{
  *(v1 - 81) = a1;
  result = *(v1 - 152);
  v3 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_1@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  result = v1 - 65;
  v3 = *(v1 - 112);
  v4 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_1()
{
  v3 = *(v0 - 256);
  v4 = *(v1 - 208);
  v5 = *(v1 - 104);

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_46@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  v4 = *(v1 - 128);
  v3 = *(v1 - 120);
  v5 = *(v1 - 104);

  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_51()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_56()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_64()
{
  v2 = *(v0 + 8);
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  return result;
}

void OUTLINED_FUNCTION_67(int a1@<W8>)
{
  *(v1 - 172) = a1;
  *(v1 - 168) = a1;
  *(v1 - 156) = a1;
  *(v1 - 152) = a1;
  *(v1 - 144) = a1;
  *(v1 - 136) = a1;
}

uint64_t OUTLINED_FUNCTION_68@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_70@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_76@<X0>(uint64_t a1@<X8>)
{

  return outlined init with copy of RentalCarReservation?(v2 + a1, v4, v3, v1);
}

uint64_t OUTLINED_FUNCTION_77()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_78@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_79()
{
  v2 = *(v0 + 8);
  result = *(v1 - 128);
  v4 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_98(unint64_t *a1)
{

  return lazy protocol witness table accessor for type [String] and conformance <A> [A](a1);
}

uint64_t OUTLINED_FUNCTION_100()
{
  v2 = *(v0 + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_103(unint64_t *a1)
{

  return lazy protocol witness table accessor for type [String] and conformance <A> [A](a1);
}

uint64_t OUTLINED_FUNCTION_112@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_114(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_122@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined assign with take of RentalCarReservation?(v3, v4 + a3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_126()
{
  result = *(v1 + 48);
  v3 = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_128()
{
  result = *(v1 + 32);
  v3 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_129()
{
  result = *(v1 + 16);
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_130()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_132@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_138@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of RentalCarReservation?(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_139()
{

  return type metadata accessor for Date();
}

uint64_t OUTLINED_FUNCTION_140()
{
  v4 = *(v2 - 136);

  return outlined init with copy of PartialExtractedAttributes(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_141@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return outlined init with take of ShippingOrder(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_143@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_144(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = result;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a7;
  v8[7] = a8;
  return result;
}

void OUTLINED_FUNCTION_147()
{
  v1 = *(v0 - 72);
  v3 = *(v0 - 104);
  v2 = *(v0 - 96);
}

uint64_t OUTLINED_FUNCTION_151()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_152(uint64_t a1, uint64_t a2)
{

  return outlined init with take of Date?(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_153(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of RentalCarReservation?(a1, a2, v2, v3);
}

uint64_t RentalCarReservation.startLocationName.getter()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return OUTLINED_FUNCTION_38();
}

uint64_t RentalCarReservation.startLocationAddress.getter()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return OUTLINED_FUNCTION_38();
}

uint64_t RentalCarReservation.startLocationTelephone.getter()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  return OUTLINED_FUNCTION_38();
}

uint64_t RentalCarReservation.endLocationName.getter()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  return OUTLINED_FUNCTION_38();
}

uint64_t RentalCarReservation.endLocationAddress.getter()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return OUTLINED_FUNCTION_38();
}

uint64_t RentalCarReservation.endLocationTelephone.getter()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);

  return OUTLINED_FUNCTION_38();
}

uint64_t RentalCarReservation.durationInSeconds.getter()
{
  result = *(v0 + 392);
  v2 = *(v0 + 400);
  return result;
}

uint64_t RentalCarReservation.totalCost.getter()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  return OUTLINED_FUNCTION_38();
}

uint64_t RentalCarReservation.startDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for RentalCarReservation(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 140));
}

uint64_t RentalCarReservation.endDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for RentalCarReservation(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 144));
}

uint64_t RentalCarReservation.startDateTimeZone.getter()
{
  return RentalCarReservation.startDateTimeZone.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v2 = v1(v0);
  OUTLINED_FUNCTION_68(*(v2 + 148));
  return OUTLINED_FUNCTION_38();
}

uint64_t RentalCarReservation.status.getter()
{
  return RentalCarReservation.status.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v2 = v1(v0);
  OUTLINED_FUNCTION_68(*(v2 + 152));
  return OUTLINED_FUNCTION_38();
}

uint64_t RentalCarReservation.updateStatus.getter()
{
  v0 = type metadata accessor for RentalCarReservation(0);
  OUTLINED_FUNCTION_68(*(v0 + 156));
  return OUTLINED_FUNCTION_38();
}

void static RentalCarReservation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_129_0();
  v5 = type metadata accessor for Date();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_398();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = OUTLINED_FUNCTION_62(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_314();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_267();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v17 = OUTLINED_FUNCTION_9_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_131();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_130();
  v23 = v23 && v21 == v22;
  if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_365();
  if (v25)
  {
    if (!v24)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_129();
    v28 = v23 && v26 == v27;
    if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v24)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_364();
  if (v30)
  {
    if (!v29)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_128();
    v33 = v23 && v31 == v32;
    if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v29)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_310();
  if (v35)
  {
    if (!v34)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_126();
    v38 = v23 && v36 == v37;
    if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v34)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_309();
  if (v40)
  {
    if (!v39)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_183();
    v43 = v23 && v41 == v42;
    if (!v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v39)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_308();
  if (v45)
  {
    if (!v44)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_182();
    v48 = v23 && v46 == v47;
    if (!v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v44)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_307();
  if (v50)
  {
    if (!v49)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_181();
    v53 = v23 && v51 == v52;
    if (!v53 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v49)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_363();
  if (v55)
  {
    if (!v54)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_234();
    v58 = v23 && v56 == v57;
    if (!v58 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v54)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_233();
  if (v23)
  {
    if (v59 != 2)
    {
      goto LABEL_76;
    }
  }

  else
  {
    OUTLINED_FUNCTION_275();
    if (v60 || ((v61 ^ v62) & 1) != 0)
    {
      goto LABEL_76;
    }
  }

  OUTLINED_FUNCTION_232();
  if (!v23)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_230();
  if (v23)
  {
    if (v63 != 2)
    {
      goto LABEL_76;
    }
  }

  else
  {
    OUTLINED_FUNCTION_275();
    if (v64 || ((v65 ^ v66) & 1) != 0)
    {
      goto LABEL_76;
    }
  }

  v67 = OUTLINED_FUNCTION_362();
  if (v67)
  {
    if (!v68 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v67, v68) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v68)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_361();
  if (v70)
  {
    if (!v69)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_229();
    v73 = v23 && v71 == v72;
    if (!v73 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v69)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_360();
  if (v75)
  {
    if (!v74)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_228();
    v78 = v23 && v76 == v77;
    if (!v78 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v74)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_359();
  if (v80)
  {
    if (!v79)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_227();
    v83 = v23 && v81 == v82;
    if (!v83 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v79)
  {
    goto LABEL_76;
  }

  v84 = OUTLINED_FUNCTION_358();
  if (v84)
  {
    if (!v85 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v84, v85) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v85)
  {
    goto LABEL_76;
  }

  v86 = OUTLINED_FUNCTION_357();
  if (v86)
  {
    if (!v87 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v86, v87) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v87)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_356();
  if (v89)
  {
    if (!v88)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_226();
    v92 = v23 && v90 == v91;
    if (!v92 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v88)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_397();
  if (v94)
  {
    if (!v93)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_265();
    v97 = v23 && v95 == v96;
    if (!v97 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v93)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_424();
  if (v99)
  {
    if (!v98)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_304();
    v102 = v23 && v100 == v101;
    if (!v102 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v98)
  {
    goto LABEL_76;
  }

  v103 = *(v0 + 264);
  if (*(v1 + 264))
  {
    if (!v103)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_380();
    v106 = v23 && v104 == v105;
    if (!v106 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v103)
  {
    goto LABEL_76;
  }

  v107 = *(v1 + 272);
  v108 = *(v0 + 272);
  if (v107)
  {
    if (!v108 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v107, v108) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v108)
  {
    goto LABEL_76;
  }

  v109 = *(v0 + 288);
  if (*(v1 + 288))
  {
    if (!v109)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_379();
    v112 = v23 && v110 == v111;
    if (!v112 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v109)
  {
    goto LABEL_76;
  }

  v113 = *(v1 + 304);
  v114 = *(v0 + 304);
  if (v113)
  {
    if (!v114)
    {
      goto LABEL_76;
    }

    v115 = *(v1 + 296) == *(v0 + 296) && v113 == v114;
    if (!v115 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v114)
  {
    goto LABEL_76;
  }

  v116 = *(v1 + 320);
  v117 = *(v0 + 320);
  if (v116)
  {
    if (!v117)
    {
      goto LABEL_76;
    }

    v118 = *(v1 + 312) == *(v0 + 312) && v116 == v117;
    if (!v118 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v117)
  {
    goto LABEL_76;
  }

  v119 = *(v1 + 336);
  v120 = *(v0 + 336);
  if (v119)
  {
    if (!v120)
    {
      goto LABEL_76;
    }

    v121 = *(v1 + 328) == *(v0 + 328) && v119 == v120;
    if (!v121 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v120)
  {
    goto LABEL_76;
  }

  v122 = *(v1 + 352);
  v123 = *(v0 + 352);
  if (v122)
  {
    if (!v123)
    {
      goto LABEL_76;
    }

    v124 = *(v1 + 344) == *(v0 + 344) && v122 == v123;
    if (!v124 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v123)
  {
    goto LABEL_76;
  }

  v125 = *(v1 + 368);
  v126 = *(v0 + 368);
  if (v125)
  {
    if (!v126)
    {
      goto LABEL_76;
    }

    v127 = *(v1 + 360) == *(v0 + 360) && v125 == v126;
    if (!v127 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v126)
  {
    goto LABEL_76;
  }

  v128 = *(v1 + 384);
  v129 = *(v0 + 384);
  if (v128)
  {
    if (!v129)
    {
      goto LABEL_76;
    }

    v130 = *(v1 + 376) == *(v0 + 376) && v128 == v129;
    if (!v130 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v129)
  {
    goto LABEL_76;
  }

  if (*(v1 + 400))
  {
    if (!*(v0 + 400))
    {
      goto LABEL_76;
    }
  }

  else
  {
    v131 = *(v0 + 392);
    v132 = *(v1 + 392);
    OUTLINED_FUNCTION_332();
    if (v133)
    {
      goto LABEL_76;
    }
  }

  v134 = *(v1 + 416);
  v135 = *(v0 + 416);
  if (v134)
  {
    if (!v135)
    {
      goto LABEL_76;
    }

    v136 = *(v1 + 408) == *(v0 + 408) && v134 == v135;
    if (!v136 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v135)
  {
    goto LABEL_76;
  }

  v137 = type metadata accessor for RentalCarReservation(0);
  OUTLINED_FUNCTION_377(v137, *(v137 + 140));
  outlined init with copy of RentalCarReservation?(v1 + v138, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v139 = OUTLINED_FUNCTION_376();
  outlined init with copy of RentalCarReservation?(v139, v140, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v3);
  if (v23)
  {
    OUTLINED_FUNCTION_16_3(v201 + v3);
    if (v23)
    {
      v141 = outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_252;
    }

LABEL_250:
    v148 = v3;
LABEL_261:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v148, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_76;
  }

  outlined init with copy of RentalCarReservation?(v3, v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v201 + v3);
  if (v144)
  {
    v145 = *(v8 + 8);
    v146 = OUTLINED_FUNCTION_288();
    v147(v146);
    goto LABEL_250;
  }

  OUTLINED_FUNCTION_224();
  v149 = OUTLINED_FUNCTION_374();
  v150(v149);
  OUTLINED_FUNCTION_6_4();
  lazy protocol witness table accessor for type Date and conformance Date(v151, v152);
  v153 = OUTLINED_FUNCTION_350();
  v154 = OUTLINED_FUNCTION_195(v153);
  v155(v154);
  v156 = OUTLINED_FUNCTION_288();
  v201(v156);
  v141 = outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v199 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_252:
  v157 = v200[36];
  v158 = *(v16 + 48);
  OUTLINED_FUNCTION_404(v141, v142, v143, &_s10Foundation4DateVSgMR);
  v159 = OUTLINED_FUNCTION_301();
  outlined init with copy of RentalCarReservation?(v159, v160, v161, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v2);
  if (!v23)
  {
    v162 = OUTLINED_FUNCTION_148();
    outlined init with copy of RentalCarReservation?(v162, v163, v164, v165);
    OUTLINED_FUNCTION_16_3(v201 + v2);
    if (!v166)
    {
      OUTLINED_FUNCTION_224();
      v170 = OUTLINED_FUNCTION_299();
      v171(v170);
      OUTLINED_FUNCTION_6_4();
      lazy protocol witness table accessor for type Date and conformance Date(v172, v173);
      v174 = OUTLINED_FUNCTION_151();
      v175 = *(v8 + 8);
      v176 = OUTLINED_FUNCTION_283();
      v175(v176);
      v177 = OUTLINED_FUNCTION_120();
      v175(v177);
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v174 & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_263;
    }

    v167 = *(v8 + 8);
    v168 = OUTLINED_FUNCTION_120();
    v169(v168);
    goto LABEL_260;
  }

  OUTLINED_FUNCTION_16_3(v201 + v2);
  if (!v23)
  {
LABEL_260:
    v148 = v2;
    goto LABEL_261;
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_263:
  v178 = v200[37];
  OUTLINED_FUNCTION_10_3();
  if (v181)
  {
    if (!v179)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_25_2(v180);
    v184 = v23 && v182 == v183;
    if (!v184 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v179)
  {
    goto LABEL_76;
  }

  v185 = v200[38];
  OUTLINED_FUNCTION_10_3();
  if (v188)
  {
    if (!v186)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_25_2(v187);
    v191 = v23 && v189 == v190;
    if (!v191 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v186)
  {
    goto LABEL_76;
  }

  v192 = v200[39];
  OUTLINED_FUNCTION_10_3();
  if (v195 && v193)
  {
    OUTLINED_FUNCTION_25_2(v194);
    if (!v23 || v196 != v197)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_76:
  OUTLINED_FUNCTION_42_0();
}

uint64_t RentalCarReservation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000025DCEB0A0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000025DCEB0C0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001CLL && 0x800000025DCEB0E0 == a2;
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
            v10 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x627553746E657665 && a2 == 0xEC00000065707954;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001BLL && 0x800000025DCEB120 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x417349746E657665 && a2 == 0xED00007961446C6CLL;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E557349656D6974 && a2 == 0xED00006E776F6E6BLL;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x800000025DCEB140 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x73726F68747561 && a2 == 0xE700000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x7373654D6C69616DLL && a2 == 0xED00006449656761;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000011 && 0x800000025DCEB160 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000011 && 0x800000025DCEB180 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000012 && 0x800000025DCEB1A0 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000023 && 0x800000025DCEB1C0 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x7461767265736572 && a2 == 0xED000064496E6F69;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x72656D6F74737563 && a2 == 0xED000073656D614ELL;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000012 && 0x800000025DCEB1F0 == a2;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000011 && 0x800000025DCEB210 == a2;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000014 && 0x800000025DCEB230 == a2;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000016 && 0x800000025DCEB250 == a2;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x7461636F4C646E65 && a2 == 0xEF656D614E6E6F69;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000012 && 0x800000025DCEB270 == a2;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000014 && 0x800000025DCEB290 == a2;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000011 && 0x800000025DCEB2B0 == a2;
                                                            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x736F436C61746F74 && a2 == 0xE900000000000074;
                                                              if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
                                                                if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
                                                                  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000011 && 0x800000025DCEB2D0 == a2;
                                                                    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
                                                                      if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else if (a1 == 0x7453657461647075 && a2 == 0xEC00000073757461)
                                                                      {

                                                                        return 35;
                                                                      }

                                                                      else
                                                                      {
                                                                        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                        if (v41)
                                                                        {
                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          return 36;
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

uint64_t RentalCarReservation.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
    case 10:
    case 25:
      return 0xD000000000000016;
    case 2:
    case 24:
    case 28:
      return 0xD000000000000014;
    case 3:
      return 0xD00000000000001CLL;
    case 4:
      return 0xD000000000000017;
    case 5:
      return 0x707954746E657665;
    case 6:
      return 0x627553746E657665;
    case 7:
      return 0xD00000000000001BLL;
    case 8:
      return 0x417349746E657665;
    case 9:
      return 0x6E557349656D6974;
    case 11:
      return 0x73726F68747561;
    case 12:
      return 0x7373654D6C69616DLL;
    case 13:
      return 0xD000000000000011;
    case 14:
      return 0xD000000000000011;
    case 15:
      return 0x65786F626C69616DLL;
    case 16:
    case 22:
    case 27:
      return 0xD000000000000012;
    case 17:
      return 0xD000000000000023;
    case 18:
      return 0x4E79616C70736964;
    case 19:
      v4 = 0x767265736572;
      goto LABEL_34;
    case 20:
      v3 = 0x6469766F7270;
      goto LABEL_19;
    case 21:
      v3 = 0x6D6F74737563;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 26:
      v4 = 0x636F4C646E65;
LABEL_34:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 29:
      result = 0xD000000000000011;
      break;
    case 30:
      result = 0x736F436C61746F74;
      break;
    case 31:
      result = 0x7461447472617473;
      break;
    case 32:
      result = 0x65746144646E65;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 34:
      result = 0x737574617473;
      break;
    case 35:
      result = 0x7453657461647075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RentalCarReservation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = RentalCarReservation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance RentalCarReservation.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = RentalCarReservation.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RentalCarReservation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RentalCarReservation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void RentalCarReservation.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_193();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes20RentalCarReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes20RentalCarReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys();
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
    v20 = v1[14];
    v21 = v1[15];
    OUTLINED_FUNCTION_43_2(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v1 + 128);
    OUTLINED_FUNCTION_74(8);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v1 + 129);
    OUTLINED_FUNCTION_74(9);
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v1 + 130);
    OUTLINED_FUNCTION_74(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = v1[18];
    v26 = v1[19];
    OUTLINED_FUNCTION_43_2(12);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = v1[20];
    v28 = v1[21];
    OUTLINED_FUNCTION_43_2(13);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = v1[22];
    v30 = v1[23];
    OUTLINED_FUNCTION_43_2(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_341();
    OUTLINED_FUNCTION_281();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v63 = v1[25];
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v31 = v1[26];
    v32 = v1[27];
    OUTLINED_FUNCTION_43_2(17);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = v1[28];
    v34 = v1[29];
    OUTLINED_FUNCTION_43_2(18);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v35 = v1[30];
    v36 = v1[31];
    OUTLINED_FUNCTION_43_2(19);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37 = v1[32];
    v38 = v1[33];
    OUTLINED_FUNCTION_43_2(20);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v64 = v1[34];
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v39 = v1[35];
    v40 = v1[36];
    OUTLINED_FUNCTION_43_2(22);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v41 = v1[37];
    v42 = v1[38];
    OUTLINED_FUNCTION_43_2(23);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v43 = v1[39];
    v44 = v1[40];
    OUTLINED_FUNCTION_43_2(24);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v45 = v1[41];
    v46 = v1[42];
    OUTLINED_FUNCTION_43_2(25);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47 = v1[43];
    v48 = v1[44];
    OUTLINED_FUNCTION_43_2(26);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v49 = v1[45];
    v50 = v1[46];
    OUTLINED_FUNCTION_43_2(27);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v51 = v1[47];
    v52 = v1[48];
    OUTLINED_FUNCTION_43_2(28);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v53 = v1[49];
    v54 = *(v1 + 400);
    OUTLINED_FUNCTION_43_2(29);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v55 = v1[51];
    v56 = v1[52];
    OUTLINED_FUNCTION_43_2(30);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v57 = type metadata accessor for RentalCarReservation(0);
    v58 = v57[35];
    OUTLINED_FUNCTION_274(31);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_6_4();
    lazy protocol witness table accessor for type Date and conformance Date(v59, v60);
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_130_0(v57[36]);
    OUTLINED_FUNCTION_169();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v57[37]);
    OUTLINED_FUNCTION_43_2(33);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v57[38]);
    OUTLINED_FUNCTION_43_2(34);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v57[39]);
    OUTLINED_FUNCTION_43_2(35);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v61 = OUTLINED_FUNCTION_270();
  v62(v61);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys);
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

void RentalCarReservation.init(from:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_435();
  v96 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = OUTLINED_FUNCTION_62(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_325();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_209();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes20RentalCarReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes20RentalCarReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_237();
  v97 = type metadata accessor for RentalCarReservation(0);
  v15 = OUTLINED_FUNCTION_9_1(v97);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_2();
  v98 = v18;
  OUTLINED_FUNCTION_367();
  OUTLINED_FUNCTION_258();
  lazy protocol witness table accessor for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys();
  OUTLINED_FUNCTION_407();
  if (v1)
  {
    OUTLINED_FUNCTION_116_0();
    OUTLINED_FUNCTION_19_3();
    __swift_destroy_boxed_opaque_existential_1(v0);
    if (v0)
    {
      v29 = *(v98 + 72);

      if ((v2 & 1) == 0)
      {
LABEL_26:
        if (v4)
        {
LABEL_27:
          v30 = *(v98 + 104);

          if ((v3 & 1) == 0)
          {
LABEL_28:
            if (v81)
            {
              v31 = *(v98 + 168);

              if ((v82 & 1) == 0)
              {
LABEL_30:
                if (v83)
                {
LABEL_31:
                  v32 = *(v98 + 192);

                  if ((v84 & 1) == 0)
                  {
LABEL_32:

                    if (v85)
                    {
LABEL_33:
                      v33 = *(v98 + 232);

                      if ((v86 & 1) == 0)
                      {
LABEL_34:
                        if (v87)
                        {
LABEL_35:
                          v34 = *(v98 + 264);

                          if ((v88 & 1) == 0)
                          {
LABEL_36:
                            if (v89)
                            {
LABEL_37:
                              v35 = *(v98 + 288);

                              if ((v90 & 1) == 0)
                              {
LABEL_38:
                                if (v91)
                                {
LABEL_39:
                                  v36 = *(v98 + 320);

                                  if ((v92 & 1) == 0)
                                  {
LABEL_40:
                                    if (v93)
                                    {
LABEL_41:
                                      v37 = *(v98 + 352);

                                      if ((v94 & 1) == 0)
                                      {
LABEL_42:
                                        if (v95)
                                        {
LABEL_43:
                                          v38 = *(v98 + 384);

                                          if ((v96 & 1) == 0)
                                          {
                                            goto LABEL_44;
                                          }

                                          goto LABEL_23;
                                        }

LABEL_22:
                                        if (!v96)
                                        {
                                          goto LABEL_44;
                                        }

LABEL_23:
                                        v28 = *(v98 + 416);

                                        goto LABEL_44;
                                      }

LABEL_21:
                                      v27 = *(v98 + 368);

                                      if (v95)
                                      {
                                        goto LABEL_43;
                                      }

                                      goto LABEL_22;
                                    }

LABEL_20:
                                    if (!v94)
                                    {
                                      goto LABEL_42;
                                    }

                                    goto LABEL_21;
                                  }

LABEL_19:
                                  v26 = *(v98 + 336);

                                  if (v93)
                                  {
                                    goto LABEL_41;
                                  }

                                  goto LABEL_20;
                                }

LABEL_18:
                                if (!v92)
                                {
                                  goto LABEL_40;
                                }

                                goto LABEL_19;
                              }

LABEL_17:
                              v25 = *(v98 + 304);

                              if (v91)
                              {
                                goto LABEL_39;
                              }

                              goto LABEL_18;
                            }

LABEL_16:
                            if (!v90)
                            {
                              goto LABEL_38;
                            }

                            goto LABEL_17;
                          }

LABEL_15:
                          v24 = *(v98 + 272);

                          if (v89)
                          {
                            goto LABEL_37;
                          }

                          goto LABEL_16;
                        }

LABEL_14:
                        if (!v88)
                        {
                          goto LABEL_36;
                        }

                        goto LABEL_15;
                      }

LABEL_13:
                      v23 = *(v98 + 248);

                      if (v87)
                      {
                        goto LABEL_35;
                      }

                      goto LABEL_14;
                    }

LABEL_12:
                    if (!v86)
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_13;
                  }

LABEL_11:
                  v22 = *(v98 + 200);

                  if (v85)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_12;
                }

LABEL_10:
                if (!v84)
                {
                  goto LABEL_32;
                }

                goto LABEL_11;
              }
            }

            else if (!v82)
            {
              goto LABEL_30;
            }

            v21 = *(v98 + 184);

            if (v83)
            {
              goto LABEL_31;
            }

            goto LABEL_10;
          }

LABEL_7:
          v20 = *(v98 + 120);

          goto LABEL_28;
        }

LABEL_6:
        if (!v3)
        {
          goto LABEL_28;
        }

        goto LABEL_7;
      }
    }

    else if (!v2)
    {
      goto LABEL_26;
    }

    v19 = *(v98 + 88);

    if (v4)
    {
      goto LABEL_27;
    }

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_136_0();
  *v98 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v98 + 8) = v39;
  OUTLINED_FUNCTION_92_0(1);
  *(v98 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 24) = v40;
  OUTLINED_FUNCTION_92_0(2);
  *(v98 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 40) = v41;
  OUTLINED_FUNCTION_92_0(3);
  *(v98 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 56) = v42;
  OUTLINED_FUNCTION_92_0(4);
  *(v98 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 72) = v43;
  OUTLINED_FUNCTION_92_0(5);
  *(v98 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 88) = v44;
  OUTLINED_FUNCTION_92_0(6);
  *(v98 + 96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 104) = v45;
  OUTLINED_FUNCTION_92_0(7);
  *(v98 + 112) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 120) = v46;
  OUTLINED_FUNCTION_92_0(8);
  *(v98 + 128) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_381();
  *(v98 + 129) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  OUTLINED_FUNCTION_118_0(10);
  *(v98 + 130) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  OUTLINED_FUNCTION_168();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_426();
  *(v48 + 136) = v47;
  OUTLINED_FUNCTION_118_0(12);
  *(v98 + 144) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 152) = v49;
  OUTLINED_FUNCTION_118_0(13);
  *(v98 + 160) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 168) = v50;
  OUTLINED_FUNCTION_118_0(14);
  *(v98 + 176) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 184) = v51;
  OUTLINED_FUNCTION_128_0(15);
  OUTLINED_FUNCTION_231();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_426();
  *(v53 + 192) = v52;
  OUTLINED_FUNCTION_128_0(16);
  OUTLINED_FUNCTION_231();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_426();
  *(v55 + 200) = v54;
  OUTLINED_FUNCTION_118_0(17);
  *(v98 + 208) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 216) = v56;
  OUTLINED_FUNCTION_118_0(18);
  *(v98 + 224) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 232) = v57;
  OUTLINED_FUNCTION_118_0(19);
  v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_425(v58, v59, v98);
  OUTLINED_FUNCTION_118_0(v60);
  *(v98 + 256) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 264) = v61;
  OUTLINED_FUNCTION_128_0(21);
  OUTLINED_FUNCTION_231();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_426();
  *(v63 + 272) = v62;
  OUTLINED_FUNCTION_118_0(22);
  *(v98 + 280) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 288) = v64;
  OUTLINED_FUNCTION_118_0(23);
  *(v98 + 296) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 304) = v65;
  OUTLINED_FUNCTION_118_0(24);
  *(v98 + 312) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 320) = v66;
  OUTLINED_FUNCTION_118_0(25);
  *(v98 + 328) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 336) = v67;
  OUTLINED_FUNCTION_118_0(26);
  *(v98 + 344) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 352) = v68;
  OUTLINED_FUNCTION_118_0(27);
  *(v98 + 360) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 368) = v69;
  OUTLINED_FUNCTION_118_0(28);
  *(v98 + 376) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 384) = v70;
  OUTLINED_FUNCTION_118_0(29);
  *(v98 + 392) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 400) = v71 & 1;
  OUTLINED_FUNCTION_118_0(30);
  *(v98 + 408) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v98 + 416) = v72;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_6_4();
  lazy protocol witness table accessor for type Date and conformance Date(v73, v74);
  OUTLINED_FUNCTION_342();
  OUTLINED_FUNCTION_168();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of Date?(v2, v98 + v97[35], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_219(32);
  OUTLINED_FUNCTION_262();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of Date?(v3, v98 + v97[36], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_118_0(33);
  v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v75, v76, v97[37]);
  OUTLINED_FUNCTION_118_0(34);
  v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v77, v78, v97[38]);
  OUTLINED_FUNCTION_118_0(35);
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_400();
  v79 = OUTLINED_FUNCTION_122_0();
  v80(v79);
  OUTLINED_FUNCTION_402(v97[39]);
  outlined init with copy of RentalCarReservation(v98, v96, type metadata accessor for RentalCarReservation);
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_38();
  outlined destroy of RentalCarReservation();
LABEL_44:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

uint64_t TicketedTransportation.startLocationName.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return OUTLINED_FUNCTION_38();
}

uint64_t TicketedTransportation.startLocationAddress.getter()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return OUTLINED_FUNCTION_38();
}

uint64_t TicketedTransportation.startDate.getter()
{
  return TicketedTransportation.startDate.getter();
}

{
  v0 = OUTLINED_FUNCTION_121();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v2 + 116));
}

uint64_t TicketedTransportation.endDate.getter()
{
  return TicketedTransportation.endDate.getter();
}

{
  v0 = OUTLINED_FUNCTION_35_1();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_76(*(v2 + 120));
}

uint64_t TicketedTransportation.startDateTimeZone.getter()
{
  return TicketedTransportation.startDateTimeZone.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v2 = v1(v0);
  OUTLINED_FUNCTION_68(*(v2 + 124));
  return OUTLINED_FUNCTION_38();
}

uint64_t TicketedTransportation.status.getter()
{
  return TicketedTransportation.status.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v2 = v1(v0);
  OUTLINED_FUNCTION_68(*(v2 + 128));
  return OUTLINED_FUNCTION_38();
}

uint64_t TicketedTransportation.updateStatus.getter()
{
  return TicketedTransportation.updateStatus.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v2 = v1(v0);
  OUTLINED_FUNCTION_68(*(v2 + 132));
  return OUTLINED_FUNCTION_38();
}

void static TicketedTransportation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_129_0();
  v5 = type metadata accessor for Date();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_398();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = OUTLINED_FUNCTION_62(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_314();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_267();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v17 = OUTLINED_FUNCTION_9_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_131();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_130();
  v23 = v23 && v21 == v22;
  if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_365();
  if (v25)
  {
    if (!v24)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_129();
    v28 = v23 && v26 == v27;
    if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v24)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_364();
  if (v30)
  {
    if (!v29)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_128();
    v33 = v23 && v31 == v32;
    if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v29)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_310();
  if (v35)
  {
    if (!v34)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_126();
    v38 = v23 && v36 == v37;
    if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v34)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_309();
  if (v40)
  {
    if (!v39)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_183();
    v43 = v23 && v41 == v42;
    if (!v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v39)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_308();
  if (v45)
  {
    if (!v44)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_182();
    v48 = v23 && v46 == v47;
    if (!v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v44)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_307();
  if (v50)
  {
    if (!v49)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_181();
    v53 = v23 && v51 == v52;
    if (!v53 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v49)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_363();
  if (v55)
  {
    if (!v54)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_234();
    v58 = v23 && v56 == v57;
    if (!v58 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v54)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_233();
  if (v23)
  {
    if (v59 != 2)
    {
      goto LABEL_76;
    }
  }

  else
  {
    OUTLINED_FUNCTION_275();
    if (v60 || ((v61 ^ v62) & 1) != 0)
    {
      goto LABEL_76;
    }
  }

  OUTLINED_FUNCTION_232();
  if (!v23)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_230();
  if (v23)
  {
    if (v63 != 2)
    {
      goto LABEL_76;
    }
  }

  else
  {
    OUTLINED_FUNCTION_275();
    if (v64 || ((v65 ^ v66) & 1) != 0)
    {
      goto LABEL_76;
    }
  }

  v67 = OUTLINED_FUNCTION_362();
  if (v67)
  {
    if (!v68 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v67, v68) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v68)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_361();
  if (v70)
  {
    if (!v69)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_229();
    v73 = v23 && v71 == v72;
    if (!v73 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v69)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_360();
  if (v75)
  {
    if (!v74)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_228();
    v78 = v23 && v76 == v77;
    if (!v78 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v74)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_359();
  if (v80)
  {
    if (!v79)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_227();
    v83 = v23 && v81 == v82;
    if (!v83 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v79)
  {
    goto LABEL_76;
  }

  v84 = OUTLINED_FUNCTION_358();
  if (v84)
  {
    if (!v85 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v84, v85) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v85)
  {
    goto LABEL_76;
  }

  v86 = OUTLINED_FUNCTION_357();
  if (v86)
  {
    if (!v87 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v86, v87) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v87)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_356();
  if (v89)
  {
    if (!v88)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_226();
    v92 = v23 && v90 == v91;
    if (!v92 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v88)
  {
    goto LABEL_76;
  }

  v93 = *(v1 + 224);
  v94 = *(v0 + 224);
  if (v93)
  {
    if (!v94 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v93, v94) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v94)
  {
    goto LABEL_76;
  }

  v95 = *(v1 + 240);
  v96 = *(v0 + 240);
  if (v95)
  {
    if (!v96)
    {
      goto LABEL_76;
    }

    v97 = *(v1 + 232) == *(v0 + 232) && v95 == v96;
    if (!v97 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v96)
  {
    goto LABEL_76;
  }

  v98 = *(v1 + 256);
  v99 = *(v0 + 256);
  if (v98)
  {
    if (!v99)
    {
      goto LABEL_76;
    }

    v100 = *(v1 + 248) == *(v0 + 248) && v98 == v99;
    if (!v100 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v99)
  {
    goto LABEL_76;
  }

  v101 = *(v1 + 272);
  v102 = *(v0 + 272);
  if (v101)
  {
    if (!v102)
    {
      goto LABEL_76;
    }

    v103 = *(v1 + 264) == *(v0 + 264) && v101 == v102;
    if (!v103 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v102)
  {
    goto LABEL_76;
  }

  v104 = *(v0 + 288);
  if (*(v1 + 288))
  {
    if (!v104)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_379();
    v107 = v23 && v105 == v106;
    if (!v107 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v104)
  {
    goto LABEL_76;
  }

  v108 = *(v1 + 296);
  v109 = *(v0 + 296);
  if (v108)
  {
    if (!v109 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v108, v109) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v109)
  {
    goto LABEL_76;
  }

  if (*(v1 + 312))
  {
    if (!*(v0 + 312))
    {
      goto LABEL_76;
    }
  }

  else
  {
    v110 = *(v0 + 304);
    v111 = *(v1 + 304);
    OUTLINED_FUNCTION_332();
    if (v112)
    {
      goto LABEL_76;
    }
  }

  v113 = type metadata accessor for TicketedTransportation(0);
  OUTLINED_FUNCTION_377(v113, *(v113 + 116));
  outlined init with copy of RentalCarReservation?(v1 + v114, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v115 = OUTLINED_FUNCTION_376();
  outlined init with copy of RentalCarReservation?(v115, v116, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v3);
  if (v23)
  {
    OUTLINED_FUNCTION_16_3(v177 + v3);
    if (v23)
    {
      v117 = outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_194;
    }

LABEL_192:
    v124 = v3;
LABEL_203:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v124, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_76;
  }

  outlined init with copy of RentalCarReservation?(v3, v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v177 + v3);
  if (v120)
  {
    v121 = *(v8 + 8);
    v122 = OUTLINED_FUNCTION_288();
    v123(v122);
    goto LABEL_192;
  }

  OUTLINED_FUNCTION_224();
  v125 = OUTLINED_FUNCTION_374();
  v126(v125);
  OUTLINED_FUNCTION_6_4();
  lazy protocol witness table accessor for type Date and conformance Date(v127, v128);
  v129 = OUTLINED_FUNCTION_350();
  v130 = OUTLINED_FUNCTION_195(v129);
  v131(v130);
  v132 = OUTLINED_FUNCTION_288();
  v177(v132);
  v117 = outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v175 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_194:
  v133 = v176[30];
  v134 = *(v16 + 48);
  OUTLINED_FUNCTION_404(v117, v118, v119, &_s10Foundation4DateVSgMR);
  v135 = OUTLINED_FUNCTION_301();
  outlined init with copy of RentalCarReservation?(v135, v136, v137, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v2);
  if (!v23)
  {
    v138 = OUTLINED_FUNCTION_148();
    outlined init with copy of RentalCarReservation?(v138, v139, v140, v141);
    OUTLINED_FUNCTION_16_3(v177 + v2);
    if (!v142)
    {
      OUTLINED_FUNCTION_224();
      v146 = OUTLINED_FUNCTION_299();
      v147(v146);
      OUTLINED_FUNCTION_6_4();
      lazy protocol witness table accessor for type Date and conformance Date(v148, v149);
      v150 = OUTLINED_FUNCTION_151();
      v151 = *(v8 + 8);
      v152 = OUTLINED_FUNCTION_283();
      v151(v152);
      v153 = OUTLINED_FUNCTION_120();
      v151(v153);
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v150 & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_205;
    }

    v143 = *(v8 + 8);
    v144 = OUTLINED_FUNCTION_120();
    v145(v144);
    goto LABEL_202;
  }

  OUTLINED_FUNCTION_16_3(v177 + v2);
  if (!v23)
  {
LABEL_202:
    v124 = v2;
    goto LABEL_203;
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_205:
  v154 = v176[31];
  OUTLINED_FUNCTION_10_3();
  if (v157)
  {
    if (!v155)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_25_2(v156);
    v160 = v23 && v158 == v159;
    if (!v160 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v155)
  {
    goto LABEL_76;
  }

  v161 = v176[32];
  OUTLINED_FUNCTION_10_3();
  if (v164)
  {
    if (!v162)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_25_2(v163);
    v167 = v23 && v165 == v166;
    if (!v167 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v162)
  {
    goto LABEL_76;
  }

  v168 = v176[33];
  OUTLINED_FUNCTION_10_3();
  if (v171 && v169)
  {
    OUTLINED_FUNCTION_25_2(v170);
    if (!v23 || v172 != v173)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_76:
  OUTLINED_FUNCTION_42_0();
}

uint64_t TicketedTransportation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000025DCEB0A0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000025DCEB0C0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001CLL && 0x800000025DCEB0E0 == a2;
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
            v10 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x627553746E657665 && a2 == 0xEC00000065707954;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001BLL && 0x800000025DCEB120 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x417349746E657665 && a2 == 0xED00007961446C6CLL;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E557349656D6974 && a2 == 0xED00006E776F6E6BLL;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x800000025DCEB140 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x73726F68747561 && a2 == 0xE700000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x7373654D6C69616DLL && a2 == 0xED00006449656761;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000011 && 0x800000025DCEB160 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000011 && 0x800000025DCEB180 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000012 && 0x800000025DCEB1A0 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000023 && 0x800000025DCEB1C0 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x72656D6F74737563 && a2 == 0xED000073656D614ELL;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000011 && 0x800000025DCEB210 == a2;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000014 && 0x800000025DCEB230 == a2;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x7461636F4C646E65 && a2 == 0xEF656D614E6E6F69;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000012 && 0x800000025DCEB270 == a2;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x626D754E74616573 && a2 == 0xEB00000000737265;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000011 && 0x800000025DCEB2B0 == a2;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000011 && 0x800000025DCEB2D0 == a2;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else if (a1 == 0x7453657461647075 && a2 == 0xEC00000073757461)
                                                          {

                                                            return 29;
                                                          }

                                                          else
                                                          {
                                                            v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                            if (v35)
                                                            {
                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              return 30;
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

unint64_t TicketedTransportation.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
    case 10:
      result = 0xD000000000000016;
      break;
    case 2:
    case 20:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x707954746E657665;
      break;
    case 6:
      result = 0x627553746E657665;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0x417349746E657665;
      break;
    case 9:
      result = 0x6E557349656D6974;
      break;
    case 11:
      result = 0x73726F68747561;
      break;
    case 12:
      result = 0x7373654D6C69616DLL;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x65786F626C69616DLL;
      break;
    case 16:
    case 22:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000023;
      break;
    case 18:
      result = 0x72656D6F74737563;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0x7461636F4C646E65;
      break;
    case 23:
      result = 0x626D754E74616573;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
      result = 0x7461447472617473;
      break;
    case 26:
      result = 0x65746144646E65;
      break;
    case 27:
      result = 0xD000000000000011;
      break;
    case 28:
      result = 0x737574617473;
      break;
    case 29:
      result = 0x7453657461647075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TicketedTransportation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = TicketedTransportation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance TicketedTransportation.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = TicketedTransportation.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TicketedTransportation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TicketedTransportation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void TicketedTransportation.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_193();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes22TicketedTransportationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes22TicketedTransportationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys();
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
    v20 = v1[14];
    v21 = v1[15];
    OUTLINED_FUNCTION_43_2(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v1 + 128);
    OUTLINED_FUNCTION_74(8);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v1 + 129);
    OUTLINED_FUNCTION_74(9);
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v1 + 130);
    OUTLINED_FUNCTION_74(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = v1[18];
    v26 = v1[19];
    OUTLINED_FUNCTION_43_2(12);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = v1[20];
    v28 = v1[21];
    OUTLINED_FUNCTION_43_2(13);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = v1[22];
    v30 = v1[23];
    OUTLINED_FUNCTION_43_2(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_341();
    OUTLINED_FUNCTION_281();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v49 = v1[25];
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v31 = v1[26];
    v32 = v1[27];
    OUTLINED_FUNCTION_43_2(17);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v50 = v1[28];
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v33 = v1[29];
    v34 = v1[30];
    OUTLINED_FUNCTION_43_2(19);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v35 = v1[31];
    v36 = v1[32];
    OUTLINED_FUNCTION_43_2(20);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37 = v1[33];
    v38 = v1[34];
    OUTLINED_FUNCTION_43_2(21);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v39 = v1[35];
    v40 = v1[36];
    OUTLINED_FUNCTION_43_2(22);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v51 = v1[37];
    OUTLINED_FUNCTION_436();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v41 = v1[38];
    v42 = *(v1 + 312);
    OUTLINED_FUNCTION_43_2(24);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v43 = type metadata accessor for TicketedTransportation(0);
    v44 = v43[29];
    OUTLINED_FUNCTION_274(25);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_6_4();
    lazy protocol witness table accessor for type Date and conformance Date(v45, v46);
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_130_0(v43[30]);
    OUTLINED_FUNCTION_169();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v43[31]);
    OUTLINED_FUNCTION_43_2(27);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v43[32]);
    OUTLINED_FUNCTION_43_2(28);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v43[33]);
    OUTLINED_FUNCTION_43_2(29);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v47 = OUTLINED_FUNCTION_270();
  v48(v47);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys;
  if (!lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys;
  if (!lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys;
  if (!lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys;
  if (!lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys);
  }

  return result;
}

void TicketedTransportation.init(from:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_435();
  v77 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = OUTLINED_FUNCTION_62(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_325();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_209();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes22TicketedTransportationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes22TicketedTransportationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_237();
  v78 = type metadata accessor for TicketedTransportation(0);
  v14 = OUTLINED_FUNCTION_9_1(v78);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_98_0(v17, v68);
  v19 = v0[3];
  v18 = v0[4];
  OUTLINED_FUNCTION_258();
  lazy protocol witness table accessor for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys();
  OUTLINED_FUNCTION_407();
  if (v1)
  {
    OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_22_2();
    __swift_destroy_boxed_opaque_existential_1(v0);
    if (v18)
    {
      v20 = *(v79 + 56);

      if ((v0 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v0)
    {
LABEL_5:
      if (v2)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

    v27 = *(v79 + 72);

    if (v2)
    {
LABEL_6:
      v21 = *(v79 + 88);

      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_20:
      v28 = *(v79 + 104);

LABEL_7:
      if (v69)
      {
        v22 = *(v79 + 184);

        if ((v70 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (!v70)
      {
LABEL_9:
        if (v71)
        {
          goto LABEL_10;
        }

        goto LABEL_23;
      }

      v29 = *(v79 + 192);

      if (v71)
      {
LABEL_10:
        v23 = *(v79 + 200);

        if ((v72 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_24;
      }

LABEL_23:

      if (!v72)
      {
LABEL_11:
        if (v73)
        {
          goto LABEL_12;
        }

        goto LABEL_25;
      }

LABEL_24:
      v30 = *(v79 + 224);

      if (v73)
      {
LABEL_12:
        v24 = *(v79 + 240);

        if ((v74 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_26;
      }

LABEL_25:
      if (!v74)
      {
LABEL_13:
        if (v75)
        {
          goto LABEL_14;
        }

        goto LABEL_27;
      }

LABEL_26:
      v31 = *(v79 + 256);

      if (v75)
      {
LABEL_14:
        v25 = *(v79 + 272);

        if ((v76 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_28;
      }

LABEL_27:
      if (!v76)
      {
LABEL_15:
        if (!v77)
        {
          goto LABEL_29;
        }

LABEL_16:
        v26 = *(v79 + 296);

        goto LABEL_29;
      }

LABEL_28:
      v32 = *(v79 + 288);

      if ((v77 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

LABEL_19:
    if (!v19)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_136_0();
  *v79 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v79 + 8) = v33;
  OUTLINED_FUNCTION_92_0(1);
  *(v79 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 24) = v34;
  OUTLINED_FUNCTION_92_0(2);
  *(v79 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 40) = v35;
  OUTLINED_FUNCTION_92_0(3);
  *(v79 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 56) = v36;
  OUTLINED_FUNCTION_92_0(4);
  *(v79 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 72) = v37;
  OUTLINED_FUNCTION_92_0(5);
  *(v79 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 88) = v38;
  OUTLINED_FUNCTION_92_0(6);
  *(v79 + 96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 104) = v39;
  OUTLINED_FUNCTION_92_0(7);
  *(v79 + 112) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 120) = v40;
  OUTLINED_FUNCTION_92_0(8);
  *(v79 + 128) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_381();
  *(v79 + 129) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  OUTLINED_FUNCTION_118_0(10);
  *(v79 + 130) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  OUTLINED_FUNCTION_146_0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_306();
  *(v42 + 136) = v41;
  OUTLINED_FUNCTION_118_0(12);
  *(v79 + 144) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 152) = v43;
  OUTLINED_FUNCTION_118_0(13);
  *(v79 + 160) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 168) = v44;
  OUTLINED_FUNCTION_118_0(14);
  *(v79 + 176) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 184) = v45;
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_146_0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_306();
  *(v47 + 192) = v46;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_146_0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_306();
  *(v49 + 200) = v48;
  OUTLINED_FUNCTION_118_0(17);
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_411(v50);
  OUTLINED_FUNCTION_146_0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_306();
  *(v52 + 224) = v51;
  OUTLINED_FUNCTION_118_0(19);
  *(v79 + 232) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 240) = v53;
  OUTLINED_FUNCTION_118_0(20);
  *(v79 + 248) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 256) = v54;
  OUTLINED_FUNCTION_118_0(21);
  *(v79 + 264) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 272) = v55;
  OUTLINED_FUNCTION_118_0(22);
  *(v79 + 280) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 288) = v56;
  OUTLINED_FUNCTION_436();
  OUTLINED_FUNCTION_146_0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_306();
  *(v58 + 296) = v57;
  OUTLINED_FUNCTION_118_0(24);
  *(v79 + 304) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v79 + 312) = v59 & 1;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_6_4();
  lazy protocol witness table accessor for type Date and conformance Date(v60, v61);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of Date?(v2, v79 + v78[29], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_219(26);
  OUTLINED_FUNCTION_168();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of Date?(v3, v79 + v78[30], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_118_0(27);
  v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v62, v63, v78[31]);
  OUTLINED_FUNCTION_118_0(28);
  v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v64, v65, v78[32]);
  OUTLINED_FUNCTION_118_0(29);
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_400();
  v66 = OUTLINED_FUNCTION_122_0();
  v67(v66);
  OUTLINED_FUNCTION_402(v78[33]);
  outlined init with copy of RentalCarReservation(v79, v77, type metadata accessor for TicketedTransportation);
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_38();
  outlined destroy of RentalCarReservation();
LABEL_29:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}