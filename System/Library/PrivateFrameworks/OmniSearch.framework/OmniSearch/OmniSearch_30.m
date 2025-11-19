void Trip.init(item:checkEventType:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_194_6();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_49_3();
  v98 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v37 = OUTLINED_FUNCTION_114(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_216_3();
  v41 = [v30 attributeSet];
  OUTLINED_FUNCTION_218_5();
  if ((v28 & 1) != 0 && (v42 = OUTLINED_FUNCTION_229_4(), v43 = [v42 containsString_], v42, (v43 & 1) == 0))
  {

    type metadata accessor for Trip();
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_101_9();

    __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
  }

  else
  {
    v44 = [v30 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_eventMessageIdentifier);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_eventGroupIdentifier);
    v45 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_eventFallbackGroupIdentifier);
    OUTLINED_FUNCTION_191_8(v45);
    *(v47 - 256) = v46;
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_eventMegadomeIdentifier);
    v49 = OUTLINED_FUNCTION_161_4(v48, &a16);
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_168_6(v50, v51);

    v52 = [v22 eventSubType];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_163_7(v53, v54, &a13);

    v55 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_eventSourceBundleIdentifier);
    OUTLINED_FUNCTION_73_15(v55, v56);
    v57 = [v22 eventIsAllDay];
    if (v57)
    {
      OUTLINED_FUNCTION_217_5(v57);
    }

    v58 = [v22 eventSourceIsForwarded];
    if (v58)
    {
      OUTLINED_FUNCTION_217_5(v58);
    }

    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v22);
    v59 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_mailMessageID);
    OUTLINED_FUNCTION_248(v59);
    OUTLINED_FUNCTION_89_16();
    v61 = v60;
    v62 = OUTLINED_FUNCTION_280_2(v60, sel_attributeForKey_);

    if (v62)
    {
      OUTLINED_FUNCTION_285_0();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_276_1();
    }

    OUTLINED_FUNCTION_116_8();
    if (v63)
    {
      OUTLINED_FUNCTION_115_11();
      OUTLINED_FUNCTION_114_12();
      if (v65)
      {
        v66 = 0;
      }

      else
      {
        v66 = v64;
      }

      OUTLINED_FUNCTION_253_3(v66);
    }

    else
    {
      outlined destroy of FlightSnippet.Leg?(&v105, &_sypSgMd, &_sypSgMR);
    }

    v67 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_accountIdentifier);
    OUTLINED_FUNCTION_297_0(v67, v68);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v22, &selRef_mailboxIdentifiers);
    v69 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v22);
    OUTLINED_FUNCTION_156_1(v69);
    v70 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_eventStatus);
    OUTLINED_FUNCTION_146_1(v70);
    closure #1 in RentalCarReservation.init(item:checkEventType:featureFlagService:)(v26, v22);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_eventName);
    CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
    v71 = [v22 startDate];
    if (v71)
    {
      v72 = v71;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for Date();
    OUTLINED_FUNCTION_102_10();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
    v77 = [v22 endDate];
    if (v77)
    {
      v78 = v77;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    OUTLINED_FUNCTION_102_10();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
    [v22 eventDuration];
    v83 = [v22 eventURL];
    if (v83)
    {
      v84 = v83;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for URL();
    OUTLINED_FUNCTION_219_4();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_startDateTimeZone);
    OUTLINED_FUNCTION_130_11(&v99);
    OUTLINED_FUNCTION_197_7(&v100);
    OUTLINED_FUNCTION_143_10(&v98);
    OUTLINED_FUNCTION_157_5(&v101);
    OUTLINED_FUNCTION_141_6(&v102);
    OUTLINED_FUNCTION_120_9(&v103);
    OUTLINED_FUNCTION_126_13(&v104);
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_182_8(&v106);
    OUTLINED_FUNCTION_151_6();
    OUTLINED_FUNCTION_134_10();
    OUTLINED_FUNCTION_156_6(&v107);
    OUTLINED_FUNCTION_158_6(&v108);
    OUTLINED_FUNCTION_148_9();
    OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_133_11();
    OUTLINED_FUNCTION_117_12();
    OUTLINED_FUNCTION_137_5(&a14);
    OUTLINED_FUNCTION_124_14();
    OUTLINED_FUNCTION_136_11();
    OUTLINED_FUNCTION_63_18();
    Trip.init(id:eventMessageIdentifier:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMegadomeIdentifier:eventType:eventSubType:eventSourceBundleIdentifier:eventIsAllDay:eventSourceIsForwarded:authors:mailMessageId:mailMessageHeader:accountIdentifier:mailboxes:detectedEventTypes:status:updateStatus:eventName:timeIsUnknown:startDate:endDate:durationInSeconds:eventUrl:eventSourceLLMConsumableDescription:startDateTimeZone:)();

    type metadata accessor for Trip();
    v89 = OUTLINED_FUNCTION_37_17();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
    OUTLINED_FUNCTION_101_9();
  }
}

uint64_t closure #1 in RentalCarReservation.init(item:checkEventType:featureFlagService:)(uint64_t a1, void *a2)
{
  if ((*(*a1 + 80))(35))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v3, static Logging.search);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v5))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_100_3(&dword_25D85C000, v6, v7, "OmniSearch/includeEventUpdateStatus FF enabled. Including updateStatus.");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v8 = [a2 eventUpdateStatus];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_140_2();
  }

  return OUTLINED_FUNCTION_94();
}

uint64_t FlightReservation.setResolvedFlight(_:)()
{
  v1 = type metadata accessor for JSONEncodingOptions();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  JSONEncodingOptions.init()();
  type metadata accessor for FlightSnippet.Flight(0);
  OUTLINED_FUNCTION_135_8();
  lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v7, v8);
  v9 = Message.jsonString(options:)();
  v11 = (v4 + 8);
  if (v0)
  {
    v12 = *v11;
    v13 = OUTLINED_FUNCTION_232();
    return v14(v13);
  }

  else
  {
    v16 = v9;
    v17 = v10;
    v18 = *v11;
    v19 = OUTLINED_FUNCTION_232();
    v20(v19);
    v21._countAndFlagsBits = v16;
    v21._object = v17;
    FlightReservation.setResolvedFlight(_:)(v21);
  }
}

uint64_t (*protocol witness for InstantAnswerDocument.eventSourceBundleIdentifier.modify in conformance FlightReservation(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = FlightReservation.eventSourceBundleIdentifier.modify();
  return protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance FlightReservation;
}

uint64_t (*protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance FlightReservation(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = FlightReservation.eventSourceLLMConsumableDescription.modify();
  return protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance FlightReservation;
}

void FlightReservation.init(item:answerAttributes:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_194_6();
  a21 = v26;
  a22 = v27;
  v576 = v28;
  v582 = v29;
  v31 = v30;
  v573 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_114(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v37);
  v38 = type metadata accessor for CharacterSet();
  v39 = OUTLINED_FUNCTION_216_0(v38);
  v40 = OUTLINED_FUNCTION_14(v39);
  v550 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v47 = OUTLINED_FUNCTION_114(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_7_4();
  v568 = v54;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_14_2();
  v570 = v56;
  OUTLINED_FUNCTION_78_0();
  v57 = type metadata accessor for Calendar();
  v58 = OUTLINED_FUNCTION_14(v57);
  v577 = v59;
  v578 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_28_2(v63 - v62);
  v64 = type metadata accessor for DateComponents();
  v65 = OUTLINED_FUNCTION_14(v64);
  v571 = v66;
  v572 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_39_0();
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
  OUTLINED_FUNCTION_7_4();
  v567 = v73;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_14_2();
  v569 = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v77 = OUTLINED_FUNCTION_114(v76);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v81);
  v560[0] = type metadata accessor for TimeZone();
  v82 = OUTLINED_FUNCTION_14(v560[0]);
  v559 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_39_0();
  v566 = v86;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v90 = OUTLINED_FUNCTION_114(v89);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_7_4();
  v580 = v96;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_7_4();
  v581 = v98;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_191_1();
  v101 = MEMORY[0x28223BE20](v100);
  v103 = &v454 - v102;
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_46_14();
  v104 = type metadata accessor for Date();
  v105 = OUTLINED_FUNCTION_14(v104);
  v107 = v106;
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_21();
  v111 = MEMORY[0x28223BE20](v110);
  v113 = &v454 - v112;
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_123_8();
  v574 = type metadata accessor for FlightReservation();
  v114 = OUTLINED_FUNCTION_14(v574);
  v554 = v115;
  v117 = *(v116 + 64);
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v121);
  v575 = v31;
  v122 = [v31 attributeSet];
  v123 = [v122 startDate];
  v579 = v122;
  if (v123)
  {
    v124 = v123;
    v125 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v126 = *(v107 + 32);
    v126(v103, v113, v104);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v127, v128, v129, v104);
    v126(v23, v103, v104);
    v130 = OUTLINED_FUNCTION_49_19();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v104);
    v133 = v581;
  }

  else
  {
    v564 = v22;
    v565 = v25;
    v134 = v107;
    v135 = 1;
    OUTLINED_FUNCTION_92();
    v136 = v104;
    __swift_storeEnumTagSinglePayload(v137, v138, v139, v104);
    v140 = [v122 flightDepartureDateTime];
    if (v140)
    {
      v141 = v140;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v135 = 0;
    }

    v133 = v581;
    v104 = v136;
    __swift_storeEnumTagSinglePayload(v24, v135, 1, v136);
    v142 = OUTLINED_FUNCTION_232();
    outlined init with take of Date?(v142, v143);
    v144 = OUTLINED_FUNCTION_202_5();
    OUTLINED_FUNCTION_166(v144, v145, v136);
    v107 = v134;
    v25 = v565;
    v125 = v564;
    if (!v353)
    {
      outlined destroy of FlightSnippet.Leg?(v103, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v146 = OUTLINED_FUNCTION_93_0();
  v148 = 0x28155B000;
  if (__swift_getEnumTagSinglePayload(v146, v147, v104) == 1)
  {
    v133 = v23;
    v149 = v574;
LABEL_19:

    outlined destroy of FlightSnippet.Leg?(v133, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (*(v148 + 2840) != -1)
    {
LABEL_161:
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v177 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v177, static Logging.search);
    v178 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v179 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v179, v180))
    {
      v181 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v181);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v182, v183, v184, v185, v186, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    goto LABEL_23;
  }

  v150 = *(v107 + 32);
  v150(v25, v23, v104);
  v151 = v579;
  v152 = [v579 endDate];
  if (v152)
  {
    v153 = v152;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v150(v580, v113, v104);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v154, v155, v156, v104);
    v157 = OUTLINED_FUNCTION_32_0();
    (v150)(v157);
    v158 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v158, v159, v160, v104);
    v161 = v104;
  }

  else
  {
    v162 = v107;
    v163 = 1;
    OUTLINED_FUNCTION_92();
    v164 = v104;
    __swift_storeEnumTagSinglePayload(v165, v166, v167, v104);
    v168 = [v151 flightArrivalDateTime];
    if (v168)
    {
      v169 = v168;
      v170 = v552;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v163 = 0;
    }

    else
    {
      v170 = v552;
    }

    v171 = v163;
    v161 = v164;
    __swift_storeEnumTagSinglePayload(v170, v171, 1, v164);
    outlined init with take of Date?(v170, v133);
    v172 = v580;
    v173 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_166(v173, v174, v164);
    v107 = v162;
    if (!v353)
    {
      outlined destroy of FlightSnippet.Leg?(v172, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v175 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v175, v176, v161);
  if (v353)
  {
    (*(v107 + 8))(v25, v161);
    v149 = v574;
    v148 = 0x28155B000uLL;
    goto LABEL_19;
  }

  v565 = v25;
  v564 = v125;
  v150(v125, v133, v161);
  OUTLINED_FUNCTION_192_7(&a12);
  static TimeZone.current.getter();
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v579, &selRef_startDateTimeZone);
  v149 = v574;
  v192 = v560[0];
  v194 = v577;
  v193 = v578;
  v195 = v557;
  if (v191)
  {
    v196 = v191;
    v197 = v547;
    TimeZone.init(identifier:)();

    OUTLINED_FUNCTION_70_12();
    OUTLINED_FUNCTION_166(v198, v199, v200);
    if (v353)
    {
      outlined destroy of FlightSnippet.Leg?(v197, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_104_10(&a13);
      (*(v201 + 8))(v150, v192);
      v202 = *(v196 + 32);
      v203 = OUTLINED_FUNCTION_32_3();
      v204(v203);
    }
  }

  v542 = v107;
  v547 = v161;
  static Calendar.current.getter();
  Calendar.dateComponents(in:from:)();
  v205 = *(v194 + 8);
  v205(v195, v193);
  v206 = v566;
  static TimeZone.current.getter();
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v579, &selRef_endDateTimeZone);
  if (v207)
  {
    v208 = v207;
    OUTLINED_FUNCTION_192_7(&v578);
    TimeZone.init(identifier:)();

    OUTLINED_FUNCTION_70_12();
    OUTLINED_FUNCTION_166(v209, v210, v211);
    if (v353)
    {
      outlined destroy of FlightSnippet.Leg?(v150, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_104_10(&a13);
      (*(v212 + 8))(v206, v192);
      (*(v208 + 32))(v206, v150, v192);
    }
  }

  static Calendar.current.getter();
  Calendar.dateComponents(in:from:)();
  v205(v195, v193);
  v213 = v579;
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v579, &selRef_flightCheckInUrl);
  if (v214)
  {
    URL.init(string:)();
  }

  else
  {
    type metadata accessor for URL();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v215, v216, v217, v218);
  }

  OUTLINED_FUNCTION_206_4();
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v213, &selRef_flightBookingInfoUrl);
  if (v219)
  {
    URL.init(string:)();
  }

  else
  {
    type metadata accessor for URL();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v220, v221, v222, v223);
  }

  v224 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v213, &selRef_eventTotalCost);
  v226 = v225;
  if (v225)
  {
    v583 = v224;
    v584 = v225;
    OUTLINED_FUNCTION_66_10(&v579);
    static CharacterSet.decimalDigits.getter();
    v227 = v549;
    CharacterSet.inverted.getter();
    v193 = *(v550 + 8);
    OUTLINED_FUNCTION_107_8(&v582);
    v193();
    lazy protocol witness table accessor for type String and conformance String();
    v228 = StringProtocol.components(separatedBy:)();
    (v193)(v227, v150);

    v583 = v228;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    BidirectionalCollection<>.joined(separator:)();
    OUTLINED_FUNCTION_140_2();

    v229 = OUTLINED_FUNCTION_94();
    v231 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v229, v230);
    if (v232)
    {
      v226 = 0;
      OUTLINED_FUNCTION_147_9();
    }

    else
    {
      v226 = MEMORY[0x25F89FD90](*&v231);
      v193 = v233;
      HIDWORD(v539) = 0;
      v540 = v234;
      OUTLINED_FUNCTION_259_4(0xE300000000000000);
      v541 = 4477781;
    }

    OUTLINED_FUNCTION_206_4();
    v213 = v579;
  }

  else
  {
    OUTLINED_FUNCTION_147_9();
  }

  v235 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v213, &selRef_uniqueIdentifier);
  if (!v236)
  {

    OUTLINED_FUNCTION_298_0();

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v250 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v250, static Logging.search);
    v251 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v252 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v252, v253))
    {
      v254 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v254);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v255, v256, v257, v258, v259, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v260, v261, v262);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v263, v264, v265);
    v266 = v572;
    v267 = *(v571 + 8);
    v267(v567, v572);
    v268 = *(v559 + 8);
    v268(v566, v192);
    v267(v569, v266);
    v268(v150, v192);
    v269 = OUTLINED_FUNCTION_41_18();
    (v267)(v269);
    v270 = OUTLINED_FUNCTION_68_17(&a20);
    (v267)(v270);
LABEL_23:
    OUTLINED_FUNCTION_92();
    v190 = v149;
    goto LABEL_24;
  }

  v522 = v236;
  v523 = v235;
  v237 = (*(*v576 + 80))(35);
  v521 = v226;
  if (v237)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v238 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v238, static Logging.search);
    v239 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v240 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v240, v241))
    {
      v242 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v242);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v243, v244, v245, v246, v247, 2u);
      OUTLINED_FUNCTION_206_4();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v248 = [v579 eventUpdateStatus];
    v514 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v513 = v249;
  }

  else
  {
    v514 = 0;
    v513 = 0;
  }

  v520 = v193;
  v519 = CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
  v149 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v579, &selRef_flightNumber);
  v549 = v271;
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of ResourceBundle?(v272, v273, v274, v275);
  OUTLINED_FUNCTION_50_9();
  v276 = v579;
  outlined init with copy of ResourceBundle?(v277, v278, v279, v280);
  v518 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightCarrier);
  v517 = v281;
  v282 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightCarrierCode);
  v548 = v283;
  v516 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightDesignator);
  v515 = v284;
  v285 = v572;
  v286 = v571 + 16;
  v287 = *(v571 + 16);
  (v287)(v562, v569, v572);
  (v287)(v563, v567, v285);
  v512 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightArrivalAirportAddress);
  v511 = v288;
  v510 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightDepartureAirportAddress);
  v509 = v289;
  v508 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightArrivalAirportCode);
  v507 = v290;
  v506 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightDepartureAirportCode);
  v505 = v291;
  v504 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightArrivalAirportCountry);
  v503 = v292;
  v502 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightDepartureAirportCountry);
  v501 = v293;
  v500 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightArrivalAirportLocality);
  v499 = v294;
  v498 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightDepartureAirportLocality);
  v497 = v295;
  v531 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightArrivalAirportName);
  v532 = v296;
  v297 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightDepartureAirportName);
  OUTLINED_FUNCTION_236_3(v297, v298, &v556);
  v496 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightArrivalAirportRegion);
  v495 = v299;
  v494 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightDepartureAirportRegion);
  v493 = v300;
  v301 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightConfirmationNumber);
  OUTLINED_FUNCTION_237_4(v301, v302, v560);
  outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v276, &selRef_eventCustomerNames);
  OUTLINED_FUNCTION_290_0();
  v492 = v303;
  outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v276, &selRef_flightPassengerSeatNumbers);
  OUTLINED_FUNCTION_290_0();
  v528 = v304;
  v526 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightArrivalTerminal);
  v527 = v305;
  v524 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightDepartureTerminal);
  v525 = v306;
  v489 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_eventProvider);
  v488 = v307;
  v308 = [v276 flightBoardingDateTime];
  if (v308)
  {
    v309 = v308;
    v310 = v556;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v311 = 0;
  }

  else
  {
    v311 = 1;
    v310 = v556;
  }

  OUTLINED_FUNCTION_250_4(v310, v311);
  v487 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightDepartureGate);
  v486 = v312;
  v485 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_flightArrivalGate);
  v484 = v313;
  [v276 eventDuration];
  v315 = v314;
  v483 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_eventStatus);
  v482 = v316;
  v491 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v575);
  v490 = v317;
  if (!v317)
  {
    __break(1u);
    return;
  }

  v471 = v315;
  v477 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_mailMessageID);
  v476 = v318;
  v475 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_eventMessageIdentifier);
  v474 = v319;
  v473 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_eventSourceBundleIdentifier);
  v472 = v320;
  v470 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_startDateTimeZone);
  v469 = v321;
  v468 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v276, &selRef_endDateTimeZone);
  v467 = v322;
  v323 = OUTLINED_FUNCTION_226_1(&v576);
  v324 = v572;
  (v287)(v323, v562, v572);
  v325 = OUTLINED_FUNCTION_49_19();
  __swift_storeEnumTagSinglePayload(v325, v326, v327, v324);
  v578 = dateString(fromDateComponents:)(v310);
  v329 = v328;
  OUTLINED_FUNCTION_33_13();
  outlined destroy of FlightSnippet.Leg?(v330, v331, v332);
  OUTLINED_FUNCTION_163_5(&a18);
  v479 = v286;
  v478 = v287;
  v287();
  v333 = OUTLINED_FUNCTION_49_19();
  __swift_storeEnumTagSinglePayload(v333, v334, v335, v324);
  v336 = dateString(fromDateComponents:)(v310);
  OUTLINED_FUNCTION_216_0(v336);
  v552 = v337;
  OUTLINED_FUNCTION_33_13();
  outlined destroy of FlightSnippet.Leg?(v338, v339, v340);
  v341 = 0;
  v455 = 0x800000025DBF7600;
  v457 = 0x800000025DBF75E0;
  v581 = *(v582 + 2);
  v459 = 0x800000025DBF75C0;
  v580 = *MEMORY[0x277CC3128];
  v557 = *MEMORY[0x277CC27A0];
  v461 = 0x800000025DBF7520;
  v546[2] = *MEMORY[0x277CC28F0];
  v466 = *MEMORY[0x277CC2898];
  v463 = 0x800000025DBF7500;
  v464 = *MEMORY[0x277CC2848];
  v462 = *MEMORY[0x277CC28C0];
  v465 = 0x800000025DBF7580;
  v460 = *MEMORY[0x277CC2908];
  v342 = v548;
  v480 = v282;
  if (v548)
  {
    v343 = v282;
  }

  else
  {
    v343 = 0;
  }

  v538 = v343;
  v458 = *MEMORY[0x277CC2860];
  v456 = *MEMORY[0x277CC28E0];
  if (!v548)
  {
    v342 = 0xE000000000000000;
  }

  v537 = v342;
  OUTLINED_FUNCTION_118_9();
  v481 = v149;
  if (v344)
  {
    v346 = v149;
  }

  else
  {
    v346 = 0;
  }

  v536 = v346;
  if (!v344)
  {
    v344 = v345;
  }

  OUTLINED_FUNCTION_204_7(v344);
  v550 = 0x800000025DBF73E0;
  v577 = 0x800000025DBF73C0;
  v348 = (v347 + 40);
  v349 = MEMORY[0x277D84F90];
  while (v581 != v341)
  {
    if (v341 >= *(v582 + 2))
    {
      __break(1u);
      goto LABEL_161;
    }

    v350 = *(v348 - 1);
    v351 = *v348;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_180_6();
    v353 = v353 && v352 == v351;
    if (v353)
    {
    }

    else
    {
      v354 = OUTLINED_FUNCTION_46_21();

      if ((v354 & 1) == 0)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        OUTLINED_FUNCTION_180_6();
        if (v353 && v355 == v351)
        {
        }

        else
        {
          OUTLINED_FUNCTION_46_21();
          OUTLINED_FUNCTION_250_2();
          if ((v354 & 1) == 0)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            OUTLINED_FUNCTION_180_6();
            if (v353 && v357 == v351)
            {

LABEL_129:
              v583 = 0;
              v584 = 0xE000000000000000;

              OUTLINED_FUNCTION_113_10(&v563);
              MEMORY[0x25F89F6C0]();

              OUTLINED_FUNCTION_113_10(&v561);
              MEMORY[0x25F89F6C0]();

              v373 = v583;
              v350 = v584;
              v372 = 0x754E746867696C66;
              v149 = 0xEC0000007265626DLL;
              goto LABEL_130;
            }

            OUTLINED_FUNCTION_46_21();
            OUTLINED_FUNCTION_250_2();
            if (v354)
            {
              goto LABEL_129;
            }

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            OUTLINED_FUNCTION_180_6();
            if (v353 && v359 == v351)
            {
            }

            else
            {
              OUTLINED_FUNCTION_46_21();
              OUTLINED_FUNCTION_250_2();
              if ((v354 & 1) == 0)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                OUTLINED_FUNCTION_180_6();
                if (v353 && v361 == v351)
                {
                }

                else
                {
                  OUTLINED_FUNCTION_46_21();
                  OUTLINED_FUNCTION_250_2();
                  if ((v354 & 1) == 0)
                  {
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    OUTLINED_FUNCTION_180_6();
                    if (v353 && v363 == v351)
                    {
                    }

                    else
                    {
                      OUTLINED_FUNCTION_46_21();
                      OUTLINED_FUNCTION_250_2();
                      if ((v354 & 1) == 0)
                      {
                        static String._unconditionallyBridgeFromObjectiveC(_:)();
                        OUTLINED_FUNCTION_180_6();
                        if (v353 && v365 == v351)
                        {

LABEL_145:
                          OUTLINED_FUNCTION_266_2();
                          v583 = v384;
                          v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                          lazy protocol witness table accessor for type [String] and conformance [A]();
                          v350 = &v583;
                          BidirectionalCollection<>.joined(separator:)();
                          OUTLINED_FUNCTION_140_2();

                          OUTLINED_FUNCTION_83_14();
                          v372 = v385 + 3;
                          v149 = v459;
                          goto LABEL_130;
                        }

                        OUTLINED_FUNCTION_46_21();
                        OUTLINED_FUNCTION_250_2();
                        if (v354)
                        {
                          goto LABEL_145;
                        }

                        static String._unconditionallyBridgeFromObjectiveC(_:)();
                        OUTLINED_FUNCTION_180_6();
                        if (v353 && v367 == v351)
                        {
                        }

                        else
                        {
                          OUTLINED_FUNCTION_46_21();
                          OUTLINED_FUNCTION_250_2();
                          if ((v354 & 1) == 0)
                          {
                            static String._unconditionallyBridgeFromObjectiveC(_:)();
                            OUTLINED_FUNCTION_180_6();
                            if (v353 && v369 == v351)
                            {
                            }

                            else
                            {
                              OUTLINED_FUNCTION_46_21();
                              OUTLINED_FUNCTION_174_5();
                              if ((v350 & 1) == 0)
                              {
                                goto LABEL_152;
                              }
                            }

                            if (!v525)
                            {
LABEL_152:

                              goto LABEL_153;
                            }

                            OUTLINED_FUNCTION_48_12(&v552);

                            v372 = 0xD000000000000017;
                            v149 = v455;
                            v374 = &v551;
                            goto LABEL_127;
                          }
                        }

                        v350 = v527;
                        if (!v527)
                        {
                          goto LABEL_152;
                        }

                        OUTLINED_FUNCTION_83_14();
                        v372 = v386 - 2;
                        v149 = v457;
                        v374 = &v553;
LABEL_127:
                        v373 = *(v374 - 32);
                        goto LABEL_130;
                      }
                    }

                    v350 = v530;
                    if (!v530)
                    {
                      goto LABEL_152;
                    }

                    OUTLINED_FUNCTION_83_14();
                    v372 = v380 + 3;
                    v149 = v461;
                    v374 = &v556;
                    goto LABEL_127;
                  }
                }

                v350 = v532;
                if (!v532)
                {
                  goto LABEL_152;
                }

                OUTLINED_FUNCTION_83_14();
                v372 = v379 + 1;
                v149 = v463;
                v374 = &v558;
                goto LABEL_127;
              }
            }

            v350 = v534;
            if (!v534)
            {
              goto LABEL_152;
            }

            OUTLINED_FUNCTION_83_14();
            v372 = v378 + 1;
            v149 = v465;
            v374 = v560;
            goto LABEL_127;
          }
        }

        v350 = v552;
        if (!v552)
        {
          goto LABEL_152;
        }

        v372 = 0xD000000000000017;
        v149 = v550;
        v374 = &v582;
        goto LABEL_127;
      }
    }

    if (!v329)
    {
      goto LABEL_152;
    }

    OUTLINED_FUNCTION_83_14();
    v372 = v371 + 2;
    v149 = v577;
    v373 = v578;
    v350 = v329;
