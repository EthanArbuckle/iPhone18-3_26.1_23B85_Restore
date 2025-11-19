uint64_t OUTLINED_FUNCTION_188_1()
{

  return SFCard.data.getter();
}

uint64_t OUTLINED_FUNCTION_189_1()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_198_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_199_1()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_200_0()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_201_1(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of Date?(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_202_1(uint64_t a1)
{
  v2 = *(a1 + 56);

  return type metadata accessor for SearchResult(0);
}

__n128 OUTLINED_FUNCTION_210@<Q0>(uint64_t a1@<X8>)
{
  *(v1 + 112) = *(a1 - 256);
  result = *(v2 - 240);
  *(v1 + 120) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_218_0(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of Date?(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_219_0()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_220_0(__n128 a1)
{
  *(v1 + 72) = a1;

  return type metadata accessor for EventEntity();
}

uint64_t OUTLINED_FUNCTION_221_0(uint64_t a1)
{

  return outlined destroy of EagerResolutionService?(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_223_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_224_0()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_225_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_227_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_228_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_229_0()
{
  v2 = *(v0 - 312);

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_230()
{
  v2 = *(v0 - 320);

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_231()
{
  v2 = *(v0 - 304);

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_233_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_234_0(uint64_t result, uint64_t a2)
{
  *(v2 - 584) = result;
  *(v2 - 592) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_242_0(uint64_t result, uint64_t a2)
{
  *(v2 - 672) = result;
  *(v2 - 680) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_256_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_257_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_258_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_259_0()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_260_0()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_261_0()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_262()
{

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_263(uint64_t a1)
{

  return outlined destroy of EagerResolutionService?(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_264()
{

  return EntityProperty<>.init(title:)();
}

uint64_t OUTLINED_FUNCTION_265(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of Date?(a1, a2, v2, v3);
}

void EventEntity.representedEntity.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for EventEntity();
  v6 = OUTLINED_FUNCTION_114(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v9 = *v0;
  EntityProperty.wrappedValue.getter();
  switch(v48)
  {
    case 1:
      v34 = v2[4];
      EntityProperty.wrappedValue.getter();
      v35 = OUTLINED_FUNCTION_176_2();
      memcpy(v35, v36, 0x80uLL);
      OUTLINED_FUNCTION_101_4(v47);
      if (v13)
      {
        goto LABEL_26;
      }

      *(v4 + 24) = &type metadata for RestaurantReservationEntity;
      *(v4 + 32) = lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
      *(v4 + 40) = lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
      *(v4 + 48) = &protocol witness table for RestaurantReservationEntity;
      goto LABEL_17;
    case 2:
      v24 = v2[3];
      EntityProperty.wrappedValue.getter();
      v25 = OUTLINED_FUNCTION_176_2();
      memcpy(v25, v26, 0x80uLL);
      OUTLINED_FUNCTION_101_4(v47);
      if (v13)
      {
        goto LABEL_26;
      }

      *(v4 + 24) = &type metadata for HotelReservationEntity;
      *(v4 + 32) = lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
      *(v4 + 40) = lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
      *(v4 + 48) = &protocol witness table for HotelReservationEntity;
LABEL_17:
      v37 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_135_3(v37);
      v17 = 128;
      goto LABEL_23;
    case 3:
      v27 = v2[6];
      EntityProperty.wrappedValue.getter();
      v28 = OUTLINED_FUNCTION_176_2();
      memcpy(v28, v29, 0x98uLL);
      OUTLINED_FUNCTION_101_4(v47);
      if (v13)
      {
        goto LABEL_26;
      }

      *(v4 + 24) = &type metadata for VehicleReservationEntity;
      *(v4 + 32) = lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
      *(v4 + 40) = lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
      *(v4 + 48) = &protocol witness table for VehicleReservationEntity;
      v30 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_135_3(v30);
      v17 = 152;
      goto LABEL_23;
    case 4:
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logging.search);
      outlined init with copy of EventEntity(v2, v1, type metadata accessor for EventEntity);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v47[0] = v22;
        *v21 = 136315138;
        v23 = *v1;
        EntityProperty.wrappedValue.getter();
        switch(v46)
        {
          case 1:
          case 2:
          case 4:
          case 6:
          case 7:
            break;
          default:
            OUTLINED_FUNCTION_120_3();
            break;
        }

        outlined destroy of EventEntity();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v21 + 4) = v45;
        _os_log_impl(&dword_25D85C000, v19, v20, "Unexpected entity type! %s)", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        outlined destroy of EventEntity();
      }

      goto LABEL_26;
    case 5:
      v38 = v2[5];
      EntityProperty.wrappedValue.getter();
      v39 = v47[0];
      if (!v47[0])
      {
        goto LABEL_26;
      }

      *(v4 + 24) = &type metadata for TicketedTransportationEntity;
      *(v4 + 32) = lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
      *(v4 + 40) = lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
      *(v4 + 48) = &protocol witness table for TicketedTransportationEntity;
      v40 = swift_allocObject();
      *v4 = v40;
      *(v40 + 16) = v39;
      OUTLINED_FUNCTION_248_0();
      goto LABEL_23;
    case 6:
      v41 = v2[7];
      EntityProperty.wrappedValue.getter();
      v42 = OUTLINED_FUNCTION_176_2();
      memcpy(v42, v43, 0x88uLL);
      OUTLINED_FUNCTION_101_4(v47);
      if (v13)
      {
        goto LABEL_26;
      }

      *(v4 + 24) = &type metadata for TicketedShowEntity;
      *(v4 + 32) = lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
      *(v4 + 40) = lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
      *(v4 + 48) = &protocol witness table for TicketedShowEntity;
      goto LABEL_22;
    case 7:
      v31 = v2[2];
      EntityProperty.wrappedValue.getter();
      v32 = OUTLINED_FUNCTION_176_2();
      memcpy(v32, v33, 0x88uLL);
      OUTLINED_FUNCTION_101_4(v47);
      if (v13)
      {
        goto LABEL_26;
      }

      *(v4 + 24) = &type metadata for GenericEventEntity;
      *(v4 + 32) = lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
      *(v4 + 40) = lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
      *(v4 + 48) = &protocol witness table for GenericEventEntity;
LABEL_22:
      v44 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_135_3(v44);
      v17 = 136;
      goto LABEL_23;
    default:
      v10 = v2[1];
      EntityProperty.wrappedValue.getter();
      v11 = OUTLINED_FUNCTION_176_2();
      memcpy(v11, v12, 0xD8uLL);
      OUTLINED_FUNCTION_101_4(v47);
      if (v13)
      {
LABEL_26:
        *(v4 + 48) = 0;
        *(v4 + 16) = 0u;
        *(v4 + 32) = 0u;
        *v4 = 0u;
      }

      else
      {
        *(v4 + 24) = &type metadata for FlightReservationEntity;
        *(v4 + 32) = lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
        *(v4 + 40) = lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
        *(v4 + 48) = &protocol witness table for FlightReservationEntity;
        v14 = swift_allocObject();
        v15 = OUTLINED_FUNCTION_135_3(v14);
        v17 = 216;
LABEL_23:
        memcpy(v15, v16, v17);
      }

      OUTLINED_FUNCTION_148();
      return;
  }
}

uint64_t EventEntity.subType.setter(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return EntityProperty.wrappedValue.setter();
}

uint64_t EventEntity.flightReservation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_239_0(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14);
  memcpy(v9, v10, 0xD8uLL);
  v11 = *(v8 + 8);
  return EntityProperty.wrappedValue.setter();
}

uint64_t EventEntity.hotelReservation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_238_1(a1, a2, a3, a4, a5, a6, a7, a8, v13);
  memcpy(v9, v10, 0x80uLL);
  v11 = *(v8 + 24);
  return EntityProperty.wrappedValue.setter();
}

uint64_t EventEntity.restaurantReservation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_238_1(a1, a2, a3, a4, a5, a6, a7, a8, v13);
  memcpy(v9, v10, 0x80uLL);
  v11 = *(v8 + 32);
  return EntityProperty.wrappedValue.setter();
}

uint64_t EventEntity.vehicleReservation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_239_0(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14);
  memcpy(v9, v10, 0x98uLL);
  v11 = *(v8 + 48);
  return EntityProperty.wrappedValue.setter();
}

uint64_t EventEntity.ticketedTransportation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_238_1(a1, a2, a3, a4, a5, a6, a7, a8, v13);
  memcpy(v9, v10, 0x70uLL);
  v11 = *(v8 + 40);
  return EntityProperty.wrappedValue.setter();
}

uint64_t EventEntity.ticketedShow.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_239_0(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14);
  memcpy(v9, v10, 0x88uLL);
  v11 = *(v8 + 56);
  return EntityProperty.wrappedValue.setter();
}

uint64_t EventEntity.genericEvent.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_239_0(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14);
  memcpy(v9, v10, 0x88uLL);
  v11 = *(v8 + 16);
  return EntityProperty.wrappedValue.setter();
}

uint64_t EventEntity.shippingOrder.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_238_1(a1, a2, a3, a4, a5, a6, a7, a8, v13);
  memcpy(v9, v10, 0xF0uLL);
  v11 = *(v8 + 64);
  return EntityProperty.wrappedValue.setter();
}

unint64_t EventSubType.rawValue.getter()
{
  result = 0x676E697070696873;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = OUTLINED_FUNCTION_153_2();
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x646574656B636974;
      break;
    case 7:
      result = 0x45636972656E6567;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t EventEntity.sourceResult.getter()
{
  OUTLINED_FUNCTION_113();
  v2 = type metadata accessor for EventEntity();
  return outlined init with copy of ResourceBundle?(v1 + *(v2 + 56), v0, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
}

void FlightReservationEntity.init(arrivalAirportCode:arrivalAirportName:arrivalDateTime:arrivalGate:arrivalTerminal:boardingDateTime:bookingProvider:carrier:checkInUrl:confirmationNumber:departureAirportCode:departureAirportName:departureDateTime:departureGate:departureTerminal:designator:flightNumber:passengerNames:seatNumbers:status:cost:totalDuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void (*a41)(uint64_t), uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, double a56, unsigned __int8 a57)
{
  OUTLINED_FUNCTION_155();
  a27 = v49;
  a28 = v50;
  v204 = v51;
  v202 = v52;
  v201 = v53;
  v255 = v54;
  v198 = v55;
  v197 = v56;
  v196 = v57;
  v195 = v58;
  v190 = v59;
  HIDWORD(v224) = a57;
  v229 = a55;
  v223[2] = a54;
  v223[1] = a53;
  v223[0] = a52;
  v222 = a51;
  v221 = a50;
  v220 = a49;
  v217 = a48;
  v216 = a47;
  v215 = a46;
  v214 = a45;
  v213 = a44;
  v212 = a43;
  v194 = a42;
  v230 = a41;
  v211 = a40;
  v210 = a39;
  v209 = a38;
  OUTLINED_FUNCTION_234_1(a37);
  v208 = a36;
  v206 = a34;
  v205 = a33;
  v203 = a32;
  OUTLINED_FUNCTION_187_2(a31);
  v199 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents20IntentCurrencyAmountVSgMd, &_s10AppIntents20IntentCurrencyAmountVSgMR);
  v67 = OUTLINED_FUNCTION_114(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v73 = OUTLINED_FUNCTION_114(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v77);
  v252 = type metadata accessor for Calendar();
  v78 = OUTLINED_FUNCTION_14(v252);
  v228 = v79;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_36();
  v253 = v83 - v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v85 = OUTLINED_FUNCTION_114(v84);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v91 = OUTLINED_FUNCTION_114(v90);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v95);
  v251 = type metadata accessor for DateComponents();
  v96 = OUTLINED_FUNCTION_14(v251);
  v256 = v97;
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_39_0();
  v254 = v100;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v101);
  v103 = &v189 - v102;
  v104 = type metadata accessor for LocalizedStringResource();
  v105 = OUTLINED_FUNCTION_114(v104);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_141_2();
  LocalizedStringResource.init(stringLiteral:)();
  v226 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_118_2();
  LocalizedStringResource.init(stringLiteral:)();
  v249 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  v248 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  v247 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  v246 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  v245 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  v244 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_42_7();
  LocalizedStringResource.init(stringLiteral:)();
  v243 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  v242 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  v108 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  v109 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_66_3();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  v241 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_81_6();
  LocalizedStringResource.init(stringLiteral:)();
  v240 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  v110 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  v239 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_23_9();
  LocalizedStringResource.init(stringLiteral:)();
  v238 = EntityProperty<>.init(title:)();
  v111 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_24_10(v111);
  LocalizedStringResource.init(stringLiteral:)();
  v237 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_66_3();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  v236 = OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_228_1();
  LocalizedStringResource.init(stringLiteral:)();
  v112 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_256_1(v112);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  v235[0] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_150_2();
  LocalizedStringResource.init(stringLiteral:)();
  v113 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_159_1(v113);
  OUTLINED_FUNCTION_97_3(0x206C61746F54);
  LocalizedStringResource.init(stringLiteral:)();
  v200 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA20IntentCurrencyAmountVSgGMd, &_s10AppIntents14EntityPropertyCyAA20IntentCurrencyAmountVSgGMR);
  OUTLINED_FUNCTION_88_4();
  v233 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_66_3();
  LocalizedStringResource.init(stringLiteral:)();
  v192 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v191 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_18_10(&v224);
  v196 = v108;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&v226);
  v198 = v109;
  EntityProperty.wrappedValue.setter();
  v114 = v256;
  v115 = *(v256 + 16);
  v116 = v251;
  v115(v103, v255, v251);
  v117 = OUTLINED_FUNCTION_107();
  v250 = v103;
  (v115)(v117);
  v197 = v110;
  EntityProperty.wrappedValue.setter();
  v118 = *(v114 + 8);
  v256 = v114 + 8;
  v119 = OUTLINED_FUNCTION_21_7();
  v118(v119);
  OUTLINED_FUNCTION_18_10(&v230);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&v227);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_251_1(&v257);
  outlined init with copy of ResourceBundle?(v120, v121, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of ResourceBundle?(v109, v225, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v109, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_18_10(&v232);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(v235);
  EntityProperty.wrappedValue.setter();
  v122 = v252;
  outlined init with copy of ResourceBundle?(v231, v193, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_251_1(v223);
  outlined init with copy of ResourceBundle?(v123, v124, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  EntityProperty.wrappedValue.setter();
  v125 = OUTLINED_FUNCTION_45_0();
  v126 = v194;
  outlined destroy of IntentApplication?(v125, v127, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_18_10(&v237);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&v239);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&a18);
  EntityProperty.wrappedValue.setter();
  v128 = v250;
  v115(v250, v126, v116);
  v115(v254, v128, v116);
  EntityProperty.wrappedValue.setter();
  v129 = OUTLINED_FUNCTION_52_1();
  v230 = v118;
  v118(v129);
  OUTLINED_FUNCTION_18_10(&v242);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&v244);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&v246);
  EntityProperty.wrappedValue.setter();
  v130 = v207;
  DateComponents.calendar.getter();
  v131 = v126;
  if (__swift_getEnumTagSinglePayload(v130, 1, v122) == 1)
  {
    static Calendar.current.getter();
    OUTLINED_FUNCTION_166(v130, 1, v122);
    if (!v132)
    {
      outlined destroy of IntentApplication?(v130, &_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
    }
  }

  else
  {
    (*(v228 + 32))(v253, v130, v122);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
  v133 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_14(v133);
  v135 = v134;
  v137 = *(v136 + 72);
  v138 = (*(v134 + 80) + 32) & ~*(v134 + 80);
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_25DBC8930;
  v140 = v139 + v138;
  v141 = *(v135 + 104);
  v141(v140, *MEMORY[0x277CC9968], v133);
  v141(v140 + v137, *MEMORY[0x277CC9980], v133);
  v141(v140 + 2 * v137, *MEMORY[0x277CC99A0], v133);
  v141(v140 + 3 * v137, *MEMORY[0x277CC99A8], v133);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5();
  v142 = v250;
  Calendar.dateComponents(_:from:to:)();

  v143 = v251;
  v115(v254, v142, v251);
  EntityProperty.wrappedValue.setter();
  v144 = OUTLINED_FUNCTION_64_0();
  v230(v144);
  OUTLINED_FUNCTION_18_10(&v250);
  v145 = v226;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_89_5(&v251);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_89_5(&v252);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&v254);
  EntityProperty.wrappedValue.setter();
  v146 = v229;
  v147 = v218;
  OUTLINED_FUNCTION_140_1(v229, v218);
  OUTLINED_FUNCTION_140_1(v147, v219);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  outlined destroy of IntentApplication?(v148, v149, v150);
  if ((v224 & 0x100000000) != 0)
  {
    outlined destroy of IntentApplication?(v146, &_s10AppIntents20IntentCurrencyAmountVSgMd, &_s10AppIntents20IntentCurrencyAmountVSgMR);
    v151 = v131;
    v152 = v230;
    (v230)(v151, v143);
    outlined destroy of IntentApplication?(v231, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of IntentApplication?(v232, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v152(v255, v143);
    v153 = v228;
    v154 = v200;
LABEL_11:
    v172 = *(v153 + 8);
    v173 = OUTLINED_FUNCTION_179_0();
    v174(v173);
    v175 = v190;
    v177 = v248;
    v176 = v249;
    *v190 = v145;
    v175[1] = v176;
    v178 = v246;
    v179 = v247;
    v175[2] = v177;
    v175[3] = v179;
    v175[4] = v178;
    v180 = v244;
    v175[5] = v245;
    v175[6] = v180;
    v181 = v242;
    v175[7] = v243;
    v175[8] = v181;
    v182 = v198;
    v175[9] = v196;
    v175[10] = v182;
    v183 = v240;
    v175[11] = v241;
    v175[12] = v183;
    v184 = v238;
    v185 = v239;
    v175[13] = v197;
    v175[14] = v185;
    v175[15] = v184;
    v186 = v236;
    v175[16] = v237;
    v175[17] = v186;
    v187 = v235[0];
    v175[18] = v235[1];
    v175[19] = v187;
    v175[20] = v234;
    v175[21] = v154;
    v188 = v192;
    v175[22] = v233;
    v175[23] = v188;
    v175[24] = v191;
    *(v175 + 25) = xmmword_25DBC9410;
    OUTLINED_FUNCTION_148();
    return;
  }

  v155 = a56;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v252);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v159, v160, v161, v162);
  v154 = v200;
  if ((~*&v155 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v155 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v155 < 9.22337204e18)
  {
    v163 = v227;
    OUTLINED_FUNCTION_52_1();
    OUTLINED_FUNCTION_43_7();
    __swift_storeEnumTagSinglePayload(v163, 0, 1, v143);
    OUTLINED_FUNCTION_140_1(v163, v225);
    EntityProperty.wrappedValue.setter();
    outlined destroy of IntentApplication?(v229, &_s10AppIntents20IntentCurrencyAmountVSgMd, &_s10AppIntents20IntentCurrencyAmountVSgMR);
    v164 = v131;
    v165 = v230;
    (v230)(v164, v143);
    outlined destroy of IntentApplication?(v231, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_86_4();
    outlined destroy of IntentApplication?(v166, v167, v168);
    v165(v255, v143);
    v145 = v226;
    OUTLINED_FUNCTION_86_4();
    outlined destroy of IntentApplication?(v169, v170, v171);
    v153 = v228;
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

uint64_t FlightReservationEntity.arrivalAirportCode.getter()
{
  v1 = *(v0 + 72);
  EntityProperty.wrappedValue.getter();
  return v3;
}

void HotelReservationEntity.init(confirmationNumber:guest:bookingProvider:businessName:roomNumbers:address:checkInDateTime:checkOutDateTime:phoneNumber:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_155();
  a19 = v29;
  a20 = v30;
  v198 = v31;
  v193 = v32;
  v197 = v33;
  v186 = v34;
  v182 = v35;
  v196 = v36;
  v191 = v37;
  v183 = v38;
  v180 = v39;
  v203 = a28;
  v200 = a26;
  v201 = a27;
  v208 = a25;
  v209 = a24;
  OUTLINED_FUNCTION_187_2(a23);
  v185 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v42 = OUTLINED_FUNCTION_114(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_39_0();
  v199 = v45;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14_2();
  v202 = v47;
  OUTLINED_FUNCTION_78_0();
  v204 = type metadata accessor for Calendar();
  v48 = OUTLINED_FUNCTION_14(v204);
  v176 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_4(v53 - v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v60 = OUTLINED_FUNCTION_114(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v64);
  v207 = type metadata accessor for DateComponents();
  v65 = OUTLINED_FUNCTION_14(v207);
  v187 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v70);
  v206 = v174 - v71;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_14_2();
  v205 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v75 = OUTLINED_FUNCTION_114(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_4_3();
  v80 = MEMORY[0x28223BE20](v79);
  MEMORY[0x28223BE20](v80);
  v81 = OUTLINED_FUNCTION_263_0();
  v82 = OUTLINED_FUNCTION_114(v81);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_13_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_255_0();
  OUTLINED_FUNCTION_106_2();
  v85 = OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_250_1();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  v86 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_10_12();
  LocalizedStringResource.init(stringLiteral:)();
  v212 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_268();
  v211 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_268();
  v210 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMR);
  v87 = OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_97_3(v87);
  LocalizedStringResource.init(stringLiteral:)();
  v213 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_195_1();
  LocalizedStringResource.init(stringLiteral:)();
  v88 = OUTLINED_FUNCTION_278();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiSgGMd, &_s10AppIntents14EntityPropertyCySiSgGMR);
  OUTLINED_FUNCTION_134_2();
  LocalizedStringResource.init(stringLiteral:)();
  v195 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  v194 = OUTLINED_FUNCTION_278();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_24_10(0x6D6F6F52u);
  LocalizedStringResource.init(stringLiteral:)();
  v89 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v90 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_256_1(v90);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  v91 = OUTLINED_FUNCTION_278();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  v92 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_159_1(v92);
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  v93 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_252_1(v93);
  OUTLINED_FUNCTION_18_10(&a15);
  v191 = v91;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&v212);
  v196 = v88;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v197);
  v197 = v86;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v198);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_89_5(&v214);
  v193 = v89;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&a13);
  v198 = v85;
  v94 = v208;
  EntityProperty.wrappedValue.setter();
  v95 = v209;
  v96 = OUTLINED_FUNCTION_173_1();
  outlined init with copy of ResourceBundle?(v96, v97, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v98 = OUTLINED_FUNCTION_179_0();
  outlined init with copy of ResourceBundle?(v98, v99, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_118_3();
  outlined destroy of IntentApplication?(v100, v101, v102);
  OUTLINED_FUNCTION_181_2(v94, v28);
  v103 = OUTLINED_FUNCTION_179_0();
  OUTLINED_FUNCTION_181_2(v103, v104);
  v105 = v181;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_118_3();
  outlined destroy of IntentApplication?(v106, v107, v108);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v204);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
  v116 = v205;
  OUTLINED_FUNCTION_43_7();
  v117 = v187;
  v119 = *(v187 + 16);
  v118 = v187 + 16;
  v120 = v207;
  OUTLINED_FUNCTION_167_1();
  v189 = v121;
  v121();
  EntityProperty.wrappedValue.setter();
  v122 = *(v117 + 8);
  v122(v116, v120);
  outlined init with copy of ResourceBundle?(v95, v105, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_166(v105, 1, v120);
  if (v127)
  {
    v123 = v105;
LABEL_7:
    outlined destroy of IntentApplication?(v123, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    goto LABEL_13;
  }

  v124 = *(v117 + 32);
  v125 = v179;
  (v124)(v179, v105, v120);
  v126 = v177;
  outlined init with copy of ResourceBundle?(v94, v177, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_166(v126, 1, v120);
  if (v127)
  {
    v122(v125, v120);
    v123 = v126;
    goto LABEL_7;
  }

  v188 = v118;
  OUTLINED_FUNCTION_167_1();
  v124();
  v128 = v174[1];
  DateComponents.calendar.getter();
  v129 = v204;
  OUTLINED_FUNCTION_166(v128, 1, v204);
  if (v130)
  {
    v132 = v175;
    static Calendar.current.getter();
    OUTLINED_FUNCTION_166(v128, 1, v129);
    if (!v127)
    {
      outlined destroy of IntentApplication?(v128, &_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
    }
  }

  else
  {
    v131 = *(v176 + 32);
    v132 = v175;
    v133 = OUTLINED_FUNCTION_129_4();
    v134(v133);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
  v135 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_14(v135);
  v137 = v136;
  v139 = *(v138 + 72);
  v140 = (*(v136 + 80) + 32) & ~*(v136 + 80);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_25DBC8930;
  v142 = v141 + v140;
  v143 = *(v137 + 104);
  v143(v142, *MEMORY[0x277CC9968], v135);
  v143(v142 + v139, *MEMORY[0x277CC9980], v135);
  v143(v142 + 2 * v139, *MEMORY[0x277CC99A0], v135);
  v143(v142 + 3 * v139, *MEMORY[0x277CC99A8], v135);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5();
  v144 = v205;
  v145 = v178;
  Calendar.dateComponents(_:from:to:)();

  v146 = v207;
  (v189)(v206, v144, v207);
  EntityProperty.wrappedValue.setter();
  v147 = OUTLINED_FUNCTION_21_7();
  (v122)(v147);
  (*(v176 + 8))(v132, v129);
  v122(v145, v146);
  v148 = OUTLINED_FUNCTION_52_1();
  (v122)(v148);
LABEL_13:
  OUTLINED_FUNCTION_26_5(v201);
  v149 = v194;
  EntityProperty.wrappedValue.setter();
  v150 = v202;
  OUTLINED_FUNCTION_96_4();
  outlined init with copy of ResourceBundle?(v151, v152, v153, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_140_1(v150, v199);
  v154 = v192;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  outlined destroy of IntentApplication?(v155, v156, v157);
  OUTLINED_FUNCTION_167_1();
  outlined destroy of IntentApplication?(v158, v159, v160);
  v161 = OUTLINED_FUNCTION_129_4();
  outlined destroy of IntentApplication?(v161, v162, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_86_4();
  outlined destroy of IntentApplication?(v163, v164, v165);
  v166 = v197;
  v167 = v180;
  *v180 = v198;
  v167[1] = v166;
  v168 = v211;
  v167[2] = v212;
  v167[3] = v168;
  v169 = v213;
  v167[4] = v210;
  v167[5] = v169;
  v170 = v195;
  v167[6] = v196;
  v167[7] = v170;
  v171 = v193;
  v167[8] = v149;
  v167[9] = v171;
  v172 = v191;
  v167[10] = v154;
  v167[11] = v172;
  v173 = v184;
  v167[12] = v190;
  v167[13] = v173;
  *(v167 + 7) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_148();
}

void RestaurantReservationEntity.init(confirmationNumber:reservationUnderName:customerNames:partySize:bookingProvider:businessName:address:phoneNumber:startDateTime:mealType:status:guest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_155();
  a19 = v32;
  a20 = v33;
  v54 = v34;
  v55 = v35;
  v37 = v36;
  v63 = a32;
  v62 = a30;
  v60 = a27;
  v61 = a28;
  v59 = a25;
  v57 = a23;
  v56 = a21;
  OUTLINED_FUNCTION_168_2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v39 = OUTLINED_FUNCTION_114(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_39_0();
  v58 = v42;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v44);
  v45 = type metadata accessor for LocalizedStringResource();
  v46 = OUTLINED_FUNCTION_114(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_255_0();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_144_1();
  v49 = EntityProperty<>.init(title:)();
  *v37 = OUTLINED_FUNCTION_159_1(v49);
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  v50 = EntityProperty<>.init(title:)();
  *(v37 + 8) = OUTLINED_FUNCTION_253_1(v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  OUTLINED_FUNCTION_33_8();
  LocalizedStringResource.init(stringLiteral:)();
  v51 = EntityProperty<>.init(title:)();
  *(v37 + 16) = OUTLINED_FUNCTION_241_1(v51);
  OUTLINED_FUNCTION_90_4();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_144_1();
  *(v37 + 24) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_10_12();
  LocalizedStringResource.init(stringLiteral:)();
  v52 = EntityProperty<>.init(title:)();
  *(v37 + 32) = OUTLINED_FUNCTION_247_1(v52);
  OUTLINED_FUNCTION_257_1();
  LocalizedStringResource.init(stringLiteral:)();
  *(v37 + 40) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiSgGMd, &_s10AppIntents14EntityPropertyCySiSgGMR);
  OUTLINED_FUNCTION_191_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v37 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_144_1();
  *(v37 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_3_19();
  LocalizedStringResource.init(stringLiteral:)();
  *(v37 + 64) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_144_1();
  *(v37 + 72) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v37 + 80) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v37 + 88) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v37 + 96) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_195_1();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_144_1();
  *(v37 + 104) = EntityProperty<>.init(title:)();
  *(v37 + 112) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_18_10(&a16);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v54);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_99_5(v55);
  OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_18_10(&a18);
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v56);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v57);
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_26_5(v59);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v60);
  EntityProperty.wrappedValue.setter();
  outlined init with copy of ResourceBundle?(v61, v53, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of ResourceBundle?(v53, v58, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_183_1(v53);
  OUTLINED_FUNCTION_26_5(v62);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v63);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_183_1(v61);
  OUTLINED_FUNCTION_148();
}

void VehicleReservationEntity.init(bookingProvider:cost:dropOffAddress:dropOffBusinessName:dropOffDateTime:dropOffPhoneNumber:duration:pickUpAddress:pickUpBusinessName:pickUpDateTime:pickUpPhoneNumber:renterName:status:vehicleClass:confirmationNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  OUTLINED_FUNCTION_155();
  a19 = v40;
  a20 = v41;
  v83 = v42;
  v44 = v43;
  v93 = a39;
  v92 = a37;
  v91 = a35;
  v90 = a33;
  v89 = a31;
  v87 = a28;
  v88 = a29;
  v86 = a26;
  v85 = a24;
  v84 = a23;
  v82 = a21;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v46 = OUTLINED_FUNCTION_114(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_133_3();
  MEMORY[0x28223BE20](v49);
  v50 = OUTLINED_FUNCTION_265_0();
  v51 = OUTLINED_FUNCTION_114(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_90_4();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  v54 = OUTLINED_FUNCTION_274();
  *v44 = OUTLINED_FUNCTION_247_1(v54);
  OUTLINED_FUNCTION_88_4();
  v55 = EntityProperty<>.init(title:)();
  *(v44 + 8) = OUTLINED_FUNCTION_241_1(v55);
  OUTLINED_FUNCTION_90_4();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  v56 = EntityProperty<>.init(title:)();
  *(v44 + 16) = OUTLINED_FUNCTION_245_1(v56);
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  v57 = EntityProperty<>.init(title:)();
  *(v44 + 24) = OUTLINED_FUNCTION_252_1(v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_144_1();
  *(v44 + 32) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v44 + 40) = OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_144_1();
  *(v44 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_149_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v44 + 56) = OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v44 + 64) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_144_1();
  *(v44 + 72) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v44 + 80) = OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_158_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v44 + 88) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v44 + 96) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_146_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v44 + 104) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v44 + 112) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_90_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v44 + 120) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v44 + 128) = EntityProperty<>.init(title:)();
  *(v44 + 136) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_18_10(&a12);
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_18_10(&a14);
  OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_18_10(&a17);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v83);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_181_2(v82, v39);
  v58 = OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_181_2(v58, v59);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_118_3();
  outlined destroy of IntentApplication?(v60, v61, v62);
  OUTLINED_FUNCTION_26_5(v84);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_181_2(v85, v39);
  v63 = OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_181_2(v63, v64);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_118_3();
  outlined destroy of IntentApplication?(v65, v66, v67);
  OUTLINED_FUNCTION_26_5(v86);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v87);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_181_2(v88, v39);
  v68 = OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_181_2(v68, v69);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_118_3();
  outlined destroy of IntentApplication?(v70, v71, v72);
  OUTLINED_FUNCTION_26_5(v89);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v90);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v91);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v92);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v93);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_118_3();
  outlined destroy of IntentApplication?(v73, v74, v75);
  OUTLINED_FUNCTION_118_3();
  outlined destroy of IntentApplication?(v76, v77, v78);
  OUTLINED_FUNCTION_118_3();
  outlined destroy of IntentApplication?(v79, v80, v81);
  OUTLINED_FUNCTION_148();
}

