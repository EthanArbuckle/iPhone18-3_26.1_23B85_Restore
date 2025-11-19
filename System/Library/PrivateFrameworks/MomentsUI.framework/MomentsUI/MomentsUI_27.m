uint64_t protocol witness for NotificationHandling.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:) in conformance NotificationHandlingManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = static Exif.filterImage(imageSource:outputURL:);

  return NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for NotificationHandling.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:) in conformance NotificationHandlingManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = static Exif.filterVideo(inputURL:outputURL:);

  return NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:)(a1, a2, a3, a4, a5, a6);
}

id NotificationHandlingManager.getDefaultAppIcon()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID);
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID + 8);

  v3 = MEMORY[0x21CE91FC0](v1, v2);

  v4 = [objc_opt_self() iconForApplicationIdentifier_];

  return v4;
}

void NotificationHandlingManager.getLastAvailabilityPredictedDate()(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  static MOAngelDefaultsManager.dateValueFor(_:)(a1);
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static CommonLogger.notification);
  outlined init with copy of DateInterval?(a1, v11, &_s10Foundation4DateVSgMd);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v15 = 136315138;
    outlined init with copy of DateInterval?(v11, v9, &_s10Foundation4DateVSgMd);
    v16 = *(v3 + 48);
    if (v16(v9, 1, v2) == 1)
    {
      static Date.distantPast.getter();
      if (v16(v9, 1, v2) != 1)
      {
        outlined destroy of UTType?(v9, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(v3 + 32))(v5, v9, v2);
    }

    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v3 + 8))(v5, v2);
    outlined destroy of UTType?(v11, &_s10Foundation4DateVSgMd);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_21607C000, v13, v14, "[NotificationHandlingManager] Last predicted date: %s", v15, 0xCu);
    v21 = v22;
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x21CE94770](v21, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  else
  {

    outlined destroy of UTType?(v11, &_s10Foundation4DateVSgMd);
  }
}

uint64_t NotificationHandlingManager.getLookbackWindowStartDate()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v48 = &v46 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  IntervalIn = specialized static DefaultsManager.Notifications.lookbackFetchIntervalInDays.getter();
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v49 = __swift_project_value_buffer(v18, static CommonLogger.notification);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v21 = os_log_type_enabled(v19, v20);
  v50 = v6;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = IntervalIn;
    _os_log_impl(&dword_21607C000, v19, v20, "[NotificationHandlingManager] looking back %f days", v22, 0xCu);
    v23 = v22;
    v6 = v50;
    MEMORY[0x21CE94770](v23, -1, -1);
  }

  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v51 = *(v6 + 8);
  v51(v14, v5);
  NotificationHandlingManager.getLastPostedDate(forSuggestionOnly:)(1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd);
  }

  else
  {
    v24 = v48;
    (*(v6 + 32))(v48, v4, v5);
    (*(v6 + 16))(v9, v24, v5);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v47 = a1;
      v28 = v27;
      v46 = swift_slowAlloc();
      v52[0] = v46;
      *v28 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v51(v9, v5);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v52);
      v6 = v50;

      *(v28 + 4) = v32;
      _os_log_impl(&dword_21607C000, v25, v26, "[NotificationHandlingManager] last posted date for suggestion notification: %s", v28, 0xCu);
      v33 = v46;
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x21CE94770](v33, -1, -1);
      v34 = v28;
      a1 = v47;
      MEMORY[0x21CE94770](v34, -1, -1);
    }

    else
    {

      v51(v9, v5);
    }

    v35 = v48;
    if (static Date.> infix(_:_:)() & 1) != 0 && (static Date.now.getter(), v36 = static Date.< infix(_:_:)(), v51(v14, v5), (v36))
    {
      (*(v6 + 40))(v16, v35, v5);
    }

    else
    {
      v51(v35, v5);
    }
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v52[0] = v40;
    *v39 = 136315138;
    swift_beginAccess();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = a1;
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v52);

    *(v39 + 4) = v44;
    a1 = v43;
    _os_log_impl(&dword_21607C000, v37, v38, "[NotificationHandlingManager] lookbackStartDate: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x21CE94770](v40, -1, -1);
    MEMORY[0x21CE94770](v39, -1, -1);
  }

  swift_beginAccess();
  (*(v50 + 16))(a1, v16, v5);
  return (v51)(v16, v5);
}

void closure #1 in NotificationHandlingManager.fetchEligibleSuggestions(with:)(void **a1, double *a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *((*MEMORY[0x277D85000] & *v12) + 0xA8);
  v67 = (*MEMORY[0x277D85000] & *v12) + 168;
  v14 = v13(v9);
  if (v14)
  {
    v15 = *&v14[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
    v16 = v14[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8];

    if ((v16 & 1) == 0)
    {
      v17 = swift_beginAccess();
      if (*a2 <= v15)
      {
        v34 = (v13)(v17, *a2);
        if (v34 && (v35 = v34[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive], v34, v35 != 2) && (v35 & 1) != 0)
        {
          if (one-time initialization token for notification != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static CommonLogger.notification);
          v37 = v12;
          v20 = Logger.logObject.getter();
          v38 = static os_log_type_t.info.getter();

          if (!os_log_type_enabled(v20, v38))
          {
            goto LABEL_27;
          }

          v39 = swift_slowAlloc();
          v65 = v3;
          v40 = v39;
          v41 = v11;
          v42 = v7;
          v43 = swift_slowAlloc();
          v68 = v43;
          *v40 = 136315138;
          (*(v8 + 16))(v41, v37 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID, v42);
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v45;
          (*(v8 + 8))(v41, v42);
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v68);

          *(v40 + 4) = v47;
          v48 = "[NotificationHandlingManager] suggestionID: %s is marked as sensitive, filtered out";
          v49 = v38;
          v50 = v20;
          v51 = v40;
          v52 = 12;
        }

        else
        {
          v53 = v12;
          MEMORY[0x21CE92260]();
          if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (one-time initialization token for notification != -1)
          {
            swift_once();
          }

          v54 = type metadata accessor for Logger();
          __swift_project_value_buffer(v54, static CommonLogger.notification);
          v55 = v53;
          v20 = Logger.logObject.getter();
          v56 = static os_log_type_t.info.getter();

          if (!os_log_type_enabled(v20, v56))
          {
            goto LABEL_27;
          }

          v57 = swift_slowAlloc();
          v65 = v3;
          v40 = v57;
          v58 = v11;
          v59 = v7;
          v43 = swift_slowAlloc();
          v68 = v43;
          *v40 = 136315394;
          (*(v8 + 16))(v58, v55 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID, v59);
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v62 = v61;
          (*(v8 + 8))(v58, v59);
          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v68);

          *(v40 + 4) = v63;
          *(v40 + 12) = 2048;
          *(v40 + 14) = v15;
          v48 = "[NotificationHandlingManager] SuggestionID: %s, Goodness Score: %f, is above threshold for notification servicing.";
          v49 = v56;
          v50 = v20;
          v51 = v40;
          v52 = 22;
        }

        _os_log_impl(&dword_21607C000, v50, v49, v48, v51, v52);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x21CE94770](v43, -1, -1);
        MEMORY[0x21CE94770](v40, -1, -1);
LABEL_27:

        return;
      }
    }
  }

  v66 = v13;
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static CommonLogger.notification);
  v19 = v12;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v20, v21))
  {
    goto LABEL_27;
  }

  v65 = v3;
  v22 = swift_slowAlloc();
  v23 = v11;
  v64 = swift_slowAlloc();
  v68 = v64;
  *v22 = 136315394;
  (*(v8 + 16))(v11, v19 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID, v7);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  v26 = v25;
  (*(v8 + 8))(v23, v7);
  v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v68);

  *(v22 + 4) = v27;
  *(v22 + 12) = 2048;
  v29 = v66(v28);
  if (v29)
  {
    v30 = *&v29[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
    v31 = v29[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8];

    v32 = -1.0;
    if (!v31)
    {
      v32 = v30;
    }
  }

  else
  {
    v32 = -1.0;
  }

  *(v22 + 14) = v32;
  _os_log_impl(&dword_21607C000, v20, v21, "[NotificationHandlingManager] SuggestionID: %s is filtered out due to goodness score: %f", v22, 0x16u);
  v33 = v64;
  __swift_destroy_boxed_opaque_existential_1(v64);
  MEMORY[0x21CE94770](v33, -1, -1);
  MEMORY[0x21CE94770](v22, -1, -1);
}

uint64_t NotificationHandlingManager.getLastPostedDate(forSuggestionOnly:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v41 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v41 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v41 - v26;
  v48 = *(v4 + 56);
  v48(&v41 - v26, 1, 1, v3);
  v46 = v4;
  v28 = (v4 + 48);
  if (a1)
  {
    static DefaultsManager.Notifications.lastSuggestionNotificationDate.getter(v22);
    v29 = *v28;
    if ((*v28)(v22, 1, v3) == 1)
    {
      static DefaultsManager.Notifications.olderSuggestionNotificationDate.getter(v25);
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd);
      if (v29(v22, 1, v3) != 1)
      {
        outlined destroy of UTType?(v22, &_s10Foundation4DateVSgMd);
      }

      v30 = v48;
    }

    else
    {
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd);
      (*(v46 + 32))(v25, v22, v3);
      v30 = v48;
      v48(v25, 0, 1, v3);
    }
  }

  else
  {
    v42 = v13;
    static DefaultsManager.Notifications.lastNotificationDate.getter(v16);
    v31 = *v28;
    if ((*v28)(v16, 1, v3) == 1)
    {
      static DefaultsManager.Notifications.olderNotificationDate.getter(v19);
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd);
      v41 = v31;
      v32 = v31(v16, 1, v3);
      v30 = v48;
      if (v32 != 1)
      {
        outlined destroy of UTType?(v16, &_s10Foundation4DateVSgMd);
      }

      v25 = v19;
      v29 = v41;
    }

    else
    {
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd);
      (*(v46 + 32))(v19, v16, v3);
      v30 = v48;
      v48(v19, 0, 1, v3);
      v25 = v19;
      v29 = v31;
    }

    v13 = v42;
  }

  outlined init with take of Date?(v25, v27);
  v33 = v47;
  v30(v47, 1, 1, v3);
  outlined init with copy of DateInterval?(v27, v13, &_s10Foundation4DateVSgMd);
  if (v29(v13, 1, v3) == 1)
  {
    outlined destroy of UTType?(v13, &_s10Foundation4DateVSgMd);
    v34 = v45;
    static MOAngelDefaultsManager.dateValueFor(_:)(v45);
    if (v29(v34, 1, v3) == 1)
    {
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd);
      return outlined destroy of UTType?(v34, &_s10Foundation4DateVSgMd);
    }

    else
    {
      v36 = v46;
      v37 = v44;
      v45 = *(v46 + 32);
      (v45)(v44, v34, v3);
      v38 = v43;
      static Date.now.getter();
      v39 = static Date.< infix(_:_:)();
      v40 = *(v36 + 8);
      v40(v38, v3);
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd);
      if (v39)
      {
        outlined destroy of UTType?(v33, &_s10Foundation4DateVSgMd);
        (v45)(v33, v37, v3);
        return (v48)(v33, 0, 1, v3);
      }

      else
      {
        return (v40)(v37, v3);
      }
    }
  }

  else
  {
    outlined destroy of UTType?(v33, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v13, &_s10Foundation4DateVSgMd);
    return outlined init with take of Date?(v27, v33);
  }
}

uint64_t NotificationHandlingManager.getNotificationSettings()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](NotificationHandlingManager.getNotificationSettings(), 0, 0);
}

{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 152)) + 0x68))();
  *(v0 + 160) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = NotificationHandlingManager.getNotificationSettings();
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22UNNotificationSettingsCs5NeverOGMd);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v0 + 104) = &block_descriptor_48;
  *(v0 + 112) = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.getNotificationSettings(), 0, 0);
}

{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

Swift::OpaquePointer_optional __swiftcall NotificationHandlingManager.getScheduledDateComponents()()
{
  v0 = specialized NotificationHandlingManager.getMomentsUIScheduleDateComponents()();
  if (!v0)
  {

    v0 = specialized NotificationHandlingManager.getLegacyScheduleDateComponents()();
  }

  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

uint64_t closure #1 in NotificationHandlingManager.getMomentsUIScheduleDateComponents()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a2;
  v82 = a3;
  v74 = a1;
  v81 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v3 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Calendar.SearchDirection();
  v83 = *(v79 - 8);
  v5 = v83;
  MEMORY[0x28223BE20](v79);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Calendar.MatchingPolicy();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v73 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v53 - v14;
  v15 = type metadata accessor for Date();
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v71 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v18);
  v78 = &v53 - v21;
  Date.init()();
  v22 = *(v8 + 104);
  v67 = *MEMORY[0x277CC9878];
  v65 = v22;
  v66 = v8 + 104;
  v22(v10);
  v23 = *(v5 + 104);
  v64 = *MEMORY[0x277CC98E8];
  v63 = v23;
  v23(v7);
  v24 = *(v3 + 104);
  v25 = v80;
  v62 = *MEMORY[0x277CC9900];
  v26 = v81;
  v61 = v3 + 104;
  v60 = v24;
  v24(v80);
  Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
  v27 = *(v3 + 8);
  v74 = v3 + 8;
  v58 = v27;
  v27(v25, v26);
  v28 = *(v83 + 8);
  v70 = v7;
  v83 += 8;
  v56 = v28;
  v28(v7, v79);
  v29 = v77;
  v30 = *(v8 + 8);
  v31 = v10;
  v32 = v10;
  v33 = v54;
  v72 = v8 + 8;
  v55 = v30;
  (v30)(v32);
  v34 = v76;
  v35 = v20;
  v36 = v20;
  v37 = v53;
  v68 = *(v76 + 8);
  v69 = v76 + 8;
  v68(v36, v29);
  v38 = *(v34 + 48);
  v39 = v38(v37, 1, v29);
  v59 = v34 + 48;
  v57 = v38;
  if (v39 == 1)
  {
    static Date.distantFuture.getter();
    if (v38(v37, 1, v29) != 1)
    {
      outlined destroy of UTType?(v37, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v34 + 32))(v78, v37, v29);
  }

  Date.init()();
  v65(v31, v67, v33);
  v40 = v70;
  v41 = v79;
  v63(v70, v64, v79);
  v43 = v80;
  v42 = v81;
  v60(v80, v62, v81);
  v44 = v73;
  Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
  v58(v43, v42);
  v56(v40, v41);
  v55(v31, v33);
  v45 = v77;
  v46 = v68;
  v68(v35, v77);
  v47 = v57;
  if (v57(v44, 1, v45) == 1)
  {
    v48 = v71;
    static Date.distantFuture.getter();
    v49 = v47(v44, 1, v45);
    v50 = v78;
    if (v49 != 1)
    {
      outlined destroy of UTType?(v44, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v48 = v71;
    (*(v76 + 32))(v71, v44, v45);
    v50 = v78;
  }

  v51 = static Date.< infix(_:_:)();
  v46(v48, v45);
  v46(v50, v45);
  return v51 & 1;
}

uint64_t NotificationHandlingManager.currentJournalAuthorizationStatus()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](NotificationHandlingManager.currentJournalAuthorizationStatus(), 0, 0);
}

{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 152)) + 0xB0))();
  *(v0 + 160) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = NotificationHandlingManager.currentJournalAuthorizationStatus();
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22UNNotificationSettingsCs5NeverOGMd);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v0 + 104) = &block_descriptor_51_1;
  *(v0 + 112) = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.currentJournalAuthorizationStatus(), 0, 0);
}

uint64_t NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = type metadata accessor for Date();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v9 = type metadata accessor for Calendar.Component();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v10 = type metadata accessor for Calendar();
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:), 0, 0);
}

uint64_t NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:)()
{
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[28] = __swift_project_value_buffer(v1, static CommonLogger.notification);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "Start real time check", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:);
  v6 = v0[7];

  return specialized NotificationHandlingManager.passRealtimeCheck(significantLocationEnabled:)(v6);
}

{
  v46 = v0;
  if (*(v0 + 256) == 1)
  {
    v1 = *(v0 + 208);
    v2 = *(v0 + 216);
    v3 = type metadata accessor for UUID();
    v4 = *(*(v3 - 8) + 56);
    v4(v2, 1, 1, v3);
    v4(v1, 1, 1, v3);
    v5 = swift_task_alloc();
    *(v0 + 240) = v5;
    *v5 = v0;
    v5[1] = NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:);
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);
    v8 = *(v0 + 88);
    v9 = *(v0 + 72);
    v10 = *(v0 + 80);
    v11 = *(v0 + 64);

    return NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)(v7, v11, v9, v10, v8, 1, v6);
  }

  else
  {
    v13 = *(v0 + 176);
    v42 = *(v0 + 168);
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    static Calendar.current.getter();
    (*(v14 + 104))(v15, *MEMORY[0x277CC99A0], v16);
    specialized NotificationHandlingManager.notificationRetryDelayMinutes.getter();
    Date.init()();
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v20 = *(v18 + 8);
    v20(v17, v19);
    (*(v14 + 8))(v15, v16);
    outlined init with copy of DateInterval?(v13, v42, &_s10Foundation4DateVSgMd);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 168);
    if (v23)
    {
      v44 = v20;
      v25 = *(v0 + 160);
      v27 = *(v0 + 104);
      v26 = *(v0 + 112);
      v28 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v28 = 136315138;
      outlined init with copy of DateInterval?(v24, v25, &_s10Foundation4DateVSgMd);
      result = (*(v26 + 48))(v25, 1, v27);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v29 = *(v0 + 168);
      v30 = *(v0 + 120);
      v31 = *(v0 + 104);
      (*(*(v0 + 112) + 32))(v30, *(v0 + 160), v31);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v44(v30, v31);
      outlined destroy of UTType?(v29, &_s10Foundation4DateVSgMd);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v45);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_21607C000, v21, v22, "Real time condition are not met so will try again at %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x21CE94770](v43, -1, -1);
      MEMORY[0x21CE94770](v28, -1, -1);
    }

    else
    {

      outlined destroy of UTType?(v24, &_s10Foundation4DateVSgMd);
    }

    v37 = *(v0 + 192);
    v36 = *(v0 + 200);
    v39 = *(v0 + 176);
    v38 = *(v0 + 184);
    v40 = *(v0 + 48);
    specialized static DefaultsManager.Notifications.incrementRetryCount()();
    (*(v37 + 8))(v36, v38);
    outlined init with take of Date?(v39, v40);

    v41 = *(v0 + 8);

    return v41(0);
  }
}

{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  *(*v1 + 248) = v0;

  outlined destroy of UTType?(v3, &_s10Foundation4UUIDVSgMd);
  outlined destroy of UTType?(v2, &_s10Foundation4UUIDVSgMd);
  if (v0)
  {
    v4 = NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:);
  }

  else
  {
    v4 = NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v1 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v2 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216580B10);
    [v1 setInteger:0 forKey:v2];
  }

  (*(v0[14] + 56))(v0[6], 1, 1, v0[13]);

  v3 = v0[1];

  return v3(0);
}

{
  v14 = v0;
  v1 = v0[31];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21607C000, v3, v4, "Posting Notification failed with error %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v10 = v0[31];
  (*(v0[14] + 56))(v0[6], 1, 1, v0[13]);

  v11 = v0[1];

  return v11(v10);
}

uint64_t NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:)(char a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:), 0, 0);
}

uint64_t NotificationHandlingManager.passRealtimeCheck(significantLocationEnabled:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return specialized NotificationHandlingManager.passRealtimeCheck(significantLocationEnabled:)(a1);
}