LABEL_130:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v381 = *(v349 + 16);
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v349 = v382;
    }

    v376 = *(v349 + 16);
    v375 = *(v349 + 24);
    if (v376 >= v375 >> 1)
    {
      OUTLINED_FUNCTION_26_3(v375);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v349 = v383;
    }

    *(v349 + 16) = v376 + 1;
    v377 = (v349 + 32 * v376);
    v377[4] = v372;
    v377[5] = v149;
    v377[6] = v373;
    v377[7] = v350;
LABEL_153:
    v348 += 2;
    ++v341;
  }

  OUTLINED_FUNCTION_8_40();
  v581 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(v349, v387, v388, v389);
  OUTLINED_FUNCTION_252_0(&v574);
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of ResourceBundle?(v390, v391, v392, v393);
  OUTLINED_FUNCTION_251_0(&v575);
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of ResourceBundle?(v394, v395, v396, v397);
  OUTLINED_FUNCTION_48_12(&v572);
  OUTLINED_FUNCTION_113_10(&a17);
  v398 = v572;
  v399 = v478;
  v478();
  v400 = v563;
  (v399)(v545, v563, v398);
  v401 = v556;
  OUTLINED_FUNCTION_261_2(&v570);
  outlined init with copy of ResourceBundle?(v402, v403, v404, v405);
  LOBYTE(v583) = BYTE4(v539);
  OUTLINED_FUNCTION_150_6();
  OUTLINED_FUNCTION_258_3();
  OUTLINED_FUNCTION_266_2();
  OUTLINED_FUNCTION_274_2(&v528);
  OUTLINED_FUNCTION_265_3();
  OUTLINED_FUNCTION_317_0();
  OUTLINED_FUNCTION_223_4(&v558);
  OUTLINED_FUNCTION_221_5(&v529);
  OUTLINED_FUNCTION_275_1(&v530);
  OUTLINED_FUNCTION_224_4(&v531);
  OUTLINED_FUNCTION_222_4(&v532);
  OUTLINED_FUNCTION_273_2(&v533);
  OUTLINED_FUNCTION_225_5(&v534);
  OUTLINED_FUNCTION_184_6(&v535);
  OUTLINED_FUNCTION_183_6(&v536);
  OUTLINED_FUNCTION_198_5(&v537);
  OUTLINED_FUNCTION_129_12(&v538);
  OUTLINED_FUNCTION_127_14(&v539);
  OUTLINED_FUNCTION_125_10(&v540);
  OUTLINED_FUNCTION_131_8(&v541);
  OUTLINED_FUNCTION_128_10(&v542);
  OUTLINED_FUNCTION_130_11(&v543);
  OUTLINED_FUNCTION_120_9(&v545);
  OUTLINED_FUNCTION_126_13(v546);
  OUTLINED_FUNCTION_182_8(&v512);
  OUTLINED_FUNCTION_118_9();
  OUTLINED_FUNCTION_112_15(&v547 + 4);
  v406 = v553;
  FlightReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:flightNumber:flightCheckInUrl:flightBookingInfoUrl:flightCarrier:flightCarrierCode:flightDesignator:flightDepartureDateComponents:flightArrivalDateComponents:flightArrivalAirportAddress:flightDepartureAirportAddress:flightArrivalAirportCode:flightDepartureAirportCode:flightArrivalAirportCountry:flightDepartureAirportCountry:flightArrivalAirportLocality:flightDepartureAirportLocality:flightArrivalAirportName:flightDepartureAirportName:flightArrivalAirportRegion:flightDepartureAirportRegion:flightConfirmationNumber:flightPassengerNames:flightPassengerSeatNumbers:flightArrivalTerminal:flightDepartureTerminal:flightBookingProvider:flightBoardingTimeDate:flightDepartureGate:flightArrivalGate:flightDuration:flightCostCurrency:flightCostAmount:flightStatus:flightUpdateStatus:flightDepartureDateString:flightArrivalDateString:_resolvedFlightJSON();
  outlined destroy of FlightSnippet.Leg?(v401, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v407 = v571 + 8;
  v408 = *(v571 + 8);
  v409 = v400;
  v410 = v406;
  v408(v409, v398);
  v411 = OUTLINED_FUNCTION_32_0();
  v571 = v407;
  (v408)(v411);
  outlined destroy of FlightSnippet.Leg?(v561, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_33_13();
  outlined destroy of FlightSnippet.Leg?(v412, v413, v414);
  v415 = v554;
  v416 = *(v554 + 16);
  v417 = v574;
  v416(v555, v410, v574);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v418 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v418, static Logging.search);
  v419 = v544;
  v416(v544, v410, v417);
  v420 = Logger.logObject.getter();
  v421 = static os_log_type_t.debug.getter();
  v422 = OUTLINED_FUNCTION_32_9();
  if (os_log_type_enabled(v422, v423))
  {
    OUTLINED_FUNCTION_28_3();
    v424 = swift_slowAlloc();
    v425 = swift_slowAlloc();
    *v424 = 136642819;
    v582 = v408;
    v583 = v425;
    v426 = OUTLINED_FUNCTION_32_3();
    (v416)(v426);
    String.init<A>(describing:)();
    v427 = *(v415 + 8);
    v427(v419, v417);
    v428 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v424 + 4) = v428;
    _os_log_impl(&dword_25D85C000, v420, v421, "PreExtractedEvents.FlightReservation: created: %{sensitive}s", v424, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v425);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    v427(v553, v417);
    v429 = v555;
    v415 = v554;
    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v430, v431, v432);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v433, v434, v435);
    v436 = v572;
    v437 = v582;
    v582(v567, v572);
    v438 = *(v559 + 8);
    OUTLINED_FUNCTION_251_0(&a14);
    v438();
    v437(v569, v436);
    v439 = OUTLINED_FUNCTION_292_0();
    (v438)(v439, v421);
    v440 = OUTLINED_FUNCTION_41_18();
    (v438)(v440);
    v441 = OUTLINED_FUNCTION_68_17(&a20);
    (v438)(v441);
  }

  else
  {

    v442 = *(v415 + 8);
    v442(v419, v417);
    v442(v410, v417);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v443, v444, v445);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v446, v447, v448);
    v449 = v572;
    v408(v567, v572);
    v450 = *(v559 + 8);
    OUTLINED_FUNCTION_251_0(&a14);
    v450();
    v408(v569, v449);
    v451 = OUTLINED_FUNCTION_292_0();
    (v450)(v451, v421);
    v452 = OUTLINED_FUNCTION_41_18();
    (v450)(v452);
    v453 = OUTLINED_FUNCTION_68_17(&a20);
    (v450)(v453);
    v429 = v555;
  }

  (*(v415 + 32))(v573, v429, v417);
  v187 = OUTLINED_FUNCTION_13_2();
  v190 = v417;
LABEL_24:
  __swift_storeEnumTagSinglePayload(v187, v188, v189, v190);
  OUTLINED_FUNCTION_101_9();
}

uint64_t _sSdySdSgxcSyRzlufCSS_Tt0g5(uint64_t a1, uint64_t a2)
{
  specialized String.withCString<A>(_:)(a1, a2);
  OUTLINED_FUNCTION_174_5();
  return 0;
}

void FlightReservation.init(id:timeIsUnknown:flightNumber:flightCheckInUrl:flightBookingInfoUrl:flightCarrier:flightCarrierCode:flightDesignator:flightDepartureDateComponents:flightArrivalDateComponents:flightArrivalAirportAddress:flightDepartureAirportAddress:flightArrivalAirportCode:flightDepartureAirportCode:flightArrivalAirportCountry:flightDepartureAirportCountry:flightArrivalAirportLocality:flightDepartureAirportLocality:flightArrivalAirportName:flightDepartureAirportName:flightArrivalAirportRegion:flightDepartureAirportRegion:flightConfirmationNumber:flightPassengerNames:flightPassengerSeatNumbers:flightArrivalTerminal:flightDepartureTerminal:flightBookingProvider:flightBoardingTimeDate:flightDepartureGate:flightArrivalGate:flightDuration:flightCostCurrency:flightCostAmount:flightStatus:flightUpdateStatus:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:startDateTimeZone:endDateTimeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t *a45, uint64_t a46, uint64_t *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  OUTLINED_FUNCTION_155();
  a19 = v73;
  a20 = v74;
  v233[5] = v75;
  v256 = v77;
  v257 = v76;
  v259 = v78;
  v260 = v79;
  v234 = v80;
  v237 = v81;
  v236 = v82;
  v235 = v83;
  v227[0] = STACK[0x8E8];
  v226 = STACK[0x8E0];
  v225 = STACK[0x8D8];
  v224 = STACK[0x8D0];
  OUTLINED_FUNCTION_188_7(STACK[0x8C8]);
  v228 = STACK[0x8C0];
  OUTLINED_FUNCTION_205_5(STACK[0x8B8]);
  OUTLINED_FUNCTION_259_4(STACK[0x8B0]);
  v232 = STACK[0x8A8];
  v231 = STACK[0x8A0];
  v233[4] = STACK[0x898];
  OUTLINED_FUNCTION_253_3(STACK[0x890]);
  OUTLINED_FUNCTION_230_3(STACK[0x888]);
  OUTLINED_FUNCTION_190_8(STACK[0x880]);
  v244 = STACK[0x878];
  v223 = STACK[0x870];
  v222 = STACK[0x868];
  OUTLINED_FUNCTION_226_3(STACK[0x860]);
  v220 = STACK[0x858];
  v212[0] = STACK[0x850];
  v219 = a72;
  OUTLINED_FUNCTION_204_7(a71);
  v217 = a70;
  v216[1] = a69;
  v216[0] = a67;
  v215 = a66;
  v214[1] = a65;
  v214[0] = a64;
  v213 = a63;
  v227[1] = a62;
  v212[2] = a61;
  v212[1] = a60;
  v242 = a59;
  v238 = a58;
  v245 = a57;
  v239 = a56;
  v240 = a55;
  v211[6] = a54;
  v261 = a53;
  v246 = a52;
  v211[5] = a51;
  v211[4] = a50;
  v211[3] = a49;
  v211[2] = a48;
  v248 = a47;
  v241 = a46;
  v252 = a45;
  v243 = a44;
  v211[1] = a43;
  v211[0] = a42;
  v210[1] = a41;
  v210[0] = a40;
  v84 = a26;
  v85 = a27;
  v86 = a23;
  v258 = a22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v87);
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v91);
  v92 = type metadata accessor for DateComponents();
  v93 = OUTLINED_FUNCTION_14(v92);
  v95 = v94;
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v101 = OUTLINED_FUNCTION_114(v100);
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v105);
  v106 = &_s10Foundation14DateComponentsVSgMR;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_114(v107);
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_59_4();
  v208 = v95;
  v111 = *(v95 + 16);
  v255 = v84;
  (v111)(v72, v84, v92);
  v112 = OUTLINED_FUNCTION_49_19();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v92);
  v253 = dateString(fromDateComponents:)(v72);
  v116 = v115;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of FlightSnippet.Leg?(v117, v118, v119);
  v221 = v85;
  v206 = v95 + 16;
  v205 = v111;
  (v111)(v72, v85, v92);
  v120 = v244;
  v121 = OUTLINED_FUNCTION_49_19();
  v209 = v92;
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v92);
  v251 = dateString(fromDateComponents:)(v72);
  v263 = v124;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of FlightSnippet.Leg?(v125, v126, v127);
  v128 = 0;
  v129 = *(v244 + 16);
  v130 = *MEMORY[0x277CC3128];
  v264 = *MEMORY[0x277CC27A0];
  v254[1] = *MEMORY[0x277CC28F0];
  v254[0] = *MEMORY[0x277CC2898];
  v203 = *MEMORY[0x277CC2848];
  v201 = *MEMORY[0x277CC28C0];
  v200 = *MEMORY[0x277CC2908];
  v199 = *MEMORY[0x277CC2860];
  v249 = v86;
  v198 = *MEMORY[0x277CC28E0];
  OUTLINED_FUNCTION_44_6();
  v202 = v131;
  OUTLINED_FUNCTION_44_6();
  v204 = v132;
  v262 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_83_14();
  v197 = v134 - 2;
  v247 = v133;