void TicketedTransportationEntity.init(arrivalStationName:arrivalStationAddress:arrivalDateTime:departureStationName:departureStationAddress:departureDateTime:duration:eventSubType:passengerNames:seatNumbers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_155();
  v77 = v28;
  v75 = v29;
  v76 = v30;
  v74 = v31;
  v33 = v32;
  v34 = OUTLINED_FUNCTION_34_11();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  v37 = OUTLINED_FUNCTION_114(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_133_3();
  MEMORY[0x28223BE20](v40);
  v41 = OUTLINED_FUNCTION_265_0();
  v42 = OUTLINED_FUNCTION_114(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_214_0();
  *v33 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  *(v33 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_81_6();
  LocalizedStringResource.init(stringLiteral:)();
  *(v33 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  *(v33 + 24) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  *(v33 + 32) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_42_7();
  LocalizedStringResource.init(stringLiteral:)();
  v45 = EntityProperty<>.init(title:)();
  *(v33 + 40) = OUTLINED_FUNCTION_256_1(v45);
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  *(v33 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  *(v33 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_23_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v33 + 64) = EntityProperty<>.init(title:)();
  v46 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_39_8(v46 & 0xFFFF0000FFFFFFFFLL | 0x6E2000000000);
  LocalizedStringResource.init(stringLiteral:)();
  *(v33 + 72) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  *(v33 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v33 + 88) = EntityProperty<>.init(title:)();
  *(v33 + 96) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_26_5(v74);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v75);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_140_1(v76, v27);
  OUTLINED_FUNCTION_96_4();
  outlined init with copy of ResourceBundle?(v47, v48, v49, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  outlined destroy of IntentApplication?(v50, v51, v52);
  OUTLINED_FUNCTION_26_5(v77);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(a21);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_140_1(a22, v27);
  OUTLINED_FUNCTION_96_4();
  outlined init with copy of ResourceBundle?(v53, v54, v55, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  outlined destroy of IntentApplication?(v56, v57, v58);
  OUTLINED_FUNCTION_140_1(a23, v27);
  OUTLINED_FUNCTION_96_4();
  outlined init with copy of ResourceBundle?(v59, v60, v61, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  outlined destroy of IntentApplication?(v62, v63, v64);
  OUTLINED_FUNCTION_26_5(a25);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_99_5(a26);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_99_5(a27);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_86_4();
  outlined destroy of IntentApplication?(v65, v66, v67);
  OUTLINED_FUNCTION_86_4();
  outlined destroy of IntentApplication?(v68, v69, v70);
  OUTLINED_FUNCTION_86_4();
  outlined destroy of IntentApplication?(v71, v72, v73);
  OUTLINED_FUNCTION_148();
}

void TicketedShowEntity.init(reservationId:provider:customerNames:locationName:address:seatNumbers:duration:ticketType:ticketUrl:cost:startDateTime:endDateTime:eventSubType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_155();
  a19 = v33;
  a20 = v34;
  v73 = v35;
  v71 = v36;
  v69 = v37;
  v39 = v38;
  v80 = a32;
  v78 = a29;
  v79 = a30;
  v77 = a28;
  v75 = a25;
  v76 = a26;
  v81 = a23;
  v72 = a22;
  v70 = a21;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v41 = OUTLINED_FUNCTION_114(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39_0();
  v74 = v44;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v48 = OUTLINED_FUNCTION_114(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v51);
  v52 = OUTLINED_FUNCTION_264_0();
  v53 = OUTLINED_FUNCTION_114(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  *v39 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  OUTLINED_FUNCTION_33_8();
  LocalizedStringResource.init(stringLiteral:)();
  v56 = EntityProperty<>.init(title:)();
  *(v39 + 8) = OUTLINED_FUNCTION_253_1(v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_148_1();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_242_1();
  v57 = EntityProperty<>.init(title:)();
  *(v39 + 16) = OUTLINED_FUNCTION_247_1(v57);
  OUTLINED_FUNCTION_32_11();
  OUTLINED_FUNCTION_23_8();
  LocalizedStringResource.init(stringLiteral:)();
  *(v39 + 24) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  v58 = EntityProperty<>.init(title:)();
  *(v39 + 32) = v58;
  v59 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_24_10(v59);
  LocalizedStringResource.init(stringLiteral:)();
  *(v39 + 40) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_237_1();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_242_1();
  *(v39 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  v60 = EntityProperty<>.init(title:)();
  *(v39 + 56) = OUTLINED_FUNCTION_159_1(v60);
  v61 = OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_236_0(v61);
  LocalizedStringResource.init(stringLiteral:)();
  *(v39 + 64) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_134_1();
  LocalizedStringResource.init(stringLiteral:)();
  v62 = EntityProperty<>.init(title:)();
  *(v39 + 72) = OUTLINED_FUNCTION_252_1(v62);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_242_1();
  *(v39 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_9();
  LocalizedStringResource.init(stringLiteral:)();
  v63 = EntityProperty<>.init(title:)();
  *(v39 + 88) = OUTLINED_FUNCTION_245_1(v63);
  OUTLINED_FUNCTION_31_12();
  LocalizedStringResource.init(stringLiteral:)();
  v64 = EntityProperty<>.init(title:)();
  *(v39 + 96) = OUTLINED_FUNCTION_241_1(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(v39 + 104) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v39 + 112) = EntityProperty<>.init(title:)();
  *(v39 + 120) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_18_10(&a18);
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_26_5(v69);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_99_5(v71);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v73);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v70);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_99_5(v72);
  EntityProperty.wrappedValue.setter();
  outlined init with copy of ResourceBundle?(v81, v32, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_213_1(v32);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_211_1(v32);
  OUTLINED_FUNCTION_26_5(v75);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_251_1(&a13);
  outlined init with copy of ResourceBundle?(v65, v66, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_217_1(v58, v74);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v58, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_26_5(v77);
  EntityProperty.wrappedValue.setter();
  v67 = OUTLINED_FUNCTION_52_1();
  outlined init with copy of ResourceBundle?(v67, v68, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_213_1(v32);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_211_1(v32);
  outlined init with copy of ResourceBundle?(v79, v32, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_213_1(v32);
  OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_211_1(v32);
  OUTLINED_FUNCTION_26_5(v80);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_211_1(v79);
  OUTLINED_FUNCTION_211_1(v78);
  outlined destroy of IntentApplication?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_211_1(v81);
  OUTLINED_FUNCTION_148();
}

void GenericEventEntity.init(attendees:businessName:cost:duration:endDateTime:eventLink:eventName:eventType:eventSubType:location:organizer:phoneNumber:startDateTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_155();
  a19 = v33;
  a20 = v34;
  v117 = v36;
  v118 = v35;
  v119 = v37;
  v102 = v38;
  v100 = v39;
  v99 = v40;
  v98 = v41;
  v96 = v42;
  v44 = v43;
  v115 = a31;
  v116 = a32;
  v113 = a29;
  v114 = a30;
  v111 = a27;
  v112 = a28;
  v109 = a25;
  v110 = a26;
  v106 = a23;
  v107 = a24;
  v103 = a21;
  v104 = a22;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  v46 = OUTLINED_FUNCTION_114(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_39_0();
  v108 = v49;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_14_2();
  v105 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v53 = OUTLINED_FUNCTION_114(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_39_0();
  v101 = v56;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v60 = OUTLINED_FUNCTION_114(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_133_3();
  MEMORY[0x28223BE20](v63);
  v65 = &v90 - v64;
  v66 = type metadata accessor for LocalizedStringResource();
  v67 = OUTLINED_FUNCTION_114(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMd, &_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMR);
  OUTLINED_FUNCTION_151_0();
  LocalizedStringResource.init(stringLiteral:)();
  v70 = EntityProperty<>.init(title:)();
  *v44 = OUTLINED_FUNCTION_247_1(v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_10_12();
  LocalizedStringResource.init(stringLiteral:)();
  *(v44 + 8) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_88_4();
  *(v44 + 16) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  v71 = EntityProperty<>.init(title:)();
  *(v44 + 24) = OUTLINED_FUNCTION_245_1(v71);
  OUTLINED_FUNCTION_31_12();
  OUTLINED_FUNCTION_235_1();
  LocalizedStringResource.init(stringLiteral:)();
  v95 = EntityProperty<>.init(title:)();
  *(v44 + 32) = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  v72 = EntityProperty<>.init(title:)();
  *(v44 + 40) = OUTLINED_FUNCTION_253_1(v72);
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_269();
  v94 = EntityProperty<>.init(title:)();
  *(v44 + 48) = v94;
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  v73 = EntityProperty<>.init(title:)();
  *(v44 + 56) = OUTLINED_FUNCTION_241_1(v73);
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  v74 = EntityProperty<>.init(title:)();
  *(v44 + 64) = OUTLINED_FUNCTION_252_1(v74);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  v93 = EntityProperty<>.init(title:)();
  *(v44 + 72) = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMd, &_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMR);
  OUTLINED_FUNCTION_190_2();
  LocalizedStringResource.init(stringLiteral:)();
  v91 = EntityProperty<>.init(title:)();
  *(v44 + 80) = v91;
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  v90 = EntityProperty<>.init(title:)();
  *(v44 + 88) = v90;
  OUTLINED_FUNCTION_3_19();
  LocalizedStringResource.init(stringLiteral:)();
  v92 = EntityProperty<>.init(title:)();
  *(v44 + 96) = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(v44 + 104) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v44 + 112) = EntityProperty<>.init(title:)();
  *(v44 + 120) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_89_5(&a14);
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_18_10(&a17);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v102);
  EntityProperty.wrappedValue.setter();
  outlined init with copy of ResourceBundle?(v119, v65, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of ResourceBundle?(v65, v32, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_183_1(v65);
  outlined init with copy of ResourceBundle?(v118, v65, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_167_1();
  outlined init with copy of ResourceBundle?(v75, v76, v77, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_183_1(v65);
  v78 = v97;
  outlined init with copy of ResourceBundle?(v117, v97, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of ResourceBundle?(v78, v101, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  EntityProperty.wrappedValue.setter();
  v79 = OUTLINED_FUNCTION_21_7();
  outlined destroy of IntentApplication?(v79, v80, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_26_5(v104);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v107);
  OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_26_5(v110);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v112);
  EntityProperty.wrappedValue.setter();
  v81 = v105;
  outlined init with copy of ResourceBundle?(v113, v105, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  outlined init with copy of ResourceBundle?(v81, v108, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  EntityProperty.wrappedValue.setter();
  v82 = OUTLINED_FUNCTION_34_11();
  outlined destroy of IntentApplication?(v82, v83, &_s10AppIntents12IntentPersonVSgMR);
  OUTLINED_FUNCTION_26_5(v115);
  EntityProperty.wrappedValue.setter();
  v84 = v116;
  outlined init with copy of ResourceBundle?(v116, v65, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_167_1();
  outlined init with copy of ResourceBundle?(v85, v86, v87, &_s10Foundation14DateComponentsVSgMR);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_183_1(v84);
  v88 = OUTLINED_FUNCTION_232();
  outlined destroy of IntentApplication?(v88, v89, &_s10AppIntents12IntentPersonVSgMR);
  outlined destroy of IntentApplication?(v117, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_183_1(v118);
  OUTLINED_FUNCTION_183_1(v119);
  OUTLINED_FUNCTION_183_1(v65);
  OUTLINED_FUNCTION_148();
}

void ShippingOrderEntity.init(eventName:subType:status:shippingStatus:orderDate:orderNumber:orderTrackingURL:orderCost:merchantName:shippingPersonNames:shippingLocationName:shippingAddress:shippingPhoneNumber:recipientNames:recipientLocationName:recipientAddress:recipientPhoneNumber:customerNames:customerAddress:customerPhoneNumber:carrierName:trackingNumber:shippingDate:deliveryDate:estimatedDeliveryStartDate:estimatedDeliveryEndDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  OUTLINED_FUNCTION_155();
  a19 = v54;
  a20 = v55;
  v57 = v56;
  v126 = a52;
  v127 = a53;
  v124[1] = a50;
  v125 = a51;
  v123 = a48;
  v124[0] = a49;
  v122 = a47;
  v121 = a42;
  v120 = a40;
  v118 = a38;
  v116 = a35;
  v117 = a36;
  OUTLINED_FUNCTION_168_2();
  OUTLINED_FUNCTION_234_1(a28);
  v115 = a26;
  v114 = a25;
  v128 = a24;
  v129 = a21;
  v119 = a43;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v59 = OUTLINED_FUNCTION_114(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v65 = OUTLINED_FUNCTION_114(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v68);
  v69 = OUTLINED_FUNCTION_264_0();
  v70 = OUTLINED_FUNCTION_114(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_233_1();

  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_145_2();
  *v57 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_18_11();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 8) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_254();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 24) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  OUTLINED_FUNCTION_76_5();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 32) = EntityProperty<>.init(title:)();
  v74 = OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_19_9(v74);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_145_2();
  *(v57 + 40) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 48) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySdSgGMd, &_s10AppIntents14EntityPropertyCySdSgGMR);
  OUTLINED_FUNCTION_76_5();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 56) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_23_8();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_145_2();
  *(v57 + 64) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 72) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_145_2();
  *(v57 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 88) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_41_6();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 96) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_147_1();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 104) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_145_2();
  *(v57 + 112) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 120) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_228_0();
  *(v57 + 128) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_33_8();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 136) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_41_6();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 144) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_228_0();
  *(v57 + 152) = EntityProperty<>.init(title:)();
  v75 = OUTLINED_FUNCTION_118_2();
  OUTLINED_FUNCTION_231_0(v75);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_145_2();
  *(v57 + 160) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_149_1();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 168) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_140_0();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 176) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_238_0();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 184) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 192) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 200) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 208) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v57 + 216) = EntityProperty<>.init(title:)();
  *(v57 + 224) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_18_10(&v123);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&v125);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&v128);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&v132);
  EntityProperty.wrappedValue.setter();
  outlined init with copy of ResourceBundle?(v129, v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v76 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_217_1(v76, v77);
  EntityProperty.wrappedValue.setter();
  v78 = OUTLINED_FUNCTION_173_1();
  outlined destroy of IntentApplication?(v78, v79, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_18_10(&v130);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_251_1(v124);
  outlined init with copy of ResourceBundle?(v80, v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of ResourceBundle?(v73, v113, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v73, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v130 = v114;
  v131 = v115 & 1;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&a12);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_89_5(&a13);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&a15);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_18_10(&a17);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v116);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_99_5(v117);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v118);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v120);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v121);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_99_5(v119);
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v122);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_26_5(v124[0]);
  EntityProperty.wrappedValue.setter();
  v82 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_217_1(v82, v83);
  v84 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_217_1(v84, v85);
  EntityProperty.wrappedValue.setter();
  v86 = OUTLINED_FUNCTION_173_1();
  outlined destroy of IntentApplication?(v86, v87, &_s10Foundation4DateVSgMR);
  v88 = OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_217_1(v88, v89);
  v90 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_217_1(v90, v91);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of ResourceBundle?(v126, v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v92 = OUTLINED_FUNCTION_34_11();
  outlined init with copy of ResourceBundle?(v92, v93, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of ResourceBundle?(v127, v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v94 = OUTLINED_FUNCTION_34_11();
  outlined init with copy of ResourceBundle?(v94, v95, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  v96 = OUTLINED_FUNCTION_129_4();
  outlined destroy of IntentApplication?(v96, v97, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_155_2();
  outlined destroy of IntentApplication?(v98, v99, v100);
  OUTLINED_FUNCTION_155_2();
  outlined destroy of IntentApplication?(v101, v102, v103);
  OUTLINED_FUNCTION_155_2();
  outlined destroy of IntentApplication?(v104, v105, v106);
  outlined destroy of IntentApplication?(v128, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_155_2();
  outlined destroy of IntentApplication?(v107, v108, v109);
  OUTLINED_FUNCTION_155_2();
  outlined destroy of IntentApplication?(v110, v111, v112);
  OUTLINED_FUNCTION_148();
}

uint64_t key path getter for EventEntity.subType : EventEntity@<X0>(_BYTE *a1@<X8>)
{
  result = EventEntity.subType.getter();
  *a1 = v3;
  return result;
}

uint64_t (*EventEntity.subType.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for EventEntity.flightReservation : EventEntity(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of ResourceBundle?(__dst, &v10, &_s10OmniSearch23FlightReservationEntityVSgMd, &_s10OmniSearch23FlightReservationEntityVSgMR);
  return EventEntity.flightReservation.setter(__src, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t (*EventEntity.flightReservation.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*EventEntity.genericEvent.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t (*EventEntity.hotelReservation.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for EventEntity.hotelReservation : EventEntity()
{
  OUTLINED_FUNCTION_85_5();
  memcpy(__dst, v3, sizeof(__dst));
  outlined init with copy of ResourceBundle?(__dst, &v5, v2, v1);
  return v0(v3);
}

uint64_t (*EventEntity.restaurantReservation.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for EventEntity.ticketedTransportation : EventEntity(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of ResourceBundle?(__dst, &v10, &_s10OmniSearch28TicketedTransportationEntityVSgMd, &_s10OmniSearch28TicketedTransportationEntityVSgMR);
  return EventEntity.ticketedTransportation.setter(__src, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t (*EventEntity.ticketedTransportation.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for EventEntity.vehicleReservation : EventEntity(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of ResourceBundle?(__dst, &v10, &_s10OmniSearch24VehicleReservationEntityVSgMd, &_s10OmniSearch24VehicleReservationEntityVSgMR);
  return EventEntity.vehicleReservation.setter(__src, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t (*EventEntity.vehicleReservation.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for EventEntity.genericEvent : EventEntity()
{
  OUTLINED_FUNCTION_85_5();
  memcpy(__dst, v3, sizeof(__dst));
  outlined init with copy of ResourceBundle?(__dst, &v5, v2, v1);
  return v0(v3);
}

uint64_t (*EventEntity.ticketedShow.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for EventEntity.shippingOrder : EventEntity(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of ResourceBundle?(__dst, &v10, &_s10OmniSearch19ShippingOrderEntityVSgMd, &_s10OmniSearch19ShippingOrderEntityVSgMR);
  return EventEntity.shippingOrder.setter(__src, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t (*EventEntity.shippingOrder.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t EventEntity.init()()
{
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for LocalizedStringResource();
  v2 = OUTLINED_FUNCTION_114(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_106_2();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_54_5();
  *v0 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_54_5();
  *(v0 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_214_0();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_54_5();
  *(v0 + 16) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_54_5();
  *(v0 + 24) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_54_5();
  *(v0 + 32) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_54_5();
  *(v0 + 40) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_54_5();
  *(v0 + 48) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_214_0();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_54_5();
  *(v0 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_54_5();
  *(v0 + 64) = EntityProperty<>.init(title:)();
  *(v0 + 72) = xmmword_25DBC9410;
  v5 = *(type metadata accessor for EventEntity() + 56);
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void one-time initialization function for typeDisplayRepresentation()
{
  one-time initialization function for typeDisplayRepresentation();
}

{
  one-time initialization function for typeDisplayRepresentation();
}

{
  one-time initialization function for typeDisplayRepresentation();
}

{
  one-time initialization function for typeDisplayRepresentation();
}

{
  one-time initialization function for typeDisplayRepresentation();
}

{
  OUTLINED_FUNCTION_202();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_136_3();
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = OUTLINED_FUNCTION_17(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v10 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v10, v1);
  __swift_project_value_buffer(v10, v1);
  OUTLINED_FUNCTION_107();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  OUTLINED_FUNCTION_232();
  TypeDisplayRepresentation.init(name:numericFormat:)();
  OUTLINED_FUNCTION_203();
}

uint64_t static EventEntity.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, &static EventEntity.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

void EventEntity.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_155();
  v53[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_49_3();
  v53[0] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_136_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_233_1();
  v16 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v17 = OUTLINED_FUNCTION_114(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v20 = type metadata accessor for LocalizedStringResource();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_133_3();
  MEMORY[0x28223BE20](v26);
  v28 = v53 - v27;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  EventEntity.description.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v30);

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
  LocalizedStringResource.init(stringInterpolation:)();
  type metadata accessor for SFCard();
  v32 = *(v0 + 72);
  v33 = *(v0 + 80);
  outlined copy of Data?(v32, v33);
  v34 = SFCard.init(data:)(v32, v33);
  if (v34)
  {
    v35 = v34;
    SFCard.snippetPluginModel.getter(v1);

    v36 = type metadata accessor for RGPluginModel();
    OUTLINED_FUNCTION_166(v1, 1, v36);
    if (v37)
    {
      outlined destroy of IntentApplication?(v1, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
    }

    else
    {
      _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_0(&lazy protocol witness table cache variable for type RGPluginModel and conformance RGPluginModel);
      OUTLINED_FUNCTION_74_6();
      SnippetPluginModel.data.getter();
      v39 = v38;
      (*(*(v36 - 8) + 8))(v1, v36);
      if (v39 >> 60 != 15)
      {
        v50 = *(v23 + 16);
        v51 = OUTLINED_FUNCTION_45_0();
        v52(v51);
        static RGPluginModel.bundleName.getter();
        DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();
        goto LABEL_7;
      }
    }
  }

  v40 = *(v23 + 16);
  v41 = OUTLINED_FUNCTION_45_0();
  v42(v41);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v20);
  type metadata accessor for DisplayRepresentation.Image();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  DisplayRepresentation.init(title:subtitle:image:)();
LABEL_7:
  (*(v23 + 8))(v28, v20);
  OUTLINED_FUNCTION_148();
}

void EventEntity.description.getter()
{
  OUTLINED_FUNCTION_202();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationVSgMd, &_s10AppIntents21DisplayRepresentationVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_136_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-v10];
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = OUTLINED_FUNCTION_14(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_109();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v32[-v22];
  static EventSubType.caseDisplayRepresentations.getter();
  v25 = v24;
  v26 = *v0;
  EntityProperty.wrappedValue.getter();
  specialized Dictionary.subscript.getter(v32[15], v25);

  v27 = type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_166(v1, 1, v27);
  if (v31)
  {
    outlined destroy of IntentApplication?(v1, &_s10AppIntents21DisplayRepresentationVSgMd, &_s10AppIntents21DisplayRepresentationVSgMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v12);
LABEL_6:
    outlined destroy of IntentApplication?(v11, &_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
    goto LABEL_7;
  }

  DisplayRepresentation.descriptionText.getter();
  (*(*(v27 - 8) + 8))(v1, v27);
  OUTLINED_FUNCTION_166(v11, 1, v12);
  if (v31)
  {
    goto LABEL_6;
  }

  (*(v15 + 32))(v23, v11, v12);
  (*(v15 + 16))(v20, v23, v12);
  String.init(localized:)();
  (*(v15 + 8))(v23, v12);
LABEL_7:
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_203();
}

void static EventSubType.caseDisplayRepresentations.getter()
{
  OUTLINED_FUNCTION_155();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = OUTLINED_FUNCTION_17(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch12EventSubTypeO_10AppIntents21DisplayRepresentationVtGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch12EventSubTypeO_10AppIntents21DisplayRepresentationVtGMR);
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch12EventSubTypeO_10AppIntents21DisplayRepresentationVtMd, &_s10OmniSearch12EventSubTypeO_10AppIntents21DisplayRepresentationVtMR) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_25DBCF3A0;
  v15 = v31 + v14;
  v16 = v12[14];
  *(v31 + v14) = 0;
  OUTLINED_FUNCTION_132_3();
  OUTLINED_FUNCTION_188_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v8);
  v20 = type metadata accessor for DisplayRepresentation.Image();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  OUTLINED_FUNCTION_50_4();
  v24 = v12[14];
  *(v15 + v13) = 1;
  OUTLINED_FUNCTION_132_3();
  OUTLINED_FUNCTION_188_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_50_4();
  v25 = v12[14];
  *(v15 + 2 * v13) = 2;
  OUTLINED_FUNCTION_188_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_14_8();
  v26 = v12[14];
  *(v15 + 3 * v13) = 3;
  OUTLINED_FUNCTION_132_3();
  OUTLINED_FUNCTION_188_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_14_8();
  v27 = v12[14];
  *(v15 + 4 * v13) = 4;
  OUTLINED_FUNCTION_140_0();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_14_8();
  v28 = v12[14];
  *(v15 + 5 * v13) = 5;
  OUTLINED_FUNCTION_132_3();
  OUTLINED_FUNCTION_188_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_14_8();
  v29 = v12[14];
  *(v15 + 6 * v13) = 6;
  OUTLINED_FUNCTION_134_1();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_14_8();
  v30 = v12[14];
  *(v15 + 7 * v13) = 7;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_50_4();
  type metadata accessor for DisplayRepresentation();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_148();
}

uint64_t EventEntity.cardData.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  return OUTLINED_FUNCTION_35_11();
}

uint64_t EventEntity.cardData.setter()
{
  OUTLINED_FUNCTION_93();
  result = outlined consume of Data?(*(v1 + 72), *(v1 + 80));
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t EventEntity.sourceResult.setter()
{
  OUTLINED_FUNCTION_42_2();
  v2 = v1 + *(type metadata accessor for EventEntity() + 56);

  return outlined assign with take of SearchResult?(v0, v2);
}

uint64_t (*EventEntity.sourceResult.modify())(void)
{
  OUTLINED_FUNCTION_42_2();
  v0 = *(type metadata accessor for EventEntity() + 56);
  return _s10OmniSearch11GeoLocationVSgWOi_;
}

void static EventEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_93();
  v4 = *v3;
  EntityProperty.wrappedValue.getter();
  v5 = *v0;
  EntityProperty.wrappedValue.getter();
  if ((specialized == infix<A>(_:_:)() & 1) == 0)
  {
    goto LABEL_43;
  }

  v6 = v1[1];
  EntityProperty.wrappedValue.getter();
  memcpy(__dst, __src, 0xD8uLL);
  v7 = v0[1];
  EntityProperty.wrappedValue.getter();
  memcpy(&__dst[216], v358, 0xD8uLL);
  memcpy(v360, __dst, sizeof(v360));
  OUTLINED_FUNCTION_101_4(v360);
  if (v12)
  {
    memcpy(v356, &__dst[216], 0xD8uLL);
    OUTLINED_FUNCTION_101_4(v356);
    if (v12)
    {
      v8 = OUTLINED_FUNCTION_127_4();
      memcpy(v8, v9, 0xD8uLL);
      outlined destroy of IntentApplication?(v350, &_s10OmniSearch23FlightReservationEntityVSgMd, &_s10OmniSearch23FlightReservationEntityVSgMR);
      goto LABEL_12;
    }

LABEL_10:
    v29 = OUTLINED_FUNCTION_170_2();
    memcpy(v29, v30, 0x1B0uLL);
    v31 = &_s10OmniSearch23FlightReservationEntityVSg_ADtMd;
    v32 = &_s10OmniSearch23FlightReservationEntityVSg_ADtMR;
LABEL_41:
    v201 = v356;
LABEL_42:
    outlined destroy of IntentApplication?(v201, v31, v32);
    goto LABEL_43;
  }

  v10 = OUTLINED_FUNCTION_127_4();
  memcpy(v10, v11, 0xD8uLL);
  memcpy(v356, &__dst[216], 0xD8uLL);
  v13 = OUTLINED_FUNCTION_101_4(v356);
  if (v12)
  {
    v21 = OUTLINED_FUNCTION_112_4(v13, v14, v15, v16, v17, v18, v19, v20, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
    v23 = memcpy(v21, v22, 0xD8uLL);
    OUTLINED_FUNCTION_276(v23, v24, &_s10OmniSearch23FlightReservationEntityVSgMd, &_s10OmniSearch23FlightReservationEntityVSgMR, v25, v26, v27, v28, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0]);
    outlined destroy of FlightReservationEntity(v349);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_113_4(v13, v14, v15, v16, v17, v18, v19, v20, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
  static FlightReservationEntity.== infix(_:_:)(__dst);
  OUTLINED_FUNCTION_240_1();
  memcpy(v33, &__dst[216], 0xD8uLL);
  v34 = outlined destroy of FlightReservationEntity(v326);
  v42 = OUTLINED_FUNCTION_143_2(v34, v35, v36, v37, v38, v39, v40, v41, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0]);
  memcpy(v42, v43, 0xD8uLL);
  v44 = outlined destroy of FlightReservationEntity(v335);
  v52 = OUTLINED_FUNCTION_112_4(v44, v45, v46, v47, v48, v49, v50, v51, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
  v54 = memcpy(v52, v53, 0xD8uLL);
  OUTLINED_FUNCTION_169_2(v54, v55, v56, v57, v58, v59, v60, v61, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
  if ((v2 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_12:
  v62 = v1[2];
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_179_2();
  memcpy(v63, v64, 0x88uLL);
  v65 = v0[2];
  EntityProperty.wrappedValue.getter();
  memcpy(&__dst[136], v358, 0x88uLL);
  OUTLINED_FUNCTION_172_2(v355);
  OUTLINED_FUNCTION_101_4(v355);
  if (v12)
  {
    memcpy(v356, &__dst[136], 0x88uLL);
    OUTLINED_FUNCTION_101_4(v356);
    if (v12)
    {
      v66 = OUTLINED_FUNCTION_127_4();
      memcpy(v66, v67, 0x88uLL);
      outlined destroy of IntentApplication?(v350, &_s10OmniSearch18GenericEventEntityVSgMd, &_s10OmniSearch18GenericEventEntityVSgMR);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v68 = OUTLINED_FUNCTION_127_4();
  memcpy(v68, v69, 0x88uLL);
  memcpy(v356, &__dst[136], 0x88uLL);
  v71 = OUTLINED_FUNCTION_101_4(v356);
  if (v70)
  {
    v79 = OUTLINED_FUNCTION_112_4(v71, v72, v73, v74, v75, v76, v77, v78, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
    v81 = memcpy(v79, v80, 0x88uLL);
    OUTLINED_FUNCTION_276(v81, v82, &_s10OmniSearch18GenericEventEntityVSgMd, &_s10OmniSearch18GenericEventEntityVSgMR, v83, v84, v85, v86, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0]);
    outlined destroy of GenericEventEntity(v349);
LABEL_20:
    v87 = OUTLINED_FUNCTION_170_2();
    memcpy(v87, v88, 0x110uLL);
    v31 = &_s10OmniSearch18GenericEventEntityVSg_ADtMd;
    v32 = &_s10OmniSearch18GenericEventEntityVSg_ADtMR;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_113_4(v71, v72, v73, v74, v75, v76, v77, v78, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
  static GenericEventEntity.== infix(_:_:)(__dst, &__dst[136]);
  OUTLINED_FUNCTION_240_1();
  memcpy(v89, &__dst[136], 0x88uLL);
  v90 = outlined destroy of GenericEventEntity(v326);
  v98 = OUTLINED_FUNCTION_143_2(v90, v91, v92, v93, v94, v95, v96, v97, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0]);
  memcpy(v98, v99, 0x88uLL);
  v100 = outlined destroy of GenericEventEntity(v335);
  v108 = OUTLINED_FUNCTION_112_4(v100, v101, v102, v103, v104, v105, v106, v107, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
  v110 = memcpy(v108, v109, 0x88uLL);
  OUTLINED_FUNCTION_169_2(v110, v111, v112, v113, v114, v115, v116, v117, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
  if ((v2 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_22:
  v118 = v1[3];
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_179_2();
  memcpy(v119, v120, 0x80uLL);
  v121 = v0[3];
  EntityProperty.wrappedValue.getter();
  memcpy(&__dst[128], v358, 0x80uLL);
  memcpy(v354, __dst, sizeof(v354));
  OUTLINED_FUNCTION_101_4(v354);
  if (v12)
  {
    OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_101_4(v356);
    if (v12)
    {
      v122 = OUTLINED_FUNCTION_127_4();
      memcpy(v122, v123, 0x80uLL);
      outlined destroy of IntentApplication?(v350, &_s10OmniSearch22HotelReservationEntityVSgMd, &_s10OmniSearch22HotelReservationEntityVSgMR);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v124 = OUTLINED_FUNCTION_127_4();
  memcpy(v124, v125, 0x80uLL);
  OUTLINED_FUNCTION_171_1();
  v127 = OUTLINED_FUNCTION_101_4(v356);
  if (v126)
  {
    v135 = OUTLINED_FUNCTION_112_4(v127, v128, v129, v130, v131, v132, v133, v134, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
    v137 = memcpy(v135, v136, 0x80uLL);
    OUTLINED_FUNCTION_276(v137, v138, &_s10OmniSearch22HotelReservationEntityVSgMd, &_s10OmniSearch22HotelReservationEntityVSgMR, v139, v140, v141, v142, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0]);
    outlined destroy of HotelReservationEntity(v349);
LABEL_30:
    v143 = OUTLINED_FUNCTION_170_2();
    memcpy(v143, v144, 0x100uLL);
    v31 = &_s10OmniSearch22HotelReservationEntityVSg_ADtMd;
    v32 = &_s10OmniSearch22HotelReservationEntityVSg_ADtMR;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_113_4(v127, v128, v129, v130, v131, v132, v133, v134, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
  static HotelReservationEntity.== infix(_:_:)(__dst, &__dst[128]);
  OUTLINED_FUNCTION_240_1();
  memcpy(v145, &__dst[128], 0x80uLL);
  v146 = outlined destroy of HotelReservationEntity(v326);
  v154 = OUTLINED_FUNCTION_143_2(v146, v147, v148, v149, v150, v151, v152, v153, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0]);
  memcpy(v154, v155, 0x80uLL);
  v156 = outlined destroy of HotelReservationEntity(v335);
  v164 = OUTLINED_FUNCTION_112_4(v156, v157, v158, v159, v160, v161, v162, v163, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
  v166 = memcpy(v164, v165, 0x80uLL);
  OUTLINED_FUNCTION_169_2(v166, v167, v168, v169, v170, v171, v172, v173, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
  if ((v2 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_32:
  v174 = v1[4];
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_179_2();
  memcpy(v175, v176, 0x80uLL);
  v177 = v0[4];
  EntityProperty.wrappedValue.getter();
  memcpy(&__dst[128], v358, 0x80uLL);
  memcpy(v353, __dst, sizeof(v353));
  OUTLINED_FUNCTION_101_4(v353);
  if (v12)
  {
    OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_101_4(v356);
    if (v12)
    {
      v178 = OUTLINED_FUNCTION_127_4();
      memcpy(v178, v179, 0x80uLL);
      outlined destroy of IntentApplication?(v350, &_s10OmniSearch27RestaurantReservationEntityVSgMd, &_s10OmniSearch27RestaurantReservationEntityVSgMR);
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  v180 = OUTLINED_FUNCTION_127_4();
  memcpy(v180, v181, 0x80uLL);
  OUTLINED_FUNCTION_171_1();
  v183 = OUTLINED_FUNCTION_101_4(v356);
  if (v182)
  {
    v191 = OUTLINED_FUNCTION_112_4(v183, v184, v185, v186, v187, v188, v189, v190, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
    v193 = memcpy(v191, v192, 0x80uLL);
    OUTLINED_FUNCTION_276(v193, v194, &_s10OmniSearch27RestaurantReservationEntityVSgMd, &_s10OmniSearch27RestaurantReservationEntityVSgMR, v195, v196, v197, v198, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0]);
    outlined destroy of RestaurantReservationEntity(v349);
LABEL_40:
    v199 = OUTLINED_FUNCTION_170_2();
    memcpy(v199, v200, 0x100uLL);
    v31 = &_s10OmniSearch27RestaurantReservationEntityVSg_ADtMd;
    v32 = &_s10OmniSearch27RestaurantReservationEntityVSg_ADtMR;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_113_4(v183, v184, v185, v186, v187, v188, v189, v190, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
  static RestaurantReservationEntity.== infix(_:_:)(__dst, &__dst[128]);
  OUTLINED_FUNCTION_240_1();
  memcpy(v202, &__dst[128], 0x80uLL);
  v203 = outlined destroy of RestaurantReservationEntity(v326);
  v211 = OUTLINED_FUNCTION_143_2(v203, v204, v205, v206, v207, v208, v209, v210, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0]);
  memcpy(v211, v212, 0x80uLL);
  v213 = outlined destroy of RestaurantReservationEntity(v335);
  v221 = OUTLINED_FUNCTION_112_4(v213, v214, v215, v216, v217, v218, v219, v220, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
  v223 = memcpy(v221, v222, 0x80uLL);
  OUTLINED_FUNCTION_169_2(v223, v224, v225, v226, v227, v228, v229, v230, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
  if ((v2 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_45:
  v231 = v1[5];
  EntityProperty.wrappedValue.getter();
  v232 = v356[0];
  OUTLINED_FUNCTION_248_0();
  memcpy(v233, v234, v235);
  v236 = v0[5];
  EntityProperty.wrappedValue.getter();
  v237 = __src[0];
  OUTLINED_FUNCTION_248_0();
  v241 = memcpy(v238, v239, v240);
  if (!v232)
  {
    if (!v237)
    {
      *__dst = 0;
      OUTLINED_FUNCTION_266(v241, v242, v243, v244, v245, v246, v247, v248, v326[0]);
      outlined destroy of IntentApplication?(__dst, &_s10OmniSearch28TicketedTransportationEntityVSgMd, &_s10OmniSearch28TicketedTransportationEntityVSgMR);
      goto LABEL_51;
    }

LABEL_57:
    *__dst = v232;
    memcpy(&__dst[8], v326, 0x68uLL);
    *&__dst[112] = v237;
    memcpy(&__dst[120], v351, 0x68uLL);
    v31 = &_s10OmniSearch28TicketedTransportationEntityVSg_ADtMd;
    v32 = &_s10OmniSearch28TicketedTransportationEntityVSg_ADtMR;
    v201 = __dst;
    goto LABEL_42;
  }

  *__dst = v232;
  OUTLINED_FUNCTION_266(v241, v242, v243, v244, v245, v246, v247, v248, v326[0]);
  memcpy(v358, __dst, 0x70uLL);
  if (!v237)
  {
    v273 = OUTLINED_FUNCTION_127_4();
    memcpy(v273, v274, 0x70uLL);
    outlined init with copy of ResourceBundle?(__dst, v349, &_s10OmniSearch28TicketedTransportationEntityVSgMd, &_s10OmniSearch28TicketedTransportationEntityVSgMR);
    outlined destroy of TicketedTransportationEntity(v350);
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_248_0();
  memcpy(v249, v250, v251);
  v350[0] = v237;
  outlined init with copy of ResourceBundle?(__dst, v349, &_s10OmniSearch28TicketedTransportationEntityVSgMd, &_s10OmniSearch28TicketedTransportationEntityVSgMR);
  v252 = static TicketedTransportationEntity.== infix(_:_:)(v358);
  memcpy(v335, v350, sizeof(v335));
  outlined destroy of TicketedTransportationEntity(v335);
  memcpy(v349, v358, 0x70uLL);
  outlined destroy of TicketedTransportationEntity(v349);
  v350[0] = v232;
  memcpy(&v350[1], v326, 0x68uLL);
  outlined destroy of IntentApplication?(v350, &_s10OmniSearch28TicketedTransportationEntityVSgMd, &_s10OmniSearch28TicketedTransportationEntityVSgMR);
  if ((v252 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_51:
  v253 = v1[6];
  EntityProperty.wrappedValue.getter();
  memcpy(__dst, v358, 0x98uLL);
  v254 = v0[6];
  EntityProperty.wrappedValue.getter();
  memcpy(&__dst[152], v350, 0x98uLL);
  memcpy(__src, __dst, 0x98uLL);
  v255 = OUTLINED_FUNCTION_101_4(__src);
  if (v12)
  {
    memcpy(v356, &__dst[152], 0x98uLL);
    v263 = OUTLINED_FUNCTION_101_4(v356);
    if (v12)
    {
      v271 = OUTLINED_FUNCTION_112_4(v263, v264, v265, v266, v267, v268, v269, v270, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
      memcpy(v271, v272, 0x98uLL);
      outlined destroy of IntentApplication?(v349, &_s10OmniSearch24VehicleReservationEntityVSgMd, &_s10OmniSearch24VehicleReservationEntityVSgMR);
LABEL_63:
      v301 = v1[7];
      EntityProperty.wrappedValue.getter();
      memcpy(__dst, v350, 0x88uLL);
      v302 = v0[7];
      EntityProperty.wrappedValue.getter();
      memcpy(&__dst[136], v349, 0x88uLL);
      OUTLINED_FUNCTION_172_2(v358);
      v303 = OUTLINED_FUNCTION_101_4(v358);
      if (v12)
      {
        memcpy(v356, &__dst[136], 0x88uLL);
        v311 = OUTLINED_FUNCTION_101_4(v356);
        if (v12)
        {
          v319 = OUTLINED_FUNCTION_143_2(v311, v312, v313, v314, v315, v316, v317, v318, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0]);
          memcpy(v319, v320, 0x88uLL);
          outlined destroy of IntentApplication?(v335, &_s10OmniSearch18TicketedShowEntityVSgMd, &_s10OmniSearch18TicketedShowEntityVSgMR);
          goto LABEL_43;
        }
      }

      else
      {
        v321 = OUTLINED_FUNCTION_143_2(v303, v304, v305, v306, v307, v308, v309, v310, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0]);
        memcpy(v321, v322, 0x88uLL);
        memcpy(v356, &__dst[136], 0x88uLL);
        OUTLINED_FUNCTION_101_4(v356);
        if (!v323)
        {
          outlined init with copy of ResourceBundle?(v335, v326, &_s10OmniSearch18TicketedShowEntityVSgMd, &_s10OmniSearch18TicketedShowEntityVSgMR);
          static TicketedShowEntity.== infix(_:_:)(__dst);
          memcpy(v352, &__dst[136], sizeof(v352));
          outlined destroy of TicketedShowEntity(v352);
          OUTLINED_FUNCTION_172_2(v351);
          outlined destroy of TicketedShowEntity(v351);
          OUTLINED_FUNCTION_172_2(v326);
          outlined destroy of IntentApplication?(v326, &_s10OmniSearch18TicketedShowEntityVSgMd, &_s10OmniSearch18TicketedShowEntityVSgMR);
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_172_2(v326);
        outlined init with copy of ResourceBundle?(v335, v351, &_s10OmniSearch18TicketedShowEntityVSgMd, &_s10OmniSearch18TicketedShowEntityVSgMR);
        outlined destroy of TicketedShowEntity(v326);
      }

      v324 = OUTLINED_FUNCTION_170_2();
      memcpy(v324, v325, 0x110uLL);
      v31 = &_s10OmniSearch18TicketedShowEntityVSg_ADtMd;
      v32 = &_s10OmniSearch18TicketedShowEntityVSg_ADtMR;
      goto LABEL_41;
    }

    goto LABEL_61;
  }

  v275 = OUTLINED_FUNCTION_112_4(v255, v256, v257, v258, v259, v260, v261, v262, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0], v335[1], v335[2], v335[3], v335[4], v335[5], v335[6], v335[7], v335[8], v335[9], v335[10], v335[11], v335[12], v335[13], v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0]);
  memcpy(v275, v276, 0x98uLL);
  memcpy(v356, &__dst[152], 0x98uLL);
  v278 = OUTLINED_FUNCTION_101_4(v356);
  if (v277)
  {
    v286 = OUTLINED_FUNCTION_143_2(v278, v279, v280, v281, v282, v283, v284, v285, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0]);
    memcpy(v286, v287, 0x98uLL);
    outlined init with copy of ResourceBundle?(v349, v326, &_s10OmniSearch24VehicleReservationEntityVSgMd, &_s10OmniSearch24VehicleReservationEntityVSgMR);
    outlined destroy of VehicleReservationEntity(v335);
LABEL_61:
    v288 = OUTLINED_FUNCTION_170_2();
    memcpy(v288, v289, 0x130uLL);
    v31 = &_s10OmniSearch24VehicleReservationEntityVSg_ADtMd;
    v32 = &_s10OmniSearch24VehicleReservationEntityVSg_ADtMR;
    goto LABEL_41;
  }

  outlined init with copy of ResourceBundle?(v349, v335, &_s10OmniSearch24VehicleReservationEntityVSgMd, &_s10OmniSearch24VehicleReservationEntityVSgMR);
  v290 = static VehicleReservationEntity.== infix(_:_:)(__dst);
  memcpy(v351, &__dst[152], sizeof(v351));
  outlined destroy of VehicleReservationEntity(v351);
  memcpy(v326, __dst, sizeof(v326));
  v291 = outlined destroy of VehicleReservationEntity(v326);
  v299 = OUTLINED_FUNCTION_143_2(v291, v292, v293, v294, v295, v296, v297, v298, v326[0], v326[1], v326[2], v326[3], v326[4], v326[5], v326[6], v326[7], v326[8], v326[9], v326[10], v326[11], v326[12], v326[13], v326[14], v326[15], v326[16], v326[17], v326[18], v327, v328, v329, v330, v331, v332, v333, v334, v335[0]);
  memcpy(v299, v300, 0x98uLL);
  outlined destroy of IntentApplication?(v335, &_s10OmniSearch24VehicleReservationEntityVSgMd, &_s10OmniSearch24VehicleReservationEntityVSgMR);
  if (v290)
  {
    goto LABEL_63;
  }

LABEL_43:
  OUTLINED_FUNCTION_203();
}

uint64_t EventEntity.convertToSystemIntentValue()@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  EntityProperty.wrappedValue.getter();
  v5 = *(type metadata accessor for EventEntity() + 56);
  v6 = type metadata accessor for SearchPreExtractedEventStandardRepresentation();
  outlined init with copy of ResourceBundle?(v2 + v5, &a1[*(v6 + 20)], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v7 = v2[9];
  v8 = v2[10];
  *a1 = v11;
  v9 = &a1[*(v6 + 24)];
  *v9 = v7;
  v9[1] = v8;
  return outlined copy of Data?(v7, v8);
}

void EventEntity.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v22;
  a20 = v23;
  v213 = v24;
  OUTLINED_FUNCTION_113();
  v25 = type metadata accessor for SearchPreExtractedEventStandardRepresentation();
  v26 = OUTLINED_FUNCTION_17(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_39_0();
  v210 = v29;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_14_2();
  v212 = v31;
  OUTLINED_FUNCTION_78_0();
  v32 = type metadata accessor for Trip();
  v33 = OUTLINED_FUNCTION_14(v32);
  v208 = v34;
  v209 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_39_0();
  v207 = v37;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_2();
  v206 = v39;
  OUTLINED_FUNCTION_78_0();
  v40 = type metadata accessor for Party();
  v41 = OUTLINED_FUNCTION_14(v40);
  v204 = v42;
  v205 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39_0();
  v203 = v45;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14_2();
  v202 = v47;
  OUTLINED_FUNCTION_78_0();
  v48 = type metadata accessor for Appointment();
  v49 = OUTLINED_FUNCTION_14(v48);
  v200 = v50;
  v201 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  v199 = v53;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_14_2();
  v198 = v55;
  OUTLINED_FUNCTION_78_0();
  v56 = type metadata accessor for TicketedShow();
  v57 = OUTLINED_FUNCTION_14(v56);
  v196 = v58;
  v197 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v62);
  v63 = type metadata accessor for TicketedTransportation();
  v64 = OUTLINED_FUNCTION_256_1(v63);
  v65 = OUTLINED_FUNCTION_14(v64);
  v195 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v70);
  v71 = type metadata accessor for RentalCarReservation();
  v72 = OUTLINED_FUNCTION_253_1(v71);
  v73 = OUTLINED_FUNCTION_14(v72);
  v194 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v78);
  v79 = type metadata accessor for RestaurantReservation();
  v80 = OUTLINED_FUNCTION_245_1(v79);
  v81 = OUTLINED_FUNCTION_14(v80);
  v193 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v86);
  v192 = type metadata accessor for HotelReservation();
  v87 = OUTLINED_FUNCTION_14(v192);
  v191 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v92);
  v93 = type metadata accessor for EventEntity();
  v94 = v93 - 8;
  v95 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_36();
  v211 = v97 - v96;
  OUTLINED_FUNCTION_78_0();
  v190 = type metadata accessor for FlightReservation();
  v98 = OUTLINED_FUNCTION_14(v190);
  v189[2] = v99;
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v102);
  v104 = v189 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v105);
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v108);
  v110 = v189 - v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10ResultItemOSgMd, &_s10OmniSearch0B10ResultItemOSgMR);
  v112 = OUTLINED_FUNCTION_114(v111);
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_109();
  v117 = v115 - v116;
  MEMORY[0x28223BE20](v118);
  v119 = OUTLINED_FUNCTION_263_0();
  v120 = OUTLINED_FUNCTION_114(v119);
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch12EventSubTypeOGMR);
  OUTLINED_FUNCTION_18_11();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_74_6();
  *v20 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch017FlightReservationC0VSgGMR);
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v20[1] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012GenericEventC0VSgGMR);
  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_214_0();
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  OUTLINED_FUNCTION_74_6();
  v20[2] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch016HotelReservationC0VSgGMR);
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v20[3] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch021RestaurantReservationC0VSgGMR);
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v20[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch022TicketedTransportationC0VSgGMR);
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  OUTLINED_FUNCTION_74_6();
  v20[5] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch018VehicleReservationC0VSgGMR);
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  OUTLINED_FUNCTION_74_6();
  v20[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch012TicketedShowC0VSgGMR);
  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_214_0();
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  OUTLINED_FUNCTION_74_6();
  v20[7] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013ShippingOrderC0VSgGMR);
  v123 = v213;
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  OUTLINED_FUNCTION_74_6();
  v20[8] = EntityProperty<>.init(title:)();
  *(v20 + 9) = xmmword_25DBC9410;
  v124 = *(v94 + 64);
  v125 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v125);
  v214 = v25;
  v129 = *(v25 + 20);
  outlined init with copy of ResourceBundle?(&v123[v129], v110, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_166(v110, 1, v125);
  if (v130)
  {
    outlined destroy of IntentApplication?(v110, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    type metadata accessor for SearchResultItem(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
    outlined destroy of IntentApplication?(v21, &_s10OmniSearch0B10ResultItemOSgMd, &_s10OmniSearch0B10ResultItemOSgMR);
LABEL_4:
    v135 = v212;
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v136 = type metadata accessor for Logger();
    __swift_project_value_buffer(v136, static Logging.search);
    OUTLINED_FUNCTION_104_4();
    outlined init with copy of EventEntity(v123, v135, v137);
    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = v123;
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v215 = v142;
      *v141 = 136315138;
      OUTLINED_FUNCTION_104_4();
      outlined init with copy of EventEntity(v135, v210, v143);
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_103_5();
      outlined destroy of EventEntity();
      v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v141 + 4) = v144;
      _os_log_impl(&dword_25D85C000, v138, v139, "Unable to init EventEntity with SearchPreExtractedEventStandardRepresentation: %s. Initing Event Entity with just subtype and card", v141, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v142);
      OUTLINED_FUNCTION_42_0();
      v123 = v140;
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      OUTLINED_FUNCTION_103_5();
      outlined destroy of EventEntity();
    }
  }

  else
  {
    v145 = OUTLINED_FUNCTION_173_1();
    outlined init with copy of EventEntity(v145, v146, v147);
    outlined destroy of EventEntity();
    v148 = type metadata accessor for SearchResultItem(0);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v148);
    v149 = OUTLINED_FUNCTION_45_0();
    outlined init with take of SearchResultItem?(v149, v150);
    v151 = swift_getEnumCaseMultiPayload() - 15;
    switch(v151)
    {
      case 0:
        v25 = v200;
        v110 = v201;
        OUTLINED_FUNCTION_128_4();
        v21 = v198;
        v152 = OUTLINED_FUNCTION_45_0();
        v153(v152);
        OUTLINED_FUNCTION_93_5();
        v154 = OUTLINED_FUNCTION_48_5();
        v155(v154);
        OUTLINED_FUNCTION_38_9();
        EventEntity.init(appointment:)();
        goto LABEL_19;
      case 1:
        v162 = *(v117 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48));

        OUTLINED_FUNCTION_88_5(&v208);
        OUTLINED_FUNCTION_186_2();
        v163();
        OUTLINED_FUNCTION_93_5();
        v164(v189[1], v104, v110);
        OUTLINED_FUNCTION_38_9();
        EventEntity.init(reservation:)();
        (*(v25 + 8))(v104, v110);
        goto LABEL_20;
      case 2:
        OUTLINED_FUNCTION_88_5(&v212);
        OUTLINED_FUNCTION_86_5();
        OUTLINED_FUNCTION_186_2();
        v156();
        OUTLINED_FUNCTION_93_5();
        v157 = OUTLINED_FUNCTION_44_9();
        v158(v157);
        OUTLINED_FUNCTION_38_9();
        EventEntity.init(reservation:)();
        goto LABEL_19;
      case 3:
        v25 = v204;
        v110 = v205;
        OUTLINED_FUNCTION_128_4();
        v21 = v202;
        v172 = OUTLINED_FUNCTION_45_0();
        v173(v172);
        OUTLINED_FUNCTION_93_5();
        v174 = OUTLINED_FUNCTION_48_5();
        v175(v174);
        OUTLINED_FUNCTION_38_9();
        EventEntity.init(party:)();
        goto LABEL_19;
      case 4:
        OUTLINED_FUNCTION_88_5(v216);
        OUTLINED_FUNCTION_86_5();
        OUTLINED_FUNCTION_186_2();
        v176();
        OUTLINED_FUNCTION_93_5();
        v177 = OUTLINED_FUNCTION_44_9();
        v178(v177);
        OUTLINED_FUNCTION_38_9();
        EventEntity.init(reservation:)();
        goto LABEL_19;
      case 5:
        OUTLINED_FUNCTION_88_5(&a11);
        OUTLINED_FUNCTION_86_5();
        OUTLINED_FUNCTION_186_2();
        v159();
        OUTLINED_FUNCTION_93_5();
        v160 = OUTLINED_FUNCTION_44_9();
        v161(v160);
        OUTLINED_FUNCTION_38_9();
        EventEntity.init(reservation:)();
        goto LABEL_19;
      case 7:
        OUTLINED_FUNCTION_88_5(&a15);
        OUTLINED_FUNCTION_86_5();
        OUTLINED_FUNCTION_186_2();
        v165();
        OUTLINED_FUNCTION_93_5();
        v166 = OUTLINED_FUNCTION_44_9();
        v167(v166);
        OUTLINED_FUNCTION_38_9();
        EventEntity.init(reservation:)();
        goto LABEL_19;
      case 8:
        v25 = v196;
        v110 = v197;
        OUTLINED_FUNCTION_128_4();
        v168 = OUTLINED_FUNCTION_86_5();
        v169(v168);
        OUTLINED_FUNCTION_93_5();
        v170 = OUTLINED_FUNCTION_44_9();
        v171(v170);
        OUTLINED_FUNCTION_38_9();
        EventEntity.init(reservation:)();
        goto LABEL_19;
      case 9:
        v25 = v208;
        v110 = v209;
        OUTLINED_FUNCTION_128_4();
        v21 = v206;
        v179 = OUTLINED_FUNCTION_45_0();
        v180(v179);
        OUTLINED_FUNCTION_93_5();
        v181 = OUTLINED_FUNCTION_48_5();
        v182(v181);
        OUTLINED_FUNCTION_38_9();
        EventEntity.init(trip:)();
LABEL_19:
        (*(v25 + 8))(v21, v110);
LABEL_20:
        v183 = OUTLINED_FUNCTION_107();
        outlined assign with take of EventEntity(v183, v184);
        break;
      default:
        outlined destroy of EventEntity();
        goto LABEL_4;
    }
  }

  v185 = *v20;
  v216[7] = *v123;
  EntityProperty.wrappedValue.setter();
  v186 = &v123[*(v214 + 24)];
  v187 = *v186;
  v188 = v186[1];
  outlined consume of Data?(v20[9], v20[10]);
  v20[9] = v187;
  v20[10] = v188;
  outlined assign with take of SearchResult?(&v123[v129], v20 + v124);
  OUTLINED_FUNCTION_148();
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance EventEntity(uint64_t a1)
{
  v2 = _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_0(&lazy protocol witness table cache variable for type EventEntity and conformance EventEntity);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for static Transferable.transferRepresentation.getter in conformance EventEntity(uint64_t a1)
{
  v2 = _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_0(&lazy protocol witness table cache variable for type EventEntity and conformance EventEntity);

  return MEMORY[0x28210C5A0](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance EventEntity()
{
  _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_0(&lazy protocol witness table cache variable for type EventEntity and conformance EventEntity);

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance EventEntity(uint64_t a1)
{
  v2 = _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_0(&lazy protocol witness table cache variable for type EventEntity and conformance EventEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance EventEntity(uint64_t a1)
{
  v2 = _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_0(&lazy protocol witness table cache variable for type EventEntity and conformance EventEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static EventSubType.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, &static EventSubType.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

OmniSearch::EventSubType_optional __swiftcall EventSubType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EventSubType.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EventSubType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EventSubType@<X0>(unint64_t *a1@<X8>)
{
  result = EventSubType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance EventSubType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EventSubType and conformance EventSubType();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance EventSubType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EventSubType and conformance EventSubType();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t (*FlightReservationEntity.flightNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*FlightReservationEntity.carrier.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for FlightReservationEntity.status : FlightReservationEntity(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  memcpy(v6, a2, sizeof(v6));

  outlined init with copy of FlightReservationEntity(v6, __dst);
  FlightReservationEntity.status.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return outlined destroy of FlightReservationEntity(__dst);
}

uint64_t (*FlightReservationEntity.status.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t FlightReservationEntity.boardingDateTime.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 24);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*FlightReservationEntity.boardingDateTime.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*FlightReservationEntity.departureAirportCode.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*FlightReservationEntity.departureAirportName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*FlightReservationEntity.departureTerminal.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*FlightReservationEntity.departureGate.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t FlightReservationEntity.departureDateTime.setter()
{
  OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for DateComponents();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v7 = *(v0 + 64);
  v8 = OUTLINED_FUNCTION_49_9();
  v9(v8);
  EntityProperty.wrappedValue.setter();
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_32_0();
  return v12(v11);
}

uint64_t (*FlightReservationEntity.departureDateTime.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*FlightReservationEntity.arrivalAirportCode.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 72);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*FlightReservationEntity.arrivalAirportName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 80);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*FlightReservationEntity.arrivalTerminal.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 88);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t FlightReservationEntity.arrivalGate.getter()
{
  v1 = *(v0 + 96);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*FlightReservationEntity.arrivalGate.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 96);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t FlightReservationEntity.arrivalDateTime.setter()
{
  OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for DateComponents();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v7 = *(v0 + 104);
  v8 = OUTLINED_FUNCTION_49_9();
  v9(v8);
  EntityProperty.wrappedValue.setter();
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_32_0();
  return v12(v11);
}

uint64_t (*FlightReservationEntity.arrivalDateTime.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 104);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for FlightReservationEntity.departureDateTime : FlightReservationEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = type metadata accessor for DateComponents();
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11, a1);
  OUTLINED_FUNCTION_277(v16);
  outlined init with copy of FlightReservationEntity(v16, v17);
  a5(v13);
  OUTLINED_FUNCTION_277(v17);
  return outlined destroy of FlightReservationEntity(v17);
}

uint64_t FlightReservationEntity.duration.setter()
{
  OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for DateComponents();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v7 = *(v0 + 112);
  v8 = OUTLINED_FUNCTION_49_9();
  v9(v8);
  EntityProperty.wrappedValue.setter();
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_32_0();
  return v12(v11);
}

uint64_t (*FlightReservationEntity.duration.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 112);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t FlightReservationEntity.passengerNames.getter()
{
  v1 = *(v0 + 120);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*FlightReservationEntity.passengerNames.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 120);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t FlightReservationEntity.seatNumbers.getter()
{
  v1 = *(v0 + 128);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for FlightReservationEntity.passengerNames : FlightReservationEntity(uint64_t *a1)
{
  OUTLINED_FUNCTION_74_7(a1);
  memcpy(v3, v4, 0xD8uLL);

  outlined init with copy of FlightReservationEntity(&v6, v7);
  v1(v2);
  OUTLINED_FUNCTION_277(v7);
  return outlined destroy of FlightReservationEntity(v7);
}

uint64_t (*FlightReservationEntity.seatNumbers.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 128);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t FlightReservationEntity.bookingProvider.getter()
{
  v1 = *(v0 + 136);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*FlightReservationEntity.bookingProvider.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 136);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t FlightReservationEntity.designator.getter()
{
  v1 = *(v0 + 144);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*FlightReservationEntity.designator.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 144);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t FlightReservationEntity.confirmationNumber.getter()
{
  v1 = *(v0 + 152);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for FlightReservationEntity.flightNumber : FlightReservationEntity(uint64_t *a1)
{
  OUTLINED_FUNCTION_96_2(a1);
  memcpy(v2, v3, 0xD8uLL);

  outlined init with copy of FlightReservationEntity(&v6, v7);
  v4 = OUTLINED_FUNCTION_34_11();
  v1(v4);
  OUTLINED_FUNCTION_277(v7);
  return outlined destroy of FlightReservationEntity(v7);
}

uint64_t (*FlightReservationEntity.confirmationNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 152);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void key path setter for FlightReservationEntity.boardingDateTime : FlightReservationEntity()
{
  OUTLINED_FUNCTION_202();
  v9 = OUTLINED_FUNCTION_81_7(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82_6(v13, v14[0]);
  memcpy(v14, v1, sizeof(v14));
  outlined init with copy of FlightReservationEntity(v14, v15);
  v0(v2);
  memcpy(v15, v1, sizeof(v15));
  outlined destroy of FlightReservationEntity(v15);
  OUTLINED_FUNCTION_203();
}

uint64_t FlightReservationEntity.checkInUrl.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 160);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*FlightReservationEntity.checkInUrl.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 160);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t FlightReservationEntity.totalDuration.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 168);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*FlightReservationEntity.totalDuration.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 168);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t FlightReservationEntity.cost.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 176);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*FlightReservationEntity.cost.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 176);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t FlightReservationEntity.encodedSearchableItem.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 184);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*FlightReservationEntity.encodedSearchableItem.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 184);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t FlightReservationEntity.openCommand.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 192);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*FlightReservationEntity.openCommand.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 192);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void FlightReservationEntity.init()()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_49_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_78_0();
  v47 = type metadata accessor for DateComponents();
  v10 = OUTLINED_FUNCTION_14(v47);
  v50 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_109();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_2();
  v46 = v18;
  OUTLINED_FUNCTION_78_0();
  v19 = type metadata accessor for LocalizedStringResource();
  v20 = OUTLINED_FUNCTION_114(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_233_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_141_2();
  LocalizedStringResource.init(stringLiteral:)();
  *v1 = OUTLINED_FUNCTION_182_2();
  OUTLINED_FUNCTION_118_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 16) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 24) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 32) = OUTLINED_FUNCTION_182_2();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 40) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_42_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_145_2();
  *(v1 + 64) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 72) = OUTLINED_FUNCTION_182_2();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 88) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_81_6();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 96) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_145_2();
  *(v1 + 104) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 112) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_23_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 120) = EntityProperty<>.init(title:)();
  v23 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_24_10(v23);
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 128) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 136) = OUTLINED_FUNCTION_182_2();
  OUTLINED_FUNCTION_228_1();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 144) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 152) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_150_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 160) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_97_3(0x206C61746F54);
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 168) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA20IntentCurrencyAmountVSgGMd, &_s10AppIntents14EntityPropertyCyAA20IntentCurrencyAmountVSgGMR);
  OUTLINED_FUNCTION_88_4();
  *(v1 + 176) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 184) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + 192) = EntityProperty<>.init(title:)();
  *(v1 + 200) = xmmword_25DBC9410;
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  v48 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v45 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_43_7();
  v44 = *(v50 + 16);
  v44(v16, v46, v47);
  EntityProperty.wrappedValue.setter();
  v49 = *(v50 + 8);
  v49(v46, v47);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v48);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v45);
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_179_0();
  OUTLINED_FUNCTION_43_7();
  v44(v16, v46, v47);
  EntityProperty.wrappedValue.setter();
  v49(v46, v47);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v48);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v45);
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_179_0();
  OUTLINED_FUNCTION_43_7();
  v44(v16, v46, v47);
  EntityProperty.wrappedValue.setter();
  v49(v46, v47);
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_148();
}

uint64_t static FlightReservationEntity.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, &static FlightReservationEntity.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t FlightReservationEntity.description.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_189_2();
  v2 = EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_67_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  OUTLINED_FUNCTION_216_1();

  return v13;
}

uint64_t FlightReservationEntity.cardData.getter()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  return OUTLINED_FUNCTION_35_11();
}

uint64_t FlightReservationEntity.cardData.setter()
{
  OUTLINED_FUNCTION_93();
  result = outlined consume of Data?(*(v1 + 200), *(v1 + 208));
  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  return result;
}

BOOL static FlightReservationEntity.== infix(_:_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v55 = a1[4];
  v56 = a1[3];
  v54 = a1[5];
  v4 = a1[6];
  v5 = OUTLINED_FUNCTION_109_4(a1, a1[7]);
  v52 = v5[14];
  v50 = v5[15];
  v48 = v5[16];
  v46 = v5[17];
  v44 = v5[18];
  v42 = v5[19];
  v40 = v5[20];
  v38 = v5[21];
  v36 = v5[22];
  v34 = v5[23];
  v28 = v5[24];
  v31 = v5[25];
  v32 = v5[26];
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  v11 = v6[4];
  v53 = v6[5];
  v12 = v6[6];
  OUTLINED_FUNCTION_130_4(v6, v6[7]);
  v51 = v13[14];
  v49 = v13[15];
  v47 = v13[16];
  v45 = v13[17];
  v43 = v13[18];
  v41 = v13[19];
  v39 = v13[20];
  v37 = v13[21];
  v35 = v13[22];
  v33 = v13[23];
  v27 = v13[24];
  v29 = v13[25];
  v30 = v13[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_5_14(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_129_4();
  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_64_0();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  lazy protocol witness table accessor for type DateComponents? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMR);
  OUTLINED_FUNCTION_105_5();
  _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_0(v14);
  if ((OUTLINED_FUNCTION_177_2() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_177_2() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_177_2() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  v15 = OUTLINED_FUNCTION_47_9(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_76_4() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  lazy protocol witness table accessor for type URL? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA20IntentCurrencyAmountVSgGMd, &_s10AppIntents14EntityPropertyCyAA20IntentCurrencyAmountVSgGMR);
  lazy protocol witness table accessor for type IntentCurrencyAmount? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  lazy protocol witness table accessor for type IntentFile? and conformance <A> A?();
  if ((OUTLINED_FUNCTION_165_2() & 1) == 0 || (static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_4();
  if (!v21 & v20)
  {
    OUTLINED_FUNCTION_84_4();
    if (!v21 & v20)
    {
      v16 = OUTLINED_FUNCTION_107();
      outlined copy of Data?(v16, v17);
      outlined copy of Data?(v29, v30);
      v18 = OUTLINED_FUNCTION_107();
      outlined consume of Data?(v18, v19);
      return 1;
    }

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_84_4();
  if (!v21 & v20)
  {
LABEL_33:
    v22 = OUTLINED_FUNCTION_107();
    outlined copy of Data?(v22, v23);
    OUTLINED_FUNCTION_50_5(v29);
    return 0;
  }

  v24 = OUTLINED_FUNCTION_62_3();
  outlined copy of Data?(v24, v25);
  OUTLINED_FUNCTION_33_9(v29);
  OUTLINED_FUNCTION_32_12();
  return (v15 & 1) != 0;
}

uint64_t (*protocol witness for SpotlightItemProviding.encodedSearchableItem.modify in conformance FlightReservationEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 184);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*protocol witness for SpotlightItemProviding.openCommand.modify in conformance FlightReservationEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 192);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance FlightReservationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance FlightReservationEntity()
{
  lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance FlightReservationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance FlightReservationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t (*HotelReservationEntity.address.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*HotelReservationEntity.bookingProvider.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*HotelReservationEntity.businessName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for HotelReservationEntity.checkInDateTime : HotelReservationEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of ResourceBundle?(a1, &v8[-v6], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  memcpy(v8, a2, sizeof(v8));
  outlined init with copy of HotelReservationEntity(v8, v9);
  HotelReservationEntity.checkInDateTime.setter();
  memcpy(v9, a2, sizeof(v9));
  return outlined destroy of HotelReservationEntity(v9);
}

uint64_t HotelReservationEntity.checkInDateTime.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 24);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*HotelReservationEntity.checkInDateTime.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for HotelReservationEntity.checkOutDateTime : HotelReservationEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of ResourceBundle?(a1, &v8[-v6], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  memcpy(v8, a2, sizeof(v8));
  outlined init with copy of HotelReservationEntity(v8, v9);
  HotelReservationEntity.checkOutDateTime.setter();
  memcpy(v9, a2, sizeof(v9));
  return outlined destroy of HotelReservationEntity(v9);
}

uint64_t HotelReservationEntity.checkOutDateTime.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 32);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*HotelReservationEntity.checkOutDateTime.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for HotelReservationEntity.eventDuration : HotelReservationEntity(uint64_t a1, const void *a2)
{
  v4 = type metadata accessor for DateComponents();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  memcpy(v9, a2, sizeof(v9));
  outlined init with copy of HotelReservationEntity(v9, v10);
  HotelReservationEntity.eventDuration.setter();
  memcpy(v10, a2, sizeof(v10));
  return outlined destroy of HotelReservationEntity(v10);
}

uint64_t HotelReservationEntity.eventDuration.setter()
{
  OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for DateComponents();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v7 = *(v0 + 40);
  v8 = OUTLINED_FUNCTION_49_9();
  v9(v8);
  EntityProperty.wrappedValue.setter();
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_32_0();
  return v12(v11);
}

uint64_t (*HotelReservationEntity.eventDuration.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*HotelReservationEntity.guest.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*HotelReservationEntity.numberOfRooms.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*HotelReservationEntity.phoneNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t HotelReservationEntity.roomNumbers.getter()
{
  v1 = *(v0 + 72);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for HotelReservationEntity.roomNumbers : HotelReservationEntity(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  memcpy(v5, a2, sizeof(v5));

  outlined init with copy of HotelReservationEntity(v5, __dst);
  HotelReservationEntity.roomNumbers.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return outlined destroy of HotelReservationEntity(__dst);
}

uint64_t (*HotelReservationEntity.roomNumbers.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 72);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for HotelReservationEntity.url : HotelReservationEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of ResourceBundle?(a1, &v8[-v6], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  memcpy(v8, a2, sizeof(v8));
  outlined init with copy of HotelReservationEntity(v8, v9);
  HotelReservationEntity.url.setter();
  memcpy(v9, a2, sizeof(v9));
  return outlined destroy of HotelReservationEntity(v9);
}

uint64_t HotelReservationEntity.url.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 80);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*HotelReservationEntity.url.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 80);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*HotelReservationEntity.confirmationNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 88);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for HotelReservationEntity.encodedSearchableItem : HotelReservationEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9[-v6];
  outlined init with copy of ResourceBundle?(a1, &v9[-v6], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  memcpy(v9, a2, sizeof(v9));
  outlined init with copy of HotelReservationEntity(v9, v10);
  HotelReservationEntity.encodedSearchableItem.setter(v7);
  memcpy(v10, a2, sizeof(v10));
  return outlined destroy of HotelReservationEntity(v10);
}

uint64_t (*HotelReservationEntity.encodedSearchableItem.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 96);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for HotelReservationEntity.openCommand : HotelReservationEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of ResourceBundle?(a1, &v8[-v6], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  memcpy(v8, a2, sizeof(v8));
  outlined init with copy of HotelReservationEntity(v8, v9);
  HotelReservationEntity.openCommand.setter();
  memcpy(v9, a2, sizeof(v9));
  return outlined destroy of HotelReservationEntity(v9);
}

uint64_t HotelReservationEntity.openCommand.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 104);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*HotelReservationEntity.openCommand.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 104);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void HotelReservationEntity.init()()
{
  OUTLINED_FUNCTION_155();
  v42 = v0;
  v43 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_49_3();
  v39[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_49_3();
  v39[0] = v13;
  OUTLINED_FUNCTION_78_0();
  v40 = type metadata accessor for DateComponents();
  v14 = OUTLINED_FUNCTION_14(v40);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v19);
  v21 = v39 - v20;
  v22 = type metadata accessor for LocalizedStringResource();
  v23 = OUTLINED_FUNCTION_114(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_233_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_255_0();
  LocalizedStringResource.init(stringLiteral:)();
  *v3 = OUTLINED_FUNCTION_182_2();
  OUTLINED_FUNCTION_250_1();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 8) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_10_12();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 16) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_268();
  *(v3 + 24) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_268();
  *(v3 + 32) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVGMR);
  v26 = OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_97_3(v26);
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 40) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_195_1();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 48) = OUTLINED_FUNCTION_182_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiSgGMd, &_s10AppIntents14EntityPropertyCySiSgGMR);
  OUTLINED_FUNCTION_134_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 56) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 64) = OUTLINED_FUNCTION_182_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_24_10(0x6D6F6F52u);
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 72) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 88) = OUTLINED_FUNCTION_182_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_58_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 96) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v3 + 104) = EntityProperty<>.init(title:)();
  *(v3 + 112) = xmmword_25DBC9410;
  v41 = MEMORY[0x277D84F90];
  EntityProperty.wrappedValue.setter();
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_43_7();
  v35 = *(v16 + 16);
  v36 = OUTLINED_FUNCTION_64_0();
  v37 = v40;
  v38(v36);
  EntityProperty.wrappedValue.setter();
  (*(v16 + 8))(v21, v37);
  OUTLINED_FUNCTION_148();
}

