void specialized _arrayForceCast<A, B>(_:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  if (v0 >> 62)
  {
    if (v0 >= 0)
    {
      v0 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v2 = MEMORY[0x25F8A01B0](v0);
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    goto LABEL_14;
  }

  v21 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = v21;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F89FFD0](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for IMSPIMessage, 0x277D18DD0);
      v19 = v7;
      v20 = &protocol witness table for IMSPIMessage;
      v18[0] = v6;
      v21 = v4;
      if (*(v4 + 16) >= *(v4 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v19;
        v9 = v20;
      }

      else
      {
        v8 = v7;
        v9 = &protocol witness table for IMSPIMessage;
      }

      ++v3;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v8);
      v11 = *(*(v8 - 8) + 64);
      MEMORY[0x28223BE20](v10);
      OUTLINED_FUNCTION_36();
      (*(v14 + 16))(v13 - v12);
      v15 = OUTLINED_FUNCTION_32_3();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v15, v16, v17, v8, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      v4 = v21;
    }

    while (v2 != v3);
LABEL_14:
    OUTLINED_FUNCTION_148();
    return;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CSSearchableItemC_15OmniSearchTypes016SpotlightRankingB0VtMd, &_sSo16CSSearchableItemC_15OmniSearchTypes016SpotlightRankingB0VtMR);
  OUTLINED_FUNCTION_14(v23);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMd, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = *(v1 + 16);
  if (v15)
  {
    v24 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v24;
    v17 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v18 = *(v3 + 72);
    do
    {
      v19 = OUTLINED_FUNCTION_233_3();
      outlined init with copy of SpotlightRankingItem?(v19, v20, &_sSo16CSSearchableItemC_15OmniSearchTypes016SpotlightRankingB0VtMd, &_sSo16CSSearchableItemC_15OmniSearchTypes016SpotlightRankingB0VtMR);
      OUTLINED_FUNCTION_21_7();
      swift_dynamicCast();
      v24 = v16;
      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
        v16 = v24;
      }

      *(v16 + 16) = v22 + 1;
      outlined init with take of SearchResultItem?(v14, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMd, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMR);
      v17 += v18;
      --v15;
    }

    while (v15);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t SearchResultItem.llmConsumableDescription.getter()
{
  SearchResultItem.associatedValue.getter(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 56))(0, 0, v0, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return OUTLINED_FUNCTION_94();
}

void specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)()
{
  OUTLINED_FUNCTION_155();
  v43 = v1;
  v47 = type metadata accessor for Calendar.Component();
  v2 = OUTLINED_FUNCTION_14(v47);
  v50 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = OUTLINED_FUNCTION_114(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_2();
  v46 = v14;
  v15 = OUTLINED_FUNCTION_78_0();
  v16 = type metadata accessor for EditorialDateFormatter(v15);
  v17 = OUTLINED_FUNCTION_17(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v20 = type metadata accessor for Calendar();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36();
  v28 = v27 - v26;
  v29 = type metadata accessor for Date();
  v30 = OUTLINED_FUNCTION_14(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_36();
  Date.init()();
  static Calendar.current.getter();
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  v48 = v32;
  v35 = *(v32 + 16);
  OUTLINED_FUNCTION_189_4();
  v36();
  (*(v23 + 16))(v0 + v16[7], v28, v20);
  v49 = v0;
  *(v0 + v16[8]) = FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_editorialDates);
  v37 = *MEMORY[0x277CC9968];
  v45 = *(v50 + 104);
  v45(v8, v37, v47);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v44 = *(v50 + 8);
  v44(v8, v47);
  OUTLINED_FUNCTION_166(v46, 1, v29);
  if (v38)
  {
    __break(1u);
  }

  else
  {
    v39 = *(v32 + 32);
    v39(v49 + v16[5], v46, v29);
    v45(v8, v37, v47);
    OUTLINED_FUNCTION_266_1();
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v44(v8, v47);
    OUTLINED_FUNCTION_166(v8, 1, v29);
    if (!v38)
    {
      (*(v23 + 8))(v28, v20);
      v40 = *(v48 + 8);
      v41 = OUTLINED_FUNCTION_158();
      v42(v41);
      v39(v49 + v16[6], v8, v29);
      outlined init with take of EditorialDateFormatter(v49, v43);
      OUTLINED_FUNCTION_148();
      return;
    }
  }

  __break(1u);
}

void specialized PartialExtractedAttributesSearchItem.llmConsumableDescription(locale:)()
{
  OUTLINED_FUNCTION_155();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_3();
  v139 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_49_3();
  v138 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
  OUTLINED_FUNCTION_114(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_49_3();
  v137 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
  OUTLINED_FUNCTION_114(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_49_3();
  v136 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  OUTLINED_FUNCTION_114(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_168_4(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
  OUTLINED_FUNCTION_114(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  v37 = &v135 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  OUTLINED_FUNCTION_114(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v41);
  v43 = &v135 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  OUTLINED_FUNCTION_114(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_36_2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
  OUTLINED_FUNCTION_114(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_152_4();
  MEMORY[0x25F89F5D0](98);
  OUTLINED_FUNCTION_274_1();
  v52 = v0;
  PartialExtractedAttributes.party.getter();
  v53 = type metadata accessor for Party();
  OUTLINED_FUNCTION_166(v2, 1, v53);
  v55 = v6;
  if (v54)
  {
    v57 = v4;
    outlined destroy of IntentApplication?(v2, &_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
    countAndFlagsBits = 0;
    object = 0;
    OUTLINED_FUNCTION_30_15();
  }

  else
  {
    v56.value._countAndFlagsBits = v6;
    v57 = v4;
    v56.value._object = v4;
    v58 = Party.llmConsumableDescription(locale:)(v56);
    countAndFlagsBits = v58._countAndFlagsBits;
    object = v58._object;
    OUTLINED_FUNCTION_51(v53);
    (*(v61 + 8))(v2, v53);
    v62 = MEMORY[0x277D83838];
  }

  v140 = countAndFlagsBits;
  v141 = object;
  OUTLINED_FUNCTION_23_18(v62);
  outlined destroy of IntentApplication?(&v140, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  PartialExtractedAttributes.flightReservation.getter();
  v63 = type metadata accessor for FlightReservation();
  v64 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v64, v65, v63);
  if (v54)
  {
    outlined destroy of IntentApplication?(v1, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
    v69 = 0;
    v70 = 0;
    OUTLINED_FUNCTION_30_15();
    v66 = v55;
  }

  else
  {
    v66 = v55;
    v67.value._countAndFlagsBits = v55;
    v67.value._object = v57;
    v68 = FlightReservation.llmConsumableDescription(locale:)(v67);
    v69 = v68._countAndFlagsBits;
    v70 = v68._object;
    OUTLINED_FUNCTION_51(v63);
    v72 = *(v71 + 8);
    v73 = OUTLINED_FUNCTION_212();
    v74(v73);
    v75 = MEMORY[0x277D83838];
  }

  v140 = v69;
  v141 = v70;
  OUTLINED_FUNCTION_23_18(v75);
  outlined destroy of IntentApplication?(&v140, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v76 = v52;
  PartialExtractedAttributes.hotelReservation.getter();
  v77 = type metadata accessor for HotelReservation();
  OUTLINED_FUNCTION_50_12(v43);
  if (v54)
  {
    outlined destroy of IntentApplication?(v43, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
    v80 = 0;
    v81 = 0;
    OUTLINED_FUNCTION_30_15();
  }

  else
  {
    v78.value._countAndFlagsBits = v66;
    v78.value._object = v57;
    v79 = HotelReservation.llmConsumableDescription(locale:)(v78);
    v80 = v79._countAndFlagsBits;
    v81 = v79._object;
    OUTLINED_FUNCTION_51(v77);
    (*(v82 + 8))(v43, v77);
    v83 = MEMORY[0x277D83838];
  }

  v84 = v139;
  v85 = v137;
  v140 = v80;
  v141 = v81;
  OUTLINED_FUNCTION_23_18(v83);
  outlined destroy of IntentApplication?(&v140, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v86 = v76;
  PartialExtractedAttributes.restaurantReservation.getter();
  type metadata accessor for RestaurantReservation();
  OUTLINED_FUNCTION_9_5(v37);
  v87 = v138;
  if (v54)
  {
    outlined destroy of IntentApplication?(v37, &_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
    OUTLINED_FUNCTION_15_19();
    v142 = 0;
  }

  else
  {
    v88.value._countAndFlagsBits = OUTLINED_FUNCTION_45_0();
    v86 = v37;
    RestaurantReservation.llmConsumableDescription(locale:)(v88);
    OUTLINED_FUNCTION_6_18();
    v90 = *(v89 + 8);
    v91 = OUTLINED_FUNCTION_181_4();
    v92(v91);
    v93 = MEMORY[0x277D83838];
  }

  v140 = v43;
  v141 = v86;
  OUTLINED_FUNCTION_23_18(v93);
  outlined destroy of IntentApplication?(&v140, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v94 = v135;
  v95 = v76;
  PartialExtractedAttributes.rentalCarReservation.getter();
  type metadata accessor for RentalCarReservation();
  v96 = OUTLINED_FUNCTION_211_3();
  OUTLINED_FUNCTION_9_5(v96);
  v97 = v136;
  if (v54)
  {
    outlined destroy of IntentApplication?(v94, &_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
    OUTLINED_FUNCTION_15_19();
    v142 = 0;
  }

  else
  {
    v98.value._countAndFlagsBits = OUTLINED_FUNCTION_45_0();
    v95 = v94;
    RentalCarReservation.llmConsumableDescription(locale:)(v98);
    OUTLINED_FUNCTION_6_18();
    v100 = *(v99 + 8);
    v101 = OUTLINED_FUNCTION_236_2();
    v102(v101);
    v103 = MEMORY[0x277D83838];
  }

  v140 = v94;
  v141 = v95;
  OUTLINED_FUNCTION_23_18(v103);
  outlined destroy of IntentApplication?(&v140, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v104 = v76;
  PartialExtractedAttributes.ticketedTransportation.getter();
  type metadata accessor for TicketedTransportation();
  OUTLINED_FUNCTION_9_5(v97);
  if (v54)
  {
    outlined destroy of IntentApplication?(v97, &_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
    OUTLINED_FUNCTION_15_19();
    v142 = 0;
  }

  else
  {
    v105.value._countAndFlagsBits = OUTLINED_FUNCTION_45_0();
    v104 = v97;
    TicketedTransportation.llmConsumableDescription(locale:)(v105);
    OUTLINED_FUNCTION_6_18();
    v107 = *(v106 + 8);
    v108 = OUTLINED_FUNCTION_181_4();
    v109(v108);
    v110 = MEMORY[0x277D83838];
  }

  v140 = v94;
  v141 = v104;
  OUTLINED_FUNCTION_23_18(v110);
  outlined destroy of IntentApplication?(&v140, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v111 = v76;
  PartialExtractedAttributes.ticketedShow.getter();
  type metadata accessor for TicketedShow();
  v112 = OUTLINED_FUNCTION_239_1();
  OUTLINED_FUNCTION_9_5(v112);
  if (v54)
  {
    outlined destroy of IntentApplication?(v85, &_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
    OUTLINED_FUNCTION_15_19();
    v142 = 0;
  }

  else
  {
    v113.value._countAndFlagsBits = OUTLINED_FUNCTION_45_0();
    v111 = v85;
    TicketedShow.llmConsumableDescription(locale:)(v113);
    OUTLINED_FUNCTION_6_18();
    v115 = *(v114 + 8);
    v116 = OUTLINED_FUNCTION_159_4();
    v117(v116);
    v118 = MEMORY[0x277D83838];
  }

  v140 = v94;
  v141 = v111;
  OUTLINED_FUNCTION_23_18(v118);
  outlined destroy of IntentApplication?(&v140, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v119 = v76;
  PartialExtractedAttributes.appointment.getter();
  type metadata accessor for Appointment();
  v120 = OUTLINED_FUNCTION_240_2();
  OUTLINED_FUNCTION_9_5(v120);
  if (v54)
  {
    outlined destroy of IntentApplication?(v87, &_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
    OUTLINED_FUNCTION_15_19();
    v142 = 0;
  }

  else
  {
    v121.value._countAndFlagsBits = OUTLINED_FUNCTION_45_0();
    v119 = v87;
    Appointment.llmConsumableDescription(locale:)(v121);
    OUTLINED_FUNCTION_6_18();
    v123 = *(v122 + 8);
    v124 = OUTLINED_FUNCTION_116_1();
    v125(v124);
    v126 = MEMORY[0x277D83838];
  }

  v140 = v94;
  v141 = v119;
  OUTLINED_FUNCTION_23_18(v126);
  outlined destroy of IntentApplication?(&v140, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v127 = v76;
  PartialExtractedAttributes.trip.getter();
  type metadata accessor for Trip();
  v128 = OUTLINED_FUNCTION_176_5();
  OUTLINED_FUNCTION_9_5(v128);
  if (v54)
  {
    outlined destroy of IntentApplication?(v84, &_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
    OUTLINED_FUNCTION_15_19();
    v142 = 0;
  }

  else
  {
    v129.value._countAndFlagsBits = OUTLINED_FUNCTION_45_0();
    v127 = v84;
    Trip.llmConsumableDescription(locale:)(v129);
    OUTLINED_FUNCTION_6_18();
    v131 = *(v130 + 8);
    v132 = OUTLINED_FUNCTION_52_1();
    v133(v132);
    v134 = MEMORY[0x277D83838];
  }

  v140 = v94;
  v141 = v127;
  OUTLINED_FUNCTION_23_18(v134);
  outlined destroy of IntentApplication?(&v140, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_250_3();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
}

Swift::String __swiftcall PartialExtractedAttributesSearchItem.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v4 = v3;
  v6 = v5;
  v153 = v7;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_49_3();
  v158 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_49_3();
  v157 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
  OUTLINED_FUNCTION_114(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_168_4(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
  OUTLINED_FUNCTION_114(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_229_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  OUTLINED_FUNCTION_114(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_49_3();
  v154 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
  OUTLINED_FUNCTION_114(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_36_2();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  OUTLINED_FUNCTION_114(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_136_3();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  OUTLINED_FUNCTION_114(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v46);
  v48 = &v152 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
  OUTLINED_FUNCTION_114(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v52);
  v54 = &v152 - v53;
  OUTLINED_FUNCTION_152_4();
  MEMORY[0x25F89F5D0](98);
  OUTLINED_FUNCTION_274_1();
  v55 = *(v4 + 56);
  v160 = v6;
  v55(v6, v4);
  v56 = type metadata accessor for Party();
  OUTLINED_FUNCTION_166(v54, 1, v56);
  v159 = v9;
  if (v57)
  {
    v59 = v153;
    outlined destroy of IntentApplication?(v54, &_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
    countAndFlagsBits = 0;
    object = 0;
    OUTLINED_FUNCTION_30_15();
  }

  else
  {
    v58.value._countAndFlagsBits = v9;
    v58.value._object = v153;
    v59 = v153;
    v60 = Party.llmConsumableDescription(locale:)(v58);
    countAndFlagsBits = v60._countAndFlagsBits;
    object = v60._object;
    OUTLINED_FUNCTION_51(v56);
    (*(v63 + 8))(v54, v56);
    v64 = MEMORY[0x277D83838];
  }

  v161 = countAndFlagsBits;
  v162 = object;
  OUTLINED_FUNCTION_23_18(v64);
  outlined destroy of IntentApplication?(&v161, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  (*(v4 + 72))(v160, v4);
  v65 = type metadata accessor for FlightReservation();
  OUTLINED_FUNCTION_166(v48, 1, v65);
  if (v57)
  {
    outlined destroy of IntentApplication?(v48, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
    v68 = 0;
    v69 = 0;
    OUTLINED_FUNCTION_30_15();
  }

  else
  {
    v66.value._countAndFlagsBits = v159;
    v66.value._object = v59;
    v67 = FlightReservation.llmConsumableDescription(locale:)(v66);
    v68 = v67._countAndFlagsBits;
    v69 = v67._object;
    OUTLINED_FUNCTION_51(v65);
    v71 = *(v70 + 8);
    v72 = OUTLINED_FUNCTION_51_4();
    v73(v72);
    v74 = MEMORY[0x277D83838];
  }

  v161 = v68;
  v162 = v69;
  OUTLINED_FUNCTION_23_18(v74);
  outlined destroy of IntentApplication?(&v161, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  (*(v4 + 80))(v160, v4);
  v75 = type metadata accessor for HotelReservation();
  OUTLINED_FUNCTION_166(v2, 1, v75);
  if (v57)
  {
    outlined destroy of IntentApplication?(v2, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
    v78 = 0;
    v79 = 0;
    OUTLINED_FUNCTION_30_15();
  }

  else
  {
    v76.value._countAndFlagsBits = OUTLINED_FUNCTION_173_4();
    v77 = HotelReservation.llmConsumableDescription(locale:)(v76);
    v78 = v77._countAndFlagsBits;
    v79 = v77._object;
    OUTLINED_FUNCTION_51(v75);
    (*(v80 + 8))(v2, v75);
    v81 = MEMORY[0x277D83838];
  }

  v82 = v155;
  v161 = v78;
  v162 = v79;
  OUTLINED_FUNCTION_23_18(v81);
  outlined destroy of IntentApplication?(&v161, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  (*(v4 + 88))(v160, v4);
  v83 = type metadata accessor for RestaurantReservation();
  v84 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v84, v85, v83);
  if (v57)
  {
    outlined destroy of IntentApplication?(v1, &_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
    v88 = 0;
    v89 = 0;
    OUTLINED_FUNCTION_30_15();
  }

  else
  {
    v86.value._countAndFlagsBits = OUTLINED_FUNCTION_173_4();
    v87 = RestaurantReservation.llmConsumableDescription(locale:)(v86);
    v88 = v87._countAndFlagsBits;
    v89 = v87._object;
    OUTLINED_FUNCTION_51(v83);
    v91 = *(v90 + 8);
    v92 = OUTLINED_FUNCTION_212();
    v93(v92);
    v94 = MEMORY[0x277D83838];
  }

  v95 = v157;
  v161 = v88;
  v162 = v89;
  OUTLINED_FUNCTION_23_18(v94);
  outlined destroy of IntentApplication?(&v161, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v96 = *(v4 + 24);
  v97 = v154;
  v98 = OUTLINED_FUNCTION_122_6();
  v99(v98);
  v100 = type metadata accessor for RentalCarReservation();
  OUTLINED_FUNCTION_50_12(v97);
  if (v57)
  {
    outlined destroy of IntentApplication?(v97, &_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
    v103 = 0;
    v104 = 0;
    OUTLINED_FUNCTION_30_15();
  }

  else
  {
    v101.value._countAndFlagsBits = OUTLINED_FUNCTION_173_4();
    v102 = RentalCarReservation.llmConsumableDescription(locale:)(v101);
    v103 = v102._countAndFlagsBits;
    v104 = v102._object;
    OUTLINED_FUNCTION_51(v100);
    (*(v105 + 8))();
    v106 = MEMORY[0x277D83838];
  }

  v107 = v158;
  v161 = v103;
  v162 = v104;
  OUTLINED_FUNCTION_23_18(v106);
  outlined destroy of IntentApplication?(&v161, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v108 = *(v4 + 32);
  v109 = OUTLINED_FUNCTION_122_6();
  v110(v109);
  type metadata accessor for TicketedTransportation();
  v111 = OUTLINED_FUNCTION_211_3();
  OUTLINED_FUNCTION_9_5(v111);
  if (v57)
  {
    outlined destroy of IntentApplication?(v82, &_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
    OUTLINED_FUNCTION_15_19();
    v163 = 0;
  }

  else
  {
    v112.value._countAndFlagsBits = OUTLINED_FUNCTION_173_4();
    v103 = v82;
    TicketedTransportation.llmConsumableDescription(locale:)(v112);
    OUTLINED_FUNCTION_6_18();
    v114 = *(v113 + 8);
    v115 = OUTLINED_FUNCTION_236_2();
    v116(v115);
    v117 = MEMORY[0x277D83838];
  }

  v161 = v82;
  v162 = v103;
  OUTLINED_FUNCTION_23_18(v117);
  outlined destroy of IntentApplication?(&v161, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v118 = *(v4 + 40);
  v119 = v156;
  v120 = OUTLINED_FUNCTION_122_6();
  v121(v120);
  type metadata accessor for TicketedShow();
  v122 = OUTLINED_FUNCTION_211_3();
  OUTLINED_FUNCTION_9_5(v122);
  if (v57)
  {
    outlined destroy of IntentApplication?(v119, &_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
    OUTLINED_FUNCTION_15_19();
    v163 = 0;
  }

  else
  {
    v123.value._countAndFlagsBits = OUTLINED_FUNCTION_173_4();
    v103 = v119;
    TicketedShow.llmConsumableDescription(locale:)(v123);
    OUTLINED_FUNCTION_6_18();
    v125 = *(v124 + 8);
    v126 = OUTLINED_FUNCTION_236_2();
    v127(v126);
    v128 = MEMORY[0x277D83838];
  }

  v161 = v119;
  v162 = v103;
  OUTLINED_FUNCTION_23_18(v128);
  outlined destroy of IntentApplication?(&v161, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v129 = *(v4 + 48);
  v130 = OUTLINED_FUNCTION_122_6();
  v131(v130);
  type metadata accessor for Appointment();
  v132 = OUTLINED_FUNCTION_212_2();
  OUTLINED_FUNCTION_9_5(v132);
  if (v57)
  {
    outlined destroy of IntentApplication?(v95, &_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
    OUTLINED_FUNCTION_15_19();
    v163 = 0;
  }

  else
  {
    v133.value._countAndFlagsBits = OUTLINED_FUNCTION_173_4();
    v103 = v95;
    Appointment.llmConsumableDescription(locale:)(v133);
    OUTLINED_FUNCTION_6_18();
    v135 = *(v134 + 8);
    v136 = OUTLINED_FUNCTION_21_7();
    v137(v136);
    v138 = MEMORY[0x277D83838];
  }

  v161 = v119;
  v162 = v103;
  OUTLINED_FUNCTION_23_18(v138);
  outlined destroy of IntentApplication?(&v161, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v139 = *(v4 + 64);
  v140 = OUTLINED_FUNCTION_122_6();
  v141(v140);
  type metadata accessor for Trip();
  v142 = OUTLINED_FUNCTION_176_5();
  OUTLINED_FUNCTION_9_5(v142);
  if (v57)
  {
    outlined destroy of IntentApplication?(v107, &_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
    OUTLINED_FUNCTION_15_19();
    v163 = 0;
  }

  else
  {
    v143.value._countAndFlagsBits = OUTLINED_FUNCTION_173_4();
    v103 = v107;
    Trip.llmConsumableDescription(locale:)(v143);
    OUTLINED_FUNCTION_6_18();
    v145 = *(v144 + 8);
    v146 = OUTLINED_FUNCTION_52_1();
    v147(v146);
    v148 = MEMORY[0x277D83838];
  }

  v161 = v119;
  v162 = v103;
  OUTLINED_FUNCTION_23_18(v148);
  outlined destroy of IntentApplication?(&v161, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_250_3();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v150;
  result._countAndFlagsBits = v149;
  return result;
}

Swift::String __swiftcall PreExtractedCard.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v411 = v8;
  v412 = v9;
  v395 = v10;
  v396 = v11;
  v12 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v13 = OUTLINED_FUNCTION_27_14(v12, &v409);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_3();
  v384 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v18 = OUTLINED_FUNCTION_114(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_156_4();
  v388 = type metadata accessor for TimeZone();
  v23 = OUTLINED_FUNCTION_14(v388);
  v381 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v29);
  v382 = type metadata accessor for Date.FormatStyle();
  v30 = OUTLINED_FUNCTION_14(v382);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v35);
  v36 = type metadata accessor for Date();
  v37 = OUTLINED_FUNCTION_14(v36);
  v401 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_73_9();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  v44 = MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_25_16(v44, v45, v46, v47, v48, v49, v50, v51, v359);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v53);
  v54 = OUTLINED_FUNCTION_157_4();
  v55 = type metadata accessor for EditorialDateFormatter(v54);
  v56 = OUTLINED_FUNCTION_114(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_75_10();
  v61 = MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_72_8(v61, v62, v63, v64, v65, v66, v67, v68, v360);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v70 = OUTLINED_FUNCTION_114(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_46_15();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_47_13();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_7_4();
  v392 = v79;
  OUTLINED_FUNCTION_174();
  v81 = MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_38_18(v81, v82, v83, v84, v85, v86, v87, v88, v361);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_131_0();
  v93 = MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_59_10(v93, v94, v95, v96, v97, v98, v99, v100, v362);
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](210);
  OUTLINED_FUNCTION_119_4();
  PreExtractedCard.Keys.llmPrompt.getter(0);
  OUTLINED_FUNCTION_42_13();
  v101 = PreExtractedCard.cardType.getter();
  if (v102)
  {
    v103 = MEMORY[0x277D83838];
  }

  else
  {
    v101 = OUTLINED_FUNCTION_7_24();
  }

  v104 = OUTLINED_FUNCTION_3_34(v101, v102, v103);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v104, v105, v106, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(1);
  OUTLINED_FUNCTION_42_13();
  v107 = PreExtractedCard.cardSubType.getter();
  if (v108)
  {
    v109 = MEMORY[0x277D83838];
  }

  else
  {
    v107 = OUTLINED_FUNCTION_7_24();
  }

  v110 = OUTLINED_FUNCTION_3_34(v107, v108, v109);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v110, v111, v112, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(2);
  OUTLINED_FUNCTION_42_13();
  v113 = PreExtractedCard.cardProvider.getter();
  if (v114)
  {
    v115 = MEMORY[0x277D83838];
  }

  else
  {
    v113 = OUTLINED_FUNCTION_7_24();
  }

  v116 = OUTLINED_FUNCTION_3_34(v113, v114, v115);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v116, v117, v118, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(3);
  OUTLINED_FUNCTION_42_13();
  v119 = PreExtractedCard.cardUnderName.getter();
  if (v120)
  {
    v121 = MEMORY[0x277D83838];
  }

  else
  {
    v119 = OUTLINED_FUNCTION_7_24();
  }

  v122 = OUTLINED_FUNCTION_3_34(v119, v120, v121);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v122, v123, v124, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(4);
  OUTLINED_FUNCTION_45_11();
  v125 = PreExtractedCard.cardNumber.getter();
  if (v126)
  {
    v127 = MEMORY[0x277D83838];
  }

  else
  {
    v125 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v125, v126, v127);
  v128 = OUTLINED_FUNCTION_34_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v128, v129, v130, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(5);
  OUTLINED_FUNCTION_45_11();
  v131 = PreExtractedCard.cardGroupNumber.getter();
  if (v132)
  {
    v133 = MEMORY[0x277D83838];
  }

  else
  {
    v131 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v131, v132, v133);
  v134 = OUTLINED_FUNCTION_34_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v134, v135, v136, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(6);
  OUTLINED_FUNCTION_114_7();
  PreExtractedCard.cardIssueDate.getter();
  OUTLINED_FUNCTION_282_0();
  outlined init with copy of SpotlightRankingItem?(v399, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_166(v6, 1, v36);
  v394 = v4;
  if (v148)
  {
    v137 = v4;
    v138 = v401;

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v1, v139);
    outlined destroy of IntentApplication?(v399, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v140 = v6;
  }

  else
  {
    v365 = v7;
    v141 = *(v401 + 32);
    v142 = OUTLINED_FUNCTION_158();
    v141(v142);
    v402 = v2;
    v403 = v3;

    OUTLINED_FUNCTION_143_6();
    OUTLINED_FUNCTION_200_4();
    MEMORY[0x25F89F6C0]();

    v2 = *(v401 + 16);
    v366 = v5;
    v2();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v143, v144, v145, v36);
    outlined init with copy of SpotlightRankingItem?(v387, v380, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v146 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_166(v146, v147, v36);
    if (v148)
    {

      v3 = v380;
      v2 = &_s10Foundation4DateVSgMR;
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v149, v150, v151);
      v152 = OUTLINED_FUNCTION_87_8();
      outlined destroy of IntentApplication?(v152, v153, v154);
      v155 = v401;
    }

    else
    {
      (v141)(v377, v380, v36);
      static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v395, v396, 0, v156, v157, v158, v159, v160, v363, v2, v7, v5, v367, v369, v370, v371, v372, v373, v374, v375);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_7_1();
      }

      v161 = type metadata accessor for Logger();
      __swift_project_value_buffer(v161, static Logging.answerSynthesis);
      v162 = Logger.logObject.getter();
      v163 = static os_log_type_t.debug.getter();
      v155 = v401;
      if (OUTLINED_FUNCTION_77_5(v163))
      {
        v164 = OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_157_0(v164);
        OUTLINED_FUNCTION_194_4(&dword_25D85C000, v165, v166, "LLMFormatter using default timeZone GMT");
        OUTLINED_FUNCTION_37_0();
      }

      OUTLINED_FUNCTION_30_14(&v396);
      TimeZone.init(secondsFromGMT:)();
      v167 = OUTLINED_FUNCTION_93_6();
      v169 = OUTLINED_FUNCTION_166(v167, v168, v388);
      if (v148)
      {
        __break(1u);
        goto LABEL_96;
      }

      v171 = *(v381 + 32);
      v172 = OUTLINED_FUNCTION_52_1();
      v173(v172);
      Date.FormatStyle.timeZone.setter();
      v174 = *(v383 + 24);
      OUTLINED_FUNCTION_183_3();
      v364();
      *v384 = 0;
      v175 = (v384 + *(v383 + 28));
      v176 = v396;
      *v175 = v395;
      v175[1] = v176;
      v405 = MEMORY[0x277D837D0];
      v406 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v177, v178);
      OUTLINED_FUNCTION_176_5();

      v3 = v382;
      OUTLINED_FUNCTION_142_3();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v384, v179);
      OUTLINED_FUNCTION_148_5(&v408);
      v180(v378, v382);
      OUTLINED_FUNCTION_172_4();
      v181 = OUTLINED_FUNCTION_140_4();
      v182(v181);
      v183 = OUTLINED_FUNCTION_63_1();
      outlined destroy of IntentApplication?(v183, v184, v185);
      outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    v138 = v155;
    OUTLINED_FUNCTION_172_4();
    v186(v366, v36);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v400, v187);
    v137 = v394;
    v140 = v399;
  }

  outlined destroy of IntentApplication?(v140, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(7);
  OUTLINED_FUNCTION_114_7();
  v188 = v397;
  PreExtractedCard.cardExpirationDate.getter();
  v189 = v398;
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v188, v392, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_166(v392, 1, v36);
  if (v148)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v189, v190);
    outlined destroy of IntentApplication?(v188, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v191 = v392;
    v192 = v138;
    v193 = v393;
    goto LABEL_45;
  }

  v194 = *(v138 + 32);
  v194(v390, v392, v36);
  v402 = v2;
  v403 = v3;

  OUTLINED_FUNCTION_143_6();
  OUTLINED_FUNCTION_200_4();
  MEMORY[0x25F89F6C0]();

  v195 = *(v138 + 16);
  OUTLINED_FUNCTION_183_3();
  v195();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v196, v197, v198, v36);
  outlined init with copy of SpotlightRankingItem?(v386, v379, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v199 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v199, v200, v36);
  if (!v201)
  {
    v208 = OUTLINED_FUNCTION_181_4();
    (v194)(v208);
    OUTLINED_FUNCTION_278_1(v209, v210, v211, v212, v213, &v404, v363, v364, v365, v366, v367, v369, v370, v371, v372, v373, v374, v375);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v214 = type metadata accessor for Logger();
    __swift_project_value_buffer(v214, static Logging.answerSynthesis);
    v215 = Logger.logObject.getter();
    v216 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_77_5(v216))
    {
      v217 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_157_0(v217);
      OUTLINED_FUNCTION_194_4(&dword_25D85C000, v218, v219, "LLMFormatter using default timeZone GMT");
      OUTLINED_FUNCTION_37_0();
    }

    OUTLINED_FUNCTION_30_14(&v405);
    TimeZone.init(secondsFromGMT:)();
    v220 = OUTLINED_FUNCTION_93_6();
    v169 = OUTLINED_FUNCTION_166(v220, v221, v388);
    if (!v148)
    {

      v222 = *(v381 + 32);
      v223 = OUTLINED_FUNCTION_52_1();
      v224(v223);
      Date.FormatStyle.timeZone.setter();
      OUTLINED_FUNCTION_217_3();
      OUTLINED_FUNCTION_183_3();
      v195();
      *v384 = 0;
      v225 = (v384 + *(v379 + 28));
      v226 = v396;
      *v225 = v395;
      v225[1] = v226;
      v405 = MEMORY[0x277D837D0];
      v406 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v227, v228);
      OUTLINED_FUNCTION_176_5();

      OUTLINED_FUNCTION_142_3();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v384, v229);
      OUTLINED_FUNCTION_148_5(&v408);
      v230 = OUTLINED_FUNCTION_235_3();
      v231(v230);
      v192 = v401;
      OUTLINED_FUNCTION_172_4();
      v232 = OUTLINED_FUNCTION_140_4();
      v233(v232);
      outlined destroy of IntentApplication?(v386, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      goto LABEL_44;
    }

LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  OUTLINED_FUNCTION_47_11();
  outlined destroy of IntentApplication?(v202, v203, v204);
  v205 = OUTLINED_FUNCTION_87_8();
  outlined destroy of IntentApplication?(v205, v206, v207);
  v192 = v401;
LABEL_44:
  OUTLINED_FUNCTION_92_7();
  OUTLINED_FUNCTION_172_4();
  v234(v390, v36);
  OUTLINED_FUNCTION_0_47();
  outlined destroy of EditorialDateFormatter(v398, v235);
  v193 = v393;
  v137 = v394;
  v191 = v397;
LABEL_45:
  outlined destroy of IntentApplication?(v191, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(8);
  OUTLINED_FUNCTION_42_13();
  v236 = PreExtractedCard.cardIssuedBy.getter();
  if (v237)
  {
    v238 = MEMORY[0x277D83838];
  }

  else
  {
    v236 = OUTLINED_FUNCTION_7_24();
  }

  v239 = OUTLINED_FUNCTION_3_34(v236, v237, v238);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v239, v240, v241, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(9);
  OUTLINED_FUNCTION_42_13();
  v242 = PreExtractedCard.cardRegion.getter();
  if (v243)
  {
    v244 = MEMORY[0x277D83838];
  }

  else
  {
    v242 = OUTLINED_FUNCTION_7_24();
  }

  v245 = OUTLINED_FUNCTION_3_34(v242, v243, v244);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v245, v246, v247, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(10);
  OUTLINED_FUNCTION_42_13();
  v248 = PreExtractedCard.cardCountry.getter();
  if (v249)
  {
    v250 = MEMORY[0x277D83838];
  }

  else
  {
    v248 = OUTLINED_FUNCTION_7_24();
  }

  v251 = OUTLINED_FUNCTION_3_34(v248, v249, v250);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v251, v252, v253, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v254 = PreExtractedCard.Keys.llmPrompt.getter(11);
  v256 = v255;
  PreExtractedCard.birthday.getter();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v193, v391, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v257 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_166(v257, v258, v36);
  if (!v148)
  {
    v261 = *(v192 + 32);
    v262 = OUTLINED_FUNCTION_28_12();
    (v261)(v262);
    v402 = v254;
    v403 = v256;

    OUTLINED_FUNCTION_143_6();
    MEMORY[0x25F89F6C0](v402, v403);

    v263 = *(v192 + 16);
    OUTLINED_FUNCTION_226_1(&v410);
    OUTLINED_FUNCTION_183_3();
    v263();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v264, v265, v266, v36);
    OUTLINED_FUNCTION_190_5(&v407);
    outlined init with copy of SpotlightRankingItem?(v267, v268, v269, v270);
    v271 = OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_166(v271, v272, v36);
    if (v273)
    {

      v274 = OUTLINED_FUNCTION_87_8();
      outlined destroy of IntentApplication?(v274, v275, v276);
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v277, v278, v279);
      v280 = v401;
LABEL_66:
      OUTLINED_FUNCTION_92_7();
      (*(v280 + 8))(v389, v36);
      OUTLINED_FUNCTION_0_47();
      outlined destroy of EditorialDateFormatter(v394, v303);
      v260 = v393;
      goto LABEL_67;
    }

    OUTLINED_FUNCTION_183_3();
    v261();
    OUTLINED_FUNCTION_278_1(v281, v282, v283, v284, v285, &v401, v363, v364, v365, v366, v367, v369, v370, v371, v372, v373, v374, v375);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v286 = type metadata accessor for Logger();
    __swift_project_value_buffer(v286, static Logging.answerSynthesis);
    v287 = Logger.logObject.getter();
    v288 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v287, v288))
    {
      v289 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_157_0(v289);
      _os_log_impl(&dword_25D85C000, v287, v288, "LLMFormatter using default timeZone GMT", (v192 + 32), 2u);
      OUTLINED_FUNCTION_37_0();
    }

    TimeZone.init(secondsFromGMT:)();
    v290 = OUTLINED_FUNCTION_65();
    v169 = OUTLINED_FUNCTION_166(v290, v291, v388);
    if (!v148)
    {

      v292 = *(v381 + 32);
      v293 = OUTLINED_FUNCTION_106_8();
      v294(v293);
      Date.FormatStyle.timeZone.setter();
      OUTLINED_FUNCTION_217_3();
      OUTLINED_FUNCTION_198_3();
      (v263)(v261 + v389, v376, v36);
      *v389 = 0;
      v295 = (v389 + *(v368 + 28));
      v296 = v396;
      *v295 = v395;
      v295[1] = v296;
      v405 = MEMORY[0x277D837D0];
      v406 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v297, v298);
      OUTLINED_FUNCTION_176_5();

      OUTLINED_FUNCTION_142_3();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v389, v299);
      OUTLINED_FUNCTION_4_4(&v408);
      v300 = OUTLINED_FUNCTION_235_3();
      v301(v300);
      v280 = v401;
      OUTLINED_FUNCTION_204_5();
      v302(v376, v36);
      outlined destroy of IntentApplication?(v385, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      goto LABEL_66;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  OUTLINED_FUNCTION_0_47();
  outlined destroy of EditorialDateFormatter(v137, v259);
  outlined destroy of IntentApplication?(v193, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v260 = v391;
LABEL_67:
  outlined destroy of IntentApplication?(v260, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(12);
  OUTLINED_FUNCTION_42_13();
  v304 = PreExtractedCard.cardPlaceOfBirth.getter();
  if (v305)
  {
    v306 = MEMORY[0x277D83838];
  }

  else
  {
    v304 = OUTLINED_FUNCTION_7_24();
  }

  v307 = OUTLINED_FUNCTION_3_34(v304, v305, v306);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v307, v308, v309, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(13);
  OUTLINED_FUNCTION_42_13();
  v310 = PreExtractedCard.cardAddress.getter();
  if (v311)
  {
    v312 = MEMORY[0x277D83838];
  }

  else
  {
    v310 = OUTLINED_FUNCTION_7_24();
  }

  v313 = OUTLINED_FUNCTION_3_34(v310, v311, v312);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v313, v314, v315, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(14);
  OUTLINED_FUNCTION_42_13();
  v316 = PreExtractedCard.cardSex.getter();
  if (v317)
  {
    v318 = MEMORY[0x277D83838];
  }

  else
  {
    v316 = OUTLINED_FUNCTION_7_24();
  }

  v319 = OUTLINED_FUNCTION_3_34(v316, v317, v318);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v319, v320, v321, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(15);
  OUTLINED_FUNCTION_42_13();
  v322 = PreExtractedCard.cardHeight.getter();
  if (v323)
  {
    v324 = MEMORY[0x277D83838];
  }

  else
  {
    v322 = OUTLINED_FUNCTION_7_24();
  }

  v325 = OUTLINED_FUNCTION_3_34(v322, v323, v324);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v325, v326, v327, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(16);
  OUTLINED_FUNCTION_42_13();
  v328 = PreExtractedCard.cardEyeColor.getter();
  if (v329)
  {
    v330 = MEMORY[0x277D83838];
  }

  else
  {
    v328 = OUTLINED_FUNCTION_7_24();
  }

  v331 = OUTLINED_FUNCTION_3_34(v328, v329, v330);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v331, v332, v333, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(17);
  OUTLINED_FUNCTION_42_13();
  v334 = PreExtractedCard.cardWeight.getter();
  if (v335)
  {
    v336 = MEMORY[0x277D83838];
  }

  else
  {
    v334 = OUTLINED_FUNCTION_7_24();
  }

  v337 = OUTLINED_FUNCTION_3_34(v334, v335, v336);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v337, v338, v339, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(18);
  OUTLINED_FUNCTION_42_13();
  v340 = PreExtractedCard.cardCategory.getter();
  if (v341)
  {
    v342 = MEMORY[0x277D83838];
  }

  else
  {
    v340 = OUTLINED_FUNCTION_7_24();
  }

  v343 = OUTLINED_FUNCTION_3_34(v340, v341, v342);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v343, v344, v345, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(8);
  OUTLINED_FUNCTION_42_13();
  v346 = PreExtractedCard.cardIssuedBy.getter();
  if (v347)
  {
    v348 = MEMORY[0x277D83838];
  }

  else
  {
    v346 = OUTLINED_FUNCTION_7_24();
  }

  v349 = OUTLINED_FUNCTION_3_34(v346, v347, v348);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v349, v350, v351, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedCard.Keys.llmPrompt.getter(19);
  OUTLINED_FUNCTION_42_13();
  v352 = PreExtractedCard.cardRestrictions.getter();
  if (v353)
  {
    v354 = MEMORY[0x277D83838];
  }

  else
  {
    v352 = OUTLINED_FUNCTION_7_24();
  }

  v355 = OUTLINED_FUNCTION_3_34(v352, v353, v354);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v355, v356, v357, 0);

  outlined destroy of IntentApplication?(&v402, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
LABEL_98:
  result._object = v170;
  result._countAndFlagsBits = v169;
  return result;
}

Swift::String __swiftcall PreExtractedContact.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v286 = v5;
  v287 = v6;
  v269 = v7;
  v270 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v13);
  v255 = type metadata accessor for TimeZone();
  v14 = OUTLINED_FUNCTION_14(v255);
  v252 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_3();
  v19 = OUTLINED_FUNCTION_28_2(v18);
  v20 = type metadata accessor for EditorialDateFormatter.DateInput(v19);
  v21 = OUTLINED_FUNCTION_27_14(v20, &v284);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v24);
  v264 = type metadata accessor for Date.FormatStyle();
  v25 = OUTLINED_FUNCTION_14(v264);
  v261 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v30);
  v278 = type metadata accessor for Date();
  v31 = OUTLINED_FUNCTION_14(v278);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  v37 = MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_39_14(v37, v38, v39, v40, v41, v42, v43, v44, v244);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7_4();
  v266 = v46;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_14_2();
  v273 = v48;
  v49 = OUTLINED_FUNCTION_78_0();
  v50 = type metadata accessor for EditorialDateFormatter(v49);
  v51 = OUTLINED_FUNCTION_114(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_133_3();
  v55 = MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_72_8(v55, v56, v57, v58, v59, v60, v61, v62, v245);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v64 = OUTLINED_FUNCTION_114(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_39_0();
  v267 = v67;
  OUTLINED_FUNCTION_174();
  v69 = MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_25_16(v69, v70, v71, v72, v73, v74, v75, v76, v246);
  v78 = MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_38_18(v78, v79, v80, v81, v82, v83, v84, v85, v247);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_73_8();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_7_4();
  v90 = v89;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_61_13();
  v93 = MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_59_10(v93, v94, v95, v96, v97, v98, v99, v100, v248);
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](150);
  OUTLINED_FUNCTION_119_4();
  PreExtractedContact.Keys.llmPrompt.getter(0);
  OUTLINED_FUNCTION_111_6();
  v101 = PreExtractedCard.cardType.getter();
  if (v102)
  {
    v103 = MEMORY[0x277D83838];
  }

  else
  {
    v101 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v101, v102, v103);
  v104 = OUTLINED_FUNCTION_159_4();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v104, v105, v106, 0);

  outlined destroy of IntentApplication?(&v279, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedContact.Keys.llmPrompt.getter(1);
  OUTLINED_FUNCTION_111_6();
  v107 = PreExtractedCard.cardSubType.getter();
  if (v108)
  {
    v109 = MEMORY[0x277D83838];
  }

  else
  {
    v107 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v107, v108, v109);
  v110 = OUTLINED_FUNCTION_159_4();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v110, v111, v112, 0);

  outlined destroy of IntentApplication?(&v279, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedContact.Keys.llmPrompt.getter(2);
  OUTLINED_FUNCTION_111_6();
  v113 = PreExtractedCard.cardProvider.getter();
  v275 = v2;
  if (v114)
  {
    v115 = MEMORY[0x277D83838];
  }

  else
  {
    v113 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v113, v114, v115);
  v116 = OUTLINED_FUNCTION_159_4();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v116, v117, v118, 0);

  outlined destroy of IntentApplication?(&v279, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v119 = PreExtractedContact.Keys.llmPrompt.getter(3);
  v121 = v120;
  v122 = MEMORY[0x25F89BFB0]();
  v123._countAndFlagsBits = v119;
  v123._object = v121;
  v288.value._rawValue = v122;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v123, v288);

  v124 = PreExtractedContact.Keys.llmPrompt.getter(4);
  v126 = v125;
  v127 = MEMORY[0x25F89BF60]();
  v128._countAndFlagsBits = v124;
  v128._object = v126;
  v289.value._rawValue = v127;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v128, v289);

  PreExtractedContact.Keys.llmPrompt.getter(5);
  OUTLINED_FUNCTION_111_6();
  v129 = PreExtractedCard.cardNumber.getter();
  if (v130)
  {
    v131 = MEMORY[0x277D83838];
  }

  else
  {
    v129 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v129, v130, v131);
  v132 = OUTLINED_FUNCTION_159_4();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v132, v133, v134, 0);

  outlined destroy of IntentApplication?(&v279, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v135 = PreExtractedContact.Keys.llmPrompt.getter(6);
  v137 = v136;
  PreExtractedContact.contactSharedDateTime.getter();
  OUTLINED_FUNCTION_282_0();
  outlined init with copy of SpotlightRankingItem?(v276, v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_70_9(v4);
  v271 = v33;
  if (v148)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v1, v138);
    outlined destroy of IntentApplication?(v276, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v139 = v4;
  }

  else
  {
    v140 = *(v33 + 32);
    v141 = OUTLINED_FUNCTION_173_4();
    (v140)(v141);
    v279 = v135;
    v280 = v137;
    OUTLINED_FUNCTION_143_6();
    OUTLINED_FUNCTION_200_4();
    MEMORY[0x25F89F6C0]();

    v142 = *(v33 + 16);
    v142(v90, v273, v278);
    v143 = OUTLINED_FUNCTION_86_10();
    __swift_storeEnumTagSinglePayload(v143, v144, v145, v278);
    outlined init with copy of SpotlightRankingItem?(v90, v265, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v146 = OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_166(v146, v147, v278);
    if (v148)
    {
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v149, v150, v151);
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v152, v153, v154);
    }

    else
    {
      v140();
      OUTLINED_FUNCTION_113_9(v269, v270, v155, v156, v157, v158, v159, v160, v249, v1, v251, v252, v254, v255, v257, v258, v259, v260, v261, v262);
      v142(v262 + *(v260 + 24), v266, v278);
      OUTLINED_FUNCTION_253_2();
      *v161 = v269;
      v161[1] = v270;
      v281 = MEMORY[0x277D837D0];
      v282 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v162, v163);

      OUTLINED_FUNCTION_29_5();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v262, v164);
      OUTLINED_FUNCTION_148_5(&v285);
      v165 = OUTLINED_FUNCTION_30_5();
      v166(v165);
      OUTLINED_FUNCTION_184_3();
      v167(v266, v278);
      v168 = OUTLINED_FUNCTION_63_1();
      outlined destroy of IntentApplication?(v168, v169, v170);
      outlined destroy of IntentApplication?(&v279, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    OUTLINED_FUNCTION_184_3();
    v171(v273, v278);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v277, v172);
    v139 = v276;
  }

  outlined destroy of IntentApplication?(v139, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  PreExtractedContact.Keys.llmPrompt.getter(7);
  OUTLINED_FUNCTION_111_6();
  v173 = PreExtractedContact.contactSharedAppName.getter();
  if (v174)
  {
    v175 = MEMORY[0x277D83838];
  }

  else
  {
    v173 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v173, v174, v175);
  v176 = OUTLINED_FUNCTION_21_7();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v176, v177, v178, 0);

  outlined destroy of IntentApplication?(&v279, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v179 = PreExtractedContact.Keys.llmPrompt.getter(8);
  v181 = v180;
  v182 = PreExtractedContact.links.getter();
  v183._countAndFlagsBits = v179;
  v183._object = v181;
  v290.value._rawValue = v182;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v183, v290);

  v184 = PreExtractedContact.Keys.llmPrompt.getter(9);
  v186 = v185;
  PreExtractedContact.birthday.getter();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v275, v274, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_70_9(v274);
  if (v148)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v3, v187);
    outlined destroy of IntentApplication?(v275, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v188 = v274;
  }

  else
  {
    v189 = *(v33 + 32);
    v190 = OUTLINED_FUNCTION_28_12();
    v189(v190);
    v279 = v184;
    v280 = v186;

    OUTLINED_FUNCTION_143_6();
    OUTLINED_FUNCTION_200_4();
    MEMORY[0x25F89F6C0]();

    v191 = *(v33 + 16);
    (v191)(v268, v272, v278);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v192, v193, v194, v278);
    outlined init with copy of SpotlightRankingItem?(v268, v267, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_50_12(v267);
    if (v195)
    {

      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v196, v197, v198);
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v199, v200, v201);
      v202 = v271;
    }

    else
    {
      (v189)(v259, v267, v278);
      v203 = v258;
      static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v269, v270, 0, v204, v205, v206, v207, v208, v249, v250, v251, v252, v254, v255, v257, v258, v259, v260, v261, v262);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_7_1();
      }

      v209 = type metadata accessor for Logger();
      __swift_project_value_buffer(v209, static Logging.answerSynthesis);
      v210 = Logger.logObject.getter();
      v211 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_77_5(v211))
      {
        v212 = OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_157_0(v212);
        OUTLINED_FUNCTION_194_4(&dword_25D85C000, v213, v214, "LLMFormatter using default timeZone GMT");
        OUTLINED_FUNCTION_37_0();
      }

      TimeZone.init(secondsFromGMT:)();
      v215 = OUTLINED_FUNCTION_65();
      v217 = OUTLINED_FUNCTION_166(v215, v216, v256);
      if (v148)
      {
        __break(1u);
        goto LABEL_41;
      }

      v219 = *(v253 + 32);
      OUTLINED_FUNCTION_47_11();
      v220();
      Date.FormatStyle.timeZone.setter();
      OUTLINED_FUNCTION_217_3();
      OUTLINED_FUNCTION_251_1(&v283);
      v191();
      *v263 = 0;
      v221 = (v263 + *(v256 + 28));
      *v221 = v269;
      v221[1] = v270;
      v281 = MEMORY[0x277D837D0];
      v282 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v222, v223);
      OUTLINED_FUNCTION_240_2();

      OUTLINED_FUNCTION_29_5();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v263, v224);
      OUTLINED_FUNCTION_4_4(&v285);
      v225(v203, v264);
      v202 = v271;
      OUTLINED_FUNCTION_204_5();
      v226 = OUTLINED_FUNCTION_235_3();
      v227(v226);
      outlined destroy of IntentApplication?(v268, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(&v279, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    (*(v202 + 8))(v272, v278);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v3, v228);
    v188 = v275;
  }

  outlined destroy of IntentApplication?(v188, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  PreExtractedContact.Keys.llmPrompt.getter(10);
  OUTLINED_FUNCTION_45_11();
  v229 = PreExtractedContact.homeAddresses.getter();
  v230._countAndFlagsBits = OUTLINED_FUNCTION_99_9();
  v291.value._rawValue = v229;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v230, v291);

  PreExtractedContact.Keys.llmPrompt.getter(11);
  OUTLINED_FUNCTION_45_11();
  v231 = PreExtractedContact.workAddresses.getter();
  v232._countAndFlagsBits = OUTLINED_FUNCTION_99_9();
  v292.value._rawValue = v231;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v232, v292);

  PreExtractedContact.Keys.llmPrompt.getter(12);
  OUTLINED_FUNCTION_42_13();
  v233 = PreExtractedContact.relationship.getter();
  if (v234)
  {
    v235 = MEMORY[0x277D83838];
  }

  else
  {
    v233 = OUTLINED_FUNCTION_7_24();
  }

  v236 = OUTLINED_FUNCTION_3_34(v233, v234, v235);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v236, v237, v238, 0);

  outlined destroy of IntentApplication?(&v279, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedContact.Keys.llmPrompt.getter(13);
  OUTLINED_FUNCTION_45_11();
  v239 = PreExtractedContact.addresses.getter();
  v240._countAndFlagsBits = OUTLINED_FUNCTION_99_9();
  v293.value._rawValue = v239;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v240, v293);

  PreExtractedContact.Keys.llmPrompt.getter(14);
  OUTLINED_FUNCTION_45_11();
  v241 = PreExtractedContact.businessHours.getter();
  v242._countAndFlagsBits = OUTLINED_FUNCTION_99_9();
  v294.value._rawValue = v241;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v242, v294);

  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
LABEL_41:
  result._object = v218;
  result._countAndFlagsBits = v217;
  return result;
}

Swift::String __swiftcall PreExtractedSharedLink.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v266 = v5;
  v267 = v6;
  v7 = v2;
  v246 = v8;
  v245 = v9;
  v10 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v11 = OUTLINED_FUNCTION_27_14(v10, &v265);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_3();
  v248 = v14;
  OUTLINED_FUNCTION_78_0();
  v249 = type metadata accessor for Date.FormatStyle();
  v15 = OUTLINED_FUNCTION_14(v249);
  v247 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_3();
  v252 = v19;
  OUTLINED_FUNCTION_78_0();
  v259 = type metadata accessor for Date();
  v20 = OUTLINED_FUNCTION_14(v259);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_131_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_2();
  v253 = v28;
  v29 = OUTLINED_FUNCTION_78_0();
  v30 = type metadata accessor for EditorialDateFormatter(v29);
  v31 = OUTLINED_FUNCTION_114(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_39_0();
  v256 = v34;
  OUTLINED_FUNCTION_174();
  v36 = MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_59_10(v36, v37, v38, v39, v40, v41, v42, v43, v238);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v45 = OUTLINED_FUNCTION_114(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_47_13();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_74_14();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7_4();
  v258 = v51;
  OUTLINED_FUNCTION_174();
  v53 = MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_21_17(v53, v54, v55, v56, v57, v58, v59, v60, v238);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_4();
  v250 = v62;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_49_15();
  MEMORY[0x28223BE20](v64);
  v66 = &v238 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v70);
  v72 = &v238 - v71;
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](174);
  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_98_2();
  MEMORY[0x25F89F6C0](0xD000000000000018);
  PreExtractedSharedLink.Keys.llmPrompt.getter(0);
  OUTLINED_FUNCTION_102_7();
  v73 = PreExtractedCard.cardType.getter();
  if (v74)
  {
    v75 = MEMORY[0x277D83838];
  }

  else
  {
    v73 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v73, v74, v75);
  v76 = OUTLINED_FUNCTION_30_5();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v76, v77, v78, 1);

  outlined destroy of IntentApplication?(&v260, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(1);
  OUTLINED_FUNCTION_102_7();
  v79 = PreExtractedCard.cardSubType.getter();
  if (v80)
  {
    v81 = MEMORY[0x277D83838];
  }

  else
  {
    v79 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v79, v80, v81);
  v82 = OUTLINED_FUNCTION_30_5();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v82, v83, v84, 1);

  outlined destroy of IntentApplication?(&v260, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(2);
  OUTLINED_FUNCTION_102_7();
  v85 = PreExtractedCard.cardProvider.getter();
  if (v86)
  {
    v87 = MEMORY[0x277D83838];
  }

  else
  {
    v85 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v85, v86, v87);
  v88 = OUTLINED_FUNCTION_30_5();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v88, v89, v90, 1);

  outlined destroy of IntentApplication?(&v260, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v91 = PreExtractedSharedLink.Keys.llmPrompt.getter(3);
  v93 = v92;
  PreExtractedSharedLink.url.getter();
  v94 = type metadata accessor for URL();
  OUTLINED_FUNCTION_166(v72, 1, v94);
  if (v132)
  {
    outlined destroy of IntentApplication?(v72, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_78_12();
  }

  else
  {
    v263 = v94;
    OUTLINED_FUNCTION_18_16();
    v97 = _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v95, v96);
    OUTLINED_FUNCTION_280_1(v97);
    OUTLINED_FUNCTION_51(v94);
    (*(v98 + 32))();
  }

  OUTLINED_FUNCTION_80_9();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v91, v93, v99, 1);

  outlined destroy of IntentApplication?(&v260, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(4);
  OUTLINED_FUNCTION_102_7();
  v100 = PreExtractedSharedLink.urlDescription.getter();
  if (v101)
  {
    v102 = MEMORY[0x277D83838];
  }

  else
  {
    v100 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v100, v101, v102);
  v103 = OUTLINED_FUNCTION_30_5();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v103, v104, v105, 1);

  outlined destroy of IntentApplication?(&v260, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(5);
  OUTLINED_FUNCTION_102_7();
  v106 = PreExtractedSharedLink.artist.getter();
  if (v107)
  {
    v108 = MEMORY[0x277D83838];
  }

  else
  {
    v106 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v106, v107, v108);
  v109 = OUTLINED_FUNCTION_30_5();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v109, v110, v111, 1);

  outlined destroy of IntentApplication?(&v260, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(6);
  OUTLINED_FUNCTION_102_7();
  v112 = PreExtractedSharedLink.album.getter();
  if (v113)
  {
    v114 = MEMORY[0x277D83838];
  }

  else
  {
    v112 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v112, v113, v114);
  v115 = OUTLINED_FUNCTION_30_5();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v115, v116, v117, 1);

  outlined destroy of IntentApplication?(&v260, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v118 = PreExtractedSharedLink.Keys.llmPrompt.getter(7);
  v120 = v119;
  PreExtractedSharedLink.publishedDate.getter();
  OUTLINED_FUNCTION_241_3();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v66, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_70_9(v3);
  v255 = v4;
  if (v132)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v7, v121);
    outlined destroy of IntentApplication?(v66, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v122 = v3;
  }

  else
  {
    v238 = v66;
    v243 = v7;
    v123 = v22;
    v124 = *(v22 + 32);
    v125 = v259;
    v124(v253, v3, v259);
    v260 = v118;
    v261 = v120;
    OUTLINED_FUNCTION_143_6();
    MEMORY[0x25F89F6C0](v260, v261);

    v126 = *(v123 + 16);
    v127 = v250;
    OUTLINED_FUNCTION_206_3();
    v126();
    v128 = OUTLINED_FUNCTION_86_10();
    __swift_storeEnumTagSinglePayload(v128, v129, v130, v125);
    v131 = v239;
    outlined init with copy of SpotlightRankingItem?(v127, v239, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_9_5(v131);
    if (v132)
    {
      outlined destroy of IntentApplication?(v127, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v154 = OUTLINED_FUNCTION_188_5();
      v153 = &_s10Foundation4DateVSgMR;
    }

    else
    {
      v133 = v240;
      v134 = v131;
      v135 = v259;
      v124(v240, v134, v259);
      v136 = v245;
      v137 = v246;
      OUTLINED_FUNCTION_113_9(v245, v246, v138, v139, v140, v141, v142, v143, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249);
      v144 = OUTLINED_FUNCTION_225_3();
      (v126)(v144, v133, v135);
      OUTLINED_FUNCTION_254_1();
      v145 = (v127 + *(v1 + 28));
      *v145 = v136;
      v145[1] = v137;
      v263 = MEMORY[0x277D837D0];
      v264 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v146, v147);

      OUTLINED_FUNCTION_251_3();
      v148 = v252;
      v149 = v249;
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v127, v150);
      (*(v247 + 8))(v148, v149);
      OUTLINED_FUNCTION_204_5();
      v151(v240, v135);
      outlined destroy of IntentApplication?(v250, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v152 = &_ss23CustomStringConvertible_pSgMd;
      v153 = &_ss23CustomStringConvertible_pSgMR;
      v154 = &v260;
    }

    outlined destroy of IntentApplication?(v154, v152, v153);
    v22 = v123;
    OUTLINED_FUNCTION_92_7();
    OUTLINED_FUNCTION_204_5();
    v155(v253, v259);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v257, v156);
    v7 = v243;
    v122 = v238;
  }

  outlined destroy of IntentApplication?(v122, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v157 = PreExtractedSharedLink.Keys.llmPrompt.getter(8);
  v159 = v158;
  v160 = v258;
  PreExtractedSharedLink.releaseDate.getter();
  v161 = v256;
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  v162 = v254;
  outlined init with copy of SpotlightRankingItem?(v160, v254, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_70_9(v162);
  if (v132)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v161, v163);
    outlined destroy of IntentApplication?(v258, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v258 = v162;
  }

  else
  {
    v164 = *(v22 + 32);
    v165 = OUTLINED_FUNCTION_188_5();
    v166 = v259;
    (v164)(v165);
    v260 = v157;
    v261 = v159;
    OUTLINED_FUNCTION_143_6();
    MEMORY[0x25F89F6C0](v260, v261);

    v257 = v22;
    v167 = v22 + 16;
    v168 = *(v22 + 16);
    v169 = v251;
    v170 = OUTLINED_FUNCTION_48_3();
    v168(v170);
    v171 = OUTLINED_FUNCTION_86_10();
    __swift_storeEnumTagSinglePayload(v171, v172, v173, v166);
    v174 = v241;
    outlined init with copy of SpotlightRankingItem?(v169, v241, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_9_5(v174);
    if (v175)
    {
      outlined destroy of IntentApplication?(v169, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v176 = OUTLINED_FUNCTION_188_5();
      outlined destroy of IntentApplication?(v176, v177, &_s10Foundation4DateVSgMR);
      v197 = v257;
    }

    else
    {
      v178 = v244;
      v179 = v259;
      (v164)();
      v243 = v7;
      v180 = v252;
      v181 = OUTLINED_FUNCTION_191_5();
      v182 = v246;
      OUTLINED_FUNCTION_113_9(v181, v246, v183, v184, v185, v186, v187, v188, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249);
      v189 = OUTLINED_FUNCTION_225_3();
      v190 = v178;
      v161 = v256;
      (v168)(v189, v190, v179);
      OUTLINED_FUNCTION_254_1();
      v191 = (v169 + *(v164 + 28));
      *v191 = v166;
      v191[1] = v182;
      v263 = MEMORY[0x277D837D0];
      v264 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v192, v193);

      OUTLINED_FUNCTION_251_3();
      v194 = v249;
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v169, v195);
      (*(v247 + 8))(v180, v194);
      OUTLINED_FUNCTION_241_3();
      (*(v196 + 8))(v244, v179);
      outlined destroy of IntentApplication?(v251, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(&v260, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      v197 = v167;
    }

    OUTLINED_FUNCTION_92_7();
    (*(v197 + 8))(v255, v259);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v161, v198);
  }

  outlined destroy of IntentApplication?(v258, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(9);
  OUTLINED_FUNCTION_101_7();
  v199 = PreExtractedSharedLink.lengthInSeconds.getter();
  if (v200)
  {
    v199 = OUTLINED_FUNCTION_22_16();
    v261 = 0;
    v262 = 0;
  }

  else
  {
    v201 = MEMORY[0x277D83A60];
  }

  OUTLINED_FUNCTION_237_3(v199, v201);
  OUTLINED_FUNCTION_80_9();
  v202 = OUTLINED_FUNCTION_52_1();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v202, v203, v204, 0);

  outlined destroy of IntentApplication?(&v260, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(10);
  OUTLINED_FUNCTION_101_7();
  v205 = PreExtractedSharedLink.musicalGenre.getter();
  if (v206)
  {
    v207 = MEMORY[0x277D83838];
  }

  else
  {
    v205 = OUTLINED_FUNCTION_7_24();
  }

  v208 = OUTLINED_FUNCTION_3_34(v205, v206, v207);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v208, v209, v210, 1);

  outlined destroy of IntentApplication?(&v260, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(11);
  OUTLINED_FUNCTION_101_7();
  v211 = PreExtractedSharedLink.curator.getter();
  if (v212)
  {
    v213 = MEMORY[0x277D83838];
  }

  else
  {
    v211 = OUTLINED_FUNCTION_7_24();
  }

  v214 = OUTLINED_FUNCTION_3_34(v211, v212, v213);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v214, v215, v216, 1);

  outlined destroy of IntentApplication?(&v260, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(12);
  OUTLINED_FUNCTION_101_7();
  v217 = PreExtractedSharedLink.episode.getter();
  if (v218)
  {
    v219 = MEMORY[0x277D83838];
  }

  else
  {
    v217 = OUTLINED_FUNCTION_7_24();
  }

  v220 = OUTLINED_FUNCTION_3_34(v217, v218, v219);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v220, v221, v222, 1);

  outlined destroy of IntentApplication?(&v260, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(13);
  OUTLINED_FUNCTION_101_7();
  v223 = PreExtractedSharedLink.podcastName.getter();
  if (v224)
  {
    v225 = MEMORY[0x277D83838];
  }

  else
  {
    v223 = OUTLINED_FUNCTION_7_24();
  }

  v226 = OUTLINED_FUNCTION_3_34(v223, v224, v225);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v226, v227, v228, 1);

  outlined destroy of IntentApplication?(&v260, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  PreExtractedSharedLink.Keys.llmPrompt.getter(14);
  OUTLINED_FUNCTION_101_7();
  v229 = PreExtractedSharedLink.summary.getter();
  if (v230)
  {
    v231 = MEMORY[0x277D83838];
  }

  else
  {
    v229 = OUTLINED_FUNCTION_7_24();
  }

  v232 = OUTLINED_FUNCTION_3_34(v229, v230, v231);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v232, v233, v234, 1);

  outlined destroy of IntentApplication?(&v260, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v236;
  result._countAndFlagsBits = v235;
  return result;
}

Swift::String __swiftcall PreExtractedBreadcrumb.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  object = locale.value._object;
  countAndFlagsBits = locale.value._countAndFlagsBits;
  v4 = type metadata accessor for EditorialDateFormatter(0);
  v5 = OUTLINED_FUNCTION_114(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v27 = 0;
  v28 = 0xE000000000000000;
  MEMORY[0x25F89F5D0](100);
  v8 = PreExtractedBreadcrumb.Keys.llmPrompt.getter(0);
  v10 = v9;
  v11 = PreExtractedBreadcrumb.extractedDatesValues.getter();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  if (v11)
  {
    if (*(v11 + 16))
    {
      v25 = v8;
      v26 = v10;
      OUTLINED_FUNCTION_48_9();
      MEMORY[0x25F89F6C0](v8, v10);

      MEMORY[0x28223BE20](v12);
      v24[2] = countAndFlagsBits;
      v24[3] = object;
      v24[4] = v1;
      v25 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DateVG_SSs5NeverOTg5(partial apply for specialized closure #1 in LLMFormatter.StringInterpolation.appendInterpolation<A>(_:dates:locale:formatStyle:), v24, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      OUTLINED_FUNCTION_8_25();
      lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(v13, v14, &_sSaySSGMR);
      v15 = BidirectionalCollection<>.joined(separator:)();
      v17 = v16;

      MEMORY[0x25F89F6C0](v15, v17);

      OUTLINED_FUNCTION_177_5();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_0_47();
  outlined destroy of EditorialDateFormatter(v1, v18);
  PreExtractedBreadcrumb.Keys.llmPrompt.getter(1);
  OUTLINED_FUNCTION_45_11();
  v29.value._rawValue = PreExtractedBreadcrumb.extractedLocationsValues.getter();
  OUTLINED_FUNCTION_58_7(v29);

  PreExtractedBreadcrumb.Keys.llmPrompt.getter(2);
  OUTLINED_FUNCTION_45_11();
  v30.value._rawValue = PreExtractedBreadcrumb.extractedPhoneNumbersLabels.getter();
  OUTLINED_FUNCTION_58_7(v30);

  PreExtractedBreadcrumb.Keys.llmPrompt.getter(3);
  OUTLINED_FUNCTION_45_11();
  v31.value._rawValue = PreExtractedBreadcrumb.extractedPhoneNumbersCountryCodes.getter();
  OUTLINED_FUNCTION_58_7(v31);

  PreExtractedBreadcrumb.Keys.llmPrompt.getter(4);
  OUTLINED_FUNCTION_45_11();
  v32.value._rawValue = PreExtractedBreadcrumb.extractedAddressesLabels.getter();
  OUTLINED_FUNCTION_58_7(v32);

  PreExtractedBreadcrumb.Keys.llmPrompt.getter(5);
  OUTLINED_FUNCTION_45_11();
  v33.value._rawValue = PreExtractedBreadcrumb.extractedFlightsLabels.getter();
  OUTLINED_FUNCTION_58_7(v33);

  PreExtractedBreadcrumb.Keys.llmPrompt.getter(6);
  OUTLINED_FUNCTION_45_11();
  v34.value._rawValue = MEMORY[0x25F89C720]();
  OUTLINED_FUNCTION_58_7(v34);

  PreExtractedBreadcrumb.Keys.llmPrompt.getter(7);
  OUTLINED_FUNCTION_45_11();
  v35.value._rawValue = MEMORY[0x25F89C7B0]();
  OUTLINED_FUNCTION_58_7(v35);

  PreExtractedBreadcrumb.Keys.llmPrompt.getter(8);
  OUTLINED_FUNCTION_45_11();
  v36.value._rawValue = PreExtractedBreadcrumb.extractedCurrenciesValues.getter();
  OUTLINED_FUNCTION_58_7(v36);

  PreExtractedBreadcrumb.Keys.llmPrompt.getter(9);
  OUTLINED_FUNCTION_45_11();
  v19 = PreExtractedBreadcrumb.extractedEmailsLabels.getter();
  v20._countAndFlagsBits = OUTLINED_FUNCTION_34_11();
  v37.value._rawValue = v19;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v20, v37);

  LLMFormatter.sanitized.getter();
  OUTLINED_FUNCTION_89_10();
  v21 = OUTLINED_FUNCTION_88();
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t outlined destroy of EditorialDateFormatter(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

Swift::String __swiftcall Party.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v268 = v5;
  v269 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_49_3();
  v253 = v13;
  v14 = OUTLINED_FUNCTION_78_0();
  v15 = type metadata accessor for EditorialDateFormatter.DateInput(v14);
  v16 = OUTLINED_FUNCTION_27_14(v15, &v266);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v19);
  v246 = type metadata accessor for Date.FormatStyle();
  v20 = OUTLINED_FUNCTION_14(v246);
  v243 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_109();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v28);
  v29 = type metadata accessor for Date();
  v30 = OUTLINED_FUNCTION_14(v29);
  v260 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_39_0();
  v249 = v34;
  OUTLINED_FUNCTION_174();
  v36 = MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39_14(v36, v37, v38, v39, v40, v41, v42, v43, v230);
  v45 = MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_21_17(v45, v46, v47, v48, v49, v50, v51, v52, v231);
  MEMORY[0x28223BE20](v53);
  v54 = OUTLINED_FUNCTION_157_4();
  v55 = type metadata accessor for EditorialDateFormatter(v54);
  v56 = OUTLINED_FUNCTION_114(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_39_0();
  v259 = v59;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_168_4(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v63 = OUTLINED_FUNCTION_114(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  v67 = MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_25_16(v67, v68, v69, v70, v71, v72, v73, v74, v232);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_47_13();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_7_4();
  v258 = v77;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_133_3();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_73_9();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_272_0();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_229_3(v82);
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](114);
  OUTLINED_FUNCTION_119_4();
  MEMORY[0x25F89F6C0](0x6564207974726150, 0xEE003A736C696174);
  v83 = Appointment.eventName.getter();
  if (v84)
  {
    v85 = MEMORY[0x277D83838];
  }

  else
  {
    v83 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v83, v84, v85);
  OUTLINED_FUNCTION_125_6();
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_284_0(v86, v87, v88);
  outlined destroy of IntentApplication?(v261, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v89 = Appointment.eventSubType.getter();
  if (v90)
  {
    v91 = MEMORY[0x277D83838];
  }

  else
  {
    v89 = OUTLINED_FUNCTION_7_24();
  }

  v92 = OUTLINED_FUNCTION_54_14(v89, v90, v91);
  OUTLINED_FUNCTION_273_1(v92 | 0x62750000);
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_284_0(v93, v94, v95);
  outlined destroy of IntentApplication?(v261, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v96 = Appointment.startLocationName.getter();
  if (v97)
  {
    v98 = MEMORY[0x277D83838];
  }

  else
  {
    v96 = OUTLINED_FUNCTION_7_24();
  }

  v99 = OUTLINED_FUNCTION_10_22(v96, v97, v98);
  OUTLINED_FUNCTION_196_4(v99, v100, v101);
  outlined destroy of IntentApplication?(v261, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v102 = Appointment.startLocationAddress.getter();
  if (v103)
  {
    v104 = MEMORY[0x277D83838];
  }

  else
  {
    v102 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v102, v103, v104);
  OUTLINED_FUNCTION_77_9();
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_120_6(v105, v106, v107);
  outlined destroy of IntentApplication?(v261, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v108 = Party.status.getter();
  if (v109)
  {
    v110 = MEMORY[0x277D83838];
  }

  else
  {
    v108 = OUTLINED_FUNCTION_7_24();
  }

  v111 = OUTLINED_FUNCTION_17_22(v108, v109, v110);
  OUTLINED_FUNCTION_112_10(v111, v112, v113);
  outlined destroy of IntentApplication?(v261, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v114 = Party.updateStatus.getter();
  v242 = v8;
  v250 = v4;
  v237 = v3;
  if (v115)
  {
    v116 = MEMORY[0x277D83838];
  }

  else
  {
    v114 = OUTLINED_FUNCTION_7_24();
  }

  v117 = OUTLINED_FUNCTION_4_29(v114, v115, v116);
  OUTLINED_FUNCTION_180_4(v117, v118, v119);
  outlined destroy of IntentApplication?(v261, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  Party.startDate.getter();
  v120 = Appointment.timeIsUnknown.getter();
  v234 = Party.startDateTimeZone.getter();
  v122 = v121;
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  v123 = v1;
  outlined init with copy of SpotlightRankingItem?(v254, v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_166(v1, 1, v29);
  v236 = v26;
  v239 = v2;
  if (v136)
  {
    v124 = v260;

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v256, v125);
    outlined destroy of IntentApplication?(v254, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v126 = v123;
    v127 = v29;
    v128 = v259;
  }

  else
  {
    v129 = v29;
    v130 = *(v260 + 32);
    v130(v4, v1, v129);
    OUTLINED_FUNCTION_63_11();
    OUTLINED_FUNCTION_220_3();
    v131 = *(v260 + 16);
    v132 = OUTLINED_FUNCTION_235_3();
    (v131)(v132);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v129);
    outlined init with copy of SpotlightRankingItem?(v247, v237, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_71_10(v237);
    if (v136)
    {

      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v137, v138, v139);
      v140 = OUTLINED_FUNCTION_87_8();
      outlined destroy of IntentApplication?(v140, v141, v142);
      v143 = v260;
      v144 = v129;
    }

    else
    {
      HIDWORD(v233) = v120 ^ 1;
      v130(v238, v237, v129);
      if (v120)
      {

        v145 = OUTLINED_FUNCTION_161_2();
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v145, v146, v147, v148, v149, v150, v151, v152, v233, v234, v235, v236, v129, v238, v2, v240, v242, v243, v244, v246);
      }

      else
      {
        v153 = OUTLINED_FUNCTION_161_2();
        static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v153, v154, v155, v234, v122, v156, v157, v158, v233, v234, v235, v236, v129, v238, v2, v240, v242, v243, v244, v246);
      }

      v159 = *(v240 + 24);
      OUTLINED_FUNCTION_251_1(&v265);
      v144 = v237;
      v131();
      OUTLINED_FUNCTION_52_13(&v264);
      v160 = (v244 + *(v240 + 28));
      *v160 = v120;
      v160[1] = v260 + 32;
      v262 = MEMORY[0x277D837D0];
      v263 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v161, v162);
      OUTLINED_FUNCTION_212_2();

      OUTLINED_FUNCTION_29_5();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v244, v163);
      OUTLINED_FUNCTION_148_5(&v267);
      v164 = OUTLINED_FUNCTION_121_0();
      v165(v164);
      v143 = v260;
      OUTLINED_FUNCTION_184_3();
      v166(v247, v237);
      outlined destroy of IntentApplication?(v247, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(v261, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    v124 = v143;
    OUTLINED_FUNCTION_184_3();
    v167(v250, v144);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v256, v168);
    v128 = v259;
    v127 = v144;
    v126 = v254;
  }

  outlined destroy of IntentApplication?(v126, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  Party.endDate.getter();
  v169 = Appointment.timeIsUnknown.getter();
  v257 = Party.startDateTimeZone.getter();
  v171 = v170;
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v258, v251, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_71_10(v251);
  if (v136)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v128, v172);
    outlined destroy of IntentApplication?(v258, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v173 = v251;
  }

  else
  {
    v174 = *(v124 + 32);
    v175 = OUTLINED_FUNCTION_28_12();
    v174(v175);
    OUTLINED_FUNCTION_64_8();
    OUTLINED_FUNCTION_124_9();
    MEMORY[0x25F89F6C0]();
    v176 = *(v124 + 16);
    v177 = v127;
    v176(v248, v252, v127);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v178, v179, v180, v127);
    outlined init with copy of SpotlightRankingItem?(v248, v239, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_71_10(v239);
    if (v181)
    {

      v171 = &_s10Foundation4DateVSgMR;
      v182 = OUTLINED_FUNCTION_87_8();
      outlined destroy of IntentApplication?(v182, v183, v184);
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v185, v186, v187);
      v188 = v260;
    }

    else
    {
      v255 = v169 ^ 1;
      (v174)(v249, v239, v127);
      if (v169)
      {

        v189 = OUTLINED_FUNCTION_151_2();
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v189, v190, v191, v192, v193, v194, v195, v196, v233, v234, v235, v236, v237, v238, v239, v240, v242, v243, v244, v246);
      }

      else
      {
        v197 = OUTLINED_FUNCTION_151_2();
        static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v197, v198, v199, v257, v171, v200, v201, v202, v233, v234, v235, v236, v237, v238, v239, v240, v242, v243, v244, v246);
      }

      v188 = v260;
      v176(v245 + *(v241 + 24), v249, v127);
      OUTLINED_FUNCTION_271_0(v255);
      v203 = (v245 + *(v241 + 28));
      *v203 = v127;
      v203[1] = v124 + 32;
      v177 = v127;
      v262 = MEMORY[0x277D837D0];
      v263 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      v171 = _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v204, v205);

      OUTLINED_FUNCTION_29_5();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v245, v206);
      OUTLINED_FUNCTION_4_4(&v267);
      v207 = OUTLINED_FUNCTION_121_0();
      v208(v207);
      OUTLINED_FUNCTION_172_4();
      v209(v249, v127);
      outlined destroy of IntentApplication?(v248, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(v261, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    (*(v188 + 8))(v252, v177);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v259, v210);
    v173 = v258;
  }

  outlined destroy of IntentApplication?(v173, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  Party.eventUrl.getter();
  type metadata accessor for URL();
  v211 = OUTLINED_FUNCTION_176_5();
  OUTLINED_FUNCTION_9_5(v211);
  if (v136)
  {
    outlined destroy of IntentApplication?(v253, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_78_12();
  }

  else
  {
    v212 = URL.absoluteString.getter();
    v262 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_252_3(v212, v213, MEMORY[0x277D83838]);
    OUTLINED_FUNCTION_51(v171);
    v215 = *(v214 + 8);
    v216 = OUTLINED_FUNCTION_52_1();
    v217(v216);
  }

  OUTLINED_FUNCTION_125_6();
  OUTLINED_FUNCTION_80_9();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v218, v219, v220, 0);
  outlined destroy of IntentApplication?(v261, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v221 = Appointment.eventSourceLLMConsumableDescription.getter();
  if (v222)
  {
    v223 = MEMORY[0x277D83838];
  }

  else
  {
    v221 = OUTLINED_FUNCTION_7_24();
  }

  v224 = OUTLINED_FUNCTION_16_20(v221, v222, v223);
  OUTLINED_FUNCTION_112_10(v224, v225, v226);
  outlined destroy of IntentApplication?(v261, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v228;
  result._countAndFlagsBits = v227;
  return result;
}

Swift::String __swiftcall FlightReservation.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v5 = type metadata accessor for DateComponents();
  v6 = OUTLINED_FUNCTION_14(v5);
  v194 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_39_0();
  v190 = v10;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_2();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v15 = OUTLINED_FUNCTION_114(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_39_0();
  v192 = v18;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_74_14();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_75_10();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_272_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_95_3();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v24 = OUTLINED_FUNCTION_114(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_67_12();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_123_8();
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](307);
  v197 = v195[0];
  v198 = v195[1];
  OUTLINED_FUNCTION_208_3();
  MEMORY[0x25F89F6C0]();
  v28 = ShippingOrder.eventType.getter();
  if (v29)
  {
    v30 = MEMORY[0x277D83838];
  }

  else
  {
    v28 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v28, v29, v30);
  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v31, v32, v33, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  FlightReservation.flightCheckInUrl.getter();
  v34 = type metadata accessor for URL();
  OUTLINED_FUNCTION_166(v3, 1, v34);
  if (v35)
  {
    outlined destroy of IntentApplication?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_78_12();
  }

  else
  {
    v196 = v34;
    OUTLINED_FUNCTION_18_16();
    v38 = _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v36, v37);
    OUTLINED_FUNCTION_280_1(v38);
    OUTLINED_FUNCTION_51(v34);
    (*(v39 + 32))();
  }

  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0x6E696B6365686320, 0xED00003A6C725520, v195, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_230_2();
  FlightReservation.flightBookingInfoUrl.getter();
  v40 = OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_166(v40, v41, v34);
  if (v35)
  {
    outlined destroy of IntentApplication?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_78_12();
  }

  else
  {
    v196 = v34;
    OUTLINED_FUNCTION_18_16();
    v44 = _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v42, v43);
    OUTLINED_FUNCTION_280_1(v44);
    OUTLINED_FUNCTION_51(v34);
    (*(v45 + 32))();
  }

  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0xD000000000000012, v46, v47, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v48 = FlightReservation.flightCarrier.getter();
  if (v49)
  {
    v50 = MEMORY[0x277D83838];
  }

  else
  {
    v48 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v48, v49, v50);
  OUTLINED_FUNCTION_120_6(0x7265697272616320, v51, v195);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v52 = FlightReservation.flightCarrierCode.getter();
  if (v53)
  {
    v54 = MEMORY[0x277D83838];
  }

  else
  {
    v52 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v52, v53, v54);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0x7265697272616320, 0xEE003A65646F6320, v195, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v55 = FlightReservation.flightDesignator.getter();
  if (v56)
  {
    v57 = MEMORY[0x277D83838];
  }

  else
  {
    v55 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v55, v56, v57);
  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0xD000000000000014, v58, v59, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v60 = FlightReservation.flightDepartureAirportAddress.getter();
  if (v61)
  {
    v62 = MEMORY[0x277D83838];
  }

  else
  {
    v60 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v60, v61, v62);
  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v63, v64, v65, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v66 = FlightReservation.flightDepartureAirportCode.getter();
  if (v67)
  {
    v68 = MEMORY[0x277D83838];
  }

  else
  {
    v66 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v66, v67, v68);
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_197_5(24, v69, v70);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v71 = FlightReservation.flightDepartureAirportCountry.getter();
  if (v72)
  {
    v73 = MEMORY[0x277D83838];
  }

  else
  {
    v71 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v71, v72, v73);
  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v74, v75, v76, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v77 = FlightReservation.flightDepartureAirportLocality.getter();
  if (v78)
  {
    v79 = MEMORY[0x277D83838];
  }

  else
  {
    v77 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v77, v78, v79);
  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v80, v81, v82, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v83 = FlightReservation.flightDepartureAirportName.getter();
  if (v84)
  {
    v85 = MEMORY[0x277D83838];
  }

  else
  {
    v83 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v83, v84, v85);
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_197_5(24, v86, v87);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v88 = FlightReservation.flightDepartureAirportRegion.getter();
  if (v89)
  {
    v90 = MEMORY[0x277D83838];
  }

  else
  {
    v88 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v88, v89, v90);
  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v91, v92, v93, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v94 = FlightReservation.flightDepartureTerminal.getter();
  if (v95)
  {
    v96 = MEMORY[0x277D83838];
  }

  else
  {
    v94 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v94, v95, v96);
  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0xD000000000000014, v97, v98, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  FlightReservation.flightDepartureDateComponents.getter();
  v99 = OUTLINED_FUNCTION_86_10();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v5);
  v102 = HotelReservation.timeIsUnknown.getter();
  outlined init with copy of SpotlightRankingItem?(v2, v1, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_9_5(v1);
  if (v35)
  {
    outlined destroy of IntentApplication?(v2, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v2 = v1;
  }

  else
  {
    v103 = *(v194 + 32);
    OUTLINED_FUNCTION_142_3();
    v104();
    OUTLINED_FUNCTION_208_3();
    MEMORY[0x25F89F6C0]();
    (*(v194 + 16))(v193, v13, v5);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v5);
    OUTLINED_FUNCTION_201_4();
    outlined destroy of IntentApplication?(v193, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_177_5();
    (*(v194 + 8))(v13, v5);
  }

  v108 = v191;
  outlined destroy of IntentApplication?(v2, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v109 = FlightReservation.flightArrivalAirportAddress.getter();
  if (v110)
  {
    v111 = MEMORY[0x277D83838];
  }

  else
  {
    v109 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v109, v110, v111);
  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v112, v113, v114, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v115 = FlightReservation.flightArrivalAirportCode.getter();
  if (v116)
  {
    v117 = MEMORY[0x277D83838];
  }

  else
  {
    v115 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v115, v116, v117);
  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0xD000000000000016, v118, v119, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v120 = FlightReservation.flightArrivalAirportCountry.getter();
  if (v121)
  {
    v122 = MEMORY[0x277D83838];
  }

  else
  {
    v120 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v120, v121, v122);
  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v123, v124, v125, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v126 = FlightReservation.flightArrivalAirportLocality.getter();
  if (v127)
  {
    v128 = MEMORY[0x277D83838];
  }

  else
  {
    v126 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v126, v127, v128);
  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v129, v130, v131, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v132 = FlightReservation.flightArrivalAirportName.getter();
  if (v133)
  {
    v134 = MEMORY[0x277D83838];
  }

  else
  {
    v132 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v132, v133, v134);
  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0xD000000000000016, v135, v136, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v137 = FlightReservation.flightArrivalAirportRegion.getter();
  if (v138)
  {
    v139 = MEMORY[0x277D83838];
  }

  else
  {
    v137 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v137, v138, v139);
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_197_5(24, v140, v141);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v142 = FlightReservation.flightArrivalTerminal.getter();
  if (v143)
  {
    v144 = MEMORY[0x277D83838];
  }

  else
  {
    v142 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v142, v143, v144);
  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0xD000000000000012, v145, v146, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  FlightReservation.flightArrivalDateComponents.getter();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v5);
  HotelReservation.timeIsUnknown.getter();
  outlined init with copy of SpotlightRankingItem?(v191, v192, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_9_5(v192);
  if (v35)
  {
    outlined destroy of IntentApplication?(v191, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v108 = v192;
  }

  else
  {
    OUTLINED_FUNCTION_266_1();
    v151 = *(v150 + 32);
    OUTLINED_FUNCTION_47_11();
    v152();
    MEMORY[0x25F89F6C0](0x6C61766972726120, 0xEF203A656D697420);
    (*(v102 + 16))(v193, v190, v5);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v153, v154, v155, v5);
    OUTLINED_FUNCTION_201_4();
    outlined destroy of IntentApplication?(v193, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_177_5();
    v156 = *(v102 + 8);
    v157 = OUTLINED_FUNCTION_21_7();
    v158(v157);
  }

  outlined destroy of IntentApplication?(v108, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v159 = FlightReservation.flightConfirmationNumber.getter();
  if (v160)
  {
    v161 = MEMORY[0x277D83838];
  }

  else
  {
    v159 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v159, v160, v161);
  OUTLINED_FUNCTION_41_11();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v162, v163, v164, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v165 = FlightReservation.flightPassengerNames.getter();
  v166._countAndFlagsBits = 0xD000000000000011;
  v166._object = 0x800000025DBF3DB0;
  v199.value._rawValue = v165;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v166, v199);

  v167 = FlightReservation.flightPassengerSeatNumbers.getter();
  v168._object = 0x800000025DBF3DD0;
  v168._countAndFlagsBits = 0xD000000000000018;
  v200.value._rawValue = v167;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v168, v200);

  v169 = FlightReservation.flightStatus.getter();
  if (v170)
  {
    v171 = MEMORY[0x277D83838];
  }

  else
  {
    v169 = OUTLINED_FUNCTION_7_24();
  }

  v172 = OUTLINED_FUNCTION_17_22(v169, v170, v171);
  OUTLINED_FUNCTION_179_5(v172, v173, v174);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  updated = FlightReservation.flightUpdateStatus.getter();
  if (v176)
  {
    v177 = MEMORY[0x277D83838];
  }

  else
  {
    updated = OUTLINED_FUNCTION_7_24();
  }

  v178 = OUTLINED_FUNCTION_4_29(updated, v176, v177);
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v178, v179, v180, 0);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v181 = Appointment.eventSubType.getter();
  if (v182)
  {
    v183 = MEMORY[0x277D83838];
  }

  else
  {
    v181 = OUTLINED_FUNCTION_7_24();
  }

  v184 = OUTLINED_FUNCTION_16_20(v181, v182, v183);
  OUTLINED_FUNCTION_179_5(v184, v185, v186);
  outlined destroy of IntentApplication?(v195, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_250_3();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v188;
  result._countAndFlagsBits = v187;
  return result;
}

Swift::String __swiftcall HotelReservation.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v113[1] = v6;
  v113[2] = v7;
  OUTLINED_FUNCTION_264_2();
  v8 = type metadata accessor for DateComponents();
  v9 = OUTLINED_FUNCTION_14(v8);
  v114 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39_0();
  v113[0] = v13;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v14);
  v16 = v113 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v18 = OUTLINED_FUNCTION_114(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_109();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_133_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_49_15();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_73_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_152_4();
  MEMORY[0x25F89F5D0](136);
  OUTLINED_FUNCTION_274_1();
  OUTLINED_FUNCTION_208_3();
  MEMORY[0x25F89F6C0]();
  v115 = v1;
  v28 = HotelReservation.hotelReservationForName.getter();
  if (v29)
  {
    v30 = MEMORY[0x277D83838];
  }

  else
  {
    v28 = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(v28, v29, v30);
  OUTLINED_FUNCTION_218_3(0x6C65746F6820);
  OUTLINED_FUNCTION_149_6();
  OUTLINED_FUNCTION_94_7();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v31, v32, v33, 0);
  outlined destroy of IntentApplication?(v116, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  HotelReservation.hotelCheckinDateComponents.getter();
  HotelReservation.timeIsUnknown.getter();
  v34 = OUTLINED_FUNCTION_30_5();
  outlined init with copy of SpotlightRankingItem?(v34, v35, v36, v37);
  OUTLINED_FUNCTION_9_5(v2);
  if (v38)
  {
    outlined destroy of IntentApplication?(v3, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  }

  else
  {
    v39 = v114;
    v40 = *(v114 + 32);
    OUTLINED_FUNCTION_29_5();
    v41();
    OUTLINED_FUNCTION_98_2();
    v42 = OUTLINED_FUNCTION_153_2();
    MEMORY[0x25F89F6C0](v42);
    (*(v39 + 16))(v5, v16, v8);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v8);
    OUTLINED_FUNCTION_201_4();
    outlined destroy of IntentApplication?(v5, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_177_5();
    (*(v39 + 8))(v16, v8);
  }

  v46 = OUTLINED_FUNCTION_30_5();
  outlined destroy of IntentApplication?(v46, v47, &_s10Foundation14DateComponentsVSgMR);
  HotelReservation.hotelCheckoutDateComponents.getter();
  HotelReservation.timeIsUnknown.getter();
  v48 = OUTLINED_FUNCTION_32_3();
  outlined init with copy of SpotlightRankingItem?(v48, v49, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_9_5(v23);
  if (v38)
  {
    outlined destroy of IntentApplication?(v4, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v4 = v23;
  }

  else
  {
    OUTLINED_FUNCTION_266_1();
    v51 = *(v50 + 32);
    OUTLINED_FUNCTION_206_3();
    v52();
    OUTLINED_FUNCTION_98_2();
    v53 = OUTLINED_FUNCTION_153_2();
    MEMORY[0x25F89F6C0](v53);
    v54 = OUTLINED_FUNCTION_51_4();
    v55(v54);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v8);
    OUTLINED_FUNCTION_201_4();
    outlined destroy of IntentApplication?(v5, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_177_5();
    v59 = OUTLINED_FUNCTION_21_7();
    v60(v59);
  }

  outlined destroy of IntentApplication?(v4, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v61 = HotelReservation.durationInDays.getter();
  if (v62)
  {
    v61 = OUTLINED_FUNCTION_22_16();
    v116[1] = 0;
    v116[2] = 0;
  }

  else
  {
    v63 = MEMORY[0x277D83BF8];
    v64 = MEMORY[0x277D83B88];
  }

  v116[0] = v61;
  v116[3] = v64;
  v116[4] = v63;
  OUTLINED_FUNCTION_94_7();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v65, v66, v67, 0);
  outlined destroy of IntentApplication?(v116, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v68 = HotelReservation.hotelReservationForAddress.getter();
  if (v69)
  {
    v70 = MEMORY[0x277D83838];
  }

  else
  {
    v68 = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(v68, v69, v70);
  OUTLINED_FUNCTION_77_9();
  OUTLINED_FUNCTION_94_7();
  OUTLINED_FUNCTION_120_6(v71, v72, v73);
  outlined destroy of IntentApplication?(v116, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v74 = HotelReservation.hotelReservationForTelephone.getter();
  if (v75)
  {
    v76 = MEMORY[0x277D83838];
  }

  else
  {
    v74 = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(v74, v75, v76);
  OUTLINED_FUNCTION_214_2();
  OUTLINED_FUNCTION_94_7();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v77, v78, v79, 0);
  outlined destroy of IntentApplication?(v116, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v80 = HotelReservation.hotelUnderName.getter();
  if (v81)
  {
    v82 = MEMORY[0x277D83838];
  }

  else
  {
    v80 = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(v80, v81, v82);
  OUTLINED_FUNCTION_218_3(0x7265646E7520);
  OUTLINED_FUNCTION_94_7();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v83, v84, v85, 0);
  outlined destroy of IntentApplication?(v116, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v86 = HotelReservation.hotelModifyReservationUrl.getter();
  if (v87)
  {
    v88 = MEMORY[0x277D83838];
  }

  else
  {
    v86 = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(v86, v87, v88);
  OUTLINED_FUNCTION_94_7();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v89, v90, v91, 0);
  outlined destroy of IntentApplication?(v116, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v92 = HotelReservation.hotelStatus.getter();
  if (v93)
  {
    v94 = MEMORY[0x277D83838];
  }

  else
  {
    v92 = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(v92, v93, v94);
  OUTLINED_FUNCTION_34_19();
  OUTLINED_FUNCTION_94_7();
  OUTLINED_FUNCTION_179_5(v95, v96, v97);
  outlined destroy of IntentApplication?(v116, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  updated = HotelReservation.hotelUpdateStatus.getter();
  if (v99)
  {
    v100 = MEMORY[0x277D83838];
  }

  else
  {
    updated = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(updated, v99, v100);
  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_94_7();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v101, v102, v103, 0);
  outlined destroy of IntentApplication?(v116, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v104 = Appointment.eventSubType.getter();
  if (v105)
  {
    v106 = MEMORY[0x277D83838];
  }

  else
  {
    v104 = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(v104, v105, v106);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_94_7();
  OUTLINED_FUNCTION_179_5(v107, v108, v109);
  outlined destroy of IntentApplication?(v116, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_250_3();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v111;
  result._countAndFlagsBits = v110;
  return result;
}

Swift::String __swiftcall RestaurantReservation.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v4 = type metadata accessor for DateComponents();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_131_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_216_3();
  OUTLINED_FUNCTION_152_4();
  MEMORY[0x25F89F5D0](121);
  OUTLINED_FUNCTION_274_1();
  OUTLINED_FUNCTION_208_3();
  MEMORY[0x25F89F6C0]();
  v16 = RestaurantReservation.restaurantReservationForName.getter();
  if (v17)
  {
    v18 = MEMORY[0x277D83838];
  }

  else
  {
    v16 = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(v16, v17, v18);
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_94_7();
  OUTLINED_FUNCTION_197_5(18, v19, v20);
  outlined destroy of IntentApplication?(v79, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v21 = HotelReservation.hotelUnderName.getter();
  if (v22)
  {
    v23 = MEMORY[0x277D83838];
  }

  else
  {
    v21 = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(v21, v22, v23);
  OUTLINED_FUNCTION_94_7();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v24, 0xEC0000003A656D61, v25, 0);
  outlined destroy of IntentApplication?(v79, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v26 = RestaurantReservation.restaurantPartySize.getter();
  if (v27)
  {
    v28 = MEMORY[0x277D83838];
  }

  else
  {
    v26 = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(v26, v27, v28);
  OUTLINED_FUNCTION_94_7();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v29, v30, v31, 0);
  outlined destroy of IntentApplication?(v79, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  RestaurantReservation.restaurantStartDateComponents.getter();
  HotelReservation.timeIsUnknown.getter();
  v32 = OUTLINED_FUNCTION_32_3();
  outlined init with copy of SpotlightRankingItem?(v32, v33, v34, v35);
  OUTLINED_FUNCTION_9_5(v3);
  if (v36)
  {
    outlined destroy of IntentApplication?(v1, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v1 = v3;
  }

  else
  {
    v37 = v7[4];
    OUTLINED_FUNCTION_206_3();
    v38();
    MEMORY[0x25F89F6C0](0x203A656D697420, 0xE700000000000000);
    v39 = v7[2];
    OUTLINED_FUNCTION_29_5();
    v40();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v4);
    OUTLINED_FUNCTION_51_4();
    LLMFormatter.StringInterpolation.appendInterpolation(date:locale:timeIsUnknown:timeZone:)();
    outlined destroy of IntentApplication?(v2, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_177_5();
    v44 = v7[1];
    v45 = OUTLINED_FUNCTION_116_1();
    v46(v45);
  }

  outlined destroy of IntentApplication?(v1, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v47 = RestaurantReservation.restaurantReservationForAddress.getter();
  if (v48)
  {
    v49 = MEMORY[0x277D83838];
  }

  else
  {
    v47 = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(v47, v48, v49);
  OUTLINED_FUNCTION_77_9();
  OUTLINED_FUNCTION_94_7();
  OUTLINED_FUNCTION_120_6(v50, v51, v52);
  outlined destroy of IntentApplication?(v79, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v53 = RestaurantReservation.restaurantReservationForTelephone.getter();
  if (v54)
  {
    v55 = MEMORY[0x277D83838];
  }

  else
  {
    v53 = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(v53, v54, v55);
  OUTLINED_FUNCTION_214_2();
  OUTLINED_FUNCTION_94_7();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v56, 0xE700000000000000, v57, 0);
  outlined destroy of IntentApplication?(v79, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v58 = RestaurantReservation.restaurantStatus.getter();
  if (v59)
  {
    v60 = MEMORY[0x277D83838];
  }

  else
  {
    v58 = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(v58, v59, v60);
  OUTLINED_FUNCTION_34_19();
  OUTLINED_FUNCTION_94_7();
  OUTLINED_FUNCTION_179_5(v61, v62, v63);
  outlined destroy of IntentApplication?(v79, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  updated = RestaurantReservation.restaurantUpdateStatus.getter();
  if (v65)
  {
    v66 = MEMORY[0x277D83838];
  }

  else
  {
    updated = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(updated, v65, v66);
  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_94_7();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v67, v68, v69, 0);
  outlined destroy of IntentApplication?(v79, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v70 = Appointment.eventSubType.getter();
  if (v71)
  {
    v72 = MEMORY[0x277D83838];
  }

  else
  {
    v70 = OUTLINED_FUNCTION_20_13();
  }

  OUTLINED_FUNCTION_121_7(v70, v71, v72);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_94_7();
  OUTLINED_FUNCTION_179_5(v73, v74, v75);
  outlined destroy of IntentApplication?(v79, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_250_3();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v77;
  result._countAndFlagsBits = v76;
  return result;
}

Swift::String __swiftcall RentalCarReservation.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v289 = v5;
  v290 = v6;
  OUTLINED_FUNCTION_269_1(v7);
  v8 = OUTLINED_FUNCTION_264_2();
  v9 = type metadata accessor for EditorialDateFormatter.DateInput(v8);
  v10 = OUTLINED_FUNCTION_27_14(v9, &v287);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v13);
  v273 = type metadata accessor for Date.FormatStyle();
  v14 = OUTLINED_FUNCTION_14(v273);
  v271 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_123_8();
  v281 = type metadata accessor for Date();
  v19 = OUTLINED_FUNCTION_14(v281);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_174();
  v25 = MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_38_18(v25, v26, v27, v28, v29, v30, v31, v32, v256);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_46_15();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  v35 = OUTLINED_FUNCTION_78_0();
  v36 = type metadata accessor for EditorialDateFormatter(v35);
  v37 = OUTLINED_FUNCTION_114(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39_0();
  v280 = v40;
  OUTLINED_FUNCTION_174();
  v42 = MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_59_10(v42, v43, v44, v45, v46, v47, v48, v49, v257);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v51 = OUTLINED_FUNCTION_114(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_62_10();
  v56 = MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_39_14(v56, v57, v58, v59, v60, v61, v62, v63, v258);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_61_13();
  v66 = MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_21_17(v66, v67, v68, v69, v70, v71, v72, v73, v259);
  v75 = MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_25_16(v75, v76, v77, v78, v79, v80, v81, v82, v260);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_73_8();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_168_4(v85);
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](163);
  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_141_4();
  MEMORY[0x25F89F6C0]();
  Appointment.startLocationName.getter();
  if (!v86)
  {
    OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_185_3();
  OUTLINED_FUNCTION_81_12(v87, v88, v89);
  OUTLINED_FUNCTION_40_16();
  OUTLINED_FUNCTION_197_5(17, v90, v91);
  outlined destroy of IntentApplication?(v282, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v92 = RentalCarReservation.customerNames.getter();
  if (v92)
  {
    v282[0] = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_8_25();
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(v93, v94, &_sSaySSGMR);
    OUTLINED_FUNCTION_17_18();
    v95 = BidirectionalCollection<>.joined(separator:)();
    v97 = v96;

    v98 = MEMORY[0x277D83838];
    v99 = MEMORY[0x277D837D0];
  }

  else
  {
    v95 = 0;
    v97 = 0;
    OUTLINED_FUNCTION_24_17();
  }

  v282[0] = v95;
  v282[1] = v97;
  v283 = v99;
  v284 = v98;
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_242_2(v100, 14962, v101);
  outlined destroy of IntentApplication?(v282, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v102 = TicketedShow.startLocationAddress.getter();
  if (v103)
  {
    v104 = MEMORY[0x277D83838];
  }

  else
  {
    v102 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v102, v103, v104);
  OUTLINED_FUNCTION_80_9();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v105, 0xE500000000000000, v106, 0);
  outlined destroy of IntentApplication?(v282, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v107 = RentalCarReservation.startLocationName.getter();
  if (v108)
  {
    v109 = MEMORY[0x277D83838];
  }

  else
  {
    v107 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_35_18(v107, v108, v109);
  OUTLINED_FUNCTION_80_9();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v110, v111, v112, 0);
  outlined destroy of IntentApplication?(v282, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v113 = RentalCarReservation.startLocationAddress.getter();
  if (v114)
  {
    v115 = MEMORY[0x277D83838];
  }

  else
  {
    v113 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v113, v114, v115);
  OUTLINED_FUNCTION_120_6(0x7373657264646120, v116, v117);
  outlined destroy of IntentApplication?(v282, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v118 = RentalCarReservation.endLocationName.getter();
  if (v119)
  {
    v120 = MEMORY[0x277D83838];
  }

  else
  {
    v118 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v118, v119, v120);
  OUTLINED_FUNCTION_66_11(0x3A746120646E6520);
  outlined destroy of IntentApplication?(v282, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v121 = RentalCarReservation.endLocationAddress.getter();
  if (v122)
  {
    v123 = MEMORY[0x277D83838];
  }

  else
  {
    v121 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v121, v122, v123);
  OUTLINED_FUNCTION_120_6(0x7373657264646120, v124, v125);
  outlined destroy of IntentApplication?(v282, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v126 = RentalCarReservation.totalCost.getter();
  if (v127)
  {
    v128 = MEMORY[0x277D83838];
  }

  else
  {
    v126 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v126, v127, v128);
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_249_3(v129, v130, v131);
  outlined destroy of IntentApplication?(v282, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v132 = RentalCarReservation.status.getter();
  if (v133)
  {
    v134 = MEMORY[0x277D83838];
  }

  else
  {
    v132 = OUTLINED_FUNCTION_7_24();
  }

  v135 = OUTLINED_FUNCTION_17_22(v132, v133, v134);
  OUTLINED_FUNCTION_112_10(v135, v136, v137);
  outlined destroy of IntentApplication?(v282, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v138 = RentalCarReservation.updateStatus.getter();
  if (v139)
  {
    v140 = MEMORY[0x277D83838];
  }

  else
  {
    v138 = OUTLINED_FUNCTION_7_24();
  }

  v141 = OUTLINED_FUNCTION_4_29(v138, v139, v140);
  OUTLINED_FUNCTION_180_4(v141, v142, v143);
  outlined destroy of IntentApplication?(v282, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v144 = v1;
  RentalCarReservation.startDate.getter();
  v145 = Appointment.timeIsUnknown.getter();
  v146 = RentalCarReservation.startDateTimeZone.getter();
  v148 = v147;
  OUTLINED_FUNCTION_241_3();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v278, v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_70_9(v2);
  if (v158)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v1, v149);
    outlined destroy of IntentApplication?(v278, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v150 = v280;
  }

  else
  {
    v263 = v146;
    v151 = OUTLINED_FUNCTION_166_4();
    (v21)(v151);
    OUTLINED_FUNCTION_55_11();
    v274 = v3;
    v152 = OUTLINED_FUNCTION_103_9();
    v2(v152);
    v153 = OUTLINED_FUNCTION_86_10();
    v156 = __swift_storeEnumTagSinglePayload(v153, v154, v155, v278);
    OUTLINED_FUNCTION_195_5(v156, v157, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_9_5(v146);
    if (v158)
    {

      v144 = &_s10Foundation4DateVSgMd;
      OUTLINED_FUNCTION_117_8();
      outlined destroy of IntentApplication?(v159, v160, v161);
      v162 = OUTLINED_FUNCTION_106_8();
      outlined destroy of IntentApplication?(v162, v163, v164);
      v21 = v3;
    }

    else
    {
      v165 = OUTLINED_FUNCTION_108_6();
      (v21)(v165, v146);
      if (v145)
      {

        v166 = OUTLINED_FUNCTION_31_19();
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v166, v167, v168, v169, v170, v171, v172, v173, v261, v262, v146, v264, v265, v266, v267, v268, v269, v270, v271, v272);
      }

      else
      {
        OUTLINED_FUNCTION_31_19();
        OUTLINED_FUNCTION_228_3();
        static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v174, v175, v176, v177, v148, v178, v179, v180, v261, v262, v146, v264, v265, v266, v267, v268, v269, v270, v271, v272);
      }

      v181 = OUTLINED_FUNCTION_169_5();
      v2(v181);
      OUTLINED_FUNCTION_52_13(&v285);
      OUTLINED_FUNCTION_219_3();
      v283 = MEMORY[0x277D837D0];
      v284 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v182, v183);
      OUTLINED_FUNCTION_283();
      v144 = (v148 + v21);
      OUTLINED_FUNCTION_53_1();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v148, v184);
      v185 = OUTLINED_FUNCTION_130_7();
      v186(v185);
      v187 = OUTLINED_FUNCTION_223_3();
      v188(v187);
      outlined destroy of IntentApplication?(v275, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(v282, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    v189 = OUTLINED_FUNCTION_267_0();
    v190(v189);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v279, v191);
    v150 = v280;
  }

  OUTLINED_FUNCTION_189_4();
  outlined destroy of IntentApplication?(v192, v193, v194);
  OUTLINED_FUNCTION_115_7();
  OUTLINED_FUNCTION_230_2();
  RentalCarReservation.endDate.getter();
  v195 = Appointment.timeIsUnknown.getter();
  v196 = RentalCarReservation.startDateTimeZone.getter();
  v198 = v197;
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  OUTLINED_FUNCTION_245_3();
  OUTLINED_FUNCTION_70_9(v144);
  if (v158)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v150, v199);
    outlined destroy of IntentApplication?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v200 = v144;
  }

  else
  {
    v201 = v21;
    v202 = *(v21 + 32);
    v203 = OUTLINED_FUNCTION_28_12();
    v202(v203);
    OUTLINED_FUNCTION_64_8();
    OUTLINED_FUNCTION_124_9();
    MEMORY[0x25F89F6C0]();
    v204 = *(v201 + 16);
    v205 = OUTLINED_FUNCTION_164_3();
    v204(v205);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v206, v207, v208, v281);
    OUTLINED_FUNCTION_190_5(&v286);
    outlined init with copy of SpotlightRankingItem?(v209, v210, v211, v212);
    v213 = OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_166(v213, v214, v281);
    if (v215)
    {

      v216 = OUTLINED_FUNCTION_106_8();
      outlined destroy of IntentApplication?(v216, v217, v218);
      OUTLINED_FUNCTION_117_8();
    }

    else
    {
      v222 = OUTLINED_FUNCTION_238_3();
      v202(v222);
      if (v195)
      {

        OUTLINED_FUNCTION_69_9();
        v223 = OUTLINED_FUNCTION_65_13();
        v202 = *(v224 - 256);
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v223, v202, 1, v225, v226, v227, v228, v229, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);
      }

      else
      {
        OUTLINED_FUNCTION_69_9();
        OUTLINED_FUNCTION_224_3();
        OUTLINED_FUNCTION_109_9();
        static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v230, v231, v232, v196, v198, v233, v234, v235, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);
        v198 = v195;
      }

      OUTLINED_FUNCTION_162_5(&v287);
      v237 = OUTLINED_FUNCTION_256_3(v236);
      v204(v237);
      OUTLINED_FUNCTION_129_8(v201 & 1);
      *v238 = v198;
      v238[1] = v202;
      v283 = MEMORY[0x277D837D0];
      v284 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v239, v240);

      OUTLINED_FUNCTION_213_3();
      OUTLINED_FUNCTION_53_1();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v195, v241);
      v242 = OUTLINED_FUNCTION_107_6(&v288);
      v243(v242);
      v201 = v274;
      v244 = OUTLINED_FUNCTION_155_6(v274);
      v245(v244);
      outlined destroy of IntentApplication?(v276, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v220 = &_ss23CustomStringConvertible_pSgMd;
      v221 = &_ss23CustomStringConvertible_pSgMR;
      v219 = v282;
    }

    outlined destroy of IntentApplication?(v219, v220, v221);
    OUTLINED_FUNCTION_92_7();
    (*(v201 + 8))(v277, v281);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v280, v246);
    v200 = v4;
  }

  outlined destroy of IntentApplication?(v200, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_115_7();
  v247 = Appointment.eventSourceLLMConsumableDescription.getter();
  if (v248)
  {
    v249 = MEMORY[0x277D83838];
  }

  else
  {
    v247 = OUTLINED_FUNCTION_7_24();
  }

  v250 = OUTLINED_FUNCTION_16_20(v247, v248, v249);
  OUTLINED_FUNCTION_112_10(v250, v251, v252);
  outlined destroy of IntentApplication?(v282, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v254;
  result._countAndFlagsBits = v253;
  return result;
}

Swift::String __swiftcall TicketedTransportation.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v302 = v4;
  v303 = v5;
  OUTLINED_FUNCTION_269_1(v6);
  v7 = OUTLINED_FUNCTION_264_2();
  v8 = type metadata accessor for EditorialDateFormatter.DateInput(v7);
  v9 = OUTLINED_FUNCTION_27_14(v8, &v300);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v12);
  v283 = type metadata accessor for Date.FormatStyle();
  v13 = OUTLINED_FUNCTION_14(v283);
  v281 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_123_8();
  v292 = type metadata accessor for Date();
  v18 = OUTLINED_FUNCTION_14(v292);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_174();
  v24 = MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_38_18(v24, v25, v26, v27, v28, v29, v30, v31, v266);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_46_15();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_2();
  v34 = OUTLINED_FUNCTION_78_0();
  v35 = type metadata accessor for EditorialDateFormatter(v34);
  v36 = OUTLINED_FUNCTION_114(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_39_0();
  v291 = v39;
  OUTLINED_FUNCTION_174();
  v41 = MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_59_10(v41, v42, v43, v44, v45, v46, v47, v48, v267);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v50 = OUTLINED_FUNCTION_114(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_62_10();
  v55 = MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_39_14(v55, v56, v57, v58, v59, v60, v61, v62, v268);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_61_13();
  v65 = MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_21_17(v65, v66, v67, v68, v69, v70, v71, v72, v269);
  v74 = MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_25_16(v74, v75, v76, v77, v78, v79, v80, v81, v270);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_73_8();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_168_4(v84);
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](163);
  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_141_4();
  MEMORY[0x25F89F6C0]();
  Appointment.eventSubType.getter();
  if (!v85)
  {
    OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_185_3();
  v89 = OUTLINED_FUNCTION_54_14(v86, v87, v88);
  OUTLINED_FUNCTION_273_1(v89 | 0x62750000);
  OUTLINED_FUNCTION_80_9();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v90, 0xEB00000000203A65, v91, 0);
  outlined destroy of IntentApplication?(&v293, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v92 = TicketedTransportation.customerNames.getter();
  if (v92)
  {
    v293 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_8_25();
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(v93, v94, &_sSaySSGMR);
    OUTLINED_FUNCTION_17_18();
    v95 = BidirectionalCollection<>.joined(separator:)();
    v97 = v96;

    v98 = MEMORY[0x277D83838];
    v99 = MEMORY[0x277D837D0];
  }

  else
  {
    v95 = 0;
    v97 = 0;
    OUTLINED_FUNCTION_24_17();
  }

  v293 = v95;
  v294 = v97;
  v296 = v99;
  v297 = v98;
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_242_2(v100, 14962, v101);
  outlined destroy of IntentApplication?(&v293, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v102 = TicketedTransportation.startLocationName.getter();
  if (v103)
  {
    v104 = MEMORY[0x277D83838];
  }

  else
  {
    v102 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_35_18(v102, v103, v104);
  OUTLINED_FUNCTION_80_9();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v105, v106, v107, 0);
  outlined destroy of IntentApplication?(&v293, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v108 = TicketedTransportation.startLocationAddress.getter();
  if (v109)
  {
    v110 = MEMORY[0x277D83838];
  }

  else
  {
    v108 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v108, v109, v110);
  OUTLINED_FUNCTION_120_6(0x7373657264646120, v111, v112);
  outlined destroy of IntentApplication?(&v293, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v113 = TicketedShow.startLocationName.getter();
  if (v114)
  {
    v115 = MEMORY[0x277D83838];
  }

  else
  {
    v113 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v113, v114, v115);
  OUTLINED_FUNCTION_66_11(0x3A746120646E6520);
  outlined destroy of IntentApplication?(&v293, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v116 = TicketedShow.startLocationAddress.getter();
  if (v117)
  {
    v118 = MEMORY[0x277D83838];
  }

  else
  {
    v116 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_10_22(v116, v117, v118);
  OUTLINED_FUNCTION_120_6(0x7373657264646120, v119, v120);
  outlined destroy of IntentApplication?(&v293, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v121 = TicketedShow.seatNumbers.getter();
  v122 = v121;
  if (v121)
  {
    v123 = OUTLINED_FUNCTION_158();
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(v123, v124);
    OUTLINED_FUNCTION_56_10();
    OUTLINED_FUNCTION_189_4();
    v121 = lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(v126, v127, v128);
  }

  else
  {
    v125 = 0;
    v294 = 0;
    v295 = 0;
  }

  v293 = v122;
  v296 = v125;
  v297 = v121;
  OUTLINED_FUNCTION_126_8(0x207461657320);
  OUTLINED_FUNCTION_80_9();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v129, v130, v131, 0);
  outlined destroy of IntentApplication?(&v293, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v132 = TicketedShow.durationInSeconds.getter();
  if (v133)
  {
    v132 = OUTLINED_FUNCTION_22_16();
    v294 = 0;
    v295 = 0;
  }

  else
  {
    v134 = MEMORY[0x277D83A60];
  }

  OUTLINED_FUNCTION_237_3(v132, v134);
  OUTLINED_FUNCTION_40_16();
  OUTLINED_FUNCTION_197_5(21, v135, v136);
  outlined destroy of IntentApplication?(&v293, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v137 = TicketedTransportation.status.getter();
  if (v138)
  {
    v139 = MEMORY[0x277D83838];
  }

  else
  {
    v137 = OUTLINED_FUNCTION_7_24();
  }

  v140 = OUTLINED_FUNCTION_17_22(v137, v138, v139);
  OUTLINED_FUNCTION_112_10(v140, v141, v142);
  outlined destroy of IntentApplication?(&v293, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v143 = v1;
  v144 = TicketedTransportation.updateStatus.getter();
  if (v145)
  {
    v146 = MEMORY[0x277D83838];
  }

  else
  {
    v144 = OUTLINED_FUNCTION_7_24();
  }

  v147 = OUTLINED_FUNCTION_4_29(v144, v145, v146);
  OUTLINED_FUNCTION_180_4(v147, v148, v149);
  outlined destroy of IntentApplication?(&v293, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_260_2();
  TicketedTransportation.startDate.getter();
  v150 = Appointment.timeIsUnknown.getter();
  v151 = TicketedTransportation.startDateTimeZone.getter();
  v153 = v152;
  OUTLINED_FUNCTION_241_3();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  v154 = OUTLINED_FUNCTION_121_0();
  outlined init with copy of SpotlightRankingItem?(v154, v155, v156, v157);
  OUTLINED_FUNCTION_70_9(v2);
  if (v167)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v1, v158);
    outlined destroy of IntentApplication?(v288, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v159 = v291;
  }

  else
  {
    v273 = v151;
    v160 = OUTLINED_FUNCTION_166_4();
    (v20)(v160);
    OUTLINED_FUNCTION_55_11();
    v284 = v151;
    v161 = OUTLINED_FUNCTION_103_9();
    v2(v161);
    v162 = OUTLINED_FUNCTION_86_10();
    v165 = __swift_storeEnumTagSinglePayload(v162, v163, v164, 0xEB00000000203A65);
    OUTLINED_FUNCTION_195_5(v165, v166, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_9_5(v288);
    if (v167)
    {

      v143 = &_s10Foundation4DateVSgMd;
      OUTLINED_FUNCTION_117_8();
      outlined destroy of IntentApplication?(v168, v169, v170);
      v171 = OUTLINED_FUNCTION_106_8();
      outlined destroy of IntentApplication?(v171, v172, v173);
      v20 = v151;
    }

    else
    {
      v174 = OUTLINED_FUNCTION_108_6();
      (v20)(v174, v288, 0xEB00000000203A65);
      if (v150)
      {

        v175 = OUTLINED_FUNCTION_31_19();
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v175, v176, v177, v178, v179, v180, v181, v182, v271, v272, v151, v274, v275, v276, v277, v278, v279, v280, v281, v282);
      }

      else
      {
        OUTLINED_FUNCTION_31_19();
        OUTLINED_FUNCTION_228_3();
        static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v183, v184, v185, v186, v153, v187, v188, v189, v271, v272, v151, v274, v275, v276, v277, v278, v279, v280, v281, v282);
      }

      v190 = OUTLINED_FUNCTION_169_5();
      v2(v190);
      OUTLINED_FUNCTION_52_13(&v298);
      OUTLINED_FUNCTION_219_3();
      v296 = MEMORY[0x277D837D0];
      v297 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v191, v192);
      OUTLINED_FUNCTION_283();
      v143 = (v153 + v20);
      OUTLINED_FUNCTION_53_1();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v153, v193);
      v194 = OUTLINED_FUNCTION_130_7();
      v195(v194);
      v196 = OUTLINED_FUNCTION_223_3();
      v197(v196);
      outlined destroy of IntentApplication?(v285, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(&v293, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    v198 = OUTLINED_FUNCTION_267_0();
    v199(v198);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v289, v200);
    v159 = v291;
  }

  OUTLINED_FUNCTION_189_4();
  outlined destroy of IntentApplication?(v201, v202, v203);
  OUTLINED_FUNCTION_230_2();
  TicketedTransportation.endDate.getter();
  v204 = Appointment.timeIsUnknown.getter();
  v290 = TicketedTransportation.startDateTimeZone.getter();
  v206 = v205;
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  OUTLINED_FUNCTION_245_3();
  OUTLINED_FUNCTION_70_9(v143);
  if (v167)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v159, v207);
    outlined destroy of IntentApplication?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v208 = v143;
  }

  else
  {
    v209 = v20;
    v212 = *(v20 + 32);
    v210 = v20 + 32;
    v211 = v212;
    v213 = OUTLINED_FUNCTION_28_12();
    v212(v213);
    OUTLINED_FUNCTION_64_8();
    OUTLINED_FUNCTION_200_4();
    MEMORY[0x25F89F6C0]();
    v214 = *(v209 + 16);
    v215 = OUTLINED_FUNCTION_164_3();
    v214(v215);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v216, v217, v218, v292);
    OUTLINED_FUNCTION_190_5(&v299);
    outlined init with copy of SpotlightRankingItem?(v219, v220, v221, v222);
    v223 = OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_166(v223, v224, v292);
    if (v225)
    {

      v226 = OUTLINED_FUNCTION_106_8();
      outlined destroy of IntentApplication?(v226, v227, v228);
      OUTLINED_FUNCTION_117_8();
    }

    else
    {
      v232 = OUTLINED_FUNCTION_238_3();
      v211(v232);
      if (v204)
      {

        OUTLINED_FUNCTION_69_9();
        v233 = OUTLINED_FUNCTION_65_13();
        v210 = *(v234 - 256);
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v233, v210, 1, v235, v236, v237, v238, v239, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282);
      }

      else
      {
        OUTLINED_FUNCTION_69_9();
        OUTLINED_FUNCTION_224_3();
        OUTLINED_FUNCTION_109_9();
        static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v240, v241, v242, v290, v206, v243, v244, v245, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282);
        v206 = v204;
      }

      OUTLINED_FUNCTION_162_5(&v300);
      v247 = OUTLINED_FUNCTION_256_3(v246);
      v214(v247);
      OUTLINED_FUNCTION_129_8(v209 & 1);
      *v248 = v206;
      v248[1] = v210;
      v296 = MEMORY[0x277D837D0];
      v297 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v249, v250);

      OUTLINED_FUNCTION_213_3();
      OUTLINED_FUNCTION_53_1();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v204, v251);
      v252 = OUTLINED_FUNCTION_107_6(&v301);
      v253(v252);
      v209 = v284;
      v254 = OUTLINED_FUNCTION_155_6(v284);
      v255(v254);
      outlined destroy of IntentApplication?(v286, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v230 = &_ss23CustomStringConvertible_pSgMd;
      v231 = &_ss23CustomStringConvertible_pSgMR;
      v229 = &v293;
    }

    outlined destroy of IntentApplication?(v229, v230, v231);
    OUTLINED_FUNCTION_92_7();
    (*(v209 + 8))(v287, v292);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v291, v256);
    v208 = v3;
  }

  outlined destroy of IntentApplication?(v208, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_115_7();
  v257 = Appointment.eventSourceLLMConsumableDescription.getter();
  if (v258)
  {
    v259 = MEMORY[0x277D83838];
  }

  else
  {
    v257 = OUTLINED_FUNCTION_7_24();
  }

  v260 = OUTLINED_FUNCTION_16_20(v257, v258, v259);
  OUTLINED_FUNCTION_112_10(v260, v261, v262);
  outlined destroy of IntentApplication?(&v293, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v264;
  result._countAndFlagsBits = v263;
  return result;
}

Swift::String __swiftcall TicketedShow.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v307 = v6;
  v308 = v7;
  v8 = v1;
  v10 = v9;
  v279 = v11;
  v12 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v13 = OUTLINED_FUNCTION_27_14(v12, &v305);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v16);
  v284 = type metadata accessor for Date.FormatStyle();
  v17 = OUTLINED_FUNCTION_14(v284);
  v282 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_109();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v25);
  v26 = type metadata accessor for Date();
  v296 = OUTLINED_FUNCTION_14(v26);
  v297 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v296);
  OUTLINED_FUNCTION_39_0();
  v288 = v30;
  OUTLINED_FUNCTION_174();
  v32 = MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_39_14(v32, v33, v34, v35, v36, v37, v38, v39, v272);
  v41 = MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_25_16(v41, v42, v43, v44, v45, v46, v47, v48, v272);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_14_2();
  v289 = v50;
  v51 = OUTLINED_FUNCTION_78_0();
  v52 = type metadata accessor for EditorialDateFormatter(v51);
  v53 = OUTLINED_FUNCTION_114(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_39_0();
  v295 = v56;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_229_3(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v60 = OUTLINED_FUNCTION_114(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_67_12();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_131_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_75_10();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_133_3();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_73_9();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_49_15();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_14_2();
  v292 = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v74);
  v76 = &v272 - v75;
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](172);
  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_141_4();
  MEMORY[0x25F89F6C0]();
  v77 = Appointment.eventName.getter();
  if (v78)
  {
    v79 = MEMORY[0x277D83838];
  }

  else
  {
    v77 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v77, v78, v79);
  OUTLINED_FUNCTION_40_16();
  OUTLINED_FUNCTION_197_5(17, v80, v81);
  outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v82 = Appointment.eventSubType.getter();
  if (v83)
  {
    v84 = MEMORY[0x277D83838];
  }

  else
  {
    v82 = OUTLINED_FUNCTION_7_24();
  }

  v277 = v5;
  v287 = v4;
  v280 = v23;
  v281 = v10;
  v85 = OUTLINED_FUNCTION_54_14(v82, v83, v84);
  OUTLINED_FUNCTION_273_1(v85 | 0x62750000);
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_284_0(v86, v87, v88);
  outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v89 = TicketedShow.customerNames.getter();
  if (v89)
  {
    v298 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_8_25();
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(v90, v91, &_sSaySSGMR);
    OUTLINED_FUNCTION_17_18();
    v92 = BidirectionalCollection<>.joined(separator:)();
    v94 = v93;

    v95 = MEMORY[0x277D83838];
    v96 = MEMORY[0x277D837D0];
  }

  else
  {
    v92 = 0;
    v94 = 0;
    OUTLINED_FUNCTION_24_17();
  }

  v97 = v294;
  v298 = v92;
  v299 = v94;
  v301 = v96;
  v302 = v95;
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_242_2(v98, 14962, v99);
  outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v100 = TicketedShow.startLocationName.getter();
  if (v101)
  {
    v102 = MEMORY[0x277D83838];
  }

  else
  {
    v100 = OUTLINED_FUNCTION_7_24();
  }

  v103 = OUTLINED_FUNCTION_10_22(v100, v101, v102);
  OUTLINED_FUNCTION_196_4(v103, v104, v105);
  outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v106 = TicketedShow.startLocationAddress.getter();
  if (v107)
  {
    v108 = MEMORY[0x277D83838];
  }

  else
  {
    v106 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v106, v107, v108);
  OUTLINED_FUNCTION_77_9();
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_120_6(v109, v110, v111);
  outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v112 = TicketedShow.seatNumbers.getter();
  v113 = v112;
  if (v112)
  {
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_56_10();
    v112 = lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(v115, &_sSaySSGMd, &_sSaySSGMR);
  }

  else
  {
    v114 = 0;
    v299 = 0;
    v300 = 0;
  }

  v116 = v297;
  v298 = v113;
  v301 = v114;
  v302 = v112;
  OUTLINED_FUNCTION_126_8(0x207461657320);
  OUTLINED_FUNCTION_80_9();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v117, v118, v119, 0);
  outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v120 = TicketedShow.durationInSeconds.getter();
  v121 = v296;
  if (v122)
  {
    v120 = OUTLINED_FUNCTION_22_16();
    v299 = 0;
    v300 = 0;
  }

  else
  {
    v123 = MEMORY[0x277D83A60];
  }

  v124 = v292;
  OUTLINED_FUNCTION_237_3(v120, v123);
  OUTLINED_FUNCTION_53_12();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v125, v126, v127, 0);
  outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v128 = TicketedShow.totalCost.getter();
  if (v129)
  {
    v130 = MEMORY[0x277D83838];
  }

  else
  {
    v128 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v128, v129, v130);
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_249_3(v131, v132, v133);
  outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v134 = TicketedShow.ticketType.getter();
  if (v135)
  {
    v136 = MEMORY[0x277D83838];
  }

  else
  {
    v134 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v134, v135, v136);
  OUTLINED_FUNCTION_80_9();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v137, v138, v139, 0);
  outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  TicketedShow.ticketUrl.getter();
  v140 = type metadata accessor for URL();
  v141 = OUTLINED_FUNCTION_159_2();
  OUTLINED_FUNCTION_166(v141, v142, v140);
  if (v177)
  {
    outlined destroy of IntentApplication?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_78_12();
  }

  else
  {
    v301 = v140;
    OUTLINED_FUNCTION_18_16();
    v145 = _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v143, v144);
    OUTLINED_FUNCTION_280_1(v145);
    OUTLINED_FUNCTION_51(v140);
    (*(v146 + 32))();
  }

  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_249_3(v147, v148, v149);
  outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v150 = TicketedShow.status.getter();
  if (v151)
  {
    v152 = MEMORY[0x277D83838];
  }

  else
  {
    v150 = OUTLINED_FUNCTION_7_24();
  }

  v153 = OUTLINED_FUNCTION_17_22(v150, v151, v152);
  OUTLINED_FUNCTION_112_10(v153, v154, v155);
  outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v156 = TicketedShow.updateStatus.getter();
  if (v157)
  {
    v158 = MEMORY[0x277D83838];
  }

  else
  {
    v156 = OUTLINED_FUNCTION_7_24();
  }

  v159 = OUTLINED_FUNCTION_4_29(v156, v157, v158);
  OUTLINED_FUNCTION_180_4(v159, v160, v161);
  outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_260_2();
  TicketedShow.startDate.getter();
  v162 = Appointment.timeIsUnknown.getter();
  v274 = TicketedShow.startDateTimeZone.getter();
  v164 = v163;
  v165 = v293;
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v124, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_9_5(v3);
  v290 = v2;
  if (v177)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v165, v166);
    outlined destroy of IntentApplication?(v124, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v167 = v116;
    v170 = *(v116 + 32);
    v169 = v116 + 32;
    v168 = v170;
    v170(v289, v3, v121);
    OUTLINED_FUNCTION_55_11();
    v171 = *(v167 + 16);
    v172 = v285;
    OUTLINED_FUNCTION_142_3();
    v171();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v173, v174, v175, v121);
    v176 = v276;
    outlined init with copy of SpotlightRankingItem?(v172, v276, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_9_5(v176);
    if (v177)
    {

      OUTLINED_FUNCTION_117_8();
      outlined destroy of IntentApplication?(v178, v179, v180);
      OUTLINED_FUNCTION_117_8();
      outlined destroy of IntentApplication?(v181, v182, v183);
      v116 = v297;
    }

    else
    {
      HIDWORD(v273) = v162 ^ 1;
      v168(v286, v176, v121);
      if (v162)
      {

        OUTLINED_FUNCTION_30_14(&v303);
        OUTLINED_FUNCTION_133_7();
        OUTLINED_FUNCTION_262_2();
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v184, v185, v186, v187, v188, v189, v190, v191, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283);
      }

      else
      {
        OUTLINED_FUNCTION_30_14(&v303);
        OUTLINED_FUNCTION_133_7();
        OUTLINED_FUNCTION_262_2();
        OUTLINED_FUNCTION_228_3();
        static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v192, v193, v194, v195, v164, v196, v197, v198, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283);
      }

      v199 = v278;
      v200 = v283;
      (v171)(v283 + *(v278 + 24), v286, v121);
      OUTLINED_FUNCTION_271_0(SBYTE4(v273));
      v201 = (v200 + *(v199 + 28));
      *v201 = v176;
      v201[1] = v169;
      v301 = MEMORY[0x277D837D0];
      v302 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v202, v203);

      OUTLINED_FUNCTION_53_1();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v200, v204);
      v205 = OUTLINED_FUNCTION_130_7();
      v206(v205);
      v121 = v296;
      v116 = v297;
      OUTLINED_FUNCTION_204_5();
      v207(v286, v121);
      outlined destroy of IntentApplication?(v285, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    v208 = OUTLINED_FUNCTION_155_6(v116);
    v209(v208);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v293, v210);
    v2 = v290;
    v97 = v294;
  }

  OUTLINED_FUNCTION_189_4();
  outlined destroy of IntentApplication?(v211, v212, v213);
  TicketedShow.endDate.getter();
  v214 = Appointment.timeIsUnknown.getter();
  v294 = TicketedShow.startDateTimeZone.getter();
  v216 = v215;
  OUTLINED_FUNCTION_241_3();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v2, v97, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_9_5(v97);
  if (v177)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v8, v217);
    outlined destroy of IntentApplication?(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v218 = v97;
  }

  else
  {
    v219 = v116;
    v220 = *(v116 + 32);
    v221 = v291;
    OUTLINED_FUNCTION_29_5();
    v220();
    OUTLINED_FUNCTION_64_8();
    OUTLINED_FUNCTION_124_9();
    MEMORY[0x25F89F6C0]();
    v222 = *(v219 + 16);
    v223 = v287;
    v222(v287, v221, v121);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v224, v225, v226, v121);
    OUTLINED_FUNCTION_190_5(&v304);
    outlined init with copy of SpotlightRankingItem?(v227, v228, v229, v230);
    OUTLINED_FUNCTION_9_5(v221);
    if (v231)
    {

      OUTLINED_FUNCTION_117_8();
      outlined destroy of IntentApplication?(v232, v233, v234);
      OUTLINED_FUNCTION_117_8();
      outlined destroy of IntentApplication?(v235, v236, v237);
      v238 = v297;
    }

    else
    {
      LODWORD(v293) = v214 ^ 1;
      (v220)(v288, v221, v121);
      if (v214)
      {

        OUTLINED_FUNCTION_133_7();
        OUTLINED_FUNCTION_57_10();
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v239, v240, v241, v242, v243, v244, v245, v246, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283);
      }

      else
      {
        OUTLINED_FUNCTION_191_5();
        OUTLINED_FUNCTION_57_10();
        static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v247, v248, v249, v294, v216, v250, v251, v252, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283);
        v216 = v121;
      }

      v121 = v296;
      v238 = v297;
      OUTLINED_FUNCTION_162_5(&v305);
      v254 = *(v253 - 256);
      v222(&v254[v223], v288, v121);
      *v254 = v293 & 1;
      v254[1] = 1;
      v255 = &v254[*(v221 + 28)];
      *v255 = v216;
      v255[1] = v220;
      v301 = MEMORY[0x277D837D0];
      v302 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v256, v257);
      OUTLINED_FUNCTION_283();
      OUTLINED_FUNCTION_227_1();
      v258 = v284;
      OUTLINED_FUNCTION_53_1();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v254, v259);
      OUTLINED_FUNCTION_4_4(&v306);
      v260(v222, v258);
      OUTLINED_FUNCTION_172_4();
      v261(v288, v121);
      outlined destroy of IntentApplication?(v287, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    (*(v238 + 8))(v291, v121);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v295, v262);
    v218 = v290;
  }

  outlined destroy of IntentApplication?(v218, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v263 = Appointment.eventSourceLLMConsumableDescription.getter();
  if (v264)
  {
    v265 = MEMORY[0x277D83838];
  }

  else
  {
    v263 = OUTLINED_FUNCTION_7_24();
  }

  v266 = OUTLINED_FUNCTION_16_20(v263, v264, v265);
  OUTLINED_FUNCTION_112_10(v266, v267, v268);
  outlined destroy of IntentApplication?(&v298, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v270;
  result._countAndFlagsBits = v269;
  return result;
}

Swift::String __swiftcall Appointment.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v285 = v8;
  v286 = v9;
  v11 = v10;
  v260 = v12;
  v13 = OUTLINED_FUNCTION_264_2();
  v14 = type metadata accessor for EditorialDateFormatter.DateInput(v13);
  v15 = OUTLINED_FUNCTION_27_14(v14, &v283);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_3();
  v263 = v18;
  OUTLINED_FUNCTION_78_0();
  v264 = type metadata accessor for Date.FormatStyle();
  v19 = OUTLINED_FUNCTION_14(v264);
  v262 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_123_8();
  v272 = type metadata accessor for Date();
  v24 = OUTLINED_FUNCTION_14(v272);
  v277 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  v29 = MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_38_18(v29, v30, v31, v32, v33, v34, v35, v36, v245);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_46_15();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_2();
  v268 = v39;
  v40 = OUTLINED_FUNCTION_78_0();
  v41 = type metadata accessor for EditorialDateFormatter(v40);
  v42 = OUTLINED_FUNCTION_114(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_133_3();
  v46 = MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_72_8(v46, v47, v48, v49, v50, v51, v52, v53, v246);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v55 = OUTLINED_FUNCTION_114(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_62_10();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_7_4();
  v269 = v60;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_61_13();
  v63 = MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_21_17(v63, v64, v65, v66, v67, v68, v69, v70, v247);
  v72 = MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_25_16(v72, v73, v74, v75, v76, v77, v78, v79, v248);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_73_8();
  v82 = MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_59_10(v82, v83, v84, v85, v86, v87, v88, v89, v249);
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](130);
  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_98_2();
  MEMORY[0x25F89F6C0](0xD000000000000014);
  v90 = Appointment.eventName.getter();
  if (v91)
  {
    v92 = MEMORY[0x277D83838];
  }

  else
  {
    v90 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v90, v91, v92);
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_249_3(v93, v94, v95);
  outlined destroy of IntentApplication?(v278, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v96 = Appointment.startLocationName.getter();
  if (v97)
  {
    v98 = MEMORY[0x277D83838];
  }

  else
  {
    v96 = OUTLINED_FUNCTION_7_24();
  }

  v99 = OUTLINED_FUNCTION_10_22(v96, v97, v98);
  OUTLINED_FUNCTION_196_4(v99, v100, v101);
  outlined destroy of IntentApplication?(v278, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v102 = Appointment.startLocationAddress.getter();
  if (v103)
  {
    v104 = MEMORY[0x277D83838];
  }

  else
  {
    v102 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v102, v103, v104);
  OUTLINED_FUNCTION_77_9();
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_120_6(v105, v106, v107);
  outlined destroy of IntentApplication?(v278, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v108 = Appointment.startLocationTelephone.getter();
  if (v109)
  {
    v110 = MEMORY[0x277D83838];
  }

  else
  {
    v108 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v108, v109, v110);
  OUTLINED_FUNCTION_214_2();
  OUTLINED_FUNCTION_80_9();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v111, 0xE700000000000000, v112, 0);
  outlined destroy of IntentApplication?(v278, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v113 = Appointment.durationInSeconds.getter();
  if (v114)
  {
    v113 = OUTLINED_FUNCTION_22_16();
    v278[1] = 0;
    v278[2] = 0;
  }

  else
  {
    v115 = MEMORY[0x277D83A60];
  }

  OUTLINED_FUNCTION_237_3(v113, v115);
  OUTLINED_FUNCTION_53_12();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v116, v117, v118, 0);
  outlined destroy of IntentApplication?(v278, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v119 = Appointment.totalCost.getter();
  if (v120)
  {
    v121 = MEMORY[0x277D83838];
  }

  else
  {
    v119 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v119, v120, v121);
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_249_3(v122, v123, v124);
  outlined destroy of IntentApplication?(v278, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v125 = Appointment.status.getter();
  if (v126)
  {
    v127 = MEMORY[0x277D83838];
  }

  else
  {
    v125 = OUTLINED_FUNCTION_7_24();
  }

  v128 = OUTLINED_FUNCTION_17_22(v125, v126, v127);
  OUTLINED_FUNCTION_112_10(v128, v129, v130);
  outlined destroy of IntentApplication?(v278, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v131 = Appointment.updateStatus.getter();
  v261 = v11;
  v254 = v5;
  v267 = v2;
  v253 = v6;
  if (v132)
  {
    v133 = MEMORY[0x277D83838];
  }

  else
  {
    v131 = OUTLINED_FUNCTION_7_24();
  }

  v134 = OUTLINED_FUNCTION_4_29(v131, v132, v133);
  OUTLINED_FUNCTION_180_4(v134, v135, v136);
  outlined destroy of IntentApplication?(v278, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_260_2();
  Appointment.startDate.getter();
  v137 = Appointment.timeIsUnknown.getter();
  v138 = Appointment.startDateTimeZone.getter();
  v140 = v139;
  OUTLINED_FUNCTION_282_0();
  v141 = OUTLINED_FUNCTION_121_0();
  outlined init with copy of SpotlightRankingItem?(v141, v142, v143, v144);
  v145 = v272;
  OUTLINED_FUNCTION_166(v3, 1, v272);
  v270 = v4;
  if (v155)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v1, v146);
    outlined destroy of IntentApplication?(v273, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v147 = v277;
  }

  else
  {
    v252 = v138;
    v148 = *(v277 + 32);
    OUTLINED_FUNCTION_29_5();
    v148();
    OUTLINED_FUNCTION_55_11();
    v149 = OUTLINED_FUNCTION_103_9();
    v3(v149);
    v150 = OUTLINED_FUNCTION_86_10();
    v153 = __swift_storeEnumTagSinglePayload(v150, v151, v152, v272);
    OUTLINED_FUNCTION_195_5(v153, v154, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_9_5(v268);
    if (v155)
    {

      OUTLINED_FUNCTION_117_8();
      outlined destroy of IntentApplication?(v156, v157, v158);
      OUTLINED_FUNCTION_117_8();
      outlined destroy of IntentApplication?(v159, v160, v161);
      v147 = v277;
    }

    else
    {
      OUTLINED_FUNCTION_108_6();
      OUTLINED_FUNCTION_142_3();
      v148();
      if (v137)
      {

        OUTLINED_FUNCTION_133_7();
        OUTLINED_FUNCTION_68_10();
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v162, v163, v164, v165, v166, v167, v168, v169, v250, v251, v138, v253, v254, v255, v256, v257, v259, v260, v261, v262);
      }

      else
      {
        OUTLINED_FUNCTION_133_7();
        OUTLINED_FUNCTION_68_10();
        OUTLINED_FUNCTION_228_3();
        static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v170, v171, v172, v173, v140, v174, v175, v176, v250, v251, v138, v253, v254, v255, v256, v257, v259, v260, v261, v262);
      }

      OUTLINED_FUNCTION_198_3();
      v145 = v272;
      (v3)(v263 + *(v277 + 56), v266, v272);
      OUTLINED_FUNCTION_52_13(&v281);
      OUTLINED_FUNCTION_219_3();
      v279 = MEMORY[0x277D837D0];
      v280 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v177, v178);
      OUTLINED_FUNCTION_283();
      v147 = v264;
      OUTLINED_FUNCTION_53_1();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v263, v179);
      OUTLINED_FUNCTION_148_5(&v284);
      v180 = OUTLINED_FUNCTION_30_5();
      v181(v180);
      OUTLINED_FUNCTION_266_1();
      (*(v182 + 8))(v266, v272);
      outlined destroy of IntentApplication?(v265, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(v278, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    v183 = OUTLINED_FUNCTION_155_6(v147);
    v184(v183);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v275, v185);
    v4 = v270;
  }

  OUTLINED_FUNCTION_189_4();
  outlined destroy of IntentApplication?(v186, v187, v188);
  OUTLINED_FUNCTION_230_2();
  Appointment.endDate.getter();
  v189 = Appointment.timeIsUnknown.getter();
  v276 = Appointment.startDateTimeZone.getter();
  v191 = v190;
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v7, v269, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_9_5(v269);
  if (v155)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v4, v192);
    outlined destroy of IntentApplication?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v193 = v269;
  }

  else
  {
    v194 = *(v147 + 32);
    OUTLINED_FUNCTION_47_11();
    v194();
    OUTLINED_FUNCTION_64_8();
    OUTLINED_FUNCTION_124_9();
    MEMORY[0x25F89F6C0]();
    v195 = *(v147 + 16);
    v196 = OUTLINED_FUNCTION_164_3();
    v274 = v197;
    (v197)(v196);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v198, v199, v200, v145);
    OUTLINED_FUNCTION_190_5(&v282);
    outlined init with copy of SpotlightRankingItem?(v201, v202, v203, v204);
    v205 = OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_166(v205, v206, v145);
    if (v207)
    {

      v208 = OUTLINED_FUNCTION_106_8();
      outlined destroy of IntentApplication?(v208, v209, v210);
      OUTLINED_FUNCTION_117_8();
      outlined destroy of IntentApplication?(v211, v212, v213);
      v214 = v147;
    }

    else
    {
      (v194)(v257, v271, v145);
      if (v189)
      {

        OUTLINED_FUNCTION_69_9();
        OUTLINED_FUNCTION_133_7();
        OUTLINED_FUNCTION_265_2();
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v215, v216, v217, v218, v219, v220, v221, v222, v250, v251, v252, v253, v254, v255, v256, v257, v259, v260, v261, v262);
      }

      else
      {
        OUTLINED_FUNCTION_69_9();
        OUTLINED_FUNCTION_224_3();
        OUTLINED_FUNCTION_265_2();
        static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v223, v224, v225, v276, v191, v226, v227, v228, v250, v251, v252, v253, v254, v255, v256, v257, v259, v260, v261, v262);
        v191 = v189;
      }

      OUTLINED_FUNCTION_198_3();
      v274(v263 + *(v271 + 24), v258, v145);
      OUTLINED_FUNCTION_129_8((v189 ^ 1) & 1);
      *v229 = v191;
      v229[1] = v147 + 32;
      v279 = MEMORY[0x277D837D0];
      v280 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v230, v231);

      OUTLINED_FUNCTION_213_3();
      OUTLINED_FUNCTION_53_1();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v263, v232);
      v233 = OUTLINED_FUNCTION_107_6(&v284);
      v234(v233);
      v214 = v277;
      (*(v277 + 8))(v258, v145);
      outlined destroy of IntentApplication?(v267, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(v278, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    (*(v214 + 8))(v271, v145);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v270, v235);
    v193 = v7;
  }

  outlined destroy of IntentApplication?(v193, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v236 = Appointment.eventSourceLLMConsumableDescription.getter();
  if (v237)
  {
    v238 = MEMORY[0x277D83838];
  }

  else
  {
    v236 = OUTLINED_FUNCTION_7_24();
  }

  v239 = OUTLINED_FUNCTION_16_20(v236, v237, v238);
  OUTLINED_FUNCTION_112_10(v239, v240, v241);
  outlined destroy of IntentApplication?(v278, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v243;
  result._countAndFlagsBits = v242;
  return result;
}

Swift::String __swiftcall Trip.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v257 = v7;
  v258 = v8;
  v9 = v1;
  v234 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_49_3();
  v245 = v15;
  v16 = OUTLINED_FUNCTION_78_0();
  v17 = type metadata accessor for EditorialDateFormatter.DateInput(v16);
  v18 = OUTLINED_FUNCTION_27_14(v17, &v255);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v21);
  v237 = type metadata accessor for Date.FormatStyle();
  v22 = OUTLINED_FUNCTION_14(v237);
  v235 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v27);
  v28 = type metadata accessor for Date();
  v29 = OUTLINED_FUNCTION_14(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_39_0();
  v241 = v34;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_74_14();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_46_15();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_2();
  v242 = v38;
  v39 = OUTLINED_FUNCTION_78_0();
  v40 = type metadata accessor for EditorialDateFormatter(v39);
  v41 = OUTLINED_FUNCTION_114(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39_0();
  v248 = v44;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_168_4(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v48 = OUTLINED_FUNCTION_114(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_131_0();
  v53 = MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_39_14(v53, v54, v55, v56, v57, v58, v59, v60, v222);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_49_15();
  v63 = MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_21_17(v63, v64, v65, v66, v67, v68, v69, v70, v223);
  v72 = MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_25_16(v72, v73, v74, v75, v76, v77, v78, v79, v224);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_133_3();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_156_4();
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](93);
  OUTLINED_FUNCTION_119_4();
  MEMORY[0x25F89F6C0](0x7465642070697254, 0xED00003A736C6961);
  v82 = Appointment.eventName.getter();
  if (v83)
  {
    v84 = MEMORY[0x277D83838];
  }

  else
  {
    v82 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v82, v83, v84);
  OUTLINED_FUNCTION_125_6();
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_284_0(v85, v86, v87);
  outlined destroy of IntentApplication?(v250, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v88 = Trip.status.getter();
  if (v89)
  {
    v90 = MEMORY[0x277D83838];
  }

  else
  {
    v88 = OUTLINED_FUNCTION_7_24();
  }

  v91 = OUTLINED_FUNCTION_17_22(v88, v89, v90);
  OUTLINED_FUNCTION_112_10(v91, v92, v93);
  outlined destroy of IntentApplication?(v250, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v94 = Trip.updateStatus.getter();
  v247 = v4;
  v229 = v2;
  v240 = v5;
  if (v95)
  {
    v96 = MEMORY[0x277D83838];
  }

  else
  {
    v94 = OUTLINED_FUNCTION_7_24();
  }

  v97 = OUTLINED_FUNCTION_4_29(v94, v95, v96);
  OUTLINED_FUNCTION_180_4(v97, v98, v99);
  outlined destroy of IntentApplication?(v250, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_230_2();
  Trip.startDate.getter();
  v100 = Appointment.timeIsUnknown.getter();
  v101 = Trip.startDateTimeZone.getter();
  v103 = v102;
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  v104 = OUTLINED_FUNCTION_140_4();
  outlined init with copy of SpotlightRankingItem?(v104, v105, v106, v107);
  OUTLINED_FUNCTION_50_12(v3);
  v249 = v31;
  if (v115)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v246, v108);
    outlined destroy of IntentApplication?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v227 = v101;
    v228 = v1;
    v109 = v31 + 32;
    v110 = *(v31 + 32);
    v110(v242, v3, v28);
    OUTLINED_FUNCTION_63_11();
    OUTLINED_FUNCTION_220_3();
    v111 = *(v31 + 16);
    v111(v238, v242, v28);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v112, v113, v114, v28);
    outlined init with copy of SpotlightRankingItem?(v238, v230, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_50_12(v230);
    if (v115)
    {

      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v116, v117, v118);
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v119, v120, v121);
    }

    else
    {
      v122 = OUTLINED_FUNCTION_108_6();
      v110(v122, v230, v28);
      if (v100)
      {

        OUTLINED_FUNCTION_191_5();
        OUTLINED_FUNCTION_158_4();
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v123, v124, v125, v126, v127, v128, v129, v130, v225, v226, v227, v1, v229, v230, v231, v232, v233, v234, v235, v236);
      }

      else
      {
        v131 = v234;
        OUTLINED_FUNCTION_158_4();
        OUTLINED_FUNCTION_228_3();
        static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v132, v133, v134, v135, v103, v136, v137, v138, v225, v226, v227, v1, v229, v230, v231, v232, v233, v234, v235, v236);
        v103 = v131;
      }

      v9 = v228;
      v111(v236 + *(v233 + 24), v239, v28);
      OUTLINED_FUNCTION_52_13(&v253);
      v139 = (v236 + *(v233 + 28));
      *v139 = v103;
      v139[1] = v109;
      v251 = MEMORY[0x277D837D0];
      v252 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v140, v141);
      OUTLINED_FUNCTION_212_2();

      OUTLINED_FUNCTION_224_3();
      OUTLINED_FUNCTION_29_5();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v236, v142);
      OUTLINED_FUNCTION_148_5(&v256);
      v143 = OUTLINED_FUNCTION_30_5();
      v144(v143);
      OUTLINED_FUNCTION_270_1();
      v145(v239, v28);
      outlined destroy of IntentApplication?(v238, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(v250, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    OUTLINED_FUNCTION_270_1();
    v146(v242, v28);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v246, v147);
  }

  v148 = OUTLINED_FUNCTION_140_4();
  outlined destroy of IntentApplication?(v148, v149, &_s10Foundation4DateVSgMR);
  Trip.endDate.getter();
  v150 = Appointment.timeIsUnknown.getter();
  v151 = Trip.startDateTimeZone.getter();
  v153 = v152;
  OUTLINED_FUNCTION_282_0();
  outlined init with copy of SpotlightRankingItem?(v247, v243, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_50_12(v243);
  if (v115)
  {

    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v9, v154);
    outlined destroy of IntentApplication?(v247, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v155 = v243;
  }

  else
  {
    v156 = *(v249 + 32);
    OUTLINED_FUNCTION_53_1();
    v156();
    OUTLINED_FUNCTION_64_8();
    OUTLINED_FUNCTION_124_9();
    MEMORY[0x25F89F6C0]();
    v157 = *(v249 + 16);
    v157(v240, v244, v28);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v158, v159, v160, v28);
    OUTLINED_FUNCTION_190_5(&v254);
    outlined init with copy of SpotlightRankingItem?(v161, v162, v163, v164);
    OUTLINED_FUNCTION_50_12(v244);
    if (v165)
    {

      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v166, v167, v168);
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v169, v170, v171);
      v172 = v249;
    }

    else
    {
      (v156)(v241, v244, v28);
      if (v150)
      {

        OUTLINED_FUNCTION_69_9();
        OUTLINED_FUNCTION_191_5();
        OUTLINED_FUNCTION_158_4();
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v173, v174, v175, v176, v177, v178, v179, v180, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236);
      }

      else
      {
        OUTLINED_FUNCTION_69_9();
        OUTLINED_FUNCTION_227_1();
        OUTLINED_FUNCTION_158_4();
        static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v181, v182, v183, v151, v153, v184, v185, v186, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236);
        v153 = v249 + 32;
      }

      OUTLINED_FUNCTION_162_5(&v255);
      v188 = *(v187 - 256);
      v157(&v188[v240], v241, v28);
      *v188 = (v150 ^ 1) & 1;
      v188[1] = 1;
      v189 = &v188[*(v244 + 28)];
      *v189 = v153;
      v189[1] = v150;
      v251 = MEMORY[0x277D837D0];
      v252 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v190, v191);
      OUTLINED_FUNCTION_212_2();

      OUTLINED_FUNCTION_29_5();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v188, v192);
      v193 = OUTLINED_FUNCTION_107_6(&v256);
      v194(v193);
      v172 = v249;
      OUTLINED_FUNCTION_270_1();
      v195(v241, v28);
      outlined destroy of IntentApplication?(v240, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(v250, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    v196 = *(v172 + 8);
    v153 = v172 + 8;
    v196(v244, v28);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v248, v197);
    v155 = v247;
  }

  outlined destroy of IntentApplication?(v155, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v198 = Trip.durationInSeconds.getter();
  if (v199)
  {
    v198 = OUTLINED_FUNCTION_22_16();
    v250[1] = 0;
    v250[2] = 0;
  }

  else
  {
    v200 = MEMORY[0x277D83A60];
  }

  OUTLINED_FUNCTION_237_3(v198, v200);
  OUTLINED_FUNCTION_40_16();
  OUTLINED_FUNCTION_197_5(21, v201, v202);
  outlined destroy of IntentApplication?(v250, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_260_2();
  Trip.eventUrl.getter();
  type metadata accessor for URL();
  v203 = OUTLINED_FUNCTION_176_5();
  OUTLINED_FUNCTION_9_5(v203);
  if (v115)
  {
    outlined destroy of IntentApplication?(v245, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_78_12();
  }

  else
  {
    v204 = URL.absoluteString.getter();
    v251 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_252_3(v204, v205, MEMORY[0x277D83838]);
    OUTLINED_FUNCTION_51(v153);
    v207 = *(v206 + 8);
    v208 = OUTLINED_FUNCTION_52_1();
    v209(v208);
  }

  OUTLINED_FUNCTION_125_6();
  OUTLINED_FUNCTION_80_9();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v210, v211, v212, 0);
  outlined destroy of IntentApplication?(v250, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v213 = Appointment.eventSourceLLMConsumableDescription.getter();
  if (v214)
  {
    v215 = MEMORY[0x277D83838];
  }

  else
  {
    v213 = OUTLINED_FUNCTION_7_24();
  }

  v216 = OUTLINED_FUNCTION_16_20(v213, v214, v215);
  OUTLINED_FUNCTION_112_10(v216, v217, v218);
  outlined destroy of IntentApplication?(v250, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v220;
  result._countAndFlagsBits = v219;
  return result;
}

Swift::String __swiftcall CalendarEvent.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v173 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_3();
  v12 = OUTLINED_FUNCTION_28_2(v11);
  v13 = type metadata accessor for EditorialDateFormatter.DateInput(v12);
  v14 = OUTLINED_FUNCTION_27_14(v13, &v189);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v17);
  v177 = type metadata accessor for Date.FormatStyle();
  v18 = OUTLINED_FUNCTION_14(v177);
  v174 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v22);
  v23 = type metadata accessor for Date();
  v24 = OUTLINED_FUNCTION_14(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_2();
  v33 = OUTLINED_FUNCTION_28_2(v32);
  v34 = type metadata accessor for EditorialDateFormatter(v33);
  v35 = OUTLINED_FUNCTION_114(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_2();
  v184 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v41 = OUTLINED_FUNCTION_114(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_73_8();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_62_10();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_49_15();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_156_4();
  MEMORY[0x25F89F5D0](103);
  v190[0] = 0;
  v190[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_98_2();
  v51 = OUTLINED_FUNCTION_153_2();
  MEMORY[0x25F89F6C0](v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd, &_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC9D00;
  v53 = WalletPass.title.getter();
  if (v54)
  {
    v55 = MEMORY[0x277D83838];
    v56 = MEMORY[0x277D837D0];
  }

  else
  {
    v53 = OUTLINED_FUNCTION_22_16();
    *(inited + 48) = 0;
  }

  *(inited + 32) = v53;
  *(inited + 40) = v54;
  *(inited + 56) = v56;
  *(inited + 64) = v55;
  v57 = WalletPass.description.getter();
  if (v58)
  {
    v59 = MEMORY[0x277D83838];
    v60 = MEMORY[0x277D837D0];
  }

  else
  {
    v57 = OUTLINED_FUNCTION_22_16();
    *(inited + 88) = 0;
  }

  *(inited + 72) = v57;
  *(inited + 80) = v58;
  *(inited + 96) = v60;
  *(inited + 104) = v59;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  LLMFormatter.StringInterpolation.appendInterpolation(_:ifAll:)(v61, inited);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  OUTLINED_FUNCTION_115_7();
  v62 = CalendarEvent.locationName.getter();
  if (v63)
  {
    v64 = MEMORY[0x277D83838];
    v65 = MEMORY[0x277D837D0];
  }

  else
  {
    v62 = OUTLINED_FUNCTION_22_16();
    *&v186 = 0;
  }

  *&v185 = v62;
  *(&v185 + 1) = v63;
  *(&v186 + 1) = v65;
  v187 = v64;
  OUTLINED_FUNCTION_180_4(0xD000000000000015, 0x800000025DBF3FE0, &v185);
  outlined destroy of IntentApplication?(&v185, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  CalendarEvent.startDate.getter();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v5, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_50_12(v3);
  v168 = v2;
  if (v75)
  {
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v184, v66);
    outlined destroy of IntentApplication?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v5 = v3;
    v67 = v26;
  }

  else
  {
    v165 = v1;
    v68 = v26 + 32;
    v69 = *(v26 + 32);
    v70 = OUTLINED_FUNCTION_212();
    (v69)(v70);
    OUTLINED_FUNCTION_149_6();
    MEMORY[0x25F89F6C0]();
    v71 = *(v26 + 16);
    v71();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v23);
    outlined init with copy of SpotlightRankingItem?(v178, v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_50_12(v4);
    if (v75)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v76, v77, v78);
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v79, v80, v81);
      v67 = v26;
    }

    else
    {
      v161 = v26;
      v82 = v23;
      v83 = v166;
      v69();
      OUTLINED_FUNCTION_199_5();
      OUTLINED_FUNCTION_68_10();
      static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v84, v85, v86, 0, 0, v87, v88, v89, v160, v161, v1, v166, v167, v2, v169, v171, v173, v174, v175, v177);
      v90 = v83;
      v23 = v82;
      (v71)(v175 + *(v169 + 24), v90, v82);
      *v175 = 257;
      v91 = (v175 + *(v169 + 28));
      *v91 = v68;
      v91[1] = v69;
      *(&v186 + 1) = MEMORY[0x277D837D0];
      v187 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v92, v93);

      OUTLINED_FUNCTION_191_5();
      Date.formatted<A>(_:)();
      LLMFormatter.StringInterpolation.appendInterpolation(_:)();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v175, v94);
      OUTLINED_FUNCTION_148_5(v190);
      v95 = OUTLINED_FUNCTION_212();
      v96(v95);
      v67 = v162;
      OUTLINED_FUNCTION_184_3();
      v97(v166, v82);
      outlined destroy of IntentApplication?(v178, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(&v185, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    v1 = v165;
    OUTLINED_FUNCTION_92_7();
    OUTLINED_FUNCTION_184_3();
    v98(v179, v23);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v184, v99);
  }

  v100 = v183;
  outlined destroy of IntentApplication?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_115_7();
  OUTLINED_FUNCTION_198_3();
  CalendarEvent.endDate.getter();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  v101 = OUTLINED_FUNCTION_181_4();
  outlined init with copy of SpotlightRankingItem?(v101, v102, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_50_12(v1);
  if (v75)
  {
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v183, v103);
    outlined destroy of IntentApplication?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v5 = v1;
  }

  else
  {
    v104 = v67 + 32;
    v105 = *(v67 + 32);
    v106 = OUTLINED_FUNCTION_52_1();
    (v105)(v106);
    MEMORY[0x25F89F6C0](0x2073646E65207449, 0xEB00000000207461);
    v107 = *(v67 + 16);
    v108 = v168;
    v109 = OUTLINED_FUNCTION_34_11();
    v107(v109);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v110, v111, v112, v23);
    OUTLINED_FUNCTION_251_1(&v188);
    outlined init with copy of SpotlightRankingItem?(v113, v114, v115, v116);
    OUTLINED_FUNCTION_50_12(v23);
    if (v117)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v118, v119, v120);
      OUTLINED_FUNCTION_33_13();
    }

    else
    {
      v163 = v67;
      v121 = v171;
      v105();
      v122 = OUTLINED_FUNCTION_199_5();
      v124 = *(v123 - 256);
      OUTLINED_FUNCTION_113_9(v122, v124, v125, v126, v127, v128, v129, v130, v160, v163, v165, v166, v167, v168, v169, v171, v173, v174, v175, v177);
      v131 = v121;
      v67 = v164;
      (v107)(v176 + *(v170 + 24), v131, v23);
      *v176 = 257;
      v5 = v182;
      v132 = (v176 + *(v170 + 28));
      *v132 = v104;
      v132[1] = v124;
      *(&v186 + 1) = MEMORY[0x277D837D0];
      v187 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v133, v134);
      v100 = v183;

      OUTLINED_FUNCTION_224_3();
      Date.formatted<A>(_:)();
      LLMFormatter.StringInterpolation.appendInterpolation(_:)();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v176, v135);
      OUTLINED_FUNCTION_4_4(v190);
      v136 = OUTLINED_FUNCTION_30_5();
      v137(v136);
      OUTLINED_FUNCTION_184_3();
      v138(v172, v23);
      outlined destroy of IntentApplication?(v108, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v139 = &_ss23CustomStringConvertible_pSgMd;
      v140 = &_ss23CustomStringConvertible_pSgMR;
      v141 = &v185;
    }

    outlined destroy of IntentApplication?(v141, v139, v140);
    OUTLINED_FUNCTION_92_7();
    (*(v67 + 8))(v180, v23);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v100, v142);
  }

  outlined destroy of IntentApplication?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_115_7();
  v143 = CalendarEvent.organizerNames.getter();
  v144._countAndFlagsBits = 0x6572632073277449;
  v144._object = 0xEF79622064657461;
  v191.value._rawValue = v143;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v144, v191);

  OUTLINED_FUNCTION_48_9();
  v145 = CalendarEvent.participantNames.getter();
  v146._countAndFlagsBits = 0x6E65697069636552;
  v146._object = 0xEE00657261207374;
  v192.value._rawValue = v145;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v146, v192);

  OUTLINED_FUNCTION_48_9();
  v147 = CalendarEvent.notes.getter();
  if (v148)
  {
    v149 = MEMORY[0x277D83838];
    v150 = MEMORY[0x277D837D0];
  }

  else
  {
    v147 = OUTLINED_FUNCTION_22_16();
    *&v186 = 0;
  }

  *&v185 = v147;
  *(&v185 + 1) = v148;
  *(&v186 + 1) = v150;
  v187 = v149;
  OUTLINED_FUNCTION_149_6();
  OUTLINED_FUNCTION_180_4(v151, v152, &v185);
  outlined destroy of IntentApplication?(&v185, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  CalendarEvent.dataDetectorResults.getter();
  v153 = type metadata accessor for DataDetectorResults();
  OUTLINED_FUNCTION_71_10(v181);
  if (v75)
  {
    outlined destroy of IntentApplication?(v181, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    v185 = 0u;
    v186 = 0u;
    v187 = 0;
  }

  else
  {
    v154 = DataDetectorResults.description.getter();
    *(&v186 + 1) = MEMORY[0x277D837D0];
    v187 = MEMORY[0x277D83838];
    *&v185 = v154;
    *(&v185 + 1) = v155;
    OUTLINED_FUNCTION_51(v153);
    (*(v156 + 8))(v181, v153);
  }

  OUTLINED_FUNCTION_180_4(0xD000000000000017, 0x800000025DBF3AF0, &v185);
  outlined destroy of IntentApplication?(&v185, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v158;
  result._countAndFlagsBits = v157;
  return result;
}

Swift::String __swiftcall MobileSMSDocument.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v64 = type metadata accessor for MobileSMSDocument();
  v5 = OUTLINED_FUNCTION_14(v64);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_3();
  v63 = v10;
  v11 = *(MobileSMSDocument.chatMessages.getter() + 16);

  if (v11)
  {
    v12 = MobileSMSDocument.chatMessages.getter();
    v13 = *(v12 + 16);
    v65 = v4;
    v66 = v2;
    if (v13)
    {
      v67 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      v14 = v67;
      v16 = *(v7 + 16);
      v15 = v7 + 16;
      v62 = v16;
      v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v61 = *(v15 + 56);
      v18 = (v15 - 8);
      do
      {
        OUTLINED_FUNCTION_183_3();
        v62();
        v19.value._countAndFlagsBits = OUTLINED_FUNCTION_116_1();
        v20 = MobileSMSDocument.llmConsumableDescription(locale:)(v19);
        (*v18)(v63, v64);
        v67 = v14;
        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
          v14 = v67;
        }

        *(v14 + 16) = v22 + 1;
        *(v14 + 16 * v22 + 32) = v20;
        v17 += v61;
        --v13;
      }

      while (v13);
      OUTLINED_FUNCTION_63_1();
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v27 = 0;
    v28 = *(v14 + 16);
    v29 = MEMORY[0x277D84F90];
LABEL_11:
    v30 = (v14 + 40 + 16 * v27);
    while (v28 != v27)
    {
      if (v27 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      ++v27;
      v32 = *(v30 - 1);
      v31 = *v30;
      v30 += 2;
      v33 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v33 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v33)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1);
          v29 = v67;
        }

        v35 = *(v29 + 16);
        v34 = *(v29 + 24);
        if (v35 >= v34 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1);
          v29 = v67;
        }

        *(v29 + 16) = v35 + 1;
        v36 = v29 + 16 * v35;
        *(v36 + 32) = v32;
        *(v36 + 40) = v31;
        goto LABEL_11;
      }
    }

    v67 = 0;
    v68 = 0xE000000000000000;
    MEMORY[0x25F89F5D0](25);
    OUTLINED_FUNCTION_119_4();
    MEMORY[0x25F89F6C0](0x67617373656D2041, 0xEF20746168632065);
    v37 = MobileSMSDocument.displayChatName.getter();
    v69 = MEMORY[0x277D837D0];
    v70 = MEMORY[0x277D83838];
    v67 = v37;
    v68 = v38;
    OUTLINED_FUNCTION_178_5();
    outlined destroy of IntentApplication?(&v67, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_192_5();
    v40 = v39;
    v42 = v41;

    v67 = 0;
    v68 = 0xE000000000000000;
    MEMORY[0x25F89F5D0](10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBC8180;
    *(inited + 32) = MobileSMSDocument.messageDocumentTemplate(locale:)(v65, v66);
    *(inited + 40) = v44;
    v45 = MEMORY[0x277D84F90];
    v47 = *(inited + 32);
    v46._rawValue = *(inited + 40);
    v48 = (v46._rawValue >> 56) & 0xF;
    if ((v46._rawValue & 0x2000000000000000) == 0)
    {
      v48 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v48)
    {
      v49 = *(inited + 40);

      v50 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v45;
      if ((v50 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 16) + 1, 1);
        v45 = v71;
      }

      v52 = *(v45 + 16);
      v51 = *(v45 + 24);
      if (v52 >= v51 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51 > 1, v52 + 1, 1);
        v45 = v71;
      }

      *(v45 + 16) = v52 + 1;
      v53 = (v45 + 16 * v52);
      v53[4]._rawValue = v47;
      v53[5]._rawValue = v46._rawValue;
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    specialized _arrayForceCast<A, B>(_:)(v45);
    OUTLINED_FUNCTION_211_3();

    v54._countAndFlagsBits = 58;
    v54._object = 0xE100000000000000;
    LLMFormatter.StringInterpolation.appendInterpolation(_:startNewLinesIf:)(v54, v46);

    LLMFormatter.sanitized.getter();
    OUTLINED_FUNCTION_114_7();

    v67 = v40;
    v68 = v42;

    v55 = OUTLINED_FUNCTION_34_11();
    MEMORY[0x25F89F6C0](v55);

    v57 = v67;
    v56 = v68;
    v67 = 0;
    v68 = 0xE000000000000000;
    MEMORY[0x25F89F5D0](10);
    specialized _arrayForceCast<A, B>(_:)(v29);
    OUTLINED_FUNCTION_240_2();

    v58._countAndFlagsBits = 58;
    v58._object = 0xE100000000000000;
    LLMFormatter.StringInterpolation.appendInterpolation(_:startNewLinesIf:)(v58, v46);

    LLMFormatter.sanitized.getter();
    OUTLINED_FUNCTION_114_7();

    v67 = v57;
    v68 = v56;

    v59 = OUTLINED_FUNCTION_34_11();
    MEMORY[0x25F89F6C0](v59);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_116_1();
    MobileSMSDocument.messageDocumentTemplate(locale:)(v25, v26);
  }

  OUTLINED_FUNCTION_148();
LABEL_33:
  result._object = v24;
  result._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t MobileSMSDocument.displayChatName.getter()
{
  v0 = MobileSMSDocument.chatName.getter();
  if (v1)
  {
    return v0;
  }

  v3 = *(MobileSMSDocument.chatParticipants.getter() + 16);

  v4 = v3 - 1;
  v5 = 0xE500000000000000;
  v6 = 0x676E6F6D61;
  if (!v3)
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  if (v4 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E656577746562;
  }

  if (v4 >= 2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  v9 = *(MobileSMSDocument.chatParticipants.getter() + 16);

  v10 = MobileSMSDocument.chatParticipants.getter();
  v11 = v10;
  if (v9 == 1)
  {
    v15 = v10;
    specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of MobileSMSDocument.displayChatName.getter);
    v11 = v15;
  }

  MEMORY[0x25F89F5D0](10);
  if (v11[2])
  {
    MEMORY[0x25F89F6C0](32, 0xE100000000000000);
    MEMORY[0x25F89F6C0](v7, v8);

    v16.value._rawValue = v11;
    v16.is_nil = 3;
    v12._countAndFlagsBits = 0xE000000000000000;
    LLMFormatter.StringInterpolation.appendInterpolation(names:countToShow:suffix:)(v16, 0, v12);
  }

  else
  {
  }

  LLMFormatter.sanitized.getter();
  v2 = v13;

  return v2;
}

uint64_t MobileSMSDocument.messageDocumentTemplate(locale:)(uint64_t a1, uint64_t a2)
{
  v170 = a1;
  v166 = type metadata accessor for Photo();
  v157 = *(v166 - 8);
  v3 = *(v157 + 64);
  MEMORY[0x28223BE20](v166);
  v165 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15OmniSearchTypes5PhotoV7elementtSgMd, &_sSi6offset_15OmniSearchTypes5PhotoV7elementtSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v167 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v168 = &v151 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v164 = &v151 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v163 = &v151 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v162 = &v151 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v161 = &v151 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v160 = &v151 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v159 = &v151 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v158 = &v151 - v30;
  v153 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v31 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v154 = (&v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = type metadata accessor for Date.FormatStyle();
  v155 = *(v156 - 8);
  v33 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v152 = &v151 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Date();
  v36 = *(v35 - 8);
  v37 = v36[8];
  MEMORY[0x28223BE20](v35);
  v39 = &v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for EditorialDateFormatter(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = &v151 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v48 = &v151 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v50 = &v151 - v49;
  *&v174 = 0;
  *(&v174 + 1) = 0xE000000000000000;
  MEMORY[0x25F89F5D0](107);
  v177 = v174;
  MobileSMSDocument.date.getter();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v50, v48, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v35);
  v52 = a2;
  v169 = a2;
  v53 = v170;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of EditorialDateFormatter(v43, type metadata accessor for EditorialDateFormatter);
    outlined destroy of IntentApplication?(v50, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v54 = v48;
    v55 = &_s10Foundation4DateVSgMd;
    v56 = &_s10Foundation4DateVSgMR;
  }

  else
  {
    v57 = v36;
    v58 = v36[4];
    v151 = v43;
    v59 = v39;
    v58(v39, v48, v35);
    v60 = v152;
    static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v53, v52, 1, 0, 0, v61, v62, v63, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);
    v64 = v153;
    v65 = v36[2];
    v66 = v154;
    v65(v154 + *(v153 + 24), v59, v35);
    *v66 = 257;
    v67 = (v66 + *(v64 + 28));
    *v67 = v53;
    v67[1] = v52;
    *(&v175 + 1) = MEMORY[0x277D837D0];
    v176 = MEMORY[0x277D83838];
    _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x277CC9428]);

    v68 = v156;
    Date.formatted<A>(_:)();
    LLMFormatter.StringInterpolation.appendInterpolation(_:)();
    outlined destroy of EditorialDateFormatter(v66, type metadata accessor for EditorialDateFormatter.DateInput);
    (*(v155 + 8))(v60, v68);
    (v57[1])(v59, v35);
    outlined destroy of EditorialDateFormatter(v151, type metadata accessor for EditorialDateFormatter);
    outlined destroy of IntentApplication?(v50, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v55 = &_ss23CustomStringConvertible_pSgMd;
    v56 = &_ss23CustomStringConvertible_pSgMR;
    v54 = &v174;
  }

  outlined destroy of IntentApplication?(v54, v55, v56);
  v69 = EmailDocument.authorNames.getter();
  v70 = MobileSMSDocument.isFromMe.getter();
  v72 = v163;
  v71 = v164;
  v73 = v158;
  if (*(v69 + 16))
  {
    v74 = v70;
    MEMORY[0x25F89F6C0](2105388, 0xE300000000000000);
    v178.value._rawValue = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(v69, v74 & 1);
    v178.is_nil = 3;
    v75._countAndFlagsBits = 0xE000000000000000;
    LLMFormatter.StringInterpolation.appendInterpolation(names:countToShow:suffix:)(v178, 0, v75);
  }

  v76 = NoteDocument.folderName.getter();
  v78 = v169;
  if (v77)
  {
    v79 = MEMORY[0x277D83838];
    v80 = MEMORY[0x277D837D0];
  }

  else
  {
    v76 = 0;
    v80 = 0;
    v79 = 0;
    *&v175 = 0;
  }

  v81 = v159;
  *&v174 = v76;
  *(&v174 + 1) = v77;
  *(&v175 + 1) = v80;
  v176 = v79;
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(58, 0xE100000000000000, &v174, 0);
  outlined destroy of IntentApplication?(&v174, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](32, 0xE100000000000000);
  MobileSMSDocument.contentURL.getter();
  v82 = type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v73, 1, v82) == 1)
  {
    outlined destroy of IntentApplication?(v73, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v174 = 0u;
    v175 = 0u;
    v176 = 0;
  }

  else
  {
    *(&v175 + 1) = v82;
    v176 = _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v174);
    (*(*(v82 - 8) + 32))(boxed_opaque_existential_1Tm, v73, v82);
  }

  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0x55746E65746E6F43, 0xEB000000003A4C52, &v174, 0);
  outlined destroy of IntentApplication?(&v174, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](32, 0xE100000000000000);
  MobileSMSDocument.dataDetectorResults.getter();
  v84 = type metadata accessor for DataDetectorResults();
  if (__swift_getEnumTagSinglePayload(v81, 1, v84) == 1)
  {
    outlined destroy of IntentApplication?(v81, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    v174 = 0u;
    v175 = 0u;
    v176 = 0;
  }

  else
  {
    v85 = DataDetectorResults.description.getter();
    *(&v175 + 1) = MEMORY[0x277D837D0];
    v176 = MEMORY[0x277D83838];
    *&v174 = v85;
    *(&v174 + 1) = v86;
    (*(*(v84 - 8) + 8))(v81, v84);
  }

  v87 = v170;
  v88 = v168;
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0xD000000000000016, 0x800000025DBF44C0, &v174, 0);
  outlined destroy of IntentApplication?(&v174, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](32, 0xE100000000000000);
  v89 = v160;
  MobileSMSDocument.partialExtractedAttributes.getter();
  v90 = type metadata accessor for PartialExtractedAttributes();
  if (__swift_getEnumTagSinglePayload(v89, 1, v90) == 1)
  {
    outlined destroy of IntentApplication?(v89, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    *&v175 = 0;
  }

  else
  {
    specialized PartialExtractedAttributesSearchItem.llmConsumableDescription(locale:)();
    v95 = v89;
    v91 = v96;
    v92 = v97;
    (*(*(v90 - 8) + 8))(v95, v90);
    v94 = MEMORY[0x277D83838];
    v93 = MEMORY[0x277D837D0];
  }

  *&v174 = v91;
  *(&v174 + 1) = v92;
  *(&v175 + 1) = v93;
  v176 = v94;
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0, 0xE000000000000000, &v174, 0);
  outlined destroy of IntentApplication?(&v174, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](32, 0xE100000000000000);
  v98 = v161;
  MobileSMSDocument.preExtractedCard.getter();
  v99 = type metadata accessor for PreExtractedCard();
  if (__swift_getEnumTagSinglePayload(v98, 1, v99) == 1)
  {
    outlined destroy of IntentApplication?(v98, &_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
    countAndFlagsBits = 0;
    object = 0;
    v102 = 0;
    v103 = 0;
    *&v175 = 0;
  }

  else
  {
    v104.value._countAndFlagsBits = v87;
    v104.value._object = v78;
    v105 = PreExtractedCard.llmConsumableDescription(locale:)(v104);
    v106 = v98;
    countAndFlagsBits = v105._countAndFlagsBits;
    object = v105._object;
    (*(*(v99 - 8) + 8))(v106, v99);
    v103 = MEMORY[0x277D83838];
    v102 = MEMORY[0x277D837D0];
  }

  *&v174 = countAndFlagsBits;
  *(&v174 + 1) = object;
  *(&v175 + 1) = v102;
  v176 = v103;
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0, 0xE000000000000000, &v174, 0);
  outlined destroy of IntentApplication?(&v174, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](32, 0xE100000000000000);
  v107 = v162;
  MobileSMSDocument.preExtractedContact.getter();
  v108 = type metadata accessor for PreExtractedContact();
  if (__swift_getEnumTagSinglePayload(v107, 1, v108) == 1)
  {
    outlined destroy of IntentApplication?(v107, &_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    *&v175 = 0;
  }

  else
  {
    v113.value._countAndFlagsBits = v87;
    v113.value._object = v78;
    v114 = PreExtractedContact.llmConsumableDescription(locale:)(v113);
    v115 = v107;
    v109 = v114._countAndFlagsBits;
    v110 = v114._object;
    (*(*(v108 - 8) + 8))(v115, v108);
    v112 = MEMORY[0x277D83838];
    v111 = MEMORY[0x277D837D0];
  }

  *&v174 = v109;
  *(&v174 + 1) = v110;
  *(&v175 + 1) = v111;
  v176 = v112;
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0, 0xE000000000000000, &v174, 0);
  outlined destroy of IntentApplication?(&v174, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](32, 0xE100000000000000);
  MobileSMSDocument.preExtractedSharedLink.getter();
  v116 = type metadata accessor for PreExtractedSharedLink();
  if (__swift_getEnumTagSinglePayload(v72, 1, v116) == 1)
  {
    outlined destroy of IntentApplication?(v72, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    *&v175 = 0;
  }

  else
  {
    v121.value._countAndFlagsBits = v87;
    v121.value._object = v78;
    v122 = PreExtractedSharedLink.llmConsumableDescription(locale:)(v121);
    v117 = v122._countAndFlagsBits;
    v118 = v122._object;
    (*(*(v116 - 8) + 8))(v72, v116);
    v120 = MEMORY[0x277D83838];
    v119 = MEMORY[0x277D837D0];
  }

  *&v174 = v117;
  *(&v174 + 1) = v118;
  *(&v175 + 1) = v119;
  v176 = v120;
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0, 0xE000000000000000, &v174, 0);
  outlined destroy of IntentApplication?(&v174, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](32, 0xE100000000000000);
  MobileSMSDocument.preExtractedBreadcrumb.getter();
  v123 = type metadata accessor for PreExtractedBreadcrumb();
  if (__swift_getEnumTagSinglePayload(v71, 1, v123) == 1)
  {
    outlined destroy of IntentApplication?(v71, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    *&v175 = 0;
  }

  else
  {
    v128.value._countAndFlagsBits = v87;
    v128.value._object = v78;
    v129 = PreExtractedBreadcrumb.llmConsumableDescription(locale:)(v128);
    v124 = v129._countAndFlagsBits;
    v125 = v129._object;
    (*(*(v123 - 8) + 8))(v71, v123);
    v127 = MEMORY[0x277D83838];
    v126 = MEMORY[0x277D837D0];
  }

  *&v174 = v124;
  *(&v174 + 1) = v125;
  *(&v175 + 1) = v126;
  v176 = v127;
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0, 0xE000000000000000, &v174, 0);
  outlined destroy of IntentApplication?(&v174, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  LLMFormatter.sanitized.getter();
  v131 = v130;
  v133 = v132;

  *&v177 = v131;
  *(&v177 + 1) = v133;
  v134 = *(MobileSMSDocument.photoAttachments.getter() + 16);

  if (v134)
  {
    *&v174 = 0;
    *(&v174 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    *&v174 = 0xD000000000000011;
    *(&v174 + 1) = 0x800000025DBF44E0;
    v135 = *(MobileSMSDocument.photoAttachments.getter() + 16);

    v172 = v135;
    v136 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x25F89F6C0](v136);

    MEMORY[0x25F89F6C0](0xD000000000000011, 0x800000025DBF4500);
    MEMORY[0x25F89F6C0](v174, *(&v174 + 1));

    v137 = MobileSMSDocument.photoAttachments.getter();
    v138 = (v157 + 32);
    v139 = (v157 + 8);
    *&v175 = 0;
    v174 = v137;
    v141 = v165;
    for (i = v166; ; (*v139)(v141, i))
    {
      v142 = v167;
      specialized EnumeratedSequence.Iterator.next()(v167);
      outlined init with take of SearchResultItem?(v142, v88, &_sSi6offset_15OmniSearchTypes5PhotoV7elementtSgMd, &_sSi6offset_15OmniSearchTypes5PhotoV7elementtSgMR);
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15OmniSearchTypes5PhotoV7elementtMd, &_sSi6offset_15OmniSearchTypes5PhotoV7elementtMR);
      if (__swift_getEnumTagSinglePayload(v88, 1, v143) == 1)
      {
        break;
      }

      v144 = *v88;
      (*v138)(v141, &v88[*(v143 + 48)], i);
      v171 = v144;
      v172 = dispatch thunk of CustomStringConvertible.description.getter();
      v173 = v145;
      MEMORY[0x25F89F6C0](8250, 0xE200000000000000);
      v147 = v172;
      v146 = v173;
      v148.value._countAndFlagsBits = v170;
      v148.value._object = v78;
      v149 = Photo.llmConsumableDescription(locale:)(v148);
      v172 = v147;
      v173 = v146;
      v88 = v168;

      MEMORY[0x25F89F6C0](v149._countAndFlagsBits, v149._object);

      v78 = v169;

      MEMORY[0x25F89F6C0](v172, v173);
    }

    return v177;
  }

  return v131;
}

Swift::String __swiftcall Photo.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v176 = v3;
  v177 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_49_3();
  v166 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_49_3();
  v164 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_49_3();
  v163 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_49_3();
  v162 = v28;
  v29 = OUTLINED_FUNCTION_78_0();
  v30 = type metadata accessor for EditorialDateFormatter.DateInput(v29);
  v31 = OUTLINED_FUNCTION_27_14(v30, &v173);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v34);
  v153 = type metadata accessor for Date.FormatStyle();
  v35 = OUTLINED_FUNCTION_14(v153);
  v150 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v39);
  v168 = type metadata accessor for Date();
  v40 = OUTLINED_FUNCTION_14(v168);
  v154 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_14_2();
  v161 = v45;
  v46 = OUTLINED_FUNCTION_78_0();
  v47 = type metadata accessor for EditorialDateFormatter(v46);
  v48 = OUTLINED_FUNCTION_114(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_36();
  v53 = v52 - v51;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v55 = OUTLINED_FUNCTION_114(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_62_10();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_156_4();
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](135);
  OUTLINED_FUNCTION_119_4();
  MEMORY[0x25F89F6C0](0x6C616E6F73726550, 0xEF206F746F687020);
  v61 = WalletPass.title.getter();
  if (v62)
  {
    v63 = MEMORY[0x277D83838];
  }

  else
  {
    v61 = OUTLINED_FUNCTION_7_24();
  }

  v64 = MEMORY[0x277D837D0];
  v65 = MEMORY[0x277D83838];
  OUTLINED_FUNCTION_81_12(v61, v62, v63);
  OUTLINED_FUNCTION_178_5();
  outlined destroy of IntentApplication?(v172, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v66 = Photo.ocrString.getter();
  v167 = v6;
  v165 = v8;
  if (v67)
  {
    *(&v170 + 1) = v64;
    v171 = v65;
    *&v169 = v66;
    *(&v169 + 1) = v67;
    outlined init with take of ResponseOverrideMatcherProtocol(&v169, v172);
  }

  else
  {
    v171 = 0;
    v169 = 0u;
    v170 = 0u;
    v68 = Photo.snippet.getter();
    if (v69)
    {
      v70 = MEMORY[0x277D83838];
    }

    else
    {
      v68 = OUTLINED_FUNCTION_7_24();
    }

    OUTLINED_FUNCTION_81_12(v68, v69, v70);
    if (*(&v170 + 1))
    {
      outlined destroy of IntentApplication?(&v169, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }
  }

  OUTLINED_FUNCTION_53_12();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v71, v72, v73, 0);
  outlined destroy of IntentApplication?(v172, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  OUTLINED_FUNCTION_257_3();
  v74 = MEMORY[0x25F89D0F0]();
  v75._object = (v64 | 0x8000000000000000);
  v75._countAndFlagsBits = 0xD000000000000013;
  v178.value._rawValue = v74;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v75, v178);

  OUTLINED_FUNCTION_48_9();
  OUTLINED_FUNCTION_257_3();
  Photo.peopleNames.getter();
  OUTLINED_FUNCTION_243_2(0xD00000000000001CLL);

  OUTLINED_FUNCTION_48_9();
  OUTLINED_FUNCTION_257_3();
  Photo.businessNames.getter();
  OUTLINED_FUNCTION_243_2(0xD000000000000017);

  OUTLINED_FUNCTION_48_9();
  OUTLINED_FUNCTION_257_3();
  MEMORY[0x25F89D070]();
  OUTLINED_FUNCTION_243_2(0xD000000000000021);

  OUTLINED_FUNCTION_48_9();
  Photo.date.getter();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  v76 = OUTLINED_FUNCTION_181_4();
  outlined init with copy of SpotlightRankingItem?(v76, v77, v78, v79);
  v80 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v80, v81, v168);
  if (v91)
  {
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v53, v82);
    outlined destroy of IntentApplication?(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v2 = v1;
    v83 = v166;
  }

  else
  {
    v147 = v53;
    v84 = v154;
    v85 = *(v154 + 32);
    (v85)(v161, v1, v168);
    OUTLINED_FUNCTION_141_4();
    MEMORY[0x25F89F6C0]();
    v86 = *(v154 + 16);
    v87 = OUTLINED_FUNCTION_226_1(&v175);
    v86(v87, v161, v168);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v168);
    outlined init with copy of SpotlightRankingItem?(0xD000000000000013, v155, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_166(v155, 1, v168);
    if (v91)
    {
      v92 = OUTLINED_FUNCTION_87_8();
      outlined destroy of IntentApplication?(v92, v93, v94);
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v95, v96, v97);
    }

    else
    {
      v98 = v157;
      v85();
      v156 = v2;
      v2 = v165;
      OUTLINED_FUNCTION_113_9(v165, v167, v99, v100, v101, v102, v103, v104, v53, v148, v150, v151, v153, v154, v156, v157, v159, v160, v161, v162);
      v86(v152 + *(v149 + 24), v98, v168);
      *v152 = 257;
      v105 = (v152 + *(v149 + 28));
      *v105 = v165;
      v105[1] = v167;
      v172[3] = MEMORY[0x277D837D0];
      v172[4] = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v106, v107);

      OUTLINED_FUNCTION_133_7();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      OUTLINED_FUNCTION_198_3();
      outlined destroy of EditorialDateFormatter(v108, v109);
      OUTLINED_FUNCTION_4_4(&v174);
      v110 = OUTLINED_FUNCTION_52_1();
      v111(v110);
      OUTLINED_FUNCTION_172_4();
      v112(v158, v168);
      v113 = OUTLINED_FUNCTION_63_1();
      outlined destroy of IntentApplication?(v113, v114, v115);
      outlined destroy of IntentApplication?(v172, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    v83 = v166;
    OUTLINED_FUNCTION_92_7();
    (*(v84 + 8))(v161, v168);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v147, v116);
  }

  outlined destroy of IntentApplication?(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_115_7();
  Photo.preExtractedCard.getter();
  type metadata accessor for PreExtractedCard();
  OUTLINED_FUNCTION_9_5(v162);
  if (v91)
  {
    outlined destroy of IntentApplication?(v162, &_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
    OUTLINED_FUNCTION_12_23();
  }

  else
  {
    v117.value._countAndFlagsBits = OUTLINED_FUNCTION_118_0();
    PreExtractedCard.llmConsumableDescription(locale:)(v117);
    OUTLINED_FUNCTION_6_18();
    v119 = *(v118 + 8);
    v120 = OUTLINED_FUNCTION_181_4();
    v121(v120);
    v122 = MEMORY[0x277D83838];
  }

  OUTLINED_FUNCTION_19_17(v122);
  outlined destroy of IntentApplication?(v172, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  Photo.preExtractedContact.getter();
  type metadata accessor for PreExtractedContact();
  v123 = OUTLINED_FUNCTION_239_1();
  OUTLINED_FUNCTION_9_5(v123);
  if (v91)
  {
    outlined destroy of IntentApplication?(v163, &_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
    OUTLINED_FUNCTION_12_23();
  }

  else
  {
    v124.value._countAndFlagsBits = OUTLINED_FUNCTION_118_0();
    PreExtractedContact.llmConsumableDescription(locale:)(v124);
    OUTLINED_FUNCTION_6_18();
    v126 = *(v125 + 8);
    v127 = OUTLINED_FUNCTION_159_4();
    v128(v127);
    v129 = MEMORY[0x277D83838];
  }

  OUTLINED_FUNCTION_19_17(v129);
  outlined destroy of IntentApplication?(v172, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  Photo.preExtractedSharedLink.getter();
  type metadata accessor for PreExtractedSharedLink();
  v130 = OUTLINED_FUNCTION_212_2();
  OUTLINED_FUNCTION_9_5(v130);
  if (v91)
  {
    outlined destroy of IntentApplication?(v164, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
    OUTLINED_FUNCTION_12_23();
  }

  else
  {
    v131.value._countAndFlagsBits = OUTLINED_FUNCTION_118_0();
    PreExtractedSharedLink.llmConsumableDescription(locale:)(v131);
    OUTLINED_FUNCTION_6_18();
    v133 = *(v132 + 8);
    v134 = OUTLINED_FUNCTION_21_7();
    v135(v134);
    v136 = MEMORY[0x277D83838];
  }

  OUTLINED_FUNCTION_19_17(v136);
  outlined destroy of IntentApplication?(v172, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  Photo.preExtractedBreadcrumb.getter();
  type metadata accessor for PreExtractedBreadcrumb();
  v137 = OUTLINED_FUNCTION_176_5();
  OUTLINED_FUNCTION_9_5(v137);
  if (v91)
  {
    outlined destroy of IntentApplication?(v83, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
    OUTLINED_FUNCTION_12_23();
  }

  else
  {
    v138.value._countAndFlagsBits = OUTLINED_FUNCTION_118_0();
    PreExtractedBreadcrumb.llmConsumableDescription(locale:)(v138);
    OUTLINED_FUNCTION_6_18();
    v140 = *(v139 + 8);
    v141 = OUTLINED_FUNCTION_52_1();
    v142(v141);
    v143 = MEMORY[0x277D83838];
  }

  OUTLINED_FUNCTION_19_17(v143);
  outlined destroy of IntentApplication?(v172, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v145;
  result._countAndFlagsBits = v144;
  return result;
}

Swift::String __swiftcall WalletTransaction.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  MEMORY[0x25F89F5D0](113, locale.value._object);
  v39 = 0;
  v40 = 0xE000000000000000;
  MEMORY[0x25F89F6C0](0xD000000000000020, 0x800000025DBF40E0);
  v1 = WalletPass.title.getter();
  if (v2)
  {
    v3 = MEMORY[0x277D83838];
    v4 = MEMORY[0x277D837D0];
  }

  else
  {
    v1 = OUTLINED_FUNCTION_22_16();
    v36 = 0;
  }

  v34 = v1;
  v35 = v2;
  v37 = v4;
  v38 = v3;
  OUTLINED_FUNCTION_147_5(v1, v2, &v34);
  outlined destroy of IntentApplication?(&v34, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v5 = WalletPass.description.getter();
  if (v6)
  {
    v7 = MEMORY[0x277D83838];
    v8 = MEMORY[0x277D837D0];
  }

  else
  {
    v5 = OUTLINED_FUNCTION_22_16();
    v36 = 0;
  }

  v34 = v5;
  v35 = v6;
  v37 = v8;
  v38 = v7;
  OUTLINED_FUNCTION_147_5(v5, v6, &v34);
  outlined destroy of IntentApplication?(&v34, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd, &_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8400;
  v10 = WalletTransaction.city.getter();
  if (v11)
  {
    v12 = MEMORY[0x277D83838];
    v13 = MEMORY[0x277D837D0];
  }

  else
  {
    v10 = OUTLINED_FUNCTION_22_16();
    *(inited + 48) = 0;
  }

  *(inited + 32) = v10;
  *(inited + 40) = v11;
  *(inited + 56) = v13;
  *(inited + 64) = v12;
  v14 = WalletTransaction.stateOrProvince.getter();
  if (v15)
  {
    v16 = MEMORY[0x277D83838];
    v17 = MEMORY[0x277D837D0];
  }

  else
  {
    v14 = OUTLINED_FUNCTION_22_16();
    *(inited + 88) = 0;
  }

  *(inited + 72) = v14;
  *(inited + 80) = v15;
  *(inited + 96) = v17;
  *(inited + 104) = v16;
  v18 = WalletTransaction.country.getter();
  if (v19)
  {
    v20 = MEMORY[0x277D83838];
    v21 = MEMORY[0x277D837D0];
  }

  else
  {
    v18 = OUTLINED_FUNCTION_22_16();
    *(inited + 128) = 0;
  }

  *(inited + 112) = v18;
  *(inited + 120) = v19;
  *(inited + 136) = v21;
  *(inited + 144) = v20;
  v22._countAndFlagsBits = 0x61636F6C20656854;
  v22._object = 0xEF7369206E6F6974;
  LLMFormatter.StringInterpolation.appendInterpolation(_:ifAll:)(v22, inited);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  OUTLINED_FUNCTION_98_2();
  MEMORY[0x25F89F6C0](0xD00000000000001BLL);
  v23 = WalletTransaction.amount.getter();
  if (v24)
  {
    v23 = OUTLINED_FUNCTION_22_16();
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v25 = MEMORY[0x277D83A60];
    v26 = MEMORY[0x277D839F8];
  }

  v34 = v23;
  v37 = v26;
  v38 = v25;
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of IntentApplication?(&v34, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v27 = WalletTransaction.currencyCode.getter();
  if (v28)
  {
    v29 = MEMORY[0x277D83838];
    v30 = MEMORY[0x277D837D0];
  }

  else
  {
    v27 = OUTLINED_FUNCTION_22_16();
    v36 = 0;
  }

  v34 = v27;
  v35 = v28;
  v37 = v30;
  v38 = v29;
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of IntentApplication?(&v34, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_177_5();
  LLMFormatter.sanitized.getter();
  OUTLINED_FUNCTION_89_10();
  v31 = OUTLINED_FUNCTION_88();
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

Swift::String __swiftcall WalletPass.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  MEMORY[0x25F89F5D0](78, locale.value._object);
  OUTLINED_FUNCTION_175_4();
  MEMORY[0x25F89F6C0](0xD000000000000023, 0x800000025DBF4130);
  WalletPass.title.getter();
  if (!v1)
  {
    OUTLINED_FUNCTION_22_16();
    v19 = 0;
  }

  OUTLINED_FUNCTION_135_7();
  OUTLINED_FUNCTION_174_3();
  OUTLINED_FUNCTION_147_5(v2, v3, v4);
  outlined destroy of IntentApplication?(v18, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_128_5();
  WalletPass.description.getter();
  if (!v5)
  {
    OUTLINED_FUNCTION_22_16();
    v19 = 0;
  }

  OUTLINED_FUNCTION_135_7();
  OUTLINED_FUNCTION_174_3();
  OUTLINED_FUNCTION_147_5(v6, v7, v8);
  outlined destroy of IntentApplication?(v18, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_128_5();
  WalletPass.creator.getter();
  if (!v9)
  {
    OUTLINED_FUNCTION_22_16();
    v19 = 0;
  }

  OUTLINED_FUNCTION_135_7();
  OUTLINED_FUNCTION_174_3();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v10, v11, v12, 0);
  outlined destroy of IntentApplication?(v18, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_128_5();
  v13 = WalletPass.extraData.getter();
  v14._object = 0x800000025DBF4160;
  v14._countAndFlagsBits = 0xD000000000000017;
  v20.value._rawValue = v13;
  LLMFormatter.StringInterpolation.appendInterpolation(_:dictionary:)(v14, v20);

  OUTLINED_FUNCTION_222_2();
  OUTLINED_FUNCTION_89_10();
  v15 = OUTLINED_FUNCTION_88();
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

Swift::String __swiftcall NoteDocument.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_76_10();
  MEMORY[0x25F89F5D0](48);
  OUTLINED_FUNCTION_175_4();
  OUTLINED_FUNCTION_221_3();
  WalletPass.title.getter();
  if (!v1)
  {
    OUTLINED_FUNCTION_22_16();
    v13 = 0;
  }

  OUTLINED_FUNCTION_127_9();
  outlined destroy of IntentApplication?(v12, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_247_3();
  WalletPass.description.getter();
  if (!v2)
  {
    OUTLINED_FUNCTION_22_16();
    v13 = 0;
  }

  OUTLINED_FUNCTION_135_7();
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_174_3();
  OUTLINED_FUNCTION_197_5(17, v3, v4);
  outlined destroy of IntentApplication?(v12, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_128_5();
  NoteDocument.folderName.getter();
  if (!v5)
  {
    OUTLINED_FUNCTION_22_16();
    v13 = 0;
  }

  OUTLINED_FUNCTION_135_7();
  OUTLINED_FUNCTION_174_3();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v6, v7, v8, 0);
  outlined destroy of IntentApplication?(v12, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_222_2();
  OUTLINED_FUNCTION_89_10();
  v9 = OUTLINED_FUNCTION_88();
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

Swift::String __swiftcall Reminder.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v177 = v7;
  v178 = v8;
  v164 = v9;
  v162 = v10;
  v11 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v12 = OUTLINED_FUNCTION_17(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v165 = type metadata accessor for Date.FormatStyle();
  v15 = OUTLINED_FUNCTION_14(v165);
  v163 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_39_0();
  v159 = v19;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_157_4();
  v21 = type metadata accessor for Date();
  v22 = OUTLINED_FUNCTION_14(v21);
  v171 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_39_0();
  v161 = v26;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_38_18(v28, v29, v30, v31, v32, v33, v34, v35, v153);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_216_3();
  v37 = type metadata accessor for EditorialDateFormatter(0);
  v38 = OUTLINED_FUNCTION_114(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_39_0();
  v170 = v41;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_123_8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v44 = OUTLINED_FUNCTION_114(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_73_9();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_74_14();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_7_4();
  v172 = v50;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v52);
  v54 = &v153 - v53;
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](96);
  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_98_2();
  MEMORY[0x25F89F6C0](0xD000000000000016);
  v169 = v1;
  Reminder.creationDate.getter();
  v166 = v6;
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v54, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v55 = OUTLINED_FUNCTION_159_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, v56, v21);
  v58 = MEMORY[0x277D837D0];
  v157 = v2;
  v156 = v11;
  if (EnumTagSinglePayload == 1)
  {
    v59 = v171;
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v166, v60);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v61, v62, v63);
    OUTLINED_FUNCTION_33_13();
  }

  else
  {
    v67 = v4;
    v68 = v2;
    v69 = v171;
    v70 = *(v171 + 32);
    v155 = v67;
    v70(v67, v3, v21);
    v71 = v162;
    v154 = v5;
    v72 = v21;
    v73 = v164;
    OUTLINED_FUNCTION_113_9(v162, v164, v74, v75, v76, v77, v78, v79, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
    (*(v69 + 16))(v68 + *(v11 + 24), v67, v72);
    OUTLINED_FUNCTION_255_2();
    *v80 = v71;
    v80[1] = v73;
    v174 = v58;
    v175 = MEMORY[0x277D83838];
    OUTLINED_FUNCTION_2_30();
    _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v81, v82);
    v21 = v72;

    OUTLINED_FUNCTION_227_1();
    Date.formatted<A>(_:)();
    OUTLINED_FUNCTION_178_5();
    OUTLINED_FUNCTION_1_45();
    outlined destroy of EditorialDateFormatter(v68, v83);
    v84 = *(v163 + 8);
    v85 = OUTLINED_FUNCTION_158();
    v86(v85);
    v59 = v69;
    (*(v69 + 8))(v155, v72);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v166, v87);
    outlined destroy of IntentApplication?(v54, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v65 = &_ss23CustomStringConvertible_pSgMd;
    v66 = &_ss23CustomStringConvertible_pSgMR;
    v64 = v173;
  }

  outlined destroy of IntentApplication?(v64, v65, v66);
  MEMORY[0x25F89F6C0](0x3A656C746954202ELL, 0xE900000000000020);
  v88 = WalletPass.title.getter();
  v90 = v170;
  v91 = v172;
  if (v89)
  {
    v92 = MEMORY[0x277D83838];
  }

  else
  {
    v88 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v88, v89, v92);
  OUTLINED_FUNCTION_178_5();
  outlined destroy of IntentApplication?(v173, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](8238, 0xE200000000000000);
  Reminder.dueDate.getter();
  IsAll = Reminder.dueDateIsAllDay.getter();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  v94 = v167;
  outlined init with copy of SpotlightRankingItem?(v91, v167, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_9_5(v94);
  if (v107)
  {
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v90, v95);
    outlined destroy of IntentApplication?(v91, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v96 = v94;
  }

  else
  {
    v97 = *(v59 + 32);
    v98 = OUTLINED_FUNCTION_87_8();
    (v97)(v98);
    MEMORY[0x25F89F6C0](0x203A6E6F20657544, 0xE900000000000020);
    v99 = *(v59 + 16);
    v99();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v21);
    OUTLINED_FUNCTION_251_1(&v176);
    outlined init with copy of SpotlightRankingItem?(v103, v104, v105, v106);
    OUTLINED_FUNCTION_9_5(v59);
    if (v107)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v108, v109, v110);
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v111, v112, v113);
      v114 = v171;
    }

    else
    {
      LODWORD(v167) = IsAll ^ 1;
      OUTLINED_FUNCTION_206_3();
      v97();
      v121 = v162;
      if (IsAll)
      {
        v122 = v164;
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v162, v164, 1, v116, v117, v118, v119, v120, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
      }

      else
      {
        v122 = v164;
        OUTLINED_FUNCTION_113_9(v162, v164, v115, v116, v117, v118, v119, v120, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
      }

      v123 = v157;
      v124 = v156;
      v125 = MEMORY[0x277D83838];
      (v99)(&v157[*(v156 + 24)], v161, v21);
      *v123 = v167 & 1;
      v123[1] = 1;
      v126 = &v123[*(v124 + 28)];
      *v126 = v121;
      v126[1] = v122;
      v174 = MEMORY[0x277D837D0];
      v175 = v125;
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v127, v128);

      v129 = v159;
      v130 = v165;
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v123, v131);
      (*(v163 + 8))(v129, v130);
      v114 = v171;
      (*(v171 + 8))(v161, v21);
      outlined destroy of IntentApplication?(v160, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(v173, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      v90 = v170;
    }

    OUTLINED_FUNCTION_92_7();
    (*(v114 + 8))(v168, v21);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v90, v132);
    v96 = v172;
  }

  outlined destroy of IntentApplication?(v96, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_115_7();
  v133 = WalletPass.description.getter();
  if (v134)
  {
    v135 = MEMORY[0x277D83838];
  }

  else
  {
    v133 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v133, v134, v135);
  OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_242_2(v136, 8250, v137);
  outlined destroy of IntentApplication?(v173, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v138 = Reminder.namedLocation.getter();
  if (v139)
  {
    v140 = MEMORY[0x277D83838];
  }

  else
  {
    v138 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v138, v139, v140);
  OUTLINED_FUNCTION_149_6();
  OUTLINED_FUNCTION_80_9();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v141, v142, v143, 0);
  outlined destroy of IntentApplication?(v173, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  v144 = Reminder.physicalAddress.getter();
  if (v145)
  {
    v146 = MEMORY[0x277D83838];
  }

  else
  {
    v144 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v144, v145, v146);
  OUTLINED_FUNCTION_80_9();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v147, v148, v149, 0);
  outlined destroy of IntentApplication?(v173, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v151;
  result._countAndFlagsBits = v150;
  return result;
}

Swift::String __swiftcall PhoneHistory.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v5 = v1;
  v103 = v6;
  v104 = v7;
  v101 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v8 = OUTLINED_FUNCTION_17(v101);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_3();
  v107 = v11;
  OUTLINED_FUNCTION_78_0();
  v109 = type metadata accessor for Date.FormatStyle();
  v12 = OUTLINED_FUNCTION_14(v109);
  v105 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_3();
  v111 = v16;
  OUTLINED_FUNCTION_78_0();
  v17 = type metadata accessor for Date();
  v18 = OUTLINED_FUNCTION_14(v17);
  v115 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  v100 = v22;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_72_8(v24, v25, v26, v27, v28, v29, v30, v31, v95);
  v32 = type metadata accessor for EditorialDateFormatter(0);
  v33 = OUTLINED_FUNCTION_114(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_36();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v40 = OUTLINED_FUNCTION_114(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_61_13();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  v113 = v45;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](50);
  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_141_4();
  v47 = MEMORY[0x25F89F6C0]();
  v48 = MEMORY[0x25F89AD10](v47);
  if (v48)
  {
    v116[0] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_8_25();
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(v49, v50, &_sSaySSGMR);
    OUTLINED_FUNCTION_17_18();
    v51 = BidirectionalCollection<>.joined(separator:)();
    v53 = v52;

    v54 = MEMORY[0x277D83838];
    v55 = MEMORY[0x277D837D0];
  }

  else
  {
    v51 = 0;
    v53 = 0;
    OUTLINED_FUNCTION_24_17();
  }

  v116[0] = v51;
  v116[1] = v53;
  v117 = v55;
  v118 = v54;
  OUTLINED_FUNCTION_178_5();
  outlined destroy of IntentApplication?(v116, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  PhoneHistory.callDate.getter();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v2, v113, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_9_5(v113);
  if (v62)
  {
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v38, v56);
    outlined destroy of IntentApplication?(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v2 = v113;
  }

  else
  {
    v99 = v5;
    v57 = v115[4];
    OUTLINED_FUNCTION_47_11();
    v57();
    OUTLINED_FUNCTION_193_4();
    v58 = v115[2];
    (v58)(v4, v114, v17);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v17);
    outlined init with copy of SpotlightRankingItem?(v4, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_9_5(v3);
    if (v62)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v63, v64, v65);
      OUTLINED_FUNCTION_33_13();
    }

    else
    {
      (v57)(v100, v3, v17);
      v66 = v103;
      v97 = v4;
      v67 = v104;
      OUTLINED_FUNCTION_113_9(v103, v104, v68, v69, v70, v71, v72, v73, v96, v97, v99, v100, v101, v103, v104, v105, v107, v109, v111, v113);
      v74 = *(v102 + 24);
      OUTLINED_FUNCTION_206_3();
      v58();
      OUTLINED_FUNCTION_254_1();
      v75 = (v108 + *(v102 + 28));
      *v75 = v66;
      v75[1] = v67;
      v117 = MEMORY[0x277D837D0];
      v118 = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v76, v77);

      OUTLINED_FUNCTION_251_3();
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v108, v78);
      (*(v106 + 8))(v112, v110);
      v79 = v115[1];
      v80 = OUTLINED_FUNCTION_159_4();
      v81(v80);
      outlined destroy of IntentApplication?(v98, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v82 = &_ss23CustomStringConvertible_pSgMd;
      v83 = &_ss23CustomStringConvertible_pSgMR;
      v84 = v116;
    }

    outlined destroy of IntentApplication?(v84, v82, v83);
    OUTLINED_FUNCTION_92_7();
    (v115[1])(v114, v17);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v38, v85);
  }

  outlined destroy of IntentApplication?(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_115_7();
  v86 = PhoneHistory.callType.getter();
  if (v87)
  {
    v88 = MEMORY[0x277D83838];
  }

  else
  {
    v86 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v86, v87, v88);
  OUTLINED_FUNCTION_40_16();
  v89 = OUTLINED_FUNCTION_153_2();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v89, v90, v91, 0);
  outlined destroy of IntentApplication?(v116, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v93;
  result._countAndFlagsBits = v92;
  return result;
}

Swift::String __swiftcall VoicemailTranscript.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v102 = v5;
  v103 = v6;
  v101 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v7 = OUTLINED_FUNCTION_17(v101);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  v105 = v10;
  OUTLINED_FUNCTION_78_0();
  v11 = type metadata accessor for Date.FormatStyle();
  v12 = OUTLINED_FUNCTION_14(v11);
  v104 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_3();
  v106 = v16;
  OUTLINED_FUNCTION_78_0();
  v17 = type metadata accessor for Date();
  v18 = OUTLINED_FUNCTION_14(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  v100 = v23;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_2();
  v107 = v25;
  v26 = OUTLINED_FUNCTION_78_0();
  v27 = type metadata accessor for EditorialDateFormatter(v26);
  v28 = OUTLINED_FUNCTION_114(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v32 = OUTLINED_FUNCTION_114(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_109();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_49_15();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_61_13();
  MEMORY[0x28223BE20](v40);
  v42 = &v94 - v41;
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](60);
  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_141_4();
  MEMORY[0x25F89F6C0]();
  v43 = WalletPass.description.getter();
  if (v44)
  {
    v45 = MEMORY[0x277D83838];
  }

  else
  {
    v43 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v43, v44, v45);
  OUTLINED_FUNCTION_178_5();
  outlined destroy of IntentApplication?(v108, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  VoicemailTranscript.date.getter();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  outlined init with copy of SpotlightRankingItem?(v42, v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_9_5(v4);
  if (v56)
  {
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v2, v46);
    outlined destroy of IntentApplication?(v42, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v42 = v4;
  }

  else
  {
    v97 = v11;
    v98 = v2;
    v99 = v1;
    v47 = *(v20 + 32);
    (v47)(v107, v4, v17);
    OUTLINED_FUNCTION_193_4();
    v48 = *(v20 + 16);
    OUTLINED_FUNCTION_142_3();
    v48();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v17);
    v52 = OUTLINED_FUNCTION_158();
    outlined init with copy of SpotlightRankingItem?(v52, v53, v54, v55);
    OUTLINED_FUNCTION_9_5(v37);
    if (v56)
    {
      v57 = OUTLINED_FUNCTION_188_5();
      outlined destroy of IntentApplication?(v57, v58, &_s10Foundation4DateVSgMR);
      v83 = v37;
      v81 = &_s10Foundation4DateVSgMd;
      v82 = &_s10Foundation4DateVSgMR;
    }

    else
    {
      v96 = v3;
      v59 = v100;
      OUTLINED_FUNCTION_206_3();
      v47();
      v61 = v102;
      v60 = v103;
      v62 = OUTLINED_FUNCTION_235_3();
      OUTLINED_FUNCTION_113_9(v62, v63, v64, v65, v66, v67, v68, v69, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
      v95 = v20;
      v70 = v101;
      v71 = v105;
      (v48)(v105 + *(v101 + 24), v59, v17);
      *v71 = 257;
      v72 = (v71 + *(v70 + 28));
      *v72 = v61;
      v72[1] = v60;
      v108[3] = MEMORY[0x277D837D0];
      v108[4] = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v73, v74);

      v75 = v106;
      v76 = v97;
      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v71, v77);
      (*(v104 + 8))(v75, v76);
      v20 = v95;
      v78 = *(v95 + 8);
      v79 = OUTLINED_FUNCTION_233_3();
      v80(v79);
      outlined destroy of IntentApplication?(v96, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v81 = &_ss23CustomStringConvertible_pSgMd;
      v82 = &_ss23CustomStringConvertible_pSgMR;
      v83 = v108;
    }

    outlined destroy of IntentApplication?(v83, v81, v82);
    v84 = v98;
    OUTLINED_FUNCTION_92_7();
    (*(v20 + 8))(v107, v17);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v84, v85);
  }

  outlined destroy of IntentApplication?(v42, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_115_7();
  v86 = WalletPass.title.getter();
  if (v87)
  {
    v88 = MEMORY[0x277D83838];
  }

  else
  {
    v86 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v86, v87, v88);
  OUTLINED_FUNCTION_40_16();
  OUTLINED_FUNCTION_197_5(21, v89, v90);
  outlined destroy of IntentApplication?(v108, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v92;
  result._countAndFlagsBits = v91;
  return result;
}

Swift::String __swiftcall JournalEntry.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_76_10();
  MEMORY[0x25F89F5D0](50);
  OUTLINED_FUNCTION_175_4();
  OUTLINED_FUNCTION_98_2();
  MEMORY[0x25F89F6C0](0xD000000000000027);
  WalletPass.title.getter();
  if (!v1)
  {
    OUTLINED_FUNCTION_22_16();
    v6 = 0;
  }

  OUTLINED_FUNCTION_127_9();
  outlined destroy of IntentApplication?(v5, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_177_5();
  OUTLINED_FUNCTION_222_2();
  OUTLINED_FUNCTION_89_10();
  v2 = OUTLINED_FUNCTION_88();
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall VoiceMemo.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_155();
  v93 = v5;
  v94 = v6;
  v91 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v7 = OUTLINED_FUNCTION_17(v91);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  v97 = v10;
  OUTLINED_FUNCTION_78_0();
  v11 = type metadata accessor for Date.FormatStyle();
  v12 = OUTLINED_FUNCTION_14(v11);
  v95 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_3();
  v99 = v16;
  OUTLINED_FUNCTION_78_0();
  v17 = type metadata accessor for Date();
  v18 = OUTLINED_FUNCTION_14(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  v90 = v23;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_72_8(v25, v26, v27, v28, v29, v30, v31, v32, v84);
  v33 = type metadata accessor for EditorialDateFormatter(0);
  v34 = OUTLINED_FUNCTION_114(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_3();
  v101 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v39 = OUTLINED_FUNCTION_114(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_73_8();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_131_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_216_3();
  OUTLINED_FUNCTION_44_16();
  MEMORY[0x25F89F5D0](42);
  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_98_2();
  MEMORY[0x25F89F6C0](0xD000000000000015);
  v45 = WalletPass.title.getter();
  if (v46)
  {
    v47 = MEMORY[0x277D83838];
  }

  else
  {
    v45 = OUTLINED_FUNCTION_7_24();
  }

  OUTLINED_FUNCTION_81_12(v45, v46, v47);
  OUTLINED_FUNCTION_178_5();
  outlined destroy of IntentApplication?(v102, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_48_9();
  VoiceMemo.creationDate.getter();
  specialized default argument 4 of LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)();
  v48 = OUTLINED_FUNCTION_32_3();
  outlined init with copy of SpotlightRankingItem?(v48, v49, v50, v51);
  OUTLINED_FUNCTION_71_10(v4);
  if (v58)
  {
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v101, v52);
    outlined destroy of IntentApplication?(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v2 = v4;
  }

  else
  {
    v87 = v11;
    v53 = *(v20 + 32);
    (v53)(v100, v4, v17);
    OUTLINED_FUNCTION_193_4();
    v88 = v20;
    v54 = *(v20 + 16);
    v54(v1, v100, v17);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v17);
    outlined init with copy of SpotlightRankingItem?(v1, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_71_10(v3);
    if (v58)
    {
      outlined destroy of IntentApplication?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v59 = OUTLINED_FUNCTION_188_5();
      outlined destroy of IntentApplication?(v59, v60, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v85 = v1;
      v61 = v90;
      v53();
      v63 = v93;
      v62 = v94;
      v64 = OUTLINED_FUNCTION_233_3();
      OUTLINED_FUNCTION_113_9(v64, v65, v66, v67, v68, v69, v70, v71, v85, v87, v88, v90, v91, v93, v94, v95, v97, v99, v100, v101);
      v54(v98 + *(v92 + 24), v61, v17);
      OUTLINED_FUNCTION_253_2();
      *v72 = v63;
      v72[1] = v62;
      v102[3] = MEMORY[0x277D837D0];
      v102[4] = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_2_30();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v73, v74);

      Date.formatted<A>(_:)();
      OUTLINED_FUNCTION_178_5();
      OUTLINED_FUNCTION_1_45();
      outlined destroy of EditorialDateFormatter(v98, v75);
      v76 = *(v96 + 8);
      v77 = OUTLINED_FUNCTION_52_1();
      v78(v77);
      v20 = v89;
      OUTLINED_FUNCTION_270_1();
      v79(v61, v17);
      outlined destroy of IntentApplication?(v86, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of IntentApplication?(v102, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }

    OUTLINED_FUNCTION_92_7();
    (*(v20 + 8))(v100, v17);
    OUTLINED_FUNCTION_0_47();
    outlined destroy of EditorialDateFormatter(v101, v80);
  }

  outlined destroy of IntentApplication?(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_192_5();
  OUTLINED_FUNCTION_89_10();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_148();
  result._object = v82;
  result._countAndFlagsBits = v81;
  return result;
}

Swift::String __swiftcall Safari.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  v1 = 1835365481;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = v30 - v6;
  Safari.contentType.getter();
  v8 = MEMORY[0x277D837D0];
  if (v9 && (v10._countAndFlagsBits = 0xD000000000000011, v10._object = 0x800000025DBF42B0, v11 = String.hasPrefix(_:)(v10), , v11) && (v12 = Safari.contentType.getter(), v13))
  {
    *&v31 = v12;
    *(&v31 + 1) = v13;
    *&v34 = 0xD000000000000011;
    *(&v34 + 1) = 0x800000025DBF42B0;
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  *&v31 = 0;
  *(&v31 + 1) = 0xE000000000000000;
  MEMORY[0x25F89F5D0](46);
  v34 = v31;
  MEMORY[0x25F89F6C0](0x6972616661532041, 0xE900000000000020);
  *(&v32 + 1) = v8;
  v33 = MEMORY[0x277D83838];
  *&v31 = v1;
  *(&v31 + 1) = v15;
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of IntentApplication?(&v31, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](0x20726F6620, 0xE500000000000000);
  v16 = WalletPass.title.getter();
  if (v17)
  {
    v18 = MEMORY[0x277D83838];
    v19 = MEMORY[0x277D837D0];
  }

  else
  {
    v16 = OUTLINED_FUNCTION_22_16();
    *&v32 = 0;
  }

  *&v31 = v16;
  *(&v31 + 1) = v17;
  *(&v32 + 1) = v19;
  v33 = v18;
  LLMFormatter.StringInterpolation.appendInterpolation(_:)();
  outlined destroy of IntentApplication?(&v31, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](8238, 0xE200000000000000);
  Safari.websiteUrl.getter();
  v20 = type metadata accessor for URL();
  OUTLINED_FUNCTION_166(v7, 1, v20);
  if (v21)
  {
    outlined destroy of IntentApplication?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
  }

  else
  {
    *(&v32 + 1) = v20;
    OUTLINED_FUNCTION_18_16();
    v33 = _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(v22, v23);
    __swift_allocate_boxed_opaque_existential_1Tm(&v31);
    OUTLINED_FUNCTION_51(v20);
    v25 = *(v24 + 32);
    OUTLINED_FUNCTION_33_13();
    v26();
  }

  OUTLINED_FUNCTION_242_2(0x204C525520656854, 29545, &v31);
  outlined destroy of IntentApplication?(&v31, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  LLMFormatter.sanitized.getter();
  OUTLINED_FUNCTION_89_10();
  v27 = OUTLINED_FUNCTION_88();
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

Swift::String __swiftcall ShippingOrder.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36_2();
  *&v66 = 0;
  *(&v66 + 1) = 0xE000000000000000;
  MEMORY[0x25F89F5D0](125);
  v69 = v66;
  MEMORY[0x25F89F6C0](0xD000000000000017, 0x800000025DBF42D0);
  v6 = Appointment.eventType.getter();
  if (v7)
  {
    v8 = MEMORY[0x277D83838];
  }

  else
  {
    v6 = OUTLINED_FUNCTION_22_16();
    *&v67 = 0;
  }

  OUTLINED_FUNCTION_182_5(v6, v7, v8);
  v9 = OUTLINED_FUNCTION_125_6();
  OUTLINED_FUNCTION_218_3(v9);
  OUTLINED_FUNCTION_149_6();
  OUTLINED_FUNCTION_144_6(v10, v11);
  outlined destroy of IntentApplication?(&v66, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v12 = ShippingOrder.merchantName.getter();
  if (v13)
  {
    v14 = MEMORY[0x277D83838];
  }

  else
  {
    v12 = OUTLINED_FUNCTION_22_16();
    *&v67 = 0;
  }

  OUTLINED_FUNCTION_182_5(v12, v13, v14);
  OUTLINED_FUNCTION_144_6(0x6E61686372656D20, 0xEE00656D616E2074);
  outlined destroy of IntentApplication?(&v66, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](10, 0xE100000000000000);
  v15 = ShippingOrder.orderCost.getter();
  if (v16)
  {
    v15 = OUTLINED_FUNCTION_22_16();
    *(&v66 + 1) = 0;
    *&v67 = 0;
  }

  else
  {
    v17 = MEMORY[0x277D83A60];
    v18 = MEMORY[0x277D839F8];
  }

  *&v66 = v15;
  *(&v67 + 1) = v18;
  v68 = v17;
  OUTLINED_FUNCTION_144_6(0x7420726564726F20, 0xEC0000006C61746FLL);
  outlined destroy of IntentApplication?(&v66, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  MEMORY[0x25F89F6C0](10, 0xE100000000000000);
  v19 = TicketedShow.startLocationName.getter();
  if (v20)
  {
    v21 = MEMORY[0x277D83838];
  }

  else
  {
    v19 = OUTLINED_FUNCTION_22_16();
    *&v67 = 0;
  }

  OUTLINED_FUNCTION_182_5(v19, v20, v21);
  OUTLINED_FUNCTION_104_8();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v22, v23, v24, 0);
  outlined destroy of IntentApplication?(&v66, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v25 = ShippingOrder.carrierName.getter();
  if (v26)
  {
    v27 = MEMORY[0x277D83838];
  }

  else
  {
    v25 = OUTLINED_FUNCTION_22_16();
    *&v67 = 0;
  }

  OUTLINED_FUNCTION_182_5(v25, v26, v27);
  OUTLINED_FUNCTION_242_2(0x7265697272616320, 8250, &v66);
  outlined destroy of IntentApplication?(&v66, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v28 = ShippingOrder.trackingNumber.getter();
  if (v29)
  {
    v30 = MEMORY[0x277D83838];
  }

  else
  {
    v28 = OUTLINED_FUNCTION_22_16();
    *&v67 = 0;
  }

  OUTLINED_FUNCTION_182_5(v28, v29, v30);
  OUTLINED_FUNCTION_98_2();
  v31 = OUTLINED_FUNCTION_153_2();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v31, v32, v33, 0);
  outlined destroy of IntentApplication?(&v66, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  ShippingOrder.estimatedDeliveryEndDate.getter();
  v34 = type metadata accessor for Date();
  v35 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v35, v36, v34);
  if (v37)
  {
    outlined destroy of IntentApplication?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
  }

  else
  {
    *(&v67 + 1) = v34;
    v68 = _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    __swift_allocate_boxed_opaque_existential_1Tm(&v66);
    OUTLINED_FUNCTION_51(v34);
    (*(v38 + 32))();
  }

  OUTLINED_FUNCTION_104_8();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v39, v40, v41, 0);
  outlined destroy of IntentApplication?(&v66, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v42 = ShippingOrder.recipientNames.getter();
  v43 = v42;
  if (v42)
  {
    v44 = OUTLINED_FUNCTION_121_0();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
    OUTLINED_FUNCTION_56_10();
    v42 = lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(v47, &_sSaySSGMd, &_sSaySSGMR);
  }

  else
  {
    v46 = 0;
    *(&v66 + 1) = 0;
    *&v67 = 0;
  }

  *&v66 = v43;
  *(&v67 + 1) = v46;
  v68 = v42;
  OUTLINED_FUNCTION_98_2();
  v48 = OUTLINED_FUNCTION_153_2();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v48, v49, v50, 0);
  outlined destroy of IntentApplication?(&v66, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v51 = ShippingOrder.recipientLocationName.getter();
  if (v52)
  {
    v53 = MEMORY[0x277D83838];
  }

  else
  {
    v51 = OUTLINED_FUNCTION_22_16();
    *&v67 = 0;
  }

  OUTLINED_FUNCTION_182_5(v51, v52, v53);
  OUTLINED_FUNCTION_104_8();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v54, v55, v56, 0);
  outlined destroy of IntentApplication?(&v66, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  v57 = ShippingOrder.recipientAddress.getter();
  if (v58)
  {
    v59 = MEMORY[0x277D83838];
  }

  else
  {
    v57 = OUTLINED_FUNCTION_22_16();
    *&v67 = 0;
  }

  OUTLINED_FUNCTION_182_5(v57, v58, v59);
  OUTLINED_FUNCTION_104_8();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v60, v61, v62, 0);
  outlined destroy of IntentApplication?(&v66, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  LLMFormatter.sanitized.getter();
  OUTLINED_FUNCTION_89_10();
  v63 = OUTLINED_FUNCTION_88();
  result._object = v64;
  result._countAndFlagsBits = v63;
  return result;
}

Swift::String __swiftcall FileDocument.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_76_10();
  MEMORY[0x25F89F5D0](85);
  OUTLINED_FUNCTION_175_4();
  OUTLINED_FUNCTION_221_3();
  v1 = FileDocument.item.getter();
  v2 = [v1 attributeSet];

  outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v2);
  if (!v3)
  {
    OUTLINED_FUNCTION_22_16();
    v35 = 0;
  }

  OUTLINED_FUNCTION_127_9();
  outlined destroy of IntentApplication?(&v33, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_98_2();
  v4 = OUTLINED_FUNCTION_153_2();
  MEMORY[0x25F89F6C0](v4);
  v5 = FileDocument.item.getter();
  v6 = [v5 attributeSet];

  outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.filename.getter(v6, &selRef_filename);
  if (!v7)
  {
    OUTLINED_FUNCTION_22_16();
    v35 = 0;
  }

  OUTLINED_FUNCTION_127_9();
  outlined destroy of IntentApplication?(&v33, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_247_3();
  v8 = FileDocument.item.getter();
  v9 = [v8 attributeSet];

  outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.filename.getter(v9, &selRef_kind);
  if (!v10)
  {
    OUTLINED_FUNCTION_22_16();
    v35 = 0;
  }

  OUTLINED_FUNCTION_135_7();
  OUTLINED_FUNCTION_174_3();
  LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v11, v12, v13, 0);
  outlined destroy of IntentApplication?(&v33, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_128_5();
  v14 = FileDocument.item.getter();
  v15 = [v14 attributeSet];

  v16 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.keywords.getter(v15);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (*(v17 + 16))
  {
    v18 = MEMORY[0x277D837D0];
    v19 = MEMORY[0x277D83838];
    v33 = 0x6261207369207449;
    v34 = 0xEB0000000074756FLL;
    OUTLINED_FUNCTION_48_9();
    MEMORY[0x25F89F6C0](v33, v34);

    v33 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_8_25();
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(v20, v21, &_sSaySSGMR);
    v22 = BidirectionalCollection<>.joined(separator:)();
    v36 = v18;
    v37 = v19;
    v33 = v22;
    v34 = v23;
    OUTLINED_FUNCTION_210_2();
    outlined destroy of IntentApplication?(&v33, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    OUTLINED_FUNCTION_177_5();
  }

  OUTLINED_FUNCTION_128_5();
  v24 = FileDocument.item.getter();
  v25 = [v24 attributeSet];

  outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.filename.getter(v25, &selRef_textContent);
  if (!v26)
  {
    OUTLINED_FUNCTION_22_16();
    v35 = 0;
  }

  OUTLINED_FUNCTION_135_7();
  OUTLINED_FUNCTION_174_3();
  OUTLINED_FUNCTION_179_5(v27, v28, v29);
  outlined destroy of IntentApplication?(&v33, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_222_2();
  OUTLINED_FUNCTION_89_10();
  v30 = OUTLINED_FUNCTION_88();
  result._object = v31;
  result._countAndFlagsBits = v30;
  return result;
}

Swift::String __swiftcall Contact.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  MEMORY[0x25F89F5D0](91, locale.value._object);
  OUTLINED_FUNCTION_175_4();
  MEMORY[0x25F89F6C0](0xD000000000000019, 0x800000025DBF43F0);
  Contact.name.getter();
  if (!v1)
  {
    OUTLINED_FUNCTION_22_16();
    v18 = 0;
  }

  OUTLINED_FUNCTION_127_9();
  outlined destroy of IntentApplication?(v17, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_247_3();
  v2 = MEMORY[0x25F89D1F0]();
  v3._countAndFlagsBits = OUTLINED_FUNCTION_126_8(0x20656E6F6850);
  v19.value._rawValue = v2;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v3, v19);

  OUTLINED_FUNCTION_128_5();
  v4 = MEMORY[0x25F89D200]();
  v5._countAndFlagsBits = OUTLINED_FUNCTION_153_2();
  v20.value._rawValue = v4;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v5, v20);

  OUTLINED_FUNCTION_128_5();
  v6 = MEMORY[0x25F89D210]();
  v7._countAndFlagsBits = 0xD000000000000011;
  v7._object = 0x800000025DBF4430;
  v21.value._rawValue = v6;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v7, v21);

  OUTLINED_FUNCTION_128_5();
  v8 = Contact.dates.getter();
  v9._countAndFlagsBits = 0x3A7365746144;
  v9._object = 0xE600000000000000;
  v22.value._rawValue = v8;
  LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(v9, v22);

  OUTLINED_FUNCTION_128_5();
  Contact.birthday.getter();
  if (!v10)
  {
    OUTLINED_FUNCTION_22_16();
    v18 = 0;
  }

  OUTLINED_FUNCTION_135_7();
  OUTLINED_FUNCTION_174_3();
  OUTLINED_FUNCTION_120_6(v11, v12, v13);
  outlined destroy of IntentApplication?(v17, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  OUTLINED_FUNCTION_222_2();
  OUTLINED_FUNCTION_89_10();
  v14 = OUTLINED_FUNCTION_88();
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

Swift::String __swiftcall AppEntityItem.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];

  MEMORY[0x25F89F5D0](61);
  OUTLINED_FUNCTION_175_4();
  OUTLINED_FUNCTION_98_2();
  MEMORY[0x25F89F6C0](0xD00000000000001CLL);
  v6 = OUTLINED_FUNCTION_210_2();
  OUTLINED_FUNCTION_163_4(v6);
  OUTLINED_FUNCTION_273_1(0x646E6120u);
  OUTLINED_FUNCTION_149_6();
  MEMORY[0x25F89F6C0]();
  v7 = OUTLINED_FUNCTION_210_2();
  OUTLINED_FUNCTION_163_4(v7);
  OUTLINED_FUNCTION_222_2();
  OUTLINED_FUNCTION_89_10();
  v8 = OUTLINED_FUNCTION_88();
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::String __swiftcall Answer.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_76_10();
  MEMORY[0x25F89F5D0](47);
  OUTLINED_FUNCTION_175_4();
  MEMORY[0x25F89F6C0](0x6577736E61206E41, 0xEB00000000203A72);
  v9 = v1[2];
  v10 = v1[3];

  v2 = OUTLINED_FUNCTION_210_2();
  OUTLINED_FUNCTION_163_4(v2);
  OUTLINED_FUNCTION_98_2();
  v3 = OUTLINED_FUNCTION_153_2();
  MEMORY[0x25F89F6C0](v3);
  v4 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type [String : String] and conformance [A : B], &_sSDyS2SGMd, &_sSDyS2SGMR);

  v5 = OUTLINED_FUNCTION_210_2();
  OUTLINED_FUNCTION_163_4(v5);
  OUTLINED_FUNCTION_222_2();
  OUTLINED_FUNCTION_89_10();
  v6 = OUTLINED_FUNCTION_88();
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::String __swiftcall OnScreen.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  v1 = MEMORY[0x282197AE8](locale.value._countAndFlagsBits, locale.value._object);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall GenericSpotlightItem.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  OUTLINED_FUNCTION_76_10();
  MEMORY[0x25F89F5D0](75);
  OUTLINED_FUNCTION_175_4();
  OUTLINED_FUNCTION_98_2();
  MEMORY[0x25F89F6C0](0xD000000000000028);
  GenericSpotlightItem.bundleId.getter();
  v1 = OUTLINED_FUNCTION_210_2();
  OUTLINED_FUNCTION_163_4(v1);
  MEMORY[0x25F89F6C0](0x696E7520646E6120, 0xEF20444920657571);
  GenericSpotlightItem.id.getter();
  v2 = OUTLINED_FUNCTION_210_2();
  OUTLINED_FUNCTION_163_4(v2);
  OUTLINED_FUNCTION_222_2();
  OUTLINED_FUNCTION_89_10();
  v3 = OUTLINED_FUNCTION_88();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.keywords.getter(void *a1)
{
  v2 = [a1 keywords];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.filename.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_88();
}

uint64_t specialized closure #1 in LLMFormatter.StringInterpolation.appendInterpolation<A>(_:dates:locale:formatStyle:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized closure #1 in LLMFormatter.StringInterpolation.appendInterpolation<A>(_:dates:locale:formatStyle:)();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in LLMFormatter.StringInterpolation.appendInterpolation<A>(_:dates:locale:formatStyle:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return specialized closure #1 in LLMFormatter.StringInterpolation.appendInterpolation<A>(_:dates:locale:formatStyle:)(a1);
}

uint64_t _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of ResponseOverrideMatcherProtocol(&v12, v10 + 40 * a1 + 32);
}

uint64_t outlined init with take of EditorialDateFormatter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialDateFormatter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v5 - 144) = a1;
  *(v5 - 136) = a2;
  *(v5 - 120) = v3;
  *(v5 - 112) = a3;
  return v4;
}

uint64_t OUTLINED_FUNCTION_4_29@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v4 - 144) = a1;
  *(v4 - 136) = a2;
  *(v4 - 120) = v3;
  *(v4 - 112) = a3;
  return 0x2065746164707520;
}

uint64_t OUTLINED_FUNCTION_7_24()
{
  result = 0;
  *(v0 - 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_22@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v4 - 144) = result;
  *(v4 - 136) = a2;
  *(v4 - 120) = v3;
  *(v4 - 112) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v4 - 144) = a1;
  *(v4 - 136) = a2;
  *(v4 - 120) = v3;
  *(v4 - 112) = a3;
  return 0x20656372756F5320;
}

uint64_t OUTLINED_FUNCTION_17_22@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v4 - 144) = a1;
  *(v4 - 136) = a2;
  *(v4 - 120) = v3;
  *(v4 - 112) = a3;
  return 0x3A73757461747320;
}

uint64_t OUTLINED_FUNCTION_19_17@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 144) = v2;
  *(v4 - 136) = v3;
  *(v4 - 120) = v1;
  *(v4 - 112) = a1;

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0, 0xE000000000000000, v4 - 144, 0);
}

uint64_t OUTLINED_FUNCTION_20_13()
{
  result = 0;
  *(v0 - 120) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_18@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = a1;

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(0, 0xE000000000000000, v2 - 136, 0);
}

uint64_t OUTLINED_FUNCTION_27_14@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_19()
{
  v1 = *(v0 - 328);
  result = *(v0 - 288);
  v3 = *(v0 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v4 - 144) = a1;
  *(v4 - 136) = a2;
  *(v4 - 120) = v3;
  *(v4 - 112) = a3;
  return 1635021600;
}

uint64_t OUTLINED_FUNCTION_54_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v4 - 144) = a1;
  *(v4 - 136) = a2;
  *(v4 - 120) = v3;
  *(v4 - 112) = a3;
  return 29472;
}

void OUTLINED_FUNCTION_55_11()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_66_11(uint64_t a1)
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(a1, 0xE800000000000000, v1 - 144, 0);
}

double OUTLINED_FUNCTION_78_12()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_12@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v4 - 144) = result;
  *(v4 - 136) = a2;
  *(v4 - 120) = v3;
  *(v4 - 112) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_10()
{
}

void OUTLINED_FUNCTION_92_7()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_112_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(a1, 0xE800000000000000, a3, 0);
}

void OUTLINED_FUNCTION_113_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(a1, a2, 1, 0, 0, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void OUTLINED_FUNCTION_115_7()
{

  JUMPOUT(0x25F89F6C0);
}

void OUTLINED_FUNCTION_119_4()
{
  v1 = *(v0 - 136);
  *(v0 - 104) = *(v0 - 144);
  *(v0 - 96) = v1;
}

uint64_t OUTLINED_FUNCTION_120_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(a1, 0xE90000000000003ALL, a3, 0);
}

uint64_t OUTLINED_FUNCTION_121_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v4 - 136) = result;
  *(v4 - 128) = a2;
  *(v4 - 112) = v3;
  *(v4 - 104) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_127_9()
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:)();
}

void OUTLINED_FUNCTION_128_5()
{

  JUMPOUT(0x25F89F6C0);
}

void OUTLINED_FUNCTION_129_8(char a1@<W8>)
{
  *v1 = a1;
  v1[1] = 1;
  v3 = &v1[*(v2 + 28)];
}

void OUTLINED_FUNCTION_143_6()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_144_6(uint64_t a1, uint64_t a2)
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(a1, a2, v2 - 112, 0);
}

uint64_t OUTLINED_FUNCTION_147_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(1931965513, 0xE400000000000000, a3, 0);
}

uint64_t OUTLINED_FUNCTION_151_2()
{
  v1 = *(v0 - 328);
  result = *(v0 - 288);
  v3 = *(v0 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_161_2()
{
  v1 = *(v0 - 336);
  result = *(v0 - 288);
  v3 = *(v0 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_163_4(uint64_t a1, ...)
{
  va_start(va, a1);

  return outlined destroy of IntentApplication?(va, v1, v2);
}

uint64_t OUTLINED_FUNCTION_166_4()
{
  v2 = *(v0 + 32);
  result = *(v1 - 208);
  v4 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_169_5()
{
  result = *(v0 - 264) + *(*(v0 - 296) + 24);
  v2 = *(v0 - 232);
  return result;
}

void OUTLINED_FUNCTION_177_5()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_178_5()
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:)();
}

uint64_t OUTLINED_FUNCTION_179_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(a1, 0xE800000000000000, a3, 0);
}

uint64_t OUTLINED_FUNCTION_180_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(a1, a2, a3, 0);
}

uint64_t OUTLINED_FUNCTION_182_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v4 - 112) = result;
  *(v4 - 104) = a2;
  *(v4 - 88) = v3;
  *(v4 - 80) = a3;
  return result;
}

void OUTLINED_FUNCTION_185_3()
{
  *(v4 - 328) = v3;
  *(v4 - 224) = v0;
  *(v4 - 320) = v2;
  *(v4 - 280) = v1;
}

void OUTLINED_FUNCTION_192_5()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  LLMFormatter.sanitized.getter();
}

void OUTLINED_FUNCTION_193_4()
{

  JUMPOUT(0x25F89F6C0);
}

void OUTLINED_FUNCTION_194_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_195_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 312);

  return outlined init with copy of SpotlightRankingItem?(v4, v7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_196_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(980705568, 0xE400000000000000, a3, 0);
}

uint64_t OUTLINED_FUNCTION_197_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(v4, a2, a3, 0);
}

void OUTLINED_FUNCTION_201_4()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);

  LLMFormatter.StringInterpolation.appendInterpolation(date:locale:timeIsUnknown:timeZone:)();
}

uint64_t OUTLINED_FUNCTION_210_2()
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:)();
}

void OUTLINED_FUNCTION_219_3()
{
  v4 = (v1 + *(v3 + 28));
  *v4 = v0;
  v4[1] = v2;
}

void OUTLINED_FUNCTION_220_3()
{

  JUMPOUT(0x25F89F6C0);
}

void OUTLINED_FUNCTION_221_3()
{

  JUMPOUT(0x25F89F6C0);
}