LABEL_2:
  for (i = (v133 + 16 * v128); ; i += 2)
  {
    if (v129 == v128)
    {
      OUTLINED_FUNCTION_8_40();
      v264 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(v262, v178, v179, v180);
      OUTLINED_FUNCTION_261_2(v212);
      OUTLINED_FUNCTION_50_9();
      outlined init with copy of ResourceBundle?(v181, v182, v183, v184);
      OUTLINED_FUNCTION_50_9();
      outlined init with copy of ResourceBundle?(v185, v186, v187, v188);
      v189 = OUTLINED_FUNCTION_226_1(&v213);
      (v205)(v189, v255, v209);
      OUTLINED_FUNCTION_48_12(v214);
      OUTLINED_FUNCTION_251_1(&v247);
      v205();
      v190 = OUTLINED_FUNCTION_264_3(v254);
      outlined init with copy of ResourceBundle?(v190, v207, v191, v192);
      OUTLINED_FUNCTION_143_10(&v228 + 4);
      OUTLINED_FUNCTION_265_3();
      OUTLINED_FUNCTION_266_2();
      OUTLINED_FUNCTION_258_3();
      OUTLINED_FUNCTION_124_14();
      OUTLINED_FUNCTION_213_0();
      OUTLINED_FUNCTION_133_11();
      OUTLINED_FUNCTION_117_12();
      OUTLINED_FUNCTION_192_8();
      OUTLINED_FUNCTION_274_2(v233);
      OUTLINED_FUNCTION_165_5();
      OUTLINED_FUNCTION_136_11();
      OUTLINED_FUNCTION_221_5(&v232);
      OUTLINED_FUNCTION_275_1(&v231);
      OUTLINED_FUNCTION_224_4(&v230);
      OUTLINED_FUNCTION_222_4(&v229);
      OUTLINED_FUNCTION_273_2(v227);
      OUTLINED_FUNCTION_225_5(&v226);
      OUTLINED_FUNCTION_184_6(&v225);
      OUTLINED_FUNCTION_183_6(&v224);
      OUTLINED_FUNCTION_198_5(&v223);
      OUTLINED_FUNCTION_129_12(&v222);
      OUTLINED_FUNCTION_127_14(&v221);
      OUTLINED_FUNCTION_125_10(&v220);
      OUTLINED_FUNCTION_131_8(&v219);
      OUTLINED_FUNCTION_128_10(&v218);
      OUTLINED_FUNCTION_130_11(&v217);
      OUTLINED_FUNCTION_120_9(v216);
      OUTLINED_FUNCTION_126_13(&v215);
      OUTLINED_FUNCTION_134_10();
      OUTLINED_FUNCTION_112_15(&v265);
      FlightReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:flightNumber:flightCheckInUrl:flightBookingInfoUrl:flightCarrier:flightCarrierCode:flightDesignator:flightDepartureDateComponents:flightArrivalDateComponents:flightArrivalAirportAddress:flightDepartureAirportAddress:flightArrivalAirportCode:flightDepartureAirportCode:flightArrivalAirportCountry:flightDepartureAirportCountry:flightArrivalAirportLocality:flightDepartureAirportLocality:flightArrivalAirportName:flightDepartureAirportName:flightArrivalAirportRegion:flightDepartureAirportRegion:flightConfirmationNumber:flightPassengerNames:flightPassengerSeatNumbers:flightArrivalTerminal:flightDepartureTerminal:flightBookingProvider:flightBoardingTimeDate:flightDepartureGate:flightArrivalGate:flightDuration:flightCostCurrency:flightCostAmount:flightStatus:flightUpdateStatus:flightDepartureDateString:flightArrivalDateString:_resolvedFlightJSON();
      outlined destroy of FlightSnippet.Leg?(v206, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v193 = *(v208 + 8);
      v193(v129, v209);
      v193(v255, v209);
      outlined destroy of FlightSnippet.Leg?(v256, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      OUTLINED_FUNCTION_33_13();
      outlined destroy of FlightSnippet.Leg?(v194, v195, v196);
      OUTLINED_FUNCTION_148();
      return;
    }

    if (v128 >= *(v120 + 16))
    {
      break;
    }

    v136 = *(i - 1);
    v137 = *i;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    v139 = v139 && v138 == v137;
    if (v139)
    {

LABEL_52:
      if (v116)
      {

        OUTLINED_FUNCTION_83_14();
        v250 = v159 + 2;
        v161 = v204;
        v162 = v253;
        v106 = v116;
        goto LABEL_76;
      }

      goto LABEL_53;
    }

    v140 = OUTLINED_FUNCTION_45_17();

    if (v140)
    {
      goto LABEL_52;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v139 && v141 == v137)
    {

LABEL_55:
      if (v263)
      {
        OUTLINED_FUNCTION_83_14();
        v250 = v160;
        v106 = v263;

        v161 = v202;
        v162 = v251;
        goto LABEL_76;
      }

      goto LABEL_53;
    }

    OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_227_2();
    if (v140)
    {
      goto LABEL_55;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v139 && v143 == v137)
    {

LABEL_74:
      v266 = 0;
      v267 = 0xE000000000000000;

      OUTLINED_FUNCTION_113_10(v211);
      MEMORY[0x25F89F6C0]();

      OUTLINED_FUNCTION_113_10(v210);
      MEMORY[0x25F89F6C0]();

      v162 = v266;
      v106 = v267;
      OUTLINED_FUNCTION_240_3();
      v250 = v163 & 0xFFFFFFFFFFFFLL | 0x754E000000000000;
      v161 = 0xEC0000007265626DLL;
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_227_2();
    if (v140)
    {
      goto LABEL_74;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v139 && v145 == v137)
    {

LABEL_58:
      if (v261)
      {
        v106 = v261;

        OUTLINED_FUNCTION_83_14();
        v250 = v164 + 1;
        v161 = 0x800000025DBF7580;
        v165 = &a17;
LABEL_75:
        v162 = *(v165 - 32);
        goto LABEL_76;
      }

      goto LABEL_53;
    }

    OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_227_2();
    if (v140)
    {
      goto LABEL_58;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v139 && v147 == v137)
    {

LABEL_61:
      if (v252)
      {
        v106 = v252;

        OUTLINED_FUNCTION_83_14();
        v250 = v170 + 1;
        v161 = 0x800000025DBF7500;
        v165 = &a14;
        goto LABEL_75;
      }

      goto LABEL_53;
    }

    OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_227_2();
    if (v140)
    {
      goto LABEL_61;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v139 && v149 == v137)
    {

LABEL_64:
      if (v248)
      {
        v106 = v248;

        OUTLINED_FUNCTION_83_14();
        v250 = v171 + 3;
        v161 = 0x800000025DBF7520;
        v165 = &a12;
        goto LABEL_75;
      }

      goto LABEL_53;
    }

    OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_227_2();
    if (v140)
    {
      goto LABEL_64;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v139 && v151 == v137)
    {

LABEL_82:
      OUTLINED_FUNCTION_117_12();
      v266 = v172;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      OUTLINED_FUNCTION_286_0();
      v162 = BidirectionalCollection<>.joined(separator:)();
      v106 = v173;

      OUTLINED_FUNCTION_83_14();
      v250 = v174 + 3;
      v161 = 0x800000025DBF75C0;
LABEL_76:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v175 = *(v262 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v262 = v176;
      }

      v167 = *(v262 + 16);
      v166 = *(v262 + 24);
      if (v167 >= v166 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v166);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v262 = v177;
      }

      ++v128;
      v168 = v262;
      *(v262 + 16) = v167 + 1;
      v169 = (v168 + 32 * v167);
      v169[4] = v250;
      v169[5] = v161;
      v169[6] = v162;
      v169[7] = v106;
      v133 = v247;
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_227_2();
    if (v140)
    {
      goto LABEL_82;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v139 && v153 == v137)
    {

LABEL_67:
      if (v245)
      {
        OUTLINED_FUNCTION_119_5(&a16);

        v250 = v197;
        v161 = 0x800000025DBF75E0;
        v165 = &a10;
        goto LABEL_75;
      }

      goto LABEL_53;
    }

    OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_227_2();
    if (v140)
    {
      goto LABEL_67;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v139 && v155 == v137)
    {
    }

    else
    {
      OUTLINED_FUNCTION_45_17();
      OUTLINED_FUNCTION_227_2();
      if ((v140 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    OUTLINED_FUNCTION_124_14();
    if (v157)
    {
      OUTLINED_FUNCTION_83_14();
      v250 = v158;
      OUTLINED_FUNCTION_119_5(&a13);

      v161 = 0x800000025DBF7600;
      v165 = &a9;
      goto LABEL_75;
    }

LABEL_53:

    ++v128;
  }

  __break(1u);
}

void HotelReservation.init(item:answerAttributes:requireDates:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_194_6();
  a21 = v24;
  a22 = v25;
  v448 = v26;
  LODWORD(v443) = v27;
  v455 = v28;
  v30 = v29;
  v442 = v31;
  v444 = type metadata accessor for DateComponents();
  v32 = OUTLINED_FUNCTION_14(v444);
  v428 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v40 = OUTLINED_FUNCTION_114(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v47);
  v49 = &v392 - v48;
  v437 = type metadata accessor for Calendar();
  v50 = OUTLINED_FUNCTION_14(v437);
  v436 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_28_2(v55 - v54);
  v56 = type metadata accessor for Date();
  v57 = OUTLINED_FUNCTION_14(v56);
  v438 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  v64 = MEMORY[0x28223BE20](v63);
  v66 = &v392 - v65;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_46_14();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v68 = OUTLINED_FUNCTION_216_0(v67);
  v69 = OUTLINED_FUNCTION_17(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_7_4();
  v440 = v75;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_7_4();
  v445 = v77;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_7_4();
  v452 = v80;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_14_2();
  v453 = v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v85);
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v88);
  v90 = &v392 - v89;
  v450 = type metadata accessor for TimeZone();
  v91 = OUTLINED_FUNCTION_14(v450);
  v446 = v92;
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_36();
  v97 = v96 - v95;
  v441 = type metadata accessor for HotelReservation();
  v98 = OUTLINED_FUNCTION_14(v441);
  v427[0] = v99;
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_14_2();
  v439 = v105;
  v447 = v30;
  v106 = [v30 attributeSet];
  v451 = v97;
  static TimeZone.current.getter();
  v454 = v106;
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_startDateTimeZone);
  v449 = v22;
  if (v107)
  {
    v97 = v107;
    TimeZone.init(identifier:)();

    v108 = OUTLINED_FUNCTION_202_5();
    v109 = v450;
    OUTLINED_FUNCTION_166(v108, v110, v450);
    if (v333)
    {
      outlined destroy of FlightSnippet.Leg?(v90, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
    }

    else
    {
      v97 = v446;
      v111 = v451;
      (*(v446 + 8))(v451, v109);
      v22 = v449;
      (*(v97 + 32))(v111, v90, v109);
    }
  }

  v112 = [v454 startDate];
  v113 = v112;
  if (v443)
  {
    if (v112)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v114 = [v454 endDate];
      if (v114)
      {
        v115 = v114;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        OUTLINED_FUNCTION_66_10(&a18);
        static Calendar.current.getter();
        Calendar.dateComponents(in:from:)();
        v116 = *(v436 + 8);
        OUTLINED_FUNCTION_251_1(&a20);
        v116();
        v117 = OUTLINED_FUNCTION_37_17();
        v118 = v444;
        __swift_storeEnumTagSinglePayload(v117, v119, v120, v444);
        static Calendar.current.getter();
        Calendar.dateComponents(in:from:)();
        (v116)(v115, v97);
        v22 = v449;
        v121 = *(v438 + 8);
        v121(v66, v56);
        v122 = OUTLINED_FUNCTION_121_0();
        (v121)(v122);
        v123 = v454;
        OUTLINED_FUNCTION_307();
        goto LABEL_35;
      }

      v139 = *(v438 + 8);
      v140 = OUTLINED_FUNCTION_121_0();
      v141(v140);
    }

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v142 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v142, static Logging.search);
    v143 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v144 = OUTLINED_FUNCTION_60_7();
    v146 = os_log_type_enabled(v144, v145);
    v147 = v454;
    if (v146)
    {
      v148 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v148);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v149, v150, v151, v152, v153, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    goto LABEL_53;
  }

  v124 = v438;
  if (v112)
  {
    OUTLINED_FUNCTION_104_10(&a13);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v125 = v124 + 32;
    v126 = *(v124 + 32);
    v126(v23, &off_2799EF000, v56);
    v127 = OUTLINED_FUNCTION_37_17();
    __swift_storeEnumTagSinglePayload(v127, v128, v129, v56);
    v126(v49, v23, v56);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v56);
    v133 = v429;
  }

  else
  {
    v125 = 1;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v134, v135, v136, v56);
    v137 = [v454 hotelCheckinDate];
    if (v137)
    {
      v138 = v137;
      OUTLINED_FUNCTION_104_10(&v448);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v125 = 0;
    }

    v133 = v429;
    OUTLINED_FUNCTION_102_10();
    __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
    v158 = OUTLINED_FUNCTION_94();
    outlined init with take of Date?(v158, v159);
    OUTLINED_FUNCTION_166(v23, 1, v56);
    if (!v333)
    {
      outlined destroy of FlightSnippet.Leg?(v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v160 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_166(v160, v161, v56);
  if (v333)
  {
    outlined destroy of FlightSnippet.Leg?(v49, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v162 = *(v124 + 32);
    v163 = OUTLINED_FUNCTION_94();
    v164(v163);
    OUTLINED_FUNCTION_66_10(&a18);
    static Calendar.current.getter();
    Calendar.dateComponents(in:from:)();
    OUTLINED_FUNCTION_192_8();
    v166 = OUTLINED_FUNCTION_295_0(v165);
    v167(v166);
    v168 = *(v124 + 8);
    v169 = OUTLINED_FUNCTION_34_5();
    v170(v169);
  }

  v123 = v454;
  v121 = v444;
  OUTLINED_FUNCTION_61_19();
  __swift_storeEnumTagSinglePayload(v171, v172, v173, v174);
  v175 = [v123 &selRef_eventEstimatedStartDate];
  if (v175)
  {
    v176 = v175;
    v177 = v121;
    v178 = v430;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v121 = (v124 + 32);
    v179 = *(v124 + 32);
    v180 = OUTLINED_FUNCTION_119_5(&a15);
    v179(v180, v178, v56);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v181, v182, v183, v56);
    v179(v133, v125, v56);
    v184 = OUTLINED_FUNCTION_49_19();
    __swift_storeEnumTagSinglePayload(v184, v185, v186, v56);
    OUTLINED_FUNCTION_307();
  }

  else
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v187, v188, v189, v56);
    v190 = [v123 hotelCheckoutDate];
    if (v190)
    {
      v191 = v190;
      v177 = v121;
      OUTLINED_FUNCTION_104_10(&v449);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v125 = v121;
      OUTLINED_FUNCTION_307();
    }

    else
    {
      v177 = v121;
      OUTLINED_FUNCTION_307();
      OUTLINED_FUNCTION_206_4();
    }

    OUTLINED_FUNCTION_102_10();
    __swift_storeEnumTagSinglePayload(v192, v193, v194, v195);
    outlined init with take of Date?(v125, v133);
    v196 = v432;
    v197 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_166(v197, v198, v56);
    if (!v333)
    {
      outlined destroy of FlightSnippet.Leg?(v196, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v199 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_166(v199, v200, v56);
  if (v333)
  {
    outlined destroy of FlightSnippet.Leg?(v133, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v201 = v423;
    (*(v124 + 32))(v423, v133, v56);
    OUTLINED_FUNCTION_66_10(&a18);
    static Calendar.current.getter();
    Calendar.dateComponents(in:from:)();
    OUTLINED_FUNCTION_192_8();
    v203 = OUTLINED_FUNCTION_295_0(v202);
    v204(v203);
    (*(v124 + 8))(v201, v56);
  }

  v118 = v177;
LABEL_35:
  OUTLINED_FUNCTION_160_6();
  __swift_storeEnumTagSinglePayload(v205, v206, v207, v208);
  if (one-time initialization token for search != -1)
  {
LABEL_123:
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v209 = type metadata accessor for Logger();
  v210 = __swift_project_value_buffer(v209, static Logging.search);
  OUTLINED_FUNCTION_33_13();
  outlined init with copy of ResourceBundle?(v211, v212, v213, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_251_4(v22, v452);
  v214 = Logger.logObject.getter();
  v215 = static os_log_type_t.debug.getter();
  v216 = OUTLINED_FUNCTION_77_5(v215);
  v438 = v210;
  if (v216)
  {
    OUTLINED_FUNCTION_90_1();
    LODWORD(v433) = &_s10Foundation14DateComponentsVSgMR;
    v443 = OUTLINED_FUNCTION_51_13();
    v456 = v443;
    LODWORD(_s10Foundation14DateComponentsVSgMR) = 136643075;
    OUTLINED_FUNCTION_113_10(&a17);
    outlined init with copy of ResourceBundle?(v217, v218, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v219 = v452;
    String.init<A>(describing:)();
    outlined destroy of FlightSnippet.Leg?(v121, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v220 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    unk_25DBD3C34 = v220;
    word_25DBD3C3C = 2085;
    outlined init with copy of ResourceBundle?(v219, v121, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    String.init<A>(describing:)();
    v123 = v454;
    outlined destroy of FlightSnippet.Leg?(v219, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v118 = v444;
    v221 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *algn_25DBD3C3E = v221;
    v22 = v449;
    _os_log_impl(&dword_25D85C000, v214, v433, "PreExtractedEvents.HotelReservation: created check-in: %{sensitive}s, check-out: %{sensitive}s", &_s10Foundation14DateComponentsVSgMR, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v222, v223, v224);
    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v225, v226, v227);
  }

  v228 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_hotelReservationForName);
  if (v229)
  {
    v230 = v228;
    v231 = v229;
  }

  else
  {
    v230 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_eventProvider);
    v231 = v232;
    if (v232)
    {
      v233 = Logger.logObject.getter();
      v234 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_77_5(v234))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_100_3(&dword_25D85C000, v235, v236, "PreExtractedEvents.HotelReservation: hotelReservationForName is nil, using hotelProvider to populate hotelReservationForName");
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }
    }
  }

  v237 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_uniqueIdentifier);
  if (!v238)
  {

    v249 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v250 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v250, v251))
    {
      v252 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v252);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v253, v254, v255, v256, v257, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v258, v259, v260);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v261, v262, v263);
LABEL_53:
    (*(v446 + 8))(v451, v450);
    v264 = OUTLINED_FUNCTION_42_21();
    v267 = v441;
    goto LABEL_121;
  }

  v239 = v237;
  v240 = v238;
  v241 = (*(*v448 + 80))(35);
  v424 = v230;
  v421 = v239;
  v420 = v240;
  if (v241)
  {
    v242 = Logger.logObject.getter();
    v243 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v243))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_100_3(&dword_25D85C000, v244, v245, "OmniSearch/includeEventUpdateStatus FF enabled. Including updateStatus.");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v246 = [v123 eventUpdateStatus];
    v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_43_14(v247, v248);
  }

  else
  {
    v416 = 0;
    v415 = 0;
  }

  v443 = v231;
  v417 = CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
  v268 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_hotelReservationId);
  OUTLINED_FUNCTION_163_7(v268, v269, &v452);
  v270 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_hotelUnderName);
  OUTLINED_FUNCTION_78_17(v270, v271);
  v272 = &_s10Foundation14DateComponentsVSgMR;
  OUTLINED_FUNCTION_251_4(v453, v445);
  v273 = v440;
  OUTLINED_FUNCTION_251_4(v22, v440);
  v274 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_hotelModifyReservationUrl);
  OUTLINED_FUNCTION_77_15(v274, v275);
  v276 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_hotelReservationForTelephone);
  v414 = v277;
  v423 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_hotelReservationForAddress);
  v432 = v278;
  v413 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_eventProvider);
  v412 = v279;
  outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v123, &selRef_eventCustomerNames);
  OUTLINED_FUNCTION_290_0();
  v411 = v280;
  outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v123, &selRef_eventRoomNumbers);
  OUTLINED_FUNCTION_290_0();
  v410 = v281;
  v282 = [v123 eventNumberOfRooms];
  if (v282)
  {

    v283 = [v123 eventNumberOfRooms];
    OUTLINED_FUNCTION_214_3();
    if (v284)
    {
      v285 = v284;
      v409 = [v284 integerValue];

      v408 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_210_3(&v433);
      v408 = v287;
    }
  }

  else
  {
    OUTLINED_FUNCTION_210_3(&v433);
    v408 = v286;
    OUTLINED_FUNCTION_214_3();
  }

  [v123 eventDuration];
  v289 = v288;
  v427[1] = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_eventTotalCost);
  v407 = v290;
  v406 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_eventStatus);
  v405 = v291;
  v292 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v447);
  OUTLINED_FUNCTION_73_15(v292, v293);
  if (!v294)
  {
    __break(1u);
    return;
  }

  v401 = v289;
  v295 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_mailMessageID);
  OUTLINED_FUNCTION_138_1(v295, v296);
  v297 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_eventMessageIdentifier);
  OUTLINED_FUNCTION_185_5(v297, v298);
  v403 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_eventSourceBundleIdentifier);
  v402 = v299;
  v400 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v123, &selRef_startDateTimeZone);
  v399 = v300;
  v433 = dateString(fromDateComponents:)(v445);
  v123 = v301;
  v430 = dateString(fromDateComponents:)(v273);
  v452 = v302;
  v303 = OUTLINED_FUNCTION_32_0();
  outlined init with copy of ResourceBundle?(v303, v304, v305, v306);
  v307 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v307, v308, v118);
  v404 = v276;
  if (!v333)
  {
    v309 = *(v231 + 32);
    v309(v22, &_s10Foundation14DateComponentsVSgMR, v118);
    v272 = v422;
    outlined init with copy of ResourceBundle?(v273, v422, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v310 = OUTLINED_FUNCTION_93_6();
    OUTLINED_FUNCTION_166(v310, v311, v118);
    if (!v333)
    {
      v313 = v418;
      v309(v418, v272, v118);
      v314 = v435;
      static Calendar.current.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
      v315 = type metadata accessor for Calendar.Component();
      OUTLINED_FUNCTION_14(v315);
      v317 = v316;
      v319 = *(v318 + 72);
      v320 = (*(v316 + 80) + 32) & ~*(v316 + 80);
      v321 = swift_allocObject();
      *(v321 + 16) = xmmword_25DBC8180;
      (*(v317 + 104))(v321 + v320, *MEMORY[0x277CC9968], v315);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5();
      v322 = v419;
      Calendar.dateComponents(_:from:to:)();

      (*(v436 + 8))(v314, v437);
      v323 = DateComponents.day.getter();
      OUTLINED_FUNCTION_191_8(v323);
      *(v325 - 256) = v324;
      v326 = *(v231 + 8);
      v326(v322, v118);
      v326(v313, v118);
      v326(v22, v118);
      goto LABEL_66;
    }

    (*(v231 + 8))(v22, v118);
  }

  outlined destroy of FlightSnippet.Leg?(v272, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_210_3(&a19);
  LODWORD(v435) = v312;
LABEL_66:
  v327 = 0;
  v121 = v455[2];
  v328 = *MEMORY[0x277CC3128];
  v329 = *MEMORY[0x277CC27A0];
  v437 = *MEMORY[0x277CC2940];
  v398 = *MEMORY[0x277CC2938];
  v444 = MEMORY[0x277D84F90];
  v393 = "flightDepartureTerminal";
  v396 = *MEMORY[0x277CC2950];
  v394 = "hotelReservationForTelephone";
  v395 = "hotelCheckoutDateString";
  v397 = "hotelCheckinDateString";
  OUTLINED_FUNCTION_188_7("hotelReservationId");
  v422 = v330;
LABEL_67:
  v22 = (v330 + 16 * v327);
  while (v121 != v327)
  {
    if (v327 >= v455[2])
    {
      __break(1u);
      goto LABEL_123;
    }

    v118 = *(v22 - 1);
    v331 = *v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_278_2();
    v333 = v333 && v332 == v331;
    if (v333)
    {

LABEL_97:
      if (v123)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_190_8(v346 + 4);
        v118 = v123;
        v352 = v418;
        v353 = &a16;
        goto LABEL_112;
      }

      goto LABEL_98;
    }

    v334 = OUTLINED_FUNCTION_107_9();

    if (v334)
    {
      goto LABEL_97;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_278_2();
    if (v333 && v335 == v331)
    {

LABEL_100:
      if (v452)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_190_8(v351 + 5);
        v118 = v452;
        v352 = v397;
        v353 = &a13;
LABEL_112:
        v347 = *(v353 - 32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v356 = *(v444 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v444 = v357;
        }

        v349 = *(v444 + 16);
        v348 = *(v444 + 24);
        if (v349 >= v348 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v348);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v444 = v358;
        }

        ++v327;
        *(v444 + 16) = v349 + 1;
        OUTLINED_FUNCTION_301_0(v352 | 0x8000000000000000);
        *(v350 + 48) = v347;
        *(v350 + 56) = v118;
        v330 = v422;
        goto LABEL_67;
      }

      goto LABEL_98;
    }

    OUTLINED_FUNCTION_107_9();
    OUTLINED_FUNCTION_325();
    if (v334)
    {
      goto LABEL_100;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_278_2();
    if (v333 && v337 == v331)
    {

LABEL_103:
      if (v443)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_190_8(v354 + 5);
        v118 = v443;
        v352 = v395;
        v353 = &v454;
        goto LABEL_112;
      }

      goto LABEL_98;
    }

    OUTLINED_FUNCTION_107_9();
    OUTLINED_FUNCTION_325();
    if (v334)
    {
      goto LABEL_103;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_278_2();
    if (v333 && v339 == v331)
    {

LABEL_106:
      OUTLINED_FUNCTION_124_14();
      if (v343)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_190_8(v355 + 8);
        v118 = v432;
        v352 = v394;
        v353 = &v453;
        goto LABEL_112;
      }

      goto LABEL_98;
    }

    OUTLINED_FUNCTION_107_9();
    OUTLINED_FUNCTION_325();
    if (v334)
    {
      goto LABEL_106;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_278_2();
    if (v333 && v341 == v331)
    {
    }

    else
    {
      OUTLINED_FUNCTION_107_9();
      OUTLINED_FUNCTION_325();
      if ((v334 & 1) == 0)
      {
        goto LABEL_98;
      }
    }

    OUTLINED_FUNCTION_133_11();
    if (v344)
    {
      v118 = v429;
      OUTLINED_FUNCTION_146_7();
      OUTLINED_FUNCTION_190_8(v345);
      v352 = v393;
      v353 = &v452;
      goto LABEL_112;
    }

LABEL_98:

    v22 += 2;
    ++v327;
  }

  OUTLINED_FUNCTION_8_40();
  _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(v444, v359, v360, v361);
  OUTLINED_FUNCTION_261_2(&a17);
  OUTLINED_FUNCTION_251_4(v362, v363);
  OUTLINED_FUNCTION_252_0(&v456);
  OUTLINED_FUNCTION_251_4(v364, v365);
  OUTLINED_FUNCTION_143_10(&a18);
  OUTLINED_FUNCTION_192_8();
  OUTLINED_FUNCTION_117_12();
  OUTLINED_FUNCTION_136_11();
  OUTLINED_FUNCTION_221_5(&v441);
  OUTLINED_FUNCTION_275_1(&v442);
  OUTLINED_FUNCTION_224_4(&v429);
  OUTLINED_FUNCTION_222_4(&v430);
  OUTLINED_FUNCTION_273_2(&v431);
  OUTLINED_FUNCTION_149_9();
  OUTLINED_FUNCTION_183_6(&v423);
  OUTLINED_FUNCTION_129_12(&v433);
  OUTLINED_FUNCTION_127_14(&v434);
  OUTLINED_FUNCTION_125_10(&v435);
  OUTLINED_FUNCTION_131_8(&v436);
  OUTLINED_FUNCTION_128_10(&v437);
  OUTLINED_FUNCTION_124_14();
  OUTLINED_FUNCTION_197_7(&v453);
  OUTLINED_FUNCTION_157_5(&v438);
  OUTLINED_FUNCTION_141_6(&v428);
  OUTLINED_FUNCTION_120_9(&v439);
  OUTLINED_FUNCTION_126_13(&v440);
  OUTLINED_FUNCTION_151_6();
  OUTLINED_FUNCTION_156_6(&v443);
  OUTLINED_FUNCTION_158_6(&v444);
  OUTLINED_FUNCTION_133_11();
  OUTLINED_FUNCTION_118_9();
  OUTLINED_FUNCTION_112_15(&v445 + 4);
  OUTLINED_FUNCTION_137_5(&v424);
  OUTLINED_FUNCTION_140_9(&v425);
  OUTLINED_FUNCTION_139_9(&v426);
  OUTLINED_FUNCTION_180_5(v427);
  OUTLINED_FUNCTION_192_7(&a14);
  HotelReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:hotelReservationId:hotelUnderName:hotelCheckinDateComponents:hotelCheckoutDateComponents:hotelReservationForName:hotelModifyReservationUrl:hotelReservationForTelephone:hotelReservationForAddress:hotelBookingProvider:hotelCustomerNames:hotelRoomNumbers:hotelNumberOfRooms:hotelDuration:hotelCost:hotelStatus:hotelUpdateStatus:hotelCheckinDateString:hotelCheckoutDateString:durationInDays:startDateTimeZone:)();
  OUTLINED_FUNCTION_47_11();
  outlined destroy of FlightSnippet.Leg?(v366, v367, v368);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of FlightSnippet.Leg?(v369, v370, v371);
  v372 = v427[0];
  v373 = *(v427[0] + 16);
  v374 = v441;
  v373(v439, v123, v441);
  v375 = OUTLINED_FUNCTION_119_5(&v455);
  v373(v375, v123, v374);
  v376 = v438;
  v377 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v378 = OUTLINED_FUNCTION_60_7();
  if (os_log_type_enabled(v378, v379))
  {
    OUTLINED_FUNCTION_28_3();
    v380 = swift_slowAlloc();
    v455 = swift_slowAlloc();
    v456 = v455;
    *v380 = 136642819;
    v381 = OUTLINED_FUNCTION_226_1(&v450);
    v373(v381, &_s10Foundation14DateComponentsVSgMR, v374);
    v382 = String.init<A>(describing:)();
    v383 = *(v372 + 8);
    v383(&_s10Foundation14DateComponentsVSgMR, v374);
    OUTLINED_FUNCTION_64_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_291_0();

    *(v380 + 4) = v382;
    _os_log_impl(&dword_25D85C000, v377, v376, "PreExtractedEvents.HotelReservation: created: %{sensitive}s", v380, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v455);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    v383(v431, v374);
  }

  else
  {

    v384 = *(v372 + 8);
    v384(&_s10Foundation14DateComponentsVSgMR, v374);
    v385 = OUTLINED_FUNCTION_32_3();
    (v384)(v385);
  }

  OUTLINED_FUNCTION_33_13();
  outlined destroy of FlightSnippet.Leg?(v386, v387, v388);
  OUTLINED_FUNCTION_33_13();
  outlined destroy of FlightSnippet.Leg?(v389, v390, v391);
  (*(v446 + 8))(v451, v450);
  (*(v372 + 32))(v442, v439, v374);
  v264 = OUTLINED_FUNCTION_13_2();
  v267 = v374;
LABEL_121:
  __swift_storeEnumTagSinglePayload(v264, v265, v266, v267);
  OUTLINED_FUNCTION_101_9();
}

void HotelReservation.init(id:timeIsUnknown:hotelReservationId:hotelUnderName:hotelCheckinDateComponents:hotelCheckoutDateComponents:hotelReservationForName:hotelModifyReservationUrl:hotelReservationForTelephone:hotelReservationForAddress:hotelBookingProvider:hotelCustomerNames:hotelRoomNumbers:hotelNumberOfRooms:hotelDuration:hotelCost:hotelStatus:hotelUpdateStatus:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:startDateTimeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned __int8 a36, uint64_t a37, unsigned __int8 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  OUTLINED_FUNCTION_155();
  a20 = v59;
  a21 = v60;
  v62 = v61;
  v200 = v63;
  v201 = v64;
  v213 = v65;
  v210 = v66;
  v202 = v67;
  v203 = v68;
  v209[0] = a49;
  v207 = v69;
  v208 = a48;
  v205 = v70;
  v206 = a47;
  v204 = a46;
  v71 = a45;
  v72 = a22;
  v73 = type metadata accessor for Calendar();
  v74 = OUTLINED_FUNCTION_14(v73);
  v218 = v75;
  v219 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_36();
  v221 = v79 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v81 = OUTLINED_FUNCTION_114(v80);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_36_21();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_216_3();
  v87 = type metadata accessor for DateComponents();
  v88 = OUTLINED_FUNCTION_14(v87);
  v90 = v89;
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_39_0();
  v217 = v93;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_7_4();
  v215 = v95;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v96);
  v98 = &v170 - v97;
  v216 = dateString(fromDateComponents:)(v62);
  v222 = v99;
  v214 = dateString(fromDateComponents:)(v72);
  v220 = v100;
  v209[1] = v62;
  outlined init with copy of ResourceBundle?(v62, v58, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_105_3(v58);
  if (v103)
  {
    outlined destroy of FlightSnippet.Leg?(v58, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_210_3(&a13);
    v198 = v101;
  }

  else
  {
    v102 = *(v90 + 32);
    v102(v98, v58, v87);
    outlined init with copy of ResourceBundle?(v72, v57, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_105_3(v57);
    if (v103)
    {
      (*(v90 + 8))(v98, v87);
      outlined destroy of FlightSnippet.Leg?(v57, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      OUTLINED_FUNCTION_210_3(&a13);
      v198 = v104;
    }

    else
    {
      v102(v215, v57, v87);
      static Calendar.current.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
      v105 = type metadata accessor for Calendar.Component();
      OUTLINED_FUNCTION_14(v105);
      v107 = v106;
      v109 = *(v108 + 72);
      v110 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_25DBC8180;
      (*(v107 + 104))(v111 + v110, *MEMORY[0x277CC9968], v105);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5();
      v112 = v217;
      v113 = v221;
      Calendar.dateComponents(_:from:to:)();

      (*(v218 + 8))(v113, v219);
      v199 = DateComponents.day.getter();
      v198 = v114;
      v115 = *(v90 + 8);
      v115(v112, v87);
      v116 = OUTLINED_FUNCTION_65_15();
      (v115)(v116);
      v115(v98, v87);
    }
  }

  v117 = 0;
  v191 = a57;
  OUTLINED_FUNCTION_288_0(a56);
  v197 = a55;
  v196 = a54;
  v195 = a53;
  v194 = a52;
  v193 = a51;
  v192 = a50;
  v190 = a44;
  OUTLINED_FUNCTION_253_3(a43);
  OUTLINED_FUNCTION_205_5(a42);
  OUTLINED_FUNCTION_230_3(a41);
  OUTLINED_FUNCTION_259_4(a40);
  v189 = a39;
  v186 = a38;
  v188 = a37;
  v185 = a36;
  OUTLINED_FUNCTION_190_8(a35);
  OUTLINED_FUNCTION_188_7(a34);
  v187 = a33;
  v118 = *MEMORY[0x277CC3128];
  v221 = *MEMORY[0x277CC27A0];
  v217 = *MEMORY[0x277CC2940];
  v176 = *MEMORY[0x277CC2938];
  v174 = *MEMORY[0x277CC2950];
  v171 = "flightDepartureTerminal";
  v172 = "hotelReservationForTelephone";
  v173 = "hotelCheckoutDateString";
  OUTLINED_FUNCTION_204_7("hotelCheckinDateString");
  v177 = "hotelReservationId";
  v184 = a32;
  v183 = a31;
  v215 = a30;
  v211 = a29;
  v182 = a28;
  v181 = a27;
  v180 = a26;
  v179 = a25;
  v218 = a24;
  v212 = a23;
  v119 = *(v71 + 16);
  v120 = v71 + 40;
  v219 = MEMORY[0x277D84F90];
  v178 = v71 + 40;
LABEL_8:
  for (i = (v120 + 16 * v117); ; i += 2)
  {
    if (v119 == v117)
    {
      OUTLINED_FUNCTION_8_40();
      _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(v219, v153, v154, v155);
      OUTLINED_FUNCTION_261_2(&a14);
      OUTLINED_FUNCTION_50_9();
      outlined init with copy of ResourceBundle?(v156, v157, v158, v159);
      OUTLINED_FUNCTION_252_0(&a15);
      OUTLINED_FUNCTION_50_9();
      outlined init with copy of ResourceBundle?(v160, v161, v162, v163);
      OUTLINED_FUNCTION_143_10(v209);
      OUTLINED_FUNCTION_129_12(&v211);
      OUTLINED_FUNCTION_111_8(&v210);
      OUTLINED_FUNCTION_131_8(&v208);
      OUTLINED_FUNCTION_128_10(&v207);
      OUTLINED_FUNCTION_157_5(&v206);
      OUTLINED_FUNCTION_141_6(&v205);
      OUTLINED_FUNCTION_120_9(&v204);
      OUTLINED_FUNCTION_126_13(&v203);
      OUTLINED_FUNCTION_156_6(&a16);
      OUTLINED_FUNCTION_158_6(&a17);
      OUTLINED_FUNCTION_112_15(&a19);
      OUTLINED_FUNCTION_117_12();
      OUTLINED_FUNCTION_133_11();
      OUTLINED_FUNCTION_137_5(&a9);
      OUTLINED_FUNCTION_140_9(&v223);
      OUTLINED_FUNCTION_139_9(&v222);
      OUTLINED_FUNCTION_180_5(&v221);
      HotelReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:hotelReservationId:hotelUnderName:hotelCheckinDateComponents:hotelCheckoutDateComponents:hotelReservationForName:hotelModifyReservationUrl:hotelReservationForTelephone:hotelReservationForAddress:hotelBookingProvider:hotelCustomerNames:hotelRoomNumbers:hotelNumberOfRooms:hotelDuration:hotelCost:hotelStatus:hotelUpdateStatus:hotelCheckinDateString:hotelCheckoutDateString:durationInDays:startDateTimeZone:)();
      OUTLINED_FUNCTION_33_13();
      outlined destroy of FlightSnippet.Leg?(v164, v165, v166);
      OUTLINED_FUNCTION_33_13();
      outlined destroy of FlightSnippet.Leg?(v167, v168, v169);
      OUTLINED_FUNCTION_148();
      return;
    }

    if (v117 >= *(v71 + 16))
    {
      break;
    }

    v122 = *(i - 1);
    v123 = *i;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_270_2();
    if (v103)
    {
      v125 = v124 == v123;
    }

    else
    {
      v125 = 0;
    }

    if (v125)
    {

LABEL_38:
      if (v222)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_226_3(v140 + 4);
        v145 = v222;
        v146 = v177;
        v147 = v216;
        goto LABEL_53;
      }

      goto LABEL_39;
    }

    OUTLINED_FUNCTION_69_15();
    v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v126)
    {
      goto LABEL_38;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_270_2();
    if (v103)
    {
      v128 = v127 == v123;
    }

    else
    {
      v128 = 0;
    }

    if (v128)
    {

LABEL_41:
      if (v220)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_226_3(v144 + 5);
        v145 = v220;
        v146 = v175;
        v147 = v214;
LABEL_53:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v150 = *(v219 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v219 = v151;
        }

        v142 = *(v219 + 16);
        v141 = *(v219 + 24);
        if (v142 >= v141 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v141);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v219 = v152;
        }

        ++v117;
        *(v219 + 16) = v142 + 1;
        OUTLINED_FUNCTION_301_0(v146 | 0x8000000000000000);
        *(v143 + 48) = v147;
        *(v143 + 56) = v145;
        v120 = v178;
        goto LABEL_8;
      }

      goto LABEL_39;
    }

    OUTLINED_FUNCTION_69_15();
    v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v129)
    {
      goto LABEL_41;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_270_2();
    if (v103)
    {
      v131 = v130 == v123;
    }

    else
    {
      v131 = 0;
    }

    if (v131)
    {

LABEL_44:
      if (v218)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_226_3(v148 + 5);
        v145 = v218;
        v146 = v173;
        v147 = v212;
        goto LABEL_53;
      }

      goto LABEL_39;
    }

    OUTLINED_FUNCTION_69_15();
    v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v132)
    {
      goto LABEL_44;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_270_2();
    if (v103)
    {
      v134 = v133 == v123;
    }

    else
    {
      v134 = 0;
    }

    if (v134)
    {

LABEL_47:
      if (v215)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_226_3(v149 + 8);
        v145 = v215;
        v146 = v172;
        v147 = v211;
        goto LABEL_53;
      }

      goto LABEL_39;
    }

    OUTLINED_FUNCTION_69_15();
    v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v135)
    {
      goto LABEL_47;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_270_2();
    if (v103)
    {
      v137 = v136 == v123;
    }

    else
    {
      v137 = 0;
    }

    if (v137)
    {
    }

    else
    {
      OUTLINED_FUNCTION_69_15();
      v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v138 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    if (v213)
    {
      v145 = v213;
      OUTLINED_FUNCTION_146_7();
      OUTLINED_FUNCTION_226_3(v139);
      v146 = v171;
      v147 = v210;
      goto LABEL_53;
    }

LABEL_39:

    ++v117;
  }

  __break(1u);
}