uint64_t static HotelReservationEntity.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, static HotelReservationEntity.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t HotelReservationEntity.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  EntityProperty.wrappedValue.getter();
  if (!v15)
  {
    OUTLINED_FUNCTION_189_2();
    v4 = EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_67_5(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_216_1();
  }

  return v14;
}

uint64_t HotelReservationEntity.cardData.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  return OUTLINED_FUNCTION_35_11();
}

uint64_t HotelReservationEntity.cardData.setter()
{
  OUTLINED_FUNCTION_93();
  result = outlined consume of Data?(*(v1 + 112), *(v1 + 120));
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t (*protocol witness for SpotlightItemProviding.encodedSearchableItem.modify in conformance HotelReservationEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 96);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*protocol witness for SpotlightItemProviding.openCommand.modify in conformance HotelReservationEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 104);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance HotelReservationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance HotelReservationEntity()
{
  lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance HotelReservationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance HotelReservationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t (*RestaurantReservationEntity.address.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*RestaurantReservationEntity.reservationUnderName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t RestaurantReservationEntity.customerNames.getter()
{
  v1 = *(v0 + 16);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for RestaurantReservationEntity.customerNames : RestaurantReservationEntity(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  memcpy(v5, a2, sizeof(v5));

  outlined init with copy of RestaurantReservationEntity(v5, __dst);
  RestaurantReservationEntity.customerNames.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return outlined destroy of RestaurantReservationEntity(__dst);
}

uint64_t (*RestaurantReservationEntity.customerNames.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*RestaurantReservationEntity.bookingProvider.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*RestaurantReservationEntity.businessName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*RestaurantReservationEntity.mealType.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for HotelReservationEntity.numberOfRooms : HotelReservationEntity()
{
  OUTLINED_FUNCTION_116_3();
  v5 = *v4;
  v6 = *(v4 + 8);
  memcpy(v9, v7, sizeof(v9));
  v1(v9, __dst);
  v2(v5, v6);
  memcpy(__dst, v3, sizeof(__dst));
  return v0(__dst);
}

uint64_t (*RestaurantReservationEntity.partySize.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*RestaurantReservationEntity.phoneNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for RestaurantReservationEntity.startDateTime : RestaurantReservationEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of ResourceBundle?(a1, &v8[-v6], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  memcpy(v8, a2, sizeof(v8));
  outlined init with copy of RestaurantReservationEntity(v8, v9);
  RestaurantReservationEntity.startDateTime.setter();
  memcpy(v9, a2, sizeof(v9));
  return outlined destroy of RestaurantReservationEntity(v9);
}

uint64_t RestaurantReservationEntity.startDateTime.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 64);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*RestaurantReservationEntity.startDateTime.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t RestaurantReservationEntity.confirmationNumber.getter()
{
  v1 = *(v0 + 72);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*RestaurantReservationEntity.confirmationNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 72);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*RestaurantReservationEntity.status.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 80);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for RestaurantReservationEntity.encodedSearchableItem : RestaurantReservationEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of ResourceBundle?(a1, &v8[-v6], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  memcpy(v8, a2, sizeof(v8));
  outlined init with copy of RestaurantReservationEntity(v8, v9);
  RestaurantReservationEntity.encodedSearchableItem.setter();
  memcpy(v9, a2, sizeof(v9));
  return outlined destroy of RestaurantReservationEntity(v9);
}

uint64_t RestaurantReservationEntity.encodedSearchableItem.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 88);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*RestaurantReservationEntity.encodedSearchableItem.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 88);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for RestaurantReservationEntity.openCommand : RestaurantReservationEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9[-v6];
  outlined init with copy of ResourceBundle?(a1, &v9[-v6], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  memcpy(v9, a2, sizeof(v9));
  outlined init with copy of RestaurantReservationEntity(v9, v10);
  HotelReservationEntity.encodedSearchableItem.setter(v7);
  memcpy(v10, a2, sizeof(v10));
  return outlined destroy of RestaurantReservationEntity(v10);
}

uint64_t HotelReservationEntity.encodedSearchableItem.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 96);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*RestaurantReservationEntity.openCommand.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 96);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t RestaurantReservationEntity.guest.getter()
{
  v1 = *(v0 + 104);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for HotelReservationEntity.address : HotelReservationEntity()
{
  OUTLINED_FUNCTION_116_3();
  v5 = *v4;
  v6 = v4[1];
  memcpy(v10, v7, sizeof(v10));

  v1(v10, __dst);
  v8 = OUTLINED_FUNCTION_64_0();
  v2(v8);
  memcpy(__dst, v3, sizeof(__dst));
  return v0(__dst);
}

uint64_t (*RestaurantReservationEntity.guest.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 104);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

double RestaurantReservationEntity.init()()
{
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for LocalizedStringResource();
  v2 = OUTLINED_FUNCTION_114(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_255_0();
  OUTLINED_FUNCTION_106_2();
  OUTLINED_FUNCTION_78_5();
  *v0 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  OUTLINED_FUNCTION_33_8();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 24) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_10_12();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 32) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_257_1();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 40) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiSgGMd, &_s10AppIntents14EntityPropertyCySiSgGMR);
  OUTLINED_FUNCTION_191_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_3_19();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 64) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 72) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 80) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 88) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 96) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_195_1();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 104) = EntityProperty<>.init(title:)();
  result = 0.0;
  *(v0 + 112) = xmmword_25DBC9410;
  return result;
}