Swift::Int NotificationHandlingManager.NotificationError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> () with result type [UNNotificationRequest](uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  type metadata accessor for NSAttributedString(0, a3);
  **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return swift_continuation_resume();
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x21CE91FC0]();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DateComponents();
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for DateComponents() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, a1, a2);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = type metadata accessor for DateComponents();
  v12 = MEMORY[0x28223BE20](v11);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v38 - v15;
  result = MEMORY[0x28223BE20](v14);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v17;
    v19 = *v5;
    v21 = *(v18 + 16);
    v20 = v18 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        v48(v50, v25, v11);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          return (v37)(v28, v11);
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        result = (v33)(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return result;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = (v34)(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = v42 + v38;
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v141 = a1;
  v162 = type metadata accessor for DateComponents();
  v12 = MEMORY[0x28223BE20](v162);
  v145 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v148 = &v133 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v133 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v139 = &v133 - v22;
  MEMORY[0x28223BE20](v21);
  result = MEMORY[0x28223BE20](&v133 - v23);
  v160 = v26;
  v161 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
    v32 = a4;
LABEL_104:
    a4 = *v141;
    if (*v141)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v140 = &v133 - v25;
  v138 = result;
  v150 = v20;
  v146 = v28;
  v147 = v27;
  v136 = a6;
  v30 = 0;
  v158 = (v26 + 8);
  v159 = v26 + 16;
  v154 = (v26 + 32);
  v31 = MEMORY[0x277D84F90];
  v155 = a5;
  v32 = a4;
  v157 = a4;
  while (1)
  {
    v33 = v30;
    v142 = v31;
    if ((v30 + 1) < v29)
    {
      v143 = v30;
      v144 = v29;
      v34 = *v161;
      v35 = *(v160 + 72);
      a4 = *v161 + v35 * (v30 + 1);
      v36 = *(v160 + 16);
      v37 = v162;
      v36(v140, a4, v162);
      v156 = v35;
      v137 = v34;
      v38 = &v34[v35 * v143];
      v39 = v138;
      v151 = v36;
      v36(v138, v38, v37);
      v40 = v140;
      LODWORD(v153) = v32(v140, v39);
      if (v7)
      {
        v132 = *v158;
        (*v158)(v39, v37);
        v132(v40, v37);
      }

      v163 = 0;
      v41 = *v158;
      (*v158)(v39, v37);
      v149 = v41;
      result = (v41)(v40, v37);
      v135 = v144 - 1;
      v152 = v144 - 2;
      v42 = v143;
      a5 = v155;
      v43 = v156;
      v44 = &v137[v156 * (v143 + 2)];
      v45 = v139;
      while (v152 != v42)
      {
        v46 = v162;
        v47 = v151;
        (v151)(v45, v44, v162);
        v48 = a5;
        v49 = v150;
        (v47)(v150, a4, v46);
        v50 = v48;
        v51 = v163;
        v52 = v157(v45, v49);
        v163 = v51;
        if (v51)
        {
          v130 = v149;
          (v149)(v49, v46);
          v130(v45, v46);
        }

        v53 = v52;
        v54 = v149;
        (v149)(v49, v46);
        result = v54(v45, v46);
        ++v42;
        v43 = v156;
        v44 += v156;
        a4 += v156;
        a5 = v50;
        if ((v153 ^ v53))
        {
          v55 = v42 + 1;
          goto LABEL_12;
        }
      }

      v42 = v135;
      v55 = v144;
LABEL_12:
      v33 = v143;
      if (v153)
      {
        if (v55 < v143)
        {
          goto LABEL_141;
        }

        v31 = v162;
        if (v143 <= v42)
        {
          a4 = v43 * (v55 - 1);
          v56 = v55;
          v57 = v55 * v43;
          v144 = v56;
          v58 = v56;
          v59 = v143;
          v60 = v143 * v43;
          do
          {
            if (v59 != --v58)
            {
              v62 = *v161;
              if (!*v161)
              {
                goto LABEL_145;
              }

              v63 = *v154;
              (*v154)(v145, &v62[v60], v162);
              if (v60 < a4 || &v62[v60] >= &v62[v57])
              {
                v61 = v162;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v61 = v162;
                if (v60 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v63)(&v62[a4], v145, v61);
              a5 = v155;
              v43 = v156;
              v31 = v61;
            }

            ++v59;
            a4 -= v43;
            v57 -= v43;
            v60 += v43;
          }

          while (v59 < v58);
          v7 = v163;
          v32 = v157;
          v33 = v143;
          v55 = v144;
        }

        else
        {
          v7 = v163;
          v32 = v157;
        }
      }

      else
      {
        v31 = v162;
        v7 = v163;
        v32 = v157;
      }
    }

    else
    {
      v55 = (v30 + 1);
      v31 = v162;
    }

    v64 = v161[1];
    if (v55 < v64)
    {
      if (__OFSUB__(v55, v33))
      {
        goto LABEL_137;
      }

      if (v55 - v33 < v136)
      {
        if (__OFADD__(v33, v136))
        {
          __break(1u);
        }

        else
        {
          v144 = v55;
          if (&v33[v136] >= v64)
          {
            v65 = v64;
          }

          else
          {
            v65 = &v33[v136];
          }

          if (v65 >= v33)
          {
            if (v144 == v65)
            {
              v55 = v144;
              goto LABEL_38;
            }

            v163 = v7;
            v112 = *v161;
            v113 = *(v160 + 72);
            v156 = *(v160 + 16);
            v114 = (v112 + v113 * (v144 - 1));
            v152 = -v113;
            v153 = v112;
            v143 = v33;
            v115 = &v33[-v144];
            v134 = v113;
            a4 = v112 + v144 * v113;
            v151 = v65;
            while (1)
            {
              v135 = a4;
              v137 = v115;
              v149 = v114;
              while (1)
              {
                v116 = v146;
                v117 = v156;
                (v156)(v146, a4, v31);
                v118 = v147;
                v117(v147, v114, v31);
                v119 = v163;
                v120 = v157(v116, v118);
                v163 = v119;
                if (v119)
                {
                  v131 = *v158;
                  (*v158)(v118, v31);
                  v131(v116, v31);
                }

                v121 = v120;
                v122 = *v158;
                (*v158)(v118, v31);
                result = (v122)(v116, v31);
                if ((v121 & 1) == 0)
                {
                  break;
                }

                if (!v153)
                {
                  goto LABEL_143;
                }

                v123 = *v154;
                v124 = v148;
                v31 = v162;
                (*v154)(v148, a4, v162);
                swift_arrayInitWithTakeFrontToBack();
                v123(v114, v124, v31);
                v114 += v152;
                a4 += v152;
                v125 = __CFADD__(v115++, 1);
                a5 = v155;
                if (v125)
                {
                  goto LABEL_101;
                }
              }

              a5 = v155;
              v31 = v162;
LABEL_101:
              v114 = &v149[v134];
              v115 = v137 - 1;
              a4 = v135 + v134;
              v55 = v151;
              if (++v144 == v151)
              {
                v32 = v157;
                v7 = v163;
                v33 = v143;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v31 = v142;
    if (v55 < v33)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    a4 = v32;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v67 = *(v31 + 2);
    v66 = *(v31 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v68;
    v69 = &v31[16 * v67];
    *(v69 + 4) = v33;
    *(v69 + 5) = v55;
    v151 = v55;
    v70 = *v141;
    if (!*v141)
    {
      goto LABEL_146;
    }

    if (v67)
    {
      break;
    }

    a5 = v155;
    v32 = a4;
LABEL_90:
    v29 = v161[1];
    v30 = v151;
    if (v151 >= v29)
    {
      goto LABEL_104;
    }
  }

  a5 = v155;
  v32 = a4;
  while (1)
  {
    a4 = v68 - 1;
    if (v68 >= 4)
    {
      v75 = &v31[16 * v68 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_123;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_124;
      }

      v82 = &v31[16 * v68];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_126;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_129;
      }

      if (v86 >= v78)
      {
        v104 = &v31[16 * a4 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_135;
        }

        if (v73 < v107)
        {
          a4 = v68 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v68 == 3)
    {
      v71 = *(v31 + 4);
      v72 = *(v31 + 5);
      v81 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      v74 = v81;
LABEL_59:
      if (v74)
      {
        goto LABEL_125;
      }

      v87 = &v31[16 * v68];
      v89 = *v87;
      v88 = *(v87 + 1);
      v90 = __OFSUB__(v88, v89);
      v91 = v88 - v89;
      v92 = v90;
      if (v90)
      {
        goto LABEL_128;
      }

      v93 = &v31[16 * a4 + 32];
      v95 = *v93;
      v94 = *(v93 + 1);
      v81 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v81)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v91, v96))
      {
        goto LABEL_132;
      }

      if (v91 + v96 >= v73)
      {
        if (v73 < v96)
        {
          a4 = v68 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v97 = &v31[16 * v68];
    v99 = *v97;
    v98 = *(v97 + 1);
    v81 = __OFSUB__(v98, v99);
    v91 = v98 - v99;
    v92 = v81;
LABEL_73:
    if (v92)
    {
      goto LABEL_127;
    }

    v100 = &v31[16 * a4];
    v102 = *(v100 + 4);
    v101 = *(v100 + 5);
    v81 = __OFSUB__(v101, v102);
    v103 = v101 - v102;
    if (v81)
    {
      goto LABEL_130;
    }

    if (v103 < v91)
    {
      goto LABEL_90;
    }

LABEL_80:
    v108 = a4 - 1;
    if (a4 - 1 >= v68)
    {
      break;
    }

    if (!*v161)
    {
      goto LABEL_142;
    }

    v109 = *&v31[16 * v108 + 32];
    v110 = *&v31[16 * a4 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)(*v161 + *(v160 + 72) * v109, *v161 + *(v160 + 72) * *&v31[16 * a4 + 32], *v161 + *(v160 + 72) * v110, v70, v32, a5);
    if (v7)
    {
    }

    if (v110 < v109)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
    }

    if (v108 >= *(v31 + 2))
    {
      goto LABEL_122;
    }

    v111 = &v31[16 * v108];
    *(v111 + 4) = v109;
    *(v111 + 5) = v110;
    v164 = v31;
    result = specialized Array.remove(at:)(a4);
    v31 = v164;
    v68 = *(v164 + 2);
    if (v68 <= 1)
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
  v31 = result;
LABEL_106:
  v164 = v31;
  v126 = *(v31 + 2);
  if (v126 < 2)
  {
  }

  while (*v161)
  {
    v127 = *&v31[16 * v126];
    v128 = *&v31[16 * v126 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)(*v161 + *(v160 + 72) * v127, *v161 + *(v160 + 72) * *&v31[16 * v126 + 16], *v161 + *(v160 + 72) * v128, a4, v32, a5);
    if (v7)
    {
    }

    if (v128 < v127)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
    }

    if (v126 - 2 >= *(v31 + 2))
    {
      goto LABEL_134;
    }

    v129 = &v31[16 * v126];
    *v129 = v127;
    *(v129 + 1) = v128;
    v164 = v31;
    result = specialized Array.remove(at:)(v126 - 1);
    v31 = v164;
    v126 = *(v164 + 2);
    if (v126 <= 1)
    {
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_109:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_111:
      v110 = *(v9 + 2);
      if (v110 >= 2)
      {
        while (*v6)
        {
          v111 = v9;
          v9 = (v110 - 1);
          v112 = *&v111[16 * v110];
          v113 = *&v111[16 * v110 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v112), (*v6 + 8 * *&v111[16 * v110 + 16]), (*v6 + 8 * v113), v8);
          if (v5)
          {
            goto LABEL_119;
          }

          if (v113 < v112)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = specialized _ArrayBuffer._consumeAndCreateNew()(v111);
          }

          if (v110 - 2 >= *(v111 + 2))
          {
            goto LABEL_135;
          }

          v114 = &v111[16 * v110];
          *v114 = v112;
          *(v114 + 1) = v113;
          specialized Array.remove(at:)(v110 - 1);
          v9 = v111;
          v110 = *(v111 + 2);
          if (v110 <= 1)
          {
            goto LABEL_119;
          }
        }

        goto LABEL_145;
      }

LABEL_119:

      return;
    }

LABEL_141:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    goto LABEL_111;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v8 = (v8 + 1);
    v122 = v9;
    if (v8 >= v7)
    {
      goto LABEL_36;
    }

    v123 = v7;
    v11 = *v6;
    v12 = *(v11 + 8 * v8);
    v13 = *(v11 + 8 * v10);
    v14 = *((*MEMORY[0x277D85000] & *v12) + 0xA8);
    v15 = v12;
    v16 = v13;
    v17 = v14();
    if (v17)
    {
      v18 = *&v17[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
      v19 = v17[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8];

      if ((v19 & 1) != 0 || (v20 = (*((*MEMORY[0x277D85000] & *v16) + 0xA8))()) == 0)
      {
      }

      else
      {
        v21 = *(v20 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore);
        v22 = *(v20 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8);
        v23 = v20;

        if ((v22 & 1) == 0)
        {
          v125 = v21 < v18;
          goto LABEL_13;
        }
      }

      v125 = 0;
    }

    else
    {

      v125 = 0;
    }

LABEL_13:
    v8 = (v10 + 2);
    if (v10 + 2 < v123)
    {
      v116 = v10;
      v24 = (v11 + 8 * v10 + 16);
      while (1)
      {
        v25 = v8;
        v26 = *(v24 - 1);
        v27 = *((*MEMORY[0x277D85000] & **v24) + 0xA8);
        v28 = *v24;
        v29 = v26;
        v30 = v27();
        if (v30 && (v31 = *&v30[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore], v32 = v30[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8], v30, (v32 & 1) == 0) && (v33 = (*((*MEMORY[0x277D85000] & *v29) + 0xA8))()) != 0)
        {
          v34 = *(v33 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore);
          v35 = *(v33 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8);
          v36 = v33;

          v9 = v122;
          if ((v35 & 1) == 0)
          {
            v8 = v25;
            if (((v125 ^ (v34 >= v31)) & 1) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_23;
          }
        }

        else
        {

          v9 = v122;
        }

        v8 = v25;
        if (v125)
        {
          v6 = a3;
          v10 = v116;
          if (v8 < v116)
          {
            goto LABEL_138;
          }

LABEL_30:
          if (v10 < v8)
          {
            v37 = 8 * v8 - 8;
            v38 = 8 * v10;
            v39 = v8;
            v40 = v10;
            do
            {
              v39 = (v39 - 1);
              if (v40 != v39)
              {
                v41 = *v6;
                if (!*v6)
                {
                  goto LABEL_144;
                }

                v42 = *(v41 + v38);
                *(v41 + v38) = *(v41 + v37);
                *(v41 + v37) = v42;
              }

              v40 = (v40 + 1);
              v37 -= 8;
              v38 += 8;
            }

            while (v40 < v39);
          }

          goto LABEL_36;
        }

LABEL_23:
        v8 = (v8 + 1);
        ++v24;
        if (v123 == v8)
        {
          v8 = v123;
LABEL_25:
          v10 = v116;
          break;
        }
      }
    }

    v6 = a3;
    if (v125)
    {
      if (v8 < v10)
      {
        goto LABEL_138;
      }

      goto LABEL_30;
    }

LABEL_36:
    v43 = v6[1];
    if (v8 < v43)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_137;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_58:
    if (v8 < v10)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v64 = *(v9 + 2);
    v63 = *(v9 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v9);
    }

    *(v9 + 2) = v65;
    v66 = &v9[16 * v64];
    *(v66 + 4) = v10;
    *(v66 + 5) = v8;
    v67 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (v64)
    {
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v9 + 4);
          v70 = *(v9 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_78:
          if (v72)
          {
            goto LABEL_125;
          }

          v85 = &v9[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_128;
          }

          v91 = &v9[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_132;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v95 = &v9[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_92:
        if (v90)
        {
          goto LABEL_127;
        }

        v98 = &v9[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_130;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_99:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*v6)
        {
          goto LABEL_143;
        }

        v107 = *&v9[16 * v106 + 32];
        v108 = *&v9[16 * v68 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v107), (*v6 + 8 * *&v9[16 * v68 + 32]), (*v6 + 8 * v108), v67);
        if (v5)
        {
          goto LABEL_119;
        }

        if (v108 < v107)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v106 >= *(v9 + 2))
        {
          goto LABEL_122;
        }

        v109 = &v9[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        specialized Array.remove(at:)(v68);
        v65 = *(v9 + 2);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v9[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_123;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_124;
      }

      v80 = &v9[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_126;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_129;
      }

      if (v84 >= v76)
      {
        v102 = &v9[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_133;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_109;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_139;
  }

  if (v10 + a4 < v43)
  {
    v43 = (v10 + a4);
  }

  if (v43 < v10)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v8 == v43)
  {
    goto LABEL_58;
  }

  v121 = v43;
  v115 = v5;
  v117 = v10;
  v126 = *v6;
  v44 = v8;
  v45 = *v6 + 8 * v8 - 8;
  v46 = v10 - v44;
LABEL_47:
  v124 = v44;
  v47 = *(v126 + 8 * v44);
  v48 = v46;
  v49 = v45;
  while (1)
  {
    v50 = *v49;
    v51 = *((*MEMORY[0x277D85000] & *v47) + 0xA8);
    v52 = v47;
    v53 = v50;
    v54 = v51();
    if (!v54 || (v55 = *&v54[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore], v56 = v54[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8], v54, (v56 & 1) != 0) || (v57 = (*((*MEMORY[0x277D85000] & *v53) + 0xA8))()) == 0)
    {

LABEL_46:
      v44 = (v124 + 1);
      v45 += 8;
      --v46;
      if ((v124 + 1) == v121)
      {
        v8 = v121;
        v9 = v122;
        v5 = v115;
        v10 = v117;
        v6 = a3;
        goto LABEL_58;
      }

      goto LABEL_47;
    }

    v58 = v57;
    v59 = *(v57 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore);
    v60 = *(v57 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8);

    if ((v60 & 1) != 0 || v59 >= v55)
    {
      goto LABEL_46;
    }

    if (!v126)
    {
      break;
    }

    v61 = *v49;
    v47 = *(v49 + 8);
    *v49 = v47;
    *(v49 + 8) = v61;
    v49 -= 8;
    if (__CFADD__(v48++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v78 = a6;
  v79 = a5;
  v77 = type metadata accessor for DateComponents();
  v11 = *(v77 - 8);
  v12 = MEMORY[0x28223BE20](v77);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v69 - v17;
  result = MEMORY[0x28223BE20](v16);
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v24 = &v69 - v20;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v23 != -1)
  {
    v26 = (a2 - a1) / v23;
    v85 = a1;
    v84 = a4;
    v80 = v23;
    if (v26 < v25 / v23)
    {
      v27 = v26 * v23;
      if (a4 < a1 || a1 + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v76 = a4 + v27;
      v83 = a4 + v27;
      if (v27 >= 1 && a2 < a3)
      {
        v53 = *(v11 + 16);
        v74 = v18;
        v75 = v11 + 16;
        v72 = v53;
        v73 = (v11 + 8);
        v54 = v24;
        v55 = v77;
        v56 = v6;
        v71 = a3;
        while (1)
        {
          v81 = a1;
          v57 = v72;
          v72(v54, a2, v55);
          v58 = a2;
          v59 = v54;
          v60 = v74;
          v57(v74, a4, v55);
          v61 = v79(v59, v60);
          if (v56)
          {
            break;
          }

          v62 = v61;
          v82 = 0;
          v63 = *v73;
          (*v73)(v60, v55);
          v63(v59, v55);
          v54 = v59;
          if (v62)
          {
            v64 = v80;
            v65 = v81;
            a2 = v58 + v80;
            if (v81 < v58 || v81 >= a2)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }
          }

          else
          {
            v64 = v80;
            v65 = v81;
            v66 = a4 + v80;
            a2 = v58;
            if (v81 < a4 || v81 >= v66)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }

            v84 = v66;
            a4 = v66;
          }

          a1 = v65 + v64;
          v85 = a1;
          if (a4 >= v76 || a2 >= v71)
          {
            goto LABEL_65;
          }
        }

        v67 = *v73;
        (*v73)(v60, v55);
        v67(v59, v55);
      }

LABEL_65:
      specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v85, &v84, &v83);
      return 1;
    }

    v76 = v21;
    v28 = a3;
    v29 = a2;
    v30 = v25 / v23 * v23;
    if (a4 < v29 || v29 + v30 <= a4)
    {
      v31 = v29;
      v32 = v77;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v31 = v29;
      v32 = v77;
      if (a4 == v29)
      {
LABEL_24:
        v82 = v6;
        v34 = a4 + v30;
        if (v30 >= 1)
        {
          v35 = -v23;
          v69 = a4;
          v70 = (v11 + 16);
          v72 = (v11 + 8);
          v36 = a4 + v30;
          v37 = v28;
          v38 = v76;
          v81 = a1;
          v74 = -v23;
          do
          {
            v75 = v34;
            v71 = v34;
            v39 = v31;
            v77 = v31 + v35;
            v73 = v31;
            while (1)
            {
              if (v39 <= a1)
              {
                v85 = v39;
                v34 = v71;
                goto LABEL_64;
              }

              v40 = v37;
              v41 = v74;
              v80 = v36;
              v42 = v36 + v74;
              v43 = *v70;
              (*v70)(v38, v36 + v74, v32);
              v43(v14, v77, v32);
              v44 = v38;
              v45 = v82;
              v46 = v79(v38, v14);
              v82 = v45;
              if (v45)
              {
                v68 = *v72;
                (*v72)(v14, v32);
                v68(v44, v32);
                v85 = v73;
                v34 = v75;
                goto LABEL_64;
              }

              v47 = v46;
              v48 = &v40[v41];
              v49 = v14;
              v50 = *v72;
              v51 = v49;
              (*v72)();
              v50(v44, v32);
              if (v47)
              {
                break;
              }

              v37 = &v40[v41];
              if (v40 < v80 || v48 >= v80)
              {
                swift_arrayInitWithTakeFrontToBack();
                v14 = v51;
                v38 = v76;
              }

              else
              {
                v14 = v51;
                v38 = v76;
                if (v40 != v80)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v75 = v42;
              v36 = v42;
              a1 = v81;
              v39 = v73;
              if (v42 <= v69)
              {
                v31 = v73;
                v34 = v75;
                goto LABEL_63;
              }
            }

            v37 = &v40[v41];
            if (v40 < v73 || v48 >= v73)
            {
              v31 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v52 = v69;
              v14 = v51;
              v38 = v76;
            }

            else
            {
              v38 = v76;
              v31 = v77;
              v52 = v69;
              v14 = v51;
              if (v40 != v73)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v36 = v80;
            a1 = v81;
            v35 = v74;
            v34 = v75;
          }

          while (v80 > v52);
        }

LABEL_63:
        v85 = v31;
LABEL_64:
        v83 = v34;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v80;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 2) < *(v6 + 2))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 32;
    do
    {
      v18 = v5 + 32;
      if (*(v6 - 2) < *(v14 - 2))
      {
        v21 = v6 - 32;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 32;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v23 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v28 = __src;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v46 = &v4[v12];
    if (v10 >= 8 && v28 > v6)
    {
LABEL_31:
      v44 = v28;
      v29 = v28 - 1;
      --v5;
      v30 = v46;
      v45 = v28 - 1;
      do
      {
        v31 = *--v30;
        v32 = *v29;
        v33 = *((*MEMORY[0x277D85000] & *v31) + 0xA8);
        v34 = v31;
        v35 = v32;
        v36 = v33();
        if (v36 && (v37 = *&v36[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore], v38 = v36[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8], v36, (v38 & 1) == 0) && (v39 = (*((*MEMORY[0x277D85000] & *v35) + 0xA8))()) != 0)
        {
          v40 = *(v39 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore);
          v41 = *(v39 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8);
          v42 = v39;

          if ((v41 & 1) == 0 && v40 < v37)
          {
            if (v5 + 1 != v44)
            {
              *v5 = *v45;
            }

            if (v46 <= v4 || (v28 = v45, v45 <= v6))
            {
              v28 = v45;
              goto LABEL_48;
            }

            goto LABEL_31;
          }
        }

        else
        {
        }

        if (v5 + 1 != v46)
        {
          *v5 = *v30;
        }

        --v5;
        v46 = v30;
        v29 = v45;
      }

      while (v30 > v4);
      v46 = v30;
      v28 = v44;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v46 = &v4[v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      while (1)
      {
        v15 = *v4;
        v16 = *((*MEMORY[0x277D85000] & **v14) + 0xA8);
        v17 = *v14;
        v18 = v15;
        v19 = v16();
        if (!v19)
        {
          break;
        }

        v20 = *&v19[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
        v21 = v19[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8];

        if (v21)
        {
          break;
        }

        v22 = (*((*MEMORY[0x277D85000] & *v18) + 0xA8))();
        if (!v22)
        {
          break;
        }

        v23 = *(v22 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore);
        v24 = *(v22 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8);
        v25 = v22;

        if ((v24 & 1) != 0 || v23 >= v20)
        {
          goto LABEL_21;
        }

        v26 = v14;
        v27 = v6 == v14++;
        if (!v27)
        {
          goto LABEL_22;
        }

LABEL_23:
        ++v6;
        if (v4 >= v46 || v14 >= v5)
        {
          goto LABEL_25;
        }
      }

LABEL_21:
      v26 = v4;
      v27 = v6 == v4++;
      if (v27)
      {
        goto LABEL_23;
      }

LABEL_22:
      *v6 = *v26;
      goto LABEL_23;
    }

LABEL_25:
    v28 = v6;
  }

LABEL_48:
  if (v28 != v4 || v28 >= (v4 + ((v46 - v4 + (v46 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v28, v4, 8 * (v46 - v4));
  }

  return 1;
}

uint64_t specialized NotificationHandlingManager.getScheduleType()()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v1 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x800000021657AE90);
    v2 = [v0 objectForKey_];

    if (v2)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25 = v23;
    v26 = v24;
    if (*(&v24 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_13;
      }

      result = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  outlined destroy of UTType?(&v25, &_sypSgMd);
LABEL_13:
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static CommonLogger.notification);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21607C000, v7, v8, "[NotificationHandlingManager] No found schedule for non-iphone device", v9, 2u);
      MEMORY[0x21CE94770](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    v10 = specialized static MOAngelDefaultsManager.arrayValueFor(_:)(0xD000000000000026, 0x800000021657AEB0);
    if (v10 && (v11 = specialized _arrayConditionalCast<A, B>(_:)(v10), , v11))
    {
      if (*(v11 + 16))
      {
        if (one-time initialization token for notification != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static CommonLogger.notification);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *&v25 = v16;
          *v15 = 136315138;
          v17 = MEMORY[0x21CE922B0](v11, MEMORY[0x277D83B88]);
          v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v25);

          *(v15 + 4) = v19;
          _os_log_impl(&dword_21607C000, v13, v14, "[NotificationHandlingManager] Legacy user schedule: %s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v16);
          MEMORY[0x21CE94770](v16, -1, -1);
          MEMORY[0x21CE94770](v15, -1, -1);
        }

        v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v11);

        v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(&outlined read-only object #0 of NotificationHandlingManager.getScheduleType());
        v22 = _sSh2eeoiySbShyxG_ABtFZSi_Tt1g5(v20, v21);

        if (v22)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {

        return 1;
      }
    }

    else
    {
      return 1;
    }
  }
}

uint64_t specialized NotificationHandlingManager.weeklyCountCleanup()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v38 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  Date.init()();
  static DefaultsManager.MomentsUIDomain.dateValueFor(_:)(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of UTType?(v2, &_s10Foundation4DateVSgMd);
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v13 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      v15 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x8000000216580A30);
      [v13 setValue:isa forKey:v15];

      v16 = Int._bridgeToObjectiveC()().super.super.isa;
      v17 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580A80);
      [v13 setValue:v16 forKey:v17];

      v18 = Int._bridgeToObjectiveC()().super.super.isa;
      v19 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x8000000216580A50);
      [v13 setValue:v18 forKey:v19];

      v20 = MEMORY[0x21CE91FC0](0xD000000000000017, 0x8000000216582D80);
      [v13 removeObjectForKey_];
    }

    return (*(v4 + 8))(v12, v3);
  }

  else
  {
    v39 = "LastSuggestionNotificationDate";
    (*(v4 + 32))(v10, v2, v3);
    v22 = specialized static DefaultsManager.Notifications.weeklyResetDayThreshold.getter();
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static CommonLogger.notification);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v22;
      _os_log_impl(&dword_21607C000, v24, v25, "[NotificationHandlingManager] weeklyResetDayRequirement: %ld", v26, 0xCu);
      MEMORY[0x21CE94770](v26, -1, -1);
    }

    Date.addingTimeInterval(_:)();
    if (static Date.< infix(_:_:)())
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_21607C000, v27, v28, "[NotificationHandlingManager] Resetting weekly count", v29, 2u);
        MEMORY[0x21CE94770](v29, -1, -1);
      }

      if (one-time initialization token for momentsUI != -1)
      {
        swift_once();
      }

      v30 = static DefaultsManager.momentsUI;
      if (static DefaultsManager.momentsUI)
      {
        v31 = Date._bridgeToObjectiveC()().super.isa;
        v32 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, v39 | 0x8000000000000000);
        [v30 setValue:v31 forKey:v32];

        v33 = Int._bridgeToObjectiveC()().super.super.isa;
        v34 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580A80);
        [v30 setValue:v33 forKey:v34];

        v35 = Int._bridgeToObjectiveC()().super.super.isa;
        v36 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x8000000216580A50);
        [v30 setValue:v35 forKey:v36];
      }
    }

    v37 = *(v4 + 8);
    v37(v7, v3);
    v37(v10, v3);
    return (v37)(v12, v3);
  }
}

uint64_t specialized NotificationHandlingManager.getMomentsUIScheduleDateComponents()()
{
  v0 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v126 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v100 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar.SearchDirection();
  v125 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v134 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for Calendar.MatchingPolicy();
  v124 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v133 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v132 = &v100 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v100 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v100 - v12;
  v14 = type metadata accessor for DateComponents();
  v141 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v131 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v100 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v100 - v20;
  v135 = type metadata accessor for Date();
  v22 = *(v135 - 8);
  v23 = MEMORY[0x28223BE20](v135);
  v129 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v138 = &v100 - v26;
  MEMORY[0x28223BE20](v25);
  v137 = &v100 - v27;
  v140 = type metadata accessor for Calendar();
  v128 = *(v140 - 8);
  v28 = MEMORY[0x28223BE20](v140);
  v130 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v100 - v30;
  if (one-time initialization token for momentsUI != -1)
  {
    v95 = &v100 - v30;
    swift_once();
    v31 = v95;
  }

  v32 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v144 = 0u;
    v145 = 0u;
LABEL_14:
    outlined destroy of UTType?(&v144, &_sypSgMd);
    return 0;
  }

  v123 = v31;
  v127 = v22;
  v136 = v14;
  v33 = MEMORY[0x21CE91FC0](0xD00000000000001CLL, 0x800000021657AEE0);
  v34 = [v32 objectForKey_];

  if (v34)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v142 = 0u;
    v143 = 0u;
  }

  v144 = v142;
  v145 = v143;
  if (!*(&v143 + 1))
  {
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v35 = specialized _arrayConditionalCast<A, B>(_:)(v142);

  v101 = v35;
  if (!v35)
  {
    return 0;
  }

  v122 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v36 & 1) != 0 || (v121 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)(), (v37) || (v39 = v101, !*(v101 + 16)))
  {

    return 0;
  }

  static Calendar.current.getter();
  Date.init()();
  *&v144 = v39;

  specialized MutableCollection<>.sort(by:)(&v144);
  v118 = v3;
  v119 = v2;
  v120 = v0;
  v40 = *(v144 + 16);
  v110 = 0;
  v109 = v144;
  if (v40)
  {
    v41 = v144 + 32;
    v114 = *(v128 + 56);
    v115 = v128 + 56;
    v113 = (v141 + 16);
    v112 = v141 + 8;
    v111 = v141 + 32;
    v42 = MEMORY[0x277D84F90];
    v43 = v136;
    v117 = v10;
    v116 = v13;
    do
    {
      v44 = v42;
      v114(v13, 1, 1, v140);
      v45 = type metadata accessor for TimeZone();
      (*(*(v45 - 8) + 56))(v10, 1, 1, v45);
      v99 = 1;
      v98 = 0;
      v97 = 1;
      v96 = 0;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      DateComponents.weekday.setter();
      DateComponents.hour.setter();
      DateComponents.minute.setter();
      (*v113)(v19, v21, v43);
      v46 = v41 + 8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
      }

      v48 = v44[2];
      v47 = v44[3];
      v49 = v44;
      if (v48 >= v47 >> 1)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1, v44);
      }

      v50 = v141;
      v43 = v136;
      (*(v141 + 8))(v21, v136);
      *(v49 + 16) = v48 + 1;
      v42 = v49;
      (*(v50 + 32))(v49 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v48, v19, v43);
      --v40;
      v10 = v117;
      v41 = v46;
      v13 = v116;
    }

    while (v40);
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v51);
  v98 = v123;
  *&v144 = v42;

  v52 = v110;
  specialized MutableCollection<>.sort(by:)(partial apply for closure #1 in NotificationHandlingManager.getMomentsUIScheduleDateComponents(), &v96);
  if (v52)
  {
LABEL_45:

    __break(1u);
    return result;
  }

  v122 = v42;
  v53 = v144;
  if (one-time initialization token for notification != -1)
  {
LABEL_43:
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  v55 = __swift_project_value_buffer(v54, static CommonLogger.notification);
  v121 = v53;

  v117 = v55;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();

  v58 = os_log_type_enabled(v56, v57);
  v59 = v136;
  if (v58)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v144 = v61;
    *v60 = 136315138;
    v62 = MEMORY[0x21CE922B0](v53, v59);
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v144);
    v53 = v121;

    *(v60 + 4) = v64;
    _os_log_impl(&dword_21607C000, v56, v57, "[NotificationHandlingManager] sorted scheduled date components: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x21CE94770](v61, -1, -1);
    MEMORY[0x21CE94770](v60, -1, -1);
  }

  v66 = v135;
  v116 = *(v53 + 16);
  if (v116)
  {
    v67 = v53;
    v68 = 0;
    v115 = v141 + 16;
    v114 = (v124 + 13);
    v113 = (v125 + 13);
    LODWORD(v112) = *MEMORY[0x277CC9878];
    LODWORD(v111) = *MEMORY[0x277CC98E8];
    LODWORD(v110) = *MEMORY[0x277CC9900];
    v109 = (v126 + 104);
    v108 = v141 + 8;
    v107 = (v126 + 8);
    ++v125;
    ++v124;
    v106 = (v128 + 8);
    v105 = (v127 + 48);
    v104 = (v127 + 32);
    v103 = "on body text for Sunday";
    v102 = (v127 + 16);
    *&v65 = 136315138;
    v100 = v65;
    v127 += 8;
    while (1)
    {
      if (v68 >= *(v67 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      v52 = v141;
      v70 = v67 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v71 = *(v141 + 72);
      v126 = v68;
      v72 = v131;
      v73 = v136;
      (*(v141 + 16))(v131, v70 + v71 * v68, v136);
      v74 = v130;
      static Calendar.current.getter();
      v75 = v133;
      (*v114)(v133, v112, v139);
      v76 = v134;
      v77 = v118;
      (*v113)(v134, v111, v118);
      v78 = v119;
      v53 = v120;
      (*v109)(v119, v110, v120);
      v79 = v132;
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      v80 = v72;
      v66 = v135;
      (*(v52 + 8))(v80, v73);
      (*v107)(v78, v53);
      (*v125)(v76, v77);
      (*v124)(v75, v139);
      (*v106)(v74, v140);
      if ((*v105)(v79, 1, v66) == 1)
      {
        break;
      }

      v81 = v138;
      (*v104)(v138, v79, v66);
      v82 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v83 = MEMORY[0x21CE91FC0](0xD000000000000016, v103 | 0x8000000000000000);
      [v82 setDateFormat_];

      v84 = v129;
      (*v102)(v129, v81, v66);
      v85 = v82;
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v144 = v53;
        *v88 = v100;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v90 = [v85 stringFromDate_];

        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v69 = *v127;
        (*v127)(v84, v66);
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v144);

        *(v88 + 4) = v94;
        _os_log_impl(&dword_21607C000, v86, v87, "[NotificationHandlingManager] Next scheduled dates: %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x21CE94770](v53, -1, -1);
        MEMORY[0x21CE94770](v88, -1, -1);

        v69(v138, v66);
      }

      else
      {

        v69 = *v127;
        (*v127)(v84, v66);
        v69(v81, v66);
      }

      v67 = v121;
      v68 = v126 + 1;
      if (v116 == (v126 + 1))
      {
        v53 = v121;
        goto LABEL_41;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v69 = *(v127 + 8);
LABEL_41:
  v69(v137, v66);

  (*(v128 + 8))(v123, v140);
  return v53;
}

void *specialized NotificationHandlingManager.getLegacyScheduleDateComponents()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v33 = v27 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = v27 - v3;
  v34 = type metadata accessor for DateComponents();
  v4 = *(v34 - 8);
  v5 = MEMORY[0x28223BE20](v34);
  v35 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - v7;
  if (one-time initialization token for defaults != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v9 = static MOAngelDefaultsManager.defaults;
    if (!static MOAngelDefaultsManager.defaults)
    {
      v38 = 0u;
      v39 = 0u;
LABEL_25:
      outlined destroy of UTType?(&v38, &_sypSgMd);
      return 0;
    }

    v10 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x800000021657AEB0);
    v11 = [v9 objectForKey_];

    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
    }

    v38 = v36;
    v39 = v37;
    if (!*(&v37 + 1))
    {
      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v12 = specialized _arrayConditionalCast<A, B>(_:)(v36);

    if (!v12)
    {
      return 0;
    }

    v13 = *(v12 + 16);
    if (!v13)
    {
      break;
    }

    v31 = type metadata accessor for Calendar();
    v14 = *(v31 - 8);
    v15 = *(v14 + 56);
    v29 = v14 + 56;
    v30 = v15;
    v27[1] = v4 + 8;
    v28 = (v4 + 16);
    v27[0] = v4 + 32;
    v16 = MEMORY[0x277D84F90];
    v17 = 32;
    while (1)
    {
      v18 = v12;
      v19 = *(v12 + v17);
      v30(v32, 1, 1, v31);
      v20 = type metadata accessor for TimeZone();
      (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      v21 = floor(v19 / 1440.0);
      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v21 <= -9.22337204e18)
      {
        goto LABEL_30;
      }

      if (v21 >= 9.22337204e18)
      {
        goto LABEL_31;
      }

      if (__OFADD__(v21, 1))
      {
        goto LABEL_32;
      }

      DateComponents.weekday.setter();
      v22 = floor((v19 % 1440) / 60.0);
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_33;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_34;
      }

      if (v22 >= 9.22337204e18)
      {
        goto LABEL_35;
      }

      DateComponents.hour.setter();
      DateComponents.minute.setter();
      (*v28)(v35, v8, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
      }

      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v16);
      }

      v25 = v34;
      (*(v4 + 8))(v8, v34);
      v16[2] = v24 + 1;
      (*(v4 + 32))(v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v35, v25);
      v17 += 8;
      --v13;
      v12 = v18;
      if (!v13)
      {

        return v16;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

  return 0;
}

id specialized NotificationHandlingManager.getScheduledNotificationTrigger()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for Calendar();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = type metadata accessor for TimeZone();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v15 = specialized NotificationHandlingManager.getMomentsUIScheduleDateComponents()();
  if (v15 || (v15 = specialized NotificationHandlingManager.getLegacyScheduleDateComponents()()) != 0)
  {
    if (*(v15 + 16))
    {
      (*(v7 + 16))(v10, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      v16 = *(v7 + 8);
      v16(v12, v6);
      (*(v7 + 32))(v12, v10, v6);
      isa = DateComponents._bridgeToObjectiveC()().super.isa;
      v18 = [objc_opt_self() triggerWithDateMatchingComponents:isa repeats:0];

      v16(v12, v6);
      return v18;
    }

    (*(v7 + 8))(v12, v6);
  }

  else
  {
    (*(v7 + 8))(v12, v6);
  }

  return 0;
}

BOOL specialized NotificationHandlingManager.isEligibleForSmartNotification()()
{
  v0 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v2 + v5;
  if (__OFADD__(v2, v5))
  {
    __break(1u);
  }

  else if (one-time initialization token for notification == -1)
  {
    goto LABEL_9;
  }

  swift_once();
LABEL_9:
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static CommonLogger.notification);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_21607C000, v8, v9, "[NotificationHandlingManager] smart notification weekly count: %ld", v10, 0xCu);
    MEMORY[0x21CE94770](v10, -1, -1);
  }

  v11 = specialized static DefaultsManager.Notifications.smartNotificationWeeklyMax.getter();
  if (v6 >= v11)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      *(v14 + 4) = v6;
      *(v14 + 12) = 2048;
      *(v14 + 14) = specialized static DefaultsManager.Notifications.smartNotificationWeeklyMax.getter();
      _os_log_impl(&dword_21607C000, v12, v13, "[NotificationHandlingManager] Already %ld notifications in the last week (max = %ld). Ineligible for new smart notification", v14, 0x16u);
      MEMORY[0x21CE94770](v14, -1, -1);
    }
  }

  return v6 < v11;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CE93180](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = static UUID.== infix(_:_:)();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1)
{
  v3 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == __CocoaSet.count.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CE93180](v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_39;
    }

    v9 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v10 = v9;
    v11 = static UUID.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x21CE93180](v6, v3);
          v13 = MEMORY[0x21CE93180](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v14)
          {
            goto LABEL_45;
          }

          if (v7 >= v14)
          {
            goto LABEL_46;
          }

          v15 = *(v3 + 32 + 8 * v7);
          v12 = *(v3 + 32 + 8 * v6);
          v13 = v15;
        }

        v16 = v13;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
          v17 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v18 = v3 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v16;

        if ((v3 & 0x8000000000000000) != 0 || v17)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
          v18 = v3 & 0xFFFFFFFFFFFFFF8;
        }

        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        if (v7 >= *(v18 + 16))
        {
          goto LABEL_43;
        }

        v20 = v18 + 8 * v7;
        v21 = *(v20 + 32);
        *(v20 + 32) = v12;

        *a1 = v3;
      }

      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_41;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return __CocoaSet.count.getter();
}