uint64_t (*protocol witness for InstantAnswerDocument.eventSourceBundleIdentifier.modify in conformance HotelReservation(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = HotelReservation.eventSourceBundleIdentifier.modify();
  return protocol witness for InstantAnswerDocument.eventSourceBundleIdentifier.modify in conformance HotelReservation;
}

uint64_t (*protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance HotelReservation(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = HotelReservation.eventSourceLLMConsumableDescription.modify();
  return protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance FlightReservation;
}

void RestaurantReservation.init(item:answerAttributes:requireDates:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_155();
  a20 = v23;
  a21 = v24;
  v302 = v25;
  LODWORD(v306) = v26;
  v307 = v27;
  v29 = v28;
  v296 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v32 = OUTLINED_FUNCTION_114(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_216_3();
  v293 = type metadata accessor for Calendar();
  v37 = OUTLINED_FUNCTION_14(v293);
  v290 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_36();
  v289 = v42 - v41;
  OUTLINED_FUNCTION_78_0();
  v43 = type metadata accessor for Date();
  v44 = OUTLINED_FUNCTION_14(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_109();
  v51 = v49 - v50;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v53);
  v55 = &v267 - v54;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v56 = OUTLINED_FUNCTION_17(v286);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_39_0();
  v297 = v59;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_7_4();
  v294 = v61;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_4();
  v299 = v63;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_14_2();
  v303 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v69);
  v71 = &v267 - v70;
  v72 = type metadata accessor for TimeZone();
  v73 = OUTLINED_FUNCTION_14(v72);
  v298 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_36();
  v79 = v78 - v77;
  v295 = type metadata accessor for RestaurantReservation();
  v80 = OUTLINED_FUNCTION_14(v295);
  v288 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_7_4();
  v291 = v86;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_14_2();
  v292 = v88;
  v301 = v29;
  v89 = [v29 attributeSet];
  v304 = v79;
  static TimeZone.current.getter();
  v305 = v89;
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v89, &selRef_startDateTimeZone);
  if (v90)
  {
    TimeZone.init(identifier:)();

    OUTLINED_FUNCTION_166(v71, 1, v72);
    if (v220)
    {
      outlined destroy of FlightSnippet.Leg?(v71, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
    }

    else
    {
      v91 = v298;
      v79 = v304;
      (*(v298 + 8))(v304, v72);
      (*(v91 + 32))(v79, v71, v72);
    }
  }

  v300 = v72;
  v92 = [v305 startDate];
  v93 = v92;
  if (v306)
  {
    if (!v92)
    {

      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v104, static Logging.search);
      v105 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v106 = OUTLINED_FUNCTION_60_7();
      v108 = os_log_type_enabled(v106, v107);
      v109 = v295;
      v110 = v300;
      v111 = v305;
      if (v108)
      {
        v112 = OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_81_4(v112);
        OUTLINED_FUNCTION_110_4();
        _os_log_impl(v113, v114, v115, v116, v117, 2u);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      goto LABEL_35;
    }

    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    static Calendar.current.getter();
    v94 = v303;
    Calendar.dateComponents(in:from:)();
    v95 = OUTLINED_FUNCTION_303_0();
    v96(v95);
    (*(v46 + 8))(v55, v43);
  }

  else
  {
    if (v92)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v97 = *(v46 + 32);
      v97(v22, v51, v43);
      v98 = OUTLINED_FUNCTION_37_17();
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v43);
      v97(v21, v22, v43);
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v101, v102, v103, v43);
      v94 = v303;
    }

    else
    {
      v51 = 1;
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v118, v119, v120, v43);
      v121 = [v305 restaurantStartDate];
      if (v121)
      {
        v122 = v121;
        OUTLINED_FUNCTION_66_10(&a15);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v51 = 0;
        v94 = v303;
      }

      else
      {
        v94 = v303;
        v79 = v283;
      }

      OUTLINED_FUNCTION_61_19();
      __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
      outlined init with take of Date?(v79, v21);
      OUTLINED_FUNCTION_166(v22, 1, v43);
      if (!v220)
      {
        outlined destroy of FlightSnippet.Leg?(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    v127 = OUTLINED_FUNCTION_202_5();
    OUTLINED_FUNCTION_166(v127, v128, v43);
    if (v220)
    {
      outlined destroy of FlightSnippet.Leg?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v51 = v284;
      (*(v46 + 32))(v284, v21, v43);
      static Calendar.current.getter();
      Calendar.dateComponents(in:from:)();
      v129 = OUTLINED_FUNCTION_303_0();
      v130(v129);
      (*(v46 + 8))(v51, v43);
    }
  }

  type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_219_4();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
  v135 = v299;
  if (one-time initialization token for search != -1)
  {
LABEL_90:
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v136 = type metadata accessor for Logger();
  v137 = __swift_project_value_buffer(v136, static Logging.search);
  outlined init with copy of ResourceBundle?(v94, v135, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v138 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v139 = OUTLINED_FUNCTION_60_7();
  v141 = os_log_type_enabled(v139, v140);
  v110 = v300;
  if (v141)
  {
    OUTLINED_FUNCTION_28_3();
    swift_slowAlloc();
    v142 = OUTLINED_FUNCTION_10_23();
    v308 = v142;
    *v51 = 136315138;
    outlined init with copy of ResourceBundle?(v135, v294, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    String.init<A>(describing:)();
    outlined destroy of FlightSnippet.Leg?(v135, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v51 + 4) = v143;
    OUTLINED_FUNCTION_110_4();
    _os_log_impl(v144, v145, v146, v147, v148, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v142);
    v94 = v303;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    outlined destroy of FlightSnippet.Leg?(v135, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  }

  v149 = v305;
  v135 = v307;
  v150 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v305, &selRef_uniqueIdentifier);
  if (!v151)
  {

    v167 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v168 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v170);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v171, v172, v173, v174, v175, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    outlined destroy of FlightSnippet.Leg?(v94, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v109 = v295;
LABEL_35:
    (*(v298 + 8))(v304, v110);
    OUTLINED_FUNCTION_92();
    v179 = v109;
    goto LABEL_88;
  }

  v279 = v151;
  v280 = v150;
  v152 = (*(*v302 + 80))(35);
  v281 = v137;
  if (v152)
  {
    v153 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v154 = OUTLINED_FUNCTION_60_7();
    v156 = os_log_type_enabled(v154, v155);
    v157 = v297;
    if (v156)
    {
      v158 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v158);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v159, v160, v161, v162, v163, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v164 = [v149 eventUpdateStatus];
    v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_74_19(v165, v166);
  }

  else
  {
    v277 = 0;
    v276 = 0;
    v157 = v297;
  }

  v278 = CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
  v282 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v149, &selRef_restaurantReservationId);
  v286 = v180;
  v181 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v149, &selRef_restaurantUnderName);
  OUTLINED_FUNCTION_294_0(v181, v182);
  v183 = OUTLINED_FUNCTION_65_15();
  outlined init with copy of ResourceBundle?(v183, v184, v185, v186);
  v187 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v149, &selRef_restaurantPartySize);
  OUTLINED_FUNCTION_39_21(v187, v188);
  v284 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v149, &selRef_eventStartLocationName);
  v306 = v189;
  v275 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v149, &selRef_eventStartLocationTelephone);
  v274 = v190;
  v283 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v149, &selRef_eventStartLocationAddress);
  v293 = v191;
  v192 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v149, &selRef_eventProvider);
  OUTLINED_FUNCTION_76_14(v192, v193);
  v194 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v149, &selRef_eventCustomerNames);
  v195 = MEMORY[0x277D84F90];
  if (v194)
  {
    v195 = v194;
  }

  OUTLINED_FUNCTION_190_8(v195);
  v196 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v149, &selRef_restaurantMealType);
  OUTLINED_FUNCTION_162_8(v196, v197, &v296);
  v198 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v149, &selRef_eventStatus);
  OUTLINED_FUNCTION_78_17(v198, v199);
  v200 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v301);
  OUTLINED_FUNCTION_156_1(v200);
  v273 = v201;
  if (!v201)
  {
    __break(1u);
    return;
  }

  v202 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v149, &selRef_mailMessageID);
  OUTLINED_FUNCTION_43_14(v202, v203);
  v204 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v149, &selRef_eventMessageIdentifier);
  OUTLINED_FUNCTION_77_15(v204, v205);
  v206 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v149, &selRef_eventSourceBundleIdentifier);
  OUTLINED_FUNCTION_71_17(v206, v207);
  v208 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v149, &selRef_startDateTimeZone);
  OUTLINED_FUNCTION_187_6(v208, v209);
  v289 = dateString(fromDateComponents:)(v157);
  v211 = v210;
  v212 = 0;
  v213 = v135[2];
  v214 = *MEMORY[0x277CC3128];
  v307 = *MEMORY[0x277CC29C8];
  v290 = *MEMORY[0x277CC29C0];
  v215 = v135 + 5;
  v299 = MEMORY[0x277D84F90];
  v270 = *MEMORY[0x277CC29D8];
  v267 = "hotelReservationForAddress";
  v268 = "ationForTelephone";
  v269 = "restaurantPartySize";
  v271 = "restaurantUnderName";
  v272 = v135 + 5;
LABEL_41:
  v216 = &v215[2 * v212];
  while (v213 != v212)
  {
    if (v212 >= v135[2])
    {
      __break(1u);
      goto LABEL_90;
    }

    v218 = *(v216 - 1);
    v217 = *v216;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_318();
    v220 = v220 && v219 == v217;
    if (v220)
    {

LABEL_66:
      if (v211)
      {
        OUTLINED_FUNCTION_83_14();
        OUTLINED_FUNCTION_204_7(v229 + 2);
        v231 = v211;
        v232 = v271;
        v94 = v289;
        goto LABEL_79;
      }

      goto LABEL_67;
    }

    v94 = OUTLINED_FUNCTION_145_6();

    if (v94)
    {
      goto LABEL_66;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_318();
    if (v220 && v221 == v217)
    {

LABEL_69:
      if (v306)
      {
        OUTLINED_FUNCTION_83_14();
        OUTLINED_FUNCTION_204_7(v230 + 5);
        v231 = v306;
        v232 = v269;
        v233 = &a16;
        goto LABEL_78;
      }

      goto LABEL_67;
    }

    v94 = OUTLINED_FUNCTION_145_6();

    if (v94)
    {
      goto LABEL_69;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_318();
    if (v220 && v223 == v217)
    {

LABEL_72:
      if (v293)
      {
        OUTLINED_FUNCTION_83_14();
        OUTLINED_FUNCTION_204_7(v234 + 8);
        v231 = v293;
        v232 = v268;
        v233 = &a15;
        goto LABEL_78;
      }

      goto LABEL_67;
    }

    v94 = OUTLINED_FUNCTION_145_6();

    if (v94)
    {
      goto LABEL_72;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_318();
    if (v220 && v225 == v217)
    {
    }

    else
    {
      v94 = OUTLINED_FUNCTION_145_6();

      if ((v94 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    OUTLINED_FUNCTION_192_8();
    if (v227)
    {
      v231 = v286;
      OUTLINED_FUNCTION_83_14();
      OUTLINED_FUNCTION_204_7(v228);
      v232 = v267;
      v233 = &a14;
LABEL_78:
      v94 = *(v233 - 32);
LABEL_79:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v237 = *(v299 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v299 = v238;
      }

      v51 = *(v299 + 16);
      v235 = *(v299 + 24);
      if (v51 >= v235 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v235);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v299 = v239;
      }

      ++v212;
      *(v299 + 16) = v51 + 1;
      OUTLINED_FUNCTION_301_0(v232 | 0x8000000000000000);
      *(v236 + 48) = v94;
      *(v236 + 56) = v231;
      v215 = v272;
      goto LABEL_41;
    }

LABEL_67:

    v216 += 2;
    ++v212;
  }

  OUTLINED_FUNCTION_8_40();
  v243 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(v299, v240, v241, v242);
  OUTLINED_FUNCTION_251_4(v297, v294);
  OUTLINED_FUNCTION_224_4(&v285);
  OUTLINED_FUNCTION_149_9();
  OUTLINED_FUNCTION_148_9();
  OUTLINED_FUNCTION_198_5(&v293);
  OUTLINED_FUNCTION_129_12(&v294);
  OUTLINED_FUNCTION_127_14(&v295);
  OUTLINED_FUNCTION_125_10(&v296);
  OUTLINED_FUNCTION_131_8(&v297);
  OUTLINED_FUNCTION_128_10(&v300);
  OUTLINED_FUNCTION_130_11(&v301);
  OUTLINED_FUNCTION_136_11();
  OUTLINED_FUNCTION_118_9();
  OUTLINED_FUNCTION_120_9(&v303);
  OUTLINED_FUNCTION_63_18();
  OUTLINED_FUNCTION_151_6();
  OUTLINED_FUNCTION_134_10();
  OUTLINED_FUNCTION_156_6(&v306);
  OUTLINED_FUNCTION_158_6(&v307);
  OUTLINED_FUNCTION_192_8();
  OUTLINED_FUNCTION_124_14();
  OUTLINED_FUNCTION_112_15(&a10);
  OUTLINED_FUNCTION_137_5(&v287);
  OUTLINED_FUNCTION_140_9(&v288);
  OUTLINED_FUNCTION_139_9(&v289);
  OUTLINED_FUNCTION_180_5(&v290);
  v244 = v291;
  RestaurantReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:restaurantReservationId:restaurantUnderName:restaurantStartDateComponents:restaurantPartySize:restaurantReservationForName:restaurantReservationForTelephone:restaurantReservationForAddress:restaurantBookingProvider:restaurantCustomerNames:restaurantMealType:restaurantStatus:restaurantUpdateStatus:restaurantStartDateString:startDateTimeZone:)();
  OUTLINED_FUNCTION_47_11();
  outlined destroy of FlightSnippet.Leg?(v245, v246, v247);
  v248 = v288;
  v249 = *(v288 + 16);
  v250 = v292;
  v251 = v295;
  v249(v292, v244, v295);
  v252 = OUTLINED_FUNCTION_226_1(&a19);
  v249(v252, v244, v251);
  v253 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v254 = OUTLINED_FUNCTION_60_7();
  if (os_log_type_enabled(v254, v255))
  {
    OUTLINED_FUNCTION_28_3();
    swift_slowAlloc();
    v307 = OUTLINED_FUNCTION_10_23();
    v308 = v307;
    *v250 = 136642819;
    v249(v285, v243, v251);
    OUTLINED_FUNCTION_32_3();
    v256 = String.init<A>(describing:)();
    v257 = *(v248 + 8);
    v257(v243, v251);
    OUTLINED_FUNCTION_64_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_291_0();

    *(v250 + 4) = v256;
    OUTLINED_FUNCTION_110_4();
    _os_log_impl(v258, v259, v260, v261, v262, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v307);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    v257(v291, v251);
  }

  else
  {

    v263 = *(v248 + 8);
    v263(v243, v251);
    v263(v244, v251);
  }

  outlined destroy of FlightSnippet.Leg?(v303, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  (*(v298 + 8))(v304, v300);
  v264 = *(v248 + 32);
  v265 = OUTLINED_FUNCTION_32_0();
  v266(v265);
  v176 = OUTLINED_FUNCTION_13_2();
  v179 = v251;
LABEL_88:
  __swift_storeEnumTagSinglePayload(v176, v177, v178, v179);
  OUTLINED_FUNCTION_148();
}

void RestaurantReservation.init(id:timeIsUnknown:restaurantReservationId:restaurantUnderName:restaurantStartDateComponents:restaurantPartySize:restaurantReservationForName:restaurantReservationForTelephone:restaurantReservationForAddress:restaurantBookingProvider:restaurantCustomerNames:restaurantMealType:restaurantStatus:restaurantUpdateStatus:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:startDateTimeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_155();
  a19 = v38;
  a20 = v39;
  v41 = v40;
  v94 = v42;
  v91 = v43;
  v44 = a38;
  OUTLINED_FUNCTION_288_0(a31);
  OUTLINED_FUNCTION_253_3(a29);
  v97 = a28;
  v92 = a27;
  OUTLINED_FUNCTION_205_5(a26);
  OUTLINED_FUNCTION_230_3(a25);
  v99 = a24;
  v93 = a23;
  OUTLINED_FUNCTION_259_4(a21);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_114(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v49);
  v90 = v41;
  v95 = dateString(fromDateComponents:)(v41);
  v51 = v50;
  v52 = 0;
  v53 = *(v44 + 16);
  v54 = *MEMORY[0x277CC3128];
  v100 = *MEMORY[0x277CC29C8];
  v96 = *MEMORY[0x277CC29C0];
  v55 = v44 + 40;
  v98 = MEMORY[0x277D84F90];
  v89 = *MEMORY[0x277CC29D8];
LABEL_2:
  for (i = (v55 + 16 * v52); ; i += 2)
  {
    if (v53 == v52)
    {
      OUTLINED_FUNCTION_8_40();
      _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(v98, v81, v82, v83);
      OUTLINED_FUNCTION_107_8(&v90);
      OUTLINED_FUNCTION_251_4(v84, v85);
      OUTLINED_FUNCTION_165_5();
      OUTLINED_FUNCTION_117_12();
      OUTLINED_FUNCTION_133_11();
      OUTLINED_FUNCTION_213_0();
      OUTLINED_FUNCTION_148_9();
      OUTLINED_FUNCTION_129_12(&v100);
      OUTLINED_FUNCTION_127_14(&v99);
      OUTLINED_FUNCTION_125_10(&v98);
      OUTLINED_FUNCTION_131_8(&v97);
      OUTLINED_FUNCTION_128_10(&v96);
      OUTLINED_FUNCTION_130_11(&v95);
      OUTLINED_FUNCTION_118_9();
      OUTLINED_FUNCTION_120_9(&v93);
      OUTLINED_FUNCTION_182_8(&v91);
      OUTLINED_FUNCTION_150_6();
      OUTLINED_FUNCTION_137_5(&a18);
      OUTLINED_FUNCTION_140_9(&a17);
      OUTLINED_FUNCTION_63_18();
      OUTLINED_FUNCTION_136_11();
      OUTLINED_FUNCTION_241_4();
      RestaurantReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:restaurantReservationId:restaurantUnderName:restaurantStartDateComponents:restaurantPartySize:restaurantReservationForName:restaurantReservationForTelephone:restaurantReservationForAddress:restaurantBookingProvider:restaurantCustomerNames:restaurantMealType:restaurantStatus:restaurantUpdateStatus:restaurantStartDateString:startDateTimeZone:)();
      OUTLINED_FUNCTION_47_11();
      outlined destroy of FlightSnippet.Leg?(v86, v87, v88);
      OUTLINED_FUNCTION_148();
      return;
    }

    if (v52 >= *(v44 + 16))
    {
      break;
    }

    v58 = *(i - 1);
    v57 = *i;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_305_0();
    v60 = v60 && v59 == v57;
    if (v60)
    {

LABEL_27:
      if (v51)
      {
        OUTLINED_FUNCTION_83_14();
        OUTLINED_FUNCTION_188_7(v69 + 2);
        v74 = v51;
        v75 = "restaurantUnderName";
        v76 = v95;
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    v61 = OUTLINED_FUNCTION_154_3();

    if (v61)
    {
      goto LABEL_27;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_305_0();
    if (v60 && v62 == v57)
    {

LABEL_30:
      if (v99)
      {
        OUTLINED_FUNCTION_83_14();
        OUTLINED_FUNCTION_188_7(v73 + 5);
        v74 = v99;
        v75 = "restaurantPartySize";
        v76 = v93;
LABEL_39:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = *(v98 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v98 = v79;
        }

        v71 = *(v98 + 16);
        v70 = *(v98 + 24);
        if (v71 >= v70 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v70);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v98 = v80;
        }

        ++v52;
        *(v98 + 16) = v71 + 1;
        OUTLINED_FUNCTION_301_0(v75 | 0x8000000000000000);
        *(v72 + 48) = v76;
        *(v72 + 56) = v74;
        v55 = v44 + 40;
        goto LABEL_2;
      }

      goto LABEL_28;
    }

    OUTLINED_FUNCTION_154_3();
    OUTLINED_FUNCTION_250_2();
    if (v61)
    {
      goto LABEL_30;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_305_0();
    if (v60 && v64 == v57)
    {

LABEL_33:
      if (v97)
      {
        OUTLINED_FUNCTION_83_14();
        OUTLINED_FUNCTION_188_7(v77 + 8);
        v74 = v97;
        v75 = "ationForTelephone";
        v76 = v92;
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    OUTLINED_FUNCTION_154_3();
    OUTLINED_FUNCTION_250_2();
    if (v61)
    {
      goto LABEL_33;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_305_0();
    if (v60 && v66 == v57)
    {
    }

    else
    {
      OUTLINED_FUNCTION_154_3();
      OUTLINED_FUNCTION_250_2();
      if ((v61 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (v94)
    {
      v74 = v94;
      OUTLINED_FUNCTION_83_14();
      OUTLINED_FUNCTION_188_7(v68);
      v75 = "hotelReservationForAddress";
      v76 = v91;
      goto LABEL_39;
    }

LABEL_28:

    ++v52;
  }

  __break(1u);
}

uint64_t (*protocol witness for InstantAnswerDocument.eventSourceBundleIdentifier.modify in conformance RestaurantReservation(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = RestaurantReservation.eventSourceBundleIdentifier.modify();
  return protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance FlightReservation;
}

uint64_t (*protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance RestaurantReservation(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = RestaurantReservation.eventSourceLLMConsumableDescription.modify();
  return protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance FlightReservation;
}

void protocol witness for InstantAnswerDocument.eventSourceBundleIdentifier.modify in conformance FlightReservation(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void ShippingOrder.init(item:checkEventType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_49_3();
  v201 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v35 = OUTLINED_FUNCTION_114(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39_0();
  v193 = v38;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7_4();
  v199 = v40;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7_4();
  v198 = v42;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_4();
  v197 = v44;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_2();
  v200 = v46;
  OUTLINED_FUNCTION_78_0();
  v202 = type metadata accessor for ShippingOrder();
  v47 = OUTLINED_FUNCTION_14(v202);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_109();
  v54 = v52 - v53;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_7_4();
  v194 = v56;
  OUTLINED_FUNCTION_174();
  v58 = MEMORY[0x28223BE20](v57);
  v60 = v176 - v59;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_123_8();
  v61 = [v26 attributeSet];
  v62 = v61;
  if ((v24 & 1) != 0 && (v63 = [v61 eventType], v64 = objc_msgSend(v63, sel_containsString_, *MEMORY[0x277CC22B8]), v63, (v64 & 1) == 0))
  {

    OUTLINED_FUNCTION_42_21();
    OUTLINED_FUNCTION_148();

    __swift_storeEnumTagSinglePayload(v171, v172, v173, v174);
  }

  else
  {
    v65 = [v26 uniqueIdentifier];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v188 = v67;
    v189 = v66;

    v68 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventGroupIdentifier);
    v186 = v69;
    v187 = v68;
    v70 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventFallbackGroupIdentifier);
    v184 = v71;
    v185 = v70;
    v72 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventMessageIdentifier);
    OUTLINED_FUNCTION_82_15(v72, v73);
    v74 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventMegadomeIdentifier);
    OUTLINED_FUNCTION_75_16(v74, v75);
    v76 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventName);
    OUTLINED_FUNCTION_81_18(v76, v77);
    v78 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventSourceBundleIdentifier);
    OUTLINED_FUNCTION_72_14(v78, v79);
    v80 = [v62 eventSourceIsForwarded];
    if (v80)
    {
      v81 = v80;
      HIDWORD(v181) = [v80 BOOLValue];
    }

    else
    {
      HIDWORD(v181) = 2;
    }

    v82 = [v62 eventType];
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_73_15(v83, v84);

    v180 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v62);
    v85 = [v62 eventSubType];
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_294_0(v86, v87);

    v88 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_accountIdentifier);
    OUTLINED_FUNCTION_39_21(v88, v89);
    v179 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v62);
    v90 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_mailMessageHeader);
    OUTLINED_FUNCTION_297_0(v90, v91);
    v92 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_mailMessageID);
    OUTLINED_FUNCTION_170_6(v92, v93);
    v94 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v62, &selRef_mailboxIdentifiers);
    OUTLINED_FUNCTION_146_1(v94);
    v95 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventStatus);
    OUTLINED_FUNCTION_162_8(v95, v96, &v193);
    v97 = [v62 eventUpdateStatus];
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_78_17(v98, v99);

    v178 = CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
    v100 = [v62 eventOrderDate];
    if (v100)
    {
      v101 = v100;
      v102 = v200;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v103 = type metadata accessor for Date();
      v104 = 0;
    }

    else
    {
      v103 = type metadata accessor for Date();
      v104 = 1;
      v102 = v200;
    }

    __swift_storeEnumTagSinglePayload(v102, v104, 1, v103);
    v105 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventReservationID);
    OUTLINED_FUNCTION_43_14(v105, v106);
    v107 = [v62 eventURL];
    if (v107)
    {
      v108 = v107;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for URL();
    OUTLINED_FUNCTION_219_4();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
    v113 = [v62 cost];
    v195 = v20;
    v196 = v49;
    v191 = v26;
    if (v113)
    {
      v114 = v113;
      v203 = 0;
      v204 = 1;
      MEMORY[0x25F89FB10](v113, &v203);

      v177 = v203;
    }

    else
    {
      v177 = 0;
    }

    v176[0] = v54;
    v190 = v60;
    v115 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventProvider);
    OUTLINED_FUNCTION_300_0(v115, v116);
    v176[17] = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v62, &selRef_eventStartPersonNames);
    v117 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventStartLocationName);
    OUTLINED_FUNCTION_187_6(v117, v118);
    v176[14] = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventStartLocationAddress);
    v176[13] = v119;
    v176[12] = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventStartLocationTelephone);
    v176[11] = v120;
    v176[10] = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v62, &selRef_eventEndPersonNames);
    v121 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventEndLocationName);
    OUTLINED_FUNCTION_236_3(v121, v122, &v181);
    v123 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventEndLocationAddress);
    OUTLINED_FUNCTION_138_1(v123, v124);
    v125 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventEndLocationTelephone);
    OUTLINED_FUNCTION_185_5(v125, v126);
    v176[3] = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v62, &selRef_eventCustomerNames);
    v176[2] = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v62, &selRef_eventCustomerAddresses);
    v176[1] = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v62, &selRef_eventCustomerTelephoneNumbers);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventCarrierName);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v62, &selRef_eventTrackingNumber);
    v127 = [v62 startDate];
    v192 = v28;
    if (v127)
    {
      v128 = v127;
      v129 = v197;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v130 = 0;
    }

    else
    {
      v130 = 1;
      v129 = v197;
    }

    type metadata accessor for Date();
    v131 = 1;
    OUTLINED_FUNCTION_250_4(v129, v130);
    v132 = [v62 endDate];
    if (v132)
    {
      v133 = v132;
      v134 = v198;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v135 = v134;
      v131 = 0;
    }

    else
    {
      v135 = v198;
    }

    v136 = 1;
    OUTLINED_FUNCTION_250_4(v135, v131);
    v137 = [v62 eventEstimatedStartDate];
    if (v137)
    {
      v138 = v137;
      v139 = v199;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v140 = v139;
      v136 = 0;
    }

    else
    {
      v140 = v199;
    }

    v141 = 1;
    OUTLINED_FUNCTION_250_4(v140, v136);
    v142 = [v62 eventEstimatedEndDate];
    if (v142)
    {
      v143 = v142;
      v144 = v193;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v145 = v144;
      v141 = 0;
    }

    else
    {
      v145 = v193;
    }

    OUTLINED_FUNCTION_250_4(v145, v141);
    OUTLINED_FUNCTION_258_3();
    OUTLINED_FUNCTION_266_2();
    OUTLINED_FUNCTION_265_3();
    OUTLINED_FUNCTION_274_2(&v182);
    OUTLINED_FUNCTION_223_4(&v183);
    OUTLINED_FUNCTION_221_5(&v184);
    OUTLINED_FUNCTION_275_1(&v185);
    OUTLINED_FUNCTION_222_4(&v186);
    OUTLINED_FUNCTION_225_5(&v187);
    OUTLINED_FUNCTION_184_6(&v188);
    OUTLINED_FUNCTION_129_12(&v189);
    OUTLINED_FUNCTION_111_8(&v190);
    OUTLINED_FUNCTION_143_10(&v192 + 4);
    OUTLINED_FUNCTION_131_8(&v193);
    OUTLINED_FUNCTION_128_10(&v194);
    OUTLINED_FUNCTION_130_11(&v195);
    OUTLINED_FUNCTION_150_6();
    OUTLINED_FUNCTION_157_5(&v197);
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_120_9(&v199);
    OUTLINED_FUNCTION_126_13(&v200);
    OUTLINED_FUNCTION_134_10();
    OUTLINED_FUNCTION_156_6(&v203);
    OUTLINED_FUNCTION_149_9();
    OUTLINED_FUNCTION_148_9();
    OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_117_12();
    OUTLINED_FUNCTION_165_5();
    OUTLINED_FUNCTION_124_14();
    OUTLINED_FUNCTION_136_11();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_180_5(&a16);
    v146 = v190;
    ShippingOrder.init(id:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMessageIdentifier:eventMegadomeIdentifier:eventName:eventSourceBundleIdentifier:eventSourceIsForwarded:eventType:detectedEventTypes:eventSubType:eventSourceLLMConsumableDescription:accountIdentifier:authors:mailMessageHeader:mailMessageId:mailboxes:status:shippingStatus:timeIsUnknown:orderDate:orderNumber:orderTrackingURL:orderCost:merchantName:shippingPersonNames:shippingLocationName:shippingAddress:shippingPhoneNumber:recipientNames:recipientLocationName:recipientAddress:recipientPhoneNumber:customerNames:customerAddresses:customerPhoneNumbers:carrierName:trackingNumber:shippingDate:deliveryDate:estimatedDeliveryStartDate:estimatedDeliveryEndDate:)();
    v147 = v196;
    v148 = *(v196 + 16);
    v149 = v202;
    v148(v195, v146, v202);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v150 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v150, static Logging.search);
    v151 = v194;
    v148(v194, v146, v149);
    v152 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v153 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v153, v154))
    {
      OUTLINED_FUNCTION_28_3();
      swift_slowAlloc();
      v201 = OUTLINED_FUNCTION_10_23();
      v203 = v201;
      *v147 = 136642819;
      v148(v176[0], v151, v149);
      String.init<A>(describing:)();
      v155 = v146;
      v156 = *(v196 + 8);
      v156(v151, v202);
      v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v147 + 4) = v157;
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v158, v159, v160, v161, v162, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v201);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();

      v163 = v155;
      v149 = v202;
      v156(v163, v202);
      v147 = v196;
    }

    else
    {

      v164 = *(v147 + 8);
      v164(v151, v149);
      v164(v146, v149);
    }

    v165 = *(v147 + 32);
    v166 = OUTLINED_FUNCTION_34_5();
    v167(v166);
    v168 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v168, v169, v170, v149);
    OUTLINED_FUNCTION_148();
  }
}