uint64_t static RestaurantReservationEntity.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, static RestaurantReservationEntity.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t RestaurantReservationEntity.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 72);
  EntityProperty.wrappedValue.getter();
  if (!v15)
  {
    OUTLINED_FUNCTION_189_2();
    v4 = EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_67_5(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_216_1();
  }

  return v14;
}

uint64_t (*protocol witness for SpotlightItemProviding.encodedSearchableItem.modify in conformance RestaurantReservationEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 88);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*protocol witness for SpotlightItemProviding.openCommand.modify in conformance RestaurantReservationEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 96);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance RestaurantReservationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance RestaurantReservationEntity()
{
  lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance RestaurantReservationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance RestaurantReservationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t (*TicketedTransportationEntity.arrivalStationName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*TicketedTransportationEntity.arrivalStationAddress.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t TicketedTransportationEntity.arrivalDateTime.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*TicketedTransportationEntity.arrivalDateTime.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*TicketedTransportationEntity.departureStationName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*TicketedTransportationEntity.departureStationAddress.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for TicketedTransportationEntity.arrivalDateTime : TicketedTransportationEntity()
{
  OUTLINED_FUNCTION_85_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_64_0();
  outlined init with copy of ResourceBundle?(v10, v11, v2, v1);
  memcpy(__dst, v3, sizeof(__dst));
  outlined init with copy of TicketedTransportationEntity(__dst, v15);
  v12 = OUTLINED_FUNCTION_242_1();
  v0(v12);
  memcpy(v15, v3, sizeof(v15));
  return outlined destroy of TicketedTransportationEntity(v15);
}

uint64_t TicketedTransportationEntity.departureDateTime.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 40);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*TicketedTransportationEntity.departureDateTime.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t TicketedTransportationEntity.duration.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 48);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*TicketedTransportationEntity.duration.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for TicketedTransportationEntity.arrivalStationName : TicketedTransportationEntity(uint64_t *a1)
{
  OUTLINED_FUNCTION_96_2(a1);
  memcpy(v3, v4, 0x70uLL);

  outlined init with copy of TicketedTransportationEntity(&v7, __dst);
  v5 = OUTLINED_FUNCTION_34_11();
  v1(v5);
  memcpy(__dst, v2, sizeof(__dst));
  return outlined destroy of TicketedTransportationEntity(__dst);
}