uint64_t specialized NotificationHandlingManager.dateSuffixWeekdayComponent(for:postingDate:)(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  v9 = type metadata accessor for Calendar();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v57 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = *(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange);
  if (!v21)
  {
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static CommonLogger.notification);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21607C000, v24, v25, "[NotificationHandlingManager] Top suggestion has no defined start date", v26, 2u);
      MEMORY[0x21CE94770](v26, -1, -1);
    }

    return 0;
  }

  v52 = v10;
  v53 = v9;
  v55 = v4;
  v22 = *(v13 + 16);
  v22(v18, v21 + OBJC_IVAR____TtC9MomentsUI9DateRange_startDate, v12);
  v51 = *(v13 + 32);
  v51(v20, v18, v12);
  if (*(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType) == 10)
  {
    (*(v13 + 8))(v20, v12);
    return 0;
  }

  v49 = v22;
  static Calendar.current.getter();
  v27 = *MEMORY[0x277CC9968];
  v29 = v55;
  v28 = v56;
  v47 = *(v55 + 104);
  v48 = v55 + 104;
  v47(v56, v27, v3);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v30 = *(v29 + 8);
  v50 = v3;
  v55 = v29 + 8;
  v46 = v30;
  v30(v28, v3);
  v31 = *(v13 + 48);
  if (v31(v8, 1, v12) == 1)
  {
    v32 = v54;
    v49(v54, v58, v12);
    v33 = v31(v8, 1, v12);
    v34 = v52;
    if (v33 != 1)
    {
      outlined destroy of UTType?(v8, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v32 = v54;
    v51(v54, v8, v12);
    v34 = v52;
  }

  v35 = v57;
  v36 = Calendar.isDate(_:inSameDayAs:)();
  v37 = v50;
  if (v36 & 1) != 0 || (Calendar.isDate(_:inSameDayAs:)())
  {
    v38 = *(v13 + 8);
    v38(v32, v12);
    (*(v34 + 8))(v35, v53);
    v38(v20, v12);
    return 0;
  }

  v40 = v34;
  v41 = v56;
  v47(v56, *MEMORY[0x277CC99B8], v37);
  v42 = v32;
  v43 = Calendar.component(_:from:)();
  v46(v41, v37);
  v44 = *(v13 + 8);
  v44(v42, v12);
  (*(v40 + 8))(v35, v53);
  v44(v20, v12);
  return v43;
}

uint64_t specialized NotificationHandlingManager.createNotificationBodyText(for:postingDate:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_title);
  if (v2)
  {
    v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x58))();
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      if (one-time initialization token for notification != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static CommonLogger.notification);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v38 = v13;
        *v12 = 136315138;
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v38);
        _os_log_impl(&dword_21607C000, v10, v11, "[NotificationHandlingManager] Generating notification content for suggestion label: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x21CE94770](v13, -1, -1);
        MEMORY[0x21CE94770](v12, -1, -1);
      }

      v14 = specialized NotificationHandlingManager.dateSuffixWeekdayComponent(for:postingDate:)(a1, a2);
      if (v15)
      {
        type metadata accessor for NotificationHandlingManager();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v17 = [objc_opt_self() bundleForClass_];
        v18 = 0x1000000000000022;
        v19 = 0xD00000000000002CLL;
        v37 = 0x8000000216582A20;
        v20 = 0x80000002165829F0;
LABEL_9:
        v21.super.isa = v17;
        v22 = 0;
        v23 = 0xE000000000000000;
LABEL_10:
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v18, 0, v21, *&v22, *&v19);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_21658CA50;
        *(v24 + 56) = MEMORY[0x277D837D0];
        *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v24 + 32) = v7;
        *(v24 + 40) = v8;
        v25 = static String.localizedStringWithFormat(_:_:)();

        return v25;
      }

      v31 = v14;
      type metadata accessor for NotificationHandlingManager();
      v32 = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
      if (v31 <= 3)
      {
        switch(v31)
        {
          case 1:
            v35 = "on body text for Monday";
            v36 = "Journaling suggestion notification body text for Sunday";
            break;
          case 2:
            v35 = "on body text for Tuesday";
            v36 = "Journaling suggestion notification body text for Monday";
            break;
          case 3:
            v37 = 0x8000000216582C40;
            v18 = 0x100000000000002DLL;
            v20 = 0x8000000216582C10;
            v19 = 0xD000000000000038;
            goto LABEL_9;
          default:
            goto LABEL_29;
        }
      }

      else
      {
        if (v31 <= 5)
        {
          if (v31 == 4)
          {
            v37 = 0x8000000216582BD0;
            v18 = 0x100000000000002FLL;
            v20 = 0x8000000216582BA0;
            v19 = 0xD00000000000003ALL;
            goto LABEL_9;
          }

          v33 = "on body text for Friday";
          v34 = "Journaling suggestion notification body text for Thursday";
          goto LABEL_27;
        }

        if (v31 != 6)
        {
          if (v31 == 7)
          {
            v33 = "stion notification body text";
            v34 = "Journaling suggestion notification body text for Saturday";
LABEL_27:
            v37 = (v34 - 32) | 0x8000000000000000;
            v18 = 0x100000000000002ELL;
            v20 = v33 | 0x8000000000000000;
            v19 = 0xD000000000000039;
            goto LABEL_9;
          }

LABEL_29:
          v18 = 0x1000000000000022;
          v19 = 0xD00000000000002CLL;
          v37 = 0x8000000216582A20;
          v20 = 0x80000002165829F0;
          goto LABEL_9;
        }

        v35 = "on body text for Saturday";
        v36 = "Journaling suggestion notification body text for Friday";
      }

      v37 = (v36 - 32) | 0x8000000000000000;
      v20 = v35 | 0x8000000000000000;
      v18 = 0x100000000000002CLL;
      v21.super.isa = v17;
      v22 = 0;
      v23 = 0xE000000000000000;
      v19 = 0xD000000000000037;
      goto LABEL_10;
    }
  }

  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static CommonLogger.notification);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_21607C000, v28, v29, "[NotificationHandlingManager] Missing localized suggestion title", v30, 2u);
    MEMORY[0x21CE94770](v30, -1, -1);
  }

  return 0;
}