uint64_t dateString(fromDateComponents:)(uint64_t a1)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v39 = &v37 - v3;
  v41 = type metadata accessor for Calendar();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for Date();
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v37 - v17;
  v19 = type metadata accessor for DateComponents();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ResourceBundle?(v42, v18, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    v24 = &_s10Foundation14DateComponentsVSgMd;
    v25 = &_s10Foundation14DateComponentsVSgMR;
    v26 = v18;
LABEL_5:
    outlined destroy of FlightSnippet.Leg?(v26, v24, v25);
    return 0;
  }

  (*(v20 + 32))(v23, v18, v19);
  static Calendar.current.getter();
  Calendar.date(from:)();
  (*(v4 + 8))(v7, v41);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    (*(v20 + 8))(v23, v19);
    v24 = &_s10Foundation4DateVSgMd;
    v25 = &_s10Foundation4DateVSgMR;
    v26 = v11;
    goto LABEL_5;
  }

  v42 = v20;
  v28 = v40;
  v29 = v38;
  (*(v40 + 32))(v38, v11, v12);
  v30 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v31 = v39;
  DateComponents.timeZone.getter();
  v32 = type metadata accessor for TimeZone();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) != 1)
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(*(v32 - 8) + 8))(v31, v32);
  }

  [v30 setTimeZone_];

  v34 = Date._bridgeToObjectiveC()().super.isa;
  v35 = [v30 stringFromDate_];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v28 + 8))(v29, v12);
  (*(v42 + 8))(v23, v19);
  return v27;
}

uint64_t FlightReservation.answer.getter()
{
  v0 = HotelReservation.answers.getter();
  specialized Collection.first.getter(v0);
  v2 = v1;

  if (!v2)
  {
    ShippingOrder.eventType.getter();
  }

  return OUTLINED_FUNCTION_32_0();
}

void FlightReservation.metadata.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = OUTLINED_FUNCTION_114(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_109();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_216_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SSSgtGMd, &_ss23_ContiguousArrayStorageCySS_SSSgtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBD9DD0;
  OUTLINED_FUNCTION_240_3();
  *(v11 + 32) = v10 & 0xFFFFFFFFFFFFLL | 0x754E000000000000;
  *(v11 + 40) = 0xEC0000007265626DLL;
  *(inited + 48) = ShippingOrder.eventType.getter();
  *(inited + 56) = v12;
  OUTLINED_FUNCTION_44_6();
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = v13;
  FlightReservation.flightCheckInUrl.getter();
  v14 = type metadata accessor for URL();
  OUTLINED_FUNCTION_105_3(v0);
  if (v15)
  {
    outlined destroy of FlightSnippet.Leg?(v0, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v16 = 0;
    v18 = 0;
  }

  else
  {
    v16 = URL.absoluteString.getter();
    v18 = v17;
    OUTLINED_FUNCTION_51(v14);
    (*(v19 + 8))(v0, v14);
  }

  *(inited + 80) = v16;
  *(inited + 88) = v18;
  strcpy((inited + 96), "bookingInfoUrl");
  *(inited + 111) = -18;
  FlightReservation.flightBookingInfoUrl.getter();
  OUTLINED_FUNCTION_105_3(v7);
  if (v15)
  {
    outlined destroy of FlightSnippet.Leg?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v20 = 0;
    v22 = 0;
  }

  else
  {
    v20 = URL.absoluteString.getter();
    v22 = v21;
    OUTLINED_FUNCTION_51(v14);
    v24 = *(v23 + 8);
    v25 = OUTLINED_FUNCTION_64_0();
    v26(v25);
  }

  *(inited + 112) = v20;
  *(inited + 120) = v22;
  OUTLINED_FUNCTION_240_3();
  *(inited + 128) = v27 & 0xFFFFFFFFFFFFLL | 0x6143000000000000;
  *(inited + 136) = 0xED00007265697272;
  *(inited + 144) = FlightReservation.flightCarrier.getter();
  *(inited + 152) = v28;
  OUTLINED_FUNCTION_44_6();
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = v29;
  *(inited + 176) = FlightReservation.flightCarrierCode.getter();
  *(inited + 184) = v30;
  OUTLINED_FUNCTION_44_6();
  *(inited + 192) = 0xD000000000000019;
  *(inited + 200) = v31;
  *(inited + 208) = FlightReservation.flightDepartureDateString.getter();
  *(inited + 216) = v32;
  OUTLINED_FUNCTION_44_6();
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = v33;
  *(inited + 240) = FlightReservation.flightArrivalDateString.getter();
  *(inited + 248) = v34;
  OUTLINED_FUNCTION_44_6();
  *(inited + 256) = 0xD00000000000001BLL;
  *(inited + 264) = v35;
  *(inited + 272) = FlightReservation.flightArrivalAirportAddress.getter();
  *(inited + 280) = v36;
  OUTLINED_FUNCTION_44_6();
  *(inited + 288) = 0xD00000000000001DLL;
  *(inited + 296) = v37;
  *(inited + 304) = FlightReservation.flightDepartureAirportAddress.getter();
  *(inited + 312) = v38;
  OUTLINED_FUNCTION_44_6();
  *(inited + 320) = 0xD000000000000018;
  *(inited + 328) = v39;
  *(inited + 336) = FlightReservation.flightArrivalAirportCode.getter();
  *(inited + 344) = v40;
  OUTLINED_FUNCTION_44_6();
  *(inited + 352) = 0xD00000000000001ALL;
  *(inited + 360) = v41;
  *(inited + 368) = FlightReservation.flightDepartureAirportCode.getter();
  *(inited + 376) = v42;
  OUTLINED_FUNCTION_44_6();
  *(inited + 384) = 0xD00000000000001BLL;
  *(inited + 392) = v43;
  *(inited + 400) = FlightReservation.flightArrivalAirportCountry.getter();
  *(inited + 408) = v44;
  OUTLINED_FUNCTION_44_6();
  *(inited + 416) = 0xD00000000000001DLL;
  *(inited + 424) = v45;
  *(inited + 432) = FlightReservation.flightDepartureAirportCountry.getter();
  *(inited + 440) = v46;
  OUTLINED_FUNCTION_44_6();
  *(inited + 448) = 0xD00000000000001CLL;
  *(inited + 456) = v47;
  *(inited + 464) = FlightReservation.flightArrivalAirportLocality.getter();
  *(inited + 472) = v48;
  OUTLINED_FUNCTION_44_6();
  *(inited + 480) = 0xD00000000000001ELL;
  *(inited + 488) = v49;
  *(inited + 496) = FlightReservation.flightDepartureAirportLocality.getter();
  *(inited + 504) = v50;
  OUTLINED_FUNCTION_44_6();
  *(inited + 512) = 0xD000000000000018;
  *(inited + 520) = v51;
  *(inited + 528) = FlightReservation.flightArrivalAirportName.getter();
  *(inited + 536) = v52;
  OUTLINED_FUNCTION_44_6();
  *(inited + 544) = 0xD00000000000001ALL;
  *(inited + 552) = v53;
  *(inited + 560) = FlightReservation.flightDepartureAirportName.getter();
  *(inited + 568) = v54;
  OUTLINED_FUNCTION_44_6();
  *(inited + 576) = 0xD00000000000001ALL;
  *(inited + 584) = v55;
  *(inited + 592) = FlightReservation.flightArrivalAirportRegion.getter();
  *(inited + 600) = v56;
  OUTLINED_FUNCTION_44_6();
  *(inited + 608) = 0xD00000000000001CLL;
  *(inited + 616) = v57;
  *(inited + 624) = FlightReservation.flightDepartureAirportRegion.getter();
  *(inited + 632) = v58;
  OUTLINED_FUNCTION_44_6();
  *(inited + 640) = 0xD000000000000018;
  *(inited + 648) = v59;
  *(inited + 656) = FlightReservation.flightConfirmationNumber.getter();
  *(inited + 664) = v60;
  OUTLINED_FUNCTION_44_6();
  *(inited + 672) = 0xD000000000000014;
  *(inited + 680) = v61;
  FlightReservation.flightPassengerNames.getter();
  v62 = MEMORY[0x25F89F8A0]();
  v64 = v63;

  *(inited + 688) = v62;
  *(inited + 696) = v64;
  OUTLINED_FUNCTION_44_6();
  *(inited + 704) = 0xD00000000000001ALL;
  *(inited + 712) = v65;
  FlightReservation.flightPassengerSeatNumbers.getter();
  v66 = MEMORY[0x25F89F8A0]();
  v68 = v67;

  *(inited + 720) = v66;
  *(inited + 728) = v68;
  OUTLINED_FUNCTION_44_6();
  *(inited + 736) = 0xD000000000000015;
  *(inited + 744) = v69;
  *(inited + 752) = FlightReservation.flightArrivalTerminal.getter();
  *(inited + 760) = v70;
  OUTLINED_FUNCTION_44_6();
  *(inited + 768) = 0xD000000000000017;
  *(inited + 776) = v71;
  *(inited + 784) = FlightReservation.flightDepartureTerminal.getter();
  *(inited + 792) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  OUTLINED_FUNCTION_121_0();
  v73 = Dictionary.init(dictionaryLiteral:)();
  specialized Dictionary.compactMapValues<A>(_:)(v73);

  OUTLINED_FUNCTION_148();
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 56) + 16 * v12);
    v14 = v13[1];
    if (v14)
    {
      v15 = (*(a1 + 48) + 16 * v12);
      v31 = v15[1];
      v32 = *v15;
      v30 = *v13;
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16 + 1);
        v2 = v33;
      }

      else
      {
      }

      v17 = *(v2 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v18 = v2 + 64;
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v19) >> 6;
        v23 = v31;
        while (++v21 != v25 || (v24 & 1) == 0)
        {
          v26 = v21 == v25;
          if (v21 == v25)
          {
            v21 = 0;
          }

          v24 |= v26;
          v27 = *(v18 + 8 * v21);
          if (v27 != -1)
          {
            v22 = __clz(__rbit64(~v27)) + (v21 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      v23 = v31;
LABEL_23:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v28 = (*(v2 + 48) + 16 * v22);
      *v28 = v32;
      v28[1] = v23;
      v29 = (*(v2 + 56) + 16 * v22);
      *v29 = v30;
      v29[1] = v14;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v28 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v30 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = specialized __RawDictionaryStorage.find<A>(_:)();
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      _NativeDictionary.copy()();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    v22 = (v20[7] + 16 * v12);
    *v22 = v9;
    v22[1] = v8;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v20[2] = v25;
    v4 = v30 + 1;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15);
  v17 = *a3;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  MEMORY[0x25F89F6C0](0xD00000000000001BLL, 0x800000025DBF7830);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F89F6C0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSaySSGGMd, &_ss17_NativeDictionaryVySSSaySSGGMR);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14);
  v16 = *a3;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  MEMORY[0x25F89F6C0](0xD00000000000001BLL, 0x800000025DBF7830);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F89F6C0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, uint64_t *a3)
{
  v52 = a3;
  v6 = type metadata accessor for AnswerSynthesisExtractionCandidate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v50 = v42 - v15;
  v49 = *(a1 + 16);
  if (!v49)
  {
LABEL_13:

    return;
  }

  v42[1] = v3;
  v43 = a1;
  v16 = 0;
  v48 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v46 = v7;
  v47 = v17;
  v51 = (v7 + 32);
  v44 = v10;
  v45 = v6;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v50;
    outlined init with copy of ResourceBundle?(v48 + *(v14 + 72) * v16, v50, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMR);
    v20 = *v19;
    v21 = *(v19 + 1);
    v55 = *v19;
    v56 = v21;
    v22 = *v51;
    (*v51)(v10, &v19[v47], v6);
    v23 = *v52;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_19;
    }

    v29 = v24;
    if (v23[3] < v28)
    {
      break;
    }

    if (a2)
    {
      if (v24)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMd, &_ss17_NativeDictionaryVySS15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMR);
      _NativeDictionary.copy()();
      if (v29)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v34 = *v52;
    *(*v52 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v35 = (v34[6] + 16 * v25);
    *v35 = v20;
    v35[1] = v21;
    v6 = v45;
    v36 = v34[7] + *(v46 + 72) * v25;
    v10 = v44;
    v22(v36, v44, v45);
    v37 = v34[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_20;
    }

    ++v16;
    v34[2] = v39;
    a2 = 1;
    a1 = v43;
    v14 = v18;
    if (v49 == v16)
    {
      goto LABEL_13;
    }
  }

  v30 = v52;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, a2 & 1);
  v31 = *v30;
  v32 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v29 & 1) != (v33 & 1))
  {
    goto LABEL_21;
  }

  v25 = v32;
  if ((v29 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v40 = swift_allocError();
  swift_willThrow();

  v57 = v40;
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v46 + 8))(v44, v45);

    return;
  }

LABEL_22:
  v53 = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x25F89F6C0](0xD00000000000001BLL, 0x800000025DBF7830);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F89F6C0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

_BYTE *closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t outlined init with copy of SearchResultItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of FlightSnippet.Leg(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t outlined destroy of FlightSnippet.Leg?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = OUTLINED_FUNCTION_326_0(a1, a2, a3);
  OUTLINED_FUNCTION_17(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for RentalCarReservation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, MEMORY[0x277D37368]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, MEMORY[0x277D37368]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for RentalCarReservation(void *a1)
{
  v2 = MEMORY[0x277D37368];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, MEMORY[0x277D37368]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, v2);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, v2);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TicketedTransportation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, MEMORY[0x277D37438]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, MEMORY[0x277D37438]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TicketedTransportation(void *a1)
{
  v2 = MEMORY[0x277D37438];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, MEMORY[0x277D37438]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, v2);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, v2);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TicketedShow(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, MEMORY[0x277D371B8]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, MEMORY[0x277D371B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TicketedShow(void *a1)
{
  v2 = MEMORY[0x277D371B8];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, MEMORY[0x277D371B8]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, v2);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, v2);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Appointment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, MEMORY[0x277D370E8]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, MEMORY[0x277D370E8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Appointment(void *a1)
{
  v2 = MEMORY[0x277D370E8];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, MEMORY[0x277D370E8]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, v2);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, v2);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Party(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Party and conformance Party, MEMORY[0x277D37520]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Party and conformance Party, MEMORY[0x277D37520]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Party(void *a1)
{
  v2 = MEMORY[0x277D37520];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Party and conformance Party, MEMORY[0x277D37520]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Party and conformance Party, v2);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Party and conformance Party, v2);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Trip(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Trip and conformance Trip, MEMORY[0x277D37500]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Trip and conformance Trip, MEMORY[0x277D37500]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Trip(void *a1)
{
  v2 = MEMORY[0x277D37500];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Trip and conformance Trip, MEMORY[0x277D37500]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Trip and conformance Trip, v2);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Trip and conformance Trip, v2);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for FlightReservation(void *a1)
{
  v2 = MEMORY[0x277D37290];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation, MEMORY[0x277D37290]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation, v2);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation, v2);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for HotelReservation(void *a1)
{
  v2 = MEMORY[0x277D37250];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation, MEMORY[0x277D37250]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation, v2);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation, v2);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for RestaurantReservation(void *a1)
{
  v2 = MEMORY[0x277D373D8];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation, MEMORY[0x277D373D8]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation, v2);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation, v2);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ShippingOrder(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, MEMORY[0x277D37218]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, MEMORY[0x277D37218]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ShippingOrder(void *a1)
{
  v2 = MEMORY[0x277D37218];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, MEMORY[0x277D37218]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, v2);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, v2);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t OUTLINED_FUNCTION_5_43@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 - 256);
  *v4 = 0;
  v4[1] = a1;
  v4[2] = 0;
  v4[3] = a1;
  v4[4] = 0;
  v4[5] = a1;
  v4[6] = 0;
  v4[7] = a1;
  v4[8] = 0;
  v4[9] = a1;
  v4[10] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = a1;
  v4[14] = 0;
  v4[15] = a1;
  v4[16] = 0;
  v4[17] = a1;
  v4[18] = 0;
  v4[19] = a1;
  v4[20] = 0;
  v4[21] = a1;
  v4[22] = 0;
  v4[23] = a1;
  v4[24] = 0;
  v4[25] = a1;
  v5 = v4 + *(v2 + 72);

  return UnknownStorage.init()();
}