uint64_t (*TicketedTransportationEntity.eventSubType.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t TicketedTransportationEntity.passengerNames.getter()
{
  v1 = *(v0 + 64);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*TicketedTransportationEntity.passengerNames.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t TicketedTransportationEntity.seatNumbers.getter()
{
  v1 = *(v0 + 72);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for TicketedTransportationEntity.passengerNames : TicketedTransportationEntity(uint64_t *a1)
{
  OUTLINED_FUNCTION_74_7(a1);
  memcpy(v4, v5, 0x70uLL);

  outlined init with copy of TicketedTransportationEntity(&v7, __dst);
  v1(v3);
  memcpy(__dst, v2, sizeof(__dst));
  return outlined destroy of TicketedTransportationEntity(__dst);
}

uint64_t (*TicketedTransportationEntity.seatNumbers.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 72);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t TicketedTransportationEntity.encodedSearchableItem.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 80);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*TicketedTransportationEntity.encodedSearchableItem.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 80);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t TicketedTransportationEntity.openCommand.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 88);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*TicketedTransportationEntity.openCommand.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 88);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t TicketedTransportationEntity.init()()
{
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for LocalizedStringResource();
  v2 = OUTLINED_FUNCTION_114(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_214_0();
  OUTLINED_FUNCTION_78_5();
  *v0 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_81_6();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_95_4();
  *(v0 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 24) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 32) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_42_7();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_95_4();
  *(v0 + 40) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_194_2();
  *(v0 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 56) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_23_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 64) = EntityProperty<>.init(title:)();
  v5 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_39_8(v5 & 0xFFFF0000FFFFFFFFLL | 0x6E2000000000);
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 72) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 88) = EntityProperty<>.init(title:)();
  *(v0 + 96) = xmmword_25DBC9410;
  EntityProperty.wrappedValue.setter();
  return EntityProperty.wrappedValue.setter();
}