uint64_t specialized NotificationHandlingManager.getNotificationInterruptionLevel(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  if (a1 != 1)
  {
    return 1;
  }

  static MOAngelDefaultsManager.dateValueFor(_:)(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd);
    return 1;
  }

  (*(v6 + 32))(v11, v4, v5);
  static Date.now.getter();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v12 = dispatch thunk of static Comparable.< infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v9, v5);
  if (v12)
  {
    v13(v11, v5);
    return 1;
  }

  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static CommonLogger.notification);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_21607C000, v16, v17, "[NotificationHandlingManager] Using passive interruption level since this is posting at the end of the availability window", v18, 2u);
    MEMORY[0x21CE94770](v18, -1, -1);
  }

  v13(v11, v5);
  return 0;
}

uint64_t specialized NotificationHandlingManager.generateUserInfoDictForAnalytics(with:)(void *a1)
{
  v2 = type metadata accessor for DateComponents();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Date();
  v7 = *(v69 - 8);
  v8 = MEMORY[0x28223BE20](v69);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v61 - v11;
  v13 = UUID.uuidString.getter();
  v73 = MEMORY[0x277D837D0];
  *&v72 = v13;
  *(&v72 + 1) = v14;
  outlined init with take of Any(&v72, v71);
  v15 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0x6974736567677573, 0xEC00000044496E6FLL, isUniquelyReferenced_nonNull_native);
  v17 = v74;
  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v19 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  v73 = v19;
  *&v72 = v18;
  outlined init with take of Any(&v72, v71);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v70 = v17;
  v21 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0x6361667265746E69, 0xED00006570795465, v20);
  v22 = v70;
  v74 = v70;
  v23 = *(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType);
  if (v23 != 65)
  {
    v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v73 = v19;
    *&v72 = v24;
    outlined init with take of Any(&v72, v71);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v22;
    v21 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0x65707954627573, 0xE700000000000000, v25);
    v22 = v70;
    v74 = v70;
  }

  v26 = (*((*MEMORY[0x277D85000] & *a1) + 0xA8))(v21);
  v63 = v4;
  if (v26)
  {
    v27 = *&v26[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
    v28 = v26[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8];

    if ((v28 & 1) == 0)
    {
      v73 = MEMORY[0x277D839F8];
      *&v72 = v27;
      outlined init with take of Any(&v72, v71);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v22;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0x7373656E646F6F67, 0xED000065726F6353, v29);
      v22 = v70;
      v74 = v70;
    }
  }

  v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v73 = v19;
  *&v72 = v30;
  outlined init with take of Any(&v72, v71);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v70 = v22;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0xD000000000000016, 0x800000021657AD50, v31);
  result = v70;
  v74 = v70;
  v33 = *(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange);
  if (v33)
  {
    v34 = v69;
    (*(v7 + 16))(v10, v33 + OBJC_IVAR____TtC9MomentsUI9DateRange_endDate, v69);
    v62 = v7;
    (*(v7 + 32))(v12, v10, v34);
    static Calendar.current.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd);
    v35 = type metadata accessor for Calendar.Component();
    v36 = *(v35 - 8);
    v37 = *(v36 + 72);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2165965F0;
    v40 = v39 + v38;
    v41 = *(v36 + 104);
    v41(v40, *MEMORY[0x277CC9988], v35);
    v41(v40 + v37, *MEMORY[0x277CC9998], v35);
    v41(v40 + 2 * v37, *MEMORY[0x277CC9968], v35);
    v41(v40 + 3 * v37, *MEMORY[0x277CC9980], v35);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v39);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v42 = v63;
    Calendar.dateComponents(_:from:)();

    v43 = DateComponents.year.getter();
    v44 = MEMORY[0x277D83B88];
    if (v45)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000015, 0x800000021657ADD0, &v72);
      outlined destroy of UTType?(&v72, &_sypSgMd);
    }

    else
    {
      v73 = MEMORY[0x277D83B88];
      *&v72 = v43;
      outlined init with take of Any(&v72, v71);
      v46 = v74;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v46;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0xD000000000000015, 0x800000021657ADD0, v47);
      v74 = v70;
    }

    v48 = DateComponents.month.getter();
    v49 = v62;
    if (v50)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000016, 0x800000021657ADB0, &v72);
      outlined destroy of UTType?(&v72, &_sypSgMd);
    }

    else
    {
      v73 = v44;
      *&v72 = v48;
      outlined init with take of Any(&v72, v71);
      v51 = v74;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v51;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0xD000000000000016, 0x800000021657ADB0, v52);
      v74 = v70;
    }

    v53 = DateComponents.day.getter();
    if (v54)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000014, 0x800000021657AD90, &v72);
      outlined destroy of UTType?(&v72, &_sypSgMd);
    }

    else
    {
      v73 = v44;
      *&v72 = v53;
      outlined init with take of Any(&v72, v71);
      v55 = v74;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v55;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0xD000000000000014, 0x800000021657AD90, v56);
      v74 = v70;
    }

    v57 = DateComponents.hour.getter();
    if (v58)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000015, 0x800000021657AD70, &v72);
      outlined destroy of UTType?(&v72, &_sypSgMd);
      (*(v66 + 8))(v42, v67);
      (*(v64 + 8))(v68, v65);
      (*(v49 + 8))(v12, v69);
      return v74;
    }

    else
    {
      v73 = v44;
      *&v72 = v57;
      outlined init with take of Any(&v72, v71);
      v59 = v74;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v59;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0xD000000000000015, 0x800000021657AD70, v60);
      (*(v66 + 8))(v42, v67);
      (*(v64 + 8))(v68, v65);
      (*(v49 + 8))(v12, v69);
      return v70;
    }
  }

  return result;
}

uint64_t specialized NotificationHandlingManager.updateNotificationScheduleDefaults(with:)(void *a1)
{
  v2 = [a1 scheduleType];
  v3 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  v14 = v3;
  v11 = v2;
  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(&v11, 0xD000000000000018, 0x800000021657AE90);
  outlined destroy of UTType?(&v11, &_sypSgMd);
  v4 = [a1 weekdays];
  if (v4)
  {
    v5 = v4;
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  }

  else
  {
    v6 = 0;
    v12 = 0;
    v13 = 0;
  }

  v11 = v6;
  v14 = v4;
  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(&v11, 0xD00000000000001CLL, 0x800000021657AEE0);
  outlined destroy of UTType?(&v11, &_sypSgMd);
  v7 = [a1 hour];
  v8 = v3;
  if (!v7)
  {
    v8 = 0;
    v12 = 0;
    v13 = 0;
  }

  v11 = v7;
  v14 = v8;
  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(&v11, 0xD000000000000018, 0x8000000216580970);
  outlined destroy of UTType?(&v11, &_sypSgMd);
  v9 = [a1 minute];
  if (!v9)
  {
    v3 = 0;
    v12 = 0;
    v13 = 0;
  }

  v11 = v9;
  v14 = v3;
  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(&v11, 0xD00000000000001ALL, 0x8000000216580990);
  return outlined destroy of UTType?(&v11, &_sypSgMd);
}

uint64_t specialized NotificationHandlingManager.setNotificationSchedulePostPhoneOnboarding(authorized:)(char a1)
{
  v2[3] = MEMORY[0x277D83E88];
  v2[0] = (a1 & 1) != 0;
  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(v2, 0xD000000000000018, 0x800000021657AE90);
  return outlined destroy of UTType?(v2, &_sypSgMd);
}

unint64_t lazy protocol witness table accessor for type UNNotificationCategory and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UNNotificationCategory and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UNNotificationCategory and conformance NSObject)
  {
    type metadata accessor for NSAttributedString(255, &lazy cache variable for type metadata for UNNotificationCategory);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UNNotificationCategory and conformance NSObject);
  }

  return result;
}

uint64_t specialized NotificationHandlingManager.didReceiveNotificationDelegateResponse(response:)(void *a1)
{
  v2 = type metadata accessor for NotificationAnalyticsManager.NotificationEvent();
  MEMORY[0x28223BE20](v2);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - v8;
  v9 = a1;
  v10 = [a1 notification];
  v11 = [v10 request];

  v12 = [v11 content];
  v13 = [v12 userInfo];

  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static CommonLogger.notification);

  v55 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v2;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60[0] = v21;
    *v20 = 136315138;
    v22 = Dictionary.description.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v60);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_21607C000, v17, v18, "[NotificationHandlingManager] didReceiveNotificationResponse triggered with info: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x21CE94770](v21, -1, -1);
    v25 = v20;
    v2 = v19;
    MEMORY[0x21CE94770](v25, -1, -1);
  }

  v26 = v9;
  v58 = 0x44676E6974736F70;
  v59 = 0xEB00000000657461;
  AnyHashable.init<A>(_:)();
  v27 = v57;
  if (*(v14 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v60), (v29 & 1) != 0))
  {
    outlined init with copy of Any(*(v14 + 56) + 32 * v28, v61);
    outlined destroy of AnyHashable(v60);
    v30 = type metadata accessor for Date();
    v31 = swift_dynamicCast();
    (*(*(v30 - 8) + 56))(v27, v31 ^ 1u, 1, v30);
  }

  else
  {
    outlined destroy of AnyHashable(v60);
    v32 = type metadata accessor for Date();
    (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
  }

  v33 = [v26 actionIdentifier];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v38 & 1) == 0)
    {
      v48 = [v26 actionIdentifier];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
      {
      }

      else
      {
        v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v53 & 1) == 0)
        {

          return outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd);
        }
      }

      v39 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v39, v54))
      {
        v42 = 6;
        goto LABEL_17;
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_21607C000, v39, v54, "[NotificationHandlingManager] didReceiveNotificationDelegateResponse: tap", v41, 2u);
      v42 = 6;
      goto LABEL_15;
    }
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v39, v40))
  {
    v42 = 5;
    goto LABEL_17;
  }

  v41 = swift_slowAlloc();
  *v41 = 0;
  _os_log_impl(&dword_21607C000, v39, v40, "[NotificationHandlingManager] didReceiveNotificationDelegateResponse: Dismissed", v41, 2u);
  v42 = 5;
LABEL_15:
  MEMORY[0x21CE94770](v41, -1, -1);
LABEL_17:

  v43 = v56;
  outlined init with copy of DateInterval?(v27, v56, &_s10Foundation4DateVSgMd);
  v44 = *(v2 + 24);
  v45 = type metadata accessor for Date();
  (*(*(v45 - 8) + 56))(&v4[v44], 1, 1, v45);
  v46 = *(v2 + 28);
  *v4 = v42;
  *(v4 + 1) = 0;
  outlined assign with take of Date?(v43, &v4[v44]);
  *&v4[v46] = v14;
  NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()();
  outlined destroy of NotificationAnalyticsManager.NotificationEvent(v4);
  return outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd);
}

unint64_t lazy protocol witness table accessor for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError()
{
  result = lazy protocol witness table cache variable for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError;
  if (!lazy protocol witness table cache variable for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError;
  if (!lazy protocol witness table cache variable for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError);
  }

  return result;
}

uint64_t outlined destroy of NotificationAnalyticsManager.NotificationEvent(uint64_t a1)
{
  v2 = type metadata accessor for NotificationAnalyticsManager.NotificationEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized NotificationHandlingManager.notificationRetryCountThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v7, &_sypSgMd);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x8000000216580AF0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