void OUTLINED_FUNCTION_6_34()
{
  v2 = *(v0 + 20);
  *(v1 - 128) = 1;
  *(v1 - 128) = 1;
  *(v1 - 128) = 1;
  *(v1 - 128) = 1;
  *(v1 - 128) = 1;
  *(v1 - 128) = 1;
  *(v1 - 128) = 1;
  *(v1 - 128) = 1;
}

void OUTLINED_FUNCTION_7_42()
{
  v2 = *(*(v1 - 184) + 20);
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
}

uint64_t OUTLINED_FUNCTION_12_36()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2085;
  return 0;
}

uint64_t OUTLINED_FUNCTION_15_33()
{
  v31 = *(v0 - 456);
  v30 = *(v0 - 448);
  v29 = *(v0 - 440);
  v28 = *(v0 - 432);
  v27 = *(v0 - 424);
  v26 = *(v0 - 416);
  v25 = *(v0 - 408);
  v24 = *(v0 - 400);
  v23 = *(v0 - 392);
  v22 = *(v0 - 384);
  v21 = *(v0 - 376);
  v20 = *(v0 - 368);
  v19 = *(v0 - 360);
  v18 = *(v0 - 356);
  v17 = *(v0 - 352);
  v16 = *(v0 - 344);
  v15 = *(v0 - 336);
  v14 = *(v0 - 328);
  v13 = *(v0 - 320);
  v12 = *(v0 - 312);
  v11 = *(v0 - 304);
  v10 = *(v0 - 296);
  v1 = *(v0 - 208);
  v3 = *(v0 - 240);
  result = *(v0 - 232);
  v5 = *(v0 - 256);
  v4 = *(v0 - 248);
  v6 = *(v0 - 264);
  v7 = *(v0 - 272);
  v8 = *(v0 - 280);
  v9 = *(v0 - 288);
  return result;
}

void OUTLINED_FUNCTION_18_23()
{
  v8 = *(v0 - 520);
  v7 = *(v0 - 512);
  v6 = *(v0 - 504);
  v5 = *(v0 - 496);
  v4 = *(v0 - 488);
  v3 = *(v0 - 480);
  v2 = *(v0 - 472);
  v1 = *(v0 - 464);
}

uint64_t OUTLINED_FUNCTION_22_24()
{
  result = __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
  v4 = *(*(v2 - 184) + 28);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_23()
{
  result = v0;
  *(v2 - 192) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_18@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v2 - 256);
  *(v6 + a1) = v1;
  v7 = (v6 + *(v3 + 40));
  *v7 = 0;
  v7[1] = 0;

  return outlined init with copy of SearchResultItem(v4, v6);
}