uint64_t static TicketedTransportationEntity.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, static TicketedTransportationEntity.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

unint64_t TicketedTransportationEntity.description.getter()
{
  v1 = *(v0 + 64);
  _StringGuts.grow(_:)(30);

  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F8A0](v4, MEMORY[0x277D837D0]);

  v2 = OUTLINED_FUNCTION_34_11();
  MEMORY[0x25F89F6C0](v2);

  return 0xD00000000000001CLL;
}

uint64_t TicketedTransportationEntity.cardData.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  return OUTLINED_FUNCTION_35_11();
}

uint64_t TicketedTransportationEntity.cardData.setter()
{
  OUTLINED_FUNCTION_93();
  result = outlined consume of Data?(*(v1 + 96), *(v1 + 104));
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t static TicketedTransportationEntity.== infix(_:_:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = OUTLINED_FUNCTION_46_8(a1);
  v42 = v5[8];
  v40 = v5[9];
  v38 = v5[10];
  v36 = v5[11];
  v33 = v5[12];
  v34 = v5[13];
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  OUTLINED_FUNCTION_45_7(v5, v6);
  v41 = v11[8];
  v39 = v11[9];
  v37 = v11[10];
  v35 = v11[11];
  v31 = v11[12];
  v32 = v11[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  v12 = OUTLINED_FUNCTION_5_14(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
  if ((OUTLINED_FUNCTION_225_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_11();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  lazy protocol witness table accessor for type DateComponents? and conformance <A> A?();
  OUTLINED_FUNCTION_118_0();
  if ((OUTLINED_FUNCTION_220_1() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_225_1() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_225_1() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_220_1() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_220_1() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_225_1() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  v13 = OUTLINED_FUNCTION_47_9(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  lazy protocol witness table accessor for type IntentFile? and conformance <A> A?();
  if ((OUTLINED_FUNCTION_165_2() & 1) == 0 || (static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v34 >> 60 == 15)
  {
    OUTLINED_FUNCTION_65_6();
    if (!(!v15 & v14))
    {
      goto LABEL_19;
    }

    v16 = OUTLINED_FUNCTION_94();
    outlined copy of Data?(v16, v17);
    outlined copy of Data?(v31, v12);
    v18 = OUTLINED_FUNCTION_94();
    outlined consume of Data?(v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_65_6();
    if (!v15 & v14)
    {
LABEL_19:
      v20 = OUTLINED_FUNCTION_94();
      outlined copy of Data?(v20, v21);
      v22 = OUTLINED_FUNCTION_34_11();
      outlined copy of Data?(v22, v23);
      v24 = OUTLINED_FUNCTION_94();
      outlined consume of Data?(v24, v25);
      v26 = OUTLINED_FUNCTION_34_11();
      outlined consume of Data?(v26, v27);
      return 0;
    }

    v29 = OUTLINED_FUNCTION_62_3();
    outlined copy of Data?(v29, v30);
    OUTLINED_FUNCTION_33_9(v31);
    OUTLINED_FUNCTION_32_12();
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t (*protocol witness for SpotlightItemProviding.encodedSearchableItem.modify in conformance TicketedTransportationEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 80);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*protocol witness for SpotlightItemProviding.openCommand.modify in conformance TicketedTransportationEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 88);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance TicketedTransportationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance TicketedTransportationEntity()
{
  lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance TicketedTransportationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance TicketedTransportationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t (*VehicleReservationEntity.bookingProvider.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*VehicleReservationEntity.cost.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*VehicleReservationEntity.dropOffAddress.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*VehicleReservationEntity.dropOffBusinessName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t VehicleReservationEntity.dropOffDateTime.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 32);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*VehicleReservationEntity.dropOffDateTime.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*VehicleReservationEntity.dropOffPhoneNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void key path setter for VehicleReservationEntity.dropOffDateTime : VehicleReservationEntity()
{
  OUTLINED_FUNCTION_202();
  v9 = OUTLINED_FUNCTION_81_7(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82_6(v13, v14[0]);
  memcpy(v14, v1, sizeof(v14));
  outlined init with copy of VehicleReservationEntity(v14, v15);
  v0(v2);
  memcpy(v15, v1, sizeof(v15));
  outlined destroy of VehicleReservationEntity(v15);
  OUTLINED_FUNCTION_203();
}

uint64_t VehicleReservationEntity.duration.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 48);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*VehicleReservationEntity.duration.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*VehicleReservationEntity.pickUpAddress.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*VehicleReservationEntity.pickUpBusinessName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t VehicleReservationEntity.pickUpDateTime.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 72);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*VehicleReservationEntity.pickUpDateTime.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 72);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*VehicleReservationEntity.pickUpPhoneNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 80);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*VehicleReservationEntity.renterName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 88);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t VehicleReservationEntity.status.getter()
{
  v1 = *(v0 + 96);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*VehicleReservationEntity.status.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 96);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t VehicleReservationEntity.vehicleClass.getter()
{
  v1 = *(v0 + 104);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*VehicleReservationEntity.vehicleClass.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 104);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t VehicleReservationEntity.confirmationNumber.getter()
{
  v1 = *(v0 + 112);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for VehicleReservationEntity.bookingProvider : VehicleReservationEntity(uint64_t *a1)
{
  OUTLINED_FUNCTION_96_2(a1);
  memcpy(v3, v4, 0x98uLL);

  outlined init with copy of VehicleReservationEntity(&v7, __dst);
  v5 = OUTLINED_FUNCTION_34_11();
  v1(v5);
  memcpy(__dst, v2, sizeof(__dst));
  return outlined destroy of VehicleReservationEntity(__dst);
}

uint64_t (*VehicleReservationEntity.confirmationNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 112);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t VehicleReservationEntity.encodedSearchableItem.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 120);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*VehicleReservationEntity.encodedSearchableItem.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 120);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t VehicleReservationEntity.openCommand.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 128);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*VehicleReservationEntity.openCommand.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 128);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void VehicleReservationEntity.init()()
{
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for LocalizedStringResource();
  v2 = OUTLINED_FUNCTION_114(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *v0 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_88_4();
  *(v0 + 8) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 24) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_95_4();
  *(v0 + 32) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 40) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_194_2();
  OUTLINED_FUNCTION_95_4();
  *(v0 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_149_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 56) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 64) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_95_4();
  *(v0 + 72) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_158_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 88) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 96) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_146_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 104) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 112) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 120) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 128) = EntityProperty<>.init(title:)();
  *(v0 + 136) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_203();
}

uint64_t static VehicleReservationEntity.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, static VehicleReservationEntity.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