LABEL_12:
  result = specialized static DefaultsManager.getTrialIntValue(for:)(0xD00000000000001FLL, 0x8000000216580AF0);
  if (v4)
  {
    return 3;
  }

  return result;
}

uint64_t specialized NotificationHandlingManager.passRealtimeCheck(significantLocationEnabled:)(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized NotificationHandlingManager.passRealtimeCheck(significantLocationEnabled:), 0, 0);
}

{
  v5 = *v1;

  swift_unknownObjectRelease();

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t specialized NotificationHandlingManager.passRealtimeCheck(significantLocationEnabled:)()
{
  v86 = v0;
  if (specialized NotificationHandlingManager.getScheduleType()() != 1)
  {
    goto LABEL_38;
  }

  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.notification);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "User is using smart schedule, continue", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  static MOAngelDefaultsManager.dateValueFor(_:)(v7);
  if ((*(v6 + 48))(v7, 1, v5) != 1)
  {
    v16 = v0[5];
    (*(v16 + 32))(v0[11], v0[3], v0[4]);
    static Date.now.getter();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v17 = dispatch thunk of static Comparable.< infix(_:_:)();
    v18 = *(v16 + 16);
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[4];
    if (v17)
    {
      v22 = v0[6];
      v18(v0[7], v19, v0[4]);
      v18(v22, v20, v21);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      v25 = os_log_type_enabled(v23, v24);
      v27 = v0[10];
      v26 = v0[11];
      v29 = v0[6];
      v28 = v0[7];
      v30 = v0[4];
      v31 = v0[5];
      if (v25)
      {
        v78 = v24;
        v32 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v85 = v80;
        *v32 = 136315394;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
        log = v23;
        v82 = v26;
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        v36 = *(v31 + 8);
        v36(v28, v30);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v85);

        *(v32 + 4) = v37;
        *(v32 + 12) = 2080;
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        v36(v29, v30);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v85);

        *(v32 + 14) = v41;
        _os_log_impl(&dword_21607C000, log, v78, "Current time %s is still within optimal window (ends at %s), proceed with RTC", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v80, -1, -1);
        MEMORY[0x21CE94770](v32, -1, -1);

        v36(v27, v30);
        v36(v82, v30);
      }

      else
      {

        v63 = *(v31 + 8);
        v63(v29, v30);
        v63(v28, v30);
        v63(v27, v30);
        v63(v26, v30);
      }

      goto LABEL_26;
    }

    v45 = v0[8];
    v18(v0[9], v19, v0[4]);
    v18(v45, v20, v21);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    v48 = os_log_type_enabled(v46, v47);
    v50 = v0[8];
    v49 = v0[9];
    v52 = v0[4];
    v51 = v0[5];
    if (v48)
    {
      v81 = v47;
      v53 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v85 = v83;
      *v53 = 136315394;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v79 = v46;
      v57 = *(v51 + 8);
      v57(v49, v52);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v85);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2080;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      v57(v50, v52);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v85);

      *(v53 + 14) = v62;
      _os_log_impl(&dword_21607C000, v79, v81, "Current time %s has reached optimal end date %s, skip checking RTC and post notification now", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v83, -1, -1);
      MEMORY[0x21CE94770](v53, -1, -1);
    }

    else
    {

      v57 = *(v51 + 8);
      v57(v50, v52);
      v57(v49, v52);
    }

    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v72 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v73 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216580B10);
      [v72 setInteger:0 forKey:v73];
    }

    v74 = v0[11];
    v75 = v0[4];
    v57(v0[10], v75);
    v57(v74, v75);
LABEL_38:
    v65 = 1;
    goto LABEL_39;
  }

  outlined destroy of UTType?(v0[3], &_s10Foundation4DateVSgMd);
  v8 = specialized static DefaultsManager.Notifications.notificationRetryCount.getter();
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v11 = specialized NotificationHandlingManager.notificationRetryCountThreshold.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  v14 = os_log_type_enabled(v12, v13);
  if (v10 >= v11)
  {
    if (v14)
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = v10;
      _os_log_impl(&dword_21607C000, v12, v13, "No optimal end date available, falling back to retry count. Already retried: %ld times, skip checking and post notification now.", v42, 0xCu);
      MEMORY[0x21CE94770](v42, -1, -1);
    }

    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v43 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v44 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216580B10);
      [v43 setInteger:0 forKey:v44];
    }

    goto LABEL_38;
  }

  if (v14)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21607C000, v12, v13, "No optimal end date available, using retry count fallback. Real-time reschedule threshold not reached, continue to realtime check", v15, 2u);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

LABEL_26:
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v65 = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x60))();
  v0[12] = v65;
  if (v65)
  {
    v66 = v64;
    v67 = v0[2];
    ObjectType = swift_getObjectType();
    v69 = [v67 BOOLValue];
    v84 = (*(v66 + 80) + **(v66 + 80));
    v70 = swift_task_alloc();
    v0[13] = v70;
    *v70 = v0;
    v70[1] = specialized NotificationHandlingManager.passRealtimeCheck(significantLocationEnabled:);

    return v84(v69, ObjectType, v66);
  }

LABEL_39:

  v76 = v0[1];

  return v76(v65);
}

uint64_t specialized NotificationHandlingManager.notificationRetryDelayMinutes.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v7, &_sypSgMd);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x8000000216580B80);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

LABEL_12:
  result = specialized static DefaultsManager.getTrialIntValue(for:)(0xD00000000000001DLL, 0x8000000216580B80);
  if (v4)
  {
    return 20;
  }

  return result;
}

uint64_t dispatch thunk of NotificationHandling.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 16) + **(a9 + 16));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = static Exif.filterImage(imageSource:outputURL:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of NotificationHandling.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 24) + **(a8 + 24));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

id Asset.representativeViewModel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI5Asset_representations);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x21CE93180](0, v1);
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v1 + 32);
  }

  __break(1u);
  return result;
}

char *Asset.assetViewModelFor(style:)(unsigned __int8 *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI5Asset_representations);
  if (v2)
  {
    v3 = *a1;
    if (v2 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v5 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x21CE93180](v5, v2);
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_16;
        }

LABEL_9:
        v8 = *&result[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles];
        if (v8)
        {
          v9 = *(v8 + 16);
          v10 = (v8 + 32);
          while (v9)
          {
            v11 = *v10++;
            --v9;
            if (v11 == v3)
            {
              return result;
            }
          }
        }

        if (v5 == i)
        {
          return 0;
        }
      }

      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      result = *(v2 + 32 + 8 * v5);
      v7 = __OFADD__(v5++, 1);
      if (!v7)
      {
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }
  }

  return 0;
}

id Asset.__allocating_init(universalUUID:representations:priorityScore:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC9MomentsUI5Asset_styleDict;
  *&v9[v10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI14AssetViewModelC5StyleO_AETt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = &v9[OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore];
  *v11 = 0;
  v11[8] = 1;
  v12 = OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v9[v12], a1, v13);
  *&v9[OBJC_IVAR____TtC9MomentsUI5Asset_representations] = a2;
  swift_beginAccess();
  *v11 = a3;
  v11[8] = a4 & 1;
  v17.receiver = v9;
  v17.super_class = v4;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v14 + 8))(a1, v13);
  return v15;
}

uint64_t Asset.universalUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Asset.priorityScore.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore;
  swift_beginAccess();
  return *v1;
}

uint64_t Asset.priorityScore.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

id Asset.init(universalUUID:representations:priorityScore:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = OBJC_IVAR____TtC9MomentsUI5Asset_styleDict;
  *&v4[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI14AssetViewModelC5StyleO_AETt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = &v4[OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore];
  *v10 = 0;
  v10[8] = 1;
  v11 = OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v4[v11], a1, v12);
  *&v4[OBJC_IVAR____TtC9MomentsUI5Asset_representations] = a2;
  swift_beginAccess();
  *v10 = a3;
  v10[8] = a4 & 1;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for Asset();
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v13 + 8))(a1, v12);
  return v14;
}

MomentsUI::Asset::CodingKeys_optional __swiftcall Asset.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Asset.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_Asset_CodingKeys_representations;
  }

  else
  {
    v4.value = MomentsUI_Asset_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

MomentsUI::Asset::CodingKeys_optional __swiftcall Asset.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Asset.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_Asset_CodingKeys_representations;
  }

  else
  {
    v4.value = MomentsUI_Asset_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t Asset.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E65736572706572;
  }

  else
  {
    return 0x6173726576696E75;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Asset.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E65736572706572;
  }

  else
  {
    v3 = 0x6173726576696E75;
  }

  if (v2)
  {
    v4 = 0xED0000444955556CLL;
  }

  else
  {
    v4 = 0xEF736E6F69746174;
  }

  if (*a2)
  {
    v5 = 0x6E65736572706572;
  }

  else
  {
    v5 = 0x6173726576696E75;
  }

  if (*a2)
  {
    v6 = 0xEF736E6F69746174;
  }

  else
  {
    v6 = 0xED0000444955556CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Asset.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Asset.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Asset.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Asset.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Asset.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Asset.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x6173726576696E75;
  if (*v1)
  {
    v2 = 0x6E65736572706572;
  }

  v3 = 0xED0000444955556CLL;
  if (*v1)
  {
    v3 = 0xEF736E6F69746174;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Asset.CodingKeys()
{
  if (*v0)
  {
    return 0x6E65736572706572;
  }

  else
  {
    return 0x6173726576696E75;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Asset.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Asset.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Asset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Asset.CodingKeys and conformance Asset.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Asset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Asset.CodingKeys and conformance Asset.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Void __swiftcall Asset.encode(with:)(NSCoder with)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x21CE91FC0](0x6173726576696E75, 0xED0000444955556CLL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];

  v6 = *(v2 + OBJC_IVAR____TtC9MomentsUI5Asset_representations);
  if (v6)
  {
    type metadata accessor for AssetViewModel();
    v6 = Array._bridgeToObjectiveC()().super.isa;
  }

  v7 = MEMORY[0x21CE91FC0](0x6E65736572706572, 0xEF736E6F69746174);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
  swift_unknownObjectRelease();
}

id Asset.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9MomentsUI5Asset_styleDict;
  *&v2[v8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI14AssetViewModelC5StyleO_AETt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v9 = &v2[OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore];
  *v9 = 0;
  v9[8] = 1;
  type metadata accessor for NSUUID();
  v10 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v10)
  {
    v11 = v10;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v5 + 32))(&v2[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21658CA50;
    *(v12 + 32) = type metadata accessor for AssetViewModel();
    v13._countAndFlagsBits = 0x6E65736572706572;
    v13._object = 0xEF736E6F69746174;
    v14 = NSCoder.decodeArrayOfObjects(ofClasses:forKey:)(v12, v13);

    if (v14)
    {
      v15 = specialized _arrayConditionalCast<A, B>(_:)(v14);
    }

    else
    {
      v15 = 0;
    }

    *&v2[OBJC_IVAR____TtC9MomentsUI5Asset_representations] = v15;
    v17 = type metadata accessor for Asset();
    v19.receiver = v2;
    v19.super_class = v17;
    v16 = objc_msgSendSuper2(&v19, sel_init);
  }

  else
  {

    type metadata accessor for Asset();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v16;
}

id Asset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Asset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Asset();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for Asset()
{
  result = type metadata singleton initialization cache for Asset;
  if (!type metadata singleton initialization cache for Asset)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Asset.CodingKeys and conformance Asset.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys;
  if (!lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys;
  if (!lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys;
  if (!lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys;
  if (!lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Asset.CodingKeys and conformance Asset.CodingKeys);
  }

  return result;
}

uint64_t type metadata completion function for Asset()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t static CloudSyncSnapshot.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static CloudSyncSnapshot.Class = a1;
  unk_27CA92028 = a2;
  byte_27CA92030 = a3;
  return result;
}

uint64_t CloudSyncSnapshot.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static CloudSyncSnapshot.Log);
}

uint64_t static CloudSyncSnapshot.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSyncSnapshot.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloudSyncSnapshot.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSyncSnapshot.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CloudSyncSnapshot.Log.modify())()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CloudSyncSnapshot.Log);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance CloudSyncSnapshot@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSyncSnapshot.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloudSyncSnapshot.productionSchema.getter()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CloudSyncSnapshot.productionSchema.setter(void *a1)
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudSyncSnapshot.productionSchema = a1;
}

uint64_t (*static CloudSyncSnapshot.productionSchema.modify())()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return MutableVideoViewModel.videoDurationSeconds.modify;
}

void static CloudSyncSnapshot.zoneName.getter()
{
  _StringGuts.grow(_:)(24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17CloudSyncSnapshotCmMd);
  String.init<A>(describing:)();

  MEMORY[0x21CE92100](0xD000000000000016, 0x8000000216578720);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

CKRecordZoneID CloudSyncSnapshot.zoneID.getter()
{
  v1 = [v0 zoneName];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
  v6._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6._object = v7;
  v8._countAndFlagsBits = v3;
  v8._object = v5;
  return CKRecordZoneID.init(zoneName:ownerName:)(v8, v6);
}

id static CloudSyncSnapshot.create(id:expiry:generation:sequence:suggestionTabsData:zoneName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for CloudSyncSnapshot();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v18 = MEMORY[0x21CE91FC0](a1, a2);
  [v17 setId_];

  v19 = MEMORY[0x21CE91FC0](a9, a10);
  [v17 setZoneName_];

  isa = Date._bridgeToObjectiveC()().super.isa;
  [v17 setExpiry_];

  v21 = MEMORY[0x21CE91FC0](a4, a5);
  [v17 setGeneration_];

  [v17 setSequence_];
  v22 = 0;
  if (a8 >> 60 != 15)
  {
    v22 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v17 setSuggestionTabsData_];

  return v17;
}

id static CloudSyncSnapshot.create(id:expiry:generation:sequence:suggestionTabs:zoneName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for CloudSyncSnapshot();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v17 = MEMORY[0x21CE91FC0](a1, a2);
  [v16 setId_];

  v18 = MEMORY[0x21CE91FC0](a8, a9);
  [v16 setZoneName_];

  isa = Date._bridgeToObjectiveC()().super.isa;
  [v16 setExpiry_];

  if (a5)
  {
    v20 = MEMORY[0x21CE91FC0](a4, a5);
  }

  else
  {
    v20 = 0;
  }

  [v16 setGeneration_];

  [v16 setSequence_];

  CloudSyncSnapshot.suggestionTabs.setter();
  return v16;
}

uint64_t CloudSyncSnapshot.lastKnownCKRecord.setter(void *a1)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSg_AA4DateVSgtMd);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v39 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSg_AA4DateVSgtSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v38 - v16);
  v18 = [v1 lastKnownCKRecordData];
  if (v18)
  {
    v19 = v18;
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  v23 = [v2 lastKnownCKRecordSync];
  v40 = v2;
  if (v23)
  {
    v24 = v23;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = type metadata accessor for Date();
    (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
  }

  else
  {
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  }

  type metadata accessor for CloudSyncDB();
  v27 = v41;
  static CloudSyncDB.setCKRecord(oldData:oldDate:newValue:)(v20, v22, v41, v17);
  outlined consume of Data?(v20, v22);
  outlined destroy of UTType?(v11, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v17, v15, &_s10Foundation4DataVSg_AA4DateVSgtSgMd);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    outlined destroy of UTType?(v17, &_s10Foundation4DataVSg_AA4DateVSgtSgMd);

    v17 = v15;
  }

  else
  {
    v28 = v39;
    outlined init with take of URL?(v15, v39, &_s10Foundation4DataVSg_AA4DateVSgtMd);
    outlined init with copy of DateInterval?(v28, v7, &_s10Foundation4DataVSg_AA4DateVSgtMd);
    v29 = v7[1];
    if (v29 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v31 = *v7;
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v31, v29);
    }

    v32 = v41;
    v33 = *(v3 + 48);
    [v40 setLastKnownCKRecordData_];

    v34 = type metadata accessor for Date();
    v35 = *(v34 - 8);
    v36 = 0;
    if ((*(v35 + 48))(v7 + v33, 1, v34) != 1)
    {
      v36 = Date._bridgeToObjectiveC()().super.isa;
      (*(v35 + 8))(v7 + v33, v34);
    }

    [v40 setLastKnownCKRecordSync_];

    outlined destroy of UTType?(v28, &_s10Foundation4DataVSg_AA4DateVSgtMd);
  }

  return outlined destroy of UTType?(v17, &_s10Foundation4DataVSg_AA4DateVSgtSgMd);
}

uint64_t closure #1 in CloudSyncSnapshot.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in CloudSyncSnapshot.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:), 0, 0);
}

uint64_t closure #1 in CloudSyncSnapshot.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)()
{
  v1 = v0[4];
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd);
  v3 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[5] = v6;
  *(v6 + 16) = xmmword_21658CA50;
  (*(v4 + 16))(v6 + v5, v1, v3);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = closure #1 in CloudSyncAssetData.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:);
  v8 = v0[3];

  return CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(v6, 0xD00000000000004CLL, 0x8000000216578810, 187, ObjectType, v8);
}

Swift::Void __swiftcall CloudSyncSnapshot.populateRecord(_:)(CKRecord a1)
{
  v3 = type metadata accessor for Logger();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - v13;
  v15 = [v1 generation];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = MEMORY[0x277CBBE08];
    v21 = MEMORY[0x277D837D0];
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 0;
    *&v61 = 0;
  }

  *&v60 = v17;
  *(&v60 + 1) = v19;
  *(&v61 + 1) = v21;
  v62 = v20;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C12SyncSnapshotC_Tt2g5(a1.super.isa, 0x69746172656E6567, 0xEA00000000006E6FLL, &v60);
  outlined destroy of UTType?(&v60, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v22 = [v1 sequence];
  *(&v61 + 1) = MEMORY[0x277D84A28];
  v62 = MEMORY[0x277CBBEF0];
  *&v60 = v22;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C12SyncSnapshotC_Tt2g5(a1.super.isa, 0x65636E6575716573, 0xE800000000000000, &v60);
  outlined destroy of UTType?(&v60, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v23 = [v1 expiry];
  if (v23)
  {
    v24 = v23;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v6 + 56))(v12, v25, 1, v5);
  outlined init with take of URL?(v12, v14, &_s10Foundation4DateVSgMd);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    outlined destroy of UTType?(v14, &_s10Foundation4DateVSgMd);
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
  }

  else
  {
    *(&v61 + 1) = v5;
    v62 = MEMORY[0x277CBBBE8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
    (*(v6 + 32))(boxed_opaque_existential_1, v14, v5);
  }

  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C12SyncSnapshotC_Tt2g5(a1.super.isa, 0x797269707865, 0xE600000000000000, &v60);
  outlined destroy of UTType?(&v60, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v27 = [v1 suggestionTabsData];
  if (v27)
  {
    v28 = v27;
    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = MEMORY[0x277CBBBE0];
    v33 = MEMORY[0x277CC9318];
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v33 = 0;
    v32 = 0;
    *&v61 = 0;
  }

  *&v60 = v29;
  *(&v60 + 1) = v31;
  *(&v61 + 1) = v33;
  v62 = v32;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C12SyncSnapshotC_Tt2g5(a1.super.isa, 0x6974736567677573, 0xEE00736261546E6FLL, &v60);
  outlined destroy of UTType?(&v60, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v34 = [v1 expiry];
  if (v34)
  {
    v35 = v34;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceNow.getter();
    v37 = v36;
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v38 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    if (v39)
    {
      v37 = 2419200.0;
    }

    else
    {
      v37 = v38;
    }
  }

  v41 = v56;
  v40 = v57;
  v42 = v58;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v40, static CloudSyncSnapshot.Log);
  swift_beginAccess();
  (*(v41 + 16))(v42, v43, v40);
  v44 = a1.super.isa;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v59 = v48;
    *v47 = 136446722;
    *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000002165787D0, &v59);
    *(v47 + 12) = 2080;
    v49 = [(objc_class *)v44 recordID];
    v50 = [v49 recordName];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v59);

    *(v47 + 14) = v54;
    *(v47 + 22) = 2048;
    *(v47 + 24) = v37;
    _os_log_impl(&dword_21607C000, v45, v46, "CloudSyncSnapshot.%{public}s Setting TTL for record %s to %f seconds", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v48, -1, -1);
    MEMORY[0x21CE94770](v47, -1, -1);

    (*(v41 + 8))(v58, v40);
  }

  else
  {

    (*(v41 + 8))(v42, v40);
  }

  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [(objc_class *)v44 setExpirationAfterTimeInterval:isa];
}