uint64_t OUTLINED_FUNCTION_39_21(uint64_t result, uint64_t a2)
{
  *(v2 - 376) = result;
  *(v2 - 384) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_21()
{
  result = *(v0 - 256);
  v3 = *(v1 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_18()
{
  v1 = *(*(v0 - 496) + 8);
  result = *(v0 - 272);
  v3 = *(v0 - 424);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_14(uint64_t result, uint64_t a2)
{
  *(v2 - 480) = result;
  *(v2 - 488) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_17()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_46_21()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_53_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_54_22()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_58_12()
{
  v2 = *(v0 - 1096);
  v3 = *(v0 - 1080);

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_61_20()
{
  v2 = *(v0 - 248);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_71_17(uint64_t result, uint64_t a2)
{
  *(v2 - 512) = result;
  *(v2 - 520) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_72_14(uint64_t result, uint64_t a2)
{
  *(v2 - 312) = result;
  *(v2 - 320) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_15(uint64_t result, uint64_t a2)
{
  *(v2 - 336) = result;
  *(v2 - 344) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_19(uint64_t result, uint64_t a2)
{
  *(v2 - 344) = result;
  *(v2 - 352) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_75_16(uint64_t result, uint64_t a2)
{
  *(v2 - 280) = result;
  *(v2 - 288) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_14(uint64_t result, uint64_t a2)
{
  *(v2 - 408) = result;
  *(v2 - 416) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_15(uint64_t result, uint64_t a2)
{
  *(v2 - 496) = result;
  *(v2 - 504) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_17(uint64_t result, uint64_t a2)
{
  *(v2 - 464) = result;
  *(v2 - 472) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_18(uint64_t result, uint64_t a2)
{
  *(v2 - 296) = result;
  *(v2 - 304) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_82_15(uint64_t result, uint64_t a2)
{
  *(v2 - 264) = result;
  *(v2 - 272) = a2;
  return result;
}

void OUTLINED_FUNCTION_89_16()
{

  JUMPOUT(0x25F89F4C0);
}

uint64_t OUTLINED_FUNCTION_91_8()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_94_11@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v2 - 256);
  *(v6 + a1) = v1;
  v7 = (v6 + *(v4 + 40));
  *v7 = 0;
  v7[1] = 0;

  return outlined init with copy of SearchResultItem(v3, v6);
}

uint64_t OUTLINED_FUNCTION_107_9()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_108_10()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_115_11()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_116_8()
{
  result = *(v0 - 160);
  *(v0 - 144) = *(v0 - 176);
  *(v0 - 128) = result;
  v2 = *(v0 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_123_11()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v0[10] = 0;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  v0[14] = 0;
  v0[15] = 0xE000000000000000;
  v0[16] = 0;
  v0[17] = 0xE000000000000000;
  v0[18] = 0;
  v0[19] = 0xE000000000000000;
  v0[20] = 0;
  v0[21] = 0xE000000000000000;
  v0[22] = 0;
  v0[23] = 0xE000000000000000;
  v0[24] = 0;
  v0[25] = 0xE000000000000000;
  v3 = v0 + *(v1 + 72);

  return UnknownStorage.init()();
}

uint64_t OUTLINED_FUNCTION_145_6()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_147_9()
{
  *(v0 - 512) = 0;
  *(v0 - 504) = 0;
  *(v0 - 416) = 0;
  *(v0 - 516) = 1;
}

uint64_t OUTLINED_FUNCTION_154_3()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_159_6()
{
  result = v1;
  *(v2 - 208) = v0;
  return result;
}

id OUTLINED_FUNCTION_161_4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return [v2 (v3 + 1656)];
}

uint64_t OUTLINED_FUNCTION_162_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = result;
  *(v3 - 456) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_163_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = result;
  *(v3 - 328) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_167_4(uint64_t result, uint64_t a2)
{
  *(v2 - 352) = result;
  *(v2 - 360) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_168_6(uint64_t result, uint64_t a2)
{
  *(v2 - 304) = result;
  *(v2 - 312) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_170_6(uint64_t result, uint64_t a2)
{
  *(v2 - 416) = result;
  *(v2 - 424) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_171_6(uint64_t result, uint64_t a2)
{
  *(v2 - 440) = result;
  *(v2 - 448) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_174_6(uint64_t result, uint64_t a2)
{
  *(v2 - 472) = result;
  *(v2 - 480) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_175_7()
{
  result = *(v0 - 256);
  v3 = *(v1 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_178_7(uint64_t result, uint64_t a2)
{
  *(v2 - 456) = result;
  *(v2 - 464) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_179_7(uint64_t result, uint64_t a2)
{
  *(v2 - 288) = result;
  *(v2 - 296) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_185_5(uint64_t result, uint64_t a2)
{
  *(v2 - 616) = result;
  *(v2 - 624) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_187_6(uint64_t result, uint64_t a2)
{
  *(v2 - 528) = result;
  *(v2 - 536) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_203_5(uint64_t result)
{
  *(v1 - 248) = result;
  *(v1 - 128) = result;
  return result;
}

void OUTLINED_FUNCTION_212_4(uint64_t a1, uint64_t a2)
{
  *(v3 - 328) = a1;
  *(v3 - 336) = a2;
}

void OUTLINED_FUNCTION_214_3()
{
  v1 = *(v0 - 336);
  v2 = *(v0 - 344);
  v3 = *(v0 - 352);
}

id OUTLINED_FUNCTION_217_5(void *a1)
{

  return [a1 (v1 + 1144)];
}

id OUTLINED_FUNCTION_229_4()
{

  return [v0 (v1 + 1656)];
}

uint64_t OUTLINED_FUNCTION_233_4()
{
  v2 = *(v0 - 1104);

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_236_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = result;
  *(v3 - 592) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_237_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = result;
  *(v3 - 560) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_243_3()
{
  result = v1;
  *(v2 - 192) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_250_4(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_251_4(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of ResourceBundle?(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_268_1()
{
  result = v0;
  v3 = *(v1 - 240);
  return result;
}

double OUTLINED_FUNCTION_276_1()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

id OUTLINED_FUNCTION_280_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_281_0()
{
  *(v2 - 216) = v1;

  return closure #1 in RentalCarReservation.init(item:checkEventType:featureFlagService:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_282_1()
{
}

unint64_t OUTLINED_FUNCTION_283_0()
{
  v2 = *(v0 + 24);

  return type metadata accessor for CSSearchableItem();
}

uint64_t OUTLINED_FUNCTION_284_1()
{
  v2 = *(v0 - 1080);
}

uint64_t OUTLINED_FUNCTION_285_0()
{

  return _bridgeAnyObjectToAny(_:)();
}

uint64_t OUTLINED_FUNCTION_294_0(uint64_t result, uint64_t a2)
{
  *(v2 - 360) = result;
  *(v2 - 368) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_295_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  result = v1;
  v5 = *(v2 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_297_0(uint64_t result, uint64_t a2)
{
  *(v2 - 400) = result;
  *(v2 - 408) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_299_0(uint64_t result, uint64_t a2)
{
  *(v2 - 488) = result;
  *(v2 - 496) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_300_0(uint64_t result, uint64_t a2)
{
  *(v2 - 504) = result;
  *(v2 - 512) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_303_0()
{
  v2 = *(*(v1 - 240) + 8);
  result = v0;
  v4 = *(v1 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_309()
{
  result = v0;
  v3 = *(v1 - 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_319_0()
{
  v2 = v0;
  v3 = *(v0 + 16);
  v4 = *(v2 + 24);
}

uint64_t OUTLINED_FUNCTION_320_0()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[1];
}

uint64_t OUTLINED_FUNCTION_321_0()
{
  v2 = v0;
  v3 = *(v0 + 144);
  v4 = *(v2 + 152);
}

uint64_t OUTLINED_FUNCTION_322_0()
{
  v2 = v0;
  v3 = *(v0 + 32);
  v4 = *(v2 + 40);
}

uint64_t OUTLINED_FUNCTION_323_0(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FEBD8](v2, a2, 22, 1, 490);
}

uint64_t OUTLINED_FUNCTION_324_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_325()
{
}

uint64_t OUTLINED_FUNCTION_326_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t Answer.init(id:answer:metadata:sourceResults:experiences:mediaURL:lowConfidenceKnowledge:dialog:pommesContextData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  v16 = type metadata accessor for Answer();
  result = outlined init with take of URL?(a8, a9 + v16[9]);
  *(a9 + v16[10]) = a10;
  v18 = (a9 + v16[11]);
  *v18 = a11;
  v18[1] = a12;
  v19 = (a9 + v16[12]);
  *v19 = a13;
  v19[1] = a14;
  return result;
}

uint64_t type metadata accessor for Answer()
{
  result = type metadata singleton initialization cache for Answer;
  if (!type metadata singleton initialization cache for Answer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:csItem:featureFlagService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  v132 = a5;
  v133 = a6;
  v129 = a3;
  v130 = a4;
  v127 = a1;
  v128 = a2;
  v126 = a9;
  v27 = a24;
  v137 = a23;
  v138 = a20;
  v139 = a14;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_97_4();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  v37 = v118 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_49_3();
  v124 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v46);
  v48 = v118 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_114(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_49_3();
  v136 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  OUTLINED_FUNCTION_114(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_49_3();
  v135 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_49_3();
  v134 = v63;
  if (a24)
  {
    v122 = a8;
    v123 = v48;
    v64 = one-time initialization token for search;
    v131 = a24;
    v65 = a24;
    if (v64 != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v66 = type metadata accessor for Logger();
    v67 = __swift_project_value_buffer(v66, static Logging.search);
    v68 = v65;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.info.getter();

    v71 = os_log_type_enabled(v69, v70);
    v118[0] = v37;
    if (v71)
    {
      v72 = OUTLINED_FUNCTION_51_0();
      v121 = v67;
      v73 = v72;
      v74 = OUTLINED_FUNCTION_49_0();
      v140 = v74;
      *v73 = 136315138;
      v75 = [v68 attributeSet];
      CSSearchableItemAttributeSet.keyStrings.getter();
      v77 = v76;

      MEMORY[0x25F89F8A0](v77, MEMORY[0x277D837D0]);

      OUTLINED_FUNCTION_13_28();
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v73 + 4) = v78;
      _os_log_impl(&dword_25D85C000, v69, v70, "EmailDocument: parsing attribute keys: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    v79 = v68;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = OUTLINED_FUNCTION_51_0();
      v83 = OUTLINED_FUNCTION_49_0();
      v140 = v83;
      *v82 = 136642819;
      v84 = [v79 attributeSet];
      CSSearchableItemAttributeSet.kvStrings.getter();
      v86 = v85;

      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
      MEMORY[0x25F89F8A0](v86, v87);

      OUTLINED_FUNCTION_13_28();
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v82 + 4) = v88;
      _os_log_impl(&dword_25D85C000, v80, v81, "EmailDocument: parsing attributes: %{sensitive}s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
    }

    v27 = v131;
    v37 = v118[0];
    a8 = v122;
    v48 = v123;
  }

  v125 = v24;
  if (a8)
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSJ_Tt0g5(&outlined read-only object #0 of EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:csItem:featureFlagService:));
    String.oms_trimCharacters(_:)(v89, a7, a8);
    v131 = v90;
    v123 = v91;
  }

  else
  {
    v131 = a7;
    v123 = 0;
  }

  v92 = v124;
  v119 = a19;
  v118[2] = a16;
  v118[1] = a15;
  v124 = a13;
  v121 = a11;
  v122 = a12;
  v120 = a10;
  outlined init with copy of ResourceBundle?(v139, v134, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of ResourceBundle?(v138, v135, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined init with copy of ResourceBundle?(v137, v136, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  if (v27)
  {
    v93 = v27;

    v94 = OUTLINED_FUNCTION_94();
    PreExtractedCard.init(item:featureFlagService:)(v94, v95, v96);
    v97 = v93;

    v98 = OUTLINED_FUNCTION_94();
    PreExtractedContact.init(item:featureFlagService:)(v98, v99, v100);
    v101 = v97;
    PreExtractedSharedLink.init(item:)(v101, v37);
    v27 = v101;

    v102 = OUTLINED_FUNCTION_94();
    PreExtractedBreadcrumb.init(item:featureFlagService:)(v102, v103);
  }

  else
  {
    v104 = type metadata accessor for PreExtractedCard();
    OUTLINED_FUNCTION_10_24(v48, v105, v106, v104);
    v107 = type metadata accessor for PreExtractedContact();
    OUTLINED_FUNCTION_10_24(v92, v108, v109, v107);
    v110 = type metadata accessor for PreExtractedSharedLink();
    OUTLINED_FUNCTION_10_24(v37, v111, v112, v110);
    type metadata accessor for PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
  }

  EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:instantAnswerDescription:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();

  outlined destroy of IntentApplication?(v137, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  outlined destroy of IntentApplication?(v138, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  return outlined destroy of IntentApplication?(v139, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t FileDocument.keywords.getter()
{
  v0 = FileDocument.item.getter();
  v1 = [v0 attributeSet];

  result = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.keywords.getter(v1);
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:csItem:featureFlagService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  v129 = a7;
  v130 = a8;
  v127 = a5;
  v128 = a6;
  v125 = a3;
  v126 = a4;
  v123 = a1;
  v124 = a2;
  v122 = a9;
  v29 = a26;
  v30 = a13;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_97_4();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_59_4();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  v44 = v114 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_49_3();
  v118 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_114(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_49_3();
  v138 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  OUTLINED_FUNCTION_114(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_49_3();
  v137 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_49_3();
  v136 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_49_3();
  v135 = v69;
  v121 = *(a20 + 16);
  v119 = v44;
  if (!v121)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Logging.search);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_25D85C000, v71, v72, "MobileSMSDocument: chatParticipants set from both 'from' and 'to' as there's no chatParticipants passed-in", v73, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v29 = a26;
    v44 = v119;
  }

  v120 = v28;
  v133 = a25;
  v134 = a22;
  v132 = a13;
  if (v29)
  {
    v116 = v27;
    v74 = one-time initialization token for search;
    v117 = v29;
    v75 = v29;
    if (v74 != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, static Logging.search);
    v77 = v75;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = OUTLINED_FUNCTION_51_0();
      v115 = OUTLINED_FUNCTION_49_0();
      v139 = v115;
      *v80 = 136315138;
      v81 = [v77 attributeSet];
      CSSearchableItemAttributeSet.keyStrings.getter();
      v83 = v82;

      MEMORY[0x25F89F8A0](v83, MEMORY[0x277D837D0]);

      OUTLINED_FUNCTION_13_28();
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v80 + 4) = v84;
      _os_log_impl(&dword_25D85C000, v78, v79, "MobileSMSDocument: parsing attribute keys: %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v115);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    v85 = v77;
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = OUTLINED_FUNCTION_51_0();
      v89 = OUTLINED_FUNCTION_49_0();
      v139 = v89;
      *v88 = 136642819;
      v90 = [v85 attributeSet];
      CSSearchableItemAttributeSet.kvStrings.getter();
      v92 = v91;

      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
      MEMORY[0x25F89F8A0](v92, v93);

      OUTLINED_FUNCTION_13_28();
      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v88 + 4) = v94;
      _os_log_impl(&dword_25D85C000, v86, v87, "MobileSMSDocument: parsing attributes: %{sensitive}s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
    }

    v29 = v117;
    v27 = v116;
    v44 = v119;
    v30 = v132;
  }

  outlined init with copy of ResourceBundle?(v30, v135, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of ResourceBundle?(a14, v136, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v131 = a14;
  LODWORD(v117) = a11;
  v116 = a10;
  if (v121)
  {
    v121 = a20;
  }

  else
  {

    v139 = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(a10, a11 & 1);

    specialized Array.append<A>(contentsOf:)(v95);
    v121 = v139;
  }

  v115 = a19;
  v114[3] = a18;
  v114[2] = a17;
  v114[1] = a16;
  v114[0] = a15;
  outlined init with copy of ResourceBundle?(v134, v137, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined init with copy of ResourceBundle?(v133, v138, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v96 = v118;
  if (v29)
  {
    v97 = v29;

    PreExtractedCard.init(item:featureFlagService:)(v97, a27, v96);
    v98 = v97;

    PreExtractedContact.init(item:featureFlagService:)(v98, a27, v44);
    v99 = v98;
    PreExtractedSharedLink.init(item:)(v99, v27);
    v29 = v99;

    PreExtractedBreadcrumb.init(item:featureFlagService:)(v29, a27);
  }

  else
  {
    v100 = type metadata accessor for PreExtractedCard();
    OUTLINED_FUNCTION_10_24(v96, v101, v102, v100);
    v103 = type metadata accessor for PreExtractedContact();
    OUTLINED_FUNCTION_10_24(v44, v104, v105, v103);
    v106 = type metadata accessor for PreExtractedSharedLink();
    OUTLINED_FUNCTION_10_24(v27, v107, v108, v106);
    type metadata accessor for PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
  }

  MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();

  outlined destroy of IntentApplication?(v133, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  outlined destroy of IntentApplication?(v134, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined destroy of IntentApplication?(v131, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return outlined destroy of IntentApplication?(v132, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t FileDocument.title.getter(uint64_t (*a1)(id))
{
  v1 = FileDocument.item.getter();
  v2 = [v1 attributeSet];

  return a1(v2);
}

uint64_t Photo.init(id:photoDescription:locationKeywords:season:sceneClassificationLabels:snippet:ocrString:date:businessNames:peopleNames:peopleContactIdentifiers:peoplePersonIdentifiers:extractedEventsLLMConsumableDescription:partialExtractedAttributes:csItem:featureFlagService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  v127 = a6;
  v128 = a7;
  v126 = a5;
  v123 = a2;
  v124 = a3;
  v121 = a9;
  v122 = a1;
  v26 = a21;
  v119 = a18;
  v120 = a19;
  v118 = a17;
  v116 = a15;
  v117 = a16;
  v129 = a20;
  v130 = a13;
  v114 = a12;
  v115 = a14;
  v112 = a10;
  v113 = a11;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v103 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v36);
  v38 = &v103 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_59_4();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v46);
  v48 = &v103 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_114(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v52);
  v54 = &v103 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_97_4();
  v125 = a4;
  if (a21)
  {
    v105 = v23;
    v106 = v54;
    v107 = v48;
    v108 = v22;
    v104 = v38;
    v109 = v32;
    v110 = a22;
    v111 = a8;
    v59 = one-time initialization token for search;
    v60 = a21;
    if (v59 != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logging.search);
    v62 = v60;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = OUTLINED_FUNCTION_51_0();
      v66 = OUTLINED_FUNCTION_49_0();
      v131 = v66;
      *v65 = 136315138;
      v67 = [v62 attributeSet];
      CSSearchableItemAttributeSet.keyStrings.getter();
      v69 = v68;

      MEMORY[0x25F89F8A0](v69, MEMORY[0x277D837D0]);

      OUTLINED_FUNCTION_13_28();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v65 + 4) = v70;
      _os_log_impl(&dword_25D85C000, v63, v64, "Photo: parsing attribute keys: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    v84 = v62;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = OUTLINED_FUNCTION_51_0();
      v88 = OUTLINED_FUNCTION_49_0();
      v131 = v88;
      *v87 = 136642819;
      v89 = [v84 &off_2799EF070 + 4];
      CSSearchableItemAttributeSet.kvStrings.getter();
      v91 = v90;

      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
      MEMORY[0x25F89F8A0](v91, v92);

      OUTLINED_FUNCTION_13_28();
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v87 + 4) = v93;
      _os_log_impl(&dword_25D85C000, v85, v86, "Photo: parsing attributes: %{sensitive}s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v88);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
    }

    v94 = v104;
    v95 = v108;
    v96 = v107;
    v97 = v106;
    outlined init with copy of ResourceBundle?(v130, v105, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined init with copy of ResourceBundle?(v129, v97, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    v98 = v84;
    v99 = v110;

    PreExtractedCard.init(item:featureFlagService:)(v98, v99, v96);
    v100 = v98;

    PreExtractedContact.init(item:featureFlagService:)(v100, v99, v95);
    v101 = v100;
    PreExtractedSharedLink.init(item:)(v101, v94);
    v26 = v101;

    PreExtractedBreadcrumb.init(item:featureFlagService:)(v26, v99);
  }

  else
  {
    outlined init with copy of ResourceBundle?(v130, v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined init with copy of ResourceBundle?(v129, v54, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    v71 = type metadata accessor for PreExtractedCard();
    OUTLINED_FUNCTION_10_24(v48, v72, v73, v71);
    v74 = type metadata accessor for PreExtractedContact();
    OUTLINED_FUNCTION_10_24(v22, v75, v76, v74);
    v77 = type metadata accessor for PreExtractedSharedLink();
    OUTLINED_FUNCTION_10_24(v38, v78, v79, v77);
    type metadata accessor for PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  }

  Photo.init(id:photoDescription:locationKeywords:season:sceneClassificationLabels:snippet:ocrString:date:businessNames:peopleNames:peopleContactIdentifiers:peoplePersonIdentifiers:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();

  outlined destroy of IntentApplication?(v129, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  return outlined destroy of IntentApplication?(v130, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

void CSSearchableItem.preExtractedCard(featureFlagService:)()
{
  v1 = v0;

  v2 = OUTLINED_FUNCTION_14_28();

  PreExtractedCard.init(item:featureFlagService:)(v2, v3, v4);
}

void CSSearchableItem.preExtractedContact(featureFlagService:)()
{
  v1 = v0;

  v2 = OUTLINED_FUNCTION_14_28();

  PreExtractedContact.init(item:featureFlagService:)(v2, v3, v4);
}

uint64_t CSSearchableItem.preExtractedSharedLink()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;

  return PreExtractedSharedLink.init(item:)(v3, a1);
}

uint64_t CSSearchableItem.preExtractedBreadcrumb(featureFlagService:)()
{
  v1 = v0;

  v2 = OUTLINED_FUNCTION_14_28();

  return PreExtractedBreadcrumb.init(item:featureFlagService:)(v2, v3);
}

uint64_t FileDocument.contentUrl.getter@<X0>(SEL *a1@<X0>, void (*a2)(id)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = FileDocument.item.getter();
  v9 = [v8 attributeSet];

  v10 = [v9 *a1];
  if (v10)
  {
    a2(v10);

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = a3(0);

  return __swift_storeEnumTagSinglePayload(a4, v11, 1, v12);
}

uint64_t Answer.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t Answer.answer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t Answer.answer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Answer.metadata.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Answer.sourceResults.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Answer.experiences.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Answer.mediaURL.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_23_25() + 36);

  return outlined assign with take of URL?(v0, v2);
}

uint64_t Answer.lowConfidenceKnowledge.setter(char a1)
{
  result = type metadata accessor for Answer();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Answer.dialog.getter()
{
  v1 = (v0 + *(type metadata accessor for Answer() + 44));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t Answer.dialog.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Answer() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Answer.pommesContextData.getter()
{
  v1 = (v0 + *(type metadata accessor for Answer() + 48));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v4, v5);
  return OUTLINED_FUNCTION_94();
}

uint64_t Answer.pommesContextData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Answer() + 48);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t Answer.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726577736E61 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6552656372756F73 && a2 == 0xED000073746C7573;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65697265707865 && a2 == 0xEB00000000736563;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4C5255616964656DLL && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x800000025DBF1930 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x676F6C616964 && a2 == 0xE600000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000011 && 0x800000025DBF7850 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t Answer.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x726577736E61;
      break;
    case 2:
      result = 0x617461646174656DLL;
      break;
    case 3:
      result = 0x6552656372756F73;
      break;
    case 4:
      result = 0x6E65697265707865;
      break;
    case 5:
      result = 0x4C5255616964656DLL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x676F6C616964;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Answer.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Answer.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Answer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Answer.CodingKeys and conformance Answer.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Answer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Answer.CodingKeys and conformance Answer.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Answer.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch6AnswerV10CodingKeys33_042F05767BD4111F1C2C5EE779832BDELLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch6AnswerV10CodingKeys33_042F05767BD4111F1C2C5EE779832BDELLOGMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_59_4();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Answer.CodingKeys and conformance Answer.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v4;
  v14 = v4[1];
  OUTLINED_FUNCTION_26_8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = v4[2];
    v16 = v4[3];
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = v4[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_4_9();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = v4[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    _sSay10OmniSearch0B6ResultVGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A]);
    OUTLINED_FUNCTION_4_9();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v28 = v4[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
    lazy protocol witness table accessor for type [DialogExperience] and conformance <A> [A](&lazy protocol witness table cache variable for type [DialogExperience] and conformance <A> [A]);
    OUTLINED_FUNCTION_4_9();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = type metadata accessor for Answer();
    v18 = v17[9];
    type metadata accessor for URL();
    OUTLINED_FUNCTION_7_43();
    _s10OmniSearch0B6ResultVACSEAAWlTm_4(v19);
    OUTLINED_FUNCTION_4_9();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v4 + v17[10]);
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = (v4 + v17[11]);
    v22 = *v21;
    v23 = v21[1];
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = (v4 + v17[12]);
    v29 = *v24;
    v30 = v24[1];
    outlined copy of Data?(*v24, v30);
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v29, v30);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t Answer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_49_3();
  v48 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch6AnswerV10CodingKeys33_042F05767BD4111F1C2C5EE779832BDELLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch6AnswerV10CodingKeys33_042F05767BD4111F1C2C5EE779832BDELLOGMR);
  v49 = OUTLINED_FUNCTION_14(v8);
  v50 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = type metadata accessor for Answer();
  v16 = OUTLINED_FUNCTION_17(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = Dictionary.init(dictionaryLiteral:)();
  v21 = *(v15 + 36);
  v22 = type metadata accessor for URL();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v26 = v20;
  v54 = v20 + *(v15 + 48);
  *v54 = xmmword_25DBC9410;
  v27 = a1[3];
  v28 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  lazy protocol witness table accessor for type Answer.CodingKeys and conformance Answer.CodingKeys();
  v51 = v14;
  v29 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v52);

    outlined destroy of IntentApplication?(v26 + v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    return outlined consume of Data?(*v54, *(v54 + 1));
  }

  else
  {
    v53 = v15;
    LOBYTE(v56) = 0;
    OUTLINED_FUNCTION_26_24();
    v30 = v26;
    *v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v26[1] = v31;
    OUTLINED_FUNCTION_19_33(1);
    v26[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v26[3] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v58 = 2;
    _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_5_44();

    v55 = v56;
    v26[4] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    v58 = 3;
    _sSay10OmniSearch0B6ResultVGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A]);
    OUTLINED_FUNCTION_5_44();
    v26[5] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
    v58 = 4;
    lazy protocol witness table accessor for type [DialogExperience] and conformance <A> [A](&lazy protocol witness table cache variable for type [DialogExperience] and conformance <A> [A]);
    OUTLINED_FUNCTION_5_44();
    v26[6] = v56;
    LOBYTE(v56) = 5;
    OUTLINED_FUNCTION_7_43();
    _s10OmniSearch0B6ResultVACSEAAWlTm_4(v33);
    v34 = v48;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of URL?(v34, v30 + v21);
    OUTLINED_FUNCTION_19_33(6);
    OUTLINED_FUNCTION_26_24();
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    v36 = v53;
    *(v30 + *(v53 + 40)) = v35 & 1;
    OUTLINED_FUNCTION_19_33(7);
    OUTLINED_FUNCTION_26_24();
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = (v30 + *(v36 + 44));
    *v38 = v37;
    v38[1] = v39;
    v58 = 8;
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_26_24();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v40 = OUTLINED_FUNCTION_17_34();
    v41(v40);
    v42 = v56;
    v43 = v57;
    v44 = v54;
    outlined consume of Data?(*v54, *(v54 + 1));
    *v44 = v42;
    *(v44 + 1) = v43;
    outlined init with copy of Answer(v30, v47);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    return outlined destroy of Answer(v30);
  }
}

unint64_t lazy protocol witness table accessor for type Answer.CodingKeys and conformance Answer.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys;
  if (!lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys;
  if (!lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys;
  if (!lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys;
  if (!lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys);
  }

  return result;
}

unint64_t _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t _sSay10OmniSearch0B6ResultVGSayxGSEsSERzlWlTm_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    _s10OmniSearch0B6ResultVACSEAAWlTm_4(v4);
    result = OUTLINED_FUNCTION_34_9();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DialogExperience] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
    _s10OmniSearch0B6ResultVACSEAAWlTm_4(v4);
    result = OUTLINED_FUNCTION_34_9();
    atomic_store(result, v1);
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
    lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined init with copy of Answer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Answer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Answer(uint64_t a1)
{
  v2 = type metadata accessor for Answer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for EmailDocument(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type EmailDocument and conformance EmailDocument);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type EmailDocument and conformance EmailDocument);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type EmailDocument and conformance EmailDocument);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MobileSMSDocument(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type MobileSMSDocument and conformance MobileSMSDocument);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type MobileSMSDocument and conformance MobileSMSDocument);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type MobileSMSDocument and conformance MobileSMSDocument);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for CalendarEvent(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type CalendarEvent and conformance CalendarEvent);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type CalendarEvent and conformance CalendarEvent);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type CalendarEvent and conformance CalendarEvent);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Photo(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Photo and conformance Photo);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Photo and conformance Photo);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Photo and conformance Photo);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for NoteDocument(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type NoteDocument and conformance NoteDocument);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type NoteDocument and conformance NoteDocument);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type NoteDocument and conformance NoteDocument);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Reminder(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Reminder and conformance Reminder);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Reminder and conformance Reminder);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Reminder and conformance Reminder);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PhoneHistory(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type PhoneHistory and conformance PhoneHistory);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type PhoneHistory and conformance PhoneHistory);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type PhoneHistory and conformance PhoneHistory);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for VoicemailTranscript(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type VoicemailTranscript and conformance VoicemailTranscript);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type VoicemailTranscript and conformance VoicemailTranscript);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type VoicemailTranscript and conformance VoicemailTranscript);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for JournalEntry(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type JournalEntry and conformance JournalEntry);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type JournalEntry and conformance JournalEntry);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type JournalEntry and conformance JournalEntry);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for VoiceMemo(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type VoiceMemo and conformance VoiceMemo);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type VoiceMemo and conformance VoiceMemo);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type VoiceMemo and conformance VoiceMemo);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Safari(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Safari and conformance Safari);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Safari and conformance Safari);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Safari and conformance Safari);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for FileDocument(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type FileDocument and conformance FileDocument);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type FileDocument and conformance FileDocument);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type FileDocument and conformance FileDocument);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for WalletTransaction(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type WalletTransaction and conformance WalletTransaction);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type WalletTransaction and conformance WalletTransaction);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type WalletTransaction and conformance WalletTransaction);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for WalletPass(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type WalletPass and conformance WalletPass);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type WalletPass and conformance WalletPass);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type WalletPass and conformance WalletPass);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Contact(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Contact and conformance Contact);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Contact and conformance Contact);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Contact and conformance Contact);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Answer(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Answer and conformance Answer);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Answer and conformance Answer);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Answer and conformance Answer);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for OnScreen(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type OnScreen and conformance OnScreen);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type OnScreen and conformance OnScreen);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type OnScreen and conformance OnScreen);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GenericSpotlightItem(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem);
  a1[3] = result;
  return result;
}

unint64_t _s10OmniSearch0B6ResultVACSEAAWlTm_4(uint64_t a1)
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

void type metadata completion function for Answer()
{
  type metadata accessor for [String : String]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [SearchResult](319, &lazy cache variable for type metadata for [SearchResult], type metadata accessor for SearchResult, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [SearchResult](319, &lazy cache variable for type metadata for [DialogExperience], type metadata accessor for DialogExperience, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [SearchResult](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [SearchResult](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for Answer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_5_44()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_17_34()
{
  result = *(v0 - 136);
  v2 = *(*(v0 - 144) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_25()
{

  return type metadata accessor for Answer();
}

uint64_t SpotlightIndexRequest.init(userQuery:targetMatches:spQUParse:allowedTypes:locale:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  v9 = 20;
  if ((a4 & 1) == 0)
  {
    v9 = a3;
  }

  a9[2] = v9;
  a9[3] = a5;
  a9[4] = a6;
  a9[5] = a7;
  a9[6] = a8;
  return result;
}

uint64_t SpotlightIndexRequest.userQuery.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *SpotlightIndexRequest.spQUParse.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t SpotlightIndexRequest.locale.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t SpotlightIndexRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  if (v3)
  {
    v8 = v3;
    if (!outlined bridged method (pb) of @objc SPQUParse.getEncodedData()(v8))
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    v9 = Dictionary.description.getter();
    v11 = v10;

    MEMORY[0x25F89F6C0](v9, v11);

    v13 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v13 = 7104878;
    v12 = 0xE300000000000000;
  }

  _StringGuts.grow(_:)(80);
  MEMORY[0x25F89F6C0](0x6575512072657355, 0xEC000000203A7972);
  MEMORY[0x25F89F6C0](v1, v2);
  MEMORY[0x25F89F6C0](0xD000000000000012, 0x800000025DBF7870);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F89F6C0](v14);

  MEMORY[0x25F89F6C0](0x615055515053202CLL, 0xED0000203A657372);
  MEMORY[0x25F89F6C0](v13, v12);

  MEMORY[0x25F89F6C0](0xD000000000000011, 0x800000025DBF7890);
  v15 = MEMORY[0x25F89F8A0](v5, &type metadata for SearchEntityTypeIdentifier);
  MEMORY[0x25F89F6C0](v15);

  MEMORY[0x25F89F6C0](0x656C61636F6C202CLL, 0xEA0000000000203ALL);
  if (v7)
  {
    v16 = v6;
  }

  else
  {
    v16 = 7104878;
  }

  if (v7)
  {
    v17 = v7;
  }

  else
  {
    v17 = 0xE300000000000000;
  }

  MEMORY[0x25F89F6C0](v16, v17);

  return 0;
}

uint64_t outlined bridged method (pb) of @objc SPQUParse.getEncodedData()(void *a1)
{
  v1 = [a1 getEncodedData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t SpotlightRankingItem.intelligenceFlowTelemetry()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef9SpotlightE13RetrievalTypeOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef9SpotlightE13RetrievalTypeOSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v21 - v2;
  IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.init()();
  v4 = SpotlightRankingItem.retrievalType.getter();
  if ((v5 & 1) == 0)
  {
    MEMORY[0x25F89E9E0](v4);
    MEMORY[0x25F89E2F0](v3);
  }

  SpotlightRankingItem.bundleId.getter();
  IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.bundleId.setter();
  v6 = SpotlightRankingItem.likelihood.getter();
  v7 = OUTLINED_FUNCTION_0_68(v6);
  MEMORY[0x25F89E2C0](v7);
  v8 = SpotlightRankingItem.topicality.getter();
  v9 = OUTLINED_FUNCTION_0_68(v8);
  MEMORY[0x25F89E2D0](v9);
  v10 = SpotlightRankingItem.pommesL1Score.getter();
  v11 = OUTLINED_FUNCTION_0_68(v10);
  MEMORY[0x25F89E2E0](v11);
  v12 = SpotlightRankingItem.pommesCalibratedL1Score.getter();
  v13 = OUTLINED_FUNCTION_0_68(v12);
  MEMORY[0x25F89E320](v13);
  v14 = SpotlightRankingItem.embeddingSimilarity.getter();
  v15 = OUTLINED_FUNCTION_0_68(v14);
  MEMORY[0x25F89E310](v15);
  matched = SpotlightRankingItem.keywordMatchScore.getter();
  v17 = OUTLINED_FUNCTION_0_68(matched);
  MEMORY[0x25F89E300](v17);
  v18 = SpotlightRankingItem.freshness.getter();
  v19 = OUTLINED_FUNCTION_0_68(v18);
  return MEMORY[0x25F89E340](v19);
}

id SPQUParse.init(from:query:isExpectingAnswer:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v209 = a4;
  v211 = a1;
  Entity = type metadata accessor for PersonQueryEntity(0);
  v6 = OUTLINED_FUNCTION_14(Entity);
  v202 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_3();
  v203 = v10;
  v215 = type metadata accessor for LocationQueryEntity(0);
  v11 = OUTLINED_FUNCTION_14(v215);
  v201 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_3();
  v213 = v15;
  v16 = type metadata accessor for OSSignpostID();
  v17 = OUTLINED_FUNCTION_14(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  *&v214 = &v199 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v199 - v24;
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v26, static Logging.searchComponentSignposter);
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v26, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v27 = OSSignposter.logHandle.getter();
  v28 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v29 = v16;
    v30 = a2;
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v27, v28, v32, "SearchTool.SPQUParseFromStructuredQuery", "", v31, 2u);
    a2 = v30;
    v16 = v29;
    OUTLINED_FUNCTION_42_0();
  }

  (*(v19 + 16))(v214, v25, v16);
  v33 = type metadata accessor for OSSignpostIntervalState();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  v208 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v19 + 8))(v25, v16);
  type metadata accessor for TokenArgumentCollector();
  v37 = swift_allocObject();
  v37[2] = MEMORY[0x277D84F90];
  v207 = v37 + 2;
  v37[3] = a2;
  v37[4] = a3;
  v38 = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_0_69(v38[22]);
  v212 = v36;
  EntityProperty.wrappedValue.getter();
  if (v216)
  {
    v39 = static SPQUParse.extractedTypeToIntentLabel(_:)(v216);
  }

  else
  {
    OUTLINED_FUNCTION_0_69(v38[7]);
    EntityProperty.wrappedValue.getter();
    v39 = static SPQUParse.preferredTypeToIntentLabel(_:)(v216);
  }

  v205 = v39;
  v206 = v40;

  v210 = v38;
  OUTLINED_FUNCTION_0_69(v38[6]);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_25_26();
  if (v42)
  {
    v41 = MEMORY[0x277D84F90];
  }

  v43 = *(v41 + 16);
  if (v43)
  {
    v44 = (v41 + 32);
    v214 = xmmword_25DBC8180;
    do
    {
      v45 = *v44++;
      LOBYTE(v216) = v45;
      v46 = static SPQUParse.filterTypeToQUPPArg(_:)(&v216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_34_28(inited);
      v48 = 0xE500000000000000;
      v49 = 0x6D72616C61;
      v51 = v50;
      switch(v45)
      {
        case 1:
          v48 = 0xE400000000000000;
          v49 = 1802465122;
          break;
        case 2:
        case 34:
          OUTLINED_FUNCTION_159_3();
          break;
        case 3:
          OUTLINED_FUNCTION_20_24();
          break;
        case 4:
          OUTLINED_FUNCTION_4_47();
          goto LABEL_25;
        case 5:
          OUTLINED_FUNCTION_30_24();
          goto LABEL_41;
        case 6:
          OUTLINED_FUNCTION_21_29();
LABEL_41:
          OUTLINED_FUNCTION_6_35();
          break;
        case 7:
          OUTLINED_FUNCTION_10_38();
          break;
        case 8:
          OUTLINED_FUNCTION_19_34();
          break;
        case 9:
          OUTLINED_FUNCTION_29_19();
          goto LABEL_52;
        case 10:
          v48 = 0xE400000000000000;
          v49 = 1818845549;
          break;
        case 11:
          OUTLINED_FUNCTION_14_29();
          break;
        case 12:
          v48 = 0xE700000000000000;
          v55 = 0x67617373656DLL;
          goto LABEL_52;
        case 13:
          OUTLINED_FUNCTION_28_25();
          break;
        case 14:
          OUTLINED_FUNCTION_22_25();
          OUTLINED_FUNCTION_69_2();
          v48 = v53 + 1264;
          break;
        case 15:
          OUTLINED_FUNCTION_3_52();
          v48 = v58 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 16:
          OUTLINED_FUNCTION_2_53();
          break;
        case 17:
          v52 = 1852794992;
          goto LABEL_36;
        case 18:
          v57 = 1953458288;
          goto LABEL_47;
        case 19:
          OUTLINED_FUNCTION_8_41();
          v48 = v60 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          break;
        case 20:
        case 21:
          OUTLINED_FUNCTION_7_44();
          break;
        case 22:
          v48 = 0xE300000000000000;
          v49 = 6447476;
          break;
        case 23:
          v49 = 0x72656D6974;
          break;
        case 24:
          v57 = 1701079414;
          goto LABEL_47;
        case 25:
          OUTLINED_FUNCTION_17_35();
          OUTLINED_FUNCTION_124_1();
          v48 = v56 + 7;
          break;
        case 26:
          OUTLINED_FUNCTION_124_1();
          goto LABEL_56;
        case 27:
          OUTLINED_FUNCTION_15_34();
          break;
        case 28:
          OUTLINED_FUNCTION_11_40();
LABEL_52:
          v49 = v55 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        case 29:
          OUTLINED_FUNCTION_40_22();
          break;
        case 30:
          OUTLINED_FUNCTION_69_2();
          v48 = v59 + 1786;
          break;
        case 31:
          OUTLINED_FUNCTION_41_19();
          break;
        case 32:
          v57 = 1836018803;
LABEL_47:
          v49 = v57 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 33:
          OUTLINED_FUNCTION_26_25();
LABEL_25:
          v48 = v54 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 35:
          v48 = 0xE400000000000000;
          v49 = 1802398060;
          break;
        case 36:
          v52 = 1769369453;
LABEL_36:
          v49 = v52 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
          break;
        case 37:
          v48 = 0xE600000000000000;
          v49 = 0x697261666173;
          break;
        case 38:
          OUTLINED_FUNCTION_69_2();
LABEL_56:
          OUTLINED_FUNCTION_16_33();
          break;
        default:
          break;
      }

      *(v51 + 32) = v49;
      *(v51 + 40) = v48;
      TokenArgumentCollector.addArguments(_:argLabel:findRange:)(v51, v46, 0);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      --v43;
    }

    while (v43);
  }

  v61 = *(v211 + v210[7]);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_25_26();
  if (v42)
  {
    v62 = MEMORY[0x277D84F90];
  }

  v63 = *(v62 + 16);
  if (v63)
  {
    v64 = (v62 + 32);
    v214 = xmmword_25DBC8180;
    do
    {
      v65 = *v64++;
      LOBYTE(v216) = v65;
      v66 = static SPQUParse.preferredTypeToQUPPArg(_:)(&v216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v67 = swift_initStackObject();
      OUTLINED_FUNCTION_34_28(v67);
      LOBYTE(v216) = v65;
      v67[2].n128_u64[0] = PreferredType.rawValue.getter();
      v67[2].n128_u64[1] = v68;
      TokenArgumentCollector.addArguments(_:argLabel:findRange:)(v67, v66, 0);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      --v63;
    }

    while (v63);
  }

  v69 = v210;
  v70 = *(v211 + v210[19]);
  EntityProperty.wrappedValue.getter();
  if (v216)
  {
    v71 = *(v216 + 16);

    if (v71)
    {
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_25_26();
      if (v42)
      {
        v72 = MEMORY[0x277D84F90];
      }

      v200 = v72;
      v73 = *(v72 + 16);
      if (v73)
      {
        v74 = (v200 + 32);
        v214 = xmmword_25DBC8180;
        do
        {
          v75 = *v74++;
          LOBYTE(v216) = v75;
          v76 = static SPQUParse.sourceTypeToQUPPArg(_:)(&v216);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v77 = swift_initStackObject();
          OUTLINED_FUNCTION_34_28(v77);
          v78 = 0xE700000000000000;
          v80 = v79;
          v81 = 0x726573776F7262;
          switch(v75)
          {
            case 1:
              OUTLINED_FUNCTION_159_3();
              break;
            case 2:
              OUTLINED_FUNCTION_20_24();
              break;
            case 3:
              OUTLINED_FUNCTION_4_47();
              goto LABEL_95;
            case 4:
              OUTLINED_FUNCTION_6_35();
              OUTLINED_FUNCTION_30_24();
              goto LABEL_97;
            case 5:
              OUTLINED_FUNCTION_6_35();
              OUTLINED_FUNCTION_21_29();
              break;
            case 6:
              OUTLINED_FUNCTION_10_38();
              break;
            case 7:
              OUTLINED_FUNCTION_19_34();
              break;
            case 8:
              OUTLINED_FUNCTION_29_19();
              goto LABEL_92;
            case 9:
              v78 = 0xE400000000000000;
              v81 = 1818845549;
              break;
            case 10:
              v83 = 0x67617373656DLL;
              goto LABEL_92;
            case 11:
              OUTLINED_FUNCTION_28_25();
              break;
            case 12:
              OUTLINED_FUNCTION_69_2();
              OUTLINED_FUNCTION_22_25();
              break;
            case 13:
              OUTLINED_FUNCTION_3_52();
              v78 = v86 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 14:
              OUTLINED_FUNCTION_2_53();
              break;
            case 15:
              v78 = 0xE500000000000000;
              v81 = 0x656E6F6870;
              break;
            case 16:
              v78 = 0xE500000000000000;
              v81 = 0x6F746F6870;
              break;
            case 17:
              OUTLINED_FUNCTION_8_41();
              v78 = v85 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
              break;
            case 18:
              OUTLINED_FUNCTION_7_44();
              break;
            case 19:
              OUTLINED_FUNCTION_7_44();
              v84 = 1953720652;
LABEL_95:
              v78 = v84 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            case 20:
              OUTLINED_FUNCTION_124_1();
              OUTLINED_FUNCTION_17_35();
              break;
            case 21:
              OUTLINED_FUNCTION_124_1();
              OUTLINED_FUNCTION_16_33();
              break;
            case 22:
              OUTLINED_FUNCTION_15_34();
              break;
            case 23:
              OUTLINED_FUNCTION_159_3();
              v82 = 0x746E657645;
LABEL_97:
              v78 = v82 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 24:
              OUTLINED_FUNCTION_14_29();
              break;
            case 25:
              OUTLINED_FUNCTION_11_40();
LABEL_92:
              v81 = v83 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            default:
              break;
          }

          *(v80 + 32) = v81;
          *(v80 + 40) = v78;
          OUTLINED_FUNCTION_37_18(v80, v76);
          swift_setDeallocating();
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          --v73;
        }

        while (v73);
      }

      v69 = v210;
    }
  }

  OUTLINED_FUNCTION_0_69(v69[20]);
  EntityProperty.wrappedValue.getter();
  v87 = v213;
  if (v216)
  {
    v88 = *(v216 + 16);

    if (v88)
    {
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_25_26();
      if (v42)
      {
        v89 = MEMORY[0x277D84F90];
      }

      v200 = v89;
      v90 = *(v89 + 16);
      if (v90)
      {
        v91 = (v200 + 32);
        v199 = 0x800000025DBEDFF0;
        v214 = xmmword_25DBC8180;
        do
        {
          v92 = *v91++;
          LOBYTE(v216) = v92;
          v93 = static SPQUParse.containsTypeToQUPPArg(_:)(&v216);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v94 = swift_initStackObject();
          OUTLINED_FUNCTION_34_28(v94);
          v96 = v95;
          OUTLINED_FUNCTION_159_3();
          switch(v92)
          {
            case 1:
              OUTLINED_FUNCTION_20_24();
              break;
            case 2:
              OUTLINED_FUNCTION_4_47();
              goto LABEL_123;
            case 3:
              OUTLINED_FUNCTION_30_24();
              goto LABEL_126;
            case 4:
              OUTLINED_FUNCTION_21_29();
LABEL_126:
              OUTLINED_FUNCTION_6_35();
              break;
            case 5:
              OUTLINED_FUNCTION_10_38();
              break;
            case 6:
              OUTLINED_FUNCTION_19_34();
              break;
            case 7:
              OUTLINED_FUNCTION_29_19();
              goto LABEL_134;
            case 8:
              OUTLINED_FUNCTION_47_17();
              break;
            case 9:
              OUTLINED_FUNCTION_14_29();
              break;
            case 10:
              OUTLINED_FUNCTION_28_25();
              break;
            case 11:
              OUTLINED_FUNCTION_22_25();
              OUTLINED_FUNCTION_69_2();
              v97 = v102 + 1264;
              break;
            case 12:
              OUTLINED_FUNCTION_3_52();
              goto LABEL_144;
            case 13:
              OUTLINED_FUNCTION_2_53();
              break;
            case 14:
              v97 = 0xE500000000000000;
              v100 = 1953458288;
              goto LABEL_130;
            case 15:
              OUTLINED_FUNCTION_8_41();
              goto LABEL_141;
            case 16:
              OUTLINED_FUNCTION_7_44();
              break;
            case 17:
              v97 = 0xE500000000000000;
              v100 = 1701079414;
              goto LABEL_130;
            case 18:
              OUTLINED_FUNCTION_17_35();
              OUTLINED_FUNCTION_124_1();
              v97 = v106 + 7;
              break;
            case 19:
              OUTLINED_FUNCTION_124_1();
              OUTLINED_FUNCTION_16_33();
              break;
            case 20:
              OUTLINED_FUNCTION_15_34();
              break;
            case 21:
              OUTLINED_FUNCTION_11_40();
LABEL_134:
              v98 = v105 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            case 22:
              OUTLINED_FUNCTION_48_14();
              v103 = 7630437;
LABEL_144:
              v97 = v103 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 23:
              v97 = 0xE400000000000000;
              v98 = 1685217635;
              break;
            case 24:
              OUTLINED_FUNCTION_45_18();
              break;
            case 25:
              OUTLINED_FUNCTION_42_22();
              break;
            case 26:
              OUTLINED_FUNCTION_44_23();
              break;
            case 27:
              OUTLINED_FUNCTION_46_22();
              break;
            case 28:
              OUTLINED_FUNCTION_50_15();
              OUTLINED_FUNCTION_69_2();
              v97 = v108 + 1785;
              break;
            case 29:
              OUTLINED_FUNCTION_24_26();
              break;
            case 30:
              OUTLINED_FUNCTION_13_29();
              v98 = v107 & 0xFFFFFFFFFFFFLL | 0x6853000000000000;
              v104 = 30575;
LABEL_141:
              v97 = v104 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
              break;
            case 31:
              OUTLINED_FUNCTION_13_29();
              OUTLINED_FUNCTION_35_25();
              break;
            case 32:
              v98 = 0xD000000000000012;
              v97 = v199;
              break;
            case 33:
              OUTLINED_FUNCTION_40_22();
              break;
            case 34:
              OUTLINED_FUNCTION_69_2();
              v97 = v101 + 1786;
              break;
            case 35:
              OUTLINED_FUNCTION_41_19();
              break;
            case 36:
              v97 = 0xE500000000000000;
              v100 = 1836018803;
LABEL_130:
              v98 = v100 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
              break;
            case 37:
              OUTLINED_FUNCTION_26_25();
LABEL_123:
              v97 = v99 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            default:
              break;
          }

          *(v96 + 32) = v98;
          *(v96 + 40) = v97;
          OUTLINED_FUNCTION_37_18(v96, v93);
          swift_setDeallocating();
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          --v90;
        }

        while (v90);
      }

      v69 = v210;
    }
  }

  EntityProperty.wrappedValue.getter();
  if (v216)
  {
    v109 = *(v216 + 16);

    if (v109)
    {
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_25_26();
      if (v42)
      {
        v110 = MEMORY[0x277D84F90];
      }

      v212 = v110;
      v111 = *(v110 + 16);
      if (v111)
      {
        v112 = (v212 + 32);
        v200 = 0x800000025DBEDFF0;
        v214 = xmmword_25DBC8180;
        do
        {
          v113 = *v112++;
          LOBYTE(v216) = v113;
          v114 = static SPQUParse.extractedTypeToQUPPArg(_:)(&v216);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v115 = swift_initStackObject();
          OUTLINED_FUNCTION_34_28(v115);
          v117 = v116;
          OUTLINED_FUNCTION_48_14();
          switch(v113)
          {
            case 1:
              v118 = 0xE400000000000000;
              v119 = 1685217635;
              break;
            case 2:
              OUTLINED_FUNCTION_45_18();
              break;
            case 3:
              OUTLINED_FUNCTION_42_22();
              break;
            case 4:
              OUTLINED_FUNCTION_44_23();
              break;
            case 5:
              OUTLINED_FUNCTION_47_17();
              break;
            case 6:
              OUTLINED_FUNCTION_46_22();
              break;
            case 7:
              OUTLINED_FUNCTION_69_2();
              OUTLINED_FUNCTION_50_15();
              break;
            case 8:
              OUTLINED_FUNCTION_24_26();
              break;
            case 9:
              OUTLINED_FUNCTION_13_29();
              v119 = v121 & 0xFFFFFFFFFFFFLL | 0x6853000000000000;
              v118 = 0xEA0000000000776FLL;
              break;
            case 10:
              OUTLINED_FUNCTION_13_29();
              OUTLINED_FUNCTION_35_25();
              break;
            case 11:
              v119 = 0xD000000000000012;
              v118 = v200;
              break;
            case 12:
              OUTLINED_FUNCTION_11_40();
              v119 = v120 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            default:
              break;
          }

          *(v117 + 32) = v119;
          *(v117 + 40) = v118;
          OUTLINED_FUNCTION_37_18(v117, v114);
          swift_setDeallocating();
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          --v111;
        }

        while (v111);
      }

      v69 = v210;
      v87 = v213;
    }
  }

  OUTLINED_FUNCTION_0_69(v69[13]);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_25_26();
  if (v42)
  {
    v123 = MEMORY[0x277D84F90];
  }

  else
  {
    v123 = v122;
  }

  v124 = *(v123 + 16);
  *&v214 = v37;
  if (v124)
  {
    v125 = *(v201 + 80);
    v200 = v123;
    v126 = v123 + ((v125 + 32) & ~v125);
    v212 = *(v201 + 72);
    v127 = MEMORY[0x277D84F90];
    v128 = MEMORY[0x277D84F90];
    v129 = MEMORY[0x277D84F90];
    do
    {
      _s10OmniSearch19LocationQueryEntityVWOcTm_1(v126, v87, type metadata accessor for LocationQueryEntity);
      v130 = *(v87 + v215[5]);
      EntityProperty.wrappedValue.getter();
      v131 = v217;
      if (v217)
      {
        v132 = v216;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v148 = *(v129 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v129 = v149;
        }

        v134 = *(v129 + 16);
        v133 = *(v129 + 24);
        if (v134 >= v133 >> 1)
        {
          OUTLINED_FUNCTION_22_5(v133);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v129 = v150;
        }

        *(v129 + 16) = v134 + 1;
        v135 = v129 + 16 * v134;
        *(v135 + 32) = v132;
        *(v135 + 40) = v131;
        v87 = v213;
      }

      v136 = *(v87 + v215[6]);
      EntityProperty.wrappedValue.getter();
      v137 = v217;
      if (v217)
      {
        v138 = v216;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v151 = *(v128 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v128 = v152;
        }

        v140 = *(v128 + 16);
        v139 = *(v128 + 24);
        if (v140 >= v139 >> 1)
        {
          OUTLINED_FUNCTION_22_5(v139);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v128 = v153;
        }

        *(v128 + 16) = v140 + 1;
        v141 = v128 + 16 * v140;
        *(v141 + 32) = v138;
        *(v141 + 40) = v137;
        v87 = v213;
      }

      v142 = *(v87 + v215[7]);
      EntityProperty.wrappedValue.getter();
      v143 = v217;
      if (v217)
      {
        v144 = v216;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = *(v127 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v127 = v155;
        }

        v146 = *(v127 + 16);
        v145 = *(v127 + 24);
        if (v146 >= v145 >> 1)
        {
          OUTLINED_FUNCTION_22_5(v145);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v127 = v156;
        }

        *(v127 + 16) = v146 + 1;
        v147 = v127 + 16 * v146;
        *(v147 + 32) = v144;
        *(v147 + 40) = v143;
        v87 = v213;
      }

      _s10OmniSearch19LocationQueryEntityVWOhTm_0(v87, type metadata accessor for LocationQueryEntity);
      v126 += v212;
      --v124;
    }

    while (v124);
  }

  else
  {

    v127 = MEMORY[0x277D84F90];
    v128 = MEMORY[0x277D84F90];
    v129 = MEMORY[0x277D84F90];
  }

  v157 = v210;
  if (*(v129 + 16))
  {
    OUTLINED_FUNCTION_37_18(v129, 5);
  }

  if (*(v128 + 16))
  {
    OUTLINED_FUNCTION_37_18(v128, 7);
  }

  if (*(v127 + 16))
  {
    OUTLINED_FUNCTION_37_18(v127, 6);
  }

  OUTLINED_FUNCTION_0_69(v157[8]);
  EntityProperty.wrappedValue.getter();
  static SPQUParse.temporalReferenceToQUPPArg(_:)(&v216);
  if ((v158 & 1) == 0)
  {
    EntityProperty.wrappedValue.getter();
    v159 = 0xE600000000000000;
    v160 = 0x657275747566;
    switch(v216)
    {
      case 1:
        v159 = 0xE400000000000000;
        v160 = 1953718640;
        goto LABEL_209;
      case 2:
        v159 = 0xEB00000000646569;
        v160 = 0x6669636570736E75;
        goto LABEL_209;
      case 3:
        break;
      default:
LABEL_209:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v161 = swift_initStackObject();
        *(v161 + 16) = xmmword_25DBC8180;
        *(v161 + 32) = v160;
        *(v161 + 40) = v159;
        OUTLINED_FUNCTION_38_24(v161);
        swift_setDeallocating();
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        break;
    }
  }

  OUTLINED_FUNCTION_0_69(v157[9]);
  EntityProperty.wrappedValue.getter();
  if (v216 != 2)
  {
    EntityProperty.wrappedValue.getter();
    if (v216 != 2)
    {
      if (v216)
      {
        v162 = 0x69646E6563736564;
      }

      else
      {
        v162 = 0x6E69646E65637361;
      }

      if (v216)
      {
        v163 = 0xEA0000000000676ELL;
      }

      else
      {
        v163 = 0xE900000000000067;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v164 = swift_initStackObject();
      *(v164 + 16) = xmmword_25DBC8180;
      *(v164 + 32) = v162;
      *(v164 + 40) = v163;
      OUTLINED_FUNCTION_38_24(v164);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
    }
  }

  OUTLINED_FUNCTION_0_69(v157[10]);
  EntityProperty.wrappedValue.getter();
  static SPQUParse.appEntityStatusToQUPPArg(_:)(&v216);
  if ((v165 & 1) == 0)
  {
    EntityProperty.wrappedValue.getter();
    if (v216 != 24)
    {
      LOBYTE(v222) = v216;
      v166 = AppEntityStatus.rawValue.getter();
      v168 = v167;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v169 = swift_initStackObject();
      *(v169 + 16) = xmmword_25DBC8180;
      *(v169 + 32) = v166;
      *(v169 + 40) = v168;
      OUTLINED_FUNCTION_38_24(v169);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
    }
  }

  OUTLINED_FUNCTION_36_22(v157[11]);
  if (v216)
  {
    v170 = 96;
  }

  else
  {
    v170 = 97;
  }

  EntityProperty.wrappedValue.getter();
  if (v216)
  {
    v171 = 0x72616C75676E6973;
  }

  else
  {
    v171 = 0x6C6172756C70;
  }

  if (v216)
  {
    v172 = 0xE800000000000000;
  }

  else
  {
    v172 = 0xE600000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v173 = swift_initStackObject();
  *(v173 + 16) = xmmword_25DBC8180;
  *(v173 + 32) = v171;
  *(v173 + 40) = v172;
  TokenArgumentCollector.addArguments(_:argLabel:findRange:)(v173, v170, 0);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  OUTLINED_FUNCTION_36_22(v157[12]);
  v174 = OUTLINED_FUNCTION_49_20();
  OUTLINED_FUNCTION_39_22(v174, 1);

  OUTLINED_FUNCTION_36_22(v157[14]);
  v175 = OUTLINED_FUNCTION_49_20();
  OUTLINED_FUNCTION_39_22(v175, 8);

  OUTLINED_FUNCTION_36_22(v157[15]);
  v176 = v216;
  v177 = MEMORY[0x25F89F4C0](0xD000000000000021, 0x800000025DBF78B0);
  EnumValueFromIntentArgString = getEnumValueFromIntentArgString();

  OUTLINED_FUNCTION_39_22(v176, EnumValueFromIntentArgString);

  OUTLINED_FUNCTION_36_22(v157[17]);
  v179 = OUTLINED_FUNCTION_49_20();
  OUTLINED_FUNCTION_39_22(v179, 68);

  OUTLINED_FUNCTION_36_22(v157[18]);
  v180 = OUTLINED_FUNCTION_49_20();
  OUTLINED_FUNCTION_39_22(v180, 69);

  v181 = MEMORY[0x277D84F90];
  v221 = MEMORY[0x277D84F90];
  v222 = MEMORY[0x277D84F90];
  v219 = MEMORY[0x277D84F90];
  v220 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_36_22(v157[16]);
  v182 = v216;

  if (v182)
  {
    v181 = v182;
  }

  v183 = *(v181 + 16);
  if (v183)
  {
    v184 = v203;
    v185 = v181 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
    v186 = *(v202 + 72);
    v187 = Entity;
    do
    {
      _s10OmniSearch19LocationQueryEntityVWOcTm_1(v185, v184, type metadata accessor for PersonQueryEntity);
      OUTLINED_FUNCTION_54_23(v187[5]);
      if (v216)
      {

        OUTLINED_FUNCTION_32_29();
        EntityProperty.wrappedValue.getter();
        OUTLINED_FUNCTION_32_29();
        if (v218)
        {
          specialized Array.append<A>(contentsOf:)(v218);
        }
      }

      else
      {
        OUTLINED_FUNCTION_53_17();
      }

      OUTLINED_FUNCTION_54_23(v187[6]);
      if (v216)
      {

        OUTLINED_FUNCTION_32_29();
        EntityProperty.wrappedValue.getter();
        OUTLINED_FUNCTION_32_29();
        if (v218)
        {
          specialized Array.append<A>(contentsOf:)(v218);
        }
      }

      else
      {
        OUTLINED_FUNCTION_53_17();
      }

      OUTLINED_FUNCTION_54_23(v187[7]);
      if (v216)
      {

        OUTLINED_FUNCTION_32_29();
        EntityProperty.wrappedValue.getter();
        OUTLINED_FUNCTION_32_29();
        if (v218)
        {
          specialized Array.append<A>(contentsOf:)(v218);
        }
      }

      else
      {
        OUTLINED_FUNCTION_53_17();
      }

      OUTLINED_FUNCTION_54_23(v187[8]);
      if (v216)
      {

        OUTLINED_FUNCTION_32_29();
        EntityProperty.wrappedValue.getter();
        OUTLINED_FUNCTION_32_29();
        if (v218)
        {
          specialized Array.append<A>(contentsOf:)(v218);
        }
      }

      else
      {
        OUTLINED_FUNCTION_53_17();
      }

      _s10OmniSearch19LocationQueryEntityVWOhTm_0(v184, type metadata accessor for PersonQueryEntity);
      v185 += v186;
      --v183;
    }

    while (v183);
  }

  v188 = v214;
  if (*(v222 + 16))
  {
    OUTLINED_FUNCTION_52_20(v222, 64);
  }

  if (*(v221 + 16))
  {
    OUTLINED_FUNCTION_52_20(v221, 65);
  }

  if (*(v220 + 16))
  {
    OUTLINED_FUNCTION_52_20(v220, 66);
  }

  if (*(v219 + 16))
  {
    OUTLINED_FUNCTION_52_20(v219, 104);
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v189 = type metadata accessor for Logger();
  __swift_project_value_buffer(v189, static Logging.search);
  v190 = Logger.logObject.getter();
  v191 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v190, v191))
  {
    v192 = swift_slowAlloc();
    *v192 = 0;
    _os_log_impl(&dword_25D85C000, v190, v191, "Finished collecting tokens; instantiating SPQUParse", v192, 2u);
    v188 = v214;
    OUTLINED_FUNCTION_42_0();
  }

  v193 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v194 = MEMORY[0x25F89F4C0](v205, v206);

  swift_beginAccess();
  v195 = *(v188 + 16);
  type metadata accessor for SPQUParseTokenArgument();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v197 = [v193 initWithIntentLabel:v194 tokenArguments:isa isPQA:v209 & 1];

  if (v197)
  {
  }

  $defer #1 () in SPQUParse.init(from:query:isExpectingAnswer:)();

  _s10OmniSearch19LocationQueryEntityVWOhTm_0(v211, type metadata accessor for StructuredQueryEntity);
  return v197;
}

uint64_t key path setter for TokenArgumentCollector.tokenArguments : TokenArgumentCollector(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);

  return v3(v4);
}

uint64_t TokenArgumentCollector.tokenArguments.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t TokenArgumentCollector.tokenArguments.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t TokenArgumentCollector.query.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void *TokenArgumentCollector.__allocating_init(for:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = MEMORY[0x277D84F90];
  result[3] = a1;
  result[4] = a2;
  return result;
}

void *TokenArgumentCollector.init(for:)(uint64_t a1, uint64_t a2)
{
  v2[2] = MEMORY[0x277D84F90];
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

void TokenArgumentCollector.addArguments(_:argLabel:findRange:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v4 = v3;
    v6 = *(a1 + 16);
    if (v6)
    {
      v39 = objc_opt_self();
      v7 = (a1 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;

        v10 = [v39 valueWithRange_];
        if (a3)
        {
          v11 = v4[3];
          v12 = v4[4];
          type metadata accessor for FeatureFlagService();
          v13 = swift_allocObject();
          v14 = String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v8, v9, v13);
          v16 = v15;
          v18 = v17;

          if ((v18 & 1) == 0)
          {
            v19 = [v39 valueWithRange_];

            v10 = v19;
          }
        }

        v20 = llmIntentArgLabel();
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        objc_allocWithZone(MEMORY[0x277D65870]);

        v24 = v10;
        v25 = @nonobjc SPQUParseTokenArgument.init(label:token:tokenRange:)(v21, v23, v8, v9, v10);
        if (v25)
        {
          v26 = v25;

          v27 = *(*v4 + 112);
          v28 = v26;
          v29 = v27(v40);
          v31 = v30;
          MEMORY[0x25F89F850]();
          if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v29(v40, 0);
        }

        else
        {
          if (one-time initialization token for llmQU != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          __swift_project_value_buffer(v32, static Logging.llmQU);

          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v40[0] = v36;
            *v35 = 136315138;
            v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v35 + 4) = v37;
            _os_log_impl(&dword_25D85C000, v33, v34, "LLMQUParseConverter: Could not create token argument for token: %s", v35, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v36);
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_42_0();
          }

          else
          {
          }
        }

        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }
}

uint64_t TokenArgumentCollector.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t TokenArgumentCollector.__deallocating_deinit()
{
  TokenArgumentCollector.deinit();

  return swift_deallocClassInstance();
}

uint64_t $defer #1 () in SPQUParse.init(from:query:isExpectingAnswer:)()
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
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static Logging.searchComponentSignposter);
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
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "SearchTool.SPQUParseFromStructuredQuery", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t static SPQUParse.extractedTypeToIntentLabel(_:)(uint64_t a1)
{
  v3 = llmIntentLabel();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_33_27();

  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = (a1 + 32);
      do
      {
        v6 = *v5++;
        switch(v6)
        {
          case 5:
          case 12:
            break;
          default:

            v7 = llmIntentLabel();
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            OUTLINED_FUNCTION_33_27();

            break;
        }

        --v4;
      }

      while (v4);
    }
  }

  else
  {

    v8 = llmIntentLabel();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_33_27();
  }

  return v1;
}

uint64_t static SPQUParse.preferredTypeToIntentLabel(_:)(uint64_t a1)
{
  v3 = llmIntentLabel();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_33_27();

  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = (a1 + 32);
      do
      {
        v6 = *v5++;
        v7 = v6 - 29;
        if ((v6 - 29) <= 0xA)
        {
          v1 = qword_25DBE3C00[v7];

          v8 = llmIntentLabel();
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_33_27();
        }

        --v4;
      }

      while (v4);
    }
  }

  return v1;
}

uint64_t static SPQUParse.filterTypeToQUPPArg(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 29;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_3_15();
      v5 = v4 - 1;
      goto LABEL_34;
    case 2:
    case 34:
      return result;
    case 3:
      return 35;
    case 4:
      return 32;
    case 5:
      return 18;
    case 6:
      OUTLINED_FUNCTION_3_15();
      v5 = v7 + 10;
      goto LABEL_34;
    case 7:
      return 99;
    case 8:
      return 78;
    case 9:
      return 26;
    case 10:
      return 25;
    case 11:
      return 31;
    case 12:
      return 19;
    case 13:
      return 20;
    case 14:
      return 33;
    case 15:
      return 28;
    case 16:
      return 27;
    case 17:
      return 75;
    case 18:
      return 21;
    case 19:
      return 30;
    case 20:
      return 22;
    case 21:
      return 34;
    case 22:
      OUTLINED_FUNCTION_3_15();
      v5 = v8 - 2;
LABEL_34:
      v6 = v3 | 0x8000000000000000;
      goto LABEL_35;
    case 24:
    case 36:
      return 23;
    case 25:
      return 77;
    case 26:
    case 38:
      return 76;
    case 27:
      return 98;
    case 28:
    case 35:
    case 37:
      return 93;
    case 29:
      return 184;
    case 30:
      return 185;
    case 31:
      return 186;
    case 32:
      return 187;
    case 33:
      return 188;
    default:
      OUTLINED_FUNCTION_98_2();
      v5 = 0xD00000000000001ELL;
LABEL_35:
      v9 = MEMORY[0x25F89F4C0](v5, v6);
      EnumValueFromIntentArgString = getEnumValueFromIntentArgString();

      return EnumValueFromIntentArgString;
  }
}

uint64_t static SPQUParse.preferredTypeToQUPPArg(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 122;
  switch(v1)
  {
    case 1:
    case 49:
    case 55:
    case 56:
      OUTLINED_FUNCTION_98_2();
      v4 = 0xD000000000000026;
      goto LABEL_47;
    case 2:
      return result;
    case 3:
      return 119;
    case 4:
      return 105;
    case 5:
      OUTLINED_FUNCTION_1_66();
      v4 = v6 + 11;
      goto LABEL_46;
    case 6:
      return 129;
    case 7:
      return 126;
    case 8:
      return 113;
    case 9:
      return 112;
    case 10:
      return 157;
    case 11:
      return 118;
    case 12:
      return 106;
    case 13:
      return 107;
    case 14:
      return 120;
    case 15:
      return 115;
    case 16:
      return 114;
    case 17:
      return 123;
    case 18:
      return 108;
    case 19:
      return 117;
    case 20:
      return 109;
    case 21:
      return 121;
    case 22:
    case 40:
      OUTLINED_FUNCTION_1_66();
      v4 = v7 - 1;
      goto LABEL_46;
    case 24:
    case 46:
      return 110;
    case 25:
      return 125;
    case 26:
    case 57:
      return 124;
    case 27:
      return 128;
    case 28:
    case 45:
    case 54:
      return 127;
    case 29:
      return 80;
    case 30:
      return 74;
    case 31:
    case 44:
      return 14;
    case 32:
      return 15;
    case 33:
      return 16;
    case 34:
      return 81;
    case 35:
      return 17;
    case 36:
      return 211;
    case 37:
      return 79;
    case 38:
      return 82;
    case 39:
    case 53:
      return 83;
    case 42:
      OUTLINED_FUNCTION_1_66();
      v4 = v11 + 2;
      goto LABEL_46;
    case 43:
      return 116;
    case 47:
    case 48:
      OUTLINED_FUNCTION_1_66();
      v4 = v5 + 7;
      goto LABEL_46;
    case 50:
      OUTLINED_FUNCTION_1_66();
      v4 = v12 + 4;
      goto LABEL_46;
    case 51:
      OUTLINED_FUNCTION_1_66();
      v4 = v10 + 3;
      goto LABEL_46;
    case 52:
      v3 = "D_APP_ENTITY_TYPE_SHOW";
      v4 = 0xD00000000000002FLL;
      goto LABEL_46;
    default:
      OUTLINED_FUNCTION_1_66();
      v4 = v8 | 1;
LABEL_46:
      v9 = v3 | 0x8000000000000000;
LABEL_47:
      v13 = MEMORY[0x25F89F4C0](v4, v9);
      EnumValueFromIntentArgString = getEnumValueFromIntentArgString();

      return EnumValueFromIntentArgString;
  }
}

uint64_t static SPQUParse.sourceTypeToQUPPArg(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 139;
  switch(v1)
  {
    case 1:
    case 23:
      result = 144;
      break;
    case 2:
      result = 150;
      break;
    case 3:
      result = 147;
      break;
    case 4:
      result = 133;
      break;
    case 5:
      OUTLINED_FUNCTION_98_2();
      v3 = MEMORY[0x25F89F4C0](0xD000000000000028);
      EnumValueFromIntentArgString = getEnumValueFromIntentArgString();

      result = EnumValueFromIntentArgString;
      break;
    case 6:
      result = 156;
      break;
    case 7:
      result = 154;
      break;
    case 8:
      result = 141;
      break;
    case 9:
      result = 140;
      break;
    case 10:
      result = 134;
      break;
    case 11:
      result = 135;
      break;
    case 12:
      result = 148;
      break;
    case 13:
      result = 143;
      break;
    case 14:
      result = 142;
      break;
    case 15:
      result = 151;
      break;
    case 16:
      result = 136;
      break;
    case 17:
      result = 145;
      break;
    case 18:
      result = 137;
      break;
    case 19:
      result = 149;
      break;
    case 20:
      result = 153;
      break;
    case 21:
      result = 152;
      break;
    case 22:
      result = 155;
      break;
    case 24:
      result = 146;
      break;
    default:
      return result;
  }

  return result;
}