unint64_t VehicleReservationEntity.description.getter()
{
  v1 = *v0;
  v2 = v0[14];
  EntityProperty.wrappedValue.getter();
  if (v15)
  {
    return v14;
  }

  _StringGuts.grow(_:)(27);

  v4 = EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_67_5(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_216_1();

  return 0xD000000000000019;
}

uint64_t VehicleReservationEntity.cardData.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  return OUTLINED_FUNCTION_35_11();
}

uint64_t VehicleReservationEntity.cardData.setter()
{
  OUTLINED_FUNCTION_93();
  result = outlined consume of Data?(*(v1 + 136), *(v1 + 144));
  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

BOOL static VehicleReservationEntity.== infix(_:_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = OUTLINED_FUNCTION_46_8(a1);
  v53 = v5[8];
  v51 = v5[9];
  v49 = v5[10];
  v47 = v5[11];
  v45 = v5[12];
  v43 = v5[13];
  v41 = v5[14];
  v39 = v5[15];
  v35 = v5[16];
  v33 = v5[17];
  v37 = v5[18];
  v8 = *v6;
  v7 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  OUTLINED_FUNCTION_45_7(v5, v6);
  v52 = v11[8];
  v50 = v11[9];
  v48 = v11[10];
  v46 = v11[11];
  v44 = v11[12];
  v42 = v11[13];
  v40 = v11[14];
  v38 = v11[15];
  v34 = v11[16];
  v30 = v11[17];
  v36 = v11[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_5_14(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
  OUTLINED_FUNCTION_155_2();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_166_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_173_1();
  if ((OUTLINED_FUNCTION_166_1() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_166_1() & 1) == 0)
  {
    return 0;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  lazy protocol witness table accessor for type DateComponents? and conformance <A> A?();
  if ((OUTLINED_FUNCTION_177_2() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_166_1() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_177_2() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_166_1() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_166_1() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_177_2() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_166_1() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_166_1() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_166_1() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_166_1() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_166_1() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  lazy protocol witness table accessor for type IntentFile? and conformance <A> A?();
  if ((OUTLINED_FUNCTION_165_2() & 1) == 0 || (static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_4();
  if (!(!v17 & v16))
  {
    OUTLINED_FUNCTION_84_4();
    if (!(!v17 & v16))
    {
      v28 = OUTLINED_FUNCTION_114_4(v33, v19, v20, v21, v22, v23, v24, v25, v29, v30);
      OUTLINED_FUNCTION_33_9(v28);
      OUTLINED_FUNCTION_32_12();
      return (v12 & 1) != 0;
    }

LABEL_25:
    v26 = OUTLINED_FUNCTION_249_1(v18, v19, v20, v21, v22, v23, v24, v25, v29, v30, v33);
    outlined copy of Data?(v26, v37);
    OUTLINED_FUNCTION_50_5(v32);
    return 0;
  }

  OUTLINED_FUNCTION_84_4();
  if (!(!v17 & v16))
  {
    goto LABEL_25;
  }

  v13 = OUTLINED_FUNCTION_249_1(v18, v19, v20, v21, v22, v23, v24, v25, v29, v30, v33);
  outlined copy of Data?(v13, v37);
  outlined copy of Data?(v31, v36);
  v14 = OUTLINED_FUNCTION_107();
  outlined consume of Data?(v14, v15);
  return 1;
}

uint64_t (*protocol witness for SpotlightItemProviding.encodedSearchableItem.modify in conformance VehicleReservationEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 120);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*protocol witness for SpotlightItemProviding.openCommand.modify in conformance VehicleReservationEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 128);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance VehicleReservationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance VehicleReservationEntity()
{
  lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance VehicleReservationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance VehicleReservationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t key path setter for TicketedShowEntity.duration : TicketedShowEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of ResourceBundle?(a1, &v8[-v6], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  memcpy(v8, a2, sizeof(v8));
  outlined init with copy of TicketedShowEntity(v8, v9);
  TicketedShowEntity.duration.setter();
  memcpy(v9, a2, sizeof(v9));
  return outlined destroy of TicketedShowEntity(v9);
}

uint64_t TicketedShowEntity.duration.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *v0;
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*TicketedShowEntity.duration.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t TicketedShowEntity.customerNames.getter()
{
  v1 = *(v0 + 8);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*TicketedShowEntity.customerNames.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*TicketedShowEntity.reservationId.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*TicketedShowEntity.locationName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*TicketedShowEntity.address.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t TicketedShowEntity.seatNumbers.getter()
{
  v1 = *(v0 + 40);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for TicketedShowEntity.customerNames : TicketedShowEntity(uint64_t *a1)
{
  OUTLINED_FUNCTION_74_7(a1);
  memcpy(v4, v5, 0x88uLL);

  outlined init with copy of TicketedShowEntity(&v7, __dst);
  v1(v3);
  memcpy(__dst, v2, sizeof(__dst));
  return outlined destroy of TicketedShowEntity(__dst);
}

uint64_t (*TicketedShowEntity.seatNumbers.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*TicketedShowEntity.provider.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*TicketedShowEntity.eventSubType.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*TicketedShowEntity.ticketType.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for TicketedShowEntity.ticketUrl : TicketedShowEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of ResourceBundle?(a1, &v8[-v6], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  memcpy(v8, a2, sizeof(v8));
  outlined init with copy of TicketedShowEntity(v8, v9);
  TicketedShowEntity.ticketUrl.setter();
  memcpy(v9, a2, sizeof(v9));
  return outlined destroy of TicketedShowEntity(v9);
}

uint64_t TicketedShowEntity.ticketUrl.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 72);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*TicketedShowEntity.ticketUrl.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 72);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*TicketedShowEntity.cost.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 80);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for TicketedShowEntity.startDateTime : TicketedShowEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of ResourceBundle?(a1, &v8[-v6], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  memcpy(v8, a2, sizeof(v8));
  outlined init with copy of TicketedShowEntity(v8, v9);
  TicketedShowEntity.startDateTime.setter();
  memcpy(v9, a2, sizeof(v9));
  return outlined destroy of TicketedShowEntity(v9);
}

uint64_t TicketedShowEntity.startDateTime.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 88);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*TicketedShowEntity.startDateTime.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 88);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for TicketedShowEntity.endDateTime : TicketedShowEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9[-v6];
  outlined init with copy of ResourceBundle?(a1, &v9[-v6], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  memcpy(v9, a2, sizeof(v9));
  outlined init with copy of TicketedShowEntity(v9, v10);
  GenericEventEntity.startDateTime.setter(v7);
  memcpy(v10, a2, sizeof(v10));
  return outlined destroy of TicketedShowEntity(v10);
}

uint64_t (*TicketedShowEntity.endDateTime.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 96);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for TicketedShowEntity.encodedSearchableItem : TicketedShowEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9[-v6];
  outlined init with copy of ResourceBundle?(a1, &v9[-v6], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  memcpy(v9, a2, sizeof(v9));
  outlined init with copy of TicketedShowEntity(v9, v10);
  GenericEventEntity.encodedSearchableItem.setter(v7);
  memcpy(v10, a2, sizeof(v10));
  return outlined destroy of TicketedShowEntity(v10);
}

uint64_t (*TicketedShowEntity.encodedSearchableItem.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 104);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for TicketedShowEntity.openCommand : TicketedShowEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9[-v6];
  outlined init with copy of ResourceBundle?(a1, &v9[-v6], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  memcpy(v9, a2, sizeof(v9));
  outlined init with copy of TicketedShowEntity(v9, v10);
  GenericEventEntity.openCommand.setter(v7);
  memcpy(v10, a2, sizeof(v10));
  return outlined destroy of TicketedShowEntity(v10);
}

uint64_t (*TicketedShowEntity.openCommand.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 112);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void TicketedShowEntity.init()()
{
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for LocalizedStringResource();
  v2 = OUTLINED_FUNCTION_114(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_194_2();
  OUTLINED_FUNCTION_78_5();
  *v0 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  OUTLINED_FUNCTION_33_8();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_246_1();
  *(v0 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_148_1();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_95_4();
  *(v0 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_32_11();
  OUTLINED_FUNCTION_23_8();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 24) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 32) = EntityProperty<>.init(title:)();
  v5 = OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_24_10(v5);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_246_1();
  *(v0 + 40) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_237_1();
  OUTLINED_FUNCTION_194_2();
  OUTLINED_FUNCTION_95_4();
  *(v0 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 56) = EntityProperty<>.init(title:)();
  v6 = OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_236_0(v6);
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 64) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_134_1();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 72) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_95_4();
  *(v0 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_9();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 88) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_31_12();
  OUTLINED_FUNCTION_194_2();
  *(v0 + 96) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 104) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 112) = EntityProperty<>.init(title:)();
  *(v0 + 120) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_203();
}

uint64_t static TicketedShowEntity.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, &static TicketedShowEntity.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

unint64_t TicketedShowEntity.description.getter()
{
  v1 = *(v0 + 8);
  v2 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  EntityProperty.wrappedValue.getter();
  if (v8)
  {
    v3 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A]);
    v5 = BidirectionalCollection<>.joined(separator:)();
    v2 = v6;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x25F89F6C0](v5, v2);

  return 0xD000000000000012;
}

BOOL static TicketedShowEntity.== infix(_:_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v47 = a1[4];
  v48 = a1[3];
  v45 = a1[5];
  v43 = a1[6];
  v41 = a1[7];
  v4 = OUTLINED_FUNCTION_115_2(a1);
  v36 = v5;
  v6 = v4[16];
  v8 = *v7;
  v9 = v7[1];
  v11 = v7[2];
  v10 = v7[3];
  v46 = v7[4];
  v44 = v7[5];
  v12 = v7[7];
  v42 = v7[6];
  OUTLINED_FUNCTION_156_2(v4, v7);
  v40 = v13[12];
  v37 = v13[14];
  v33 = v13[15];
  v38 = v13[16];
  v39 = v13[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  lazy protocol witness table accessor for type DateComponents? and conformance <A> A?();
  OUTLINED_FUNCTION_94();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  lazy protocol witness table accessor for type [String]? and conformance <A> A?();
  OUTLINED_FUNCTION_232();
  if ((OUTLINED_FUNCTION_220_1() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_5_14(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
  OUTLINED_FUNCTION_129_4();
  if ((OUTLINED_FUNCTION_196_2() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_196_2() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_196_2() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_220_1() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_196_2() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_196_2() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_196_2() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  lazy protocol witness table accessor for type URL? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_196_2() & 1) == 0)
  {
    return 0;
  }

  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  v14 = lazy protocol witness table accessor for type IntentFile? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0 || (static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_4();
  if (!(!v19 & v18))
  {
    OUTLINED_FUNCTION_84_4();
    if (!(!v19 & v18))
    {
      v30 = OUTLINED_FUNCTION_114_4(v36, v21, v22, v23, v24, v25, v26, v27, v6, v33);
      OUTLINED_FUNCTION_33_9(v30);
      OUTLINED_FUNCTION_32_12();
      return (v14 & 1) != 0;
    }

LABEL_23:
    v28 = OUTLINED_FUNCTION_249_1(v20, v21, v22, v23, v24, v25, v26, v27, v6, v33, v36);
    outlined copy of Data?(v28, v32);
    OUTLINED_FUNCTION_50_5(v35);
    return 0;
  }

  OUTLINED_FUNCTION_84_4();
  if (!(!v19 & v18))
  {
    goto LABEL_23;
  }

  v15 = OUTLINED_FUNCTION_249_1(v20, v21, v22, v23, v24, v25, v26, v27, v6, v33, v36);
  outlined copy of Data?(v15, v31);
  outlined copy of Data?(v34, v38);
  v16 = OUTLINED_FUNCTION_107();
  outlined consume of Data?(v16, v17);
  return 1;
}

uint64_t (*protocol witness for SpotlightItemProviding.encodedSearchableItem.modify in conformance TicketedShowEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 104);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*protocol witness for SpotlightItemProviding.openCommand.modify in conformance TicketedShowEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 112);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance TicketedShowEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance TicketedShowEntity()
{
  lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance TicketedShowEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance TicketedShowEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t (*ShippingOrderEntity.eventName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*ShippingOrderEntity.subType.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*ShippingOrderEntity.status.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*ShippingOrderEntity.shippingStatus.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.orderDate.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 32);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*ShippingOrderEntity.orderDate.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*ShippingOrderEntity.orderNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void key path setter for ShippingOrderEntity.orderDate : ShippingOrderEntity()
{
  OUTLINED_FUNCTION_202();
  v9 = OUTLINED_FUNCTION_81_7(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82_6(v13, v14[0]);
  memcpy(v14, v1, sizeof(v14));
  outlined init with copy of ShippingOrderEntity(v14, v15);
  v0(v2);
  memcpy(v15, v1, sizeof(v15));
  outlined destroy of ShippingOrderEntity(v15);
  OUTLINED_FUNCTION_203();
}

uint64_t ShippingOrderEntity.orderTrackingURL.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 48);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*ShippingOrderEntity.orderTrackingURL.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for ShippingOrderEntity.orderCost : ShippingOrderEntity(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  memcpy(v6, a2, sizeof(v6));
  outlined init with copy of ShippingOrderEntity(v6, __dst);
  ShippingOrderEntity.orderCost.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return outlined destroy of ShippingOrderEntity(__dst);
}

uint64_t (*ShippingOrderEntity.orderCost.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*ShippingOrderEntity.merchantName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.shippingPersonNames.getter()
{
  v1 = *(v0 + 72);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*ShippingOrderEntity.shippingPersonNames.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 72);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*ShippingOrderEntity.shippingLocationName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 80);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*ShippingOrderEntity.shippingAddress.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 88);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.shippingPhoneNumber.getter()
{
  v1 = *(v0 + 96);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*ShippingOrderEntity.shippingPhoneNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 96);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.recipientNames.getter()
{
  v1 = *(v0 + 104);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*ShippingOrderEntity.recipientNames.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 104);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.recipientLocationName.getter()
{
  v1 = *(v0 + 112);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*ShippingOrderEntity.recipientLocationName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 112);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.recipientAddress.getter()
{
  v1 = *(v0 + 120);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*ShippingOrderEntity.recipientAddress.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 120);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.recipientPhoneNumber.getter()
{
  v1 = *(v0 + 128);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*ShippingOrderEntity.recipientPhoneNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 128);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.customerNames.getter()
{
  v1 = *(v0 + 136);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*ShippingOrderEntity.customerNames.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 136);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.customerAddresses.getter()
{
  v1 = *(v0 + 144);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*ShippingOrderEntity.customerAddresses.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 144);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.customerPhoneNumbers.getter()
{
  v1 = *(v0 + 152);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for ShippingOrderEntity.shippingPersonNames : ShippingOrderEntity(uint64_t *a1)
{
  OUTLINED_FUNCTION_74_7(a1);
  memcpy(v4, v5, 0xF0uLL);

  outlined init with copy of ShippingOrderEntity(&v7, __dst);
  v1(v3);
  memcpy(__dst, v2, sizeof(__dst));
  return outlined destroy of ShippingOrderEntity(__dst);
}

uint64_t (*ShippingOrderEntity.customerPhoneNumbers.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 152);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.carrierName.getter()
{
  v1 = *(v0 + 160);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*ShippingOrderEntity.carrierName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 160);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.trackingNumber.getter()
{
  v1 = *(v0 + 168);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for ShippingOrderEntity.eventName : ShippingOrderEntity(uint64_t *a1)
{
  OUTLINED_FUNCTION_96_2(a1);
  memcpy(v3, v4, 0xF0uLL);

  outlined init with copy of ShippingOrderEntity(&v7, __dst);
  v5 = OUTLINED_FUNCTION_34_11();
  v1(v5);
  memcpy(__dst, v2, sizeof(__dst));
  return outlined destroy of ShippingOrderEntity(__dst);
}

uint64_t (*ShippingOrderEntity.trackingNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 168);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.shippingDate.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 176);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*ShippingOrderEntity.shippingDate.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 176);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.deliveryDate.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 184);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*ShippingOrderEntity.deliveryDate.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 184);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.estimatedDeliveryStartDate.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 192);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*ShippingOrderEntity.estimatedDeliveryStartDate.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 192);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.estimatedDeliveryEndDate.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 200);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*ShippingOrderEntity.estimatedDeliveryEndDate.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 200);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.encodedSearchableItem.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 208);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*ShippingOrderEntity.encodedSearchableItem.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 208);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t ShippingOrderEntity.openCommand.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 216);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*ShippingOrderEntity.openCommand.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 216);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void ShippingOrderEntity.init()()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for LocalizedStringResource();
  v2 = OUTLINED_FUNCTION_114(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_78_5();
  *v0 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_106_2();
  *(v0 + 8) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_60_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 16) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_254();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 24) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  OUTLINED_FUNCTION_76_5();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_95_4();
  *(v0 + 32) = EntityProperty<>.init(title:)();
  v5 = OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_19_9(v5);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 40) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 48) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySdSgGMd, &_s10AppIntents14EntityPropertyCySdSgGMR);
  OUTLINED_FUNCTION_76_5();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 56) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_23_8();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 64) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 72) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 88) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_31_13();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 96) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_147_1();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 104) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 112) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 120) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_228_0();
  *(v0 + 128) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_33_8();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 136) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_31_13();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 144) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_228_0();
  *(v0 + 152) = EntityProperty<>.init(title:)();
  v6 = OUTLINED_FUNCTION_118_2();
  OUTLINED_FUNCTION_231_0(v6);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_78_5();
  *(v0 + 160) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_149_1();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 168) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_232();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_95_4();
  *(v0 + 176) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_238_0();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 184) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 192) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 200) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 208) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 216) = EntityProperty<>.init(title:)();
  *(v0 + 224) = xmmword_25DBC9410;
  OUTLINED_FUNCTION_148();
}

uint64_t static ShippingOrderEntity.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, static ShippingOrderEntity.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t ShippingOrderEntity.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(17);

  OUTLINED_FUNCTION_189_2();
  v2 = EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_67_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  OUTLINED_FUNCTION_216_1();

  return 0;
}

uint64_t ShippingOrderEntity.cardData.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  return OUTLINED_FUNCTION_35_11();
}

uint64_t ShippingOrderEntity.cardData.setter()
{
  OUTLINED_FUNCTION_93();
  result = outlined consume of Data?(*(v1 + 224), *(v1 + 232));
  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  return result;
}