uint64_t static CloudSyncSnapshot.dumpRecord(_:)()
{
  v0 = [swift_getObjCClassFromMetadata() description];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

id CloudSyncSnapshot.lastKnownCKRecord.getter()
{
  v1 = [v0 lastKnownCKRecordData];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  v6 = specialized static CloudSyncDB.getCKRecord(_:)(v3, v5);
  outlined consume of Data?(v3, v5);
  return v6;
}

void (*CloudSyncSnapshot.lastKnownCKRecord.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 lastKnownCKRecordData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = specialized static CloudSyncDB.getCKRecord(_:)(v5, v7);
  outlined consume of Data?(v5, v7);
  *a1 = v8;
  return CloudSyncSnapshot.lastKnownCKRecord.modify;
}

void CloudSyncSnapshot.lastKnownCKRecord.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CloudSyncSnapshot.lastKnownCKRecord.setter(v2);
  }

  else
  {
    CloudSyncSnapshot.lastKnownCKRecord.setter(*a1);
  }
}

uint64_t protocol witness for static CloudRecord.productionSchema.getter in conformance CloudSyncSnapshot()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

void (*protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncSnapshot(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CloudSyncSnapshot.lastKnownCKRecord.modify(v2);
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncAssetData;
}

BOOL specialized static CloudSyncSnapshot.< infix(_:_:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = [a1 id];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v18[2] = v8;
  v18[3] = v10;
  v11 = [a2 id];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v18[0] = v12;
  v18[1] = v14;
  v15 = type metadata accessor for Locale();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  lazy protocol witness table accessor for type String and conformance String();
  v16 = StringProtocol.compare<A>(_:options:range:locale:)();
  outlined destroy of UTType?(v6, &_s10Foundation6LocaleVSgMd);

  return v16 == -1;
}

id specialized static CloudSyncSnapshot.create(_:primaryID:context:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v41 = a4;
  v42 = a2;
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 recordID];
  v12 = [v11 recordName];

  if (!v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = MEMORY[0x21CE91FC0](v13);
  }

  v14 = [a1 recordID];
  v15 = [v14 zoneID];

  v16 = [v15 zoneName];
  if (!v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = MEMORY[0x21CE91FC0](v17);
  }

  v18 = [a1 encryptedValues];
  v19 = MEMORY[0x21CE91FC0](0x69746172656E6567, 0xEA00000000006E6FLL);
  v20 = [v18 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v20 && (v47 = v20, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v42 = v45;
    v43 = v46;
  }

  else
  {
  }

  v21 = [a1 encryptedValues];
  v22 = MEMORY[0x21CE91FC0](0x65636E6575716573, 0xE800000000000000);
  v23 = [v21 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v23 && (v45 = v23, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v40 = v47;
  }

  else
  {
    v40 = 0;
  }

  v24 = [a1 encryptedValues];
  v25 = MEMORY[0x21CE91FC0](0x797269707865, 0xE600000000000000);
  v26 = [v24 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v26)
  {
    v45 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v27 = swift_dynamicCast();
    (*(v9 + 56))(v7, v27 ^ 1u, 1, v8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v44, v7, v8);
      goto LABEL_19;
    }
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  static Date.distantPast.getter();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    outlined destroy of UTType?(v7, &_s10Foundation4DateVSgMd);
  }

LABEL_19:
  v28 = [a1 encryptedValues];
  v29 = MEMORY[0x21CE91FC0](0x6974736567677573, 0xEE00736261546E6FLL);
  v30 = [v28 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v30 && (v47 = v30, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v32 = v45;
    v31 = v46;
  }

  else
  {
    v32 = 0;
    v31 = 0xF000000000000000;
  }

  type metadata accessor for CloudSyncSnapshot();
  v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v34 = [v33 initWithContext_];
  [v34 setId_];

  [v34 setZoneName_];
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v34 setExpiry_];

  v36 = MEMORY[0x21CE91FC0](v42, v43);

  [v34 setGeneration_];

  [v34 setSequence_];
  v37 = 0;
  if (v31 >> 60 != 15)
  {
    v37 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v34 setSuggestionTabsData_];

  v38 = a1;
  CloudSyncSnapshot.lastKnownCKRecord.setter(a1);
  outlined consume of Data?(v32, v31);
  (*(v9 + 8))(v44, v8);
  return v34;
}

uint64_t specialized CloudSyncSnapshot.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(void *a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v146 = a7;
  v153 = a3;
  v154 = a6;
  LODWORD(v155) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v145 = &v132 - v10;
  v11 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v147 = *(v11 - 8);
  v148 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v143 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v13;
  MEMORY[0x28223BE20](v12);
  v144 = (&v132 - v14);
  v152 = type metadata accessor for Logger();
  v141 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v151 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  MEMORY[0x28223BE20](v136);
  v149 = &v132 - v16;
  v140 = type metadata accessor for POSIXError();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v135 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v132 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v150 = &v132 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v132 - v26;
  v157 = type metadata accessor for Date();
  v28 = *(v157 - 8);
  v29 = MEMORY[0x28223BE20](v157);
  v134 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v159 = &v132 - v31;
  v32 = [a1 encryptedValues];
  v33 = MEMORY[0x21CE91FC0](0x69746172656E6567, 0xEA00000000006E6FLL);
  v34 = [v32 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v34 && (v160[0] = v34, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    a4 = v162;
    v153 = v161;
  }

  else
  {
  }

  v35 = [a1 encryptedValues];
  v36 = MEMORY[0x21CE91FC0](0x65636E6575716573, 0xE800000000000000);
  v37 = [v35 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v137 = v23;
  if (v37)
  {
    v161 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    if (swift_dynamicCast())
    {
      v37 = v160[0];
    }

    else
    {
      v37 = 0;
    }
  }

  v158 = a1;
  v38 = [a1 encryptedValues];
  v39 = MEMORY[0x21CE91FC0](0x797269707865, 0xE600000000000000);
  v40 = [v38 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v40)
  {
    v161 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v41 = v157;
    v42 = swift_dynamicCast();
    v43 = *(v28 + 56);
    v43(v27, v42 ^ 1u, 1, v41);
    v44 = *(v28 + 48);
    if (v44(v27, 1, v41) != 1)
    {
      (*(v28 + 32))(v159, v27, v41);
      goto LABEL_15;
    }
  }

  else
  {
    v43 = *(v28 + 56);
    v41 = v157;
    v43(v27, 1, 1, v157);
  }

  static Date.distantPast.getter();
  v44 = *(v28 + 48);
  if (v44(v27, 1, v41) != 1)
  {
    outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd);
  }

LABEL_15:
  v45 = [v158 encryptedValues];
  v46 = MEMORY[0x21CE91FC0](0x6974736567677573, 0xEE00736261546E6FLL);
  v47 = [v45 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v48 = 0xF000000000000000;
  if (v47)
  {
    v160[0] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v49 = swift_dynamicCast();
    if (v49)
    {
      v50 = v161;
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v48 = v162;
    }
  }

  else
  {
    v50 = 0;
  }

  v51 = v156;
  v52 = v157;
  if ((v155 & 1) == 0)
  {
    if (a4)
    {
      v56 = MEMORY[0x21CE91FC0](v153, a4);
    }

    else
    {
      v56 = 0;
    }

    [v51 setGeneration_];

    [v51 setSequence_];
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v51 setExpiry_];

    if (v48 >> 60 == 15)
    {
      v58 = 0;
    }

    else
    {
      outlined copy of Data._Representation(v50, v48);
      v58 = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v50, v48);
    }

    [v51 setSuggestionTabsData_];

    goto LABEL_74;
  }

  if (!v154)
  {
    goto LABEL_74;
  }

  v53 = one-time initialization token for productionSchema;
  swift_unknownObjectRetain();
  if (v53 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static CloudSyncSnapshot.productionSchema + 2))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0x65636E6575716573, 0xE800000000000000);
    v55 = v54;
    swift_endAccess();
    if ((v55 & 1) != 0 && [v51 sequence] != v37)
    {
      goto LABEL_65;
    }
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  if (!*(static CloudSyncSnapshot.productionSchema + 2))
  {
    swift_endAccess();
    goto LABEL_44;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(0x797269707865, 0xE600000000000000);
  v60 = v59;
  swift_endAccess();
  if ((v60 & 1) == 0)
  {
    goto LABEL_44;
  }

  v61 = [v51 expiry];
  v133 = v50;
  if (v61)
  {
    v62 = v150;
    v63 = v61;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = 0;
  }

  else
  {
    v64 = 1;
    v62 = v150;
  }

  v43(v62, v64, 1, v52);
  v73 = v137;
  (*(v28 + 16))(v137, v159, v52);
  v43(v73, 0, 1, v52);
  v74 = *(v136 + 48);
  v75 = v149;
  outlined init with copy of DateInterval?(v62, v149, &_s10Foundation4DateVSgMd);
  v155 = v74;
  outlined init with copy of DateInterval?(v73, &v74[v75], &_s10Foundation4DateVSgMd);
  if (v44(v75, 1, v52) == 1)
  {
    outlined destroy of UTType?(v73, &_s10Foundation4DateVSgMd);
    v76 = v149;
    outlined destroy of UTType?(v150, &_s10Foundation4DateVSgMd);
    v77 = v44(&v155[v76], 1, v52);
    v50 = v133;
    if (v77 == 1)
    {
      outlined destroy of UTType?(v76, &_s10Foundation4DateVSgMd);
      goto LABEL_44;
    }
  }

  else
  {
    v78 = v135;
    outlined init with copy of DateInterval?(v75, v135, &_s10Foundation4DateVSgMd);
    v79 = v155;
    if (v44(&v155[v75], 1, v52) != 1)
    {
      v80 = v134;
      (*(v28 + 32))(v134, &v79[v75], v52);
      lazy protocol witness table accessor for type CloudSyncSnapshot and conformance CloudSyncSnapshot(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v81 = v78;
      v82 = v75;
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = *(v28 + 8);
      v84(v80, v52);
      outlined destroy of UTType?(v137, &_s10Foundation4DateVSgMd);
      outlined destroy of UTType?(v150, &_s10Foundation4DateVSgMd);
      v84(v81, v52);
      v51 = v156;
      outlined destroy of UTType?(v82, &_s10Foundation4DateVSgMd);
      v50 = v133;
      if ((v83 & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_44:
      swift_beginAccess();
      if (!*(static CloudSyncSnapshot.productionSchema + 2))
      {
        swift_endAccess();
        goto LABEL_52;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(0x6974736567677573, 0xEE00736261546E6FLL);
      v66 = v65;
      swift_endAccess();
      if ((v66 & 1) == 0)
      {
LABEL_52:
        swift_unknownObjectRelease();
        goto LABEL_74;
      }

      v67 = [v51 suggestionTabsData];
      if (v67)
      {
        v68 = v67;
        v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        if (v71 >> 60 != 15)
        {
          if (v48 >> 60 != 15)
          {
            outlined copy of Data?(v50, v48);
            outlined copy of Data?(v69, v71);
            v72 = specialized static Data.== infix(_:_:)(v69, v71, v50, v48);
            outlined consume of Data?(v50, v48);
            outlined consume of Data?(v69, v71);
            outlined consume of Data?(v69, v71);
            if ((v72 & 1) == 0)
            {
              goto LABEL_65;
            }

            goto LABEL_52;
          }

          goto LABEL_63;
        }
      }

      else
      {
        v69 = 0;
        v71 = 0xF000000000000000;
      }

      if (v48 >> 60 == 15)
      {
        outlined copy of Data?(v50, v48);
        swift_unknownObjectRelease();
        outlined consume of Data?(v69, v71);
        goto LABEL_74;
      }

LABEL_63:
      outlined copy of Data?(v50, v48);
      outlined consume of Data?(v69, v71);
      outlined consume of Data?(v50, v48);
      goto LABEL_65;
    }

    outlined destroy of UTType?(v137, &_s10Foundation4DateVSgMd);
    v76 = v149;
    outlined destroy of UTType?(v150, &_s10Foundation4DateVSgMd);
    (*(v28 + 8))(v78, v52);
    v50 = v133;
  }

  outlined destroy of UTType?(v76, &_s10Foundation4DateVSg_ADtMd);
LABEL_65:
  v156 = v48;
  LODWORD(v161) = 22;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  lazy protocol witness table accessor for type CloudSyncSnapshot and conformance CloudSyncSnapshot(&lazy protocol witness table cache variable for type POSIXError and conformance POSIXError, MEMORY[0x277CC8658]);
  v85 = v138;
  v86 = v140;
  _BridgedStoredNSError.init(_:userInfo:)();
  v87 = POSIXError._nsError.getter();
  (*(v139 + 8))(v85, v86);
  v155 = v87;
  swift_willThrow();
  v133 = v50;
  v88 = v158;
  v89 = v151;
  v90 = v152;
  v91 = v141;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v92 = __swift_project_value_buffer(v90, static CloudSyncSnapshot.Log);
  swift_beginAccess();
  (*(v91 + 16))(v89, v92, v90);
  v93 = v88;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = v91;
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v160[0] = v98;
    *v97 = 136446466;
    *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x8000000216578810, v160);
    *(v97 + 12) = 2080;
    v99 = [v93 recordID];
    v100 = [v99 recordName];

    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, v160);

    *(v97 + 14) = v104;
    _os_log_impl(&dword_21607C000, v94, v95, "CloudSyncSnapshot.%{public}s: iCloud tried to clobber our snapshot record %s. Re-uploading...", v97, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v98, -1, -1);
    MEMORY[0x21CE94770](v97, -1, -1);

    (*(v96 + 8))(v151, v152);
  }

  else
  {

    (*(v91 + 8))(v89, v90);
  }

  v105 = [v51 id];
  v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v108 = v107;

  v109 = [v51 zoneName];
  if (v109)
  {
    v110 = v109;
    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;
  }

  else
  {
    v111 = 0;
    v113 = 0xE000000000000000;
  }

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
  v114._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v114._object = v115;
  v116._countAndFlagsBits = v111;
  v116._object = v113;
  v117 = CKRecordZoneID.init(zoneName:ownerName:)(v116, v114).super.isa;
  v118._countAndFlagsBits = v106;
  v118._object = v108;
  v119.super.isa = CKRecordID.init(recordName:zoneID:)(v118, v117).super.isa;
  v120 = v144;
  v144->super.isa = v119.super.isa;
  v122 = v147;
  v121 = v148;
  (*(v147 + 104))(v120, *MEMORY[0x277CBBC68], v148);
  v123 = type metadata accessor for TaskPriority();
  v124 = v145;
  (*(*(v123 - 8) + 56))(v145, 1, 1, v123);
  v125 = v143;
  (*(v122 + 16))(v143, v120, v121);
  v126 = (*(v122 + 80) + 48) & ~*(v122 + 80);
  v127 = swift_allocObject();
  *(v127 + 2) = 0;
  *(v127 + 3) = 0;
  v128 = v146;
  *(v127 + 4) = v154;
  *(v127 + 5) = v128;
  (*(v122 + 32))(&v127[v126], v125, v121);
  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v124, &async function pointer to partial apply for closure #1 in CloudSyncSnapshot.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:), v127);

  swift_unknownObjectRelease();
  (*(v122 + 8))(v120, v121);
  v48 = v156;
  v52 = v157;
  v50 = v133;
LABEL_74:
  v129 = v158;
  v130 = v158;
  CloudSyncSnapshot.lastKnownCKRecord.setter(v129);
  outlined consume of Data?(v50, v48);
  return (*(v28 + 8))(v159, v52);
}

uint64_t instantiation function for generic protocol witness table for CloudSyncSnapshot(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CloudSyncSnapshot and conformance CloudSyncSnapshot(&lazy protocol witness table cache variable for type CloudSyncSnapshot and conformance CloudSyncSnapshot, type metadata accessor for CloudSyncSnapshot);
  a1[2] = lazy protocol witness table accessor for type CloudSyncSnapshot and conformance CloudSyncSnapshot(&lazy protocol witness table cache variable for type CloudSyncSnapshot and conformance NSObject, type metadata accessor for CloudSyncSnapshot);
  result = lazy protocol witness table accessor for type CloudSyncSnapshot and conformance CloudSyncSnapshot(&lazy protocol witness table cache variable for type CloudSyncSnapshot and conformance CloudSyncSnapshot, type metadata accessor for CloudSyncSnapshot);
  a1[3] = result;
  return result;
}

uint64_t partial apply for closure #1 in CloudSyncSnapshot.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CKSyncEngine.PendingRecordZoneChange() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in CloudSyncSnapshot.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t lazy protocol witness table accessor for type CloudSyncSnapshot and conformance CloudSyncSnapshot(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for configuration(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for NotificationBiome()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CommonLogger.NotificationBiome);
  __swift_project_value_buffer(v0, static CommonLogger.NotificationBiome);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for uiRendering(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v11, a2);
  __swift_project_value_buffer(v11, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v10, v12, v7);
  return OSSignposter.init(logger:)();
}

uint64_t static CommonLogger.configuration.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

char *InterstitialListViewController.init(presenter:assetGroupViewModels:isSingleDaySuggestion:)(uint64_t *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC9MomentsUI30InterstitialListViewController_assetUUIDToIndexPathMap] = MEMORY[0x277D84F98];
  v3[OBJC_IVAR____TtC9MomentsUI30InterstitialListViewController_isSingleDaySuggestion] = a3;
  *&v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_dataSource] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections] = MEMORY[0x277D84F90];
  v5 = *a1;
  v6 = a1[1];
  *&v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_presenter];
  *v7 = v5;
  v7[1] = v6;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for InterstitialCollectionViewController();
  v8 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  specialized InterstitialListViewController.createSections(assetGroupViewModels:assetSummaryAssetTypeMap:)(a2);
  v10 = v9;

  v11 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
  swift_beginAccess();
  *&v8[v11] = v10;

  InterstitialCollectionViewController.reloadData()();

  return v8;
}

Swift::Void __swiftcall InterstitialListViewController.updateSections(assetGroupViewModels:)(Swift::OpaquePointer assetGroupViewModels)
{
  specialized InterstitialListViewController.createSections(assetGroupViewModels:assetSummaryAssetTypeMap:)(assetGroupViewModels._rawValue);
  v3 = v2;
  v4 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
  swift_beginAccess();
  *(v1 + v4) = v3;

  InterstitialCollectionViewController.reloadData()();
}

id InterstitialListViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InterstitialListViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI30InterstitialListViewController_assetUUIDToIndexPathMap) = MEMORY[0x277D84F98];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t InterstitialListViewController.buttonAction(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v84 = a1;
  v7 = IndexPath.section.getter();
  v8 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = *(v2 + v8);
  if (v7 >= *(v10 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = v10 + 16 * v7;
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  swift_bridgeObjectRetain_n();
  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result >= *(v13 + 16))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v80 = v12;
  v81 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = v5;
  v83 = v4;
  v14 = v2;
  v15 = (v13 + 56 * result);
  v16 = v15[4];
  v17 = v15[5];
  v19 = v15[6];
  v18 = v15[7];
  v21 = v15[8];
  v20 = v15[9];
  v22 = v15[10];
  outlined copy of Interstitial.Item(v16, v17, v19, v18, v21, v20, v22);

  if (v22 < 0)
  {
    outlined consume of Interstitial.Item(v16, v17, v19, v18, v21, v20, v22);

    return 0;
  }

  v74 = v16;
  v75 = v17;
  v76 = v19;
  v77 = v18;
  v69 = v21;
  v70 = v20;
  v71 = v22;
  v23 = swift_allocObject();
  v78 = v13;
  swift_unknownObjectWeakInit();
  v24 = v81;
  v25 = ObjectType;
  v79 = *(ObjectType + 16);
  v26 = v83;
  v79(v81, v84, v83);
  v27 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v73 = v27;
  v28 = (v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v23;
  ObjectType = *(v25 + 32);
  (ObjectType)(v29 + v27, v24, v26);
  v30 = (v29 + v28);
  v31 = v80;
  v32 = v78;
  *v30 = v80;
  v30[1] = v32;
  v33 = swift_allocObject();
  v68 = v14;
  swift_unknownObjectWeakInit();
  v79(v24, v84, v26);
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  (ObjectType)(v34 + v73, v24, v26);
  v35 = (v34 + v28);
  *v35 = v31;
  v36 = v78;
  v35[1] = v78;
  v37 = *(v36 + 16);
  if (v37)
  {
    v67[0] = v34;
    v67[1] = v29;
    v38 = v68 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking;
    swift_bridgeObjectRetain_n();
    v73 = v38;
    result = swift_beginAccess();
    v39 = 0;
    v40 = (v36 + 40);
    v42 = v76;
    v41 = v77;
    v44 = v74;
    v43 = v75;
    v72 = v37;
    while (v39 < *(v36 + 16))
    {
      v45 = v40[5];
      if (v45 < 0)
      {
        v46 = *v40;
        v84 = *(v40 - 1);
        v48 = v40[1];
        v47 = v40[2];
        v49 = v40[3];
        v50 = v40[4];
        v51 = v73;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          outlined copy of Interstitial.AssetMetadata?(v46, v48);
          v65 = v50;
          v66 = (v45 & 0x7FFFFFFFFFFFFFFFLL);

          outlined consume of Interstitial.Item(v74, v75, v76, v77, v69, v70, v71);
          v58 = v84;
          v59 = v46;
          v60 = v48;
          v61 = v47;
          v62 = v49;
          v63 = v50;
          v64 = v45;
          goto LABEL_19;
        }

        v52 = *(v51 + 8);
        ObjectType = swift_getObjectType();
        v83 = v49;
        v53 = v47;
        v54 = *(v52 + 24);
        v80 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid;
        v81 = v54;
        v79 = (v45 & 0x7FFFFFFFFFFFFFFFLL);
        outlined copy of Interstitial.AssetMetadata?(v46, v48);
        v55 = v50;
        v56 = v79;
        v57 = (v81)(&v50[v80], ObjectType, v52);
        outlined consume of Interstitial.Item(v84, v46, v48, v53, v83, v50, v45);
        result = swift_unknownObjectRelease();
        v42 = v76;
        v41 = v77;
        v44 = v74;
        v43 = v75;
        v36 = v78;
        v37 = v72;
        if ((v57 & 1) == 0)
        {

          v58 = v44;
          v59 = v43;
          v60 = v42;
          v61 = v41;
          v62 = v69;
          v63 = v70;
          v64 = v71;
LABEL_19:
          outlined consume of Interstitial.Item(v58, v59, v60, v61, v62, v63, v64);
          return partial apply for closure #2 in InterstitialListViewController.buttonAction(at:);
        }
      }

      ++v39;
      v40 += 7;
      if (v37 == v39)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v42 = v76;
  v41 = v77;
  v44 = v74;
  v43 = v75;
LABEL_17:
  outlined consume of Interstitial.Item(v44, v43, v42, v41, v69, v70, v71);
  return partial apply for closure #1 in InterstitialListViewController.buttonAction(at:);
}

void closure #1 in InterstitialListViewController.buttonAction(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for IndexPath();
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = IndexPath.item.getter();
    v12 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      v13 = *(a4 + 16);
      if (v13 < v12)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v12 == v13)
      {
LABEL_5:

        return;
      }

      if (v12 >= v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      v14 = &v10[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking];
      v34 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
      swift_beginAccess();
      swift_beginAccess();
      v31 = (v6 + 8);
      v32 = v13;
      v33 = a2;
      v36 = v8;
      v37 = v10;
      v30 = v14;
      while (1)
      {
        v15 = IndexPath.section.getter();
        MEMORY[0x21CE90B80](v12, v15);
        v16 = IndexPath.section.getter();
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }

        v17 = *&v10[v34];
        if (v16 >= *(v17 + 16))
        {
          goto LABEL_19;
        }

        v18 = *(v17 + 16 * v16 + 40);

        v19 = IndexPath.item.getter();
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v19 >= *(v18 + 16))
        {
          goto LABEL_21;
        }

        v20 = (v18 + 56 * v19);
        v21 = v20[4];
        v22 = v20[5];
        v24 = v20[6];
        v23 = v20[7];
        v25 = v20[8];
        v26 = v20[9];
        v27 = v20[10];
        outlined copy of Interstitial.Item(v21, v22, v24, v23, v25, v26, v27);

        if (v27 < 0)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v29 = *(v30 + 1);
            ObjectType = swift_getObjectType();
            (*(v29 + 16))(v37, v26 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType);
            swift_unknownObjectRelease();
          }

          InterstitialListViewController.updateSelectionView(at:)();
        }

        ++v12;
        outlined consume of Interstitial.Item(v21, v22, v24, v23, v25, v26, v27);
        (*v31)(v36, v35);
        v10 = v37;
        if (v32 == v12)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }
}

void closure #2 in InterstitialListViewController.buttonAction(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for IndexPath();
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = IndexPath.item.getter();
    v12 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      v13 = *(a4 + 16);
      if (v13 < v12)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v12 == v13)
      {
LABEL_5:

        return;
      }

      if (v12 >= v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      v14 = &v10[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking];
      v34 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
      swift_beginAccess();
      swift_beginAccess();
      v31 = (v6 + 8);
      v32 = v13;
      v33 = a2;
      v36 = v8;
      v37 = v10;
      v30 = v14;
      while (1)
      {
        v15 = IndexPath.section.getter();
        MEMORY[0x21CE90B80](v12, v15);
        v16 = IndexPath.section.getter();
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }

        v17 = *&v10[v34];
        if (v16 >= *(v17 + 16))
        {
          goto LABEL_19;
        }

        v18 = *(v17 + 16 * v16 + 40);

        v19 = IndexPath.item.getter();
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v19 >= *(v18 + 16))
        {
          goto LABEL_21;
        }

        v20 = (v18 + 56 * v19);
        v21 = v20[4];
        v22 = v20[5];
        v24 = v20[6];
        v23 = v20[7];
        v25 = v20[8];
        v26 = v20[9];
        v27 = v20[10];
        outlined copy of Interstitial.Item(v21, v22, v24, v23, v25, v26, v27);

        if (v27 < 0)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v29 = *(v30 + 1);
            ObjectType = swift_getObjectType();
            (*(v29 + 8))(v37, v26 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType);
            swift_unknownObjectRelease();
          }

          InterstitialListViewController.updateSelectionView(at:)();
        }

        ++v12;
        outlined consume of Interstitial.Item(v21, v22, v24, v23, v25, v26, v27);
        (*v31)(v36, v35);
        v10 = v37;
        if (v32 == v12)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }
}

uint64_t InterstitialListViewController.createDataSource()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016InterstitialListbD0CSSGMd);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InterstitialListViewCell();
  UICollectionView.CellRegistration.init(handler:)();
  v9 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
  result = swift_beginAccess();
  v11 = *(v1 + v9);
  if (v11)
  {
    (*(v3 + 16))(v6, v8, v2);
    v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v13 = swift_allocObject();
    (*(v3 + 32))(v13 + v12, v6, v2);
    v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCySiSSGMd));
    v15 = v11;
    v16 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    (*(v3 + 8))(v8, v2);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in InterstitialListViewController.createDataSource()(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v80 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v80 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v90 = v8;
  v15 = Strong;
  v16 = IndexPath.section.getter();
  v17 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
  swift_beginAccess();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v18 = *&v15[v17];
  if (v16 >= *(v18 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = *(v18 + 16 * v16 + 40);
  swift_bridgeObjectRetain_n();
  v20 = IndexPath.item.getter();
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v20 >= *(v19 + 16))
  {
LABEL_29:
    __break(1u);
    return;
  }

  v86 = v13;
  v91 = v15;
  v87 = v7;
  v88 = v10;
  v89 = v6;
  v21 = (v19 + 56 * v20);
  v22 = v21[4];
  v23 = v21[5];
  v24 = v21[6];
  v25 = v21[7];
  v26 = v21[8];
  v27 = v21[9];
  v28 = v21[10];
  outlined copy of Interstitial.Item(v22, v23, v24, v25, v26, v27, v28);

  v94 = v22;
  v96 = v23;
  v97 = v24;
  v95 = v25;
  v93 = v26;
  v92 = v28;
  if ((v28 & 0x8000000000000000) == 0)
  {
    v29 = MEMORY[0x277D85000];
    v30 = *((*MEMORY[0x277D85000] & *a1) + 0xD8);

    v30(v22, v23);
    v31 = v91;
    v32 = *&v91[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_presenter + 8];

    v33 = objc_opt_self();
    v34 = a2;
    if (v32)
    {
      v35 = [v33 systemBlueColor];
    }

    else
    {
      v35 = [v33 systemIndigoColor];
    }

    [a1 setTintColor_];

    v60 = *(v19 + 16);

    (*((*v29 & *a1) + 0xF0))(v60 > 2);
    v61 = InterstitialListViewController.buttonAction(at:)(v34);
    (*((*v29 & *a1) + 0x108))(v61);

    outlined consume of Interstitial.Item(v94, v96, v97, v95, v93, v27, v92);
    return;
  }

  v85 = a2;

  v36 = *((*MEMORY[0x277D85000] & *(v28 & 0x7FFFFFFFFFFFFFFFLL)) + 0x70);
  v82 = v28 & 0x7FFFFFFFFFFFFFFFLL;
  v37 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
  v38 = v22;
  v39 = v37;
  outlined copy of Interstitial.Item(v38, v23, v24, v25, v26, v27, v28);
  v40 = v39;
  v41 = v27;
  v42 = v27;
  v43 = v36();
  if (v43)
  {
    v44 = v43;
    LOBYTE(v98[0]) = 7;
    (*((*MEMORY[0x277D85000] & *v43) + 0x108))(v98);
  }

  v45 = type metadata accessor for TaskPriority();
  v46 = v86;
  (*(*(v45 - 8) + 56))(v86, 1, 1, v45);
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v47;
  *(v48 + 40) = 9;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v46, &async function pointer to partial apply for closure #1 in AssetView.performViewModelUpdate(style:), v48);

  outlined destroy of UTType?(v46, &_sScPSgMd);
  v86 = specialized Interstitial.AssetMetadata.init(assetViewModel:)(v42);
  v50 = v49;
  v52 = v51;
  v81 = v53;
  outlined consume of Interstitial.AssetMetadata?(v96, v97);
  v54 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a1) + 0x60))(v82);
  v55 = v91;
  v56 = *&v91[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_presenter + 8];

  v57 = objc_opt_self();
  v84 = v40;
  v83 = v42;
  v80 = v41;
  if (v56)
  {
    v58 = [v57 systemBlueColor];

    v59 = v58;
    v54 = MEMORY[0x277D85000];
  }

  else
  {
    v59 = [v57 systemIndigoColor];
  }

  (*((*v54 & *a1) + 0x140))(v59);
  InterstitialCollectionViewController.asset(at:)(v98);
  v62 = v99;
  v82 = v52;
  if (!v99)
  {
    goto LABEL_20;
  }

  v63 = &v55[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking];
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    outlined destroy of UTType?(v98, &_s9MomentsUI12InterstitialV5AssetVSgMd);
LABEL_20:
    v68 = 0;
    goto LABEL_21;
  }

  v64 = *(v63 + 1);
  ObjectType = swift_getObjectType();
  v66 = *(v64 + 24);
  v67 = v64;
  v54 = MEMORY[0x277D85000];
  v68 = v66(v62 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType, v67);
  outlined destroy of UTType?(v98, &_s9MomentsUI12InterstitialV5AssetVSgMd);
  swift_unknownObjectRelease();
LABEL_21:
  (*((*v54 & *a1) + 0x150))(v68 & 1);
  v69 = v81;
  if (v50)
  {
    v70 = *((*v54 & *a1) + 0x160);

    v71 = v86;
    v72 = v50;
    v70(v86, v50);
    v54 = MEMORY[0x277D85000];

    v73 = v82;
    v74 = v69;
  }

  else
  {
    v72 = 0;
    (*((*v54 & *a1) + 0x160))(0, 0);
    v73 = 0;
    v74 = 0;
    v71 = v86;
  }

  (*((*v54 & *a1) + 0x178))(v73, v74);
  v75 = v83;
  v76 = v88;
  (*(v90 + 16))(v88, v83 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v87);
  v77 = type metadata accessor for IndexPath();
  v78 = *(v77 - 8);
  v79 = v89;
  (*(v78 + 16))(v89, v85, v77);
  (*(v78 + 56))(v79, 0, 1, v77);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v79, v76);
  swift_endAccess();

  outlined consume of Interstitial.Item(v94, v96, v97, v95, v93, v80, v92);
  outlined consume of Interstitial.AssetMetadata?(v71, v72);
}

uint64_t closure #2 in InterstitialListViewController.createDataSource()()
{
  type metadata accessor for InterstitialListViewCell();

  v0 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  return v0;
}

void __swiftcall InterstitialListViewController.createLayout()(UICollectionViewLayout *__return_ptr retstr)
{
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D752C0]);
  v4 = v1;
  v5 = [v3 init];
  [v5 setInterSectionSpacing_];
  [v5 setScrollDirection_];
  v6 = objc_allocWithZone(MEMORY[0x277D752B8]);
  v8[4] = partial apply for closure #1 in InterstitialListViewController.createLayout();
  v8[5] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  v8[3] = &block_descriptor_26;
  v7 = _Block_copy(v8);
  [v6 initWithSectionProvider:v7 configuration:v5];

  _Block_release(v7);
}

void *closure #1 in InterstitialListViewController.createLayout()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D74D50], v4);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v12 = [objc_opt_self() secondarySystemBackgroundColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  UICollectionLayoutListConfiguration.showsSeparators.setter();
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutSection);
  v13 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  v14 = [a3 traitCollection];
  v15 = [v14 horizontalSizeClass];

  v16 = 16.0;
  if (v15 != 1)
  {
    v16 = 40.0;
  }

  [v13 setContentInsets_];
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t closure #1 in closure #1 in InterstitialListViewController.createLayout()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UIListSeparatorConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  IndexPath.item.getter();
  return UIListSeparatorConfiguration.bottomSeparatorInsets.setter();
}

void InterstitialListViewController.updateSelectionView(at:)()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
  swift_beginAccess();
  v9 = *&v0[v8];
  if (!v9)
  {
    __break(1u);
    goto LABEL_23;
  }

  v10 = v9;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v12 = [v10 cellForItemAtIndexPath_];

  if (!v12)
  {
    return;
  }

  v42 = v3;
  v13 = type metadata accessor for InterstitialListViewCell();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v14;
  v41 = v13;
  if ((*((*MEMORY[0x277D85000] & *v14) + 0x130))())
  {
    v40 = v2;
    InterstitialCollectionViewController.asset(at:)(v45);
    v16 = v46;
    if (v46)
    {
      v17 = &v1[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 1);
        ObjectType = swift_getObjectType();
        v20 = (*(v18 + 24))(v16 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType, v18);
        outlined destroy of UTType?(v45, &_s9MomentsUI12InterstitialV5AssetVSgMd);
        swift_unknownObjectRelease();
LABEL_10:
        v2 = v40;
        (*((*MEMORY[0x277D85000] & *v15) + 0x150))(v20 & 1);
        goto LABEL_11;
      }

      outlined destroy of UTType?(v45, &_s9MomentsUI12InterstitialV5AssetVSgMd);
    }

    v20 = 0;
    goto LABEL_10;
  }

LABEL_11:
  v21 = IndexPath.section.getter();
  MEMORY[0x21CE90B80](0, v21);
  v22 = *&v1[v8];
  if (!v22)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = IndexPath._bridgeToObjectiveC()().super.isa;
  v25 = [v23 cellForItemAtIndexPath_];

  if (!v25)
  {
LABEL_17:
    (*(v42 + 8))(v7, v2);
LABEL_18:

    return;
  }

  v26 = swift_dynamicCastClass();
  if (!v26)
  {

    (*(v42 + 8))(v7, v2);
    return;
  }

  v27 = v26;
  if (((*((*MEMORY[0x277D85000] & *v26) + 0xE8))() & 1) == 0)
  {
    (*(v42 + 8))(v7, v2);

    return;
  }

  v28 = objc_opt_self();
  v29 = v2;
  v40 = v2;
  v41 = v28;
  v31 = v42;
  v30 = v43;
  (*(v42 + 16))(v43, v7, v29);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  *(v33 + 24) = v1;
  v34 = v40;
  (*(v31 + 32))(v33 + v32, v30, v40);
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for closure #1 in InterstitialListViewController.updateSelectionView(at:);
  *(v35 + 24) = v33;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_15_3;
  v36 = _Block_copy(aBlock);
  v37 = v25;
  v38 = v1;

  [v41 performWithoutAnimation_];

  _Block_release(v36);
  v39 = *(v31 + 8);
  v2 = v31 + 8;
  v39(v7, v34);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
    goto LABEL_17;
  }
}