void static ShippingOrderEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = OUTLINED_FUNCTION_46_8(v0);
  v7 = OUTLINED_FUNCTION_109_4(v5, v6);
  v57 = v7[14];
  v55 = v7[15];
  v53 = v7[16];
  v51 = v7[17];
  v49 = v7[18];
  v47 = v7[19];
  v45 = v7[20];
  v43 = v7[21];
  v41 = v7[22];
  v39 = v7[23];
  v28 = v7[24];
  v30 = v7[25];
  v32 = v7[26];
  v33 = v7[27];
  v36 = v7[28];
  v37 = v7[29];
  v10 = *v8;
  v9 = v8[1];
  v12 = v8[2];
  v11 = v8[3];
  OUTLINED_FUNCTION_45_7(v7, v8);
  OUTLINED_FUNCTION_130_4(v13, v14);
  v56 = v15[14];
  v54 = v15[15];
  v52 = v15[16];
  v50 = v15[17];
  v48 = v15[18];
  v46 = v15[19];
  v44 = v15[20];
  v42 = v15[21];
  v40 = v15[22];
  v38 = v15[23];
  v26 = v15[24];
  v27 = v15[25];
  v29 = v15[26];
  v31 = v15[27];
  v34 = v15[28];
  v35 = v15[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_5_14(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
  if (OUTLINED_FUNCTION_163_1())
  {
    OUTLINED_FUNCTION_173_1();
    if (OUTLINED_FUNCTION_163_1() & 1) != 0 && (OUTLINED_FUNCTION_163_1() & 1) != 0 && (OUTLINED_FUNCTION_163_1())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
      lazy protocol witness table accessor for type Date? and conformance <A> A?();
      if (OUTLINED_FUNCTION_223_1() & 1) != 0 && (OUTLINED_FUNCTION_163_1())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
        lazy protocol witness table accessor for type URL? and conformance <A> A?();
        if (static EntityProperty<>.== infix(_:_:)())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySdSgGMd, &_s10AppIntents14EntityPropertyCySdSgGMR);
          lazy protocol witness table accessor for type Double? and conformance <A> A?(&lazy protocol witness table cache variable for type Double? and conformance <A> A?);
          if (static EntityProperty<>.== infix(_:_:)() & 1) != 0 && (OUTLINED_FUNCTION_163_1())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
            lazy protocol witness table accessor for type [String]? and conformance <A> A?();
            if (OUTLINED_FUNCTION_177_2() & 1) != 0 && (OUTLINED_FUNCTION_163_1() & 1) != 0 && (OUTLINED_FUNCTION_163_1() & 1) != 0 && (OUTLINED_FUNCTION_163_1() & 1) != 0 && (OUTLINED_FUNCTION_177_2() & 1) != 0 && (OUTLINED_FUNCTION_163_1() & 1) != 0 && (OUTLINED_FUNCTION_163_1() & 1) != 0 && (OUTLINED_FUNCTION_163_1() & 1) != 0 && (OUTLINED_FUNCTION_177_2() & 1) != 0 && (OUTLINED_FUNCTION_177_2() & 1) != 0 && (OUTLINED_FUNCTION_177_2() & 1) != 0 && (OUTLINED_FUNCTION_163_1() & 1) != 0 && (OUTLINED_FUNCTION_163_1() & 1) != 0 && (OUTLINED_FUNCTION_223_1() & 1) != 0 && (OUTLINED_FUNCTION_223_1() & 1) != 0 && (OUTLINED_FUNCTION_223_1() & 1) != 0 && (OUTLINED_FUNCTION_223_1())
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
              lazy protocol witness table accessor for type IntentFile? and conformance <A> A?();
              if (static EntityProperty<>.== infix(_:_:)() & 1) != 0 && (static EntityProperty<>.== infix(_:_:)())
              {
                OUTLINED_FUNCTION_84_4();
                if (!(!v21 & v20))
                {
                  OUTLINED_FUNCTION_84_4();
                  if (!(!v21 & v20))
                  {
                    v24 = OUTLINED_FUNCTION_62_3();
                    outlined copy of Data?(v24, v25);
                    OUTLINED_FUNCTION_33_9(v34);
                    OUTLINED_FUNCTION_32_12();
                    goto LABEL_37;
                  }

LABEL_36:
                  v22 = OUTLINED_FUNCTION_107();
                  outlined copy of Data?(v22, v23);
                  OUTLINED_FUNCTION_50_5(v34);
                  goto LABEL_37;
                }

                OUTLINED_FUNCTION_84_4();
                if (!(!v21 & v20))
                {
                  goto LABEL_36;
                }

                v16 = OUTLINED_FUNCTION_107();
                outlined copy of Data?(v16, v17);
                outlined copy of Data?(v34, v35);
                v18 = OUTLINED_FUNCTION_107();
                outlined consume of Data?(v18, v19);
              }
            }
          }
        }
      }
    }
  }

LABEL_37:
  OUTLINED_FUNCTION_148();
}

uint64_t (*protocol witness for SpotlightItemProviding.encodedSearchableItem.modify in conformance ShippingOrderEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 208);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*protocol witness for SpotlightItemProviding.openCommand.modify in conformance ShippingOrderEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 216);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance ShippingOrderEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance ShippingOrderEntity()
{
  lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance ShippingOrderEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance ShippingOrderEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t GenericEventEntity.attendees.getter()
{
  v1 = *v0;
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t key path setter for GenericEventEntity.attendees : GenericEventEntity(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  memcpy(v5, a2, sizeof(v5));

  outlined init with copy of GenericEventEntity(v5, __dst);
  GenericEventEntity.attendees.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return outlined destroy of GenericEventEntity(__dst);
}

uint64_t (*GenericEventEntity.attendees.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *v0;
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*GenericEventEntity.businessName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*GenericEventEntity.cost.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for GenericEventEntity.duration : GenericEventEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of ResourceBundle?(a1, &v8[-v6], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  memcpy(v8, a2, sizeof(v8));
  outlined init with copy of GenericEventEntity(v8, v9);
  GenericEventEntity.duration.setter();
  memcpy(v9, a2, sizeof(v9));
  return outlined destroy of GenericEventEntity(v9);
}

uint64_t GenericEventEntity.duration.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 24);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*GenericEventEntity.duration.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for GenericEventEntity.endDateTime : GenericEventEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of ResourceBundle?(a1, &v8[-v6], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  memcpy(v8, a2, sizeof(v8));
  outlined init with copy of GenericEventEntity(v8, v9);
  GenericEventEntity.endDateTime.setter();
  memcpy(v9, a2, sizeof(v9));
  return outlined destroy of GenericEventEntity(v9);
}

uint64_t GenericEventEntity.endDateTime.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 32);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*GenericEventEntity.endDateTime.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for GenericEventEntity.eventLink : GenericEventEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of ResourceBundle?(a1, &v8[-v6], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  memcpy(v8, a2, sizeof(v8));
  outlined init with copy of GenericEventEntity(v8, v9);
  GenericEventEntity.eventLink.setter();
  memcpy(v9, a2, sizeof(v9));
  return outlined destroy of GenericEventEntity(v9);
}

uint64_t GenericEventEntity.eventLink.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 40);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*GenericEventEntity.eventLink.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*GenericEventEntity.eventName.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*GenericEventEntity.eventType.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*GenericEventEntity.eventSubType.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t GenericEventEntity.location.getter()
{
  v1 = *(v0 + 72);
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*GenericEventEntity.location.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 72);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for GenericEventEntity.organizer : GenericEventEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of ResourceBundle?(a1, &v8[-v6], &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  memcpy(v8, a2, sizeof(v8));
  outlined init with copy of GenericEventEntity(v8, v9);
  GenericEventEntity.organizer.setter();
  memcpy(v9, a2, sizeof(v9));
  return outlined destroy of GenericEventEntity(v9);
}

uint64_t GenericEventEntity.organizer.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 80);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*GenericEventEntity.organizer.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 80);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for TicketedShowEntity.reservationId : TicketedShowEntity()
{
  OUTLINED_FUNCTION_116_3();
  v5 = *v4;
  v6 = v4[1];
  memcpy(v10, v7, sizeof(v10));

  v1(v10, __dst);
  v8 = OUTLINED_FUNCTION_64_0();
  v2(v8);
  memcpy(__dst, v3, sizeof(__dst));
  return v0(__dst);
}

uint64_t (*GenericEventEntity.phoneNumber.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 88);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for GenericEventEntity.startDateTime : GenericEventEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9[-v6];
  outlined init with copy of ResourceBundle?(a1, &v9[-v6], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  memcpy(v9, a2, sizeof(v9));
  outlined init with copy of GenericEventEntity(v9, v10);
  GenericEventEntity.startDateTime.setter(v7);
  memcpy(v10, a2, sizeof(v10));
  return outlined destroy of GenericEventEntity(v10);
}

uint64_t TicketedShowEntity.endDateTime.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 96);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*GenericEventEntity.startDateTime.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 96);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for GenericEventEntity.encodedSearchableItem : GenericEventEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9[-v6];
  outlined init with copy of ResourceBundle?(a1, &v9[-v6], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  memcpy(v9, a2, sizeof(v9));
  outlined init with copy of GenericEventEntity(v9, v10);
  GenericEventEntity.encodedSearchableItem.setter(v7);
  memcpy(v10, a2, sizeof(v10));
  return outlined destroy of GenericEventEntity(v10);
}

uint64_t TicketedShowEntity.encodedSearchableItem.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 104);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*GenericEventEntity.encodedSearchableItem.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 104);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for GenericEventEntity.openCommand : GenericEventEntity(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9[-v6];
  outlined init with copy of ResourceBundle?(a1, &v9[-v6], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  memcpy(v9, a2, sizeof(v9));
  outlined init with copy of GenericEventEntity(v9, v10);
  GenericEventEntity.openCommand.setter(v7);
  memcpy(v10, a2, sizeof(v10));
  return outlined destroy of GenericEventEntity(v10);
}

uint64_t TicketedShowEntity.openCommand.setter()
{
  v1 = OUTLINED_FUNCTION_34_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_90_0();
  v7 = *(v0 + 112);
  OUTLINED_FUNCTION_17_10();
  EntityProperty.wrappedValue.setter();
  v8 = OUTLINED_FUNCTION_15_11();
  return outlined destroy of IntentApplication?(v8, v9, v10);
}

uint64_t (*GenericEventEntity.openCommand.modify())()
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_1(v3);
  v4 = *(v0 + 112);
  *(v1 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void GenericEventEntity.init()()
{
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for LocalizedStringResource();
  v2 = OUTLINED_FUNCTION_114(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMd, &_s10AppIntents14EntityPropertyCySayAA12IntentPersonVGGMR);
  OUTLINED_FUNCTION_151_0();
  LocalizedStringResource.init(stringLiteral:)();
  *v0 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_10_12();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_95_4();
  *(v0 + 8) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_88_4();
  *(v0 + 16) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_194_2();
  OUTLINED_FUNCTION_246_1();
  *(v0 + 24) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_31_12();
  OUTLINED_FUNCTION_235_1();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 32) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 40) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_95_4();
  *(v0 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_24_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 56) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_18();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 64) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_32_11();
  OUTLINED_FUNCTION_194_2();
  *(v0 + 72) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMd, &_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMR);
  OUTLINED_FUNCTION_190_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_4_16();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_95_4();
  *(v0 + 88) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_3_19();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_246_1();
  *(v0 + 96) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_31_13();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 104) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_2_17();
  LocalizedStringResource.init(stringLiteral:)();
  *(v0 + 112) = EntityProperty<>.init(title:)();
  *(v0 + 120) = xmmword_25DBC9410;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_203();
}

uint64_t static EventEntity.typeDisplayRepresentation.setter(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v4, a3);
  OUTLINED_FUNCTION_91_3();
  swift_beginAccess();
  v5 = *(v4 - 8);
  v6 = *(v5 + 24);
  v7 = OUTLINED_FUNCTION_107();
  v8(v7);
  swift_endAccess();
  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_32_0();
  return v11(v10);
}

uint64_t static GenericEventEntity.typeDisplayRepresentation.modify()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_30_10(v0, &static GenericEventEntity.typeDisplayRepresentation);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t GenericEventEntity.description.getter()
{
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_189_2();
  v2 = EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_67_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  OUTLINED_FUNCTION_216_1();

  return v13;
}

uint64_t GenericEventEntity.cardData.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  return OUTLINED_FUNCTION_35_11();
}

uint64_t GenericEventEntity.cardData.setter()
{
  OUTLINED_FUNCTION_93();
  result = outlined consume of Data?(*(v1 + 120), *(v1 + 128));
  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t (*protocol witness for SpotlightItemProviding.encodedSearchableItem.modify in conformance GenericEventEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 104);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*protocol witness for SpotlightItemProviding.openCommand.modify in conformance GenericEventEntity(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 112);
  v3[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance GenericEventEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance GenericEventEntity()
{
  lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance GenericEventEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance GenericEventEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t type metadata accessor for EventEntity()
{
  result = type metadata singleton initialization cache for EventEntity;
  if (!type metadata singleton initialization cache for EventEntity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  v16 = v0[18];
  OUTLINED_FUNCTION_192_2();
  if (!(!v19 & v18))
  {
    outlined consume of Data._Representation(v0[17], v17);
  }

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t objectdestroy_11Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[17];
  OUTLINED_FUNCTION_192_2();
  if (!(!v18 & v17))
  {
    outlined consume of Data._Representation(v0[16], v16);
  }

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

unint64_t type metadata accessor for SFCard()
{
  result = lazy cache variable for type metadata for SFCard;
  if (!lazy cache variable for type metadata for SFCard)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SFCard);
  }

  return result;
}

uint64_t outlined init with copy of EventEntity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t outlined init with take of SearchResultItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10ResultItemOSgMd, &_s10OmniSearch0B10ResultItemOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of EventEntity()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v3 = v2(v1);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t outlined assign with take of EventEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventEntity();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DateComponents? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type DateComponents? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type DateComponents? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_0(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type DateComponents? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_175_2(0, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = OUTLINED_FUNCTION_77_6();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type URL? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type URL? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type URL? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type URL and conformance URL);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type URL? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type URL and conformance URL);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type URL? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type URL and conformance URL);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntentCurrencyAmount? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type IntentCurrencyAmount? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type IntentCurrencyAmount? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents20IntentCurrencyAmountVSgMd, &_s10AppIntents20IntentCurrencyAmountVSgMR);
    _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_0(&lazy protocol witness table cache variable for type IntentCurrencyAmount and conformance IntentCurrencyAmount);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentCurrencyAmount? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Double? and conformance <A> A?(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_175_2(0, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    v6();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String]? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type [String]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [String]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String]? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [String]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [String]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String]? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [IntentPerson] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [IntentPerson] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [IntentPerson] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10AppIntents12IntentPersonVGMd, &_sSay10AppIntents12IntentPersonVGMR);
    _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_0(&lazy protocol witness table cache variable for type IntentPerson and conformance IntentPerson);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [IntentPerson] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntentPerson? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type IntentPerson? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type IntentPerson? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_0(&lazy protocol witness table cache variable for type IntentPerson and conformance IntentPerson);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentPerson? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntentPerson? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type IntentPerson? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
    lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type IntentPerson and conformance IntentPerson);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentPerson? and conformance <A> A?);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for EventEntity(uint64_t a1)
{
  result = _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_0(&lazy protocol witness table cache variable for type EventEntity and conformance EventEntity);
  *(a1 + 8) = result;
  return result;
}

unint64_t _s16IntelligenceFlow13RGPluginModelOAC10SnippetKit0e6PluginD0AAWlTm_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for FlightReservationEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightReservationEntity and conformance FlightReservationEntity();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for HotelReservationEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HotelReservationEntity and conformance HotelReservationEntity();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for RestaurantReservationEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RestaurantReservationEntity and conformance RestaurantReservationEntity();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for TicketedTransportationEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TicketedTransportationEntity and conformance TicketedTransportationEntity();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for VehicleReservationEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type VehicleReservationEntity and conformance VehicleReservationEntity();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for TicketedShowEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TicketedShowEntity and conformance TicketedShowEntity();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ShippingOrderEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ShippingOrderEntity and conformance ShippingOrderEntity();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GenericEventEntity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GenericEventEntity and conformance GenericEventEntity();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_175_2(0, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void type metadata completion function for EventEntity()
{
  type metadata accessor for EntityProperty<EventSubType>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EntityProperty<FlightReservationEntity?>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EntityProperty<GenericEventEntity?>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for EntityProperty<HotelReservationEntity?>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for EntityProperty<RestaurantReservationEntity?>();
          if (v4 <= 0x3F)
          {
            type metadata accessor for EntityProperty<TicketedTransportationEntity?>();
            if (v5 <= 0x3F)
            {
              type metadata accessor for EntityProperty<VehicleReservationEntity?>();
              if (v6 <= 0x3F)
              {
                type metadata accessor for EntityProperty<TicketedShowEntity?>();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for EntityProperty<ShippingOrderEntity?>();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for Data?();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for SearchResult?();
                      if (v10 <= 0x3F)
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
}

void type metadata accessor for EntityProperty<EventSubType>()
{
  if (!lazy cache variable for type metadata for EntityProperty<EventSubType>)
  {
    lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityProperty<EventSubType>);
    }
  }
}

void type metadata accessor for EntityProperty<FlightReservationEntity?>()
{
  if (!lazy cache variable for type metadata for EntityProperty<FlightReservationEntity?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch23FlightReservationEntityVSgMd, &_s10OmniSearch23FlightReservationEntityVSgMR);
    lazy protocol witness table accessor for type ShippingOrderEntity? and conformance <A> A?(&lazy protocol witness table cache variable for type FlightReservationEntity? and conformance <A> A?);
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityProperty<FlightReservationEntity?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ShippingOrderEntity? and conformance <A> A?(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_175_2(0, v4, v5);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void type metadata accessor for EntityProperty<GenericEventEntity?>()
{
  if (!lazy cache variable for type metadata for EntityProperty<GenericEventEntity?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch18GenericEventEntityVSgMd, &_s10OmniSearch18GenericEventEntityVSgMR);
    lazy protocol witness table accessor for type ShippingOrderEntity? and conformance <A> A?(&lazy protocol witness table cache variable for type GenericEventEntity? and conformance <A> A?);
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityProperty<GenericEventEntity?>);
    }
  }
}

void type metadata accessor for EntityProperty<HotelReservationEntity?>()
{
  if (!lazy cache variable for type metadata for EntityProperty<HotelReservationEntity?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch22HotelReservationEntityVSgMd, &_s10OmniSearch22HotelReservationEntityVSgMR);
    lazy protocol witness table accessor for type ShippingOrderEntity? and conformance <A> A?(&lazy protocol witness table cache variable for type HotelReservationEntity? and conformance <A> A?);
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityProperty<HotelReservationEntity?>);
    }
  }
}

void type metadata accessor for EntityProperty<RestaurantReservationEntity?>()
{
  if (!lazy cache variable for type metadata for EntityProperty<RestaurantReservationEntity?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch27RestaurantReservationEntityVSgMd, &_s10OmniSearch27RestaurantReservationEntityVSgMR);
    lazy protocol witness table accessor for type ShippingOrderEntity? and conformance <A> A?(&lazy protocol witness table cache variable for type RestaurantReservationEntity? and conformance <A> A?);
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityProperty<RestaurantReservationEntity?>);
    }
  }
}

void type metadata accessor for EntityProperty<TicketedTransportationEntity?>()
{
  if (!lazy cache variable for type metadata for EntityProperty<TicketedTransportationEntity?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch28TicketedTransportationEntityVSgMd, &_s10OmniSearch28TicketedTransportationEntityVSgMR);
    lazy protocol witness table accessor for type ShippingOrderEntity? and conformance <A> A?(&lazy protocol witness table cache variable for type TicketedTransportationEntity? and conformance <A> A?);
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityProperty<TicketedTransportationEntity?>);
    }
  }
}

void type metadata accessor for EntityProperty<VehicleReservationEntity?>()
{
  if (!lazy cache variable for type metadata for EntityProperty<VehicleReservationEntity?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch24VehicleReservationEntityVSgMd, &_s10OmniSearch24VehicleReservationEntityVSgMR);
    lazy protocol witness table accessor for type ShippingOrderEntity? and conformance <A> A?(&lazy protocol witness table cache variable for type VehicleReservationEntity? and conformance <A> A?);
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityProperty<VehicleReservationEntity?>);
    }
  }
}

void type metadata accessor for EntityProperty<TicketedShowEntity?>()
{
  if (!lazy cache variable for type metadata for EntityProperty<TicketedShowEntity?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch18TicketedShowEntityVSgMd, &_s10OmniSearch18TicketedShowEntityVSgMR);
    lazy protocol witness table accessor for type ShippingOrderEntity? and conformance <A> A?(&lazy protocol witness table cache variable for type TicketedShowEntity? and conformance <A> A?);
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityProperty<TicketedShowEntity?>);
    }
  }
}

void type metadata accessor for EntityProperty<ShippingOrderEntity?>()
{
  if (!lazy cache variable for type metadata for EntityProperty<ShippingOrderEntity?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch19ShippingOrderEntityVSgMd, &_s10OmniSearch19ShippingOrderEntityVSgMR);
    lazy protocol witness table accessor for type ShippingOrderEntity? and conformance <A> A?(&lazy protocol witness table cache variable for type ShippingOrderEntity? and conformance <A> A?);
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityProperty<ShippingOrderEntity?>);
    }
  }
}

uint64_t getEnumTagSinglePayload for EventSubType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EventSubType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlightReservationEntity(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
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

uint64_t storeEnumTagSinglePayload for FlightReservationEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HotelReservationEntity(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_218_1(-1);
  }

  if (a2 < 0 && *(a1 + 128))
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

  return OUTLINED_FUNCTION_218_1(v2);
}

void *storeEnumTagSinglePayload for HotelReservationEntity(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[15] = 0;
    *(result + 13) = 0u;
    *(result + 11) = 0u;
    *(result + 9) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

      return OUTLINED_FUNCTION_209_1(result, a2);
    }

    *(result + 128) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_209_1(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TicketedTransportationEntity(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for TicketedTransportationEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VehicleReservationEntity(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t storeEnumTagSinglePayload for VehicleReservationEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShippingOrderEntity(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
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

uint64_t storeEnumTagSinglePayload for ShippingOrderEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TicketedShowEntity(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_218_1(-1);
  }

  if (a2 < 0 && *(a1 + 136))
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

  return OUTLINED_FUNCTION_218_1(v2);
}