void InterstitialListViewController.updateSelectionView(for:at:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  isEscapingClosureAtFileLocation = *(v4 - 8);
  v6 = *(isEscapingClosureAtFileLocation + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  type metadata accessor for InterstitialListViewCell();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v37 = v4;
  v12 = *((*MEMORY[0x277D85000] & *v10) + 0x130);
  v36 = a1;
  if (v12())
  {
    InterstitialCollectionViewController.asset(at:)(v39);
    v13 = v40;
    if (v40)
    {
      v14 = &v2[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 1);
        ObjectType = swift_getObjectType();
        v17 = (*(v15 + 24))(v13 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType, v15);
        outlined destroy of UTType?(v39, &_s9MomentsUI12InterstitialV5AssetVSgMd);
        swift_unknownObjectRelease();
LABEL_8:
        (*((*MEMORY[0x277D85000] & *v11) + 0x150))(v17 & 1);
        goto LABEL_9;
      }

      outlined destroy of UTType?(v39, &_s9MomentsUI12InterstitialV5AssetVSgMd);
    }

    v17 = 0;
    goto LABEL_8;
  }

LABEL_9:
  v18 = IndexPath.section.getter();
  MEMORY[0x21CE90B80](0, v18);
  v19 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
  swift_beginAccess();
  v20 = *&v2[v19];
  if (v20)
  {
    v21 = v20;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v23 = [v21 cellForItemAtIndexPath_];

    if (!v23)
    {
LABEL_15:
      (*(isEscapingClosureAtFileLocation + 8))(v9, v37);

      return;
    }

    v24 = swift_dynamicCastClass();
    v25 = v37;
    if (v24)
    {
      v26 = v24;
      if ((*((*MEMORY[0x277D85000] & *v24) + 0xE8))())
      {
        v34 = objc_opt_self();
        v27 = v35;
        (*(isEscapingClosureAtFileLocation + 16))(v35, v9, v25);
        v28 = (*(isEscapingClosureAtFileLocation + 80) + 32) & ~*(isEscapingClosureAtFileLocation + 80);
        v29 = swift_allocObject();
        *(v29 + 16) = v26;
        *(v29 + 24) = v2;
        (*(isEscapingClosureAtFileLocation + 32))(v29 + v28, v27, v25);
        v30 = swift_allocObject();
        *(v30 + 16) = partial apply for closure #1 in InterstitialListViewController.updateSelectionView(for:at:);
        *(v30 + 24) = v29;
        aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
        aBlock[5] = v30;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_25;
        v31 = _Block_copy(aBlock);
        v32 = v23;
        v33 = v2;

        [v34 performWithoutAnimation_];

        _Block_release(v31);
        (*(isEscapingClosureAtFileLocation + 8))(v9, v25);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        (*(isEscapingClosureAtFileLocation + 8))(v9, v25);
      }
    }

    else
    {

      (*(isEscapingClosureAtFileLocation + 8))(v9, v25);
    }
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in InterstitialListViewController.updateSelectionView(at:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = InterstitialListViewController.buttonAction(at:)(a3);
  (*((*MEMORY[0x277D85000] & *a1) + 0x108))(v4);

  return [a1 layoutIfNeeded];
}

id InterstitialListViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InterstitialListViewController.didFinishRendering(uuid:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = v19;
  *(v14 + 16) = v19;
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = partial apply for closure #1 in InterstitialListViewController.didFinishRendering(uuid:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_31_1;
  v16 = _Block_copy(aBlock);
  v17 = v15;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x21CE92A50](0, v7, v4, v16);
  _Block_release(v16);

  (*(v22 + 8))(v4, v2);
  return (*(v20 + 8))(v7, v21);
}

void closure #1 in InterstitialListViewController.didFinishRendering(uuid:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = OBJC_IVAR____TtC9MomentsUI30InterstitialListViewController_assetUUIDToIndexPathMap;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if (!*(v12 + 16) || (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v14 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  (*(v5 + 16))(v8, *(v12 + 56) + *(v5 + 72) * v13, v4);
  (*(v5 + 32))(v10, v8, v4);
  swift_endAccess();
  v15 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (!v16)
  {
    __break(1u);
    return;
  }

  v17 = v16;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [v17 cellForItemAtIndexPath_];

  if (!v19)
  {
LABEL_11:
    (*(v5 + 8))(v10, v4);
    return;
  }

  type metadata accessor for InterstitialListViewCell();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {

    goto LABEL_11;
  }

  v21 = v20;
  InterstitialCollectionViewController.asset(at:)(&v37);
  if (v40)
  {
    v36 = v41;
    v42[0] = v38;
    v42[1] = v39;
    v35 = v40;
    v22 = specialized Interstitial.AssetMetadata.init(assetViewModel:)(v35);
    v24 = v23;
    v26 = v25;
    v28 = v27;
    outlined destroy of UTType?(v42, &_s9MomentsUI12InterstitialV13AssetMetadataVSgMd);
    v34 = v22;
    if (v24)
    {

      v29 = v22;
    }

    else
    {
      v29 = 0;
    }

    v30 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v21) + 0x160))(v29, v24);
    if (v24)
    {

      v31 = v26;
      v32 = v28;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    (*((*v30 & *v21) + 0x178))(v31, v32);

    (*(v5 + 8))(v10, v4);
    outlined consume of Interstitial.AssetMetadata?(v34, v24);
  }

  else
  {
    (*(v5 + 8))(v10, v4);
  }
}

void specialized InterstitialListViewController.createSections(assetGroupViewModels:assetSummaryAssetTypeMap:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = 0;
  v3 = a1 + 32;
  v74 = MEMORY[0x277D84F90];
  v69 = a1 + 32;
  v70 = *(a1 + 16);
  while (1)
  {
    v4 = *(v3 + 16 * v2 + 8);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_4;
      }
    }

    else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {

      v7 = MEMORY[0x21CE93180](0, v4);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_51;
      }

      v6 = *(v4 + 32);

      v7 = v6;
    }

    v8 = v7;
    v9 = specialized AssetType.init(_:)(v8);
    if (v9 != 20)
    {
      break;
    }

LABEL_4:
    if (++v2 == v1)
    {
      return;
    }
  }

  v10 = v9;
  v76 = v4 & 0xC000000000000001;
  v71 = v8;
  v72 = v2;
  if (v5)
  {
    v12 = v9;
    v11 = __CocoaSet.count.getter();
    v10 = v12;
  }

  else
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v73 = v10;
  v14 = AssetType.assetTypeAsPluralString(count:includeCount:)(v13, 0);
  v15 = StaticString.description.getter();
  v17 = v16;
  v18 = [objc_opt_self() mainBundle];
  v81._object = v17;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v81._countAndFlagsBits = v15;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v18, v19, v81);

  if (!v5)
  {
    v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v4 & 0xC000000000000001;
    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

  v21 = __CocoaSet.count.getter();
  v22 = v4 & 0xC000000000000001;
  if (!v21)
  {
LABEL_40:
    v79 = MEMORY[0x277D84F90];
LABEL_41:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI12InterstitialV4ItemOGMd);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_21658CA50;
    *(v61 + 32) = v20;
    *(v61 + 48) = 0u;
    *(v61 + 64) = 0u;
    *(v61 + 80) = 0;
    v80[0] = v61;

    specialized Array.append<A>(contentsOf:)(v79);
    v62 = v80[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 2) + 1, 1, v74);
    }

    v63 = v73;
    v65 = *(v74 + 2);
    v64 = *(v74 + 3);
    if (v65 >= v64 >> 1)
    {
      v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v74);
      v63 = v73;
      v74 = v68;
    }

    v66 = v63;

    *(v74 + 2) = v65 + 1;
    v67 = &v74[16 * v65];
    *(v67 + 4) = v66;
    *(v67 + 5) = v62;
    v3 = v69;
    v1 = v70;
    v2 = v72;
    goto LABEL_4;
  }

LABEL_19:
  if (v21 >= 1)
  {
    v23 = 0;
    v79 = MEMORY[0x277D84F90];
    v75 = v4;
    v78 = v21;
    while (1)
    {
      if (v22)
      {
        v33 = MEMORY[0x21CE93180](v23, v4);
      }

      else
      {
        v33 = *(v4 + 8 * v23 + 32);
      }

      v34 = v33;
      LOBYTE(v80[0]) = 7;
      v35 = *((*MEMORY[0x277D85000] & *v33) + 0x1E0);
      v36 = v33;
      v37 = v35(v80);
      if (v37)
      {
        v38 = v37;
        v39 = v36;
        v40 = specialized AssetType.init(_:)(v39);
        if (v40 == 20)
        {

          goto LABEL_23;
        }

        v45 = v40;
        v46 = v39;
        v47 = specialized Interstitial.AssetMetadata.init(assetViewModel:)(v46);
        v49 = v48;
        v51 = v50;
        v53 = v52;
        outlined copy of Interstitial.AssetMetadata?(v47, v48);
        v54 = v46;
        v55 = v38;
        v77 = v49;
        outlined consume of Interstitial.AssetMetadata?(v47, v49);

        v56 = *((*MEMORY[0x277D85000] & *v54) + 0x138);
        v57 = swift_unknownObjectRetain();
        v56(v57, &protocol witness table for InterstitialListViewController);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 2) + 1, 1, v79);
        }

        v59 = *(v79 + 2);
        v58 = *(v79 + 3);
        if (v59 >= v58 >> 1)
        {
          v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v79);
        }

        *(v79 + 2) = v59 + 1;
        v60 = &v79[56 * v59];
        *(v60 + 4) = v45;
        *(v60 + 5) = v47;
        *(v60 + 6) = v77;
        *(v60 + 7) = v51;
        *(v60 + 8) = v53;
        *(v60 + 9) = v34;
        *(v60 + 10) = v38 | 0x8000000000000000;
        v4 = v75;
        v22 = v76;
      }

      else
      {

        if (one-time initialization token for interstitial != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, static CommonLogger.interstitial);
        v42 = v36;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v80[0] = v25;
          *v24 = 136315138;
          v26 = v42;
          v27 = [v26 description];
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v80);
          v4 = v75;

          *(v24 + 4) = v31;
          _os_log_impl(&dword_21607C000, v43, v44, "Unable to create view for asset view model=%s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v25);
          v32 = v25;
          v22 = v76;
          MEMORY[0x21CE94770](v32, -1, -1);
          MEMORY[0x21CE94770](v24, -1, -1);
        }

        else
        {
        }
      }

      v21 = v78;
LABEL_23:
      if (v21 == ++v23)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_51:
  __break(1u);
}

uint64_t partial apply for closure #2 in InterstitialListViewController.createDataSource()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016InterstitialListbD0CSSGMd);

  return closure #2 in InterstitialListViewController.createDataSource()();
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void partial apply for closure #1 in InterstitialListViewController.didFinishRendering(uuid:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in InterstitialListViewController.didFinishRendering(uuid:)(v2, v3);
}

uint64_t objectdestroy_37Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in InterstitialListViewController.buttonAction(at:)(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

uint64_t Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 72) = swift_getObjectType();
  *(v7 + 112) = *a1;

  return MEMORY[0x2822009F8](Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), 0, 0);
}

uint64_t Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)()
{
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  *(v0 + 80) = __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446466;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v23);
    _os_log_impl(&dword_21607C000, v4, v5, "[preparedForDisplayOffMainThread] %{public}s FROM %{public}s BEGIN", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v9, -1, -1);
    MEMORY[0x21CE94770](v8, -1, -1);
  }

  v13 = *(v0 + 112);
  v14 = *(v0 + 72);
  v21 = *(v0 + 32);
  v15 = *(v0 + 24);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd);
  v17 = swift_allocObject();
  *(v0 + 88) = v17;
  swift_unknownObjectWeakInit();
  v18 = swift_task_alloc();
  *(v0 + 96) = v18;
  *(v18 + 16) = v17;
  *(v18 + 24) = v15;
  *(v18 + 32) = v13;
  *(v18 + 40) = v21;
  *(v18 + 56) = v14;
  v19 = swift_task_alloc();
  *(v0 + 104) = v19;
  *v19 = v0;
  v19[1] = Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:);

  return MEMORY[0x282200600](v0 + 16, v16, v16, 0, 0, &async function pointer to partial apply for closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), v18, v16);
}

{

  return MEMORY[0x2822009F8](Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), 0, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);

  v3 = Logger.logObject.getter();
  v4 = *(v0 + 64);
  if (v1)
  {
    v5 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v3, v5))
    {
      goto LABEL_7;
    }

    v19 = *(v0 + 56);
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446466;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v19, &v21);
    v12 = "[preparedForDisplayOffMainThread] %{public}s FROM %{public}s END";
  }

  else
  {
    v5 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v3, v5))
    {
      goto LABEL_7;
    }

    v20 = *(v0 + 56);
    v13 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446466;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v21);

    *(v7 + 4) = v16;
    *(v7 + 12) = 2082;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v20, &v21);
    v12 = "[preparedForDisplayOffMainThread] %{public}s FROM %{public}s uiImage = nil END";
  }

  _os_log_impl(&dword_21607C000, v3, v5, v12, v7, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CE94770](v8, -1, -1);
  MEMORY[0x21CE94770](v7, -1, -1);
LABEL_7:

  v17 = *(v0 + 8);

  return v17(v1);
}

uint64_t closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a4;
  *(v8 + 56) = a6;
  *(v8 + 128) = a5;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySo7UIImageCSg_GMd);
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), 0, 0);
}

uint64_t closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 128);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v7;
  *(v9 + 40) = v5;
  *(v9 + 48) = v4;
  *(v9 + 56) = v6;
  *(v9 + 64) = v3;
  *(v9 + 72) = v2;
  v10 = v3;

  _sScG7addTask8priority9operationyScPSg_xyYaYAcntFSo7UIImageCSg_Tg5(v1, &async function pointer to partial apply for closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), v9);
  outlined destroy of TaskPriority?(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 112) = 0;
  v11 = lazy protocol witness table accessor for type TaskGroup<UIImage?>.Iterator and conformance TaskGroup<A>.Iterator();
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:);
  v13 = *(v0 + 80);

  return MEMORY[0x282200308](v0 + 16, v13, v11);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[14];
    v5 = v2[11];
    v4 = v2[12];
    v6 = v2[10];

    (*(v5 + 8))(v4, v6);
    v7 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v7 = closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[14];
  if (v1 == 1)
  {
    v3 = v0[3];
    (*(v0[11] + 8))(v0[12], v0[10]);
    *v3 = v2;

    v4 = v0[1];

    return v4();
  }

  else
  {

    v0[14] = v1;
    v6 = lazy protocol witness table accessor for type TaskGroup<UIImage?>.Iterator and conformance TaskGroup<A>.Iterator();
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:);
    v8 = v0[10];

    return MEMORY[0x282200308](v0 + 2, v8, v6);
  }
}

uint64_t partial apply for closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 32);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(a1, a2, v6, v7, v11, v8, v9, v10);
}

uint64_t closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 264) = a7;
  *(v8 + 272) = a8;
  *(v8 + 288) = a6;
  *(v8 + 248) = a4;
  *(v8 + 256) = a5;
  *(v8 + 240) = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), 0, 0);
}

uint64_t closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)()
{
  v26 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0 + 232;
    v3 = *(v0 + 256);
    v4 = Strong;
    v5 = Image.uiImage.getter();

    if (v3 != 1 && v5 != 0)
    {
      v7 = [v5 imageAsset];
      if (v7)
      {
        v8 = v7;
        v9 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v10 = [v8 imageWithTraitCollection_];

        if (v10)
        {

          v5 = v10;
        }
      }
    }

    *(v0 + 280) = v5;
    v11 = *(v0 + 264);
    v12 = *(v0 + 272);
    v25 = *(v0 + 288);
    *&v13 = COERCE_DOUBLE(specialized static Image.targetViewSize(viewStyle:sizeClass:maximumSupportedViewport:)(&v25, v11, v12));
    if (v15)
    {
      if (v5)
      {
        v16 = v0 + 16;
        *(v0 + 16) = v0;
        *(v0 + 56) = v2;
        *(v0 + 24) = closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:);
        v17 = swift_continuation_init();
        *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
        *(v0 + 144) = MEMORY[0x277D85DD0];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
        *(v0 + 168) = &block_descriptor_27;
        *(v0 + 176) = v17;
        [v5 prepareForDisplayWithCompletionHandler_];
LABEL_15:

        return MEMORY[0x282200938](v16);
      }
    }

    else if (v5)
    {
      v20 = v14;
      v16 = v0 + 80;
      v21 = *&v13;
      *(v0 + 80) = v0;
      *(v0 + 120) = v2;
      *(v0 + 88) = closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:);
      v22 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
      *(v0 + 144) = MEMORY[0x277D85DD0];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
      *(v0 + 168) = &block_descriptor_10;
      *(v0 + 176) = v22;
      [v5 prepareThumbnailOfSize:v0 + 144 completionHandler:{v21, v20}];
      goto LABEL_15;
    }
  }

  else
  {
    v18 = *(v0 + 264);
    v19 = *(v0 + 272);
    v25 = *(v0 + 288);
    specialized static Image.targetViewSize(viewStyle:sizeClass:maximumSupportedViewport:)(&v25, v18, v19);
  }

  **(v0 + 240) = 0;
  v23 = *(v0 + 8);

  return v23();
}

{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), 0, 0);
}

{
  v1 = *(v0 + 280);
  **(v0 + 240) = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:), 0, 0);
}

uint64_t specialized static Image.targetViewSize(viewStyle:sizeClass:maximumSupportedViewport:)(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *a3) + 0x60);
  v7 = a3;
  v8 = v6();
  (*((*v5 & *v7) + 0x78))();
  if (v4 - 2 < 2)
  {
    if (a2 != 2)
    {
      v17 = objc_opt_self();
      v18 = [v17 mainScreen];
      [v18 scale];
      v20 = v19;

      v13 = v20 * v8;
      v16 = [v17 mainScreen];
      goto LABEL_11;
    }

LABEL_8:

    return 0;
  }

  if (v4 > 1)
  {
    goto LABEL_8;
  }

  v9 = objc_opt_self();
  v10 = [v9 mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = v12 * v8;
  if (a2 != 2)
  {
    v16 = [v9 mainScreen];
LABEL_11:
    v21 = v16;
    [v21 scale];

    return *&v13;
  }

  v13 = v13 / 2.5;
  v14 = [v9 mainScreen];
  [v14 scale];

  return *&v13;
}

uint64_t partial apply for closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in closure #1 in Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(a1, v4, v5, v6, v7, v10, v8, v9);
}

unint64_t lazy protocol witness table accessor for type TaskGroup<UIImage?>.Iterator and conformance TaskGroup<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type TaskGroup<UIImage?>.Iterator and conformance TaskGroup<A>.Iterator;
  if (!lazy protocol witness table cache variable for type TaskGroup<UIImage?>.Iterator and conformance TaskGroup<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScG8IteratorVySo7UIImageCSg_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskGroup<UIImage?>.Iterator and conformance TaskGroup<A>.Iterator);
  }

  return result;
}

uint64_t MutablePosterViewModel.build()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v57 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v57 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v57 - v17;
  v19 = type metadata accessor for DateInterval();
  v72 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v23 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v23)
  {
    return 0;
  }

  v68 = v14;
  v70 = v9;
  v24 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  if (!v24)
  {
    return 0;
  }

  v67 = v22;
  v69 = &v57 - v21;
  v25 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v25, v18, &_s10Foundation12DateIntervalVSgMd);
  v26 = v72;
  if ((*(v72 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of DateInterval?(v18);
    return 0;
  }

  (*(v26 + 32))(v69, v18, v19);
  (*(v11 + 16))(v71, v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v10);
  v28 = *(v24 + 16);
  if (v28)
  {
    v64 = v7;
    v65 = v3;
    v66 = v0;
    v74 = MEMORY[0x277D84F90];
    v29 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v30 = v74;
    v31 = (v24 + 32);
    v32 = *(v74 + 16);
    v33 = v67;
    do
    {
      v35 = *v31++;
      v34 = v35;
      v74 = v30;
      v36 = *(v30 + 24);
      if (v32 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v32 + 1, 1);
        v33 = v67;
        v30 = v74;
      }

      *(v30 + 16) = v32 + 1;
      *(v30 + v32++ + 32) = v34;
      --v28;
    }

    while (v28);
    v0 = v66;
    v3 = v65;
    v7 = v64;
    v26 = v72;
  }

  else
  {
    v37 = v23;
    v30 = MEMORY[0x277D84F90];
    v33 = v67;
  }

  (*(v26 + 16))(v33, v69, v19);
  v38 = v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle;
  swift_beginAccess();
  v39 = *(v38 + 8);
  v63 = *v38;
  v66 = v39;
  v40 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v41 = *(v0 + v40);
  v42 = *(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier + 8);
  v62 = *(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier);
  v65 = v42;
  v43 = *(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_bundleID + 8);
  v61 = *(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_bundleID);
  v64 = v43;
  v44 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_startDate;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v44, v70, &_s10Foundation4DateVSgMd);
  v45 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_endDate;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v45, v7, &_s10Foundation4DateVSgMd);
  v46 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_isHost;
  swift_beginAccess();
  v60 = *(v0 + v46);
  v47 = (v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_locationDisplayName);
  swift_beginAccess();
  v48 = v47[1];
  v59 = *v47;
  v49 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_attributedTitle;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v49, v3, &_s10Foundation16AttributedStringVSgMd);
  v58 = v41;
  if (v41)
  {
    v50 = v48;

    v51 = v41;

    v41 = v51;
    v52 = Image.uiImage.getter();
    if (v52)
    {

      v53 = 1;
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {

    v53 = 0;
    v50 = v48;
  }

  v54 = v72;
  v73 = v53;
  v55 = v68;
  UUID.init()();
  type metadata accessor for DBPosterModel();
  swift_allocObject();
  v56 = specialized DBPosterModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseDateInterval:baseTitle:posterImage:spotlightIdentifier:bundleID:startDate:endDate:isHost:locationDisplayName:attributedTitle:renderState:)(v55, v71, v23, v30, v67, v63, v66, v58, v62, v65, v61, v64, v70, v7, v60, v59, v50, v3, &v73);

  (*(v54 + 8))(v69, v19);
  return v56;
}

uint64_t static StateOfMindCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionbD0CAF06ClienthijB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static StateOfMindCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}